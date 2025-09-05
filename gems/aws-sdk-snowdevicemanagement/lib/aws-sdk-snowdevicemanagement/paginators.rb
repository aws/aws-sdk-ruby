# frozen_string_literal: true

# This is generated code!

module Aws::SnowDeviceManagement
  # @api private
  module Paginators

    # @api private
    class ListDeviceResources
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
        data.resources
      end
    end

    # @api private
    class ListDevices
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
        data.devices
      end
    end

    # @api private
    class ListExecutions
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
        data.executions
      end
    end

    # @api private
    class ListTasks
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
        data.tasks
      end
    end

  end
end
