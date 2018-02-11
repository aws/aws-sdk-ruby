require 'thread'
require 'set'

module Aws
  module S3
    # @api private
    class MultipartStreamUploader
      # api private
      PART_SIZE = 5 * 1024 * 1024 # 5MB

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
        read_pipe, write_pipe = IO.pipe
        completed = Queue.new
        threads = upload_in_threads(read_pipe, completed, upload_part_opts(options).merge(upload_id: upload_id))
        block.call(write_pipe)
        write_pipe.close
        errors = threads.map(&:value).compact
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

      def upload_in_threads(read_pipe, completed, options)
        mutex = Mutex.new
        part_number = 0
        @thread_count.times.map do
          thread = Thread.new do
            begin
              while (pair = mutex.synchronize { [!read_pipe.closed? && read_pipe.read(PART_SIZE), part_number += 1] }) && pair.first
                buffer, part_number = pair
                part = options.merge(
                  body: buffer,
                  part_number: part_number,
                )
                resp = @client.upload_part(part)
                completed << {etag: resp.etag, part_number: part[:part_number]}
              end
              nil
            rescue => error
              # keep other threads from uploading other parts
              mutex.synchronize { read_pipe.close_read }
              error
            end
          end
          thread.abort_on_exception = true
          thread
        end
      end
    end
  end
end
