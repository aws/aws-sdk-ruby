# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentity
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Hash]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :get_credentials_for_identity
        options << { scheme_id: 'smithy.api#noAuth' }
      when :get_id
        options << { scheme_id: 'smithy.api#noAuth' }
      when :get_open_id_token
        options << { scheme_id: 'smithy.api#noAuth' }
      when :unlink_identity
        options << { scheme_id: 'smithy.api#noAuth' }
      else
      options << { scheme_id: 'aws.auth#sigv4' }
      end
      options
    end
  end
end
