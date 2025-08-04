# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ARCRegionswitch
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.use_control_plane_endpoint) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_control_plane_endpoint, true) && Aws::Endpoints::Matchers.set?(parameters.region) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.set?(parameters.endpoint)) && (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-cn")
        return Aws::Endpoints::Endpoint.new(url: "https://arc-region-switch-control-plane.cn-north-1.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "arc-region-switch", "signingRegion" => "cn-north-1"}]})
      end
      if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.set?(parameters.endpoint)) && Aws::Endpoints::Matchers.set?(parameters.use_control_plane_endpoint) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_control_plane_endpoint, true) && Aws::Endpoints::Matchers.set?(parameters.region) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
        if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-cn")
          raise ArgumentError, "Invalid Configuration: FIPS is not supported in this partition"
        end
        return Aws::Endpoints::Endpoint.new(url: "https://arc-region-switch-control-plane-fips.#{partition_result['implicitGlobalRegion']}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "arc-region-switch", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
      end
      if Aws::Endpoints::Matchers.set?(parameters.use_control_plane_endpoint) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_control_plane_endpoint, true) && Aws::Endpoints::Matchers.set?(parameters.region) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.set?(parameters.endpoint)) && (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
        return Aws::Endpoints::Endpoint.new(url: "https://arc-region-switch-control-plane.#{partition_result['implicitGlobalRegion']}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "arc-region-switch", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
      end
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: parameters.endpoint, headers: {}, properties: {})
      end
      if Aws::Endpoints::Matchers.set?(parameters.region)
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
            return Aws::Endpoints::Endpoint.new(url: "https://arc-region-switch-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
          end
          return Aws::Endpoints::Endpoint.new(url: "https://arc-region-switch.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
