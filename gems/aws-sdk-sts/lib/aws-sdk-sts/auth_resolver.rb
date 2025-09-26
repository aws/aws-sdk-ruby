# frozen_string_literal: true

# This is generated code!

module Aws::STS
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Hash]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :assume_role_with_saml
        options << { scheme_id: 'smithy.api#noAuth' }
      when :assume_role_with_web_identity
        options << { scheme_id: 'smithy.api#noAuth' }
      else
      options << { scheme_id: 'aws.auth#sigv4' }
      end
      options
    end
  end
end
