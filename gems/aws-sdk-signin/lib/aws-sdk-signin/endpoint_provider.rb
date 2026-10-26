# frozen_string_literal: true

# This is generated code!

module Aws::Signin
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.is_control_plane) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_control_plane, true) && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
        if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://signin.#{parameters.region}.api.aws", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "#{parameters.region}"}]})
        end
        if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-cn")
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://signin.#{parameters.region}.api.amazonwebservices.com.cn", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "#{parameters.region}"}]})
        end
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://signin.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "#{parameters.region}"}]})
      end
      if Smithy::Client::EndpointRules.set?(parameters.is_o_auth_endpoint) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_o_auth_endpoint, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
        raise ArgumentError, "FIPS endpoints are not supported for OAuth operations. Disable FIPS or use a non-OAuth operation."
      end
      if Smithy::Client::EndpointRules.set?(parameters.is_o_auth_endpoint) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_o_auth_endpoint, true) && Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws")
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.oauth.signin.aws", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "#{parameters.region}"}]})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws")
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.aws.amazon.com", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-cn")
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.amazonaws.cn", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov")
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.amazonaws-us-gov.com", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso")
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.c2shome.ic.gov", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b")
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.sc2shome.sgov.gov", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-f")
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.csphome.hci.ic.gov", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-e")
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.csphome.adc-e.uk", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-eusc")
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.amazonaws-eusc.eu", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-gov-west-1")
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://signin-fips.amazonaws-us-gov.com", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov")
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin-fips.amazonaws-us-gov.com", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
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
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.aws.amazon.com", headers: {}, properties: {})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-cn") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.amazonaws.cn", headers: {}, properties: {})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.region}.signin.amazonaws-us-gov.com", headers: {}, properties: {})
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS")) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://signin-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://signin-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://signin.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://signin.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
