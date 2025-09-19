# frozen_string_literal: true

module Aws
  module SigV4
    # Returns static credentials.
    class StaticCredentials
      # @overload initialize(options)
      #   Initializes with a credentials object.
      #   @option options [Credentials] :credentials
      # @overload initialize(options)
      #   Initializes with individual credential options.
      #   @option options [Credentials] :credentials
      #   @option options [String] :access_key_id
      #   @option options [String] :secret_access_key
      #   @option options [String, nil] :session_token (nil)
      #   @option options [String, nil] :account_id (nil)
      #   @option options [Time, nil] :expiration (nil)
      def initialize(options = {})
        @credentials = options[:credentials] || Credentials.new(options)
        @expiration = options[:expiration]
      end

      # @return [Credentials]
      attr_reader :credentials

      # @return [Time, nil]
      attr_reader :expiration

      # @return [Boolean]
      def set?
        !!credentials && credentials.set?
      end
    end
  end
end
