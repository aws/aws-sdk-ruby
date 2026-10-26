# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralChannel
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
        return Smithy::Client::EndpointRules::Endpoint.new(url: parameters.endpoint, headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4"}]})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://partnercentral-channel.us-gov.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]})
          end
          if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov") && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://partnercentral-channel-fips.us-gov.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]})
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://partnercentral-channel-fips.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
          end
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://partnercentral-channel.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
