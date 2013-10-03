module Aws
  module Plugins
    class QueryProtocol < Seahorse::Client::Plugin

      handler(Query::RequestHandler)
      handler(ResponseHandler.new(Xml::Parser))
      handler(ErrorHandler.new(Xml::ErrorParser.new))

    end
  end
end
