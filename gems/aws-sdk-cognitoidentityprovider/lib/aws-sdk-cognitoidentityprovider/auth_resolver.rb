# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentityProvider
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [String]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :associate_software_token
        options << 'smithy.api#noAuth'
      when :change_password
        options << 'smithy.api#noAuth'
      when :complete_web_authn_registration
        options << 'smithy.api#noAuth'
      when :confirm_device
        options << 'smithy.api#noAuth'
      when :confirm_forgot_password
        options << 'smithy.api#noAuth'
      when :confirm_sign_up
        options << 'smithy.api#noAuth'
      when :delete_user
        options << 'smithy.api#noAuth'
      when :delete_user_attributes
        options << 'smithy.api#noAuth'
      when :delete_web_authn_credential
        options << 'smithy.api#noAuth'
      when :forget_device
        options << 'smithy.api#noAuth'
      when :forgot_password
        options << 'smithy.api#noAuth'
      when :get_device
        options << 'smithy.api#noAuth'
      when :get_tokens_from_refresh_token
        options << 'smithy.api#noAuth'
      when :get_user
        options << 'smithy.api#noAuth'
      when :get_user_attribute_verification_code
        options << 'smithy.api#noAuth'
      when :get_user_auth_factors
        options << 'smithy.api#noAuth'
      when :global_sign_out
        options << 'smithy.api#noAuth'
      when :initiate_auth
        options << 'smithy.api#noAuth'
      when :list_devices
        options << 'smithy.api#noAuth'
      when :list_web_authn_credentials
        options << 'smithy.api#noAuth'
      when :resend_confirmation_code
        options << 'smithy.api#noAuth'
      when :respond_to_auth_challenge
        options << 'smithy.api#noAuth'
      when :revoke_token
        options << 'smithy.api#noAuth'
      when :set_user_mfa_preference
        options << 'smithy.api#noAuth'
      when :set_user_settings
        options << 'smithy.api#noAuth'
      when :sign_up
        options << 'smithy.api#noAuth'
      when :start_web_authn_registration
        options << 'smithy.api#noAuth'
      when :update_auth_event_feedback
        options << 'smithy.api#noAuth'
      when :update_device_status
        options << 'smithy.api#noAuth'
      when :update_user_attributes
        options << 'smithy.api#noAuth'
      when :verify_software_token
        options << 'smithy.api#noAuth'
      when :verify_user_attribute
        options << 'smithy.api#noAuth'
      else
      options << 'aws.auth#sigv4'
      end
      options
    end
  end
end
