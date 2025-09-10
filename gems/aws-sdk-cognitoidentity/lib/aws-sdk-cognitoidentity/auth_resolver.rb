# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentity
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [String]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :get_credentials_for_identity
        options << 'smithy.api#noAuth'
      when :get_id
        options << 'smithy.api#noAuth'
      when :get_open_id_token
        options << 'smithy.api#noAuth'
      when :unlink_identity
        options << 'smithy.api#noAuth'
      else
      options << 'aws.auth#sigv4'
      end
      options
    end
  end
end
