# frozen_string_literal: true

require 'set'

module Aws
  module S3
    # Raised when DirectoryUploader fails to upload files to S3 bucket
    class DirectoryUploadError < StandardError
      def initialize(message, errors = [])
        @errors = errors
        super(message)
      end

      # @return [Array<StandardError>] The list of errors encountered when uploading files
      attr_reader :errors
    end

    # @api private
    class DirectoryUploader
      def initialize(options = {})
        @client = options[:client]
        @executor = options[:executor]
        @abort_requested = false
        @mutex = Mutex.new
      end

      attr_reader :abort_requested

      def upload(source_directory, bucket:, **options)
        raise ArgumentError, 'Invalid directory' unless Dir.exist?(source_directory)

        upload_opts = build_upload_opts(source_directory, bucket, options)
        uploader = FileUploader.new(
          multipart_threshold: options[:multipart_threshold],
          client: @client,
          executor: @executor
        )
        producer = FileProducer.new(upload_opts.merge(client: @client, directory_uploader: self))
        uploads, errors = process_upload_queue(producer, uploader, upload_opts)
        build_result(uploads, errors)
      ensure
        @abort_requested = false
      end

      private

      def request_abort
        @mutex.synchronize { @abort_requested = true }
      end

      def build_upload_opts(source_directory, bucket, opts)
        {
          source_dir: source_directory,
          bucket: bucket,
          s3_prefix: opts.delete(:s3_prefix),
          recursive: opts.delete(:recursive) || false,
          follow_symlinks: opts.delete(:follow_symlinks) || false,
          filter_callback: opts.delete(:filter_callback),
          ignore_failure: opts.delete(:ignore_failure) || false,
          progress_callback: opts.delete(:progress_callback)
        }
      end

      def build_result(upload_count, errors)
        if @abort_requested
          msg = "directory upload failed: #{errors.map(&:message).join('; ')}"
          raise DirectoryUploadError.new(msg, errors)
        else
          {
            completed_uploads: [upload_count - errors.count, 0].max,
            failed_uploads: errors.count,
            errors: errors.any? ? errors : nil
          }.compact
        end
      end

      def handle_error(executor, opts)
        return if opts[:ignore_failure]

        request_abort
        executor.kill
      end

      def process_upload_queue(producer, uploader, opts)
        # Separate executor for lightweight queuing tasks,
        # avoiding interference with main @executor lifecycle
        queue_executor = DefaultExecutor.new
        progress = DirectoryProgress.new(opts[:progress_callback]) if opts[:progress_callback]
        upload_attempts = 0
        errors = []
        begin
          producer.each do |file|
            break if @abort_requested

            upload_attempts += 1
            if file.is_a?(StandardError)
              errors << file
              next
            end

            queue_executor.post(file) do |f|
              uploader.upload(f[:path], bucket: opts[:bucket], key: f[:key])
              progress&.call(File.size(f[:path]))
            rescue StandardError => e
              errors << e
              handle_error(queue_executor, opts)
            end
          end
        rescue StandardError => e
          errors << e
          handle_error(queue_executor, opts)
        end
        queue_executor.shutdown
        [upload_attempts, errors]
      end

      # @api private
      class FileProducer
        include Enumerable

        DEFAULT_QUEUE_SIZE = 100

        def initialize(options = {})
          @source_dir = options[:source_dir]
          @s3_prefix = options[:s3_prefix]
          @recursive = options[:recursive]
          @follow_symlinks = options[:follow_symlinks]
          @ignore_failure = options[:ignore_failure]
          @filter_callback = options[:filter_callback]
          @directory_uploader = options[:directory_uploader]
          @file_queue = SizedQueue.new(DEFAULT_QUEUE_SIZE)
        end

        def each
          producer_thread = Thread.new do
            if @recursive
              find_recursively
            else
              find_directly
            end
          ensure
            @file_queue << :done
          end

          while (file = @file_queue.shift) != :done
            break if @directory_uploader.abort_requested

            yield file
          end
        ensure
          producer_thread.join
        end

        private

        def build_file_entry(file_path, key)
          normalized_key = @s3_prefix ? File.join(@s3_prefix, key) : key
          { path: file_path, key: normalized_key }
        end

        def find_directly
          Dir.each_child(@source_dir) do |entry|
            break if @directory_uploader.abort_requested

            entry_path = File.join(@source_dir, entry)
            if @follow_symlinks
              stat = File.stat(entry_path)
              next if stat.directory?
            else
              stat = File.lstat(entry_path)
              next if stat.symlink? || stat.directory?
            end
            next unless include_file?(entry_path, entry)

            @file_queue << build_file_entry(entry_path, entry)
          rescue StandardError => e
            raise unless @ignore_failure

            @file_queue << e
          end
        end

        def find_recursively
          if @follow_symlinks
            visited = Set.new
            visited << File.stat(@source_dir).ino
            scan_directory(@source_dir, visited: visited)
          else
            scan_directory(@source_dir)
          end
        end

        def include_file?(file_path, file_name)
          return true unless @filter_callback

          @filter_callback.call(file_path, file_name)
        end

        def scan_directory(dir_path, key_prefix: '', visited: nil)
          return if @directory_uploader.abort_requested

          Dir.each_child(dir_path) do |entry|
            break if @directory_uploader.abort_requested

            full_path = File.join(dir_path, entry)
            next unless include_file?(full_path, entry)

            stat =
              if @follow_symlinks
                File.stat(full_path)
              else
                lstat = File.lstat(full_path)
                next if lstat.symlink?

                lstat
              end

            if stat.directory?
              handle_directory(full_path, entry, key_prefix, visited)
            else
              key = key_prefix.empty? ? entry : File.join(key_prefix, entry)
              @file_queue << build_file_entry(full_path, key)
            end
          rescue StandardError => e
            raise unless @ignore_failure

            @file_queue << e
          end
        end

        def handle_directory(dir_path, dir_name, key_prefix, visited)
          if @follow_symlinks && visited
            stat = File.stat(dir_path)
            return if visited.include?(stat.ino)

            visited << stat.ino
          end
          new_prefix = key_prefix.empty? ? dir_name : File.join(key_prefix, dir_name)
          scan_directory(dir_path, key_prefix: new_prefix, visited: visited)
        end
      end
    end
  end
end
