# frozen_string_literal: true

module Aws
  module Core
    # Returns static credentials.
    class StaticCredentials
      include CredentialsProvider

      # @param [Hash] options
      # @options [String] :access_key_id
      # @options [String] :secret_access_key
      # @options [String] :session_token (nil)
      # @options [String] :account_id (nil)
      def initialize(options = {})
        @identity = Credentials.new(**options)
        @features = ['CREDENTIALS_CODE']
      end
    end
  end
end
