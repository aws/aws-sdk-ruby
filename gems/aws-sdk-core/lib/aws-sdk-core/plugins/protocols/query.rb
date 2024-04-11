# frozen_string_literal: true

module Aws
  module Plugins
    module Protocols
      class Query < Seahorse::Client::Plugin
        handler(Aws::Query::Handler)
        handler(Xml::ErrorHandler, step: :sign)
      end
    end
  end
end
