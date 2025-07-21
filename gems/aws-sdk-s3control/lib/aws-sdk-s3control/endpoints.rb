# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::S3Control
  # @api private
  module Endpoints

    class AssociateAccessGrantsIdentityCenter
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class CreateAccessGrant
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class CreateAccessGrantsInstance
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class CreateAccessGrantsLocation
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class CreateAccessPoint
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
          access_point_name: context.params[:name],
        )
      end
    end

    class CreateAccessPointForObjectLambda
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class CreateBucket
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          outpost_id: context.params[:outpost_id],
          bucket: context.params[:bucket],
        )
      end
    end

    class CreateJob
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class CreateMultiRegionAccessPoint
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class CreateStorageLensGroup
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeleteAccessGrant
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeleteAccessGrantsInstance
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeleteAccessGrantsInstanceResourcePolicy
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeleteAccessGrantsLocation
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeleteAccessPoint
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          access_point_name: context.params[:name],
        )
      end
    end

    class DeleteAccessPointForObjectLambda
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeleteAccessPointPolicy
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          access_point_name: context.params[:name],
        )
      end
    end

    class DeleteAccessPointPolicyForObjectLambda
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeleteAccessPointScope
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          access_point_name: context.params[:name],
          use_s3_express_control_endpoint: true,
        )
      end
    end

    class DeleteBucket
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class DeleteBucketLifecycleConfiguration
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class DeleteBucketPolicy
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class DeleteBucketReplication
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class DeleteBucketTagging
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class DeleteJobTagging
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeleteMultiRegionAccessPoint
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeletePublicAccessBlock
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeleteStorageLensConfiguration
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeleteStorageLensConfigurationTagging
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DeleteStorageLensGroup
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DescribeJob
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DescribeMultiRegionAccessPointOperation
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class DissociateAccessGrantsIdentityCenter
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetAccessGrant
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetAccessGrantsInstance
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetAccessGrantsInstanceForPrefix
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetAccessGrantsInstanceResourcePolicy
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetAccessGrantsLocation
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetAccessPoint
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          access_point_name: context.params[:name],
        )
      end
    end

    class GetAccessPointConfigurationForObjectLambda
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetAccessPointForObjectLambda
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetAccessPointPolicy
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          access_point_name: context.params[:name],
        )
      end
    end

    class GetAccessPointPolicyForObjectLambda
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetAccessPointPolicyStatus
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          access_point_name: context.params[:name],
        )
      end
    end

    class GetAccessPointPolicyStatusForObjectLambda
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetAccessPointScope
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          access_point_name: context.params[:name],
          use_s3_express_control_endpoint: true,
        )
      end
    end

    class GetBucket
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class GetBucketLifecycleConfiguration
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class GetBucketPolicy
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class GetBucketReplication
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class GetBucketTagging
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class GetBucketVersioning
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class GetDataAccess
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetJobTagging
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetMultiRegionAccessPoint
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetMultiRegionAccessPointPolicy
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetMultiRegionAccessPointPolicyStatus
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetMultiRegionAccessPointRoutes
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetPublicAccessBlock
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetStorageLensConfiguration
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetStorageLensConfigurationTagging
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class GetStorageLensGroup
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class ListAccessGrants
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class ListAccessGrantsInstances
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class ListAccessGrantsLocations
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class ListAccessPoints
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class ListAccessPointsForDirectoryBuckets
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          use_s3_express_control_endpoint: true,
        )
      end
    end

    class ListAccessPointsForObjectLambda
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class ListCallerAccessGrants
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class ListJobs
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class ListMultiRegionAccessPoints
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class ListRegionalBuckets
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: context.params[:outpost_id],
        )
      end
    end

    class ListStorageLensConfigurations
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class ListStorageLensGroups
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class PutAccessGrantsInstanceResourcePolicy
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class PutAccessPointConfigurationForObjectLambda
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class PutAccessPointPolicy
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          access_point_name: context.params[:name],
        )
      end
    end

    class PutAccessPointPolicyForObjectLambda
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class PutAccessPointScope
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          access_point_name: context.params[:name],
          use_s3_express_control_endpoint: true,
        )
      end
    end

    class PutBucketLifecycleConfiguration
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class PutBucketPolicy
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class PutBucketReplication
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class PutBucketTagging
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class PutBucketVersioning
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          bucket: context.params[:bucket],
        )
      end
    end

    class PutJobTagging
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class PutMultiRegionAccessPointPolicy
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class PutPublicAccessBlock
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class PutStorageLensConfiguration
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class PutStorageLensConfigurationTagging
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class SubmitMultiRegionAccessPointRoutes
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class TagResource
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class UntagResource
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
          resource_arn: context.params[:resource_arn],
        )
      end
    end

    class UpdateAccessGrantsLocation
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class UpdateJobPriority
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class UpdateJobStatus
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end

    class UpdateStorageLensGroup
      def self.build(context)
        Aws::S3Control::EndpointParameters.create(
          context.config,
          use_dual_stack: context[:use_dualstack_endpoint],
          account_id: context.params[:account_id],
          requires_account_id: true,
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :associate_access_grants_identity_center
        AssociateAccessGrantsIdentityCenter.build(context)
      when :create_access_grant
        CreateAccessGrant.build(context)
      when :create_access_grants_instance
        CreateAccessGrantsInstance.build(context)
      when :create_access_grants_location
        CreateAccessGrantsLocation.build(context)
      when :create_access_point
        CreateAccessPoint.build(context)
      when :create_access_point_for_object_lambda
        CreateAccessPointForObjectLambda.build(context)
      when :create_bucket
        CreateBucket.build(context)
      when :create_job
        CreateJob.build(context)
      when :create_multi_region_access_point
        CreateMultiRegionAccessPoint.build(context)
      when :create_storage_lens_group
        CreateStorageLensGroup.build(context)
      when :delete_access_grant
        DeleteAccessGrant.build(context)
      when :delete_access_grants_instance
        DeleteAccessGrantsInstance.build(context)
      when :delete_access_grants_instance_resource_policy
        DeleteAccessGrantsInstanceResourcePolicy.build(context)
      when :delete_access_grants_location
        DeleteAccessGrantsLocation.build(context)
      when :delete_access_point
        DeleteAccessPoint.build(context)
      when :delete_access_point_for_object_lambda
        DeleteAccessPointForObjectLambda.build(context)
      when :delete_access_point_policy
        DeleteAccessPointPolicy.build(context)
      when :delete_access_point_policy_for_object_lambda
        DeleteAccessPointPolicyForObjectLambda.build(context)
      when :delete_access_point_scope
        DeleteAccessPointScope.build(context)
      when :delete_bucket
        DeleteBucket.build(context)
      when :delete_bucket_lifecycle_configuration
        DeleteBucketLifecycleConfiguration.build(context)
      when :delete_bucket_policy
        DeleteBucketPolicy.build(context)
      when :delete_bucket_replication
        DeleteBucketReplication.build(context)
      when :delete_bucket_tagging
        DeleteBucketTagging.build(context)
      when :delete_job_tagging
        DeleteJobTagging.build(context)
      when :delete_multi_region_access_point
        DeleteMultiRegionAccessPoint.build(context)
      when :delete_public_access_block
        DeletePublicAccessBlock.build(context)
      when :delete_storage_lens_configuration
        DeleteStorageLensConfiguration.build(context)
      when :delete_storage_lens_configuration_tagging
        DeleteStorageLensConfigurationTagging.build(context)
      when :delete_storage_lens_group
        DeleteStorageLensGroup.build(context)
      when :describe_job
        DescribeJob.build(context)
      when :describe_multi_region_access_point_operation
        DescribeMultiRegionAccessPointOperation.build(context)
      when :dissociate_access_grants_identity_center
        DissociateAccessGrantsIdentityCenter.build(context)
      when :get_access_grant
        GetAccessGrant.build(context)
      when :get_access_grants_instance
        GetAccessGrantsInstance.build(context)
      when :get_access_grants_instance_for_prefix
        GetAccessGrantsInstanceForPrefix.build(context)
      when :get_access_grants_instance_resource_policy
        GetAccessGrantsInstanceResourcePolicy.build(context)
      when :get_access_grants_location
        GetAccessGrantsLocation.build(context)
      when :get_access_point
        GetAccessPoint.build(context)
      when :get_access_point_configuration_for_object_lambda
        GetAccessPointConfigurationForObjectLambda.build(context)
      when :get_access_point_for_object_lambda
        GetAccessPointForObjectLambda.build(context)
      when :get_access_point_policy
        GetAccessPointPolicy.build(context)
      when :get_access_point_policy_for_object_lambda
        GetAccessPointPolicyForObjectLambda.build(context)
      when :get_access_point_policy_status
        GetAccessPointPolicyStatus.build(context)
      when :get_access_point_policy_status_for_object_lambda
        GetAccessPointPolicyStatusForObjectLambda.build(context)
      when :get_access_point_scope
        GetAccessPointScope.build(context)
      when :get_bucket
        GetBucket.build(context)
      when :get_bucket_lifecycle_configuration
        GetBucketLifecycleConfiguration.build(context)
      when :get_bucket_policy
        GetBucketPolicy.build(context)
      when :get_bucket_replication
        GetBucketReplication.build(context)
      when :get_bucket_tagging
        GetBucketTagging.build(context)
      when :get_bucket_versioning
        GetBucketVersioning.build(context)
      when :get_data_access
        GetDataAccess.build(context)
      when :get_job_tagging
        GetJobTagging.build(context)
      when :get_multi_region_access_point
        GetMultiRegionAccessPoint.build(context)
      when :get_multi_region_access_point_policy
        GetMultiRegionAccessPointPolicy.build(context)
      when :get_multi_region_access_point_policy_status
        GetMultiRegionAccessPointPolicyStatus.build(context)
      when :get_multi_region_access_point_routes
        GetMultiRegionAccessPointRoutes.build(context)
      when :get_public_access_block
        GetPublicAccessBlock.build(context)
      when :get_storage_lens_configuration
        GetStorageLensConfiguration.build(context)
      when :get_storage_lens_configuration_tagging
        GetStorageLensConfigurationTagging.build(context)
      when :get_storage_lens_group
        GetStorageLensGroup.build(context)
      when :list_access_grants
        ListAccessGrants.build(context)
      when :list_access_grants_instances
        ListAccessGrantsInstances.build(context)
      when :list_access_grants_locations
        ListAccessGrantsLocations.build(context)
      when :list_access_points
        ListAccessPoints.build(context)
      when :list_access_points_for_directory_buckets
        ListAccessPointsForDirectoryBuckets.build(context)
      when :list_access_points_for_object_lambda
        ListAccessPointsForObjectLambda.build(context)
      when :list_caller_access_grants
        ListCallerAccessGrants.build(context)
      when :list_jobs
        ListJobs.build(context)
      when :list_multi_region_access_points
        ListMultiRegionAccessPoints.build(context)
      when :list_regional_buckets
        ListRegionalBuckets.build(context)
      when :list_storage_lens_configurations
        ListStorageLensConfigurations.build(context)
      when :list_storage_lens_groups
        ListStorageLensGroups.build(context)
      when :list_tags_for_resource
        ListTagsForResource.build(context)
      when :put_access_grants_instance_resource_policy
        PutAccessGrantsInstanceResourcePolicy.build(context)
      when :put_access_point_configuration_for_object_lambda
        PutAccessPointConfigurationForObjectLambda.build(context)
      when :put_access_point_policy
        PutAccessPointPolicy.build(context)
      when :put_access_point_policy_for_object_lambda
        PutAccessPointPolicyForObjectLambda.build(context)
      when :put_access_point_scope
        PutAccessPointScope.build(context)
      when :put_bucket_lifecycle_configuration
        PutBucketLifecycleConfiguration.build(context)
      when :put_bucket_policy
        PutBucketPolicy.build(context)
      when :put_bucket_replication
        PutBucketReplication.build(context)
      when :put_bucket_tagging
        PutBucketTagging.build(context)
      when :put_bucket_versioning
        PutBucketVersioning.build(context)
      when :put_job_tagging
        PutJobTagging.build(context)
      when :put_multi_region_access_point_policy
        PutMultiRegionAccessPointPolicy.build(context)
      when :put_public_access_block
        PutPublicAccessBlock.build(context)
      when :put_storage_lens_configuration
        PutStorageLensConfiguration.build(context)
      when :put_storage_lens_configuration_tagging
        PutStorageLensConfigurationTagging.build(context)
      when :submit_multi_region_access_point_routes
        SubmitMultiRegionAccessPointRoutes.build(context)
      when :tag_resource
        TagResource.build(context)
      when :untag_resource
        UntagResource.build(context)
      when :update_access_grants_location
        UpdateAccessGrantsLocation.build(context)
      when :update_job_priority
        UpdateJobPriority.build(context)
      when :update_job_status
        UpdateJobStatus.build(context)
      when :update_storage_lens_group
        UpdateStorageLensGroup.build(context)
      else
        Aws::S3Control::EndpointParameters.create(context.config)
      end
    end
  end
end
