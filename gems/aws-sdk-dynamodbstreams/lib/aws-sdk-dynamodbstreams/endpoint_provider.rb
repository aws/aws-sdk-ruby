# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DynamoDBStreams
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
              return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
              if Aws::Endpoints::Matchers.string_equals?("aws-us-gov", Aws::Endpoints::Matchers.attr(partition_result, "name"))
                return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.amazonaws.com", headers: {}, properties: {})
              end
              return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          if Aws::Endpoints::Matchers.string_equals?(parameters.region, "local")
            return Aws::Endpoints::Endpoint.new(url: "http://localhost:8000", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"dynamodb", "signingRegion"=>"us-east-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?("aws", Aws::Endpoints::Matchers.attr(partition_result, "name"))
            return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?("aws-cn", Aws::Endpoints::Matchers.attr(partition_result, "name"))
            return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.amazonaws.com.cn", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?("aws-us-gov", Aws::Endpoints::Matchers.attr(partition_result, "name"))
            return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.amazonaws.com", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?("aws-iso", Aws::Endpoints::Matchers.attr(partition_result, "name"))
            return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.c2s.ic.gov", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.string_equals?("aws-iso-b", Aws::Endpoints::Matchers.attr(partition_result, "name"))
            return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.sc2s.sgov.gov", headers: {}, properties: {})
          end
          return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
