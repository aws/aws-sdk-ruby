# frozen_string_literal: true

require 'find'
require 'set'

module Aws
  module S3
    # Raised when DirectoryUploader fails to upload files to S3 bucket
    class DirectoryUploadError < StandardError
      def initialize(message, errors = [])
        @errors = errors
        super(message)
      end

      # @return [Array<StandardError>] The list of errors encountered when uploading objects
      attr_reader :errors
    end

    # @api private
    class DirectoryUploader
      def initialize(options = {})
        @client = options[:client] || Client.new
        @executor = options[:executor]
      end

      # @return [Client]
      attr_reader :client

      def upload(source, bucket:, **options)
        raise ArgumentError, 'Invalid directory' unless Dir.exist?(source)

        upload_opts = options.dup
        @source = source
        @bucket = bucket
        @recursive = upload_opts.delete(:recursive) || false
        @follow_symlinks = upload_opts.delete(:follow_symlinks) || false
        @s3_prefix = upload_opts.delete(:s3_prefix)
        @s3_delimiter = upload_opts.delete(:s3_delimiter) || '/'
        @filter_callback = upload_opts.delete(:filter_callback)

        uploader = FileUploader.new(
          multipart_threshold: upload_opts.delete(:multipart_threshold),
          client: @client,
          executor: @executor
        )
        @upload_queue = SizedQueue.new(100)
        @errors = []
        @abort_upload = false

        Thread.new do
          if @recursive
            stream_recursive_files
          else
            stream_direct_files
          end
          @upload_queue << :done
        end

        upload_attempts = 0
        completion_queue = Queue.new
        while (queue_file = @upload_queue.shift) != :done
          break if @abort_upload

          upload_attempts += 1
          @executor.post(queue_file) do |f|

            path = File.join(@source, f)
            # TODO: key to consider s3_prefix and custom delimiter
            uploader.upload(path, upload_opts.merge(bucket: @bucket, key: f))
          rescue StandardError => e
            @errors << e
            @abort_download = true if @failure_policy == :abort
          ensure
            completion_queue << :done
          end
        end
        file_count.times { completion_queue.pop }

        if @abort_upload
          msg = "failed to upload directory: attempt to upload #{upload_attempts} files " \
            "but failed to upload #{@errors.count} files."
          raise DirectoryUploadError, msg + @errors.to_s
        else
          {
            upload: upload_attempts - @errors.count,
            errors: @errors.count
          }
        end
      end

      private

      # TODO: need to optimize & handle failures
      def stream_recursive_files
        visited = Set.new
        Find.find(@source) do |p|
          break if @abort_upload

          if !@follow_symlinks && File.symlink?(p)
            Find.prune
            next
          end

          absolute_path = File.realpath(p)
          if visited.include?(absolute_path)
            Find.prune
            next
          end

          visited << absolute_path

          # TODO: if non-default s3_delimiter is used, validate here and fail
          @upload_queue << p if File.file?(p)
        end
      end

      # TODO: need to optimize & handle failures
      def stream_direct_files
        Dir.each_child(@source) do |entry|
          break if @abort_upload

          path = File.join(@source, entry)
          next if !@follow_symlinks && File.symlink?(path)

          # TODO: if non-default s3_delimiter is used, validate here and fail
          @upload_queue << entry if File.file?(path)
        end
      end
    end
  end
end
