# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::S3
  module Endpoints

    class AbortMultipartUpload
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class CompleteMultipartUpload
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class CopyObject
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class CreateBucket
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: true,
          disable_mrap: nil,
        )
      end
    end

    class CreateMultipartUpload
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucket
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketAnalyticsConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketCors
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketEncryption
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketIntelligentTieringConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketInventoryConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketLifecycle
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketMetricsConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketOwnershipControls
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketPolicy
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketReplication
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketTagging
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteBucketWebsite
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteObject
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteObjectTagging
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeleteObjects
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class DeletePublicAccessBlock
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketAccelerateConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketAcl
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketAnalyticsConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketCors
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketEncryption
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketIntelligentTieringConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketInventoryConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketLifecycle
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketLifecycleConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketLocation
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketLogging
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketMetricsConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketNotification
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketNotificationConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketOwnershipControls
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketPolicy
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketPolicyStatus
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketReplication
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketRequestPayment
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketTagging
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketVersioning
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetBucketWebsite
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetObject
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetObjectAcl
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetObjectAttributes
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetObjectLegalHold
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetObjectLockConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetObjectRetention
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetObjectTagging
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetObjectTorrent
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class GetPublicAccessBlock
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class HeadBucket
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class HeadObject
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class ListBucketAnalyticsConfigurations
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class ListBucketIntelligentTieringConfigurations
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class ListBucketInventoryConfigurations
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: nil,
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class ListBucketMetricsConfigurations
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class ListBuckets
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: nil,
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class ListMultipartUploads
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class ListObjectVersions
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class ListObjects
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class ListObjectsV2
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class ListParts
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketAccelerateConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketAcl
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketAnalyticsConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: nil,
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketCors
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketEncryption
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketIntelligentTieringConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketInventoryConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketLifecycle
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketLifecycleConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketLogging
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketMetricsConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketNotification
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketNotificationConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketOwnershipControls
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketPolicy
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketReplication
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketRequestPayment
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketTagging
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketVersioning
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutBucketWebsite
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutObject
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutObjectAcl
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutObjectLegalHold
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutObjectLockConfiguration
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutObjectRetention
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutObjectTagging
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class PutPublicAccessBlock
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class RestoreObject
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class SelectObjectContent
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class UploadPart
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class UploadPartCopy
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: context.params[:bucket],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

    class WriteGetObjectResponse
      def self.build(context)
        # TODO: remove this hack
        unless config.regional_endpoint
          endpoint = config.endpoint.host
        end
        Aws::S3::EndpointParameters.new(
          bucket: nil,
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          force_path_style: nil,
          accelerate: nil,
          disable_access_points: nil,
          disable_mrap: nil,
        )
      end
    end

  end
end
