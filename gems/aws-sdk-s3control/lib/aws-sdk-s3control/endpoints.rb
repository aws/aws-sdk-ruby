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

    class CreateAccessPoint
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class CreateAccessPointForObjectLambda
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class CreateBucket
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: nil,
          requires_account_id: nil,
          outpost_id: context.params[:outpost_id],
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class CreateJob
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class CreateMultiRegionAccessPoint
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteAccessPoint
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: context.params[:name],
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteAccessPointForObjectLambda
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteAccessPointPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: context.params[:name],
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteAccessPointPolicyForObjectLambda
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteBucket
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteBucketLifecycleConfiguration
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteBucketPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteBucketReplication
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteBucketTagging
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteJobTagging
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteMultiRegionAccessPoint
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeletePublicAccessBlock
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteStorageLensConfiguration
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DeleteStorageLensConfigurationTagging
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DescribeJob
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class DescribeMultiRegionAccessPointOperation
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetAccessPoint
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: context.params[:name],
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetAccessPointConfigurationForObjectLambda
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetAccessPointForObjectLambda
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetAccessPointPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: context.params[:name],
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetAccessPointPolicyForObjectLambda
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetAccessPointPolicyStatus
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: context.params[:name],
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetAccessPointPolicyStatusForObjectLambda
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetBucket
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetBucketLifecycleConfiguration
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetBucketPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetBucketReplication
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetBucketTagging
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetBucketVersioning
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetJobTagging
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetMultiRegionAccessPoint
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetMultiRegionAccessPointPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetMultiRegionAccessPointPolicyStatus
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetMultiRegionAccessPointRoutes
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetPublicAccessBlock
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetStorageLensConfiguration
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class GetStorageLensConfigurationTagging
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class ListAccessPoints
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class ListAccessPointsForObjectLambda
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class ListJobs
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class ListMultiRegionAccessPoints
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class ListRegionalBuckets
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: context.params[:outpost_id],
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class ListStorageLensConfigurations
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutAccessPointConfigurationForObjectLambda
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutAccessPointPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: context.params[:name],
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutAccessPointPolicyForObjectLambda
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutBucketLifecycleConfiguration
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutBucketPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutBucketReplication
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutBucketTagging
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutBucketVersioning
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: context.params[:bucket],
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutJobTagging
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutMultiRegionAccessPointPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutPublicAccessBlock
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutStorageLensConfiguration
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class PutStorageLensConfigurationTagging
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class SubmitMultiRegionAccessPointRoutes
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class UpdateJobPriority
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

    class UpdateJobStatus
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::S3Control::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context[:use_dualstack_endpoint],
          endpoint: endpoint,
          account_id: context.params[:account_id],
          requires_account_id: true,
          outpost_id: nil,
          bucket: nil,
          access_point_name: nil,
          use_arn_region: context.config.s3_use_arn_region,
        )
      end
    end

  end
end
