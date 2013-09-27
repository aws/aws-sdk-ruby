module Seahorse
  module Client
    module Plugins
      class Endpoint < Plugin

        option(:endpoint) { |config| config.api.endpoint }

        option(:ssl_default, true)

        handle_request(:EndpointHandler, priority: 90) do |context|
          context.http_request.endpoint = Http::Endpoint.new(
            context.config.endpoint, ssl_default: context.config.ssl_default)
        end

      end
    end
  end
end
