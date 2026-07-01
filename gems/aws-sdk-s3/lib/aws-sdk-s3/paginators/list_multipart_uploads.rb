# frozen_string_literal: true

# Hand-written paginator for S3::ListMultipartUploads.
# This operation cannot be modeled with Smithy's @paginated trait because:
# - It uses a compound cursor (KeyMarker + UploadIdMarker) requiring multiple tokens
# - Termination relies on the IsTruncated boolean rather than token absence

module Aws
  module S3
    module Paginators
      # @api private
      class ListMultipartUploads
        def next_tokens(data)
          return {} unless data.is_truncated

          tokens = {}
          tokens[:key_marker] = data.next_key_marker unless data.next_key_marker.nil? || data.next_key_marker.empty?
          unless data.next_upload_id_marker.nil? || data.next_upload_id_marker.empty?
            tokens[:upload_id_marker] = data.next_upload_id_marker
          end
          tokens
        end

        def prev_tokens(params)
          tokens = {}
          tokens[:key_marker] = params[:key_marker] unless params[:key_marker].nil? || params[:key_marker].to_s.empty?
          unless params[:upload_id_marker].nil? || params[:upload_id_marker].to_s.empty?
            tokens[:upload_id_marker] = params[:upload_id_marker]
          end
          tokens
        end

        def items(data)
          data.uploads
        end
      end
    end
  end
end
