# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GreengrassV2
  # @api private
  module Endpoints

    class AssociateServiceRoleToAccount
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class BatchAssociateClientDeviceWithCoreDevice
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class BatchDisassociateClientDeviceFromCoreDevice
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class CancelDeployment
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class CreateComponentVersion
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class CreateDeployment
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteComponent
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteCoreDevice
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteDeployment
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DescribeComponent
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DisassociateServiceRoleFromAccount
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetComponent
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetComponentVersionArtifact
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetConnectivityInfo
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetCoreDevice
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetDeployment
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetServiceRoleForAccount
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListClientDevicesAssociatedWithCoreDevice
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListComponentVersions
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListComponents
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListCoreDevices
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListDeployments
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListEffectiveDeployments
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListInstalledComponents
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ResolveComponentCandidates
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class TagResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class UntagResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class UpdateConnectivityInfo
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::GreengrassV2::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

  end
end
