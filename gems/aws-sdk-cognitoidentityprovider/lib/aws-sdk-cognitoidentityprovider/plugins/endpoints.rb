# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CognitoIdentityProvider
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CognitoIdentityProvider::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CognitoIdentityProvider::EndpointParameters`'
      ) do |cfg|
        Aws::CognitoIdentityProvider::EndpointProvider.new
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
          when :add_custom_attributes
            Aws::CognitoIdentityProvider::Endpoints::AddCustomAttributes.build(context)
          when :admin_add_user_to_group
            Aws::CognitoIdentityProvider::Endpoints::AdminAddUserToGroup.build(context)
          when :admin_confirm_sign_up
            Aws::CognitoIdentityProvider::Endpoints::AdminConfirmSignUp.build(context)
          when :admin_create_user
            Aws::CognitoIdentityProvider::Endpoints::AdminCreateUser.build(context)
          when :admin_delete_user
            Aws::CognitoIdentityProvider::Endpoints::AdminDeleteUser.build(context)
          when :admin_delete_user_attributes
            Aws::CognitoIdentityProvider::Endpoints::AdminDeleteUserAttributes.build(context)
          when :admin_disable_provider_for_user
            Aws::CognitoIdentityProvider::Endpoints::AdminDisableProviderForUser.build(context)
          when :admin_disable_user
            Aws::CognitoIdentityProvider::Endpoints::AdminDisableUser.build(context)
          when :admin_enable_user
            Aws::CognitoIdentityProvider::Endpoints::AdminEnableUser.build(context)
          when :admin_forget_device
            Aws::CognitoIdentityProvider::Endpoints::AdminForgetDevice.build(context)
          when :admin_get_device
            Aws::CognitoIdentityProvider::Endpoints::AdminGetDevice.build(context)
          when :admin_get_user
            Aws::CognitoIdentityProvider::Endpoints::AdminGetUser.build(context)
          when :admin_initiate_auth
            Aws::CognitoIdentityProvider::Endpoints::AdminInitiateAuth.build(context)
          when :admin_link_provider_for_user
            Aws::CognitoIdentityProvider::Endpoints::AdminLinkProviderForUser.build(context)
          when :admin_list_devices
            Aws::CognitoIdentityProvider::Endpoints::AdminListDevices.build(context)
          when :admin_list_groups_for_user
            Aws::CognitoIdentityProvider::Endpoints::AdminListGroupsForUser.build(context)
          when :admin_list_user_auth_events
            Aws::CognitoIdentityProvider::Endpoints::AdminListUserAuthEvents.build(context)
          when :admin_remove_user_from_group
            Aws::CognitoIdentityProvider::Endpoints::AdminRemoveUserFromGroup.build(context)
          when :admin_reset_user_password
            Aws::CognitoIdentityProvider::Endpoints::AdminResetUserPassword.build(context)
          when :admin_respond_to_auth_challenge
            Aws::CognitoIdentityProvider::Endpoints::AdminRespondToAuthChallenge.build(context)
          when :admin_set_user_mfa_preference
            Aws::CognitoIdentityProvider::Endpoints::AdminSetUserMFAPreference.build(context)
          when :admin_set_user_password
            Aws::CognitoIdentityProvider::Endpoints::AdminSetUserPassword.build(context)
          when :admin_set_user_settings
            Aws::CognitoIdentityProvider::Endpoints::AdminSetUserSettings.build(context)
          when :admin_update_auth_event_feedback
            Aws::CognitoIdentityProvider::Endpoints::AdminUpdateAuthEventFeedback.build(context)
          when :admin_update_device_status
            Aws::CognitoIdentityProvider::Endpoints::AdminUpdateDeviceStatus.build(context)
          when :admin_update_user_attributes
            Aws::CognitoIdentityProvider::Endpoints::AdminUpdateUserAttributes.build(context)
          when :admin_user_global_sign_out
            Aws::CognitoIdentityProvider::Endpoints::AdminUserGlobalSignOut.build(context)
          when :associate_software_token
            Aws::CognitoIdentityProvider::Endpoints::AssociateSoftwareToken.build(context)
          when :change_password
            Aws::CognitoIdentityProvider::Endpoints::ChangePassword.build(context)
          when :confirm_device
            Aws::CognitoIdentityProvider::Endpoints::ConfirmDevice.build(context)
          when :confirm_forgot_password
            Aws::CognitoIdentityProvider::Endpoints::ConfirmForgotPassword.build(context)
          when :confirm_sign_up
            Aws::CognitoIdentityProvider::Endpoints::ConfirmSignUp.build(context)
          when :create_group
            Aws::CognitoIdentityProvider::Endpoints::CreateGroup.build(context)
          when :create_identity_provider
            Aws::CognitoIdentityProvider::Endpoints::CreateIdentityProvider.build(context)
          when :create_resource_server
            Aws::CognitoIdentityProvider::Endpoints::CreateResourceServer.build(context)
          when :create_user_import_job
            Aws::CognitoIdentityProvider::Endpoints::CreateUserImportJob.build(context)
          when :create_user_pool
            Aws::CognitoIdentityProvider::Endpoints::CreateUserPool.build(context)
          when :create_user_pool_client
            Aws::CognitoIdentityProvider::Endpoints::CreateUserPoolClient.build(context)
          when :create_user_pool_domain
            Aws::CognitoIdentityProvider::Endpoints::CreateUserPoolDomain.build(context)
          when :delete_group
            Aws::CognitoIdentityProvider::Endpoints::DeleteGroup.build(context)
          when :delete_identity_provider
            Aws::CognitoIdentityProvider::Endpoints::DeleteIdentityProvider.build(context)
          when :delete_resource_server
            Aws::CognitoIdentityProvider::Endpoints::DeleteResourceServer.build(context)
          when :delete_user
            Aws::CognitoIdentityProvider::Endpoints::DeleteUser.build(context)
          when :delete_user_attributes
            Aws::CognitoIdentityProvider::Endpoints::DeleteUserAttributes.build(context)
          when :delete_user_pool
            Aws::CognitoIdentityProvider::Endpoints::DeleteUserPool.build(context)
          when :delete_user_pool_client
            Aws::CognitoIdentityProvider::Endpoints::DeleteUserPoolClient.build(context)
          when :delete_user_pool_domain
            Aws::CognitoIdentityProvider::Endpoints::DeleteUserPoolDomain.build(context)
          when :describe_identity_provider
            Aws::CognitoIdentityProvider::Endpoints::DescribeIdentityProvider.build(context)
          when :describe_resource_server
            Aws::CognitoIdentityProvider::Endpoints::DescribeResourceServer.build(context)
          when :describe_risk_configuration
            Aws::CognitoIdentityProvider::Endpoints::DescribeRiskConfiguration.build(context)
          when :describe_user_import_job
            Aws::CognitoIdentityProvider::Endpoints::DescribeUserImportJob.build(context)
          when :describe_user_pool
            Aws::CognitoIdentityProvider::Endpoints::DescribeUserPool.build(context)
          when :describe_user_pool_client
            Aws::CognitoIdentityProvider::Endpoints::DescribeUserPoolClient.build(context)
          when :describe_user_pool_domain
            Aws::CognitoIdentityProvider::Endpoints::DescribeUserPoolDomain.build(context)
          when :forget_device
            Aws::CognitoIdentityProvider::Endpoints::ForgetDevice.build(context)
          when :forgot_password
            Aws::CognitoIdentityProvider::Endpoints::ForgotPassword.build(context)
          when :get_csv_header
            Aws::CognitoIdentityProvider::Endpoints::GetCSVHeader.build(context)
          when :get_device
            Aws::CognitoIdentityProvider::Endpoints::GetDevice.build(context)
          when :get_group
            Aws::CognitoIdentityProvider::Endpoints::GetGroup.build(context)
          when :get_identity_provider_by_identifier
            Aws::CognitoIdentityProvider::Endpoints::GetIdentityProviderByIdentifier.build(context)
          when :get_signing_certificate
            Aws::CognitoIdentityProvider::Endpoints::GetSigningCertificate.build(context)
          when :get_ui_customization
            Aws::CognitoIdentityProvider::Endpoints::GetUICustomization.build(context)
          when :get_user
            Aws::CognitoIdentityProvider::Endpoints::GetUser.build(context)
          when :get_user_attribute_verification_code
            Aws::CognitoIdentityProvider::Endpoints::GetUserAttributeVerificationCode.build(context)
          when :get_user_pool_mfa_config
            Aws::CognitoIdentityProvider::Endpoints::GetUserPoolMfaConfig.build(context)
          when :global_sign_out
            Aws::CognitoIdentityProvider::Endpoints::GlobalSignOut.build(context)
          when :initiate_auth
            Aws::CognitoIdentityProvider::Endpoints::InitiateAuth.build(context)
          when :list_devices
            Aws::CognitoIdentityProvider::Endpoints::ListDevices.build(context)
          when :list_groups
            Aws::CognitoIdentityProvider::Endpoints::ListGroups.build(context)
          when :list_identity_providers
            Aws::CognitoIdentityProvider::Endpoints::ListIdentityProviders.build(context)
          when :list_resource_servers
            Aws::CognitoIdentityProvider::Endpoints::ListResourceServers.build(context)
          when :list_tags_for_resource
            Aws::CognitoIdentityProvider::Endpoints::ListTagsForResource.build(context)
          when :list_user_import_jobs
            Aws::CognitoIdentityProvider::Endpoints::ListUserImportJobs.build(context)
          when :list_user_pool_clients
            Aws::CognitoIdentityProvider::Endpoints::ListUserPoolClients.build(context)
          when :list_user_pools
            Aws::CognitoIdentityProvider::Endpoints::ListUserPools.build(context)
          when :list_users
            Aws::CognitoIdentityProvider::Endpoints::ListUsers.build(context)
          when :list_users_in_group
            Aws::CognitoIdentityProvider::Endpoints::ListUsersInGroup.build(context)
          when :resend_confirmation_code
            Aws::CognitoIdentityProvider::Endpoints::ResendConfirmationCode.build(context)
          when :respond_to_auth_challenge
            Aws::CognitoIdentityProvider::Endpoints::RespondToAuthChallenge.build(context)
          when :revoke_token
            Aws::CognitoIdentityProvider::Endpoints::RevokeToken.build(context)
          when :set_risk_configuration
            Aws::CognitoIdentityProvider::Endpoints::SetRiskConfiguration.build(context)
          when :set_ui_customization
            Aws::CognitoIdentityProvider::Endpoints::SetUICustomization.build(context)
          when :set_user_mfa_preference
            Aws::CognitoIdentityProvider::Endpoints::SetUserMFAPreference.build(context)
          when :set_user_pool_mfa_config
            Aws::CognitoIdentityProvider::Endpoints::SetUserPoolMfaConfig.build(context)
          when :set_user_settings
            Aws::CognitoIdentityProvider::Endpoints::SetUserSettings.build(context)
          when :sign_up
            Aws::CognitoIdentityProvider::Endpoints::SignUp.build(context)
          when :start_user_import_job
            Aws::CognitoIdentityProvider::Endpoints::StartUserImportJob.build(context)
          when :stop_user_import_job
            Aws::CognitoIdentityProvider::Endpoints::StopUserImportJob.build(context)
          when :tag_resource
            Aws::CognitoIdentityProvider::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CognitoIdentityProvider::Endpoints::UntagResource.build(context)
          when :update_auth_event_feedback
            Aws::CognitoIdentityProvider::Endpoints::UpdateAuthEventFeedback.build(context)
          when :update_device_status
            Aws::CognitoIdentityProvider::Endpoints::UpdateDeviceStatus.build(context)
          when :update_group
            Aws::CognitoIdentityProvider::Endpoints::UpdateGroup.build(context)
          when :update_identity_provider
            Aws::CognitoIdentityProvider::Endpoints::UpdateIdentityProvider.build(context)
          when :update_resource_server
            Aws::CognitoIdentityProvider::Endpoints::UpdateResourceServer.build(context)
          when :update_user_attributes
            Aws::CognitoIdentityProvider::Endpoints::UpdateUserAttributes.build(context)
          when :update_user_pool
            Aws::CognitoIdentityProvider::Endpoints::UpdateUserPool.build(context)
          when :update_user_pool_client
            Aws::CognitoIdentityProvider::Endpoints::UpdateUserPoolClient.build(context)
          when :update_user_pool_domain
            Aws::CognitoIdentityProvider::Endpoints::UpdateUserPoolDomain.build(context)
          when :verify_software_token
            Aws::CognitoIdentityProvider::Endpoints::VerifySoftwareToken.build(context)
          when :verify_user_attribute
            Aws::CognitoIdentityProvider::Endpoints::VerifyUserAttribute.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
