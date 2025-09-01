# frozen_string_literal: true

# This is generated code!

module Aws::SSO
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [String]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :get_role_credentials
        options << 'smithy.api#optionalAuth'
      when :list_account_roles
        options << 'smithy.api#optionalAuth'
      when :list_accounts
        options << 'smithy.api#optionalAuth'
      when :logout
        options << 'smithy.api#optionalAuth'
      else
        options << 'aws.auth#sigv4'
      end
      options
    end
  end
end
