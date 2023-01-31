# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kinesis
  class EndpointProvider
    def resolve_endpoint(parameters)
      region = parameters.region
      use_dual_stack = parameters.use_dual_stack
      use_fips = parameters.use_fips
      endpoint = parameters.endpoint
      stream_arn = parameters.stream_arn
      operation_type = parameters.operation_type
      consumer_arn = parameters.consumer_arn
      if (partition_result = Aws::Endpoints::Matchers.aws_partition(region))
        if Aws::Endpoints::Matchers.set?(stream_arn) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.set?(endpoint)) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso-b"))
          if (arn = Aws::Endpoints::Matchers.aws_parse_arn(stream_arn))
            if Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(arn, "accountId"), false)
              if Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(arn, "region"), false)
                if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(arn, "service"), "kinesis")
                  if (arn_type = Aws::Endpoints::Matchers.attr(arn, "resourceId[0]")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(arn_type, ""))
                    if Aws::Endpoints::Matchers.string_equals?(arn_type, "stream")
                      if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "#{arn['partition']}")
                        if Aws::Endpoints::Matchers.set?(operation_type)
                          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
                            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true)
                              if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"), true)
                                return Aws::Endpoints::Endpoint.new(url: "https://#{arn['accountId']}.#{operation_type}-kinesis-fips.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                              end
                              raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
                            end
                            raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
                          end
                          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
                            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true)
                              return Aws::Endpoints::Endpoint.new(url: "https://#{arn['accountId']}.#{operation_type}-kinesis-fips.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                            end
                            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
                          end
                          if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
                            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"), true)
                              return Aws::Endpoints::Endpoint.new(url: "https://#{arn['accountId']}.#{operation_type}-kinesis.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                            end
                            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
                          end
                          return Aws::Endpoints::Endpoint.new(url: "https://#{arn['accountId']}.#{operation_type}-kinesis.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
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
        if Aws::Endpoints::Matchers.set?(consumer_arn) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.set?(endpoint)) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso-b"))
          if (arn = Aws::Endpoints::Matchers.aws_parse_arn(consumer_arn))
            if Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(arn, "accountId"), false)
              if Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(arn, "region"), false)
                if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(arn, "service"), "kinesis")
                  if (arn_type = Aws::Endpoints::Matchers.attr(arn, "resourceId[0]")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(arn_type, ""))
                    if Aws::Endpoints::Matchers.string_equals?(arn_type, "stream")
                      if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "#{arn['partition']}")
                        if Aws::Endpoints::Matchers.set?(operation_type)
                          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
                            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true)
                              if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"), true)
                                return Aws::Endpoints::Endpoint.new(url: "https://#{arn['accountId']}.#{operation_type}-kinesis-fips.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                              end
                              raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
                            end
                            raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
                          end
                          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
                            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true)
                              return Aws::Endpoints::Endpoint.new(url: "https://#{arn['accountId']}.#{operation_type}-kinesis-fips.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
                            end
                            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
                          end
                          if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
                            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"), true)
                              return Aws::Endpoints::Endpoint.new(url: "https://#{arn['accountId']}.#{operation_type}-kinesis.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
                            end
                            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
                          end
                          return Aws::Endpoints::Endpoint.new(url: "https://#{arn['accountId']}.#{operation_type}-kinesis.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
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
        if Aws::Endpoints::Matchers.set?(endpoint)
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
            raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
          end
          return Aws::Endpoints::Endpoint.new(url: endpoint, headers: {}, properties: {})
        end
        if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
            return Aws::Endpoints::Endpoint.new(url: "https://kinesis-fips.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
          end
          raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
            if Aws::Endpoints::Matchers.string_equals?("aws-us-gov", Aws::Endpoints::Matchers.attr(partition_result, "name"))
              return Aws::Endpoints::Endpoint.new(url: "https://kinesis.#{region}.amazonaws.com", headers: {}, properties: {})
            end
            return Aws::Endpoints::Endpoint.new(url: "https://kinesis-fips.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
          end
          raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
            return Aws::Endpoints::Endpoint.new(url: "https://kinesis.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
          end
          raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
        end
        if Aws::Endpoints::Matchers.string_equals?(region, "us-gov-east-1")
          return Aws::Endpoints::Endpoint.new(url: "https://kinesis.us-gov-east-1.amazonaws.com", headers: {}, properties: {})
        end
        if Aws::Endpoints::Matchers.string_equals?(region, "us-gov-west-1")
          return Aws::Endpoints::Endpoint.new(url: "https://kinesis.us-gov-west-1.amazonaws.com", headers: {}, properties: {})
        end
        return Aws::Endpoints::Endpoint.new(url: "https://kinesis.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
      end
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
