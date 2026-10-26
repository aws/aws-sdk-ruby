# frozen_string_literal: true

# This is generated code!

module Aws::EventBridgeV2
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
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(url: parameters.endpoint)
      end
      if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
        if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Smithy::Client::EndpointRules.set?(parameters.event_bus_arn) && (parsed_bus_arn = Aws::Core::EndpointRules.parse_arn(parameters.event_bus_arn)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_bus_arn, "service"), "events") && Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(parsed_bus_arn, "accountId"), false)
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS")) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_bus_arn['accountId']}.eventsv2-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", properties: {"metricValues" => ["O"]})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_bus_arn['accountId']}.eventsv2-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", properties: {"metricValues" => ["O"]})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_bus_arn['accountId']}.eventsv2.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", properties: {"metricValues" => ["O"]})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_bus_arn['accountId']}.eventsv2.#{parameters.region}.#{partition_result['dnsSuffix']}", properties: {"metricValues" => ["O"]})
        end
        if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "disabled")) && Smithy::Client::EndpointRules.set?(parameters.account_id)
          if Smithy::Client::EndpointRules.valid_host_label?(parameters.account_id, false)
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
              if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS")) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.eventsv2-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", properties: {"metricValues" => ["O"]})
              end
              raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
            end
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
              if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"))
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.eventsv2-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", properties: {"metricValues" => ["O"]})
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
              if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.eventsv2.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", properties: {"metricValues" => ["O"]})
              end
              raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
            end
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.account_id}.eventsv2.#{parameters.region}.#{partition_result['dnsSuffix']}", properties: {"metricValues" => ["O"]})
          end
          raise ArgumentError, "Credentials-sourced account ID parameter is invalid"
        end
        if Smithy::Client::EndpointRules.set?(parameters.account_id_endpoint_mode) && Smithy::Client::EndpointRules.string_equals?(parameters.account_id_endpoint_mode, "required")
          raise ArgumentError, "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS")) && Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://eventsv2-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
          end
          raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsFIPS"))
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://eventsv2-fips.#{parameters.region}.#{partition_result['dnsSuffix']}")
          end
          raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
          if Smithy::Client::EndpointRules.boolean_equals?(true, Smithy::Client::EndpointRules.attr(partition_result, "supportsDualStack"))
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://eventsv2.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}")
          end
          raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
        end
        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://eventsv2.#{parameters.region}.#{partition_result['dnsSuffix']}")
      end
    end
  end
end
