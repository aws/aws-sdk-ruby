# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::FreeTier
  # @api private
  module Endpoints

    class GetFreeTierUsage
      def self.build(context)
        Aws::FreeTier::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

  end
end
