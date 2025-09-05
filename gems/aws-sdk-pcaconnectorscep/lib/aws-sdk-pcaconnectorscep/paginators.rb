# frozen_string_literal: true

# This is generated code!

module Aws::PcaConnectorScep
  # @api private
  module Paginators

    # @api private
    class ListChallengeMetadata
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        data.challenges
      end
    end

    # @api private
    class ListConnectors
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        data.connectors
      end
    end

  end
end
