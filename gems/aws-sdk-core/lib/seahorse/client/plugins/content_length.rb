# frozen_string_literal: true

module Seahorse
  module Client
    module Plugins
      class ContentLength < Plugin

        # @api private
        class Handler < Client::Handler

          def call(context)
            body = context.http_request.body
            if (length = body_size(body))
              context.http_request.headers['Content-Length'] = length
            end
            @handler.call(context)
          end

          def body_set?(body)
            body && body_size(body) > 0
          end

          def body_size(body)
            if body.respond_to?(:size)
              body.size
            elsif body.respond_to?(:stat) && (stat = body.stat).respond_to?(:size)
              stat.size
            end
          end

        end

        handler(Handler, step: :sign, priority: 0)

      end
    end
  end
end
