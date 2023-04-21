# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::FMS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::FMS::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::FMS::EndpointParameters`'
      ) do |cfg|
        Aws::FMS::EndpointProvider.new
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
          when :associate_admin_account
            Aws::FMS::Endpoints::AssociateAdminAccount.build(context)
          when :associate_third_party_firewall
            Aws::FMS::Endpoints::AssociateThirdPartyFirewall.build(context)
          when :batch_associate_resource
            Aws::FMS::Endpoints::BatchAssociateResource.build(context)
          when :batch_disassociate_resource
            Aws::FMS::Endpoints::BatchDisassociateResource.build(context)
          when :delete_apps_list
            Aws::FMS::Endpoints::DeleteAppsList.build(context)
          when :delete_notification_channel
            Aws::FMS::Endpoints::DeleteNotificationChannel.build(context)
          when :delete_policy
            Aws::FMS::Endpoints::DeletePolicy.build(context)
          when :delete_protocols_list
            Aws::FMS::Endpoints::DeleteProtocolsList.build(context)
          when :delete_resource_set
            Aws::FMS::Endpoints::DeleteResourceSet.build(context)
          when :disassociate_admin_account
            Aws::FMS::Endpoints::DisassociateAdminAccount.build(context)
          when :disassociate_third_party_firewall
            Aws::FMS::Endpoints::DisassociateThirdPartyFirewall.build(context)
          when :get_admin_account
            Aws::FMS::Endpoints::GetAdminAccount.build(context)
          when :get_admin_scope
            Aws::FMS::Endpoints::GetAdminScope.build(context)
          when :get_apps_list
            Aws::FMS::Endpoints::GetAppsList.build(context)
          when :get_compliance_detail
            Aws::FMS::Endpoints::GetComplianceDetail.build(context)
          when :get_notification_channel
            Aws::FMS::Endpoints::GetNotificationChannel.build(context)
          when :get_policy
            Aws::FMS::Endpoints::GetPolicy.build(context)
          when :get_protection_status
            Aws::FMS::Endpoints::GetProtectionStatus.build(context)
          when :get_protocols_list
            Aws::FMS::Endpoints::GetProtocolsList.build(context)
          when :get_resource_set
            Aws::FMS::Endpoints::GetResourceSet.build(context)
          when :get_third_party_firewall_association_status
            Aws::FMS::Endpoints::GetThirdPartyFirewallAssociationStatus.build(context)
          when :get_violation_details
            Aws::FMS::Endpoints::GetViolationDetails.build(context)
          when :list_admin_accounts_for_organization
            Aws::FMS::Endpoints::ListAdminAccountsForOrganization.build(context)
          when :list_admins_managing_account
            Aws::FMS::Endpoints::ListAdminsManagingAccount.build(context)
          when :list_apps_lists
            Aws::FMS::Endpoints::ListAppsLists.build(context)
          when :list_compliance_status
            Aws::FMS::Endpoints::ListComplianceStatus.build(context)
          when :list_discovered_resources
            Aws::FMS::Endpoints::ListDiscoveredResources.build(context)
          when :list_member_accounts
            Aws::FMS::Endpoints::ListMemberAccounts.build(context)
          when :list_policies
            Aws::FMS::Endpoints::ListPolicies.build(context)
          when :list_protocols_lists
            Aws::FMS::Endpoints::ListProtocolsLists.build(context)
          when :list_resource_set_resources
            Aws::FMS::Endpoints::ListResourceSetResources.build(context)
          when :list_resource_sets
            Aws::FMS::Endpoints::ListResourceSets.build(context)
          when :list_tags_for_resource
            Aws::FMS::Endpoints::ListTagsForResource.build(context)
          when :list_third_party_firewall_firewall_policies
            Aws::FMS::Endpoints::ListThirdPartyFirewallFirewallPolicies.build(context)
          when :put_admin_account
            Aws::FMS::Endpoints::PutAdminAccount.build(context)
          when :put_apps_list
            Aws::FMS::Endpoints::PutAppsList.build(context)
          when :put_notification_channel
            Aws::FMS::Endpoints::PutNotificationChannel.build(context)
          when :put_policy
            Aws::FMS::Endpoints::PutPolicy.build(context)
          when :put_protocols_list
            Aws::FMS::Endpoints::PutProtocolsList.build(context)
          when :put_resource_set
            Aws::FMS::Endpoints::PutResourceSet.build(context)
          when :tag_resource
            Aws::FMS::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::FMS::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
