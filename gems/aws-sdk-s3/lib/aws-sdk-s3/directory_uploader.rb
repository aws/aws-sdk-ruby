# frozen_string_literal: true

require 'find'
require 'set'
require 'thread'

module Aws
  module S3
    # @api private
    class DirectoryUploader
      def initialize(options = {})
        @client = options[:client] || Client.new
        @thread_count = options[:thread_count] || 10
        @executor = options[:executor]
      end

      # @return [Client]
      attr_reader :client

      def upload(source, options = {})
        raise ArgumentError, 'Invalid directory' unless Dir.exist?(source)

        upload_opts = options.dup
        @source = source
        @recursive = upload_opts.delete(:recursive) || false
        @follow_symlinks = upload_opts.delete(:follow_symlinks) || false
        @s3_prefix = upload_opts.delete(:s3_prefix) || nil
        @s3_delimiter = upload_opts.delete(:s3_delimiter) || '/'
        @filter_callback = upload_opts.delete(:filter_callback) || nil

        uploader = FileUploader.new(
          multipart_threshold: upload_opts.delete(:multipart_threshold),
          client: @client,
          executor: @executor
        )
        @file_queue = SizedQueue.new(5) # TODO: random number for now, intended to relive backpressure
        @disable_queue = false

        _producer = Thread.new do
          if @recursive
            stream_recursive_files
          else
            stream_direct_files
          end

          # signals queue being done
          if @executor
            @file_queue << :done
          else
            @thread_count.times { @file_queue << :done }
          end
        end

        if @executor
          upload_with_executor(uploader, upload_opts)
        else
          threads = []
          @thread_count.times do
            thread = Thread.new do
              return if @disable_queue

              while (file = @file_queue.shift) != :done
                path = File.join(@source, file)
                # TODO: key to consider s3_prefix and custom delimiter
                uploader.upload(path, upload_opts.merge(key: file))
              end
              nil
            rescue StandardError => e # TODO: handle failure policies
              @disable_queue = true
              e
            end
            threads << thread
          end
          threads.map(&:value).compact
        end
      end

      private

      def upload_with_executor(uploader, upload_opts)
        total_files = 0
        completion_queue = Queue.new
        errors = []
        while (file = @file_queue.shift) != :done
          total_files += 1
          @executor.post(file) do |f|
            begin
              next if @disable_queue

              path = File.join(@source, f)
              # TODO: key to consider s3_prefix and custom delimiter
              uploader.upload(path, upload_opts.merge(key: f))
            rescue StandardError => e # TODO: handle failure policies
              @disable_queue = true
              errors << e
            end
          ensure
            completion_queue << :done
          end
        end
        puts 'waiting for completion'
        total_files.times { completion_queue.pop }
        puts 'all done waiting!'
        raise StandardError, 'directory upload failed' unless errors.empty?
      end

      def stream_recursive_files
        visited = Set.new
        # TODO: add filter callback
        Find.find(@source) do |p|
          break if @disable_queue

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
          @file_queue << p.sub(%r{^#{Regexp.escape(@source)}/}, '') if File.file?(p)
        end
      end

      def stream_direct_files
        # TODO: add filter callback4
        Dir.each_child(@source) do |entry|
          break if @disable_queue

          path = File.join(@source, entry)
          next if !@follow_symlinks && File.symlink?(path)

          # TODO: if non-default s3_delimiter is used, validate here and fail
          @file_queue << entry if File.file?(path)
        end
      end
    end
  end
end
