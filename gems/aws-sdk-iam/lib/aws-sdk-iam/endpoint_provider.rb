# frozen_string_literal: true

# This is generated code!

module Aws::IAM
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
        return Smithy::Client::EndpointRules::Endpoint.new(url: parameters.endpoint, headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region))
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.global.api.aws", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam-fips.global.api.aws", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-cn") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.global.api.amazonwebservices.com.cn", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "cn-north-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-cn") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.cn-north-1.amazonaws.com.cn", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "cn-north-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.us-gov.api.aws", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.us-gov.api.aws", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.us-gov.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.us-gov.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.us-iso-east-1.c2s.ic.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-iso-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam-fips.us-iso-east-1.c2s.ic.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-iso-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.us-isob-east-1.sc2s.sgov.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-isob-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam-fips.us-isob-east-1.sc2s.sgov.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-isob-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-e") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.eu-isoe-west-1.cloud.adc-e.uk", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "eu-isoe-west-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-f") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.us-isof-south-1.csp.hci.ic.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-isof-south-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-eusc") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.eusc-de-east-1.amazonaws.eu", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "eusc-de-east-1"}]})
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS")) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam-fips.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam-fips.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://iam.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
