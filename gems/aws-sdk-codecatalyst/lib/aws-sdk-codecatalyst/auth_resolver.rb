# frozen_string_literal: true

# This is generated code!

module Aws::CodeCatalyst
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [String]
    def resolve(parameters)
      options = []
      options << 'smithy.api#httpBearerAuth'
      options
    end
  end
end
