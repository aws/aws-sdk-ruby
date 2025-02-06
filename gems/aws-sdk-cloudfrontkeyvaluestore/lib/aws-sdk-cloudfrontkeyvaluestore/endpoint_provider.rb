# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFrontKeyValueStore
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false)
        if Aws::Endpoints::Matchers.set?(parameters.kvs_arn)
          if (parsed_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.kvs_arn))
            if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "service"), "cloudfront")
              if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "region"), "")
                if (arn_type = Aws::Endpoints::Matchers.attr(parsed_arn, "resourceId[0]"))
                  if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(arn_type, ""))
                    if Aws::Endpoints::Matchers.string_equals?(arn_type, "key-value-store")
                      if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(parsed_arn, "partition"), "aws")
                        if Aws::Endpoints::Matchers.set?(parameters.region)
                          if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
                            if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "#{parsed_arn['partition']}")
                              if Aws::Endpoints::Matchers.set?(parameters.endpoint)
                                if (url = Aws::Endpoints::Matchers.parse_url(parameters.endpoint))
                                  return Aws::Endpoints::Endpoint.new(url: "#{url['scheme']}://#{parsed_arn['accountId']}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4a", "signingName"=>"cloudfront-keyvaluestore", "signingRegionSet"=>["*"]}]})
                                end
                                raise ArgumentError, "Provided endpoint is not a valid URL"
                              end
                              return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.cloudfront-kvs.global.api.aws", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4a", "signingName"=>"cloudfront-keyvaluestore", "signingRegionSet"=>["*"]}]})
                            end
                            raise ArgumentError, "Client was configured for partition `#{partition_result['name']}` but Kvs ARN has `#{parsed_arn['partition']}`"
                          end
                        end
                        if Aws::Endpoints::Matchers.set?(parameters.endpoint)
                          if (url = Aws::Endpoints::Matchers.parse_url(parameters.endpoint))
                            return Aws::Endpoints::Endpoint.new(url: "#{url['scheme']}://#{parsed_arn['accountId']}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4a", "signingName"=>"cloudfront-keyvaluestore", "signingRegionSet"=>["*"]}]})
                          end
                          raise ArgumentError, "Provided endpoint is not a valid URL"
                        end
                        return Aws::Endpoints::Endpoint.new(url: "https://#{parsed_arn['accountId']}.cloudfront-kvs.global.api.aws", headers: {}, properties: {"authSchemes"=>[{"name"=>"sigv4a", "signingName"=>"cloudfront-keyvaluestore", "signingRegionSet"=>["*"]}]})
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
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
