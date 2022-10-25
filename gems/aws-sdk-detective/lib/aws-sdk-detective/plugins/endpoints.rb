# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Detective
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Detective::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Detective::EndpointParameters`'
      ) do |cfg|
        Aws::Detective::EndpointProvider.new
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
          when :accept_invitation
            Aws::Detective::Endpoints::AcceptInvitation.build(context)
          when :batch_get_graph_member_datasources
            Aws::Detective::Endpoints::BatchGetGraphMemberDatasources.build(context)
          when :batch_get_membership_datasources
            Aws::Detective::Endpoints::BatchGetMembershipDatasources.build(context)
          when :create_graph
            Aws::Detective::Endpoints::CreateGraph.build(context)
          when :create_members
            Aws::Detective::Endpoints::CreateMembers.build(context)
          when :delete_graph
            Aws::Detective::Endpoints::DeleteGraph.build(context)
          when :delete_members
            Aws::Detective::Endpoints::DeleteMembers.build(context)
          when :describe_organization_configuration
            Aws::Detective::Endpoints::DescribeOrganizationConfiguration.build(context)
          when :disable_organization_admin_account
            Aws::Detective::Endpoints::DisableOrganizationAdminAccount.build(context)
          when :disassociate_membership
            Aws::Detective::Endpoints::DisassociateMembership.build(context)
          when :enable_organization_admin_account
            Aws::Detective::Endpoints::EnableOrganizationAdminAccount.build(context)
          when :get_members
            Aws::Detective::Endpoints::GetMembers.build(context)
          when :list_datasource_packages
            Aws::Detective::Endpoints::ListDatasourcePackages.build(context)
          when :list_graphs
            Aws::Detective::Endpoints::ListGraphs.build(context)
          when :list_invitations
            Aws::Detective::Endpoints::ListInvitations.build(context)
          when :list_members
            Aws::Detective::Endpoints::ListMembers.build(context)
          when :list_organization_admin_accounts
            Aws::Detective::Endpoints::ListOrganizationAdminAccounts.build(context)
          when :list_tags_for_resource
            Aws::Detective::Endpoints::ListTagsForResource.build(context)
          when :reject_invitation
            Aws::Detective::Endpoints::RejectInvitation.build(context)
          when :start_monitoring_member
            Aws::Detective::Endpoints::StartMonitoringMember.build(context)
          when :tag_resource
            Aws::Detective::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Detective::Endpoints::UntagResource.build(context)
          when :update_datasource_packages
            Aws::Detective::Endpoints::UpdateDatasourcePackages.build(context)
          when :update_organization_configuration
            Aws::Detective::Endpoints::UpdateOrganizationConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
