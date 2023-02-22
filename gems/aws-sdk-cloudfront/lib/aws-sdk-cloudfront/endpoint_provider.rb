# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFront
  class EndpointProvider
    def resolve_endpoint(parameters)
      region = parameters.region
      use_dual_stack = parameters.use_dual_stack
      use_fips = parameters.use_fips
      endpoint = parameters.endpoint
      if Aws::Endpoints::Matchers.set?(endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: endpoint, headers: {}, properties: {})
      end
      if Aws::Endpoints::Matchers.set?(region)
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(region))
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws")
            if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
              if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
                return Aws::Endpoints::Endpoint.new(url: "https://cloudfront-fips.#{region}.api.aws", headers: {}, properties: {})
              end
              raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
            end
            if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
              if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
                return Aws::Endpoints::Endpoint.new(url: "https://cloudfront-fips.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"cloudfront", "signingRegion"=>"us-east-1"}]})
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
              if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
                return Aws::Endpoints::Endpoint.new(url: "https://cloudfront.#{region}.api.aws", headers: {}, properties: {})
              end
              raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
            end
            return Aws::Endpoints::Endpoint.new(url: "https://cloudfront.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"cloudfront", "signingRegion"=>"us-east-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-cn")
            if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
              if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
                return Aws::Endpoints::Endpoint.new(url: "https://cloudfront-fips.#{region}.api.amazonwebservices.com.cn", headers: {}, properties: {})
              end
              raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
            end
            if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
              if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
                return Aws::Endpoints::Endpoint.new(url: "https://cloudfront-fips.#{region}.amazonaws.com.cn", headers: {}, properties: {})
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
              if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
                return Aws::Endpoints::Endpoint.new(url: "https://cloudfront.#{region}.api.amazonwebservices.com.cn", headers: {}, properties: {})
              end
              raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
            end
            return Aws::Endpoints::Endpoint.new(url: "https://cloudfront.cn-northwest-1.amazonaws.com.cn", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"cloudfront", "signingRegion"=>"cn-northwest-1"}]})
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://cloudfront-fips.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
              if Aws::Endpoints::Matchers.string_equals?(region, "aws-global")
                return Aws::Endpoints::Endpoint.new(url: "https://cloudfront-fips.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"cloudfront", "signingRegion"=>"us-east-1"}]})
              end
              return Aws::Endpoints::Endpoint.new(url: "https://cloudfront-fips.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://cloudfront.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "aws-global")
            return Aws::Endpoints::Endpoint.new(url: "https://cloudfront.amazonaws.com", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"cloudfront", "signingRegion"=>"us-east-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "aws-cn-global")
            return Aws::Endpoints::Endpoint.new(url: "https://cloudfront.cn-northwest-1.amazonaws.com.cn", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"cloudfront", "signingRegion"=>"cn-northwest-1"}]})
          end
          return Aws::Endpoints::Endpoint.new(url: "https://cloudfront.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
