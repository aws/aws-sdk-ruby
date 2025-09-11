# frozen_string_literal: true

# This is generated code!

module Aws::GameLiftStreams
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(uri: parameters.endpoint, headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region))
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://gameliftstreams-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
          end
          return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://gameliftstreams.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
