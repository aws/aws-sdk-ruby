# frozen_string_literal: true

# This is generated code!

module Aws::CodeCatalyst
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        return Smithy::Client::EndpointRules::Endpoint.new(uri: parameters.endpoint, headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.region)) && (partition_result = Aws::Core::EndpointRules.aws_partition("us-west-2"))
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), false)
            raise ArgumentError, "Partition does not support FIPS."          end
          return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://codecatalyst-fips.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
        end
        return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://codecatalyst.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.aws_partition(parameters.region))
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), false)
            raise ArgumentError, "Partition does not support FIPS."          end
          return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://codecatalyst-fips.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
        end
        return Smithy::Client::EndpointRules::Endpoint.new(uri: "https://codecatalyst.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
      end

    end
  end
end
