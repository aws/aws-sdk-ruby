module Aws
  module Plugins
    class QueryProtocol < Seahorse::Client::Plugin
      handler(Query::Handler)
    end
  end
end
