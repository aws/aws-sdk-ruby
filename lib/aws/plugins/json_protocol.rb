module Aws
  module Plugins
    class JsonProtocol < Seahorse::Client::Plugin
      handler(Json::Handler)
    end
  end
end
