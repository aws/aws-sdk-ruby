module Aws
  module SSO
    module Plugins
      class ContentType < Seahorse::Client::Plugin

        def add_handlers(handlers, config)
          handlers.add(Handler)
        end

        class Handler < Seahorse::Client::Handler
          def call(context)
            # SSO GetRoleCredentials operation breaks when given an empty
            # content-type header. The SDK adds this blank content-type header
            # since Net::HTTP provides a default that can break services.
            # We're setting one here even though it's not used or necessary.
            if context.operation.name == 'GetRoleCredentials'
              context.http_request.headers['content-type'] = 'application/json'
            end
            @handler.call(context)
          end
        end
      end
    end
  end
end
