# frozen_string_literal: true

# This is generated code!

module Aws::ARCRegionswitch
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.use_control_plane_endpoint) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_control_plane_endpoint, true) && Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-cn")
        return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://arc-region-switch-control-plane.cn-north-1.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "arc-region-switch", "signingRegion" => "cn-north-1"}]})
      end
      if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.set?(parameters.use_control_plane_endpoint) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_control_plane_endpoint, true) && Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region))
        if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-cn")
          raise ArgumentError, "Invalid Configuration: FIPS is not supported in this partition"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://arc-region-switch-control-plane-fips.#{partition_result['implicitGlobalRegion']}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "arc-region-switch", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
      end
      if Smithy::Client::EndpointRules.set?(parameters.use_control_plane_endpoint) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_control_plane_endpoint, true) && Smithy::Client::EndpointRules.set?(parameters.region) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region))
        return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://arc-region-switch-control-plane.#{partition_result['implicitGlobalRegion']}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "arc-region-switch", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
      end
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(uri: parameters.endpoint, headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region))
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://arc-region-switch-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
          end
          return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://arc-region-switch.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"

    end
  end
end
