# frozen_string_literal: true

require 'async'
require 'pathname'
require 'set'

module Aws
  module S3
    # @api private
    class MultipartUploader

      MIN_PART_SIZE = 5 * 1024 * 1024 # 5MB

      MAX_PARTS = 10_000

      #  {:acl, :bucket, :cache_control, :content_disposition, :content_encoding, :content_language, :content_type,
      #   :expires, :grant_full_control, :grant_read, :grant_read_acp, :grant_write_acp, :key, :metadata,
      #   :server_side_encryption, :storage_class, :website_redirect_location, :sse_customer_algorithm,
      #   :sse_customer_key, :sse_customer_key_md5, :ssekms_key_id, :ssekms_encryption_context,
      #   :bucket_key_enabled, :request_payer, :tagging, :object_lock_mode, :object_lock_retain_until_date,
      #   :object_lock_legal_hold_status,  :expected_bucket_owner, :checksum_algorithm, :checksum_type}>
      CREATE_OPTIONS = Set.new(
        Client.api.operation(:create_multipart_upload).input.shape.member_names
      )

      # {:bucket, :key, :multipart_upload, :upload_id, :checksum_crc32, :checksum_crc32c, :checksum_crc64nvme,
      #  :checksum_sha1, :checksum_sha256, :checksum_type, :mpu_object_size, :request_payer, :expected_bucket_owner,
      # :if_match, :if_none_match, :sse_customer_algorithm, :sse_customer_key, :sse_customer_key_md5}>
      COMPLETE_OPTIONS = Set.new(
        Client.api.operation(:complete_multipart_upload).input.shape.member_names
      )

      # {:body, :bucket, :content_length, :content_md5, :checksum_algorithm, :checksum_crc32, :checksum_crc32c,
      # :checksum_crc64nvme, :checksum_sha1, :checksum_sha256, :key, :part_number, :upload_id,
      # :sse_customer_algorithm, :sse_customer_key, :sse_customer_key_md5, :request_payer, :expected_bucket_owner}>
      UPLOAD_PART_OPTIONS = Set.new(
        Client.api.operation(:upload_part).input.shape.member_names
      )

      # => #<Set: {:checksum_crc32, :checksum_crc32c, :checksum_crc64nvme, :checksum_sha1, :checksum_sha256}>
      CHECKSUM_KEYS = Set.new(
        Client.api.operation(:upload_part).input.shape.members.map do |n, s|
          n if s.location == 'header' && s.location_name.start_with?('x-amz-checksum-')
        end.compact
      )

      # @option options [Client] :client
      # @option options [Integer] :thread_count (THREAD_COUNT)
      def initialize(options = {})
        @client = options[:client] || Client.new
        @part_size = options[:part_size] || MIN_PART_SIZE
      end

      # @return [Client]
      attr_reader :client

      # @param [String, Pathname, File, Tempfile] source The file to upload.
      # @option options [required, String] :bucket The bucket to upload to.
      # @option options [required, String] :key The key for the object.
      # @option options [Proc] :progress_callback
      #   A Proc that will be called when each chunk of the upload is sent.
      #   It will be invoked with [bytes_read], [total_sizes]
      # @return [Seahorse::Client::Response] - the CompleteMultipartUploadResponse
      def upload(source, options = {})
        raise ArgumentError, 'unable to multipart upload files smaller than 5MB' if File.size(source) < @part_size

        upload_id = initiate_upload(options)
        parts = upload_parts(upload_id, source, options)
        complete_upload(upload_id, parts, options)
      end

      private

      def initiate_upload(options)
        @client.create_multipart_upload(create_opts(options)).upload_id
      end

      def complete_upload(upload_id, parts, options)
        @client.complete_multipart_upload(
          **complete_opts(options).merge(upload_id: upload_id, multipart_upload: { parts: parts })
        )
      end

      def upload_parts(upload_id, source, options)
        pending_parts = compute_parts(upload_id, source, options)
        completed = upload_in_tasks(pending_parts)
        completed.to_a.sort_by { |part| part[:part_number] }
      end

      def abort_upload(upload_id, options, errors)
        @client.abort_multipart_upload(
          bucket: options[:bucket],
          key: options[:key],
          upload_id: upload_id
        )
        msg = "multipart upload failed: #{errors.map(&:message).join('; ')}"
        raise MultipartUploadError.new(msg, errors)
      rescue MultipartUploadError => error
        raise error
      rescue => error
        msg = "failed to abort multipart upload: #{error.message}. "\
          "Multipart upload failed: #{errors.map(&:message).join('; ')}"
        raise MultipartUploadError.new(msg, errors + [error])
      end

      def compute_parts(upload_id, source, options)
        size = File.size(source)
        default_part_size = compute_default_part_size(size)
        offset = 0
        part_number = 1
        parts = []
        while offset < size
          parts << upload_part_opts(options).merge(
            upload_id: upload_id,
            part_number: part_number,
            body: FilePart.new(source: source, offset: offset, size: part_size(size, default_part_size, offset))
          )
          part_number += 1
          offset += default_part_size
        end
        parts
      end

      def checksum_key?(key)
        CHECKSUM_KEYS.include?(key)
      end

      def has_checksum_key?(keys)
        keys.any? { |key| checksum_key?(key) }
      end

      def create_opts(options)
        opts = { checksum_algorithm: Aws::Plugins::ChecksumAlgorithm::DEFAULT_CHECKSUM }
        opts[:checksum_type] = 'FULL_OBJECT' if has_checksum_key?(options.keys)
        CREATE_OPTIONS.each_with_object(opts) do |key, hash|
          hash[key] = options[key] if options.key?(key)
        end
      end

      def complete_opts(options)
        opts = {}
        opts[:checksum_type] = 'FULL_OBJECT' if has_checksum_key?(options.keys)
        COMPLETE_OPTIONS.each_with_object(opts) do |key, hash|
          hash[key] = options[key] if options.key?(key)
        end
      end

      def upload_part_opts(options)
        UPLOAD_PART_OPTIONS.each_with_object({}) do |key, hash|
          # don't pass through checksum calculations
          hash[key] = options[key] if options.key?(key) && !checksum_key?(key)
        end
      end

      def upload_in_tasks(pending)
        completed = []
        Async do
          pending.map do |part|
            Async do
              resp = @client.upload_part(part)
              part[:body].close
              completed_part = { etag: resp.etag, part_number: part[:part_number] }
              algorithm = resp.context.params[:checksum_algorithm]
              k = "checksum_#{algorithm.downcase}".to_sym
              completed_part[k] = resp.send(k)
              completed.push(completed_part)
            end
          end.map(&:wait)
        end
        completed
      end

      def compute_default_part_size(source_size)
        [(source_size.to_f / MAX_PARTS).ceil, @part_size].max.to_i
      end

      def part_size(total_size, part_size, offset)
        if offset + part_size > total_size
          total_size - offset
        else
          part_size
        end
      end

      # @api private
      class MultipartProgress
        def initialize(parts, progress_callback)
          @bytes_sent = Array.new(parts.size, 0)
          @total_sizes = parts.part_sizes
          @progress_callback = progress_callback
        end

        def call(part_number, bytes_read)
          # part numbers start at 1
          @bytes_sent[part_number - 1] = bytes_read
          @progress_callback.call(@bytes_sent, @total_sizes)
        end
      end
    end
  end
end