# frozen_string_literal: true

require 'thread'
require 'set'
require 'tempfile'
require 'stringio'

module Aws
  module S3
    # @api private
    class MultipartStreamUploader

      DEFAULT_PART_SIZE = 5 * 1024 * 1024 # 5MB
      DEFAULT_THREAD_COUNT = 10
      CREATE_OPTIONS = Set.new(Client.api.operation(:create_multipart_upload).input.shape.member_names)
      UPLOAD_PART_OPTIONS = Set.new(Client.api.operation(:upload_part).input.shape.member_names)
      COMPLETE_UPLOAD_OPTIONS = Set.new(Client.api.operation(:complete_multipart_upload).input.shape.member_names)

      # @option options [Client] :client
      def initialize(options = {})
        @client = options[:client] || Client.new
        @tempfile = options[:tempfile]
        @part_size = options[:part_size] || DEFAULT_PART_SIZE
        @thread_count = options[:thread_count] || DEFAULT_THREAD_COUNT
      end

      # @return [Client]
      attr_reader :client

      # @option options [required,String] :bucket
      # @option options [required,String] :key
      # @option options [Integer] :thread_count (DEFAULT_THREAD_COUNT)
      # @return [Seahorse::Client::Response] - the CompleteMultipartUploadResponse
      def upload(options = {}, &block)
        Aws::Plugins::UserAgent.metric('S3_TRANSFER') do
          upload_id = initiate_upload(options)
          parts = upload_parts(upload_id, options, &block)
          complete_upload(upload_id, parts, options)
        end
      end

      private

      def initiate_upload(options)
        @client.create_multipart_upload(create_opts(options)).upload_id
      end

      def complete_upload(upload_id, parts, options)
        @client.complete_multipart_upload(
          **complete_opts(options).merge(upload_id: upload_id, multipart_upload: { parts: parts })
        )
      rescue StandardError => e
        abort_upload(upload_id, options, [e])
      end

      def upload_parts(upload_id, options, &block)
        completed = Queue.new
        thread_errors = []
        errors = begin
          IO.pipe do |read_pipe, write_pipe|
            threads = upload_in_threads(
              read_pipe,
              completed,
              upload_part_opts(options).merge(upload_id: upload_id),
              thread_errors
            )
            begin
              block.call(write_pipe)
            ensure
              # Ensure the pipe is closed to avoid https://github.com/jruby/jruby/issues/6111
              write_pipe.close
            end
            threads.map(&:value).compact
          end
        rescue StandardError => e
          thread_errors + [e]
        end
        return ordered_parts(completed) if errors.empty?

        abort_upload(upload_id, options, errors)
      end

      def abort_upload(upload_id, options, errors)
        @client.abort_multipart_upload(bucket: options[:bucket], key: options[:key], upload_id: upload_id)
        msg = "multipart upload failed: #{errors.map(&:message).join('; ')}"
        raise MultipartUploadError.new(msg, errors)
      rescue MultipartUploadError => e
        raise e
      rescue StandardError => e
        msg = "failed to abort multipart upload: #{e.message}. "\
          "Multipart upload failed: #{errors.map(&:message).join('; ')}"
        raise MultipartUploadError.new(msg, errors + [e])
      end

      def create_opts(options)
        CREATE_OPTIONS.each_with_object({}) do |key, hash|
          hash[key] = options[key] if options.key?(key)
        end
      end

      def upload_part_opts(options)
        UPLOAD_PART_OPTIONS.each_with_object({}) do |key, hash|
          hash[key] = options[key] if options.key?(key)
        end
      end

      def complete_opts(options)
        COMPLETE_UPLOAD_OPTIONS.each_with_object({}) do |key, hash|
          hash[key] = options[key] if options.key?(key)
        end
      end

      def read_to_part_body(read_pipe)
        return if read_pipe.closed?

        temp_io = @tempfile ? Tempfile.new('aws-sdk-s3-upload_stream') : StringIO.new(String.new)
        temp_io.binmode
        bytes_copied = IO.copy_stream(read_pipe, temp_io, @part_size)
        temp_io.rewind
        if bytes_copied.zero?
          if temp_io.is_a?(Tempfile)
            temp_io.close
            temp_io.unlink
          end
          nil
        else
          temp_io
        end
      end

      def upload_in_threads(read_pipe, completed, options, thread_errors)
        mutex = Mutex.new
        part_number = 0
        options.fetch(:thread_count, @thread_count).times.map do
          thread = Thread.new do
            loop do
              body, thread_part_number = mutex.synchronize do
                [read_to_part_body(read_pipe), part_number += 1]
              end
              break unless body || thread_part_number == 1

              begin
                part = options.merge(body: body, part_number: thread_part_number)
                resp = @client.upload_part(part)
                completed_part = create_completed_part(resp, part)
                completed.push(completed_part)
              ensure
                clear_body(body)
              end
            end
            nil
          rescue StandardError => e
            # keep other threads from uploading other parts
            mutex.synchronize do
              thread_errors.push(e)
              read_pipe.close_read unless read_pipe.closed?
            end
            e
          end
          thread
        end
      end

      def create_completed_part(resp, part)
        completed_part = { etag: resp.etag, part_number: part[:part_number] }
        return completed_part unless part[:checksum_algorithm]

        # get the requested checksum from the response
        k = "checksum_#{part[:checksum_algorithm].downcase}".to_sym
        completed_part[k] = resp[k]
        completed_part
      end

      def ordered_parts(parts)
        sorted = []
        until parts.empty?
          part = parts.pop
          index = sorted.bsearch_index { |p| p[:part_number] >= part[:part_number] } || sorted.size
          sorted.insert(index, part)
        end
        sorted
      end

      def clear_body(body)
        if body.is_a?(Tempfile)
          body.close
          body.unlink
        elsif body.is_a?(StringIO)
          body.string.clear
        end
      end
    end
  end
end
