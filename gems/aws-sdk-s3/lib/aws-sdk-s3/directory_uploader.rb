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
        @source = source
        @s3_prefix = upload_opts.delete(:s3_prefix)
        @recursive = upload_opts.delete(:recursive) || false
        @follow_symlinks = upload_opts.delete(:follow_symlinks) || false
        @ignore_failure = upload_opts.delete(:ignore_failure) || false
        @filter_callback = upload_opts.delete(:filter_callback)
        @abort_upload = false
        @upload_queue = SizedQueue.new(100)
        @errors = []

        uploader = FileUploader.new(
          multipart_threshold: upload_opts.delete(:multipart_threshold),
          client: @client,
          executor: @executor
        )
        queue_files
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
        build_result(upload_attempts)
      ensure
        queue_executor.shutdown
        @executor.shutdown unless @options[:executor]
      end

      private

      def build_result(upload_count)
        if @abort_upload
          msg = "failed to upload directory: uploaded #{upload_count - @errors.count} files " \
            "but failed to upload #{@errors.count} files."
          raise DirectoryUploadError.new(msg, @errors)
        else
          result = { completed_uploads: upload_count - @errors.count, failed_uploads: @errors.count }
          result[:errors] = @errors if @errors.any?
          result
        end
      end

      def direct_traverse
        Dir.each_child(@source) do |entry|
          break if @abort_upload

          full_path = File.join(@source, entry)
          next unless @filter_callback&.call(full_path, entry)
          next unless valid_entry?(full_path)

          queue_file(full_path, entry)
        rescue StandardError => e
          @errors << e
          @abort_upload = true unless @ignore_failure
        end
      end

      def traverse_recursively
        if @follow_symlinks
          visited = Set.new
          visited << File.stat(@source).ino
          traverse_directory(@source, visited: visited)
        else
          traverse_directory(@source)
        end
      end

      def traverse_directory(dir_path, prefix: '', visited: nil)
        return if @abort_upload

        Dir.each_child(dir_path) do |entry|
          break if @abort_upload

          full_path = File.join(dir_path, entry)
          next unless @filter_callback&.call(full_path, entry)
          next if !@follow_symlinks && File.symlink?(full_path)

          if File.directory?(full_path)
            process_directory(full_path, entry, prefix, visited)
          elsif File.file?(full_path) || File.symlink?(full_path)
            key = prefix.empty? ? entry : File.join(prefix, entry)
            queue_file(full_path, key)
          end
        rescue StandardError => e
          @errors << e
          @abort_upload = true unless @ignore_failure
        end
      end

      def process_directory(path, dir, prefix, visited)
        if @follow_symlinks && visited
          stat = File.stat(path)
          return if visited.include?(stat.ino)

          visited << stat.ino
        end
        new_prefix = prefix.empty? ? dir : File.join(prefix, dir)
        traverse_directory(path, prefix: new_prefix, visited: visited)
      end

      def queue_files
        Thread.new do
          if @recursive
            traverse_recursively
          else
            direct_traverse
          end
          @upload_queue << :done
        end
      end

      def queue_file(path, key)
        entry = { path: path }
        entry[:key] = @s3_prefix ? File.join(@s3_prefix, key) : key
        @upload_queue << entry
      end

      def valid_entry?(path)
        return false if File.directory?(path) || (!@follow_symlinks && File.symlink?(path))

        File.file?(path) || File.symlink?(path)
      end
    end
  end
end
