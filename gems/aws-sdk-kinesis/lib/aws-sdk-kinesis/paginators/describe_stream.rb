# frozen_string_literal: true

# Hand-written paginator for Kinesis::DescribeStream.
# This operation cannot be modeled with Smithy's @paginated trait because:
# - The next token is derived from array indexing (StreamDescription.Shards[-1].ShardId)
# - Termination relies on a nested boolean (StreamDescription.HasMoreShards)

module Aws
  module Kinesis
    module Paginators
      # @api private
      class DescribeStream
        def next_tokens(data) # rubocop:disable Metrics/CyclomaticComplexity
          return {} unless data.stream_description&.has_more_shards

          shards = data.stream_description&.shards
          next_token = shards&.last&.shard_id
          return {} if next_token.nil? || next_token.empty?

          { exclusive_start_shard_id: next_token }
        end

        def prev_tokens(params)
          prev_token = params[:exclusive_start_shard_id]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = {}
          tokens[:exclusive_start_shard_id] = prev_token
          tokens
        end

        def items(data)
          data.stream_description&.shards
        end
      end
    end
  end
end
