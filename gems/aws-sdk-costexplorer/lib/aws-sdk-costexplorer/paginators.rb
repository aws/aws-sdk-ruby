# frozen_string_literal: true

# This is generated code!

module Aws::CostExplorer
  # @api private
  module Paginators

    # @api private
    class GetAnomalies
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.anomalies
      end
    end

    # @api private
    class GetAnomalyMonitors
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.anomaly_monitors
      end
    end

    # @api private
    class GetAnomalySubscriptions
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.anomaly_subscriptions
      end
    end

    # @api private
    class GetCostAndUsageComparisons
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.cost_and_usage_comparisons
      end
    end

    # @api private
    class GetCostComparisonDrivers
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.cost_comparison_drivers
      end
    end

    # @api private
    class GetReservationPurchaseRecommendation
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.recommendations
      end
    end

    # @api private
    class GetRightsizingRecommendation
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.rightsizing_recommendations
      end
    end

    # @api private
    class GetSavingsPlansCoverage
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
    class GetSavingsPlansUtilizationDetails
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
    class ListCommitmentPurchaseAnalyses
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.analysis_summary_list
      end
    end

    # @api private
    class ListCostAllocationTagBackfillHistory
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
        data.backfill_requests
      end
    end

    # @api private
    class ListCostAllocationTags
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
        data.cost_allocation_tags
      end
    end

    # @api private
    class ListCostCategoryDefinitions
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
        data.cost_category_references
      end
    end

    # @api private
    class ListCostCategoryResourceAssociations
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
        data.cost_category_resource_associations
      end
    end

    # @api private
    class ListSavingsPlansPurchaseRecommendationGeneration
      def next_tokens(data)
        next_token = data.next_page_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_page_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_page_token] = prev_token
        tokens
      end

      def items(data)
        data.generation_summary_list
      end
    end

  end
end
