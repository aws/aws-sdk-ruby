# frozen_string_literal: true

# This is generated code!

module Aws::PricingPlanManager
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        return Smithy::Client::EndpointRules::Endpoint.new(url: "#{parameters.endpoint}", properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "pricingplanmanager", "signingRegion" => "us-east-1"}]})
      end
      return Smithy::Client::EndpointRules::Endpoint.new(url: "https://pricingplanmanager.us-east-1.api.aws", properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "pricingplanmanager", "signingRegion" => "us-east-1"}]})
    end
  end
end
