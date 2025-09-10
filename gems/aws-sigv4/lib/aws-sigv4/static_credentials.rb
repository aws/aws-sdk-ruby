# frozen_string_literal: true

module Aws
  module SigV4
    # Returns static credentials.
    class StaticCredentials
      # @option options [String] :access_key_id
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [String] :account_id
      # @option options [Time] :expiration
      def initialize(options = {})
        @identity = Credentials.new(options)
      end

      # @return [Credentials]
      attr_reader :identity
    end
  end
end
