# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class ExpressCredentialsCache
      def initialize
        @credentials = {}
        @mutex = Mutex.new
      end

      def [](bucket_name)
        @mutex.synchronize { @credentials[bucket_name] }
      end

      def []=(bucket_name, credential_provider)
        @mutex.synchronize do
          @credentials[bucket_name] = credential_provider
        end
      end

      def clear
        @mutex.synchronize { @credentials = {} }
      end
    end

    # @api private
    EXPRESS_CREDENTIALS_CACHE = ExpressCredentialsCache.new
  end
end
