# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SSOAdmin
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SSOAdmin::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SSOAdmin::EndpointParameters`'
      ) do |cfg|
        Aws::SSOAdmin::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

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
          when :attach_customer_managed_policy_reference_to_permission_set
            Aws::SSOAdmin::Endpoints::AttachCustomerManagedPolicyReferenceToPermissionSet.build(context)
          when :attach_managed_policy_to_permission_set
            Aws::SSOAdmin::Endpoints::AttachManagedPolicyToPermissionSet.build(context)
          when :create_account_assignment
            Aws::SSOAdmin::Endpoints::CreateAccountAssignment.build(context)
          when :create_application
            Aws::SSOAdmin::Endpoints::CreateApplication.build(context)
          when :create_application_assignment
            Aws::SSOAdmin::Endpoints::CreateApplicationAssignment.build(context)
          when :create_instance
            Aws::SSOAdmin::Endpoints::CreateInstance.build(context)
          when :create_instance_access_control_attribute_configuration
            Aws::SSOAdmin::Endpoints::CreateInstanceAccessControlAttributeConfiguration.build(context)
          when :create_permission_set
            Aws::SSOAdmin::Endpoints::CreatePermissionSet.build(context)
          when :create_trusted_token_issuer
            Aws::SSOAdmin::Endpoints::CreateTrustedTokenIssuer.build(context)
          when :delete_account_assignment
            Aws::SSOAdmin::Endpoints::DeleteAccountAssignment.build(context)
          when :delete_application
            Aws::SSOAdmin::Endpoints::DeleteApplication.build(context)
          when :delete_application_access_scope
            Aws::SSOAdmin::Endpoints::DeleteApplicationAccessScope.build(context)
          when :delete_application_assignment
            Aws::SSOAdmin::Endpoints::DeleteApplicationAssignment.build(context)
          when :delete_application_authentication_method
            Aws::SSOAdmin::Endpoints::DeleteApplicationAuthenticationMethod.build(context)
          when :delete_application_grant
            Aws::SSOAdmin::Endpoints::DeleteApplicationGrant.build(context)
          when :delete_inline_policy_from_permission_set
            Aws::SSOAdmin::Endpoints::DeleteInlinePolicyFromPermissionSet.build(context)
          when :delete_instance
            Aws::SSOAdmin::Endpoints::DeleteInstance.build(context)
          when :delete_instance_access_control_attribute_configuration
            Aws::SSOAdmin::Endpoints::DeleteInstanceAccessControlAttributeConfiguration.build(context)
          when :delete_permission_set
            Aws::SSOAdmin::Endpoints::DeletePermissionSet.build(context)
          when :delete_permissions_boundary_from_permission_set
            Aws::SSOAdmin::Endpoints::DeletePermissionsBoundaryFromPermissionSet.build(context)
          when :delete_trusted_token_issuer
            Aws::SSOAdmin::Endpoints::DeleteTrustedTokenIssuer.build(context)
          when :describe_account_assignment_creation_status
            Aws::SSOAdmin::Endpoints::DescribeAccountAssignmentCreationStatus.build(context)
          when :describe_account_assignment_deletion_status
            Aws::SSOAdmin::Endpoints::DescribeAccountAssignmentDeletionStatus.build(context)
          when :describe_application
            Aws::SSOAdmin::Endpoints::DescribeApplication.build(context)
          when :describe_application_assignment
            Aws::SSOAdmin::Endpoints::DescribeApplicationAssignment.build(context)
          when :describe_application_provider
            Aws::SSOAdmin::Endpoints::DescribeApplicationProvider.build(context)
          when :describe_instance
            Aws::SSOAdmin::Endpoints::DescribeInstance.build(context)
          when :describe_instance_access_control_attribute_configuration
            Aws::SSOAdmin::Endpoints::DescribeInstanceAccessControlAttributeConfiguration.build(context)
          when :describe_permission_set
            Aws::SSOAdmin::Endpoints::DescribePermissionSet.build(context)
          when :describe_permission_set_provisioning_status
            Aws::SSOAdmin::Endpoints::DescribePermissionSetProvisioningStatus.build(context)
          when :describe_trusted_token_issuer
            Aws::SSOAdmin::Endpoints::DescribeTrustedTokenIssuer.build(context)
          when :detach_customer_managed_policy_reference_from_permission_set
            Aws::SSOAdmin::Endpoints::DetachCustomerManagedPolicyReferenceFromPermissionSet.build(context)
          when :detach_managed_policy_from_permission_set
            Aws::SSOAdmin::Endpoints::DetachManagedPolicyFromPermissionSet.build(context)
          when :get_application_access_scope
            Aws::SSOAdmin::Endpoints::GetApplicationAccessScope.build(context)
          when :get_application_assignment_configuration
            Aws::SSOAdmin::Endpoints::GetApplicationAssignmentConfiguration.build(context)
          when :get_application_authentication_method
            Aws::SSOAdmin::Endpoints::GetApplicationAuthenticationMethod.build(context)
          when :get_application_grant
            Aws::SSOAdmin::Endpoints::GetApplicationGrant.build(context)
          when :get_inline_policy_for_permission_set
            Aws::SSOAdmin::Endpoints::GetInlinePolicyForPermissionSet.build(context)
          when :get_permissions_boundary_for_permission_set
            Aws::SSOAdmin::Endpoints::GetPermissionsBoundaryForPermissionSet.build(context)
          when :list_account_assignment_creation_status
            Aws::SSOAdmin::Endpoints::ListAccountAssignmentCreationStatus.build(context)
          when :list_account_assignment_deletion_status
            Aws::SSOAdmin::Endpoints::ListAccountAssignmentDeletionStatus.build(context)
          when :list_account_assignments
            Aws::SSOAdmin::Endpoints::ListAccountAssignments.build(context)
          when :list_account_assignments_for_principal
            Aws::SSOAdmin::Endpoints::ListAccountAssignmentsForPrincipal.build(context)
          when :list_accounts_for_provisioned_permission_set
            Aws::SSOAdmin::Endpoints::ListAccountsForProvisionedPermissionSet.build(context)
          when :list_application_access_scopes
            Aws::SSOAdmin::Endpoints::ListApplicationAccessScopes.build(context)
          when :list_application_assignments
            Aws::SSOAdmin::Endpoints::ListApplicationAssignments.build(context)
          when :list_application_assignments_for_principal
            Aws::SSOAdmin::Endpoints::ListApplicationAssignmentsForPrincipal.build(context)
          when :list_application_authentication_methods
            Aws::SSOAdmin::Endpoints::ListApplicationAuthenticationMethods.build(context)
          when :list_application_grants
            Aws::SSOAdmin::Endpoints::ListApplicationGrants.build(context)
          when :list_application_providers
            Aws::SSOAdmin::Endpoints::ListApplicationProviders.build(context)
          when :list_applications
            Aws::SSOAdmin::Endpoints::ListApplications.build(context)
          when :list_customer_managed_policy_references_in_permission_set
            Aws::SSOAdmin::Endpoints::ListCustomerManagedPolicyReferencesInPermissionSet.build(context)
          when :list_instances
            Aws::SSOAdmin::Endpoints::ListInstances.build(context)
          when :list_managed_policies_in_permission_set
            Aws::SSOAdmin::Endpoints::ListManagedPoliciesInPermissionSet.build(context)
          when :list_permission_set_provisioning_status
            Aws::SSOAdmin::Endpoints::ListPermissionSetProvisioningStatus.build(context)
          when :list_permission_sets
            Aws::SSOAdmin::Endpoints::ListPermissionSets.build(context)
          when :list_permission_sets_provisioned_to_account
            Aws::SSOAdmin::Endpoints::ListPermissionSetsProvisionedToAccount.build(context)
          when :list_tags_for_resource
            Aws::SSOAdmin::Endpoints::ListTagsForResource.build(context)
          when :list_trusted_token_issuers
            Aws::SSOAdmin::Endpoints::ListTrustedTokenIssuers.build(context)
          when :provision_permission_set
            Aws::SSOAdmin::Endpoints::ProvisionPermissionSet.build(context)
          when :put_application_access_scope
            Aws::SSOAdmin::Endpoints::PutApplicationAccessScope.build(context)
          when :put_application_assignment_configuration
            Aws::SSOAdmin::Endpoints::PutApplicationAssignmentConfiguration.build(context)
          when :put_application_authentication_method
            Aws::SSOAdmin::Endpoints::PutApplicationAuthenticationMethod.build(context)
          when :put_application_grant
            Aws::SSOAdmin::Endpoints::PutApplicationGrant.build(context)
          when :put_inline_policy_to_permission_set
            Aws::SSOAdmin::Endpoints::PutInlinePolicyToPermissionSet.build(context)
          when :put_permissions_boundary_to_permission_set
            Aws::SSOAdmin::Endpoints::PutPermissionsBoundaryToPermissionSet.build(context)
          when :tag_resource
            Aws::SSOAdmin::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::SSOAdmin::Endpoints::UntagResource.build(context)
          when :update_application
            Aws::SSOAdmin::Endpoints::UpdateApplication.build(context)
          when :update_instance
            Aws::SSOAdmin::Endpoints::UpdateInstance.build(context)
          when :update_instance_access_control_attribute_configuration
            Aws::SSOAdmin::Endpoints::UpdateInstanceAccessControlAttributeConfiguration.build(context)
          when :update_permission_set
            Aws::SSOAdmin::Endpoints::UpdatePermissionSet.build(context)
          when :update_trusted_token_issuer
            Aws::SSOAdmin::Endpoints::UpdateTrustedTokenIssuer.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
