# frozen_string_literal: true

module Aws
  module Bedrock
    # Provides a Bearer token for authentication.
    class BearerTokenProvider
      include Smithy::Client::IdentityProvider

      # @param [Hash] options
      # @option options [String] :token
      def initialize(options = {})
        @identity = Smithy::Client::BearerToken.new(token: options[:token])
      end

      # Feature IDs for the User-Agent
      # @api private
      attr_accessor :features
    end
  end
end
