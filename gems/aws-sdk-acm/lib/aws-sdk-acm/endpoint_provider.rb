# frozen_string_literal: true

# This is generated code!

module Aws::ACM
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        return Smithy::Client::EndpointRules::Endpoint.new(url: "#{parameters.endpoint}")
      end
      if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
        if Smithy::Client::EndpointRules.string_equals?(parameters.service_type, "ACM-ACME")
          if Smithy::Client::EndpointRules.set?(parameters.endpoint)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "#{parameters.endpoint}")
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws")
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
              raise ArgumentError, "FIPS endpoints are not available for ACME operations"
            end
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://acm-acme.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
          end
          raise ArgumentError, "ACME operations are only available in commercial AWS partitions"
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://acm-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov")
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://acm.#{parameters.region}.amazonaws.com")
          end
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://acm-fips.#{parameters.region}.#{partition_result['dnsSuffix']}")
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://acm.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
        end
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://acm.#{parameters.region}.#{partition_result['dnsSuffix']}")
      end
      raise ArgumentError, "Region must be set to resolve an endpoint."
    end
  end
end
