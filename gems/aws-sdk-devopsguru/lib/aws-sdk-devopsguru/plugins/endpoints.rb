# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DevOpsGuru
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DevOpsGuru::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::DevOpsGuru::EndpointParameters`'
      ) do |cfg|
        Aws::DevOpsGuru::EndpointProvider.new
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
          when :add_notification_channel
            Aws::DevOpsGuru::Endpoints::AddNotificationChannel.build(context)
          when :delete_insight
            Aws::DevOpsGuru::Endpoints::DeleteInsight.build(context)
          when :describe_account_health
            Aws::DevOpsGuru::Endpoints::DescribeAccountHealth.build(context)
          when :describe_account_overview
            Aws::DevOpsGuru::Endpoints::DescribeAccountOverview.build(context)
          when :describe_anomaly
            Aws::DevOpsGuru::Endpoints::DescribeAnomaly.build(context)
          when :describe_event_sources_config
            Aws::DevOpsGuru::Endpoints::DescribeEventSourcesConfig.build(context)
          when :describe_feedback
            Aws::DevOpsGuru::Endpoints::DescribeFeedback.build(context)
          when :describe_insight
            Aws::DevOpsGuru::Endpoints::DescribeInsight.build(context)
          when :describe_organization_health
            Aws::DevOpsGuru::Endpoints::DescribeOrganizationHealth.build(context)
          when :describe_organization_overview
            Aws::DevOpsGuru::Endpoints::DescribeOrganizationOverview.build(context)
          when :describe_organization_resource_collection_health
            Aws::DevOpsGuru::Endpoints::DescribeOrganizationResourceCollectionHealth.build(context)
          when :describe_resource_collection_health
            Aws::DevOpsGuru::Endpoints::DescribeResourceCollectionHealth.build(context)
          when :describe_service_integration
            Aws::DevOpsGuru::Endpoints::DescribeServiceIntegration.build(context)
          when :get_cost_estimation
            Aws::DevOpsGuru::Endpoints::GetCostEstimation.build(context)
          when :get_resource_collection
            Aws::DevOpsGuru::Endpoints::GetResourceCollection.build(context)
          when :list_anomalies_for_insight
            Aws::DevOpsGuru::Endpoints::ListAnomaliesForInsight.build(context)
          when :list_anomalous_log_groups
            Aws::DevOpsGuru::Endpoints::ListAnomalousLogGroups.build(context)
          when :list_events
            Aws::DevOpsGuru::Endpoints::ListEvents.build(context)
          when :list_insights
            Aws::DevOpsGuru::Endpoints::ListInsights.build(context)
          when :list_monitored_resources
            Aws::DevOpsGuru::Endpoints::ListMonitoredResources.build(context)
          when :list_notification_channels
            Aws::DevOpsGuru::Endpoints::ListNotificationChannels.build(context)
          when :list_organization_insights
            Aws::DevOpsGuru::Endpoints::ListOrganizationInsights.build(context)
          when :list_recommendations
            Aws::DevOpsGuru::Endpoints::ListRecommendations.build(context)
          when :put_feedback
            Aws::DevOpsGuru::Endpoints::PutFeedback.build(context)
          when :remove_notification_channel
            Aws::DevOpsGuru::Endpoints::RemoveNotificationChannel.build(context)
          when :search_insights
            Aws::DevOpsGuru::Endpoints::SearchInsights.build(context)
          when :search_organization_insights
            Aws::DevOpsGuru::Endpoints::SearchOrganizationInsights.build(context)
          when :start_cost_estimation
            Aws::DevOpsGuru::Endpoints::StartCostEstimation.build(context)
          when :update_event_sources_config
            Aws::DevOpsGuru::Endpoints::UpdateEventSourcesConfig.build(context)
          when :update_resource_collection
            Aws::DevOpsGuru::Endpoints::UpdateResourceCollection.build(context)
          when :update_service_integration
            Aws::DevOpsGuru::Endpoints::UpdateServiceIntegration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
