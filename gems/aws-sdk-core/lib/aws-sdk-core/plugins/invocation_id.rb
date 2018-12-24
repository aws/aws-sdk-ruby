require 'securerandom'

module Aws
  module Plugins

    # @api private
    class InvocationId < Seahorse::Client::Plugin

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          apply_invocation_id(context)
          @handler.call(context)
        end

        private

        def apply_invocation_id(context)
          context.http_request.headers['amz-sdk-invocation-id'] = SecureRandom.uuid
          context.http_request.headers['x-amz-content-sha256'] = 'STREAMING-AWS4-HMAC-SHA256-EVENTS'
        end

      end

      handler(Handler, step: :initialize)

    end
  end
end
