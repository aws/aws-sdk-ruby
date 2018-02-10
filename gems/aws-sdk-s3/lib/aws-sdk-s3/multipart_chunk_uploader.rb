require 'thread'
require 'set'

module Aws
  module S3
    # @api private
    class MultipartChunkUploader
      # api private
      THREAD_COUNT = 10

      # @api private
      CREATE_OPTIONS =
        Set.new(Client.api.operation(:create_multipart_upload).input.shape.member_names)

      # @api private
      UPLOAD_PART_OPTIONS =
        Set.new(Client.api.operation(:upload_part).input.shape.member_names)

      # @option options [Client] :client
      def initialize(options = {})
        @client = options[:client] || Client.new
        @thread_count = options[:thread_count] || THREAD_COUNT
      end

      # @return [Client]
      attr_reader :client

      # @option options [required,String] :bucket
      # @option options [required,String] :key
      # @return [void]
      def upload(options = {}, &block)
        upload_id = initiate_upload(options)
        parts = upload_parts(upload_id, options, &block)
        complete_upload(upload_id, parts, options)
      end

      private

      def initiate_upload(options)
        @client.create_multipart_upload(create_opts(options)).upload_id
      end

      def complete_upload(upload_id, parts, options)
        @client.complete_multipart_upload(
          bucket: options[:bucket],
          key: options[:key],
          upload_id: upload_id,
          multipart_upload: { parts: parts })
      end

      def upload_parts(upload_id, options, &block)
        queue = SizedQueue.new(1)
        completed = Queue.new
        chunked_part_reader = ChunkedPartReader.new do |buffer, part_number|
          queue << upload_part_opts(options).merge({
            upload_id: upload_id,
            body: buffer,
            part_number: part_number,
          })
        end
        threads = upload_in_threads(queue, completed)
        begin
          block.call(chunked_part_reader)
          chunked_part_reader.flush
        rescue ClosedQueueError
          # Thread pool terminated
        end
        queue.close
        errors = threads.map(&:value).compact
        completed.close
        if errors.empty?
          Array.new(completed.size) { completed.pop }.sort_by { |part| part[:part_number] }
        else
          abort_upload(upload_id, options, errors)
        end
      end

      def abort_upload(upload_id, options, errors)
        @client.abort_multipart_upload(
          bucket: options[:bucket],
          key: options[:key],
          upload_id: upload_id
        )
        msg = "multipart upload failed: #{errors.map(&:message).join("; ")}"
        raise MultipartUploadError.new(msg, errors)
      rescue MultipartUploadError => error
        raise error
      rescue => error
        msg = "failed to abort multipart upload: #{error.message}"
        raise MultipartUploadError.new(msg, errors + [error])
      end

      def create_opts(options)
        CREATE_OPTIONS.inject({}) do |hash, key|
          hash[key] = options[key] if options.key?(key)
          hash
        end
      end

      def upload_part_opts(options)
        UPLOAD_PART_OPTIONS.inject({}) do |hash, key|
          hash[key] = options[key] if options.key?(key)
          hash
        end
      end

      def upload_in_threads(queue, completed)
        @thread_count.times.map do
          thread = Thread.new do
            begin
              while part = queue.pop
                resp = @client.upload_part(part)
                completed << {etag: resp.etag, part_number: part[:part_number]}
              end
              nil
            rescue => error
              queue.close
              # keep other threads from uploading other parts
              queue.clear
              error
            end
          end
          thread.abort_on_exception = true
          thread
        end
      end

      # @api private
      class ChunkedPartReader
        PART_SIZE = 5 * 1024 * 1024 # 5MB

        def initialize(&block)
          @block = block
          @buffer = ''
          @part_number = 1
        end

        def <<(buf)
          if @buffer.bytesize + buf.bytesize > PART_SIZE
            offset = PART_SIZE - @buffer.bytesize
            @buffer << buf.byteslice(0, offset)
            @block.call(@buffer, @part_number)
            @part_number += 1
            complete_chunks = (buf.bytesize - offset) / PART_SIZE
            complete_chunks.times do |i|
              @block.call(buf.byteslice(offset + i * PART_SIZE, PART_SIZE), @part_number)
              @part_number += 1
            end
            remaining_range = (offset + complete_chunks * PART_SIZE)..-1
            @buffer = buf.byteslice(remaining_range)
          else
            @buffer << buf
          end
        end

        def flush
          @block.call(@buffer, @part_number)
        end
      end
    end
  end
end
