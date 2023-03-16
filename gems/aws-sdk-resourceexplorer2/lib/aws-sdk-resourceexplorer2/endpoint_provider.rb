# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResourceExplorer2
  class EndpointProvider
    def resolve_endpoint(parameters)
      region = parameters.region
      use_fips = parameters.use_fips
      endpoint = parameters.endpoint
      if Aws::Endpoints::Matchers.set?(endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: endpoint, headers: {}, properties: {})
      end
      if Aws::Endpoints::Matchers.set?(region)
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(region))
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
            if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
              if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
                return Aws::Endpoints::Endpoint.new(url: "https://resource-explorer-2-fips.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            return Aws::Endpoints::Endpoint.new(url: "https://resource-explorer-2.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
              return Aws::Endpoints::Endpoint.new(url: "https://resource-explorer-2-fips.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          return Aws::Endpoints::Endpoint.new(url: "https://resource-explorer-2.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
