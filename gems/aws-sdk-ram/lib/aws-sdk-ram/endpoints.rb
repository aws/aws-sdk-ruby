# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::RAM
  # @api private
  module Endpoints

    class AcceptResourceShareInvitation
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class AssociateResourceShare
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class AssociateResourceSharePermission
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class CreatePermission
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class CreatePermissionVersion
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class CreateResourceShare
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeletePermission
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeletePermissionVersion
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteResourceShare
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DisassociateResourceShare
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DisassociateResourceSharePermission
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class EnableSharingWithAwsOrganization
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetPermission
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetResourcePolicies
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetResourceShareAssociations
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetResourceShareInvitations
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetResourceShares
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListPendingInvitationResources
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListPermissionAssociations
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListPermissionVersions
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListPermissions
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListPrincipals
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListReplacePermissionAssociationsWork
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListResourceSharePermissions
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListResourceTypes
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListResources
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class PromotePermissionCreatedFromPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class PromoteResourceShareCreatedFromPolicy
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class RejectResourceShareInvitation
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ReplacePermissionAssociations
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class SetDefaultPermissionVersion
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
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
        Aws::RAM::EndpointParameters.new(
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
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class UpdateResourceShare
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::RAM::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

  end
end
