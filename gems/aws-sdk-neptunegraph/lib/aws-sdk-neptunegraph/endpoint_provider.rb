# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NeptuneGraph
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: parameters.endpoint, headers: {}, properties: {})
      end
      if Aws::Endpoints::Matchers.set?(parameters.region)
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              if Aws::Endpoints::Matchers.string_equals?(parameters.api_type, "ControlPlane")
                return Aws::Endpoints::Endpoint.new(url: "https://neptune-graph-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
              end
              if Aws::Endpoints::Matchers.string_equals?(parameters.api_type, "DataPlane")
                raise ArgumentError, "Invalid Configuration: fips endpoint is not supported for this API"
              end
              raise ArgumentError, "Invalid Configuration: Unknown ApiType"
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
              if Aws::Endpoints::Matchers.string_equals?(parameters.api_type, "ControlPlane")
                return Aws::Endpoints::Endpoint.new(url: "https://neptune-graph-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
              end
              if Aws::Endpoints::Matchers.string_equals?(parameters.api_type, "DataPlane")
                raise ArgumentError, "Invalid Configuration: fips endpoint is not supported for this API"
              end
              raise ArgumentError, "Invalid Configuration: Unknown ApiType"
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              if Aws::Endpoints::Matchers.string_equals?(parameters.api_type, "ControlPlane")
                return Aws::Endpoints::Endpoint.new(url: "https://neptune-graph.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
              end
              if Aws::Endpoints::Matchers.string_equals?(parameters.api_type, "DataPlane")
                return Aws::Endpoints::Endpoint.new(url: "https://neptune-graph.#{parameters.region}.on.aws", headers: {}, properties: {})
              end
              raise ArgumentError, "Invalid Configuration: Unknown ApiType"
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          if Aws::Endpoints::Matchers.string_equals?(parameters.api_type, "ControlPlane")
            return Aws::Endpoints::Endpoint.new(url: "https://neptune-graph.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?(parameters.api_type, "DataPlane")
            return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.region}.neptune-graph.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
          end
          raise ArgumentError, "Invalid Configuration: Unknown ApiType"
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
