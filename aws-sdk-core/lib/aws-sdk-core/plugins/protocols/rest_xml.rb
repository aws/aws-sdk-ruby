module Aws
  module Plugins
    module Protocols
      class RestXml < Seahorse::Client::Plugin

        handler(Xml::RestHandler)
        handler(Xml::ErrorHandler, step: :sign)

      end
    end
  end
end
