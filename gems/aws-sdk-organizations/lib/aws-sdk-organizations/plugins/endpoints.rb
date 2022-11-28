# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Organizations
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Organizations::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Organizations::EndpointParameters`'
      ) do |cfg|
        Aws::Organizations::EndpointProvider.new
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
          when :accept_handshake
            Aws::Organizations::Endpoints::AcceptHandshake.build(context)
          when :attach_policy
            Aws::Organizations::Endpoints::AttachPolicy.build(context)
          when :cancel_handshake
            Aws::Organizations::Endpoints::CancelHandshake.build(context)
          when :close_account
            Aws::Organizations::Endpoints::CloseAccount.build(context)
          when :create_account
            Aws::Organizations::Endpoints::CreateAccount.build(context)
          when :create_gov_cloud_account
            Aws::Organizations::Endpoints::CreateGovCloudAccount.build(context)
          when :create_organization
            Aws::Organizations::Endpoints::CreateOrganization.build(context)
          when :create_organizational_unit
            Aws::Organizations::Endpoints::CreateOrganizationalUnit.build(context)
          when :create_policy
            Aws::Organizations::Endpoints::CreatePolicy.build(context)
          when :decline_handshake
            Aws::Organizations::Endpoints::DeclineHandshake.build(context)
          when :delete_organization
            Aws::Organizations::Endpoints::DeleteOrganization.build(context)
          when :delete_organizational_unit
            Aws::Organizations::Endpoints::DeleteOrganizationalUnit.build(context)
          when :delete_policy
            Aws::Organizations::Endpoints::DeletePolicy.build(context)
          when :delete_resource_policy
            Aws::Organizations::Endpoints::DeleteResourcePolicy.build(context)
          when :deregister_delegated_administrator
            Aws::Organizations::Endpoints::DeregisterDelegatedAdministrator.build(context)
          when :describe_account
            Aws::Organizations::Endpoints::DescribeAccount.build(context)
          when :describe_create_account_status
            Aws::Organizations::Endpoints::DescribeCreateAccountStatus.build(context)
          when :describe_effective_policy
            Aws::Organizations::Endpoints::DescribeEffectivePolicy.build(context)
          when :describe_handshake
            Aws::Organizations::Endpoints::DescribeHandshake.build(context)
          when :describe_organization
            Aws::Organizations::Endpoints::DescribeOrganization.build(context)
          when :describe_organizational_unit
            Aws::Organizations::Endpoints::DescribeOrganizationalUnit.build(context)
          when :describe_policy
            Aws::Organizations::Endpoints::DescribePolicy.build(context)
          when :describe_resource_policy
            Aws::Organizations::Endpoints::DescribeResourcePolicy.build(context)
          when :detach_policy
            Aws::Organizations::Endpoints::DetachPolicy.build(context)
          when :disable_aws_service_access
            Aws::Organizations::Endpoints::DisableAWSServiceAccess.build(context)
          when :disable_policy_type
            Aws::Organizations::Endpoints::DisablePolicyType.build(context)
          when :enable_aws_service_access
            Aws::Organizations::Endpoints::EnableAWSServiceAccess.build(context)
          when :enable_all_features
            Aws::Organizations::Endpoints::EnableAllFeatures.build(context)
          when :enable_policy_type
            Aws::Organizations::Endpoints::EnablePolicyType.build(context)
          when :invite_account_to_organization
            Aws::Organizations::Endpoints::InviteAccountToOrganization.build(context)
          when :leave_organization
            Aws::Organizations::Endpoints::LeaveOrganization.build(context)
          when :list_aws_service_access_for_organization
            Aws::Organizations::Endpoints::ListAWSServiceAccessForOrganization.build(context)
          when :list_accounts
            Aws::Organizations::Endpoints::ListAccounts.build(context)
          when :list_accounts_for_parent
            Aws::Organizations::Endpoints::ListAccountsForParent.build(context)
          when :list_children
            Aws::Organizations::Endpoints::ListChildren.build(context)
          when :list_create_account_status
            Aws::Organizations::Endpoints::ListCreateAccountStatus.build(context)
          when :list_delegated_administrators
            Aws::Organizations::Endpoints::ListDelegatedAdministrators.build(context)
          when :list_delegated_services_for_account
            Aws::Organizations::Endpoints::ListDelegatedServicesForAccount.build(context)
          when :list_handshakes_for_account
            Aws::Organizations::Endpoints::ListHandshakesForAccount.build(context)
          when :list_handshakes_for_organization
            Aws::Organizations::Endpoints::ListHandshakesForOrganization.build(context)
          when :list_organizational_units_for_parent
            Aws::Organizations::Endpoints::ListOrganizationalUnitsForParent.build(context)
          when :list_parents
            Aws::Organizations::Endpoints::ListParents.build(context)
          when :list_policies
            Aws::Organizations::Endpoints::ListPolicies.build(context)
          when :list_policies_for_target
            Aws::Organizations::Endpoints::ListPoliciesForTarget.build(context)
          when :list_roots
            Aws::Organizations::Endpoints::ListRoots.build(context)
          when :list_tags_for_resource
            Aws::Organizations::Endpoints::ListTagsForResource.build(context)
          when :list_targets_for_policy
            Aws::Organizations::Endpoints::ListTargetsForPolicy.build(context)
          when :move_account
            Aws::Organizations::Endpoints::MoveAccount.build(context)
          when :put_resource_policy
            Aws::Organizations::Endpoints::PutResourcePolicy.build(context)
          when :register_delegated_administrator
            Aws::Organizations::Endpoints::RegisterDelegatedAdministrator.build(context)
          when :remove_account_from_organization
            Aws::Organizations::Endpoints::RemoveAccountFromOrganization.build(context)
          when :tag_resource
            Aws::Organizations::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Organizations::Endpoints::UntagResource.build(context)
          when :update_organizational_unit
            Aws::Organizations::Endpoints::UpdateOrganizationalUnit.build(context)
          when :update_policy
            Aws::Organizations::Endpoints::UpdatePolicy.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
