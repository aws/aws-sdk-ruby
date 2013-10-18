module Seahorse
  module Client
    module Plugins

      # @seahorse_client_option [String] :endpoint
      #    The HTTP or HTTPS endpoint to send requests to.
      #    For example:
      #
      #        'http://example.com'
      #        'https://example.com'
      #        'https://example.com:4123'
      #
      #    This should include the scheme, host and optionally the port.
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
