module Aws
  module Plugins
    # @api private
    class EndpointDiscoveryErrors < Seahorse::Client::Plugin

      class Handler < Seahorse::Client::Handler

        # When endpoint discovery error occurs
        # evict the endpoint from cache
        def call(context)
          response = @handler.call(context)
          # only apply to operations that allows endpoint discovery
          if context.operation.endpoint_discovery
            response.context.http_response.on_error do |error|
              error_name = extract_name(error) 
              status_code = response.context.http_response.status_code
              if endpoint_discovery_error?(error_name, status_code)
                response.error = Errors::EndpointDiscoveryError.new 
                key = context.config.endpoint_cache.extract_key(context)
                context.config.endpoint_cache.delete(key)
              end
            end
          end
          response
        end

        private

        def endpoint_discovery_error?(name, code)
          code == 421 || name == 'InvalidEndpointException'
        end

        def extract_name(error)
          error.is_a?(Errors::ServiceError) ?
          error.class.code :
          error.class.name.to_s
        end

      end

      handle(Handler, step: :sign)

    end
  end
end
