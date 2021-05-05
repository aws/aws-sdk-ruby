# frozen_string_literal: true

module Aws
  module Plugins
    module Protocols
      class RestJson < Seahorse::Client::Plugin

        class ContentTypeHandler < Seahorse::Client::Handler
          CONTENT_TYPE = 'application/x-amz-json-%s'

          def call(context)
            json_version = context.config.api.metadata['jsonVersion']
            content_type = CONTENT_TYPE % [json_version]
            context.http_request.headers['Content-Type'] = content_type
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
