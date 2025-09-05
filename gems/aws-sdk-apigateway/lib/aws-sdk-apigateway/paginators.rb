# frozen_string_literal: true

# This is generated code!

module Aws::APIGateway
  # @api private
  module Paginators

    # @api private
    class GetApiKeys
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class GetBasePathMappings
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class GetClientCertificates
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class GetDeployments
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class GetDomainNames
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class GetModels
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class GetResources
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class GetRestApis
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class GetUsage
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class GetUsagePlanKeys
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class GetUsagePlans
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class GetVpcLinks
      def next_tokens(data)
        next_token = data.position
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:position]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:position] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

  end
end
