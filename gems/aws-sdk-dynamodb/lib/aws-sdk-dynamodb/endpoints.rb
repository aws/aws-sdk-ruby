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

    class BatchExecuteStatement
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class BatchGetItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class BatchWriteItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class CreateBackup
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class CreateGlobalTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class CreateTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DeleteBackup
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DeleteItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DeleteResourcePolicy
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DeleteTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeBackup
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeContinuousBackups
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeContributorInsights
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeEndpoints
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeExport
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeGlobalTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeGlobalTableSettings
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeImport
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeKinesisStreamingDestination
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeLimits
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeTableReplicaAutoScaling
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DescribeTimeToLive
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class DisableKinesisStreamingDestination
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class EnableKinesisStreamingDestination
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class ExecuteStatement
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class ExecuteTransaction
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class ExportTableToPointInTime
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class GetItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class GetResourcePolicy
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class ImportTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class ListBackups
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class ListContributorInsights
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class ListExports
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class ListGlobalTables
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class ListImports
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class ListTables
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class ListTagsOfResource
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class PutItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class PutResourcePolicy
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class Query
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class RestoreTableFromBackup
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class RestoreTableToPointInTime
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class Scan
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class TagResource
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class TransactGetItems
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class TransactWriteItems
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class UntagResource
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class UpdateContinuousBackups
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class UpdateContributorInsights
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class UpdateGlobalTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class UpdateGlobalTableSettings
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class UpdateItem
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class UpdateKinesisStreamingDestination
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class UpdateTable
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class UpdateTableReplicaAutoScaling
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

    class UpdateTimeToLive
      def self.build(context)
        Aws::DynamoDB::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
          account_id: context.config.credentials.credentials.account_id,
          account_id_endpoint_mode: context.config.account_id_endpoint_mode,
        )
      end
    end

  end
end
