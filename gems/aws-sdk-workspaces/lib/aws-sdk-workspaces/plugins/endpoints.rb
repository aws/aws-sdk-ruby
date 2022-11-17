# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WorkSpaces
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::WorkSpaces::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::WorkSpaces::EndpointParameters`'
      ) do |cfg|
        Aws::WorkSpaces::EndpointProvider.new
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
          when :associate_connection_alias
            Aws::WorkSpaces::Endpoints::AssociateConnectionAlias.build(context)
          when :associate_ip_groups
            Aws::WorkSpaces::Endpoints::AssociateIpGroups.build(context)
          when :authorize_ip_rules
            Aws::WorkSpaces::Endpoints::AuthorizeIpRules.build(context)
          when :copy_workspace_image
            Aws::WorkSpaces::Endpoints::CopyWorkspaceImage.build(context)
          when :create_connect_client_add_in
            Aws::WorkSpaces::Endpoints::CreateConnectClientAddIn.build(context)
          when :create_connection_alias
            Aws::WorkSpaces::Endpoints::CreateConnectionAlias.build(context)
          when :create_ip_group
            Aws::WorkSpaces::Endpoints::CreateIpGroup.build(context)
          when :create_standby_workspaces
            Aws::WorkSpaces::Endpoints::CreateStandbyWorkspaces.build(context)
          when :create_tags
            Aws::WorkSpaces::Endpoints::CreateTags.build(context)
          when :create_updated_workspace_image
            Aws::WorkSpaces::Endpoints::CreateUpdatedWorkspaceImage.build(context)
          when :create_workspace_bundle
            Aws::WorkSpaces::Endpoints::CreateWorkspaceBundle.build(context)
          when :create_workspace_image
            Aws::WorkSpaces::Endpoints::CreateWorkspaceImage.build(context)
          when :create_workspaces
            Aws::WorkSpaces::Endpoints::CreateWorkspaces.build(context)
          when :delete_client_branding
            Aws::WorkSpaces::Endpoints::DeleteClientBranding.build(context)
          when :delete_connect_client_add_in
            Aws::WorkSpaces::Endpoints::DeleteConnectClientAddIn.build(context)
          when :delete_connection_alias
            Aws::WorkSpaces::Endpoints::DeleteConnectionAlias.build(context)
          when :delete_ip_group
            Aws::WorkSpaces::Endpoints::DeleteIpGroup.build(context)
          when :delete_tags
            Aws::WorkSpaces::Endpoints::DeleteTags.build(context)
          when :delete_workspace_bundle
            Aws::WorkSpaces::Endpoints::DeleteWorkspaceBundle.build(context)
          when :delete_workspace_image
            Aws::WorkSpaces::Endpoints::DeleteWorkspaceImage.build(context)
          when :deregister_workspace_directory
            Aws::WorkSpaces::Endpoints::DeregisterWorkspaceDirectory.build(context)
          when :describe_account
            Aws::WorkSpaces::Endpoints::DescribeAccount.build(context)
          when :describe_account_modifications
            Aws::WorkSpaces::Endpoints::DescribeAccountModifications.build(context)
          when :describe_client_branding
            Aws::WorkSpaces::Endpoints::DescribeClientBranding.build(context)
          when :describe_client_properties
            Aws::WorkSpaces::Endpoints::DescribeClientProperties.build(context)
          when :describe_connect_client_add_ins
            Aws::WorkSpaces::Endpoints::DescribeConnectClientAddIns.build(context)
          when :describe_connection_alias_permissions
            Aws::WorkSpaces::Endpoints::DescribeConnectionAliasPermissions.build(context)
          when :describe_connection_aliases
            Aws::WorkSpaces::Endpoints::DescribeConnectionAliases.build(context)
          when :describe_ip_groups
            Aws::WorkSpaces::Endpoints::DescribeIpGroups.build(context)
          when :describe_tags
            Aws::WorkSpaces::Endpoints::DescribeTags.build(context)
          when :describe_workspace_bundles
            Aws::WorkSpaces::Endpoints::DescribeWorkspaceBundles.build(context)
          when :describe_workspace_directories
            Aws::WorkSpaces::Endpoints::DescribeWorkspaceDirectories.build(context)
          when :describe_workspace_image_permissions
            Aws::WorkSpaces::Endpoints::DescribeWorkspaceImagePermissions.build(context)
          when :describe_workspace_images
            Aws::WorkSpaces::Endpoints::DescribeWorkspaceImages.build(context)
          when :describe_workspace_snapshots
            Aws::WorkSpaces::Endpoints::DescribeWorkspaceSnapshots.build(context)
          when :describe_workspaces
            Aws::WorkSpaces::Endpoints::DescribeWorkspaces.build(context)
          when :describe_workspaces_connection_status
            Aws::WorkSpaces::Endpoints::DescribeWorkspacesConnectionStatus.build(context)
          when :disassociate_connection_alias
            Aws::WorkSpaces::Endpoints::DisassociateConnectionAlias.build(context)
          when :disassociate_ip_groups
            Aws::WorkSpaces::Endpoints::DisassociateIpGroups.build(context)
          when :import_client_branding
            Aws::WorkSpaces::Endpoints::ImportClientBranding.build(context)
          when :import_workspace_image
            Aws::WorkSpaces::Endpoints::ImportWorkspaceImage.build(context)
          when :list_available_management_cidr_ranges
            Aws::WorkSpaces::Endpoints::ListAvailableManagementCidrRanges.build(context)
          when :migrate_workspace
            Aws::WorkSpaces::Endpoints::MigrateWorkspace.build(context)
          when :modify_account
            Aws::WorkSpaces::Endpoints::ModifyAccount.build(context)
          when :modify_certificate_based_auth_properties
            Aws::WorkSpaces::Endpoints::ModifyCertificateBasedAuthProperties.build(context)
          when :modify_client_properties
            Aws::WorkSpaces::Endpoints::ModifyClientProperties.build(context)
          when :modify_saml_properties
            Aws::WorkSpaces::Endpoints::ModifySamlProperties.build(context)
          when :modify_selfservice_permissions
            Aws::WorkSpaces::Endpoints::ModifySelfservicePermissions.build(context)
          when :modify_workspace_access_properties
            Aws::WorkSpaces::Endpoints::ModifyWorkspaceAccessProperties.build(context)
          when :modify_workspace_creation_properties
            Aws::WorkSpaces::Endpoints::ModifyWorkspaceCreationProperties.build(context)
          when :modify_workspace_properties
            Aws::WorkSpaces::Endpoints::ModifyWorkspaceProperties.build(context)
          when :modify_workspace_state
            Aws::WorkSpaces::Endpoints::ModifyWorkspaceState.build(context)
          when :reboot_workspaces
            Aws::WorkSpaces::Endpoints::RebootWorkspaces.build(context)
          when :rebuild_workspaces
            Aws::WorkSpaces::Endpoints::RebuildWorkspaces.build(context)
          when :register_workspace_directory
            Aws::WorkSpaces::Endpoints::RegisterWorkspaceDirectory.build(context)
          when :restore_workspace
            Aws::WorkSpaces::Endpoints::RestoreWorkspace.build(context)
          when :revoke_ip_rules
            Aws::WorkSpaces::Endpoints::RevokeIpRules.build(context)
          when :start_workspaces
            Aws::WorkSpaces::Endpoints::StartWorkspaces.build(context)
          when :stop_workspaces
            Aws::WorkSpaces::Endpoints::StopWorkspaces.build(context)
          when :terminate_workspaces
            Aws::WorkSpaces::Endpoints::TerminateWorkspaces.build(context)
          when :update_connect_client_add_in
            Aws::WorkSpaces::Endpoints::UpdateConnectClientAddIn.build(context)
          when :update_connection_alias_permission
            Aws::WorkSpaces::Endpoints::UpdateConnectionAliasPermission.build(context)
          when :update_rules_of_ip_group
            Aws::WorkSpaces::Endpoints::UpdateRulesOfIpGroup.build(context)
          when :update_workspace_bundle
            Aws::WorkSpaces::Endpoints::UpdateWorkspaceBundle.build(context)
          when :update_workspace_image_permission
            Aws::WorkSpaces::Endpoints::UpdateWorkspaceImagePermission.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
