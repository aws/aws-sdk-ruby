# frozen_string_literal: true

# This is generated code!

module Aws::Glacier
  # @api private
  module Paginators

    # @api private
    class ListJobs
      def next_tokens(data)
        next_token = data.marker
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
        data.job_list
      end
    end

    # @api private
    class ListMultipartUploads
      def next_tokens(data)
        next_token = data.marker
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
        data.uploads_list
      end
    end

    # @api private
    class ListParts
      def next_tokens(data)
        next_token = data.marker
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
        data.parts
      end
    end

    # @api private
    class ListVaults
      def next_tokens(data)
        next_token = data.marker
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
        data.vault_list
      end
    end

  end
end
