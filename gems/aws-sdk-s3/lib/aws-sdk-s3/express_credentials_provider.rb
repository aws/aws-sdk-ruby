# frozen_string_literal: true

require 'openssl'
require 'securerandom'

module Aws
  module S3
    # @api private
    def self.express_credentials_cache
      @express_credentials_cache ||= LRUCache.new(max_entries: 100)
    end

    # Returns Credentials class for S3 Express. Accepts CreateSession
    # params as options. See {Client#create_session} for details.
    class ExpressCredentialsProvider
      CACHE_KEY_SECRET = SecureRandom.random_bytes(64)
      private_constant :CACHE_KEY_SECRET

      # @param [Hash] options
      # @option options [Client] :client The S3 client used to create the
      #  session when one is not given to {#express_credentials_for}.
      # @option options [String] :session_mode (see: {Client#create_session})
      # @option options [Boolean] :caching (true) When true, credentials will
      #  be cached.
      # @option options [Callable] :before_refresh Proc called before
      #   credentials are refreshed.
      def initialize(options = {})
        @client = options.delete(:client)
        @caching = options.delete(:caching) != false
        @options = options
        return unless @caching

        @cache = Aws::S3.express_credentials_cache
      end

      # @param [String] bucket
      # @param [Client] client The S3 client making the request. Sessions are
      #  created with its credentials.
      def express_credentials_for(bucket, client = @client)
        if @caching
          cached_credentials_for(bucket, client)
        else
          new_credentials_for(bucket, client)
        end
      end

      attr_accessor :client

      private

      def cached_credentials_for(bucket, client)
        key = cache_key(bucket, client)
        cached = @cache[key] if @cache.key?(key)
        return cached if cached && owned_by?(cached, bucket, client, key)

        @cache[key] = new_credentials_for(bucket, client)
      end

      # The creating client's credentials may have changed since caching.
      def owned_by?(cached, bucket, client, key)
        cached.client.equal?(client) || cache_key(bucket, cached.client) == key
      end

      def cache_key(bucket, client)
        creds = client.config.credentials&.credentials
        identity = OpenSSL::HMAC.hexdigest(
          'SHA256',
          CACHE_KEY_SECRET,
          "#{creds&.access_key_id}#{creds&.secret_access_key}"
        )
        "#{identity}#{bucket}"
      end

      def new_credentials_for(bucket, client)
        ExpressCredentials.new(
          bucket: bucket,
          client: client,
          **@options
        )
      end
    end
  end
end
