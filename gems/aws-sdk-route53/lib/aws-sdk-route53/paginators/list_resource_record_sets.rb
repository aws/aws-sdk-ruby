# frozen_string_literal: true

# Hand-written paginator for Route53::ListResourceRecordSets.
# This operation cannot be modeled with Smithy's @paginated trait because:
# - It uses a compound cursor (StartRecordName, StartRecordType, StartRecordIdentifier)
# - Termination relies on the IsTruncated boolean rather than token absence

module Aws
  module Route53
    module Paginators
      # @api private
      class ListResourceRecordSets
        def next_tokens(data)
          return {} unless data.is_truncated

          tokens = {}
          set_token(tokens, :start_record_name, data.next_record_name)
          set_token(tokens, :start_record_type, data.next_record_type)
          set_token(tokens, :start_record_identifier, data.next_record_identifier)
          tokens
        end

        def prev_tokens(params)
          tokens = {}
          set_token(tokens, :start_record_name, params[:start_record_name])
          set_token(tokens, :start_record_type, params[:start_record_type])
          set_token(tokens, :start_record_identifier, params[:start_record_identifier])
          tokens
        end

        def items(data)
          data.resource_record_sets
        end

        private

        def set_token(tokens, key, value)
          tokens[key] = value unless value.nil? || value.to_s.empty?
        end
      end
    end
  end
end
