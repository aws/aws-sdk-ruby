# frozen_string_literal: true

# This is generated code!

module Aws::Kinesis
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
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
