# frozen_string_literal: true

require 'pathname'
require 'securerandom'
require 'set'

module Aws
  module S3
    # @api private
    class FileDownloader

      MIN_CHUNK_SIZE = 5 * 1024 * 1024
      MAX_PARTS = 10_000

      def initialize(options = {})
        @client = options[:client] || Client.new
      end

      # @return [Client]
      attr_reader :client

      def download(destination, options = {})
        @path = destination
        @mode = options.delete(:mode) || 'auto'
        @thread_count = options.delete(:thread_count) || 10
        @chunk_size = options.delete(:chunk_size)
        @on_checksum_validated = options.delete(:on_checksum_validated)
        @progress_callback = options.delete(:progress_callback)
        @params = options
        validate!

        Aws::Plugins::UserAgent.metric('S3_TRANSFER') do
          case @mode
          when 'auto' then multipart_download
          when 'single_request' then single_request
          when 'get_range'
            raise ArgumentError, 'In get_range mode, :chunk_size must be provided' unless @chunk_size

            resp = @client.head_object(@params)
            multithreaded_get_by_ranges(resp.content_length, resp.etag)
          else
            raise ArgumentError, "Invalid mode #{@mode} provided, :mode should be single_request, get_range or auto"
          end
        end
        File.rename(@temp_path, @path) if @temp_path
      ensure
        File.delete(@temp_path) if @temp_path && File.exist?(@temp_path)
      end

      private

      def validate!
        return unless @on_checksum_validated && !@on_checksum_validated.respond_to?(:call)

        raise ArgumentError, ':on_checksum_validated must be callable'
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
          # covers cases when given object is not uploaded via UploadPart API
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
        progress = MultipartProgress.new(pending, total_size, @progress_callback) if @progress_callback
        @temp_path = "#{@path}.s3tmp.#{SecureRandom.alphanumeric(8)}"
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
                range = extract_range(resp.content_range)
                validate_range(range, part.params[:range]) if part.params[:range]
                write(resp.body, range)
                if @on_checksum_validated && resp.checksum_validated
                  @on_checksum_validated.call(resp.checksum_validated, resp)
                end
              end
              nil
            rescue StandardError => e
              pending.clear! # keep other threads from downloading other parts
              raise e
            end
          end
          threads << thread
        end
        threads.map(&:value).compact
      end

      def extract_range(value)
        value.match(%r{bytes (?<range>\d+-\d+)/\d+})[:range]
      end

      def validate_range(actual, expected)
        return if actual == expected.match(/bytes=(?<range>\d+-\d+)/)[:range]

        raise MultipartDownloadError, "multipart download failed: expected range of #{expected} but got #{actual}"
      end

      def write(body, range)
        File.write(@temp_path, body.read, range.split('-').first.to_i)
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
