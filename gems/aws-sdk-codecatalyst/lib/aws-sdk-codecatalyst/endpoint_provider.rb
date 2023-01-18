# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeCatalyst
  class EndpointProvider
    def resolve_endpoint(parameters)
      use_fips = parameters.use_fips
      region = parameters.region
      endpoint = parameters.endpoint
      if Aws::Endpoints::Matchers.set?(endpoint)
        return Aws::Endpoints::Endpoint.new(url: endpoint, headers: {}, properties: {})
      end
      if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.set?(region)) && (partition_result = Aws::Endpoints::Matchers.aws_partition("us-west-2"))
        if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
          if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), false)
            raise ArgumentError, "Partition does not support FIPS."
          end
          return Aws::Endpoints::Endpoint.new(url: "https://codecatalyst-fips.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
        end
        return Aws::Endpoints::Endpoint.new(url: "https://codecatalyst.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
      end
      if Aws::Endpoints::Matchers.set?(region) && (partition_result = Aws::Endpoints::Matchers.aws_partition(region))
        if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
          if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), false)
            raise ArgumentError, "Partition does not support FIPS."
          end
          return Aws::Endpoints::Endpoint.new(url: "https://codecatalyst-fips.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
        end
        return Aws::Endpoints::Endpoint.new(url: "https://codecatalyst.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
      end
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
