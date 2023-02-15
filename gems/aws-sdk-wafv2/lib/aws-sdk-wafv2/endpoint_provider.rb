# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WAFV2
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
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://wafv2-fips.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
              return Aws::Endpoints::Endpoint.new(url: "https://wafv2-fips.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://wafv2.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "af-south-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.af-south-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "ap-east-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.ap-east-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "ap-northeast-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.ap-northeast-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "ap-northeast-2")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.ap-northeast-2.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "ap-northeast-3")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.ap-northeast-3.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "ap-south-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.ap-south-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "ap-southeast-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.ap-southeast-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "ap-southeast-2")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.ap-southeast-2.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "ap-southeast-3")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.ap-southeast-3.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "ca-central-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.ca-central-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "eu-central-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.eu-central-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "eu-north-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.eu-north-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "eu-south-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.eu-south-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "eu-west-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.eu-west-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "eu-west-2")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.eu-west-2.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "eu-west-3")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.eu-west-3.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "me-south-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.me-south-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "sa-east-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.sa-east-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "us-east-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.us-east-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "us-east-2")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.us-east-2.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "us-west-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.us-west-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "us-west-2")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.us-west-2.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "cn-north-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.cn-north-1.amazonaws.com.cn", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "cn-northwest-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.cn-northwest-1.amazonaws.com.cn", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "us-gov-east-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.us-gov-east-1.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(region, "us-gov-west-1")
            return Aws::Endpoints::Endpoint.new(url: "https://wafv2.us-gov-west-1.amazonaws.com", headers: {}, properties: {})
          end
          return Aws::Endpoints::Endpoint.new(url: "https://wafv2.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
