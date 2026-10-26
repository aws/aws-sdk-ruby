# frozen_string_literal: true

# This is generated code!

module Aws::AgentRegistry
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        return Smithy::Client::EndpointRules::Endpoint.new(url: parameters.endpoint)
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://agent-registry.#{parameters.region}.api.aws")
      end
      raise ArgumentError, "Unable to resolve an Agent Registry endpoint: Region was not set and no explicit Endpoint override was provided."
    end
  end
end
