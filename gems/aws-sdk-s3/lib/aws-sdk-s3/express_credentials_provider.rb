# frozen_string_literal: true

module Aws
  module S3
    # Returns Credentials class for S3 Express. Accepts CreateSession
    # params as options. See {Client#create_session} for details.
    class ExpressCredentialsProvider
      # @param [Hash] options
      # @option options [Client] :client The S3 client used to create the session.
      # @option options [String] :session_mode (see: {Client#create_session})
      # @option options [Callable] :before_refresh Proc called before
      #   credentials are refreshed.
      def initialize(options = {})
        @client = options.delete(:client)
        @options = options
        @cache = EXPRESS_CREDENTIALS_CACHE
      end

      def express_credentials_for(bucket)
        @cache[bucket] || new_credentials_for(bucket)
      end

      attr_accessor :client

      private

      def new_credentials_for(bucket)
        @cache[bucket] = ExpressCredentials.new(
          bucket: bucket,
          client: @client,
          **@options
        )
      end
    end
  end
end
