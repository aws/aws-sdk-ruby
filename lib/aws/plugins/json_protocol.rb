module Aws
  module Plugins
    class JsonProtocol < Seahorse::Client::Plugin

      option(:simple, false)

      option(:validate_params) { |config| !config.simple }

      option(:convert_params) { |config| !config.simple }

      def add_handlers(handlers, config)
        unless config.simple
          handlers.add(Json::RequestHandler)
          handlers.add(ResponseHandler.new(Json::Parser))
        end
        handlers.add(ErrorHandler.new(Json::ErrorParser.new))
      end

    end
  end
end
