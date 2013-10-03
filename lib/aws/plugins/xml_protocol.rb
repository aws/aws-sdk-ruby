module Aws
  module Plugins
    class XmlProtocol < Seahorse::Client::Plugin

      handler(Xml::RequestHandler)
      handler(Xml::ResponseHandler)

    end
  end
end
