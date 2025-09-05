# frozen_string_literal: true

# This is generated code!

module Aws::ServiceCatalog
  # @api private
  module Paginators

    # @api private
    class DescribePortfolioShares
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetProvisionedProductOutputs
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListAcceptedPortfolioShares
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListBudgetsForResource
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListConstraintsForPortfolio
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListLaunchPaths
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListOrganizationPortfolioAccess
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListPortfolioAccess
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListPortfolios
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListPortfoliosForProduct
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListPrincipalsForPortfolio
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListProvisioningArtifactsForServiceAction
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListResourcesForTagOption
      def next_tokens(data)
        next_token = data.page_token
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListServiceActions
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListServiceActionsForProvisioningArtifact
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class ListTagOptions
      def next_tokens(data)
        next_token = data.page_token
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class SearchProducts
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class SearchProductsAsAdmin
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class SearchProvisionedProducts
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

  end
end
