require 'multi_xml'

module Aws
  module Plugins
    class ContentLength < Seahorse::Client::Plugin

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          unless context.http_request.headers['Content-Length']
            length = context.http_request.body.size
            context.http_request.headers['Content-Length'] = length
          end
          @handler.call(context)
        end

      end

      handler(Handler, step: :sign, priority: 0)

    end
  end
end
