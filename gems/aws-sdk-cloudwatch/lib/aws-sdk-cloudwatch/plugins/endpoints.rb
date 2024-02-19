# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudWatch
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudWatch::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudWatch::EndpointParameters`'
      ) do |cfg|
        Aws::CloudWatch::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

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
          when :delete_alarms
            Aws::CloudWatch::Endpoints::DeleteAlarms.build(context)
          when :delete_anomaly_detector
            Aws::CloudWatch::Endpoints::DeleteAnomalyDetector.build(context)
          when :delete_dashboards
            Aws::CloudWatch::Endpoints::DeleteDashboards.build(context)
          when :delete_insight_rules
            Aws::CloudWatch::Endpoints::DeleteInsightRules.build(context)
          when :delete_metric_stream
            Aws::CloudWatch::Endpoints::DeleteMetricStream.build(context)
          when :describe_alarm_history
            Aws::CloudWatch::Endpoints::DescribeAlarmHistory.build(context)
          when :describe_alarms
            Aws::CloudWatch::Endpoints::DescribeAlarms.build(context)
          when :describe_alarms_for_metric
            Aws::CloudWatch::Endpoints::DescribeAlarmsForMetric.build(context)
          when :describe_anomaly_detectors
            Aws::CloudWatch::Endpoints::DescribeAnomalyDetectors.build(context)
          when :describe_insight_rules
            Aws::CloudWatch::Endpoints::DescribeInsightRules.build(context)
          when :disable_alarm_actions
            Aws::CloudWatch::Endpoints::DisableAlarmActions.build(context)
          when :disable_insight_rules
            Aws::CloudWatch::Endpoints::DisableInsightRules.build(context)
          when :enable_alarm_actions
            Aws::CloudWatch::Endpoints::EnableAlarmActions.build(context)
          when :enable_insight_rules
            Aws::CloudWatch::Endpoints::EnableInsightRules.build(context)
          when :get_dashboard
            Aws::CloudWatch::Endpoints::GetDashboard.build(context)
          when :get_insight_rule_report
            Aws::CloudWatch::Endpoints::GetInsightRuleReport.build(context)
          when :get_metric_data
            Aws::CloudWatch::Endpoints::GetMetricData.build(context)
          when :get_metric_statistics
            Aws::CloudWatch::Endpoints::GetMetricStatistics.build(context)
          when :get_metric_stream
            Aws::CloudWatch::Endpoints::GetMetricStream.build(context)
          when :get_metric_widget_image
            Aws::CloudWatch::Endpoints::GetMetricWidgetImage.build(context)
          when :list_dashboards
            Aws::CloudWatch::Endpoints::ListDashboards.build(context)
          when :list_managed_insight_rules
            Aws::CloudWatch::Endpoints::ListManagedInsightRules.build(context)
          when :list_metric_streams
            Aws::CloudWatch::Endpoints::ListMetricStreams.build(context)
          when :list_metrics
            Aws::CloudWatch::Endpoints::ListMetrics.build(context)
          when :list_tags_for_resource
            Aws::CloudWatch::Endpoints::ListTagsForResource.build(context)
          when :put_anomaly_detector
            Aws::CloudWatch::Endpoints::PutAnomalyDetector.build(context)
          when :put_composite_alarm
            Aws::CloudWatch::Endpoints::PutCompositeAlarm.build(context)
          when :put_dashboard
            Aws::CloudWatch::Endpoints::PutDashboard.build(context)
          when :put_insight_rule
            Aws::CloudWatch::Endpoints::PutInsightRule.build(context)
          when :put_managed_insight_rules
            Aws::CloudWatch::Endpoints::PutManagedInsightRules.build(context)
          when :put_metric_alarm
            Aws::CloudWatch::Endpoints::PutMetricAlarm.build(context)
          when :put_metric_data
            Aws::CloudWatch::Endpoints::PutMetricData.build(context)
          when :put_metric_stream
            Aws::CloudWatch::Endpoints::PutMetricStream.build(context)
          when :set_alarm_state
            Aws::CloudWatch::Endpoints::SetAlarmState.build(context)
          when :start_metric_streams
            Aws::CloudWatch::Endpoints::StartMetricStreams.build(context)
          when :stop_metric_streams
            Aws::CloudWatch::Endpoints::StopMetricStreams.build(context)
          when :tag_resource
            Aws::CloudWatch::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CloudWatch::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
