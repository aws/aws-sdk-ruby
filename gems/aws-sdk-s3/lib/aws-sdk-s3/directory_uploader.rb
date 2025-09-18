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

      # @return [Array<StandardError>] The list of errors encountered when uploading files
      attr_reader :errors
    end

    # @api private
    class DirectoryUploader
      def initialize(options = {})
        @client = options[:client] || Client.new
        @executor = options[:executor] || DefaultExecutor.new
        @options = options
        @mutex = Mutex.new
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
        # @filter_callback = upload_opts.delete(:filter_callback)  # need to impl
        @failure_policy = upload_opts.delete(:failure_policy) || :abort # need to add validation, available opts are :abort, :ignore

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
            stream_direct_files
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
            uploader.upload(f[:full_path], upload_opts.merge(bucket: @bucket, key: f[:key]))
          rescue StandardError => e
            @errors << e
            @abort_upload = true if @failure_policy == :abort
          ensure
            completion_queue << :done
          end
        end
        upload_attempts.times { completion_queue.pop }
        queue_executor.shutdown

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
        @executor.shutdown
      end

      private

      def stream_recursive_files
        if @follow_symlinks
          puts 'streaming files with symlinks'
          stream_with_symlinks
        else
          puts 'streaming files without symlinks'
          stream_without_symlinks
        end
      end

      def stream_with_symlinks
        source_prefix = "#{@source}/"
        visited_dirs = Set.new
        visited_files = Set.new

        Find.find(@source) do |path|
          break if @abort_upload

          stat = File.stat(path)
          if stat.directory?
            if visited_dirs.include?(stat.ino)
              Find.prune
              next
            end
            visited_dirs << stat.ino
            next
          end

          next if visited_files.include?(stat.ino)

          visited_files << stat.ino
          key = path.gsub(source_prefix, '')
          entry = { full_path: path }
          entry[:key] = @s3_prefix ? File.join(@s3_prefix, key) : key

          puts "adding #{entry}"
          @upload_queue << entry
        rescue StandardError => e
          @errors << e
          @abort_upload = true if @failure_policy == :abort
        end
      end

      def stream_without_symlinks
        source_prefix = "#{@source}/"
        Find.find(@source) do |path|
          break if @abort_upload

          stat = File.lstat(path)
          if stat.symlink?
            Find.prune
            next
          end
          next unless stat.file?

          key = path.gsub(source_prefix, '')
          entry = { full_path: path }
          entry[:key] = @s3_prefix ? File.join(@s3_prefix, key) : key

          puts "adding #{entry}"
          @upload_queue << entry
        rescue StandardError => e
          @errors << e
          @abort_upload = true if @failure_policy == :abort
        end
      end

      def stream_direct_files
        Dir.each_child(@source) do |key|
          break if @abort_upload

          path = File.join(@source, key)
          next unless File.file?(path)

          next if !@follow_symlinks && File.symlink?(path)

          entry = { full_path: path }
          entry[:key] = @s3_prefix ? File.join(@s3_prefix, key) : key

          puts "adding #{entry}"
          @upload_queue << entry
        rescue StandardError => e
          @errors << e
          @abort_upload = true if @failure_policy == :abort
        end
      end
    end
  end
end
