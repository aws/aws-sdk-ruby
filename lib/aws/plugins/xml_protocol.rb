module Aws
  module Plugins
    class XmlProtocol < Seahorse::Client::Plugin

      handler(Xml::Handler, step: :build, priority: 50)

    end
  end
end
