# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeArtifact
  # @api private
  module Endpoints

    class AssociateExternalConnection
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class CopyPackageVersions
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class CreateDomain
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class CreateRepository
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteDomain
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteDomainPermissionsPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeletePackage
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeletePackageVersions
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteRepository
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteRepositoryPermissionsPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DescribeDomain
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DescribePackage
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DescribePackageVersion
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DescribeRepository
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DisassociateExternalConnection
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DisposePackageVersions
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetAuthorizationToken
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetDomainPermissionsPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetPackageVersionAsset
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetPackageVersionReadme
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetRepositoryEndpoint
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetRepositoryPermissionsPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListDomains
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListPackageVersionAssets
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListPackageVersionDependencies
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListPackageVersions
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListPackages
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListRepositories
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListRepositoriesInDomain
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
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
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class PublishPackageVersion
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class PutDomainPermissionsPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class PutPackageOriginConfiguration
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class PutRepositoryPermissionsPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
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
        Aws::CodeArtifact::EndpointParameters.new(
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
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class UpdatePackageVersionsStatus
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class UpdateRepository
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeArtifact::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

  end
end
