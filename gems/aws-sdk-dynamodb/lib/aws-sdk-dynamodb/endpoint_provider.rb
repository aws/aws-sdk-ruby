# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DynamoDB
  class EndpointProvider
    def resolve_endpoint(parameters)
      region = parameters.region
      use_dual_stack = parameters.use_dual_stack
      use_fips = parameters.use_fips
      endpoint = parameters.endpoint
      account_id = parameters.account_id
      account_id_endpoint_mode = parameters.account_id_endpoint_mode
      if Aws::Endpoints::Matchers.set?(endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: "#{endpoint}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
      end
      if Aws::Endpoints::Matchers.set?(region)
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(region))
          if Aws::Endpoints::Matchers.string_equals?(region, "local")
            if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
              raise ArgumentError, "Invalid Configuration: FIPS and local endpoint are not supported"
            end
            if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
              raise ArgumentError, "Invalid Configuration: Dualstack and local endpoint are not supported"
            end
            return Aws::Endpoints::Endpoint.new(url: "http://localhost:8000", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"dynamodb", "signingRegion"=>"us-east-1"}]}, metadata: { account_id_endpoint: false })
          end
          if Aws::Endpoints::Matchers.set?(account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(account_id_endpoint_mode, "required") && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.set?(account_id))
            raise ArgumentError, "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded."
          end
          if Aws::Endpoints::Matchers.set?(account_id) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws") && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.valid_host_label?(account_id, false))
            raise ArgumentError, "Credentials-sourced account ID parameter is invalid"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true) && Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"), true)
              if Aws::Endpoints::Matchers.set?(account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(account_id_endpoint_mode, "disabled")
                return Aws::Endpoints::Endpoint.new(url: "https://dynamodb-fips.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              return Aws::Endpoints::Endpoint.new(url: "https://dynamodb-fips.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true)
              if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov")
                if Aws::Endpoints::Matchers.set?(account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(account_id_endpoint_mode, "disabled")
                  return Aws::Endpoints::Endpoint.new(url: "https://dynamodb.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
                end
                return Aws::Endpoints::Endpoint.new(url: "https://dynamodb.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.set?(account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(account_id_endpoint_mode, "disabled")
                return Aws::Endpoints::Endpoint.new(url: "https://dynamodb-fips.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              return Aws::Endpoints::Endpoint.new(url: "https://dynamodb-fips.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"), true)
              if Aws::Endpoints::Matchers.set?(account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(account_id_endpoint_mode, "disabled")
                return Aws::Endpoints::Endpoint.new(url: "https://dynamodb.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              return Aws::Endpoints::Endpoint.new(url: "https://dynamodb.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          if Aws::Endpoints::Matchers.set?(account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(account_id_endpoint_mode, "disabled")
            return Aws::Endpoints::Endpoint.new(url: "https://dynamodb.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
          end
          if Aws::Endpoints::Matchers.set?(account_id) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws") && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true))
            return Aws::Endpoints::Endpoint.new(url: "https://#{account_id}.ddb.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: true })
          end
          return Aws::Endpoints::Endpoint.new(url: "https://dynamodb.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
