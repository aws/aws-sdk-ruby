module Seahorse
  module Client
    module Plugins
      class ContentLength < Plugin

        # @api private
        class Handler < Client::Handler

          def call(context)
            begin
              length = context.http_request.body.size
              context.http_request.headers['Content-Length'] = length
            rescue
              # allowing `Content-Length` failed to be set
              # see Aws::Plugins::TransferEncoding
            end
            @handler.call(context)
          end

        end

        handler(Handler, step: :sign, priority: 0)

      end
    end
  end
end
