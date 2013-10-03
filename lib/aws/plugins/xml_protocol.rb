module Aws
  module Plugins
    class XmlProtocol < Seahorse::Client::Plugin

      handler(Xml::RequestHandler)
      handler(ResponseHandler.new(Xml::Parser.new))
      handler(ErrorHandler.new(Xml::ErrorParser.new))

    end
  end
end
