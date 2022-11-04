# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LookoutMetrics
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::LookoutMetrics::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::LookoutMetrics::EndpointParameters`'
      ) do |cfg|
        Aws::LookoutMetrics::EndpointProvider.new
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
          when :activate_anomaly_detector
            Aws::LookoutMetrics::Endpoints::ActivateAnomalyDetector.build(context)
          when :back_test_anomaly_detector
            Aws::LookoutMetrics::Endpoints::BackTestAnomalyDetector.build(context)
          when :create_alert
            Aws::LookoutMetrics::Endpoints::CreateAlert.build(context)
          when :create_anomaly_detector
            Aws::LookoutMetrics::Endpoints::CreateAnomalyDetector.build(context)
          when :create_metric_set
            Aws::LookoutMetrics::Endpoints::CreateMetricSet.build(context)
          when :deactivate_anomaly_detector
            Aws::LookoutMetrics::Endpoints::DeactivateAnomalyDetector.build(context)
          when :delete_alert
            Aws::LookoutMetrics::Endpoints::DeleteAlert.build(context)
          when :delete_anomaly_detector
            Aws::LookoutMetrics::Endpoints::DeleteAnomalyDetector.build(context)
          when :describe_alert
            Aws::LookoutMetrics::Endpoints::DescribeAlert.build(context)
          when :describe_anomaly_detection_executions
            Aws::LookoutMetrics::Endpoints::DescribeAnomalyDetectionExecutions.build(context)
          when :describe_anomaly_detector
            Aws::LookoutMetrics::Endpoints::DescribeAnomalyDetector.build(context)
          when :describe_metric_set
            Aws::LookoutMetrics::Endpoints::DescribeMetricSet.build(context)
          when :detect_metric_set_config
            Aws::LookoutMetrics::Endpoints::DetectMetricSetConfig.build(context)
          when :get_anomaly_group
            Aws::LookoutMetrics::Endpoints::GetAnomalyGroup.build(context)
          when :get_data_quality_metrics
            Aws::LookoutMetrics::Endpoints::GetDataQualityMetrics.build(context)
          when :get_feedback
            Aws::LookoutMetrics::Endpoints::GetFeedback.build(context)
          when :get_sample_data
            Aws::LookoutMetrics::Endpoints::GetSampleData.build(context)
          when :list_alerts
            Aws::LookoutMetrics::Endpoints::ListAlerts.build(context)
          when :list_anomaly_detectors
            Aws::LookoutMetrics::Endpoints::ListAnomalyDetectors.build(context)
          when :list_anomaly_group_related_metrics
            Aws::LookoutMetrics::Endpoints::ListAnomalyGroupRelatedMetrics.build(context)
          when :list_anomaly_group_summaries
            Aws::LookoutMetrics::Endpoints::ListAnomalyGroupSummaries.build(context)
          when :list_anomaly_group_time_series
            Aws::LookoutMetrics::Endpoints::ListAnomalyGroupTimeSeries.build(context)
          when :list_metric_sets
            Aws::LookoutMetrics::Endpoints::ListMetricSets.build(context)
          when :list_tags_for_resource
            Aws::LookoutMetrics::Endpoints::ListTagsForResource.build(context)
          when :put_feedback
            Aws::LookoutMetrics::Endpoints::PutFeedback.build(context)
          when :tag_resource
            Aws::LookoutMetrics::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::LookoutMetrics::Endpoints::UntagResource.build(context)
          when :update_alert
            Aws::LookoutMetrics::Endpoints::UpdateAlert.build(context)
          when :update_anomaly_detector
            Aws::LookoutMetrics::Endpoints::UpdateAnomalyDetector.build(context)
          when :update_metric_set
            Aws::LookoutMetrics::Endpoints::UpdateMetricSet.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
