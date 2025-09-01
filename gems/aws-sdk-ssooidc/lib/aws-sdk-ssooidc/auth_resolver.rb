# frozen_string_literal: true

# This is generated code!

module Aws::SSOOIDC
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [String]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :create_token
        options << 'smithy.api#optionalAuth'
      when :register_client
        options << 'smithy.api#optionalAuth'
      when :start_device_authorization
        options << 'smithy.api#optionalAuth'
      else
        options << 'aws.auth#sigv4'
      end
      options
    end
  end
end
