# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::RAM
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::RAM::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::RAM::EndpointParameters`'
      ) do |cfg|
        Aws::RAM::EndpointProvider.new
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
          when :accept_resource_share_invitation
            Aws::RAM::Endpoints::AcceptResourceShareInvitation.build(context)
          when :associate_resource_share
            Aws::RAM::Endpoints::AssociateResourceShare.build(context)
          when :associate_resource_share_permission
            Aws::RAM::Endpoints::AssociateResourceSharePermission.build(context)
          when :create_permission
            Aws::RAM::Endpoints::CreatePermission.build(context)
          when :create_permission_version
            Aws::RAM::Endpoints::CreatePermissionVersion.build(context)
          when :create_resource_share
            Aws::RAM::Endpoints::CreateResourceShare.build(context)
          when :delete_permission
            Aws::RAM::Endpoints::DeletePermission.build(context)
          when :delete_permission_version
            Aws::RAM::Endpoints::DeletePermissionVersion.build(context)
          when :delete_resource_share
            Aws::RAM::Endpoints::DeleteResourceShare.build(context)
          when :disassociate_resource_share
            Aws::RAM::Endpoints::DisassociateResourceShare.build(context)
          when :disassociate_resource_share_permission
            Aws::RAM::Endpoints::DisassociateResourceSharePermission.build(context)
          when :enable_sharing_with_aws_organization
            Aws::RAM::Endpoints::EnableSharingWithAwsOrganization.build(context)
          when :get_permission
            Aws::RAM::Endpoints::GetPermission.build(context)
          when :get_resource_policies
            Aws::RAM::Endpoints::GetResourcePolicies.build(context)
          when :get_resource_share_associations
            Aws::RAM::Endpoints::GetResourceShareAssociations.build(context)
          when :get_resource_share_invitations
            Aws::RAM::Endpoints::GetResourceShareInvitations.build(context)
          when :get_resource_shares
            Aws::RAM::Endpoints::GetResourceShares.build(context)
          when :list_pending_invitation_resources
            Aws::RAM::Endpoints::ListPendingInvitationResources.build(context)
          when :list_permission_associations
            Aws::RAM::Endpoints::ListPermissionAssociations.build(context)
          when :list_permission_versions
            Aws::RAM::Endpoints::ListPermissionVersions.build(context)
          when :list_permissions
            Aws::RAM::Endpoints::ListPermissions.build(context)
          when :list_principals
            Aws::RAM::Endpoints::ListPrincipals.build(context)
          when :list_replace_permission_associations_work
            Aws::RAM::Endpoints::ListReplacePermissionAssociationsWork.build(context)
          when :list_resource_share_permissions
            Aws::RAM::Endpoints::ListResourceSharePermissions.build(context)
          when :list_resource_types
            Aws::RAM::Endpoints::ListResourceTypes.build(context)
          when :list_resources
            Aws::RAM::Endpoints::ListResources.build(context)
          when :promote_permission_created_from_policy
            Aws::RAM::Endpoints::PromotePermissionCreatedFromPolicy.build(context)
          when :promote_resource_share_created_from_policy
            Aws::RAM::Endpoints::PromoteResourceShareCreatedFromPolicy.build(context)
          when :reject_resource_share_invitation
            Aws::RAM::Endpoints::RejectResourceShareInvitation.build(context)
          when :replace_permission_associations
            Aws::RAM::Endpoints::ReplacePermissionAssociations.build(context)
          when :set_default_permission_version
            Aws::RAM::Endpoints::SetDefaultPermissionVersion.build(context)
          when :tag_resource
            Aws::RAM::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::RAM::Endpoints::UntagResource.build(context)
          when :update_resource_share
            Aws::RAM::Endpoints::UpdateResourceShare.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
