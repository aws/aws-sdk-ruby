# frozen_string_literal: true

# This is generated code!

module Aws::SWF
  # @api private
  module Paginators

    # @api private
    class GetWorkflowExecutionHistory
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.events
      end
    end

    # @api private
    class ListActivityTypes
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.type_infos
      end
    end

    # @api private
    class ListClosedWorkflowExecutions
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.execution_infos
      end
    end

    # @api private
    class ListDomains
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.domain_infos
      end
    end

    # @api private
    class ListOpenWorkflowExecutions
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.execution_infos
      end
    end

    # @api private
    class ListWorkflowTypes
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.type_infos
      end
    end

    # @api private
    class PollForDecisionTask
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.events
      end
    end

  end
end
