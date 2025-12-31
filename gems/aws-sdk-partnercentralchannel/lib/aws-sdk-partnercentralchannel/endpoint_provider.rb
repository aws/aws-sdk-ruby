# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PartnerCentralChannel
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: parameters.endpoint, headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4"}]})
      end
      if Aws::Endpoints::Matchers.set?(parameters.region)
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false)
            return Aws::Endpoints::Endpoint.new(url: "https://partnercentral-channel.us-gov.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
            return Aws::Endpoints::Endpoint.new(url: "https://partnercentral-channel-fips.us-gov.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]})
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
            return Aws::Endpoints::Endpoint.new(url: "https://partnercentral-channel-fips.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
          end
          return Aws::Endpoints::Endpoint.new(url: "https://partnercentral-channel.global.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
