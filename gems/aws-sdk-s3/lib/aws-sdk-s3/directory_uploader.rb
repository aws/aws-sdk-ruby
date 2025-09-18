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
      end

      # @return [Client]
      attr_reader :client

      def upload(source, bucket:, **options)
        raise ArgumentError, 'Invalid directory' unless Dir.exist?(source)

        upload_opts = options.dup
        bucket = bucket
        @source = source
        @s3_prefix = upload_opts.delete(:s3_prefix)
        @recursive = upload_opts.delete(:recursive) || false
        @follow_symlinks = upload_opts.delete(:follow_symlinks) || false
        @ignore_failure = upload_opts.delete(:failure_policy) || false
        @filter_callback = upload_opts.delete(:filter_callback)

        uploader = FileUploader.new(
          multipart_threshold: upload_opts.delete(:multipart_threshold),
          client: @client,
          executor: @executor
        )

        @abort_upload = false
        @upload_queue = SizedQueue.new(100)
        @errors = []

        Thread.new do
          if @recursive
            stream_recursive_files
          else
            direct_traverse
          end
          @upload_queue << :done
        end

        upload_attempts = 0
        completion_queue = Queue.new
        queue_executor = DefaultExecutor.new

        while (file = @upload_queue.shift) != :done
          break if @abort_upload

          upload_attempts += 1
          queue_executor.post(file) do |f|
            uploader.upload(f[:path], upload_opts.merge(bucket: bucket, key: f[:key]))
          rescue StandardError => e
            @errors << e
            @abort_upload = true unless @ignore_failure
          ensure
            completion_queue << :done
          end
        end
        upload_attempts.times { completion_queue.pop }

        if @abort_upload
          msg = "failed to upload directory: uploaded #{upload_attempts - @errors.count} files " \
            "but failed to upload #{@errors.count} files."
          raise DirectoryUploadError.new(msg, @errors)
        else
          {
            completed_uploads: upload_attempts - @errors.count,
            failed_uploads: @errors.count
          }
        end
      ensure
        queue_executor.shutdown
        @executor.shutdown unless @options[:executor]
      end

      private

      def stream_recursive_files
        if @follow_symlinks
          visited = Set.new
          visited << File.stat(@source).ino
          traverse_directory(@source, visited: visited)
        else
          traverse_directory(@source)
        end
      end

      def traverse_directory(dir_path, relative_prefix: '', visited: nil)
        return if @abort_upload

        Dir.each_child(dir_path) do |file|
          break if @abort_upload

          full_path = File.join(dir_path, file)
          next if @filter_callback&.call(full_path, file)
          next if File.symlink?(full_path) && !@follow_symlinks

          if File.directory?(full_path)
            process_directory(full_path, file, relative_prefix, visited)
          elsif File.file?(full_path) || File.symlink?(full_path)
            key = relative_prefix.empty? ? file : File.join(relative_prefix, file)
            queue_file(full_path, key)
          end
        rescue StandardError => e
          @errors << e
          @abort_upload = true unless @ignore_failure
        end
      end

      def process_directory(path, file, relative_prefix, visited)
        if @follow_symlinks && visited
          stat = File.stat(path)
          return if visited.include?(stat.ino)

          visited << stat.ino
        end
        new_prefix = relative_prefix.empty? ? file : File.join(relative_prefix, file)
        traverse_directory(path, relative_prefix: new_prefix, visited: visited)
      end

      def direct_traverse
        Dir.each_child(@source) do |file|
          break if @abort_upload

          full_path = File.join(@source, file)
          next if @filter_callback&.call(full_path, file)
          next unless should_upload_file?(full_path)

          queue_file(full_path, file)
        rescue StandardError => e
          @errors << e
          @abort_upload = true unless @ignore_failure
        end
      end

      def should_upload_file?(path)
        return false if File.directory?(path)
        return false if !@follow_symlinks && File.symlink?(path)
        File.file?(path) || File.symlink?(path)
      end

      def queue_file(path, key)
        entry = { path: path }
        entry[:key] = @s3_prefix ? File.join(@s3_prefix, key) : key
        @upload_queue << entry
      end
    end
  end
end
