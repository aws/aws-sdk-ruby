# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AgentDiscovery
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: parameters.endpoint)
      end
      if Aws::Endpoints::Matchers.set?(parameters.region) && (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "FIPS is enabled but Agent Discovery does not have a FIPS endpoint"
        end
        if Aws::Endpoints::Matchers.string_equals?(parameters.region, "us-east-1")
          return Aws::Endpoints::Endpoint.new(url: "https://agent-discovery.us-east-1.api.aws", properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "agent-discovery", "signingRegion" => "us-east-1"}]})
        end
        if Aws::Endpoints::Matchers.string_equals?(parameters.region, "eu-west-1")
          return Aws::Endpoints::Endpoint.new(url: "https://agent-discovery.eu-west-1.api.aws", properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "agent-discovery", "signingRegion" => "eu-west-1"}]})
        end
        if Aws::Endpoints::Matchers.string_equals?(parameters.region, "ap-northeast-1")
          return Aws::Endpoints::Endpoint.new(url: "https://agent-discovery.ap-northeast-1.api.aws", properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "agent-discovery", "signingRegion" => "ap-northeast-1"}]})
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          return Aws::Endpoints::Endpoint.new(url: "https://agent-discovery.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
        end
        return Aws::Endpoints::Endpoint.new(url: "https://agent-discovery.#{parameters.region}.#{partition_result['dnsSuffix']}")
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
