# frozen_string_literal: true

# This is generated code!

module Aws::CodeCatalyst
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Hash]
    def resolve(parameters)
      options = []
      options << { scheme_id: 'smithy.api#httpBearerAuth' }
      options
    end
  end
end
