# frozen_string_literal: true

module Aws
  module Plugins
    module Protocols
      class RestJson < Seahorse::Client::Plugin
        handler(Rest::Handler)
        # Rest::Handler will set a default JSON body, so size can be checked
        # if this handler is run after serialization.
        handler(Rest::ContentTypeHandler, priority: 30)
        handler(Json::ErrorHandler, step: :sign)
      end

    end
  end
end
