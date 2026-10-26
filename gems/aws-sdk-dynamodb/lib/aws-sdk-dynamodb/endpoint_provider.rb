# frozen_string_literal: true

# This is generated code!

module Aws::DynamoDB
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.endpoint) && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && (parsed_endpoint = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_endpoint, "authority"), "dynamodb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
          raise ArgumentError, "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"
        end
        if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_endpoint, "authority"), "search-dynamodb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
          raise ArgumentError, "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(url: "#{parameters.endpoint}", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(url: "#{parameters.endpoint}", headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
          if Smithy::Client::EndpointRules.string_equals?(parameters.region, "local")
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
              raise ArgumentError, "Invalid Configuration: FIPS and local endpoint are not supported"
            end
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
              raise ArgumentError, "Invalid Configuration: Dualstack and local endpoint are not supported"
            end
            return Smithy::Client::EndpointRules::Endpoint.new(url: "http://localhost:8000", headers: {}, properties: {"authSchemes" => [{"signingRegion" => "us-east-1", "signingName" => "dynamodb", "name" => "sigv4"}]})
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true) && Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
              if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "required")
                raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"
              end
              if Smithy::Client::EndpointRules.set?(parameters.is_search_operation) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_search_operation, true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://search-dynamodb-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
              end
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://dynamodb-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov")
                if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "required")
                  raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"
                end
                if Smithy::Client::EndpointRules.set?(parameters.is_search_operation) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_search_operation, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://search-dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
              end
              if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "required")
                raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"
              end
              if Smithy::Client::EndpointRules.set?(parameters.is_search_operation) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_search_operation, true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://search-dynamodb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
              end
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://dynamodb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
              if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws") && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)) && Smithy::Client::EndpointRules.set?(parameters.resource_arn) && (parsed_arn = Aws::Core::EndpointRules.parse_arn(parameters.resource_arn)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_arn, "service"), "dynamodb") && Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(parsed_arn, "region"), false) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_arn, "region"), "#{parameters.region}") && Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(parsed_arn, "accountId"), false)
                if Smithy::Client::EndpointRules.set?(parameters.is_search_operation) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_search_operation, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_arn['accountId']}.search-ddb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_arn['accountId']}.ddb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
              end
              if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws") && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)) && Smithy::Client::EndpointRules.set?(parameters.resource_arn_list) && (first_arn = Smithy::Client::EndpointRules.attr(parameters.resource_arn_list, "[0]")) && (parsed_arn = Aws::Core::EndpointRules.parse_arn(first_arn)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_arn, "service"), "dynamodb") && Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(parsed_arn, "region"), false) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_arn, "region"), "#{parameters.region}") && Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(parsed_arn, "accountId"), false)
                if Smithy::Client::EndpointRules.set?(parameters.is_search_operation) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_search_operation, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_arn['accountId']}.search-ddb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_arn['accountId']}.ddb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
              end
              if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws") && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)) && Smithy::Client::EndpointRules.set?(parameters.account_id)
                if Smithy::Client::EndpointRules.valid_host_label?(parameters.account_id, false)
                  if Smithy::Client::EndpointRules.set?(parameters.is_search_operation) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_search_operation, true)
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.search-ddb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.ddb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
                end
                raise ArgumentError, "Credentials-sourced account ID parameter is invalid"
              end
              if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "required")
                if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true))
                  if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws")
                    raise ArgumentError, "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"
                  end
                  raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"
                end
                raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"
              end
              if Smithy::Client::EndpointRules.set?(parameters.is_search_operation) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_search_operation, true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://search-dynamodb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
              end
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://dynamodb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws") && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)) && Smithy::Client::EndpointRules.set?(parameters.resource_arn) && (parsed_arn = Aws::Core::EndpointRules.parse_arn(parameters.resource_arn)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_arn, "service"), "dynamodb") && Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(parsed_arn, "region"), false) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_arn, "region"), "#{parameters.region}") && Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(parsed_arn, "accountId"), false)
            if Smithy::Client::EndpointRules.set?(parameters.is_search_operation) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_search_operation, true)
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_arn['accountId']}.search-ddb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
            end
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_arn['accountId']}.ddb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
          end
          if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws") && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)) && Smithy::Client::EndpointRules.set?(parameters.resource_arn_list) && (first_arn = Smithy::Client::EndpointRules.attr(parameters.resource_arn_list, "[0]")) && (parsed_arn = Aws::Core::EndpointRules.parse_arn(first_arn)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_arn, "service"), "dynamodb") && Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(parsed_arn, "region"), false) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_arn, "region"), "#{parameters.region}") && Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(parsed_arn, "accountId"), false)
            if Smithy::Client::EndpointRules.set?(parameters.is_search_operation) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_search_operation, true)
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_arn['accountId']}.search-ddb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
            end
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_arn['accountId']}.ddb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
          end
          if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws") && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)) && Smithy::Client::EndpointRules.set?(parameters.account_id)
            if Smithy::Client::EndpointRules.valid_host_label?(parameters.account_id, false)
              if Smithy::Client::EndpointRules.set?(parameters.is_search_operation) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_search_operation, true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.search-ddb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
              end
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.ddb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
            end
            raise ArgumentError, "Credentials-sourced account ID parameter is invalid"
          end
          if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "required")
            if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true))
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws")
                raise ArgumentError, "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"
              end
              raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"
            end
            raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"
          end
          if Smithy::Client::EndpointRules.set?(parameters.is_search_operation) && Smithy::Client::EndpointRules.boolean_equals?(parameters.is_search_operation, true)
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://search-dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
          end
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
