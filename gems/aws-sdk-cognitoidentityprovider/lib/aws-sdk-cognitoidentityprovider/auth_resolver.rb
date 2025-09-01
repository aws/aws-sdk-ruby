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
        options << 'smithy.api#optionalAuth'
      when :change_password
        options << 'smithy.api#optionalAuth'
      when :complete_web_authn_registration
        options << 'smithy.api#optionalAuth'
      when :confirm_device
        options << 'smithy.api#optionalAuth'
      when :confirm_forgot_password
        options << 'smithy.api#optionalAuth'
      when :confirm_sign_up
        options << 'smithy.api#optionalAuth'
      when :delete_user
        options << 'smithy.api#optionalAuth'
      when :delete_user_attributes
        options << 'smithy.api#optionalAuth'
      when :delete_web_authn_credential
        options << 'smithy.api#optionalAuth'
      when :forget_device
        options << 'smithy.api#optionalAuth'
      when :forgot_password
        options << 'smithy.api#optionalAuth'
      when :get_device
        options << 'smithy.api#optionalAuth'
      when :get_tokens_from_refresh_token
        options << 'smithy.api#optionalAuth'
      when :get_user
        options << 'smithy.api#optionalAuth'
      when :get_user_attribute_verification_code
        options << 'smithy.api#optionalAuth'
      when :get_user_auth_factors
        options << 'smithy.api#optionalAuth'
      when :global_sign_out
        options << 'smithy.api#optionalAuth'
      when :initiate_auth
        options << 'smithy.api#optionalAuth'
      when :list_devices
        options << 'smithy.api#optionalAuth'
      when :list_web_authn_credentials
        options << 'smithy.api#optionalAuth'
      when :resend_confirmation_code
        options << 'smithy.api#optionalAuth'
      when :respond_to_auth_challenge
        options << 'smithy.api#optionalAuth'
      when :revoke_token
        options << 'smithy.api#optionalAuth'
      when :set_user_mfa_preference
        options << 'smithy.api#optionalAuth'
      when :set_user_settings
        options << 'smithy.api#optionalAuth'
      when :sign_up
        options << 'smithy.api#optionalAuth'
      when :start_web_authn_registration
        options << 'smithy.api#optionalAuth'
      when :update_auth_event_feedback
        options << 'smithy.api#optionalAuth'
      when :update_device_status
        options << 'smithy.api#optionalAuth'
      when :update_user_attributes
        options << 'smithy.api#optionalAuth'
      when :verify_software_token
        options << 'smithy.api#optionalAuth'
      when :verify_user_attribute
        options << 'smithy.api#optionalAuth'
      else
        options << 'aws.auth#sigv4'
      end
      options
    end
  end
end
