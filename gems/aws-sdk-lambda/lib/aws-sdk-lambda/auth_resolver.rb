# frozen_string_literal: true

# This is generated code!

module Aws
  module Lambda
    # Resolves the auth scheme from {AuthParameters}.
    class AuthResolver
      # @param [AuthParameters] parameters
      # @return [Smithy::Client::AuthOption]
      def resolve(_parameters)
        options = []
        options << Smithy::Client::AuthOption.new(scheme_id: 'smithy.api#noAuth', signer_properties: {})
        options
      end
    end
  end
end
