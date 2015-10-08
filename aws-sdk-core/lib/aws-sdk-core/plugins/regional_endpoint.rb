module Aws
  module Plugins

    # @seahorse.client.option [required, String] :region
    #   The AWS region to connect to.  The region is used to construct
    #   the client endpoint.  Defaults to `ENV['AWS_REGION']`.
    #   Also checks `AMAZON_REGION` and `AWS_DEFAULT_REGION`.
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

      option(:endpoint) do |cfg|
        if endpoint_prefix = cfg.api.metadata['endpointPrefix']
          EndpointProvider.resolve(cfg.region, endpoint_prefix)
        end
      end

      def after_initialize(client)
        if client.config.region.nil? or client.config.region == ''
          msg = "missing region; use :region option or "
          msg << "export region name to ENV['AWS_REGION']"
          raise Errors::MissingRegionError, msg
        end
      end

    end
  end
end
