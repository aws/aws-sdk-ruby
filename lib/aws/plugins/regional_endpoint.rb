module Aws
  module Plugins

    # @seahorse_client_option [String] :region (ENV['AWS_REGION'])
    #   The AWS region to connect to.  The region is used to construct
    #   the client endpoint.
    #
    # @seahorse_client_option [String] :endpoint
    #   The HTTP endpoint for this client. Normally you should not need
    #   to configure the `:endpoint` directly.  It is constructed from
    #   the `:region` option.  However, sometime you need to specify
    #   the full endpoint, especially when connecting to test
    #   endpoints.
    #
    class RegionalEndpoint < Seahorse::Client::Plugin

      # raised when region is not configured
      MISSING_REGION = 'missing required configuration option :region'

      option(:region) { ENV['AWS_REGION'] || ENV['AMAZON_REGION'] }

      option(:endpoint) do |cfg|
        endpoints = cfg.api.metadata['regional_endpoints']
        if endpoints && endpoints[cfg.region]
          endpoints[cfg.region]
        else
          "#{cfg.api.metadata['endpoint_prefix']}.#{cfg.region}.amazonaws.com"
        end
      end

      def after_initialize(client)
        raise Errors::MissingRegionError unless client.config.region
      end

    end
  end
end
