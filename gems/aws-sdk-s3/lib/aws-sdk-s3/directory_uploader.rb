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

        uploader = FileUploader.new(multipart_threshold: upload_opts.delete(:multipart_threshold), client: @client)

        queue = SizedQueue.new(5) # TODO: random number
        @disable_queue = false
        _producer = Thread.new do
          if @recursive
            stream_recursive_files(queue)
          else
            stream_direct_files(queue)
          end
          @thread_count.times { queue << :done }
        end

        threads = []
        @thread_count.times do
          thread = Thread.new do
            while (file = queue.shift) != :done
              path = File.join(@source, file)
              # TODO: key to consider s3_prefix and custom delimiter
              uploader.upload(path, upload_opts.merge(key: file))
            end
            nil
          rescue StandardError => e # TODO: handle failure policies
            @disable_queue = true
            queue.clear
            raise e
          end
          threads << thread
        end
        threads.map(&:value).compact
      end

      private

      def stream_recursive_files(queue)
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
          queue << p.sub(%r{^#{Regexp.escape(@source)}/}, '') if File.file?(p)
        end
      end

      def stream_direct_files(queue)
        # TODO: add filter callback4
        Dir.each_child(@source) do |entry|
          break if @disable_queue

          path = File.join(@source, entry)
          next if !@follow_symlinks && File.symlink?(path)

          # TODO: if non-default s3_delimiter is used, validate here and fail
          queue << entry if File.file?(path)
        end
      end
    end
  end
end
