# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GeoMaps
  class EndpointProvider
    def resolve_endpoint(parameters)
      use_dual_stack = parameters.use_dual_stack
      use_fips = parameters.use_fips
      endpoint = parameters.endpoint
      region = parameters.region
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
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws") && Aws::Endpoints::Matchers.boolean_equals?(use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, false)
            return Aws::Endpoints::Endpoint.new(url: "https://maps.geo.#{region}.#{partition_result['dnsSuffix']}/v2", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws") && Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            return Aws::Endpoints::Endpoint.new(url: "https://maps.geo-fips.#{region}.#{partition_result['dualStackDnsSuffix']}/v2", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws") && Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, false)
            return Aws::Endpoints::Endpoint.new(url: "https://maps.geo-fips.#{region}.#{partition_result['dnsSuffix']}/v2", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws") && Aws::Endpoints::Matchers.boolean_equals?(use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            return Aws::Endpoints::Endpoint.new(url: "https://maps.geo.#{region}.#{partition_result['dualStackDnsSuffix']}/v2", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov") && Aws::Endpoints::Matchers.boolean_equals?(use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, false)
            return Aws::Endpoints::Endpoint.new(url: "https://maps.geo.#{region}.us-gov.#{partition_result['dnsSuffix']}/v2", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov") && Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            return Aws::Endpoints::Endpoint.new(url: "https://maps.geo-fips.#{region}.us-gov.#{partition_result['dualStackDnsSuffix']}/v2", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov") && Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, false)
            return Aws::Endpoints::Endpoint.new(url: "https://maps.geo-fips.#{region}.us-gov.#{partition_result['dnsSuffix']}/v2", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov") && Aws::Endpoints::Matchers.boolean_equals?(use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            return Aws::Endpoints::Endpoint.new(url: "https://maps.geo.#{region}.us-gov.#{partition_result['dualStackDnsSuffix']}/v2", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://geo-maps-fips.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, false)
            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true)
              return Aws::Endpoints::Endpoint.new(url: "https://geo-maps-fips.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://geo-maps.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Aws::Endpoints::Endpoint.new(url: "https://geo-maps.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
