# frozen_string_literal: true

module Seahorse
  module Client
    module Plugins
      class ContentLength < Plugin

        # @api private
        class Handler < Client::Handler

          def call(context)
            body = context.http_request.body
            # If size of body can be determined, set content-length.
            # We use Net::HTTP with body_stream which doesn't do this by default
            if body.respond_to?(:size) && body.size > 0
              context.http_request.headers['Content-Length'] = body.size
            end
            @handler.call(context)
          end

        end

        handler(Handler, step: :sign, priority: 0)

      end
    end
  end
end
