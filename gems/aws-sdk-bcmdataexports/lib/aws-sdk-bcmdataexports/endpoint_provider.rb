# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BCMDataExports
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: parameters.endpoint, headers: {}, properties: {})
      end
      if Aws::Endpoints::Matchers.set?(parameters.region)
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false)
            return Aws::Endpoints::Endpoint.new(url: "https://bcm-data-exports.us-iso-east-1.c2s.ic.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-iso-east-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso-b") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false)
            return Aws::Endpoints::Endpoint.new(url: "https://bcm-data-exports.us-isob-east-1.sc2s.sgov.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-isob-east-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso-e") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false)
            return Aws::Endpoints::Endpoint.new(url: "https://bcm-data-exports.eu-isoe-west-1.cloud.adc-e.uk", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "eu-isoe-west-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso-f") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false)
            return Aws::Endpoints::Endpoint.new(url: "https://bcm-data-exports.us-isof-south-1.csp.hci.ic.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-isof-south-1"}]})
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
            return Aws::Endpoints::Endpoint.new(url: "https://bcm-data-exports-fips.#{partition_result['implicitGlobalRegion']}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
          end
          return Aws::Endpoints::Endpoint.new(url: "https://bcm-data-exports.#{partition_result['implicitGlobalRegion']}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "#{partition_result['implicitGlobalRegion']}"}]})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
