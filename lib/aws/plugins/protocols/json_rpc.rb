module Aws
  module Plugins
    module Protocols

      # @seahorse.client.option [Boolean] :simple_json (false)
      #   Enables simple mode where the request body becomes a simple
      #   JSON dump of the request paramters.  The response data will also
      #   be a simple JSON load of the response body.  Enabling
      #   simple mode avoids the overhead of request parameter valdiation,
      #   request parameter type conversion, and structuring response
      #   data.  You must provide request params in the format expected
      #   by the remote service.
      class JsonRpc < Seahorse::Client::Plugin

        option(:simple_json, false)

        option(:validate_params) { |config| !config.simple_json }

        option(:convert_params) { |config| !config.simple_json }

        def add_handlers(handlers, config)
          handlers.add(Json::ErrorHandler, step: :sign)
          handlers.add(Json::RpcHeadersHandler)
          handlers.add(config.simple_json ?
            Json::SimpleBodyHandler :
            Json::RpcBodyHandler)
        end

      end
    end
  end
end
