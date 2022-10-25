# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudWatchRUM
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudWatchRUM::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudWatchRUM::EndpointParameters`'
      ) do |cfg|
        Aws::CloudWatchRUM::EndpointProvider.new
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
          when :batch_create_rum_metric_definitions
            Aws::CloudWatchRUM::Endpoints::BatchCreateRumMetricDefinitions.build(context)
          when :batch_delete_rum_metric_definitions
            Aws::CloudWatchRUM::Endpoints::BatchDeleteRumMetricDefinitions.build(context)
          when :batch_get_rum_metric_definitions
            Aws::CloudWatchRUM::Endpoints::BatchGetRumMetricDefinitions.build(context)
          when :create_app_monitor
            Aws::CloudWatchRUM::Endpoints::CreateAppMonitor.build(context)
          when :delete_app_monitor
            Aws::CloudWatchRUM::Endpoints::DeleteAppMonitor.build(context)
          when :delete_rum_metrics_destination
            Aws::CloudWatchRUM::Endpoints::DeleteRumMetricsDestination.build(context)
          when :get_app_monitor
            Aws::CloudWatchRUM::Endpoints::GetAppMonitor.build(context)
          when :get_app_monitor_data
            Aws::CloudWatchRUM::Endpoints::GetAppMonitorData.build(context)
          when :list_app_monitors
            Aws::CloudWatchRUM::Endpoints::ListAppMonitors.build(context)
          when :list_rum_metrics_destinations
            Aws::CloudWatchRUM::Endpoints::ListRumMetricsDestinations.build(context)
          when :list_tags_for_resource
            Aws::CloudWatchRUM::Endpoints::ListTagsForResource.build(context)
          when :put_rum_events
            Aws::CloudWatchRUM::Endpoints::PutRumEvents.build(context)
          when :put_rum_metrics_destination
            Aws::CloudWatchRUM::Endpoints::PutRumMetricsDestination.build(context)
          when :tag_resource
            Aws::CloudWatchRUM::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CloudWatchRUM::Endpoints::UntagResource.build(context)
          when :update_app_monitor
            Aws::CloudWatchRUM::Endpoints::UpdateAppMonitor.build(context)
          when :update_rum_metric_definition
            Aws::CloudWatchRUM::Endpoints::UpdateRumMetricDefinition.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
