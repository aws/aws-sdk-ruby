# frozen_string_literal: true

require 'pathname'
require 'thread'
require 'set'

module Aws
  module S3
    # TODO - move to another location
    # Error raised when file download operations fail
    class FileDownloadError < StandardError; end

    # @api private
    class FileDownloader

      MIN_CHUNK_SIZE = 5 * 1024 * 1024
      MAX_PARTS = 10_000
      THREAD_COUNT = 10

      def initialize(options = {})
        @client = options[:client] || Client.new
      end

      # @return [Client]
      attr_reader :client

      def download(destination, options = {})
        @path = destination
        @mode = options[:mode] || 'auto'
        @thread_count = options[:thread_count] || THREAD_COUNT
        @chunk_size = options[:chunk_size]
        @params = set_params(options)
        @on_checksum_validated = options[:on_checksum_validated]
        @progress_callback = options[:progress_callback]
        validate!

        Aws::Plugins::UserAgent.metric('S3_TRANSFER') do
          case @mode
          when 'auto' then multipart_download
          when 'single_request' then single_request
          when 'get_range'
            raise ArgumentError, 'In :get_range mode, :chunk_size must be provided' unless @chunk_size

            resp = @client.head_object(@params)
            multithreaded_get_by_ranges(resp.content_length, resp.etag)
          else
            raise ArgumentError, "Invalid mode #{@mode} provided, mode should be :single_request, :get_range or :auto"
          end
        end
      rescue StandardError => e
        File.delete(@path) if File.exist?(@path)
        raise e
      end

      private

      def set_params(options)
        params = { bucket: options[:bucket], key: options[:key] }
        params[:version_id] = options[:version_id] if options[:version_id]
        params
      end

      def validate!
        return unless @on_checksum_validated && !@on_checksum_validated.respond_to?(:call)

        raise ArgumentError, 'on_checksum_validated must be callable'
      end

      def multipart_download
        resp = @client.head_object(@params.merge(part_number: 1))
        count = resp.parts_count

        if count.nil? || count <= 1
          if resp.content_length <= MIN_CHUNK_SIZE
            single_request
          else
            multithreaded_get_by_ranges(resp.content_length, resp.etag)
          end
        else
          resp = @client.head_object(@params) # partNumber is an option
          if resp.content_length <= MIN_CHUNK_SIZE
            single_request
          else
            compute_mode(resp.content_length, count, resp.etag)
          end
        end
      end

      def compute_mode(file_size, count, etag)
        chunk_size = compute_chunk(file_size)
        part_size = (file_size.to_f / count).ceil
        if chunk_size < part_size
          multithreaded_get_by_ranges(file_size, etag)
        else
          multithreaded_get_by_parts(count, file_size, etag)
        end
      end

      def compute_chunk(file_size)
        raise ArgumentError, ":chunk_size shouldn't exceed total file size." if @chunk_size && @chunk_size > file_size

        @chunk_size || [(file_size.to_f / MAX_PARTS).ceil, MIN_CHUNK_SIZE].max.to_i
      end

      def multithreaded_get_by_ranges(file_size, etag)
        offset = 0
        default_chunk_size = compute_chunk(file_size)
        chunks = []
        part_number = 1 # parts start at 1
        while offset < file_size
          progress = offset + default_chunk_size
          progress = file_size if progress > file_size
          params = @params.merge(range: "bytes=#{offset}-#{progress - 1}", if_match: etag)
          chunks << Part.new(part_number: part_number, size: (progress - offset), params: params)
          part_number += 1
          offset = progress
        end
        download_in_threads(PartList.new(chunks), file_size)
      end

      def multithreaded_get_by_parts(n_parts, total_size, etag)
        parts = (1..n_parts).map do |part|
          Part.new(part_number: part, params: @params.merge(part_number: part, if_match: etag))
        end
        download_in_threads(PartList.new(parts), total_size)
      end

      def download_in_threads(pending, total_size)
        threads = []
        mutex = Mutex.new
        max_requests = pending.count
        total_requests = 0
        progress = MultipartProgress.new(pending, total_size, @progress_callback) if @progress_callback
        @thread_count.times do
          thread = Thread.new do
            begin
              while (part = pending.shift)
                if progress
                  part.params[:on_chunk_received] =
                    proc do |_chunk, bytes, total|
                      progress.call(part.part_number, bytes, total)
                    end
                end
                resp = @client.get_object(part.params)

                if part.params[:range]
                  range = resp.content_range.split(' ').last.split('/').first
                  expected_range = part.params[:range].split('=').last
                  raise FileDownloadError, 'file download integrity checked failed' unless expected_range == range
                end

                write(resp)
                if @on_checksum_validated && resp.checksum_validated
                  @on_checksum_validated.call(resp.checksum_validated, resp)
                end
                mutex.synchronize { total_requests += 1 }
              end
              nil
            rescue StandardError => e
              # keep other threads from downloading other parts
              pending.clear!
              raise e
            end
          end
          threads << thread
        end
        threads.map(&:value).compact

        raise FileDownloadError, 'file download integrity checked failed' unless max_requests == total_requests
      end

      def write(resp)
        range = resp.content_range.split(' ').last.split('/').first
        head = range.split('-').map(&:to_i).first
        File.write(@path, resp.body.read, head)
      end

      def single_request
        params = @params.merge(response_target: @path)
        params[:on_chunk_received] = single_part_progress if @progress_callback
        resp = @client.get_object(params)
        return resp unless @on_checksum_validated

        @on_checksum_validated.call(resp.checksum_validated, resp) if resp.checksum_validated
        resp
      end

      def single_part_progress
        proc do |_chunk, bytes_read, total_size|
          @progress_callback.call([bytes_read], [total_size], total_size)
        end
      end

      # @api private
      class Part < Struct.new(:part_number, :size, :params)
        include Aws::Structure
      end

      # @api private
      class PartList
        include Enumerable
        def initialize(parts = [])
          @parts = parts
          @mutex = Mutex.new
        end

        def count
          @mutex.synchronize { @parts.count }
        end

        def shift
          @mutex.synchronize { @parts.shift }
        end

        def size
          @mutex.synchronize { @parts.size }
        end

        def clear!
          @mutex.synchronize { @parts.clear }
        end

        def each(&block)
          @mutex.synchronize { @parts.each(&block) }
        end
      end

      # @api private
      class MultipartProgress
        def initialize(parts, total_size, progress_callback)
          @bytes_received = Array.new(parts.size, 0)
          @part_sizes = parts.map(&:size)
          @total_size = total_size
          @progress_callback = progress_callback
        end

        def call(part_number, bytes_received, total)
          # part numbers start at 1
          @bytes_received[part_number - 1] = bytes_received
          # part size may not be known until we get the first response
          @part_sizes[part_number - 1] ||= total
          @progress_callback.call(@bytes_received, @part_sizes, @total_size)
        end
      end
    end
  end
end
