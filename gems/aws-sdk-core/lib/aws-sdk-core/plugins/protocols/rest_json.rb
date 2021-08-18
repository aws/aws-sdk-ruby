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

          # operation is modeled for body when it is modeled for a payload
          # either with payload trait or normal members.
          def modeled_body?(context)
            rules = context.operation.input
            return true if rules[:payload]
            rules.shape.members.each do |member|
              _name, shape = member
              return true if shape.location.nil?
            end
            false
          end
        end

        handler(Rest::Handler)
        handler(ContentTypeHandler)
        handler(Json::ErrorHandler, step: :sign)

      end
    end
  end
end
