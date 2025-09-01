# frozen_string_literal: true

# This is generated code!

module Aws::ElasticTranscoder
  # @api private
  module Paginators

    # @api private
    class ListJobsByPipeline
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?
        
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:page_token]
        return {} if prev_token.nil? || prev_token.empty?
        
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:page_token] = prev_token
        tokens
      end

      def items(data)
        data.jobs
      end
    end

    # @api private
    class ListJobsByStatus
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?
        
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:page_token]
        return {} if prev_token.nil? || prev_token.empty?
        
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:page_token] = prev_token
        tokens
      end

      def items(data)
        data.jobs
      end
    end

    # @api private
    class ListPipelines
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?
        
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:page_token]
        return {} if prev_token.nil? || prev_token.empty?
        
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:page_token] = prev_token
        tokens
      end

      def items(data)
        data.pipelines
      end
    end

    # @api private
    class ListPresets
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?
        
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:page_token]
        return {} if prev_token.nil? || prev_token.empty?
        
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:page_token] = prev_token
        tokens
      end

      def items(data)
        data.presets
      end
    end

  end
end
