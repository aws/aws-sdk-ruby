module Aws
  module Plugins
    class QueryProtocol < Seahorse::Client::Plugin

      handler(Query::RequestHandler)
      handler(Xml::ResponseHandler)

    end
  end
end
