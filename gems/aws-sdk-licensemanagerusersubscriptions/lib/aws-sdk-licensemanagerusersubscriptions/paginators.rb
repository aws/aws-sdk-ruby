# frozen_string_literal: true

# This is generated code!

module Aws::LicenseManagerUserSubscriptions
  # @api private
  module Paginators

    # @api private
    class ListIdentityProviders
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
        data.identity_provider_summaries
      end
    end

    # @api private
    class ListInstances
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
        data.instance_summaries
      end
    end

    # @api private
    class ListLicenseServerEndpoints
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
        data.license_server_endpoints
      end
    end

    # @api private
    class ListProductSubscriptions
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
        data.product_user_summaries
      end
    end

    # @api private
    class ListUserAssociations
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
        data.instance_user_summaries
      end
    end

  end
end
