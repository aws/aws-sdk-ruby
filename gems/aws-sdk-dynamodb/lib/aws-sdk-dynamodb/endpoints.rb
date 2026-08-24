# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DynamoDB
  # @api private
  module Endpoints

    class BatchGetItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn_list: JMESPath.search("keys(request_items)", context.params),
        )
      end
    end

    class BatchWriteItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn_list: JMESPath.search("keys(request_items)", context.params),
        )
      end
    end

    class CreateBackup
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class CreateGlobalTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:global_table_name],
        )
      end
    end

    class CreateTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class DeleteBackup
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:backup_arn],
        )
      end
    end

    class DeleteItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class DeleteResourcePolicy
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class DeleteTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class DescribeBackup
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:backup_arn],
        )
      end
    end

    class DescribeContinuousBackups
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class DescribeContributorInsights
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class DescribeExport
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:export_arn],
        )
      end
    end

    class DescribeGlobalTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:global_table_name],
        )
      end
    end

    class DescribeGlobalTableSettings
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:global_table_name],
        )
      end
    end

    class DescribeImport
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:import_arn],
        )
      end
    end

    class DescribeKinesisStreamingDestination
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class DescribeTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class DescribeTableReplicaAutoScaling
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class DescribeTimeToLive
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class DisableKinesisStreamingDestination
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class EnableKinesisStreamingDestination
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class ExportTableToPointInTime
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_arn],
        )
      end
    end

    class GetItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class GetResourcePolicy
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class ImportTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: JMESPath.search("table_creation_parameters.table_name", context.params),
        )
      end
    end

    class ListBackups
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class ListContributorInsights
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class ListExports
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_arn],
        )
      end
    end

    class ListImports
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_arn],
        )
      end
    end

    class ListTagsOfResource
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class PutItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class PutResourcePolicy
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class Query
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class RestoreTableFromBackup
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:target_table_name],
        )
      end
    end

    class RestoreTableToPointInTime
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:target_table_name],
        )
      end
    end

    class Scan
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class SearchVectors
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
          is_search_operation: true,
        )
      end
    end

    class TagResource
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class TransactGetItems
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn_list: JMESPath.search("transact_items[*].get.table_name", context.params),
        )
      end
    end

    class TransactWriteItems
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn_list: JMESPath.search("transact_items[*].[condition_check.table_name, put.table_name, delete.table_name, update.table_name][]", context.params),
        )
      end
    end

    class UntagResource
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class UpdateContinuousBackups
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class UpdateContributorInsights
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class UpdateGlobalTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:global_table_name],
        )
      end
    end

    class UpdateGlobalTableSettings
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:global_table_name],
        )
      end
    end

    class UpdateItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class UpdateKinesisStreamingDestination
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class UpdateTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class UpdateTableReplicaAutoScaling
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end

    class UpdateTimeToLive
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.create(
          context.config,
          resource_arn: context.params[:table_name],
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :batch_get_item
        BatchGetItem.build(context)
      when :batch_write_item
        BatchWriteItem.build(context)
      when :create_backup
        CreateBackup.build(context)
      when :create_global_table
        CreateGlobalTable.build(context)
      when :create_table
        CreateTable.build(context)
      when :delete_backup
        DeleteBackup.build(context)
      when :delete_item
        DeleteItem.build(context)
      when :delete_resource_policy
        DeleteResourcePolicy.build(context)
      when :delete_table
        DeleteTable.build(context)
      when :describe_backup
        DescribeBackup.build(context)
      when :describe_continuous_backups
        DescribeContinuousBackups.build(context)
      when :describe_contributor_insights
        DescribeContributorInsights.build(context)
      when :describe_export
        DescribeExport.build(context)
      when :describe_global_table
        DescribeGlobalTable.build(context)
      when :describe_global_table_settings
        DescribeGlobalTableSettings.build(context)
      when :describe_import
        DescribeImport.build(context)
      when :describe_kinesis_streaming_destination
        DescribeKinesisStreamingDestination.build(context)
      when :describe_table
        DescribeTable.build(context)
      when :describe_table_replica_auto_scaling
        DescribeTableReplicaAutoScaling.build(context)
      when :describe_time_to_live
        DescribeTimeToLive.build(context)
      when :disable_kinesis_streaming_destination
        DisableKinesisStreamingDestination.build(context)
      when :enable_kinesis_streaming_destination
        EnableKinesisStreamingDestination.build(context)
      when :export_table_to_point_in_time
        ExportTableToPointInTime.build(context)
      when :get_item
        GetItem.build(context)
      when :get_resource_policy
        GetResourcePolicy.build(context)
      when :import_table
        ImportTable.build(context)
      when :list_backups
        ListBackups.build(context)
      when :list_contributor_insights
        ListContributorInsights.build(context)
      when :list_exports
        ListExports.build(context)
      when :list_imports
        ListImports.build(context)
      when :list_tags_of_resource
        ListTagsOfResource.build(context)
      when :put_item
        PutItem.build(context)
      when :put_resource_policy
        PutResourcePolicy.build(context)
      when :query
        Query.build(context)
      when :restore_table_from_backup
        RestoreTableFromBackup.build(context)
      when :restore_table_to_point_in_time
        RestoreTableToPointInTime.build(context)
      when :scan
        Scan.build(context)
      when :search_vectors
        SearchVectors.build(context)
      when :tag_resource
        TagResource.build(context)
      when :transact_get_items
        TransactGetItems.build(context)
      when :transact_write_items
        TransactWriteItems.build(context)
      when :untag_resource
        UntagResource.build(context)
      when :update_continuous_backups
        UpdateContinuousBackups.build(context)
      when :update_contributor_insights
        UpdateContributorInsights.build(context)
      when :update_global_table
        UpdateGlobalTable.build(context)
      when :update_global_table_settings
        UpdateGlobalTableSettings.build(context)
      when :update_item
        UpdateItem.build(context)
      when :update_kinesis_streaming_destination
        UpdateKinesisStreamingDestination.build(context)
      when :update_table
        UpdateTable.build(context)
      when :update_table_replica_auto_scaling
        UpdateTableReplicaAutoScaling.build(context)
      when :update_time_to_live
        UpdateTimeToLive.build(context)
      else
        Aws::DynamoDB::EndpointParameters.create(context.config)
      end
    end
  end
end
