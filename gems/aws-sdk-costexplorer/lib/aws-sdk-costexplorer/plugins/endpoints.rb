# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CostExplorer
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CostExplorer::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CostExplorer::EndpointParameters`'
      ) do |cfg|
        Aws::CostExplorer::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :create_anomaly_monitor
            Aws::CostExplorer::Endpoints::CreateAnomalyMonitor.build(context)
          when :create_anomaly_subscription
            Aws::CostExplorer::Endpoints::CreateAnomalySubscription.build(context)
          when :create_cost_category_definition
            Aws::CostExplorer::Endpoints::CreateCostCategoryDefinition.build(context)
          when :delete_anomaly_monitor
            Aws::CostExplorer::Endpoints::DeleteAnomalyMonitor.build(context)
          when :delete_anomaly_subscription
            Aws::CostExplorer::Endpoints::DeleteAnomalySubscription.build(context)
          when :delete_cost_category_definition
            Aws::CostExplorer::Endpoints::DeleteCostCategoryDefinition.build(context)
          when :describe_cost_category_definition
            Aws::CostExplorer::Endpoints::DescribeCostCategoryDefinition.build(context)
          when :get_anomalies
            Aws::CostExplorer::Endpoints::GetAnomalies.build(context)
          when :get_anomaly_monitors
            Aws::CostExplorer::Endpoints::GetAnomalyMonitors.build(context)
          when :get_anomaly_subscriptions
            Aws::CostExplorer::Endpoints::GetAnomalySubscriptions.build(context)
          when :get_cost_and_usage
            Aws::CostExplorer::Endpoints::GetCostAndUsage.build(context)
          when :get_cost_and_usage_with_resources
            Aws::CostExplorer::Endpoints::GetCostAndUsageWithResources.build(context)
          when :get_cost_categories
            Aws::CostExplorer::Endpoints::GetCostCategories.build(context)
          when :get_cost_forecast
            Aws::CostExplorer::Endpoints::GetCostForecast.build(context)
          when :get_dimension_values
            Aws::CostExplorer::Endpoints::GetDimensionValues.build(context)
          when :get_reservation_coverage
            Aws::CostExplorer::Endpoints::GetReservationCoverage.build(context)
          when :get_reservation_purchase_recommendation
            Aws::CostExplorer::Endpoints::GetReservationPurchaseRecommendation.build(context)
          when :get_reservation_utilization
            Aws::CostExplorer::Endpoints::GetReservationUtilization.build(context)
          when :get_rightsizing_recommendation
            Aws::CostExplorer::Endpoints::GetRightsizingRecommendation.build(context)
          when :get_savings_plans_coverage
            Aws::CostExplorer::Endpoints::GetSavingsPlansCoverage.build(context)
          when :get_savings_plans_purchase_recommendation
            Aws::CostExplorer::Endpoints::GetSavingsPlansPurchaseRecommendation.build(context)
          when :get_savings_plans_utilization
            Aws::CostExplorer::Endpoints::GetSavingsPlansUtilization.build(context)
          when :get_savings_plans_utilization_details
            Aws::CostExplorer::Endpoints::GetSavingsPlansUtilizationDetails.build(context)
          when :get_tags
            Aws::CostExplorer::Endpoints::GetTags.build(context)
          when :get_usage_forecast
            Aws::CostExplorer::Endpoints::GetUsageForecast.build(context)
          when :list_cost_allocation_tags
            Aws::CostExplorer::Endpoints::ListCostAllocationTags.build(context)
          when :list_cost_category_definitions
            Aws::CostExplorer::Endpoints::ListCostCategoryDefinitions.build(context)
          when :list_savings_plans_purchase_recommendation_generation
            Aws::CostExplorer::Endpoints::ListSavingsPlansPurchaseRecommendationGeneration.build(context)
          when :list_tags_for_resource
            Aws::CostExplorer::Endpoints::ListTagsForResource.build(context)
          when :provide_anomaly_feedback
            Aws::CostExplorer::Endpoints::ProvideAnomalyFeedback.build(context)
          when :start_savings_plans_purchase_recommendation_generation
            Aws::CostExplorer::Endpoints::StartSavingsPlansPurchaseRecommendationGeneration.build(context)
          when :tag_resource
            Aws::CostExplorer::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CostExplorer::Endpoints::UntagResource.build(context)
          when :update_anomaly_monitor
            Aws::CostExplorer::Endpoints::UpdateAnomalyMonitor.build(context)
          when :update_anomaly_subscription
            Aws::CostExplorer::Endpoints::UpdateAnomalySubscription.build(context)
          when :update_cost_allocation_tags_status
            Aws::CostExplorer::Endpoints::UpdateCostAllocationTagsStatus.build(context)
          when :update_cost_category_definition
            Aws::CostExplorer::Endpoints::UpdateCostCategoryDefinition.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
