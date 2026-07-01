# frozen_string_literal: true

# Hand-written paginator for S3::ListObjectVersions.
# This operation cannot be modeled with Smithy's @paginated trait because:
# - It uses a compound cursor (KeyMarker + VersionIdMarker) requiring multiple tokens
# - Termination relies on the IsTruncated boolean rather than token absence

module Aws
  module S3
    module Paginators
      # @api private
      class ListObjectVersions
        def next_tokens(data)
          return {} unless data.is_truncated

          tokens = {}
          tokens[:key_marker] = data.next_key_marker unless data.next_key_marker.nil? || data.next_key_marker.empty?
          unless data.next_version_id_marker.nil? || data.next_version_id_marker.empty?
            tokens[:version_id_marker] = data.next_version_id_marker
          end
          tokens
        end

        def prev_tokens(params)
          tokens = {}
          tokens[:key_marker] = params[:key_marker] unless params[:key_marker].nil? || params[:key_marker].to_s.empty?
          unless params[:version_id_marker].nil? || params[:version_id_marker].to_s.empty?
            tokens[:version_id_marker] = params[:version_id_marker]
          end
          tokens
        end

        def items(data)
          data.versions
        end
      end
    end
  end
end
