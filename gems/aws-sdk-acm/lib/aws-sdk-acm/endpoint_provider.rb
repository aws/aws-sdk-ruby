# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ACM
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        return Aws::Endpoints::Endpoint.new(url: "#{parameters.endpoint}")
      end
      if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
        if Aws::Endpoints::Matchers.string_equals?(parameters.service_type, "ACM-ACME")
          if Aws::Endpoints::Matchers.set?(parameters.endpoint)
            return Aws::Endpoints::Endpoint.new(url: "#{parameters.endpoint}")
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws")
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
              raise ArgumentError, "FIPS endpoints are not available for ACME operations"
            end
            return Aws::Endpoints::Endpoint.new(url: "https://acm-acme.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
          end
          raise ArgumentError, "ACME operations are only available in commercial AWS partitions"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          return Aws::Endpoints::Endpoint.new(url: "https://acm-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov")
            return Aws::Endpoints::Endpoint.new(url: "https://acm.#{parameters.region}.amazonaws.com")
          end
          return Aws::Endpoints::Endpoint.new(url: "https://acm-fips.#{parameters.region}.#{partition_result['dnsSuffix']}")
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          return Aws::Endpoints::Endpoint.new(url: "https://acm.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
        end
        return Aws::Endpoints::Endpoint.new(url: "https://acm.#{parameters.region}.#{partition_result['dnsSuffix']}")
      end
      raise ArgumentError, "Region must be set to resolve an endpoint."
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
