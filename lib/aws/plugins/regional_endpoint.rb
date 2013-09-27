
module Aws
  module Plugins
    class RegionalEndpoint < Seahorse::Client::Plugin

      # raised when region is not configured
      MISSING_REGION = 'missing required configuration option :region'

      option(:region) { ENV['AWS_REGION'] || ENV['AMAZON_REGION'] }

      option(:endpoint) do |config|
        if config.api.endpoint.match(/%s/) and config.region.nil?
          raise ArgumentError, MISSING_REGION
        end
        config.api.endpoint % config.region
      end

    end
  end
end
