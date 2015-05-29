require 'pathname'
require 'thread'

module Aws
  module S3
    # @api private
    class MultipartFileUploader

      MIN_PART_SIZE = 5 * 1024 * 1024 # 5MB

      FILE_TOO_SMALL = "unable to multipart upload files smaller than 5MB"

      MAX_PARTS = 10_000

      THREAD_COUNT = 10

      # @option options [Client] :client
      def initialize(options = {})
        @client = options[:client] || Client.new
      end

      # @return [Client]
      attr_reader :client

      # @param [String,Pathname,File,Tempfile] source
      # @option options [required,String] :bucket
      # @option options [required,String] :key
      # @return [void]
      def upload(source, options = {})
        if File.size(source) < MIN_PART_SIZE
          raise ArgumentError, FILE_TOO_SMALL
        else
          upload_id = initiate_upload(options)
          parts = upload_parts(upload_id, source, options)
          complete_upload(upload_id, parts, options)
        end
      end

      private

      def initiate_upload(options)
        @client.create_multipart_upload(options).upload_id
      end

      def complete_upload(upload_id, parts, options)
        @client.complete_multipart_upload(
          bucket: options[:bucket],
          key: options[:key],
          upload_id: upload_id,
          multipart_upload: { parts: parts })
      end

      def upload_parts(upload_id, source, options)
        pending = PartList.new(compute_parts(upload_id, source, options))
        completed = PartList.new
        errors = upload_in_threads(pending, completed)
        if errors.empty?
          completed.to_a.sort_by { |part| part[:part_number] }
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

      def compute_parts(upload_id, source, options)
        size = File.size(source)
        default_part_size = compute_default_part_size(size)
        offset = 0
        part_number = 1
        parts = []
        while offset < size
          parts << {
            bucket: options[:bucket],
            key: options[:key],
            upload_id: upload_id,
            part_number: part_number,
            body: FilePart.new(
              source: source,
              offset: offset,
              size: part_size(size, default_part_size, offset)
            )
          }
          part_number += 1
          offset += default_part_size
        end
        parts
      end

      def upload_in_threads(pending, completed)
        threads = []
        THREAD_COUNT.times do
          thread = Thread.new do
            begin
              while part = pending.shift
                resp = @client.upload_part(part)
                part[:body].close
                completed.push(etag: resp.etag, part_number: part[:part_number])
              end
              nil
            rescue => error
              # keep other threads from uploading other parts
              pending.clear!
              error
            end
          end
          thread.abort_on_exception = true
          threads << thread
        end
        threads.map(&:value).compact
      end

      def compute_default_part_size(source_size)
        [(source_size.to_f / MAX_PARTS).ceil, MIN_PART_SIZE].max.to_i
      end

      def part_size(total_size, part_size, offset)
        if offset + part_size > total_size
          total_size - offset
        else
          part_size
        end
      end

      # @api private
      class PartList

        def initialize(parts = [])
          @parts = parts
          @mutex = Mutex.new
        end

        def push(part)
          @mutex.synchronize { @parts.push(part) }
        end

        def shift
          @mutex.synchronize { @parts.shift }
        end

        def clear!
          @mutex.synchronize { @parts.clear }
        end

        def to_a
          @mutex.synchronize { @parts.dup }
        end

      end
    end
  end
end
