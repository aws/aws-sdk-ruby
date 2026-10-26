# frozen_string_literal: true

# This is generated code!

module Aws::S3
  # @api private
  module Paginators

    # @api private
    class ListBuckets
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
        data.buckets
      end
    end

    # @api private
    class ListDirectoryBuckets
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
        data.buckets
      end
    end

    # @api private
    class ListObjectAnnotations
      def next_tokens(data)
        next_token = data.next_continuation_token
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
        data.annotations
      end
    end

    # @api private
    class ListObjectsV2
      def next_tokens(data)
        next_token = data.next_continuation_token
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListParts
      def next_tokens(data)
        return {} unless data.is_truncated

        next_token = data.next_part_number_marker
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:part_number_marker] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:part_number_marker]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:part_number_marker] = prev_token
        tokens
      end

      def items(data)
        data.parts
      end
    end

  end
end
