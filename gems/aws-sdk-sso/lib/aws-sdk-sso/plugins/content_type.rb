module Aws
  module SSO
    module Plugins
      class ContentType < Seahorse::Client::Plugin

        def add_handlers(handlers, config)
          handlers.add(Handler, operations: [:get_role_credentials])
        end

        class Handler < Seahorse::Client::Handler
          def call(context)
            # SSO GetRoleCredentials operation breaks when given an empty
            # content-type header. The SDK adds this blank content-type header
            # since Net::HTTP provides a default that can break services.
            # We're setting one here even though it's not used or necessary.
            context.http_request.headers['content-type'] = 'application/json'
            @handler.call(context)
          end
        end
      end
    end
  end
end
