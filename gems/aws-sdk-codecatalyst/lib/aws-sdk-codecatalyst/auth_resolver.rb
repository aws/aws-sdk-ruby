# frozen_string_literal: true

# This is generated code!

module Aws::CodeCatalyst
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Array<Smithy::Client::AuthOption>]
    def resolve(parameters)
      options = []
      options << Smithy::Client::AuthOption.new(scheme_id: 'smithy.api#httpBearerAuth')
      options
    end
  end
end
