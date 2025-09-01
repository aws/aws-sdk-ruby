# frozen_string_literal: true

# This is generated code!

module Aws::CloudFront
  # @api private
  module Paginators

    # @api private
    class ListCloudFrontOriginAccessIdentities
      def next_tokens(data)
        next_token = data.cloud_front_origin_access_identity_list.next_marker
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
        data.cloud_front_origin_access_identity_list.items
      end
    end

    # @api private
    class ListConnectionGroups
      def next_tokens(data)
        next_token = data.next_marker
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
        data.connection_groups
      end
    end

    # @api private
    class ListDistributionTenants
      def next_tokens(data)
        next_token = data.next_marker
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
        data.distribution_tenant_list
      end
    end

    # @api private
    class ListDistributionTenantsByCustomization
      def next_tokens(data)
        next_token = data.next_marker
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
        data.distribution_tenant_list
      end
    end

    # @api private
    class ListDistributions
      def next_tokens(data)
        next_token = data.distribution_list.next_marker
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
        data.distribution_list.items
      end
    end

    # @api private
    class ListDistributionsByConnectionMode
      def next_tokens(data)
        next_token = data.distribution_list.next_marker
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
        data.distribution_list.items
      end
    end

    # @api private
    class ListDomainConflicts
      def next_tokens(data)
        next_token = data.next_marker
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
        data.domain_conflicts
      end
    end

    # @api private
    class ListInvalidations
      def next_tokens(data)
        next_token = data.invalidation_list.next_marker
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
        data.invalidation_list.items
      end
    end

    # @api private
    class ListInvalidationsForDistributionTenant
      def next_tokens(data)
        next_token = data.invalidation_list.next_marker
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
        data.invalidation_list.items
      end
    end

    # @api private
    class ListKeyValueStores
      def next_tokens(data)
        next_token = data.key_value_store_list.next_marker
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
        data.key_value_store_list.items
      end
    end

    # @api private
    class ListOriginAccessControls
      def next_tokens(data)
        next_token = data.origin_access_control_list.next_marker
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
        data.origin_access_control_list.items
      end
    end

    # @api private
    class ListPublicKeys
      def next_tokens(data)
        next_token = data.public_key_list.next_marker
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
        data.public_key_list.items
      end
    end

    # @api private
    class ListStreamingDistributions
      def next_tokens(data)
        next_token = data.streaming_distribution_list.next_marker
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
        data.streaming_distribution_list.items
      end
    end

  end
end
