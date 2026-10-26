# frozen_string_literal: true

# This is generated code!

module Aws::Kinesis
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.stream_id) && (stream_id_delimiter_value = Smithy::Client::EndpointRules.substring(parameters.stream_id, 20, 21, false)) && Smithy::Client::EndpointRules.string_equals?(stream_id_delimiter_value, "-") && (stream_id_delimiter_reversed_value = Smithy::Client::EndpointRules.substring(parameters.stream_id, 3, 4, true)) && Smithy::Client::EndpointRules.string_equals?(stream_id_delimiter_reversed_value, "-") && (stream_id_prefix_value = Smithy::Client::EndpointRules.substring(parameters.stream_id, 0, 20, false)) && (stream_id_suffix_value = Smithy::Client::EndpointRules.substring(parameters.stream_id, 21, 24, false)) && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b"))
        if Smithy::Client::EndpointRules.set?(parameters.operation_type)
          if Smithy::Client::EndpointRules.set?(parameters.endpoint) && (https_custom_endpoint_delimiter_value = Smithy::Client::EndpointRules.substring(parameters.endpoint, 15, 16, false)) && Smithy::Client::EndpointRules.string_equals?(https_custom_endpoint_delimiter_value, "-") && (https_endpoint_delimiter_value = Smithy::Client::EndpointRules.substring(parameters.endpoint, 20, 21, false)) && Smithy::Client::EndpointRules.string_equals?(https_endpoint_delimiter_value, ".") && (https_custom_endpoint_suffix_value = Smithy::Client::EndpointRules.substring(parameters.endpoint, 15, 20, false))
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis#{https_custom_endpoint_suffix_value}-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                end
                raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
              end
              raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
            end
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis#{https_custom_endpoint_suffix_value}-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis#{https_custom_endpoint_suffix_value}.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
              end
              raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
            end
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis#{https_custom_endpoint_suffix_value}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
          end
          if Smithy::Client::EndpointRules.set?(parameters.endpoint) && (plain_custom_endpoint_delimiter_value = Smithy::Client::EndpointRules.substring(parameters.endpoint, 7, 8, false)) && Smithy::Client::EndpointRules.string_equals?(plain_custom_endpoint_delimiter_value, "-") && (plain_endpoint_delimiter_value = Smithy::Client::EndpointRules.substring(parameters.endpoint, 12, 13, false)) && Smithy::Client::EndpointRules.string_equals?(plain_endpoint_delimiter_value, ".") && (plain_custom_endpoint_suffix_value = Smithy::Client::EndpointRules.substring(parameters.endpoint, 7, 12, false))
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis#{plain_custom_endpoint_suffix_value}-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                end
                raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
              end
              raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
            end
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis#{plain_custom_endpoint_suffix_value}-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis#{plain_custom_endpoint_suffix_value}.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
              end
              raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
            end
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis#{plain_custom_endpoint_suffix_value}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
              end
              raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
            end
            raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{stream_id_prefix_value}.#{stream_id_suffix_value}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
        raise ArgumentError, "Operation Type is not set. Please contact service team for resolution."
      end
      if Smithy::Client::EndpointRules.set?(parameters.stream_arn) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b"))
        if (arn = Aws::Core::EndpointRules.parse_arn(parameters.stream_arn))
          if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(arn, "accountId"), false)
            if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(arn, "region"), false)
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(arn, "service"), "kinesis")
                if (arn_type = Smithy::Client::EndpointRules.attr(arn, "resourceId[0]")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(arn_type, ""))
                  if Smithy::Client::EndpointRules.string_equals?(arn_type, "stream")
                    if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "#{arn['partition']}")
                      if Smithy::Client::EndpointRules.set?(parameters.operation_type)
                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                          if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                            end
                            raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
                          end
                          raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
                        end
                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                          if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                          end
                          raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
                        end
                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                          if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                          end
                          raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
                        end
                        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                      end
                      raise ArgumentError, "Operation Type is not set. Please contact service team for resolution."
                    end
                    raise ArgumentError, "Partition: #{arn['partition']} from ARN doesn't match with partition name: #{partition_result['name']}."
                  end
                  raise ArgumentError, "Invalid ARN: Kinesis ARNs don't support `#{arn_type}` arn types."
                end
                raise ArgumentError, "Invalid ARN: No ARN type specified"
              end
              raise ArgumentError, "Invalid ARN: The ARN was not for the Kinesis service, found: #{arn['service']}."
            end
            raise ArgumentError, "Invalid ARN: Invalid region."
          end
          raise ArgumentError, "Invalid ARN: Invalid account id."
        end
        raise ArgumentError, "Invalid ARN: Failed to parse ARN."
      end
      if Smithy::Client::EndpointRules.set?(parameters.consumer_arn) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b"))
        if (arn = Aws::Core::EndpointRules.parse_arn(parameters.consumer_arn))
          if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(arn, "accountId"), false)
            if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(arn, "region"), false)
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(arn, "service"), "kinesis")
                if (arn_type = Smithy::Client::EndpointRules.attr(arn, "resourceId[0]")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(arn_type, ""))
                  if Smithy::Client::EndpointRules.string_equals?(arn_type, "stream")
                    if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "#{arn['partition']}")
                      if Smithy::Client::EndpointRules.set?(parameters.operation_type)
                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                          if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                            end
                            raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
                          end
                          raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
                        end
                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                          if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                          end
                          raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
                        end
                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                          if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                          end
                          raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
                        end
                        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                      end
                      raise ArgumentError, "Operation Type is not set. Please contact service team for resolution."
                    end
                    raise ArgumentError, "Partition: #{arn['partition']} from ARN doesn't match with partition name: #{partition_result['name']}."
                  end
                  raise ArgumentError, "Invalid ARN: Kinesis ARNs don't support `#{arn_type}` arn types."
                end
                raise ArgumentError, "Invalid ARN: No ARN type specified"
              end
              raise ArgumentError, "Invalid ARN: The ARN was not for the Kinesis service, found: #{arn['service']}."
            end
            raise ArgumentError, "Invalid ARN: Invalid region."
          end
          raise ArgumentError, "Invalid ARN: Invalid account id."
        end
        raise ArgumentError, "Invalid ARN: Failed to parse ARN."
      end
      if Smithy::Client::EndpointRules.set?(parameters.resource_arn) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b"))
        if (arn = Aws::Core::EndpointRules.parse_arn(parameters.resource_arn))
          if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(arn, "accountId"), false)
            if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(arn, "region"), false)
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(arn, "service"), "kinesis")
                if (arn_type = Smithy::Client::EndpointRules.attr(arn, "resourceId[0]")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(arn_type, ""))
                  if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(arn_type, "stream")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(arn_type, "channel"))
                    raise ArgumentError, "Invalid ARN: Unsupported resource type `#{arn_type}`. Expected: stream or channel"
                  end
                  if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "#{arn['partition']}")
                    if Smithy::Client::EndpointRules.set?(parameters.operation_type)
                      if Smithy::Client::EndpointRules.string_equals?(arn_type, "stream")
                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                          if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                            end
                            raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
                          end
                          raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
                        end
                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                          if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                          end
                          raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
                        end
                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                          if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                          end
                          raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
                        end
                        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{arn['accountId']}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                      end
                      if Smithy::Client::EndpointRules.string_equals?(arn_type, "channel")
                        if (resource_id = Smithy::Client::EndpointRules.attr(arn, "resourceId[1]"))
                          if Smithy::Client::EndpointRules.valid_host_label?(resource_id, false)
                            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                                if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{resource_id}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                                end
                                raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
                              end
                              raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
                            end
                            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{resource_id}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                              end
                              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
                            end
                            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{resource_id}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                              end
                              raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
                            end
                            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{resource_id}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                          end
                          raise ArgumentError, "Invalid ARN: Invalid channel id."
                        end
                        raise ArgumentError, "Invalid ARN: Missing channel id."
                      end
                    end
                    raise ArgumentError, "Operation Type is not set. Please contact service team for resolution."
                  end
                  raise ArgumentError, "Partition: #{arn['partition']} from ARN doesn't match with partition name: #{partition_result['name']}."
                end
                raise ArgumentError, "Invalid ARN: No ARN type specified"
              end
              raise ArgumentError, "Invalid ARN: The ARN was not for the Kinesis service, found: #{arn['service']}."
            end
            raise ArgumentError, "Invalid ARN: Invalid region."
          end
          raise ArgumentError, "Invalid ARN: Invalid account id."
        end
        raise ArgumentError, "Invalid ARN: Failed to parse ARN."
      end
      if Smithy::Client::EndpointRules.set?(parameters.channel_arn) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b"))
        if (arn = Aws::Core::EndpointRules.parse_arn(parameters.channel_arn))
          if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(arn, "accountId"), false)
            if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(arn, "region"), false)
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(arn, "service"), "kinesis")
                if (arn_type = Smithy::Client::EndpointRules.attr(arn, "resourceId[0]")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(arn_type, ""))
                  if Smithy::Client::EndpointRules.string_equals?(arn_type, "channel")
                    if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "#{arn['partition']}")
                      if Smithy::Client::EndpointRules.set?(parameters.operation_type)
                        if (channel_id = Smithy::Client::EndpointRules.attr(arn, "resourceId[1]"))
                          if Smithy::Client::EndpointRules.valid_host_label?(channel_id, false)
                            if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.operation_type, "data"))
                              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                                if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                                  if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{channel_id}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                                  end
                                  raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
                                end
                                raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
                              end
                              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                                if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{channel_id}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                                end
                                raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
                              end
                              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                                if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{channel_id}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                                end
                                raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
                              end
                              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{channel_id}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                            end
                            raise ArgumentError, "ChannelARN does not support the `data` operation type."
                          end
                          raise ArgumentError, "Invalid ARN: Invalid channel id."
                        end
                        raise ArgumentError, "Invalid ARN: Missing channel id."
                      end
                      raise ArgumentError, "Operation Type is not set. Please contact service team for resolution."
                    end
                    raise ArgumentError, "Partition: #{arn['partition']} from ARN doesn't match with partition name: #{partition_result['name']}."
                  end
                  raise ArgumentError, "Invalid ARN: ChannelARN only supports `channel` arn types, found: `#{arn_type}`."
                end
                raise ArgumentError, "Invalid ARN: No ARN type specified"
              end
              raise ArgumentError, "Invalid ARN: The ARN was not for the Kinesis service, found: #{arn['service']}."
            end
            raise ArgumentError, "Invalid ARN: Invalid region."
          end
          raise ArgumentError, "Invalid ARN: Invalid account id."
        end
        raise ArgumentError, "Invalid ARN: Failed to parse ARN."
      end
      if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Smithy::Client::EndpointRules.set?(parameters.account_id) && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b"))
        if Smithy::Client::EndpointRules.valid_host_label?(parameters.account_id, false)
          if Smithy::Client::EndpointRules.set?(parameters.operation_type)
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
                end
                raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
              end
              raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
            end
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.#{parameters.operation_type}-kinesis-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"), true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
              end
              raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
            end
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.#{parameters.operation_type}-kinesis.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"metricValues" => ["O"]})
          end
          raise ArgumentError, "Operation Type is not set. Please contact service team for resolution."
        end
        raise ArgumentError, "Invalid account id."
      end
      if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "required") && Smithy::Client::EndpointRules.set?(parameters.region) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
        if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-iso-b"))
          raise ArgumentError, "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"
        end
        raise ArgumentError, "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"
      end
      if Smithy::Client::EndpointRules.set?(parameters.endpoint)
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(url: parameters.endpoint, headers: {}, properties: {})
      end
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS")) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://kinesis-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"), true)
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-us-gov")
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://kinesis.#{parameters.region}.amazonaws.com", headers: {}, properties: {})
              end
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://kinesis-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://kinesis.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://kinesis.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
    end
  end
end
