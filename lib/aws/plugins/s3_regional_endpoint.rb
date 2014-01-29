
module Aws
  module Plugins
    class S3RegionalEndpoint < RegionalEndpoint

      option(:endpoint) do |config|
        raise ArgumentError, MISSING_REGION unless config.region
        if config.region == 'us-east-1'
          's3.amazonaws.com'
        else
          's3-%s.amazonaws.com' % config.region
        end
      end

    end
  end
end
