module Aws
  module Plugins
    module Protocols

      # @seahorse.client.option [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      #
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
