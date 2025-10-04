# frozen_string_literal: true

# This is generated code!

module Aws::DynamoDB
  # @api private
  module Paginators

    # @api private
    class ListContributorInsights
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListExports
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListImports
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListTables
      def next_tokens(data)
        next_token = data.last_evaluated_table_name
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:exclusive_start_table_name] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:exclusive_start_table_name]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:exclusive_start_table_name] = prev_token
        tokens
      end

      def items(data)
        data.table_names
      end
    end

    # @api private
    class Query
      def next_tokens(data)
        next_token = data.last_evaluated_key
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:exclusive_start_key] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:exclusive_start_key]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:exclusive_start_key] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class Scan
      def next_tokens(data)
        next_token = data.last_evaluated_key
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:exclusive_start_key] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:exclusive_start_key]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:exclusive_start_key] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

  end
end
