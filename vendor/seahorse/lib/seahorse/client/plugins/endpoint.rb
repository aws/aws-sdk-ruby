module Seahorse
  module Client
    module Plugins

      # @seahorse_client_option [String] :endpoint
      #    The HTTP or HTTPS endpoint to send requests to.
      #    For example:
      #
      #        'example.com'
      #        'http://example.com'
      #        'https://example.com'
      #        'http://example.com:123'
      #
      #    This must include the host.  It may also include the scheme and
      #    port.  When the scheme is not set it defaults to `https`
      #    or `http` based on the `:ssl_default` option.
      #
      # @seahorse_client_option [Boolean] :ssl_default (true)
      #    When `true`, endpoints without a scheme are prefixed by `http://`.
      #    When `false`, endpoints without a scheme are prefixed by `http://`.
      #
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
