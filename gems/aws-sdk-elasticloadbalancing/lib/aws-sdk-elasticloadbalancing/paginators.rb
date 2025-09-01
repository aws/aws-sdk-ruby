# frozen_string_literal: true

# This is generated code!

module Aws::ElasticLoadBalancing
  # @api private
  module Paginators

    # @api private
    class DescribeLoadBalancers
      def next_tokens(data)
        next_token = data.next_marker
        return {} if next_token.nil? || next_token.empty?
        
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:marker]
        return {} if prev_token.nil? || prev_token.empty?
        
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:marker] = prev_token
        tokens
      end

      def items(data)
        data.load_balancer_descriptions
      end
    end

  end
end
