# frozen_string_literal: true

# Hand-written paginator for S3::ListObjects.
# This operation cannot be modeled with Smithy's @paginated trait because:
# - The next token requires fallback logic (NextMarker || Contents[-1].Key)
# - Termination relies on the IsTruncated boolean rather than token absence

module Aws
  module S3
    module Paginators
      # @api private
      class ListObjects
        def next_tokens(data)
          return {} unless data.is_truncated

          next_token = data.next_marker || data.contents&.last&.key
          return {} if next_token.nil? || next_token.empty?

          tokens = {}
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = {}
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.contents
        end
      end
    end
  end
end
