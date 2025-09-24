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
        @client = options[:client] || Client.new
        @executor = options[:executor] || DefaultExecutor.new
        @options = options
        @abort_upload = false
      end

      # @return [Client]
      attr_reader :client

      # @return [Boolean]
      attr_accessor :abort_upload

      # TODO: Need to add progress tracker
      def upload(source, bucket:, **options)
        raise ArgumentError, 'Invalid directory' unless Dir.exist?(source)

        upload_opts = options.dup
        @ignore_failure = upload_opts.delete(:ignore_failure) || false
        @errors = []

        uploader = FileUploader.new(
          multipart_threshold: upload_opts.delete(:multipart_threshold),
          client: @client,
          executor: @executor
        )
        producer = FileProducer.new(source, build_producer_opts(upload_opts))
        producer.run
        uploads = process_upload_queue(producer, uploader, upload_opts.merge(bucket: bucket))
        build_result(uploads)
      ensure
        @executor.shutdown unless @options[:executor]
      end

      private

      def build_producer_opts(opts)
        {
          directory_uploader: self,
          s3_prefix: opts.delete(:s3_prefix),
          recursive: opts.delete(:recursive),
          follow_symlinks: opts.delete(:follow_symlinks),
          filter_callback: opts.delete(:filter_callback),
          ignore_failure: @ignore_failure,
          errors: @errors
        }
      end

      def build_result(upload_count)
        uploads = [upload_count - @errors.count, 0].max

        if @abort_upload
          msg = "failed to upload directory: uploaded #{uploads} files " \
            "and failed to upload #{@errors.count} files."
          raise DirectoryUploadError.new(msg, @errors)
        else
          result = { completed_uploads: uploads, failed_uploads: @errors.count }
          result[:errors] = @errors if @errors.any?
          result
        end
      end

      def process_upload_queue(producer, uploader, opts)
        upload_attempts = 0
        completion_queue = Queue.new
        queue_executor = DefaultExecutor.new
        while (file = producer.file_queue.shift) != :done
          break if @abort_upload

          upload_attempts += 1
          queue_executor.post(file) do |f|
            uploader.upload(f[:path], opts.merge(key: f[:key]))
          rescue StandardError => e
            @errors << e
            @abort_upload = true unless @ignore_failure
          ensure
            completion_queue << :done
          end
        end
        upload_attempts.times { completion_queue.pop }
        upload_attempts
      ensure
        queue_executor.shutdown
      end


      # @api private
      class FileProducer
        def initialize(source_dir, options = {})
          @source_dir = source_dir
          @s3_prefix = options[:s3_prefix]
          @recursive = options[:recursive] || false
          @follow_symlinks = options[:follow_symlinks] || false
          @ignore_failure = options[:ignore_failure]
          @filter_callback = options[:filter_callback]
          @errors = options[:errors]
          @directory_uploader = options[:directory_uploader]
          @file_queue = SizedQueue.new(100)
        end

        attr_accessor :file_queue

        def run
          Thread.new do
            if @recursive
              find_recursively
            else
              find_directly
            end
            @file_queue << :done
          end
        end

        private

        def build_file_entry(file_path, key)
          normalized_key = @s3_prefix ? File.join(@s3_prefix, key) : key
          { path: file_path, key: normalized_key }
        end

        def find_directly
          Dir.each_child(@source_dir) do |entry|
            break if @directory_uploader.abort_upload

            entry_path = File.join(@source_dir, entry)
            next if File.directory?(entry_path) || skip_symlink?(entry_path)
            next unless include_file?(entry_path, entry)
            next unless valid_file_type?(entry_path)

            @file_queue << build_file_entry(entry_path, entry)
          rescue StandardError => e
            @errors << e
            @directory_uploader.abort_upload = true unless @ignore_failure
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

        def valid_file_type?(path)
          File.file?(path) || File.symlink?(path)
        end

        def skip_symlink?(path)
          !@follow_symlinks && File.symlink?(path)
        end

        def include_file?(file_path, file_name)
          return true unless @filter_callback

          @filter_callback.call(file_path, file_name)
        end

        def scan_directory(dir_path, key_prefix: '', visited: nil)
          return if @directory_uploader.abort_upload

          Dir.each_child(dir_path) do |entry|
            break if @directory_uploader.abort_upload

            full_path = File.join(dir_path, entry)
            next unless include_file?(full_path, entry)
            next if !@follow_symlinks && File.symlink?(full_path)

            if File.directory?(full_path)
              handle_directory(full_path, entry, key_prefix, visited)
            elsif valid_file_type?(full_path)
              key = key_prefix.empty? ? entry : File.join(key_prefix, entry)
              @file_queue << build_file_entry(full_path, key)
            end
          rescue StandardError => e
            @errors << e
            @directory_uploader.abort_upload = true unless @ignore_failure
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
