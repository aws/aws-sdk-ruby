# frozen_string_literal: true

# This is generated code!

module Aws::FraudDetector
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Array<Smithy::Client::AuthOption>]
    def resolve(parameters)
      options = []
      options << Smithy::Client::AuthOption.new(scheme_id: 'aws.auth#sigv4')
      options
    end
  end
end
