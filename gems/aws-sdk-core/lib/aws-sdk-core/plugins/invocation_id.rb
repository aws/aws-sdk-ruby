# frozen_string_literal: true

require 'securerandom'

module Aws
  module Core
    module Plugins
      # @api private
      class InvocationId < Smithy::Client::Plugin
        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            context.http_request.headers['amz-sdk-invocation-id'] = SecureRandom.uuid
            @handler.call(context)
          end
        end

        handler(Handler, step: :initialize)
      end
    end
  end
end
