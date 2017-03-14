require 'pathname'
require 'thread'
require 'set'
require 'tmpdir'

module Aws
  module S3
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
        @mode = options[:mode] || "auto"
        @thread_count = options[:thread_count] || THREAD_COUNT
        @chunk_size = options[:chunk_size]
        @bucket = options[:bucket]
        @key = options[:key]

        case @mode
        when "auto" then multipart_download
        when "single_request" then single_request
        when "get_range"
          if @chunk_size
            resp = @client.head_object(bucket: @bucket, key: @key)
            get_range(construct_chunks(resp.content_length))
          else
            msg = "In :get_range mode, :chunk_size must be provided"
            raise ArgumentError, msg
          end
        else
          msg = "Invalid mode #{@mode} provided, "\
            "mode should be :single_request, :get_range or :auto"
          raise ArgumentError, msg
        end
      end
      
      private

      def multipart_download
        resp = @client.head_object(bucket: @bucket, key: @key, part_number: 1)
        file_size = resp.content_length
        if file_size < MIN_CHUNK_SIZE
          single_request
        elsif resp.parts_count.nil? || resp.parts_count <= 1
          get_range(construct_chunks(file_size))
        else
          compute_mode(file_size, resp.parts_count)
        end
      end
 
      def compute_mode(file_size, count)
        chunk_size = compute_chunk(file_size)
        part_size = (file_size.to_f / count.to_f).ceil
        if chunk_size < part_size
          get_range(construct_chunks(file_size))
        else
          get_part(count)
        end
      end

      def construct_chunks(file_size)
        offset = 0
        default_chunk_size = compute_chunk(file_size)
        chunks = []
        while offset <= file_size
          progress = offset + default_chunk_size
          if progress < file_size
            chunks << "bytes=#{offset}-#{progress}"
          else
            chunks << "bytes=#{offset}-#{file_size}"
          end
          offset = progress + 1
        end
        chunks
      end

      def compute_chunk(file_size)
        if @chunk_size && @chunk_size > file_size
          raise ArgumentError, ":chunk_size shouldn't exceed total file size."
        else
          default_chunk_size = @chunk_size || [(file_size.to_f / MAX_PARTS).ceil, MIN_CHUNK_SIZE].max.to_i
        end
      end

      def sort_files(files)
        # sort file by start range count or part number
        files.sort do |a, b|
          a[/([^\=]+)$/].split('-')[0].to_i <=> b[/([^\=]+)$/].split('-')[0].to_i
        end
      end

      def concatenate_files(fileparts)
        begin
          concatenate_parts(fileparts)
        ensure
          fileparts.each do |part|
            File.unlink(part) if File.exists?(part)
          end
        end
      end

      def concatenate_parts(fileparts)
        File.open(@path, 'w', encoding: 'UTF-8') do |output_path|
          sort_files(fileparts).each do |part|
            File.open(part, 'r', encoding: 'UTF-8') { |f| output_path.write(f.read) }
          end
        end
      end

      def file_batches(chunks, mode)
        batches = []
        dir = Dir.tmpdir
        chunks = (1..chunks) if mode.eql? 'part_number'
        chunks.each_slice(@thread_count) do |slice|
          batches << map_files(slice, dir, mode)
        end
        batches
      end

      def map_files(slice, dir, mode)
        case mode
        when 'range'
          slice.inject({}) {|h, chunk| h[chunk] = File.join(dir, chunk); h}
        when 'part_number'
          slice.inject({}) {|h, part| h[part] = File.join(dir, "part_number=#{part}"); h}
        end
      end

      def get_range(chunks)
        thread_batches(chunks, 'range')
      end

      def get_part(parts)
        thread_batches(parts, 'part_number')
      end

      def thread_batches(chunks, param)
        batches = file_batches(chunks, param)
        batches.each do |batch|
          threads = []
          batch.each do |chunk, file|
            threads << Thread.new do
              resp = @client.get_object(
                :bucket => @bucket,
                :key => @key,
                param.to_sym => chunk
              )
              File.open(file, 'w', encoding: 'UTF-8') {|f| f.write(resp.body.read)}
            end
          end
          threads.each(&:join)
        end
        parts = batches.inject([]) {|a, batch| a.push(*batch.values); a}
        concatenate_files(parts)
      end

      def single_request
        @client.get_object(
          bucket: @bucket, key: @key, response_target: @path
        )
      end
    end
  end
end
