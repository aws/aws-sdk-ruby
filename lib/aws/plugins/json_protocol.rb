module Aws
  module Plugins
    class JsonProtocol < Seahorse::Client::Plugin

      handler(Json::RequestHandler)
      handler(Json::ResponseHandler)

    end
  end
end
