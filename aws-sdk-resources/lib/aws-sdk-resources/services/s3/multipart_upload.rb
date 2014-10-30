module Aws
  module S3
    class MultipartUpload

      alias_method :basic_complete, :complete

      # Completes the MultipartUpload.
      #
      # To complete a multipart upload, a list of part numbers and their
      # ETags is required.
      #
      #     upload.complete(multipart_upload: { parts: part_list })
      #
      # You can pass `:compute_parts => true` and the {Client#list_parts}
      # method will be called to generate the part list.
      #
      #     upload.complete(compute_parts: true)
      #
      # @option options [Boolean] :compute_parts (false) When `true`,
      #   the {Client#list_parts} method will be called to determine
      #   the list of required part numbers and their ETags.
      #
      def complete(options = {})
        if options.delete(:compute_parts)
          options[:multipart_upload] = { parts: compute_parts }
        end
        basic_complete(options)
      end

      private

      def compute_parts
        parts.sort_by(&:part_number).each.with_object([]) do |part, part_list|
          part_list << { part_number: part.part_number, etag: part.etag }
        end
      end

    end
  end
end
