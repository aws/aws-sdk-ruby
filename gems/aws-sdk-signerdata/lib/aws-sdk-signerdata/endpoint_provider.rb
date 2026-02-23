# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SignerData
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        return Aws::Endpoints::Endpoint.new(url: parameters.endpoint)
      end
      if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          return Aws::Endpoints::Endpoint.new(url: "https://data-signer-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          return Aws::Endpoints::Endpoint.new(url: "https://data-signer-fips.#{parameters.region}.#{partition_result['dnsSuffix']}")
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          return Aws::Endpoints::Endpoint.new(url: "https://data-signer.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
        end
        return Aws::Endpoints::Endpoint.new(url: "https://data-signer.#{parameters.region}.#{partition_result['dnsSuffix']}")
      end
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
