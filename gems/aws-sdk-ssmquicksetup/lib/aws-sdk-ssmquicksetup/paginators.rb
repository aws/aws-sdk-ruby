# frozen_string_literal: true

# This is generated code!

module Aws::SSMQuickSetup
  # @api private
  module Paginators

    # @api private
    class ListConfigurationManagers
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:starting_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = prev_token
        tokens
      end

      def items(data)
        data.configuration_managers_list
      end
    end

    # @api private
    class ListConfigurations
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:starting_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = prev_token
        tokens
      end

      def items(data)
        data.configurations_list
      end
    end

  end
end
