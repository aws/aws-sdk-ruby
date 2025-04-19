# frozen_string_literal: true

# This is generated code!

module Aws::Lambda
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Smithy::Client::AuthOption]
    def resolve(parameters)
      options = []
      options << Smithy::Client::AuthOption.new(scheme_id: 'smithy.api#noAuth', signer_properties: {})
      options
    end
  end
end
