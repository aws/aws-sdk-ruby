# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DynamoDB
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DynamoDB::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::DynamoDB::EndpointParameters`.
        DOCS
        Aws::DynamoDB::EndpointProvider.new
      end

      option(
        :account_id_endpoint_mode,
        doc_type: 'String',
        docstring: <<~DOCS) do |cfg|
The account ID endpoint mode to use. This can be one of the following values:
* `preferred` - The default behavior. Use the account ID endpoint if
  available, otherwise use the standard endpoint.
* `disabled` - Never use the account ID endpoint. Only use the standard
  endpoint.
* `required` - Always use the account ID endpoint. If the account ID
  cannot be retrieved from credentials, an error is raised.
        DOCS
        value = ENV['AWS_ACCOUNT_ID_ENDPOINT_MODE']
        value ||= Aws.shared_config.account_id_endpoint_mode(profile: cfg.profile)
        value || 'preferred'
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

          with_metrics(context) { @handler.call(context) }
        end

        private

        def with_metrics(context, &block)
          metrics = []
          metrics << 'ENDPOINT_OVERRIDE' unless context.config.regional_endpoint
          if context[:auth_scheme] && context[:auth_scheme]['name'] == 'sigv4a'
            metrics << 'SIGV4A_SIGNING'
          end
          case context.config.account_id_endpoint_mode
          when 'preferred'
            metrics << 'ACCOUNT_ID_MODE_PREFERRED'
          when 'disabled'
            metrics << 'ACCOUNT_ID_MODE_DISABLED'
          when 'required'
            metrics << 'ACCOUNT_ID_MODE_REQUIRED'
          end
          if context.config.credentials&.credentials&.account_id
            metrics << 'RESOLVED_ACCOUNT_ID'
          end
          Aws::Plugins::UserAgent.metric(*metrics, &block)
        end

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
          when :batch_execute_statement
            Aws::DynamoDB::Endpoints::BatchExecuteStatement.build(context)
          when :batch_get_item
            Aws::DynamoDB::Endpoints::BatchGetItem.build(context)
          when :batch_write_item
            Aws::DynamoDB::Endpoints::BatchWriteItem.build(context)
          when :create_backup
            Aws::DynamoDB::Endpoints::CreateBackup.build(context)
          when :create_global_table
            Aws::DynamoDB::Endpoints::CreateGlobalTable.build(context)
          when :create_table
            Aws::DynamoDB::Endpoints::CreateTable.build(context)
          when :delete_backup
            Aws::DynamoDB::Endpoints::DeleteBackup.build(context)
          when :delete_item
            Aws::DynamoDB::Endpoints::DeleteItem.build(context)
          when :delete_resource_policy
            Aws::DynamoDB::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_table
            Aws::DynamoDB::Endpoints::DeleteTable.build(context)
          when :describe_backup
            Aws::DynamoDB::Endpoints::DescribeBackup.build(context)
          when :describe_continuous_backups
            Aws::DynamoDB::Endpoints::DescribeContinuousBackups.build(context)
          when :describe_contributor_insights
            Aws::DynamoDB::Endpoints::DescribeContributorInsights.build(context)
          when :describe_endpoints
            Aws::DynamoDB::Endpoints::DescribeEndpoints.build(context)
          when :describe_export
            Aws::DynamoDB::Endpoints::DescribeExport.build(context)
          when :describe_global_table
            Aws::DynamoDB::Endpoints::DescribeGlobalTable.build(context)
          when :describe_global_table_settings
            Aws::DynamoDB::Endpoints::DescribeGlobalTableSettings.build(context)
          when :describe_import
            Aws::DynamoDB::Endpoints::DescribeImport.build(context)
          when :describe_kinesis_streaming_destination
            Aws::DynamoDB::Endpoints::DescribeKinesisStreamingDestination.build(context)
          when :describe_limits
            Aws::DynamoDB::Endpoints::DescribeLimits.build(context)
          when :describe_table
            Aws::DynamoDB::Endpoints::DescribeTable.build(context)
          when :describe_table_replica_auto_scaling
            Aws::DynamoDB::Endpoints::DescribeTableReplicaAutoScaling.build(context)
          when :describe_time_to_live
            Aws::DynamoDB::Endpoints::DescribeTimeToLive.build(context)
          when :disable_kinesis_streaming_destination
            Aws::DynamoDB::Endpoints::DisableKinesisStreamingDestination.build(context)
          when :enable_kinesis_streaming_destination
            Aws::DynamoDB::Endpoints::EnableKinesisStreamingDestination.build(context)
          when :execute_statement
            Aws::DynamoDB::Endpoints::ExecuteStatement.build(context)
          when :execute_transaction
            Aws::DynamoDB::Endpoints::ExecuteTransaction.build(context)
          when :export_table_to_point_in_time
            Aws::DynamoDB::Endpoints::ExportTableToPointInTime.build(context)
          when :get_item
            Aws::DynamoDB::Endpoints::GetItem.build(context)
          when :get_resource_policy
            Aws::DynamoDB::Endpoints::GetResourcePolicy.build(context)
          when :import_table
            Aws::DynamoDB::Endpoints::ImportTable.build(context)
          when :list_backups
            Aws::DynamoDB::Endpoints::ListBackups.build(context)
          when :list_contributor_insights
            Aws::DynamoDB::Endpoints::ListContributorInsights.build(context)
          when :list_exports
            Aws::DynamoDB::Endpoints::ListExports.build(context)
          when :list_global_tables
            Aws::DynamoDB::Endpoints::ListGlobalTables.build(context)
          when :list_imports
            Aws::DynamoDB::Endpoints::ListImports.build(context)
          when :list_tables
            Aws::DynamoDB::Endpoints::ListTables.build(context)
          when :list_tags_of_resource
            Aws::DynamoDB::Endpoints::ListTagsOfResource.build(context)
          when :put_item
            Aws::DynamoDB::Endpoints::PutItem.build(context)
          when :put_resource_policy
            Aws::DynamoDB::Endpoints::PutResourcePolicy.build(context)
          when :query
            Aws::DynamoDB::Endpoints::Query.build(context)
          when :restore_table_from_backup
            Aws::DynamoDB::Endpoints::RestoreTableFromBackup.build(context)
          when :restore_table_to_point_in_time
            Aws::DynamoDB::Endpoints::RestoreTableToPointInTime.build(context)
          when :scan
            Aws::DynamoDB::Endpoints::Scan.build(context)
          when :tag_resource
            Aws::DynamoDB::Endpoints::TagResource.build(context)
          when :transact_get_items
            Aws::DynamoDB::Endpoints::TransactGetItems.build(context)
          when :transact_write_items
            Aws::DynamoDB::Endpoints::TransactWriteItems.build(context)
          when :untag_resource
            Aws::DynamoDB::Endpoints::UntagResource.build(context)
          when :update_continuous_backups
            Aws::DynamoDB::Endpoints::UpdateContinuousBackups.build(context)
          when :update_contributor_insights
            Aws::DynamoDB::Endpoints::UpdateContributorInsights.build(context)
          when :update_global_table
            Aws::DynamoDB::Endpoints::UpdateGlobalTable.build(context)
          when :update_global_table_settings
            Aws::DynamoDB::Endpoints::UpdateGlobalTableSettings.build(context)
          when :update_item
            Aws::DynamoDB::Endpoints::UpdateItem.build(context)
          when :update_kinesis_streaming_destination
            Aws::DynamoDB::Endpoints::UpdateKinesisStreamingDestination.build(context)
          when :update_table
            Aws::DynamoDB::Endpoints::UpdateTable.build(context)
          when :update_table_replica_auto_scaling
            Aws::DynamoDB::Endpoints::UpdateTableReplicaAutoScaling.build(context)
          when :update_time_to_live
            Aws::DynamoDB::Endpoints::UpdateTimeToLive.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
