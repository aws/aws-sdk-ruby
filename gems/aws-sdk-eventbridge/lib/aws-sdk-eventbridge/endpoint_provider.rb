# frozen_string_literal: true

# This is generated code!

module Aws::EventBridge
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
        return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://events.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.endpoint_id) && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region))
        if Smithy::Client::EndpointRules.valid_host_label?(parameters.endpoint_id, true)
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false)
            if Smithy::Client::EndpointRules.set?(parameters.endpoint)
              return Smithy::Client::EndpointRules::Endpoint.new(uri: parameters.endpoint, headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingName" => "events", "signingRegionSet" => ["*"]}]})
            end
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
              if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://#{parameters.endpoint_id}.endpoint.events.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingName" => "events", "signingRegionSet" => ["*"]}]})
              end
              raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
            end
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://#{parameters.endpoint_id}.endpoint.events.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingName" => "events", "signingRegionSet" => ["*"]}]})
          end
          raise ArgumentError, "Invalid Configuration: FIPS is not supported with EventBridge multi-region endpoints."
        end
        raise ArgumentError, "EndpointId must be a valid host label."
      end
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(uri: parameters.endpoint, headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region))
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS")) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://events-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
              if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-gov-east-1")
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://events.us-gov-east-1.amazonaws.com", headers: {}, properties: {})
              end
              if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-gov-west-1")
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://events.us-gov-west-1.amazonaws.com", headers: {}, properties: {})
              end
              return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://events-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://events.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://events.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
