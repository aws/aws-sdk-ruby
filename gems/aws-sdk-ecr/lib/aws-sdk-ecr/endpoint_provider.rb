# frozen_string_literal: true

# This is generated code!

module Aws::ECR
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
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(uri: parameters.endpoint, headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region))
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS")) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              if Smithy::Client::EndpointRules.string_equals?("aws", Smithy::Client::EndpointRules.attr(partition_result, "name"))
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://ecr-fips.#{parameters.region}.api.aws", headers: {}, properties: {})
              end
              if Smithy::Client::EndpointRules.string_equals?("aws-us-gov", Smithy::Client::EndpointRules.attr(partition_result, "name"))
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://ecr-fips.#{parameters.region}.api.aws", headers: {}, properties: {})
              end
              return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://api.ecr-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws")
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://ecr-fips.#{parameters.region}.amazonaws.com", headers: {}, properties: {})
              end
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov")
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://ecr-fips.#{parameters.region}.amazonaws.com", headers: {}, properties: {})
              end
              return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://api.ecr-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              if Smithy::Client::EndpointRules.string_equals?("aws", Smithy::Client::EndpointRules.attr(partition_result, "name"))
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://ecr.#{parameters.region}.api.aws", headers: {}, properties: {})
              end
              if Smithy::Client::EndpointRules.string_equals?("aws-cn", Smithy::Client::EndpointRules.attr(partition_result, "name"))
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://ecr.#{parameters.region}.api.amazonwebservices.com.cn", headers: {}, properties: {})
              end
              if Smithy::Client::EndpointRules.string_equals?("aws-us-gov", Smithy::Client::EndpointRules.attr(partition_result, "name"))
                return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://ecr.#{parameters.region}.api.aws", headers: {}, properties: {})
              end
              return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://api.ecr.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://api.ecr.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
