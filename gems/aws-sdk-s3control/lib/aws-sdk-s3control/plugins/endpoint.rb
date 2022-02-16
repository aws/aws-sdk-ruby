module Aws
  module S3Control
    module Plugins
      # @api private
      class Endpoint < Seahorse::Client::Plugin

        def add_handlers(handlers, _config)
          handlers.add(Handler, priority: 51, step: :build)
        end

        # @api private
        class Handler < Seahorse::Client::Handler
          def call(context)
            klass_str = 'Aws::S3Control::Endpoints::' + context.operation.name
            klass = Object.const_get(klass_str)
            endpoint = klass.endpoint(context.config, context.params)
            if endpoint
              context.metadata[:endpoint] = endpoint
              context.http_request.endpoint = endpoint.url
              endpoint.headers.each do |key, value|
                context.http_request.headers[key] = value
              end
            end
            @handler.call(context)
          end
        end
      end
    end
  end
end
