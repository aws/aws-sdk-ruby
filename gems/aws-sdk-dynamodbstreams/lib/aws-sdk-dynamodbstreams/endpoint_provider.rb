# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DynamoDBStreams
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: "#{parameters.endpoint}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
      end
      if Aws::Endpoints::Matchers.set?(parameters.region)
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true) && Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"), true)
              if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-cn")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov"))
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                  raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                end
                return Aws::Endpoints::Endpoint.new(url: "https://streams-dynamodb-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.string_equals?(parameters.region, "me-central-1")
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                  raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                end
                return Aws::Endpoints::Endpoint.new(url: "https://streams-dynamodb-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.string_equals?(parameters.region, "me-south-1")
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                  raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                end
                return Aws::Endpoints::Endpoint.new(url: "https://streams-dynamodb-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.stream_arn) && (parsed_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.stream_arn)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "service"), "dynamodb") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), false) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), "#{parameters.region}") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "accountId"), false)
                return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.streams-ddb-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.shard_iterator) && (parsed_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.shard_iterator)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "service"), "dynamodb") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), false) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), "#{parameters.region}") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "accountId"), false)
                return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.streams-ddb-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.account_id)
                if Aws::Endpoints::Matchers.valid_host_label?(parameters.account_id, false)
                  return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.streams-ddb-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: true })
                end
                raise ArgumentError, "Credentials-sourced account ID parameter is invalid"
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                raise ArgumentError, "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"
              end
              return Aws::Endpoints::Endpoint.new(url: "https://streams-dynamodb-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true)
              if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov")
                if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-cn")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov"))
                  if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                    raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                  end
                  return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
                end
                if Aws::Endpoints::Matchers.string_equals?(parameters.region, "me-central-1")
                  if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                    raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                  end
                  return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
                end
                if Aws::Endpoints::Matchers.string_equals?(parameters.region, "me-south-1")
                  if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                    raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                  end
                  return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
                end
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.stream_arn) && (parsed_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.stream_arn)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "service"), "dynamodb") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), false) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), "#{parameters.region}") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "accountId"), false)
                  return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.streams-ddb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
                end
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.shard_iterator) && (parsed_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.shard_iterator)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "service"), "dynamodb") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), false) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), "#{parameters.region}") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "accountId"), false)
                  return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.streams-ddb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
                end
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.account_id)
                  if Aws::Endpoints::Matchers.valid_host_label?(parameters.account_id, false)
                    return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.streams-ddb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: true })
                  end
                  raise ArgumentError, "Credentials-sourced account ID parameter is invalid"
                end
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                  raise ArgumentError, "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"
                end
                return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-cn")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov"))
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                  raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                end
                return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.string_equals?(parameters.region, "me-central-1")
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                  raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                end
                return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.string_equals?(parameters.region, "me-south-1")
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                  raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                end
                return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.stream_arn) && (parsed_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.stream_arn)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "service"), "dynamodb") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), false) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), "#{parameters.region}") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "accountId"), false)
                return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.streams-ddb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.shard_iterator) && (parsed_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.shard_iterator)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "service"), "dynamodb") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), false) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), "#{parameters.region}") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "accountId"), false)
                return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.streams-ddb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.account_id)
                if Aws::Endpoints::Matchers.valid_host_label?(parameters.account_id, false)
                  return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.streams-ddb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: true })
                end
                raise ArgumentError, "Credentials-sourced account ID parameter is invalid"
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                raise ArgumentError, "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"
              end
              return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"), true)
              if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-cn")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov"))
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                  raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                end
                return Aws::Endpoints::Endpoint.new(url: "https://streams-dynamodb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.string_equals?(parameters.region, "me-central-1")
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                  raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                end
                return Aws::Endpoints::Endpoint.new(url: "https://streams-dynamodb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.string_equals?(parameters.region, "me-south-1")
                if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                  raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
                end
                return Aws::Endpoints::Endpoint.new(url: "https://streams-dynamodb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.stream_arn) && (parsed_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.stream_arn)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "service"), "dynamodb") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), false) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), "#{parameters.region}") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "accountId"), false)
                return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.streams-ddb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.shard_iterator) && (parsed_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.shard_iterator)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "service"), "dynamodb") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), false) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), "#{parameters.region}") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "accountId"), false)
                return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.streams-ddb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.account_id)
                if Aws::Endpoints::Matchers.valid_host_label?(parameters.account_id, false)
                  return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.streams-ddb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: true })
                end
                raise ArgumentError, "Credentials-sourced account ID parameter is invalid"
              end
              if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
                raise ArgumentError, "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"
              end
              return Aws::Endpoints::Endpoint.new(url: "https://streams-dynamodb.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-cn")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov"))
            if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
              raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
            end
            return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
          end
          if Aws::Endpoints::Matchers.string_equals?(parameters.region, "me-central-1")
            if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
              raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
            end
            return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
          end
          if Aws::Endpoints::Matchers.string_equals?(parameters.region, "me-south-1")
            if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
              raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"
            end
            return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
          end
          if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.stream_arn) && (parsed_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.stream_arn)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "service"), "dynamodb") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), false) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), "#{parameters.region}") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "accountId"), false)
            return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.streams-ddb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
          end
          if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.shard_iterator) && (parsed_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.shard_iterator)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "service"), "dynamodb") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), false) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), "#{parameters.region}") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_arn, "accountId"), false)
            return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.streams-ddb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
          end
          if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.account_id)
            if Aws::Endpoints::Matchers.valid_host_label?(parameters.account_id, false)
              return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.streams-ddb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: true })
            end
            raise ArgumentError, "Credentials-sourced account ID parameter is invalid"
          end
          if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
            raise ArgumentError, "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"
          end
          return Aws::Endpoints::Endpoint.new(url: "https://streams.dynamodb.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {}, metadata: { account_id_endpoint: false })
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
