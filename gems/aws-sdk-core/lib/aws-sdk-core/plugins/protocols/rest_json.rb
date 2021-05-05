# frozen_string_literal: true

module Aws
  module Plugins
    module Protocols
      class RestJson < Seahorse::Client::Plugin

        class ContentTypeHandler < Seahorse::Client::Handler
          def call(context)
            context.http_request.headers['Content-Type'] = 'application/json'
            @handler.call(context)
          end
        end

        handler(Rest::Handler)
        handler(ContentTypeHandler)
        handler(Json::ErrorHandler, step: :sign)

      end
    end
  end
end
