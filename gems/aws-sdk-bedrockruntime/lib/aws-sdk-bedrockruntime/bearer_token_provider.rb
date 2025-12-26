# frozen_string_literal: true

module Aws
  module BedrockRuntime
    # Provides a Bearer token for authentication.
    class BearerTokenProvider
      include Core::IdentityProvider

      # @param [Hash] options
      # @option options [String] :token
      def initialize(options = {})
        @identity = Smithy::Client::BearerToken.new(token: options[:token])
      end
    end
  end
end
