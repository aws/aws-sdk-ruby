module Aws
  module Plugins
    class QueryProtocol < Seahorse::Client::Plugin

      handler(RequestHandler.new(Query::Serializer.new))
      handler(ResponseHandler.new(Xml::Parser.new))
      handler(ErrorHandler.new(Xml::ErrorParser.new), step: :sign)

    end
  end
end
