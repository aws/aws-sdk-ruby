# frozen_string_literal: true

module Aws
  module Plugins
    module Protocols
      class RestXml < Seahorse::Client::Plugin

        handler(Rest::Handler, priority: 10)
        handler(Xml::ErrorHandler, step: :sign)

      end
    end
  end
end
