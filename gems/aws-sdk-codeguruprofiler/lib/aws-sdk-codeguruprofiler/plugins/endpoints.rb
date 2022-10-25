# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeGuruProfiler
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodeGuruProfiler::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodeGuruProfiler::EndpointParameters`'
      ) do |cfg|
        Aws::CodeGuruProfiler::EndpointProvider.new
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
          when :add_notification_channels
            Aws::CodeGuruProfiler::Endpoints::AddNotificationChannels.build(context)
          when :batch_get_frame_metric_data
            Aws::CodeGuruProfiler::Endpoints::BatchGetFrameMetricData.build(context)
          when :configure_agent
            Aws::CodeGuruProfiler::Endpoints::ConfigureAgent.build(context)
          when :create_profiling_group
            Aws::CodeGuruProfiler::Endpoints::CreateProfilingGroup.build(context)
          when :delete_profiling_group
            Aws::CodeGuruProfiler::Endpoints::DeleteProfilingGroup.build(context)
          when :describe_profiling_group
            Aws::CodeGuruProfiler::Endpoints::DescribeProfilingGroup.build(context)
          when :get_findings_report_account_summary
            Aws::CodeGuruProfiler::Endpoints::GetFindingsReportAccountSummary.build(context)
          when :get_notification_configuration
            Aws::CodeGuruProfiler::Endpoints::GetNotificationConfiguration.build(context)
          when :get_policy
            Aws::CodeGuruProfiler::Endpoints::GetPolicy.build(context)
          when :get_profile
            Aws::CodeGuruProfiler::Endpoints::GetProfile.build(context)
          when :get_recommendations
            Aws::CodeGuruProfiler::Endpoints::GetRecommendations.build(context)
          when :list_findings_reports
            Aws::CodeGuruProfiler::Endpoints::ListFindingsReports.build(context)
          when :list_profile_times
            Aws::CodeGuruProfiler::Endpoints::ListProfileTimes.build(context)
          when :list_profiling_groups
            Aws::CodeGuruProfiler::Endpoints::ListProfilingGroups.build(context)
          when :list_tags_for_resource
            Aws::CodeGuruProfiler::Endpoints::ListTagsForResource.build(context)
          when :post_agent_profile
            Aws::CodeGuruProfiler::Endpoints::PostAgentProfile.build(context)
          when :put_permission
            Aws::CodeGuruProfiler::Endpoints::PutPermission.build(context)
          when :remove_notification_channel
            Aws::CodeGuruProfiler::Endpoints::RemoveNotificationChannel.build(context)
          when :remove_permission
            Aws::CodeGuruProfiler::Endpoints::RemovePermission.build(context)
          when :submit_feedback
            Aws::CodeGuruProfiler::Endpoints::SubmitFeedback.build(context)
          when :tag_resource
            Aws::CodeGuruProfiler::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CodeGuruProfiler::Endpoints::UntagResource.build(context)
          when :update_profiling_group
            Aws::CodeGuruProfiler::Endpoints::UpdateProfilingGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
