# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::XRay
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::XRay::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::XRay::EndpointParameters`'
      ) do |cfg|
        Aws::XRay::EndpointProvider.new
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
          when :batch_get_traces
            Aws::XRay::Endpoints::BatchGetTraces.build(context)
          when :create_group
            Aws::XRay::Endpoints::CreateGroup.build(context)
          when :create_sampling_rule
            Aws::XRay::Endpoints::CreateSamplingRule.build(context)
          when :delete_group
            Aws::XRay::Endpoints::DeleteGroup.build(context)
          when :delete_resource_policy
            Aws::XRay::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_sampling_rule
            Aws::XRay::Endpoints::DeleteSamplingRule.build(context)
          when :get_encryption_config
            Aws::XRay::Endpoints::GetEncryptionConfig.build(context)
          when :get_group
            Aws::XRay::Endpoints::GetGroup.build(context)
          when :get_groups
            Aws::XRay::Endpoints::GetGroups.build(context)
          when :get_insight
            Aws::XRay::Endpoints::GetInsight.build(context)
          when :get_insight_events
            Aws::XRay::Endpoints::GetInsightEvents.build(context)
          when :get_insight_impact_graph
            Aws::XRay::Endpoints::GetInsightImpactGraph.build(context)
          when :get_insight_summaries
            Aws::XRay::Endpoints::GetInsightSummaries.build(context)
          when :get_sampling_rules
            Aws::XRay::Endpoints::GetSamplingRules.build(context)
          when :get_sampling_statistic_summaries
            Aws::XRay::Endpoints::GetSamplingStatisticSummaries.build(context)
          when :get_sampling_targets
            Aws::XRay::Endpoints::GetSamplingTargets.build(context)
          when :get_service_graph
            Aws::XRay::Endpoints::GetServiceGraph.build(context)
          when :get_time_series_service_statistics
            Aws::XRay::Endpoints::GetTimeSeriesServiceStatistics.build(context)
          when :get_trace_graph
            Aws::XRay::Endpoints::GetTraceGraph.build(context)
          when :get_trace_summaries
            Aws::XRay::Endpoints::GetTraceSummaries.build(context)
          when :list_resource_policies
            Aws::XRay::Endpoints::ListResourcePolicies.build(context)
          when :list_tags_for_resource
            Aws::XRay::Endpoints::ListTagsForResource.build(context)
          when :put_encryption_config
            Aws::XRay::Endpoints::PutEncryptionConfig.build(context)
          when :put_resource_policy
            Aws::XRay::Endpoints::PutResourcePolicy.build(context)
          when :put_telemetry_records
            Aws::XRay::Endpoints::PutTelemetryRecords.build(context)
          when :put_trace_segments
            Aws::XRay::Endpoints::PutTraceSegments.build(context)
          when :tag_resource
            Aws::XRay::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::XRay::Endpoints::UntagResource.build(context)
          when :update_group
            Aws::XRay::Endpoints::UpdateGroup.build(context)
          when :update_sampling_rule
            Aws::XRay::Endpoints::UpdateSamplingRule.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
