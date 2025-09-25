# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentityProvider
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Hash]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :associate_software_token
        options << { scheme_id: 'smithy.api#noAuth' }
      when :change_password
        options << { scheme_id: 'smithy.api#noAuth' }
      when :complete_web_authn_registration
        options << { scheme_id: 'smithy.api#noAuth' }
      when :confirm_device
        options << { scheme_id: 'smithy.api#noAuth' }
      when :confirm_forgot_password
        options << { scheme_id: 'smithy.api#noAuth' }
      when :confirm_sign_up
        options << { scheme_id: 'smithy.api#noAuth' }
      when :delete_user
        options << { scheme_id: 'smithy.api#noAuth' }
      when :delete_user_attributes
        options << { scheme_id: 'smithy.api#noAuth' }
      when :delete_web_authn_credential
        options << { scheme_id: 'smithy.api#noAuth' }
      when :forget_device
        options << { scheme_id: 'smithy.api#noAuth' }
      when :forgot_password
        options << { scheme_id: 'smithy.api#noAuth' }
      when :get_device
        options << { scheme_id: 'smithy.api#noAuth' }
      when :get_tokens_from_refresh_token
        options << { scheme_id: 'smithy.api#noAuth' }
      when :get_user
        options << { scheme_id: 'smithy.api#noAuth' }
      when :get_user_attribute_verification_code
        options << { scheme_id: 'smithy.api#noAuth' }
      when :get_user_auth_factors
        options << { scheme_id: 'smithy.api#noAuth' }
      when :global_sign_out
        options << { scheme_id: 'smithy.api#noAuth' }
      when :initiate_auth
        options << { scheme_id: 'smithy.api#noAuth' }
      when :list_devices
        options << { scheme_id: 'smithy.api#noAuth' }
      when :list_web_authn_credentials
        options << { scheme_id: 'smithy.api#noAuth' }
      when :resend_confirmation_code
        options << { scheme_id: 'smithy.api#noAuth' }
      when :respond_to_auth_challenge
        options << { scheme_id: 'smithy.api#noAuth' }
      when :revoke_token
        options << { scheme_id: 'smithy.api#noAuth' }
      when :set_user_mfa_preference
        options << { scheme_id: 'smithy.api#noAuth' }
      when :set_user_settings
        options << { scheme_id: 'smithy.api#noAuth' }
      when :sign_up
        options << { scheme_id: 'smithy.api#noAuth' }
      when :start_web_authn_registration
        options << { scheme_id: 'smithy.api#noAuth' }
      when :update_auth_event_feedback
        options << { scheme_id: 'smithy.api#noAuth' }
      when :update_device_status
        options << { scheme_id: 'smithy.api#noAuth' }
      when :update_user_attributes
        options << { scheme_id: 'smithy.api#noAuth' }
      when :verify_software_token
        options << { scheme_id: 'smithy.api#noAuth' }
      when :verify_user_attribute
        options << { scheme_id: 'smithy.api#noAuth' }
      else
      options << { scheme_id: 'aws.auth#sigv4' }
      end
      options
    end
  end
end
