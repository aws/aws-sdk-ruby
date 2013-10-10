module Aws
  module Plugins
    class JsonProtocol < Seahorse::Client::Plugin

      option(:simple, false)

      option(:validate_params) { |config| !config.simple }

      option(:convert_params) { |config| !config.simple }

      def add_handlers(handlers, config)
        if config.simple
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
