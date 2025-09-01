# frozen_string_literal: true

# This is generated code!

module Aws::Organizations
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
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations.us-east-1.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "organizations", "signingRegion" => "us-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations-fips.us-east-1.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "organizations", "signingRegion" => "us-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-cn") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations.cn-northwest-1.amazonaws.com.cn", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "organizations", "signingRegion" => "cn-northwest-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations.us-gov-west-1.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "organizations", "signingRegion" => "us-gov-west-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations.us-gov-west-1.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "organizations", "signingRegion" => "us-gov-west-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations.us-iso-east-1.c2s.ic.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "organizations", "signingRegion" => "us-iso-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations.us-isob-east-1.sc2s.sgov.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "organizations", "signingRegion" => "us-isob-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-f") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations.us-isof-south-1.csp.hci.ic.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "organizations", "signingRegion" => "us-isof-south-1"}]})
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS")) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
              return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"          end
          return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://organizations.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
