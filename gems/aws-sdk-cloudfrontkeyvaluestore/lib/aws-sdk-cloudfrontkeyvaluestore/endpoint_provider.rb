# frozen_string_literal: true

# This is generated code!

module Aws::CloudFrontKeyValueStore
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false)
        if Smithy::Client::EndpointRules.set?(parameters.kvs_arn)
          if (parsed_arn = Aws::Core::EndpointRules.parse_arn(parameters.kvs_arn))
            if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_arn, "service"), "cloudfront")
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_arn, "region"), "")
                if (arn_type = Smithy::Client::EndpointRules.attr(parsed_arn, "resourceId[0]"))
                  if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(arn_type, ""))
                    if Smithy::Client::EndpointRules.string_equals?(arn_type, "key-value-store")
                      if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(parsed_arn, "partition"), "aws")
                        if Smithy::Client::EndpointRules.set?(parameters.region)
                          if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
                            if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "#{parsed_arn['partition']}")
                              if Smithy::Client::EndpointRules.set?(parameters.endpoint)
                                if (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
                                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{parsed_arn['accountId']}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingName" => "cloudfront-keyvaluestore", "signingRegionSet" => ["*"]}]})
                                end
                                raise ArgumentError, "Provided endpoint is not a valid URL"
                              end
                              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_arn['accountId']}.cloudfront-kvs.global.api.aws", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingName" => "cloudfront-keyvaluestore", "signingRegionSet" => ["*"]}]})
                            end
                            raise ArgumentError, "Client was configured for partition `#{partition_result['name']}` but Kvs ARN has `#{parsed_arn['partition']}`"
                          end
                        end
                        if Smithy::Client::EndpointRules.set?(parameters.endpoint)
                          if (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
                            return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{parsed_arn['accountId']}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingName" => "cloudfront-keyvaluestore", "signingRegionSet" => ["*"]}]})
                          end
                          raise ArgumentError, "Provided endpoint is not a valid URL"
                        end
                        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parsed_arn['accountId']}.cloudfront-kvs.global.api.aws", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4a", "signingName" => "cloudfront-keyvaluestore", "signingRegionSet" => ["*"]}]})
                      end
                      raise ArgumentError, "CloudFront-KeyValueStore is not supported in partition `#{parsed_arn['partition']}`"
                    end
                    raise ArgumentError, "ARN resource type is invalid. Expected `key-value-store`, found: `#{arn_type}`"
                  end
                  raise ArgumentError, "No resource type found in the KVS ARN. Resource type must be `key-value-store`."
                end
                raise ArgumentError, "No resource type found in the KVS ARN. Resource type must be `key-value-store`."
              end
              raise ArgumentError, "Provided ARN must be a global resource ARN. Found: `#{parsed_arn['region']}`"
            end
            raise ArgumentError, "Provided ARN is not a valid CloudFront Service ARN. Found: `#{parsed_arn['service']}`"
          end
          raise ArgumentError, "KVS ARN must be a valid ARN"
        end
        raise ArgumentError, "KVS ARN must be provided to use this service"
      end
      raise ArgumentError, "Invalid Configuration: FIPS is not supported with CloudFront-KeyValueStore."
    end
  end
end
