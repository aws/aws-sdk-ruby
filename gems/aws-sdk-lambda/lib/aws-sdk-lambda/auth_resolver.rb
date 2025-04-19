# frozen_string_literal: true

# This is generated code!

module Aws::Lambda
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Smithy::Client::AuthOption]
    def resolve(parameters)
      options = []
      options << Smithy::Client::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: {"name" => "lambda"})
      options
    end
  end
end
