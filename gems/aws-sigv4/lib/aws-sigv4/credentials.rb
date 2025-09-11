# frozen_string_literal: true

module Aws
  module SigV4
    # Represents static AWS credentials.
    class Credentials
      # @option options [String] :access_key_id
      # @option options [String] :secret_access_key
      # @option options [String, nil] :session_token (nil)
      # @option options [String, nil] :account_id (nil)
      # @option options [Time, nil] :expiration (nil)
      def initialize(options = {})
        @access_key_id = options.fetch(:access_key_id)
        @secret_access_key = options.fetch(:secret_access_key)
        @session_token = options[:session_token]
        @account_id = options[:account_id]
        @expiration = options[:expiration]
      end

      # @return [String]
      attr_reader :access_key_id

      # @return [String]
      attr_reader :secret_access_key

      # @return [String, nil]
      attr_reader :session_token

      # @return [String, nil]
      attr_reader :account_id

      # @return [Time, nil]
      attr_reader :expiration

      # @api private
      def inspect
        super
          .gsub(/@secret_access_key=\S+/, '@secret_access_key=[FILTERED]')
          .gsub(/@session_token=\S+/, '@session_token=[FILTERED]')
      end
    end
  end
end
