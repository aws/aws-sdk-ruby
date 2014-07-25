module Aws
  module Plugins

    # @seahorse.client.option [String] :region
    #   The AWS region to connect to.  The region is used to construct
    #   the client endpoint.  Defaults to `ENV['AWS_DEFAULT_REGION']`.
    #   Also checks `AWS_REGION` and `AMAZON_REGION`.
    #
    # @seahorse.client.option [String] :endpoint A default endpoint is
    #   constructed from the `:region`.
    #
    class RegionalEndpoint < Seahorse::Client::Plugin

      # raised when region is not configured
      MISSING_REGION = 'missing required configuration option :region'

      option(:region) {
        keys = %w(AWS_REGION AMAZON_REGION AWS_DEFAULT_REGION)
        ENV.values_at(*keys).compact.first
      }

      option(:endpoint_provider) { EndpointProvider.default_provider }

      option(:endpoint) do |cfg|
        cfg.endpoint_provider.resolve(
          service: cfg.api.metadata('endpointPrefix'),
          region: cfg.region,
          scheme: 'https'
        )[:endpoint]
      end

      def after_initialize(client)
        if client.config.region.nil? or client.config.region == ''
          raise Errors::MissingRegionError
        end
      end

    end
  end
end
