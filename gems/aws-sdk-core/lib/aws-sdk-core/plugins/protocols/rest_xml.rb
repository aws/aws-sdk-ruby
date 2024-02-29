# frozen_string_literal: true

module Aws
  module Plugins
    module Protocols
      class RestXml < Seahorse::Client::Plugin

        class ContentTypeHandler < Seahorse::Client::Handler
          def call(context)
            body = context.http_request.body
            if !body.respond_to?(:size) ||
               (body.respond_to?(:size) && body.size > 0)
              context.http_request.headers['Content-Type'] ||=
                'application/xml'
            end
            @handler.call(context)
          end
        end

        handler(Rest::Handler)
        handler(ContentTypeHandler, priority: 30)
        handler(Xml::ErrorHandler, step: :sign)
      end
    end
  end
end
