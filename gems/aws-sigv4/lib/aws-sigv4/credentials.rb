# frozen_string_literal: true

module Aws
  module SigV4
    # Represents static AWS credentials.
    class Credentials
      # @option options [String] :access_key_id
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [String] :account_id
      # @option options [Time] :expiration
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

      # @return [Boolean] Returns `true` if the access key id and secret access key are both set.
      def set?
        !access_key_id.nil? && !access_key_id.empty? &&
          !secret_access_key.nil? && !secret_access_key.empty?
      end
    end
  end
end
