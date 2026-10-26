# frozen_string_literal: true

# This is generated code!

module Aws::ResourceGroupsTaggingAPI
  # @api private
  module Paginators

    # @api private
    class GetComplianceSummary
      def next_tokens(data)
        next_token = data.pagination_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:pagination_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:pagination_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:pagination_token] = prev_token
        tokens
      end

      def items(data)
        data.summary_list
      end
    end

    # @api private
    class GetResources
      def next_tokens(data)
        next_token = data.pagination_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:pagination_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:pagination_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:pagination_token] = prev_token
        tokens
      end

      def items(data)
        data.resource_tag_mapping_list
      end
    end

    # @api private
    class GetTagKeys
      def next_tokens(data)
        next_token = data.pagination_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:pagination_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:pagination_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:pagination_token] = prev_token
        tokens
      end

      def items(data)
        data.tag_keys
      end
    end

    # @api private
    class GetTagValues
      def next_tokens(data)
        next_token = data.pagination_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:pagination_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:pagination_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:pagination_token] = prev_token
        tokens
      end

      def items(data)
        data.tag_values
      end
    end

    # @api private
    class ListRequiredTags
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
        data.required_tags
      end
    end

  end
end
