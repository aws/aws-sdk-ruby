# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EventBridgeV2
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: parameters.endpoint, metadata: { account_id_endpoint: false })
      end
      if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
        if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.event_bus_arn) && (parsed_bus_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.event_bus_arn)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_bus_arn, "service"), "events") && Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(parsed_bus_arn, "accountId"), false)
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_bus_arn['accountId']}.eventsv2-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", properties: {"metricValues" => ["O"]}, metadata: { account_id_endpoint: false })
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
              return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_bus_arn['accountId']}.eventsv2-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", properties: {"metricValues" => ["O"]}, metadata: { account_id_endpoint: false })
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_bus_arn['accountId']}.eventsv2.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", properties: {"metricValues" => ["O"]}, metadata: { account_id_endpoint: false })
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_bus_arn['accountId']}.eventsv2.#{parameters.region}.#{partition_result['dnsSuffix']}", properties: {"metricValues" => ["O"]}, metadata: { account_id_endpoint: false })
        end
        if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Aws::Endpoints::Matchers.set?(parameters.account_id)
          if Aws::Endpoints::Matchers.valid_host_label?(parameters.account_id, false)
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
              if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
                return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.eventsv2-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", properties: {"metricValues" => ["O"]}, metadata: { account_id_endpoint: true })
              end
              raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
              if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
                return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.eventsv2-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", properties: {"metricValues" => ["O"]}, metadata: { account_id_endpoint: true })
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
              if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
                return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.eventsv2.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", properties: {"metricValues" => ["O"]}, metadata: { account_id_endpoint: true })
              end
              raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
            end
            return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.eventsv2.#{parameters.region}.#{partition_result['dnsSuffix']}", properties: {"metricValues" => ["O"]}, metadata: { account_id_endpoint: true })
          end
          raise ArgumentError, "Credentials-sourced account ID parameter is invalid"
        end
        if Aws::Endpoints::Matchers.set?(parameters.account_id_endpoint_mode) && Aws::Endpoints::Matchers.string_equals?(parameters.account_id_endpoint_mode, "required")
          raise ArgumentError, "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
            return Aws::Endpoints::Endpoint.new(url: "https://eventsv2-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", metadata: { account_id_endpoint: false })
          end
          raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"))
            return Aws::Endpoints::Endpoint.new(url: "https://eventsv2-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", metadata: { account_id_endpoint: false })
          end
          raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
            return Aws::Endpoints::Endpoint.new(url: "https://eventsv2.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", metadata: { account_id_endpoint: false })
          end
          raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
        end
        return Aws::Endpoints::Endpoint.new(url: "https://eventsv2.#{parameters.region}.#{partition_result['dnsSuffix']}", metadata: { account_id_endpoint: false })
      end
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
