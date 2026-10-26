# frozen_string_literal: true

# This is generated code!

module Aws::BCMDataExports
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(url: parameters.endpoint, headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://bcm-data-exports.us-iso-east-1.c2s.ic.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-iso-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://bcm-data-exports.us-isob-east-1.sc2s.sgov.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-isob-east-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-e") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://bcm-data-exports.eu-isoe-west-1.cloud.adc-e.uk", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "eu-isoe-west-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-f") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://bcm-data-exports.us-isof-south-1.csp.hci.ic.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-isof-south-1"}]})
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://bcm-data-exports-fips.#{partition_result['implicitGlobalRegion']}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
          end
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://bcm-data-exports.#{partition_result['implicitGlobalRegion']}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
