# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IAM
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IAM::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IAM::EndpointParameters`'
      ) do |cfg|
        Aws::IAM::EndpointProvider.new
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
          when :add_client_id_to_open_id_connect_provider
            Aws::IAM::Endpoints::AddClientIDToOpenIDConnectProvider.build(context)
          when :add_role_to_instance_profile
            Aws::IAM::Endpoints::AddRoleToInstanceProfile.build(context)
          when :add_user_to_group
            Aws::IAM::Endpoints::AddUserToGroup.build(context)
          when :attach_group_policy
            Aws::IAM::Endpoints::AttachGroupPolicy.build(context)
          when :attach_role_policy
            Aws::IAM::Endpoints::AttachRolePolicy.build(context)
          when :attach_user_policy
            Aws::IAM::Endpoints::AttachUserPolicy.build(context)
          when :change_password
            Aws::IAM::Endpoints::ChangePassword.build(context)
          when :create_access_key
            Aws::IAM::Endpoints::CreateAccessKey.build(context)
          when :create_account_alias
            Aws::IAM::Endpoints::CreateAccountAlias.build(context)
          when :create_group
            Aws::IAM::Endpoints::CreateGroup.build(context)
          when :create_instance_profile
            Aws::IAM::Endpoints::CreateInstanceProfile.build(context)
          when :create_login_profile
            Aws::IAM::Endpoints::CreateLoginProfile.build(context)
          when :create_open_id_connect_provider
            Aws::IAM::Endpoints::CreateOpenIDConnectProvider.build(context)
          when :create_policy
            Aws::IAM::Endpoints::CreatePolicy.build(context)
          when :create_policy_version
            Aws::IAM::Endpoints::CreatePolicyVersion.build(context)
          when :create_role
            Aws::IAM::Endpoints::CreateRole.build(context)
          when :create_saml_provider
            Aws::IAM::Endpoints::CreateSAMLProvider.build(context)
          when :create_service_linked_role
            Aws::IAM::Endpoints::CreateServiceLinkedRole.build(context)
          when :create_service_specific_credential
            Aws::IAM::Endpoints::CreateServiceSpecificCredential.build(context)
          when :create_user
            Aws::IAM::Endpoints::CreateUser.build(context)
          when :create_virtual_mfa_device
            Aws::IAM::Endpoints::CreateVirtualMFADevice.build(context)
          when :deactivate_mfa_device
            Aws::IAM::Endpoints::DeactivateMFADevice.build(context)
          when :delete_access_key
            Aws::IAM::Endpoints::DeleteAccessKey.build(context)
          when :delete_account_alias
            Aws::IAM::Endpoints::DeleteAccountAlias.build(context)
          when :delete_account_password_policy
            Aws::IAM::Endpoints::DeleteAccountPasswordPolicy.build(context)
          when :delete_group
            Aws::IAM::Endpoints::DeleteGroup.build(context)
          when :delete_group_policy
            Aws::IAM::Endpoints::DeleteGroupPolicy.build(context)
          when :delete_instance_profile
            Aws::IAM::Endpoints::DeleteInstanceProfile.build(context)
          when :delete_login_profile
            Aws::IAM::Endpoints::DeleteLoginProfile.build(context)
          when :delete_open_id_connect_provider
            Aws::IAM::Endpoints::DeleteOpenIDConnectProvider.build(context)
          when :delete_policy
            Aws::IAM::Endpoints::DeletePolicy.build(context)
          when :delete_policy_version
            Aws::IAM::Endpoints::DeletePolicyVersion.build(context)
          when :delete_role
            Aws::IAM::Endpoints::DeleteRole.build(context)
          when :delete_role_permissions_boundary
            Aws::IAM::Endpoints::DeleteRolePermissionsBoundary.build(context)
          when :delete_role_policy
            Aws::IAM::Endpoints::DeleteRolePolicy.build(context)
          when :delete_saml_provider
            Aws::IAM::Endpoints::DeleteSAMLProvider.build(context)
          when :delete_ssh_public_key
            Aws::IAM::Endpoints::DeleteSSHPublicKey.build(context)
          when :delete_server_certificate
            Aws::IAM::Endpoints::DeleteServerCertificate.build(context)
          when :delete_service_linked_role
            Aws::IAM::Endpoints::DeleteServiceLinkedRole.build(context)
          when :delete_service_specific_credential
            Aws::IAM::Endpoints::DeleteServiceSpecificCredential.build(context)
          when :delete_signing_certificate
            Aws::IAM::Endpoints::DeleteSigningCertificate.build(context)
          when :delete_user
            Aws::IAM::Endpoints::DeleteUser.build(context)
          when :delete_user_permissions_boundary
            Aws::IAM::Endpoints::DeleteUserPermissionsBoundary.build(context)
          when :delete_user_policy
            Aws::IAM::Endpoints::DeleteUserPolicy.build(context)
          when :delete_virtual_mfa_device
            Aws::IAM::Endpoints::DeleteVirtualMFADevice.build(context)
          when :detach_group_policy
            Aws::IAM::Endpoints::DetachGroupPolicy.build(context)
          when :detach_role_policy
            Aws::IAM::Endpoints::DetachRolePolicy.build(context)
          when :detach_user_policy
            Aws::IAM::Endpoints::DetachUserPolicy.build(context)
          when :enable_mfa_device
            Aws::IAM::Endpoints::EnableMFADevice.build(context)
          when :generate_credential_report
            Aws::IAM::Endpoints::GenerateCredentialReport.build(context)
          when :generate_organizations_access_report
            Aws::IAM::Endpoints::GenerateOrganizationsAccessReport.build(context)
          when :generate_service_last_accessed_details
            Aws::IAM::Endpoints::GenerateServiceLastAccessedDetails.build(context)
          when :get_access_key_last_used
            Aws::IAM::Endpoints::GetAccessKeyLastUsed.build(context)
          when :get_account_authorization_details
            Aws::IAM::Endpoints::GetAccountAuthorizationDetails.build(context)
          when :get_account_password_policy
            Aws::IAM::Endpoints::GetAccountPasswordPolicy.build(context)
          when :get_account_summary
            Aws::IAM::Endpoints::GetAccountSummary.build(context)
          when :get_context_keys_for_custom_policy
            Aws::IAM::Endpoints::GetContextKeysForCustomPolicy.build(context)
          when :get_context_keys_for_principal_policy
            Aws::IAM::Endpoints::GetContextKeysForPrincipalPolicy.build(context)
          when :get_credential_report
            Aws::IAM::Endpoints::GetCredentialReport.build(context)
          when :get_group
            Aws::IAM::Endpoints::GetGroup.build(context)
          when :get_group_policy
            Aws::IAM::Endpoints::GetGroupPolicy.build(context)
          when :get_instance_profile
            Aws::IAM::Endpoints::GetInstanceProfile.build(context)
          when :get_login_profile
            Aws::IAM::Endpoints::GetLoginProfile.build(context)
          when :get_mfa_device
            Aws::IAM::Endpoints::GetMFADevice.build(context)
          when :get_open_id_connect_provider
            Aws::IAM::Endpoints::GetOpenIDConnectProvider.build(context)
          when :get_organizations_access_report
            Aws::IAM::Endpoints::GetOrganizationsAccessReport.build(context)
          when :get_policy
            Aws::IAM::Endpoints::GetPolicy.build(context)
          when :get_policy_version
            Aws::IAM::Endpoints::GetPolicyVersion.build(context)
          when :get_role
            Aws::IAM::Endpoints::GetRole.build(context)
          when :get_role_policy
            Aws::IAM::Endpoints::GetRolePolicy.build(context)
          when :get_saml_provider
            Aws::IAM::Endpoints::GetSAMLProvider.build(context)
          when :get_ssh_public_key
            Aws::IAM::Endpoints::GetSSHPublicKey.build(context)
          when :get_server_certificate
            Aws::IAM::Endpoints::GetServerCertificate.build(context)
          when :get_service_last_accessed_details
            Aws::IAM::Endpoints::GetServiceLastAccessedDetails.build(context)
          when :get_service_last_accessed_details_with_entities
            Aws::IAM::Endpoints::GetServiceLastAccessedDetailsWithEntities.build(context)
          when :get_service_linked_role_deletion_status
            Aws::IAM::Endpoints::GetServiceLinkedRoleDeletionStatus.build(context)
          when :get_user
            Aws::IAM::Endpoints::GetUser.build(context)
          when :get_user_policy
            Aws::IAM::Endpoints::GetUserPolicy.build(context)
          when :list_access_keys
            Aws::IAM::Endpoints::ListAccessKeys.build(context)
          when :list_account_aliases
            Aws::IAM::Endpoints::ListAccountAliases.build(context)
          when :list_attached_group_policies
            Aws::IAM::Endpoints::ListAttachedGroupPolicies.build(context)
          when :list_attached_role_policies
            Aws::IAM::Endpoints::ListAttachedRolePolicies.build(context)
          when :list_attached_user_policies
            Aws::IAM::Endpoints::ListAttachedUserPolicies.build(context)
          when :list_entities_for_policy
            Aws::IAM::Endpoints::ListEntitiesForPolicy.build(context)
          when :list_group_policies
            Aws::IAM::Endpoints::ListGroupPolicies.build(context)
          when :list_groups
            Aws::IAM::Endpoints::ListGroups.build(context)
          when :list_groups_for_user
            Aws::IAM::Endpoints::ListGroupsForUser.build(context)
          when :list_instance_profile_tags
            Aws::IAM::Endpoints::ListInstanceProfileTags.build(context)
          when :list_instance_profiles
            Aws::IAM::Endpoints::ListInstanceProfiles.build(context)
          when :list_instance_profiles_for_role
            Aws::IAM::Endpoints::ListInstanceProfilesForRole.build(context)
          when :list_mfa_device_tags
            Aws::IAM::Endpoints::ListMFADeviceTags.build(context)
          when :list_mfa_devices
            Aws::IAM::Endpoints::ListMFADevices.build(context)
          when :list_open_id_connect_provider_tags
            Aws::IAM::Endpoints::ListOpenIDConnectProviderTags.build(context)
          when :list_open_id_connect_providers
            Aws::IAM::Endpoints::ListOpenIDConnectProviders.build(context)
          when :list_policies
            Aws::IAM::Endpoints::ListPolicies.build(context)
          when :list_policies_granting_service_access
            Aws::IAM::Endpoints::ListPoliciesGrantingServiceAccess.build(context)
          when :list_policy_tags
            Aws::IAM::Endpoints::ListPolicyTags.build(context)
          when :list_policy_versions
            Aws::IAM::Endpoints::ListPolicyVersions.build(context)
          when :list_role_policies
            Aws::IAM::Endpoints::ListRolePolicies.build(context)
          when :list_role_tags
            Aws::IAM::Endpoints::ListRoleTags.build(context)
          when :list_roles
            Aws::IAM::Endpoints::ListRoles.build(context)
          when :list_saml_provider_tags
            Aws::IAM::Endpoints::ListSAMLProviderTags.build(context)
          when :list_saml_providers
            Aws::IAM::Endpoints::ListSAMLProviders.build(context)
          when :list_ssh_public_keys
            Aws::IAM::Endpoints::ListSSHPublicKeys.build(context)
          when :list_server_certificate_tags
            Aws::IAM::Endpoints::ListServerCertificateTags.build(context)
          when :list_server_certificates
            Aws::IAM::Endpoints::ListServerCertificates.build(context)
          when :list_service_specific_credentials
            Aws::IAM::Endpoints::ListServiceSpecificCredentials.build(context)
          when :list_signing_certificates
            Aws::IAM::Endpoints::ListSigningCertificates.build(context)
          when :list_user_policies
            Aws::IAM::Endpoints::ListUserPolicies.build(context)
          when :list_user_tags
            Aws::IAM::Endpoints::ListUserTags.build(context)
          when :list_users
            Aws::IAM::Endpoints::ListUsers.build(context)
          when :list_virtual_mfa_devices
            Aws::IAM::Endpoints::ListVirtualMFADevices.build(context)
          when :put_group_policy
            Aws::IAM::Endpoints::PutGroupPolicy.build(context)
          when :put_role_permissions_boundary
            Aws::IAM::Endpoints::PutRolePermissionsBoundary.build(context)
          when :put_role_policy
            Aws::IAM::Endpoints::PutRolePolicy.build(context)
          when :put_user_permissions_boundary
            Aws::IAM::Endpoints::PutUserPermissionsBoundary.build(context)
          when :put_user_policy
            Aws::IAM::Endpoints::PutUserPolicy.build(context)
          when :remove_client_id_from_open_id_connect_provider
            Aws::IAM::Endpoints::RemoveClientIDFromOpenIDConnectProvider.build(context)
          when :remove_role_from_instance_profile
            Aws::IAM::Endpoints::RemoveRoleFromInstanceProfile.build(context)
          when :remove_user_from_group
            Aws::IAM::Endpoints::RemoveUserFromGroup.build(context)
          when :reset_service_specific_credential
            Aws::IAM::Endpoints::ResetServiceSpecificCredential.build(context)
          when :resync_mfa_device
            Aws::IAM::Endpoints::ResyncMFADevice.build(context)
          when :set_default_policy_version
            Aws::IAM::Endpoints::SetDefaultPolicyVersion.build(context)
          when :set_security_token_service_preferences
            Aws::IAM::Endpoints::SetSecurityTokenServicePreferences.build(context)
          when :simulate_custom_policy
            Aws::IAM::Endpoints::SimulateCustomPolicy.build(context)
          when :simulate_principal_policy
            Aws::IAM::Endpoints::SimulatePrincipalPolicy.build(context)
          when :tag_instance_profile
            Aws::IAM::Endpoints::TagInstanceProfile.build(context)
          when :tag_mfa_device
            Aws::IAM::Endpoints::TagMFADevice.build(context)
          when :tag_open_id_connect_provider
            Aws::IAM::Endpoints::TagOpenIDConnectProvider.build(context)
          when :tag_policy
            Aws::IAM::Endpoints::TagPolicy.build(context)
          when :tag_role
            Aws::IAM::Endpoints::TagRole.build(context)
          when :tag_saml_provider
            Aws::IAM::Endpoints::TagSAMLProvider.build(context)
          when :tag_server_certificate
            Aws::IAM::Endpoints::TagServerCertificate.build(context)
          when :tag_user
            Aws::IAM::Endpoints::TagUser.build(context)
          when :untag_instance_profile
            Aws::IAM::Endpoints::UntagInstanceProfile.build(context)
          when :untag_mfa_device
            Aws::IAM::Endpoints::UntagMFADevice.build(context)
          when :untag_open_id_connect_provider
            Aws::IAM::Endpoints::UntagOpenIDConnectProvider.build(context)
          when :untag_policy
            Aws::IAM::Endpoints::UntagPolicy.build(context)
          when :untag_role
            Aws::IAM::Endpoints::UntagRole.build(context)
          when :untag_saml_provider
            Aws::IAM::Endpoints::UntagSAMLProvider.build(context)
          when :untag_server_certificate
            Aws::IAM::Endpoints::UntagServerCertificate.build(context)
          when :untag_user
            Aws::IAM::Endpoints::UntagUser.build(context)
          when :update_access_key
            Aws::IAM::Endpoints::UpdateAccessKey.build(context)
          when :update_account_password_policy
            Aws::IAM::Endpoints::UpdateAccountPasswordPolicy.build(context)
          when :update_assume_role_policy
            Aws::IAM::Endpoints::UpdateAssumeRolePolicy.build(context)
          when :update_group
            Aws::IAM::Endpoints::UpdateGroup.build(context)
          when :update_login_profile
            Aws::IAM::Endpoints::UpdateLoginProfile.build(context)
          when :update_open_id_connect_provider_thumbprint
            Aws::IAM::Endpoints::UpdateOpenIDConnectProviderThumbprint.build(context)
          when :update_role
            Aws::IAM::Endpoints::UpdateRole.build(context)
          when :update_role_description
            Aws::IAM::Endpoints::UpdateRoleDescription.build(context)
          when :update_saml_provider
            Aws::IAM::Endpoints::UpdateSAMLProvider.build(context)
          when :update_ssh_public_key
            Aws::IAM::Endpoints::UpdateSSHPublicKey.build(context)
          when :update_server_certificate
            Aws::IAM::Endpoints::UpdateServerCertificate.build(context)
          when :update_service_specific_credential
            Aws::IAM::Endpoints::UpdateServiceSpecificCredential.build(context)
          when :update_signing_certificate
            Aws::IAM::Endpoints::UpdateSigningCertificate.build(context)
          when :update_user
            Aws::IAM::Endpoints::UpdateUser.build(context)
          when :upload_ssh_public_key
            Aws::IAM::Endpoints::UploadSSHPublicKey.build(context)
          when :upload_server_certificate
            Aws::IAM::Endpoints::UploadServerCertificate.build(context)
          when :upload_signing_certificate
            Aws::IAM::Endpoints::UploadSigningCertificate.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
