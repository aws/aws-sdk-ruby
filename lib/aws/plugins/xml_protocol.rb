module Aws
  module Plugins
    class XmlProtocol < Seahorse::Client::Plugin

      handler(RequestHandler.new(Xml::Serializer.new))
      handler(ResponseHandler.new(Xml::Parser.new))
      handler(ErrorHandler.new(Xml::ErrorParser.new), step: :sign)

    end
  end
end
