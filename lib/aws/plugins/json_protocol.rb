module Aws
  module Plugins

    # @seahorse.client.option [Boolean] :raw_json (false)
    #   When `true`, request parameters are not validated or translated.
    #   Request parameter keys and values are expected to be formated as
    #   they are expected by the service.  Similarly, when `:raw_json`
    #   is enabled, response data is no longer translated.  Instead
    #   it is simply the result of a JSON parse.
    class JsonProtocol < Seahorse::Client::Plugin

      option(:raw_json, false)

      option(:validate_params) { |config| !config.raw_json }

      option(:convert_params) { |config| !config.raw_json }

      def add_handlers(handlers, config)
        if config.raw_json
          handlers.add(Seahorse::Client::Plugins::JsonSimple::Handler)
        else
          handlers.add(RequestHandler.new(Json::Serializer.new))
          handlers.add(ResponseHandler.new(Json::Parser.new))
        end
        handlers.add(ErrorHandler.new(Json::ErrorParser.new), step: :sign)
      end

    end
  end
end
