# frozen_string_literal: true

# This is generated code!

module Aws::S3Tables
  # @api private
  module Paginators

    # @api private
    class ListNamespaces
      def next_tokens(data)
        next_token = data.continuation_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:continuation_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:continuation_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:continuation_token] = prev_token
        tokens
      end

      def items(data)
        data.namespaces
      end
    end

    # @api private
    class ListTableBuckets
      def next_tokens(data)
        next_token = data.continuation_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:continuation_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:continuation_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:continuation_token] = prev_token
        tokens
      end

      def items(data)
        data.table_buckets
      end
    end

    # @api private
    class ListTables
      def next_tokens(data)
        next_token = data.continuation_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:continuation_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:continuation_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:continuation_token] = prev_token
        tokens
      end

      def items(data)
        data.tables
      end
    end

  end
end
