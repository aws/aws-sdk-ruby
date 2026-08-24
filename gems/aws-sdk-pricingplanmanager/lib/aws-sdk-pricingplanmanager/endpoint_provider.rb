# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PricingPlanManager
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        return Aws::Endpoints::Endpoint.new(url: "#{parameters.endpoint}", properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "pricingplanmanager", "signingRegion" => "us-east-1"}]})
      end
      return Aws::Endpoints::Endpoint.new(url: "https://pricingplanmanager.us-east-1.api.aws", properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "pricingplanmanager", "signingRegion" => "us-east-1"}]})
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
