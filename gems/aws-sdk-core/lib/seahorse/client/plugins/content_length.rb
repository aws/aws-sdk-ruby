# frozen_string_literal: true

module Seahorse
  module Client
    module Plugins
      class ContentLength < Plugin

        # @api private
        class Handler < Client::Handler

          def call(context)
            begin
              if (length = context.http_request.body_size)
                context.http_request.headers['Content-Length'] = length
              end
            rescue ArgumentError
              # if the body does not support size, skip setting content-length
            end
            @handler.call(context)
          end
        end

        handler(Handler, step: :sign, priority: 0)
      end
    end
  end
end
