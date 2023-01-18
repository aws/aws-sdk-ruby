# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class EndpointProvider
    def resolve_endpoint(parameters)
      region = parameters.region
      use_dual_stack = parameters.use_dual_stack
      use_fips = parameters.use_fips
      endpoint = parameters.endpoint
      if (partition_result = Aws::Endpoints::Matchers.aws_partition(region))
        if Aws::Endpoints::Matchers.set?(endpoint) && (url = Aws::Endpoints::Matchers.parse_url(endpoint))
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
          end
          return Aws::Endpoints::Endpoint.new(url: endpoint, headers: {}, properties: {})
        end
        if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws")
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://iam-fips.#{region}.api.aws", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-east-1", "signingName"=>"iam"}]})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
              return Aws::Endpoints::Endpoint.new(url: "https://iam-fips.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-east-1", "signingName"=>"iam"}]})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://iam.#{region}.api.aws", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-east-1", "signingName"=>"iam"}]})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Aws::Endpoints::Endpoint.new(url: "https://iam.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-east-1", "signingName"=>"iam"}]})
        end
        if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-cn")
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://iam-fips.#{region}.api.amazonwebservices.com.cn", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"cn-north-1", "signingName"=>"iam"}]})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
              return Aws::Endpoints::Endpoint.new(url: "https://iam-fips.#{region}.amazonaws.com.cn", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"cn-north-1", "signingName"=>"iam"}]})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://iam.#{region}.api.amazonwebservices.com.cn", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"cn-north-1", "signingName"=>"iam"}]})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Aws::Endpoints::Endpoint.new(url: "https://iam.cn-north-1.amazonaws.com.cn", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"cn-north-1", "signingName"=>"iam"}]})
        end
        if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov")
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://iam-fips.#{region}.api.aws", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-gov-west-1", "signingName"=>"iam"}]})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
              return Aws::Endpoints::Endpoint.new(url: "https://iam.us-gov.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-gov-west-1", "signingName"=>"iam"}]})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://iam.#{region}.api.aws", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-gov-west-1", "signingName"=>"iam"}]})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Aws::Endpoints::Endpoint.new(url: "https://iam.us-gov.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-gov-west-1", "signingName"=>"iam"}]})
        end
        if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso")
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
              return Aws::Endpoints::Endpoint.new(url: "https://iam-fips.#{region}.c2s.ic.gov", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-iso-east-1", "signingName"=>"iam"}]})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          return Aws::Endpoints::Endpoint.new(url: "https://iam.us-iso-east-1.c2s.ic.gov", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-iso-east-1", "signingName"=>"iam"}]})
        end
        if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso-b")
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
              return Aws::Endpoints::Endpoint.new(url: "https://iam-fips.#{region}.sc2s.sgov.gov", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-isob-east-1", "signingName"=>"iam"}]})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          return Aws::Endpoints::Endpoint.new(url: "https://iam.us-isob-east-1.sc2s.sgov.gov", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-isob-east-1", "signingName"=>"iam"}]})
        end
        if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
            return Aws::Endpoints::Endpoint.new(url: "https://iam-fips.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
          end
          raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
            if Aws::Endpoints::Matchers.string_equals?(region, "iam")
              return Aws::Endpoints::Endpoint.new(url: "https://iam-fips.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-east-1", "signingName"=>"iam"}]})
            end
            if Aws::Endpoints::Matchers.string_equals?(region, "aws-global")
              return Aws::Endpoints::Endpoint.new(url: "https://iam-fips.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-east-1", "signingName"=>"iam"}]})
            end
            if Aws::Endpoints::Matchers.string_equals?(region, "iam-govcloud")
              return Aws::Endpoints::Endpoint.new(url: "https://iam.us-gov.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-gov-west-1", "signingName"=>"iam"}]})
            end
            if Aws::Endpoints::Matchers.string_equals?(region, "aws-us-gov-global")
              return Aws::Endpoints::Endpoint.new(url: "https://iam.us-gov.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-gov-west-1", "signingName"=>"iam"}]})
            end
            return Aws::Endpoints::Endpoint.new(url: "https://iam-fips.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
          end
          raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
            return Aws::Endpoints::Endpoint.new(url: "https://iam.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
          end
          raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
        end
        if Aws::Endpoints::Matchers.string_equals?(region, "aws-global")
          return Aws::Endpoints::Endpoint.new(url: "https://iam.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-east-1", "signingName"=>"iam"}]})
        end
        if Aws::Endpoints::Matchers.string_equals?(region, "aws-cn-global")
          return Aws::Endpoints::Endpoint.new(url: "https://iam.cn-north-1.amazonaws.com.cn", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"cn-north-1", "signingName"=>"iam"}]})
        end
        if Aws::Endpoints::Matchers.string_equals?(region, "aws-us-gov-global")
          return Aws::Endpoints::Endpoint.new(url: "https://iam.us-gov.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-gov-west-1", "signingName"=>"iam"}]})
        end
        if Aws::Endpoints::Matchers.string_equals?(region, "aws-iso-global")
          return Aws::Endpoints::Endpoint.new(url: "https://iam.us-iso-east-1.c2s.ic.gov", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-iso-east-1", "signingName"=>"iam"}]})
        end
        if Aws::Endpoints::Matchers.string_equals?(region, "aws-iso-b-global")
          return Aws::Endpoints::Endpoint.new(url: "https://iam.us-isob-east-1.sc2s.sgov.gov", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-isob-east-1", "signingName"=>"iam"}]})
        end
        return Aws::Endpoints::Endpoint.new(url: "https://iam.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
      end
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
