# frozen_string_literal: true

# This is generated code!

module Aws
  module Lambda
    # Resolve an endpoint from {EndpointParameters}.
    class EndpointProvider
      # @param [EndpointParameters] parameters
      # @return [Smithy::Client::EndpointRules::Endpoint]
      # @raise [ArgumentError]
      def resolve(parameters)
        if Smithy::Client::EndpointRules.set?(parameters.endpoint)
          raise ArgumentError, 'Invalid Configuration: FIPS and custom endpoint are not supported' if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, 'Invalid Configuration: Dualstack and custom endpoint are not supported' if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)

          return Smithy::Client::EndpointRules::Endpoint.new(uri: parameters.endpoint, headers: {}, properties: {})
        end
        if Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region))
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://lambda-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}) if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, 'supportsFIPS')) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, 'supportsDualStack'))

            raise ArgumentError, 'FIPS and DualStack are enabled, but this partition does not support one or both' end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://lambda-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}) if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, 'supportsFIPS'), true)

            raise ArgumentError, 'FIPS is enabled but this partition does not support FIPS' end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://lambda.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}) if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, 'supportsDualStack'))

            raise ArgumentError, 'DualStack is enabled but this partition does not support DualStack' end
          return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://lambda.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
        raise ArgumentError, 'Invalid Configuration: Missing Region'
      end
    end
  end
end
