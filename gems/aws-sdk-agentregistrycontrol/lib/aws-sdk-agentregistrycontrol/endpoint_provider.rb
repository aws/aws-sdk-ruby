# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AgentRegistryControl
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        return Aws::Endpoints::Endpoint.new(url: parameters.endpoint)
      end
      if Aws::Endpoints::Matchers.set?(parameters.region)
        return Aws::Endpoints::Endpoint.new(url: "https://agent-registry-control.#{parameters.region}.api.aws")
      end
      raise ArgumentError, "Unable to resolve an Agent Registry Control endpoint: Region was not set and no explicit Endpoint override was provided."
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
