# frozen_string_literal: true

# This is generated code!

module Aws::STS
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "ap-northeast-1")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "ap-south-1")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "ap-southeast-1")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "ap-southeast-2")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "ca-central-1")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "eu-central-1")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "eu-north-1")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "eu-west-1")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "eu-west-2")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "eu-west-3")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "sa-east-1")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-east-1")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-east-2")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-west-1")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-west-2")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
        end
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "#{parameters.region}"}]})
      end
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(url: parameters.endpoint, headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS")) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov")
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.#{parameters.region}.amazonaws.com", headers: {}, properties: {})
              end
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          if Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "sts", "signingRegion" => "us-east-1"}]})
          end
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://sts.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
