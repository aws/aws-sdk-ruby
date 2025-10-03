# frozen_string_literal: true

# This is generated code!

module Aws::SSO
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Array<Smithy::Client::AuthOption>]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :get_role_credentials
        options << Smithy::Client::AuthOption.new(scheme_id: 'smithy.api#noAuth')
      when :list_account_roles
        options << Smithy::Client::AuthOption.new(scheme_id: 'smithy.api#noAuth')
      when :list_accounts
        options << Smithy::Client::AuthOption.new(scheme_id: 'smithy.api#noAuth')
      when :logout
        options << Smithy::Client::AuthOption.new(scheme_id: 'smithy.api#noAuth')
      else
      options << Smithy::Client::AuthOption.new(scheme_id: 'aws.auth#sigv4')
      end
      options
    end
  end
end
