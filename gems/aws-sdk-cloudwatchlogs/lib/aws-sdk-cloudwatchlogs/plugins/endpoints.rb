# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudWatchLogs
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudWatchLogs::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudWatchLogs::EndpointParameters`'
      ) do |cfg|
        Aws::CloudWatchLogs::EndpointProvider.new
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
          when :associate_kms_key
            Aws::CloudWatchLogs::Endpoints::AssociateKmsKey.build(context)
          when :cancel_export_task
            Aws::CloudWatchLogs::Endpoints::CancelExportTask.build(context)
          when :create_export_task
            Aws::CloudWatchLogs::Endpoints::CreateExportTask.build(context)
          when :create_log_group
            Aws::CloudWatchLogs::Endpoints::CreateLogGroup.build(context)
          when :create_log_stream
            Aws::CloudWatchLogs::Endpoints::CreateLogStream.build(context)
          when :delete_account_policy
            Aws::CloudWatchLogs::Endpoints::DeleteAccountPolicy.build(context)
          when :delete_data_protection_policy
            Aws::CloudWatchLogs::Endpoints::DeleteDataProtectionPolicy.build(context)
          when :delete_destination
            Aws::CloudWatchLogs::Endpoints::DeleteDestination.build(context)
          when :delete_log_group
            Aws::CloudWatchLogs::Endpoints::DeleteLogGroup.build(context)
          when :delete_log_stream
            Aws::CloudWatchLogs::Endpoints::DeleteLogStream.build(context)
          when :delete_metric_filter
            Aws::CloudWatchLogs::Endpoints::DeleteMetricFilter.build(context)
          when :delete_query_definition
            Aws::CloudWatchLogs::Endpoints::DeleteQueryDefinition.build(context)
          when :delete_resource_policy
            Aws::CloudWatchLogs::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_retention_policy
            Aws::CloudWatchLogs::Endpoints::DeleteRetentionPolicy.build(context)
          when :delete_subscription_filter
            Aws::CloudWatchLogs::Endpoints::DeleteSubscriptionFilter.build(context)
          when :describe_account_policies
            Aws::CloudWatchLogs::Endpoints::DescribeAccountPolicies.build(context)
          when :describe_destinations
            Aws::CloudWatchLogs::Endpoints::DescribeDestinations.build(context)
          when :describe_export_tasks
            Aws::CloudWatchLogs::Endpoints::DescribeExportTasks.build(context)
          when :describe_log_groups
            Aws::CloudWatchLogs::Endpoints::DescribeLogGroups.build(context)
          when :describe_log_streams
            Aws::CloudWatchLogs::Endpoints::DescribeLogStreams.build(context)
          when :describe_metric_filters
            Aws::CloudWatchLogs::Endpoints::DescribeMetricFilters.build(context)
          when :describe_queries
            Aws::CloudWatchLogs::Endpoints::DescribeQueries.build(context)
          when :describe_query_definitions
            Aws::CloudWatchLogs::Endpoints::DescribeQueryDefinitions.build(context)
          when :describe_resource_policies
            Aws::CloudWatchLogs::Endpoints::DescribeResourcePolicies.build(context)
          when :describe_subscription_filters
            Aws::CloudWatchLogs::Endpoints::DescribeSubscriptionFilters.build(context)
          when :disassociate_kms_key
            Aws::CloudWatchLogs::Endpoints::DisassociateKmsKey.build(context)
          when :filter_log_events
            Aws::CloudWatchLogs::Endpoints::FilterLogEvents.build(context)
          when :get_data_protection_policy
            Aws::CloudWatchLogs::Endpoints::GetDataProtectionPolicy.build(context)
          when :get_log_events
            Aws::CloudWatchLogs::Endpoints::GetLogEvents.build(context)
          when :get_log_group_fields
            Aws::CloudWatchLogs::Endpoints::GetLogGroupFields.build(context)
          when :get_log_record
            Aws::CloudWatchLogs::Endpoints::GetLogRecord.build(context)
          when :get_query_results
            Aws::CloudWatchLogs::Endpoints::GetQueryResults.build(context)
          when :list_tags_for_resource
            Aws::CloudWatchLogs::Endpoints::ListTagsForResource.build(context)
          when :list_tags_log_group
            Aws::CloudWatchLogs::Endpoints::ListTagsLogGroup.build(context)
          when :put_account_policy
            Aws::CloudWatchLogs::Endpoints::PutAccountPolicy.build(context)
          when :put_data_protection_policy
            Aws::CloudWatchLogs::Endpoints::PutDataProtectionPolicy.build(context)
          when :put_destination
            Aws::CloudWatchLogs::Endpoints::PutDestination.build(context)
          when :put_destination_policy
            Aws::CloudWatchLogs::Endpoints::PutDestinationPolicy.build(context)
          when :put_log_events
            Aws::CloudWatchLogs::Endpoints::PutLogEvents.build(context)
          when :put_metric_filter
            Aws::CloudWatchLogs::Endpoints::PutMetricFilter.build(context)
          when :put_query_definition
            Aws::CloudWatchLogs::Endpoints::PutQueryDefinition.build(context)
          when :put_resource_policy
            Aws::CloudWatchLogs::Endpoints::PutResourcePolicy.build(context)
          when :put_retention_policy
            Aws::CloudWatchLogs::Endpoints::PutRetentionPolicy.build(context)
          when :put_subscription_filter
            Aws::CloudWatchLogs::Endpoints::PutSubscriptionFilter.build(context)
          when :start_query
            Aws::CloudWatchLogs::Endpoints::StartQuery.build(context)
          when :stop_query
            Aws::CloudWatchLogs::Endpoints::StopQuery.build(context)
          when :tag_log_group
            Aws::CloudWatchLogs::Endpoints::TagLogGroup.build(context)
          when :tag_resource
            Aws::CloudWatchLogs::Endpoints::TagResource.build(context)
          when :test_metric_filter
            Aws::CloudWatchLogs::Endpoints::TestMetricFilter.build(context)
          when :untag_log_group
            Aws::CloudWatchLogs::Endpoints::UntagLogGroup.build(context)
          when :untag_resource
            Aws::CloudWatchLogs::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
