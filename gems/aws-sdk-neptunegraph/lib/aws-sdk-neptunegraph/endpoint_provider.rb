# frozen_string_literal: true

# This is generated code!

module Aws::NeptuneGraph
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"        end
        return Smithy::Client::EndpointRules::Endpoint.new(uri: parameters.endpoint, headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region))
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS")) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              if Smithy::Client::EndpointRules.string_equals?(parameters.api_type, "ControlPlane")
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://neptune-graph-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
              end
              if Smithy::Client::EndpointRules.string_equals?(parameters.api_type, "DataPlane")
                raise ArgumentError, "Invalid Configuration: fips endpoint is not supported for this API"              end
              raise ArgumentError, "Invalid Configuration: Unknown ApiType"            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"))
              if Smithy::Client::EndpointRules.string_equals?(parameters.api_type, "ControlPlane")
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://neptune-graph-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
              end
              if Smithy::Client::EndpointRules.string_equals?(parameters.api_type, "DataPlane")
                raise ArgumentError, "Invalid Configuration: fips endpoint is not supported for this API"              end
              raise ArgumentError, "Invalid Configuration: Unknown ApiType"            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              if Smithy::Client::EndpointRules.string_equals?(parameters.api_type, "ControlPlane")
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://neptune-graph.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
              end
              if Smithy::Client::EndpointRules.string_equals?(parameters.api_type, "DataPlane")
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://neptune-graph.#{parameters.region}.on.aws", headers: {}, properties: {})
              end
              raise ArgumentError, "Invalid Configuration: Unknown ApiType"            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"          end
          if Smithy::Client::EndpointRules.string_equals?(parameters.api_type, "ControlPlane")
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://neptune-graph.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
          end
          if Smithy::Client::EndpointRules.string_equals?(parameters.api_type, "DataPlane")
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://#{parameters.region}.neptune-graph.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
          end
          raise ArgumentError, "Invalid Configuration: Unknown ApiType"        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
