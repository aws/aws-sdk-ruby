# frozen_string_literal: true

# This is generated code!

module Aws::SignerData
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        return Smithy::Client::EndpointRules::Endpoint.new(url: parameters.endpoint)
      end
      if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://data-signer-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://data-signer-fips.#{parameters.region}.#{partition_result['dnsSuffix']}")
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://data-signer.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
        end
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://data-signer.#{parameters.region}.#{partition_result['dnsSuffix']}")
      end
    end
  end
end
