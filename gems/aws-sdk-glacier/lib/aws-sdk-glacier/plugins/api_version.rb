module Aws
  module Glacier
    module Plugins
      # @api private
      class ApiVersion < Seahorse::Client::Plugin

        class Handler < Seahorse::Client::Handler

          def call(context)
            version = context.config.api.version
            context.http_request.headers['x-amz-glacier-version'] = version
            @handler.call(context)
          end

        end

        handler(Handler)

      end
    end
  end
end
