# frozen_string_literal: true

# This is generated code!

module Aws::SSOOIDC
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Hash]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :create_token
        options << { scheme_id: 'smithy.api#noAuth' }
      when :register_client
        options << { scheme_id: 'smithy.api#noAuth' }
      when :start_device_authorization
        options << { scheme_id: 'smithy.api#noAuth' }
      else
      options << { scheme_id: 'aws.auth#sigv4' }
      end
      options
    end
  end
end
