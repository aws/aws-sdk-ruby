# frozen_string_literal: true

module Aws
  module Plugins
    module Protocols
      class RestJson < Seahorse::Client::Plugin

        class ContentTypeHandler < Seahorse::Client::Handler
          def call(context)
            if modeled_body?(context)
              context.http_request.headers['Content-Type'] = 'application/json'
            end
            @handler.call(context)
          end

          private

          def modeled_body?(context)
            context.operation.input.shape.members.any?
          end
        end

        handler(Rest::Handler)
        handler(ContentTypeHandler)
        handler(Json::ErrorHandler, step: :sign)

      end
    end
  end
end
