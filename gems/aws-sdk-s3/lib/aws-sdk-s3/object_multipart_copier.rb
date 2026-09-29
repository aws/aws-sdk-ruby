# frozen_string_literal: true

require 'cgi/escape'
require 'cgi/util' if RUBY_VERSION < '3.5'
require 'set'

module Aws
  module S3
    # @api private
    class ObjectMultipartCopier # rubocop:disable Metrics/ClassLength
      MIN_PART_SIZE = 5 * 1024 * 1024 # 5MB
      MAX_PARTS = 10_000

      API_OPTIONS = {
        create_multipart_upload: Set.new(Client.api.operation(:create_multipart_upload).input.shape.member_names),
        upload_part_copy: Set.new(Client.api.operation(:upload_part_copy).input.shape.member_names),
        complete_multipart_upload: Set.new(Client.api.operation(:complete_multipart_upload).input.shape.member_names)
      }.freeze

      # @option options [Client] :client
      # @option options [Integer] :min_part_size (52428800)
      #   Size of copied parts. Defaults to 50MB.
      # @option options [Integer] :thread_count (10) Number of concurrent
      #   threads to use for copying parts.
      # @option options [Boolean] :use_source_parts (false) Use part sizes
      #   defined on the source object if any exist. If copying or moving an
      #   object that is already multipart, this does not re-part the object,
      #   instead re-using the part definitions on the original. That means
      #   the etag and any checksums will not change. This is especially
      #   useful if the source object has parts with varied sizes.
      def initialize(options = {})
        @use_source_parts = options.delete(:use_source_parts) || false
        @thread_count = options.delete(:thread_count) || 10
        @min_part_size = options.delete(:min_part_size) || (MIN_PART_SIZE * 10)
        @client = options[:client] || Client.new
        @source_client = nil
        @source = nil
        @source_etag = nil
        @source_parts_count = nil
        @first_part_size = nil
      end

      # @return [Client]
      attr_reader :client

      # @option (see S3::Client#copy_object)
      def copy(options = {}) # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
        @source_client = options[:copy_source_client] || @client
        @source = resolve_source(options[:copy_source])
        metadata = resolve_metadata(options)
        size = metadata[:content_length]
        @source_etag = metadata[:etag]
        @source[:version_id] ||= metadata[:version_id]
        resolve_source_parts
        tag_set = resolve_tags(options)
        annotations = resolve_annotations(options)

        create_opts = resolve_create_opts(metadata, options)
        options[:upload_id] = initiate_upload(create_opts)

        begin
          parts = copy_parts(size, default_part_size(size), options)
          resp = complete_upload(parts, options)
        rescue StandardError => e
          abort_upload(options)
          raise e
        end

        put_tags(tag_set, resp, options) if tag_set
        put_annotations(annotations, resp, options) if annotations&.any?
        resp
      end

      private

      def resolve_source(copy_source)
        bucket, remaining = copy_source.split('/', 2)
        key, version_id = remaining.split('?versionId=', 2)
        result = { bucket: bucket, key: CGI.unescape(key) }
        result[:version_id] = version_id if version_id
        result
      end

      def resolve_metadata(options)
        return options.slice(:content_length) if options[:content_length]

        resp = @source_client.head_object(@source).to_h
        resp.delete(:server_side_encryption)
        resp.delete(:ssekms_key_id)
        resp
      end

      def resolve_source_parts
        return unless @use_source_parts

        resp = @source_client.head_object(@source.merge(part_number: 1))
        @source_parts_count = resp.parts_count
        @first_part_size = resp.content_length if @source_parts_count
      end

      def resolve_create_opts(metadata, options)
        return options if options[:metadata_directive] == 'REPLACE'

        create_opts = metadata.merge(options)
        create_opts.delete(:tagging) if options[:tags_directive]
        create_opts
      end

      def resolve_tags(options) # rubocop:disable Metrics/MethodLength
        return unless options[:tags_directive]

        case options[:tags_directive]
        when 'COPY'
          resp = @source_client.get_object_tagging(@source)
          resp.tag_set
        when 'REPLACE'
          tagging = options[:tagging]
          return if tagging.nil? || tagging.empty?

          tagging.split('&').map do |pair|
            k, v = pair.split('=', 2)
            { key: CGI.unescape(k), value: CGI.unescape(v) }
          end
        end
      end

      def resolve_annotations(options) # rubocop:disable Metrics/MethodLength
        return unless options[:annotations_directive] == 'COPY'

        list_resp = @source_client.list_object_annotations(@source)
        return if list_resp.annotations.empty?

        list_resp.annotations.map do |annotation|
          {
            name: annotation.annotation_name,
            payload: @source_client.get_object_annotation(
              @source.merge(annotation_name: annotation.annotation_name)
            ).annotation_payload
          }
        end
      end

      def initiate_upload(options)
        options = options_for(:create_multipart_upload, options)
        @client.create_multipart_upload(options).upload_id
      end

      def copy_parts(size, default_part_size, options)
        queue = PartQueue.new(compute_parts(size, default_part_size, options))
        threads = []
        @thread_count.times do
          threads << copy_part_thread(queue)
        end
        threads.map(&:value).flatten.sort_by { |part| part[:part_number] }
      end

      def copy_part_thread(queue) # rubocop:disable Metrics/MethodLength
        Thread.new do
          begin # rubocop:disable Style/RedundantBegin
            completed = []
            while (part = queue.shift)
              completed << copy_part(part)
            end
            completed
          rescue StandardError => e
            queue.clear!
            raise e
          end
        end
      end

      def copy_part(part)
        @client.upload_part_copy(part)
               .copy_part_result
               .to_h
               .merge({ part_number: part[:part_number] })
               .tap { |result| result.delete(:last_modified) }
      end

      def complete_upload(parts, options)
        options = options_for(:complete_multipart_upload, options)
        options[:multipart_upload] = { parts: parts }
        @client.complete_multipart_upload(options)
      end

      def abort_upload(options)
        @client.abort_multipart_upload(
          {
            bucket: options[:bucket],
            key: options[:key],
            upload_id: options[:upload_id]
          }
        )
      end

      def compute_parts(size, default_part_size, options) # rubocop:disable Metrics/MethodLength
        part_number = 1
        offset = 0
        parts = []
        options = options_for(:upload_part_copy, options)
        options[:copy_source_if_match] = @source_etag if @source_etag
        while offset < size
          part_size = calculate_part_size(part_number, default_part_size, options)
          parts << options.merge({ part_number: part_number, copy_source_range: byte_range(offset, part_size, size) })
          part_number += 1
          offset += part_size
        end
        parts
      end

      def calculate_part_size(part_number, default_part_size, _options)
        if @source_parts_count
          resolve_part_size(part_number)
        else
          default_part_size
        end
      end

      def resolve_part_size(part_number)
        return @first_part_size if part_number == 1 && @first_part_size

        @source_client.head_object(@source.merge(part_number: part_number)).content_length
      end

      def byte_range(offset, part_size, size)
        if offset + part_size < size
          "bytes=#{offset}-#{offset + part_size - 1}"
        else
          "bytes=#{offset}-#{size - 1}"
        end
      end

      def default_part_size(source_size)
        raise ArgumentError, 'unable to multipart copy files smaller than 5MB' if source_size < MIN_PART_SIZE

        [(source_size.to_f / MAX_PARTS).ceil, @min_part_size].max.to_i
      end

      def put_tags(tags, resp, options)
        @client.put_object_tagging(
          bucket: options[:bucket],
          key: options[:key],
          tagging: { tag_set: tags },
          version_id: resp.version_id
        )
      rescue StandardError => e
        raise StandardError,
              'Object data copied successfully. ' \
              "Failed to copy tags: #{e.message}"
      end

      def put_annotations(annotations, response, options) # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
        succeeded = []
        failed = []

        annotations.each do |annotation|
          @client.put_object_annotation(
            bucket: options[:bucket],
            key: options[:key],
            version_id: response.version_id,
            object_if_match: response.etag,
            annotation_name: annotation[:name],
            annotation_payload: annotation[:payload]
          )
          succeeded << annotation[:name]
        rescue StandardError => e
          failed << { key: annotation[:name], error: e }
        end
        return if failed.empty?

        raise StandardError,
              'Object data copied successfully. Failed to copy annotations: ' \
              "#{failed.map { |f| "#{f[:key]} (#{f[:error].message})" }.join(', ')}. " \
              "Succeeded: #{succeeded.join(', ')}"
      end

      def options_for(operation_name, options)
        API_OPTIONS[operation_name].each_with_object({}) do |opt_name, hash|
          hash[opt_name] = options[opt_name] if options.key?(opt_name)
        end
      end

      # A thread-safe work queue of part definitions for a multipart copy.
      class PartQueue
        def initialize(parts = [])
          @parts = parts
          @mutex = Mutex.new
        end

        def shift
          @mutex.synchronize { @parts.shift }
        end

        def clear!
          @mutex.synchronize { @parts.clear }
        end
      end
    end
  end
end
