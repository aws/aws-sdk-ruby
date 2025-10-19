# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentity
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Array<Smithy::Client::AuthOption>]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :get_credentials_for_identity
        options << Smithy::Client::AuthOption.new(scheme_id: 'smithy.api#noAuth')
      when :get_id
        options << Smithy::Client::AuthOption.new(scheme_id: 'smithy.api#noAuth')
      when :get_open_id_token
        options << Smithy::Client::AuthOption.new(scheme_id: 'smithy.api#noAuth')
      when :unlink_identity
        options << Smithy::Client::AuthOption.new(scheme_id: 'smithy.api#noAuth')
      else
        options << Smithy::Client::AuthOption.new(scheme_id: 'aws.auth#sigv4')
      end
      options
    end
  end
end
