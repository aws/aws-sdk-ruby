# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Control
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.region)
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-cn")
          raise ArgumentError, "Partition does not support FIPS"
        end
        if Aws::Endpoints::Matchers.set?(parameters.outpost_id)
          if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
            if Aws::Endpoints::Matchers.set?(parameters.requires_account_id) && Aws::Endpoints::Matchers.boolean_equals?(parameters.requires_account_id, true) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.set?(parameters.account_id))
              raise ArgumentError, "AccountId is required but not set"
            end
            if Aws::Endpoints::Matchers.set?(parameters.account_id) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.valid_host_label?(parameters.account_id, false))
              raise ArgumentError, "AccountId must only contain a-z, A-Z, 0-9 and `-`."
            end
            if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.valid_host_label?(parameters.outpost_id, false))
              raise ArgumentError, "OutpostId must only contain a-z, A-Z, 0-9 and `-`."
            end
            if Aws::Endpoints::Matchers.set?(parameters.endpoint) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
              raise ArgumentError, "Invalid Configuration: DualStack and custom endpoint are not supported"
            end
            if Aws::Endpoints::Matchers.valid_host_label?(parameters.region, true)
              if Aws::Endpoints::Matchers.set?(parameters.endpoint) && (url = Aws::Endpoints::Matchers.parse_url(parameters.endpoint))
                return Aws::Endpoints::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{parameters.region}"}]})
              end
              if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
                return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{parameters.region}"}]})
              end
              if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
                return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{parameters.region}"}]})
              end
              if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
                return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{parameters.region}"}]})
              end
              return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{parameters.region}"}]})
            end
            raise ArgumentError, "Invalid region: region was not a valid DNS name."
          end
        end
        if Aws::Endpoints::Matchers.set?(parameters.resource_arn) && (resource_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.resource_arn)) && Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(resource_arn, "service"), "s3express")
          if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
            if (arn_partition = Aws::Endpoints::Matchers.aws_partition(Aws::Endpoints::Matchers.attr(resource_arn, "region")))
              if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(arn_partition, "name"), Aws::Endpoints::Matchers.attr(partition_result, "name"))
                if Aws::Endpoints::Matchers.set?(parameters.use_arn_region) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_arn_region, false) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(resource_arn, "region"), "#{parameters.region}"))
                  raise ArgumentError, "Invalid configuration: region from ARN `#{resource_arn['region']}` does not match client region `#{parameters.region}` and UseArnRegion is `false`"
                end
                if Aws::Endpoints::Matchers.set?(parameters.endpoint) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
                  raise ArgumentError, "Invalid Configuration: DualStack and custom endpoint are not supported"
                end
                if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
                  raise ArgumentError, "S3Express does not support Dual-stack."
                end
                if Aws::Endpoints::Matchers.set?(parameters.endpoint) && (url = Aws::Endpoints::Matchers.parse_url(parameters.endpoint))
                  return Aws::Endpoints::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
                  return Aws::Endpoints::Endpoint.new(url: "https://s3express-control-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Aws::Endpoints::Endpoint.new(url: "https://s3express-control.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              raise ArgumentError, "Client was configured for partition `#{partition_result['name']}` but ARN has `#{arn_partition['name']}`"
            end
          end
        end
        if Aws::Endpoints::Matchers.set?(parameters.access_point_name) && (access_point_suffix = Aws::Endpoints::Matchers.substring(parameters.access_point_name, 0, 7, true)) && Aws::Endpoints::Matchers.string_equals?(access_point_suffix, "--xa-s3")
          if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
            if Aws::Endpoints::Matchers.set?(parameters.endpoint) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
              raise ArgumentError, "Invalid Configuration: DualStack and custom endpoint are not supported"
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
              raise ArgumentError, "S3Express does not support Dual-stack."
            end
            if Aws::Endpoints::Matchers.set?(parameters.endpoint) && (url = Aws::Endpoints::Matchers.parse_url(parameters.endpoint))
              return Aws::Endpoints::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            if (s3express_availability_zone_id = Aws::Endpoints::Matchers.substring(parameters.access_point_name, 7, 15, true)) && (s3express_availability_zone_delim = Aws::Endpoints::Matchers.substring(parameters.access_point_name, 15, 17, true)) && Aws::Endpoints::Matchers.string_equals?(s3express_availability_zone_delim, "--")
              if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
                return Aws::Endpoints::Endpoint.new(url: "https://s3express-control-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              return Aws::Endpoints::Endpoint.new(url: "https://s3express-control.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            if (s3express_availability_zone_id = Aws::Endpoints::Matchers.substring(parameters.access_point_name, 7, 16, true)) && (s3express_availability_zone_delim = Aws::Endpoints::Matchers.substring(parameters.access_point_name, 16, 18, true)) && Aws::Endpoints::Matchers.string_equals?(s3express_availability_zone_delim, "--")
              if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
                return Aws::Endpoints::Endpoint.new(url: "https://s3express-control-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              return Aws::Endpoints::Endpoint.new(url: "https://s3express-control.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            if (s3express_availability_zone_id = Aws::Endpoints::Matchers.substring(parameters.access_point_name, 7, 20, true)) && (s3express_availability_zone_delim = Aws::Endpoints::Matchers.substring(parameters.access_point_name, 20, 22, true)) && Aws::Endpoints::Matchers.string_equals?(s3express_availability_zone_delim, "--")
              if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
                return Aws::Endpoints::Endpoint.new(url: "https://s3express-control-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              return Aws::Endpoints::Endpoint.new(url: "https://s3express-control.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            if (s3express_availability_zone_id = Aws::Endpoints::Matchers.substring(parameters.access_point_name, 7, 21, true)) && (s3express_availability_zone_delim = Aws::Endpoints::Matchers.substring(parameters.access_point_name, 21, 23, true)) && Aws::Endpoints::Matchers.string_equals?(s3express_availability_zone_delim, "--")
              if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
                return Aws::Endpoints::Endpoint.new(url: "https://s3express-control-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              return Aws::Endpoints::Endpoint.new(url: "https://s3express-control.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            if (s3express_availability_zone_id = Aws::Endpoints::Matchers.substring(parameters.access_point_name, 7, 27, true)) && (s3express_availability_zone_delim = Aws::Endpoints::Matchers.substring(parameters.access_point_name, 27, 29, true)) && Aws::Endpoints::Matchers.string_equals?(s3express_availability_zone_delim, "--")
              if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
                return Aws::Endpoints::Endpoint.new(url: "https://s3express-control-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              return Aws::Endpoints::Endpoint.new(url: "https://s3express-control.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            raise ArgumentError, "Unrecognized S3Express Access Point name format."
          end
        end
        if Aws::Endpoints::Matchers.set?(parameters.use_s3_express_control_endpoint) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_s3_express_control_endpoint, true)
          if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
            if Aws::Endpoints::Matchers.set?(parameters.endpoint) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
              raise ArgumentError, "Invalid Configuration: DualStack and custom endpoint are not supported"
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
              raise ArgumentError, "S3Express does not support Dual-stack."
            end
            if Aws::Endpoints::Matchers.set?(parameters.endpoint) && (url = Aws::Endpoints::Matchers.parse_url(parameters.endpoint))
              return Aws::Endpoints::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
              return Aws::Endpoints::Endpoint.new(url: "https://s3express-control-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            return Aws::Endpoints::Endpoint.new(url: "https://s3express-control.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
          end
        end
        if Aws::Endpoints::Matchers.string_equals?(parameters.region, "snow") && Aws::Endpoints::Matchers.set?(parameters.endpoint) && (url = Aws::Endpoints::Matchers.parse_url(parameters.endpoint))
          if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
              raise ArgumentError, "S3 Snow does not support DualStack"
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
              raise ArgumentError, "S3 Snow does not support FIPS"
            end
            return Aws::Endpoints::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
          end
        end
        if Aws::Endpoints::Matchers.set?(parameters.access_point_name) && (access_point_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.access_point_name))
          if (arn_type = Aws::Endpoints::Matchers.attr(access_point_arn, "resourceId[0]")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(arn_type, ""))
            if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(access_point_arn, "service"), "s3-outposts")
              if (outpost_id = Aws::Endpoints::Matchers.attr(access_point_arn, "resourceId[1]"))
                if Aws::Endpoints::Matchers.valid_host_label?(outpost_id, false)
                  if Aws::Endpoints::Matchers.set?(parameters.endpoint) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
                    raise ArgumentError, "Invalid Configuration: DualStack and custom endpoint are not supported"
                  end
                  if Aws::Endpoints::Matchers.set?(parameters.use_arn_region) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_arn_region, false) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(access_point_arn, "region"), "#{parameters.region}"))
                    raise ArgumentError, "Invalid configuration: region from ARN `#{access_point_arn['region']}` does not match client region `#{parameters.region}` and UseArnRegion is `false`"
                  end
                  if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
                    if (arn_partition = Aws::Endpoints::Matchers.aws_partition(Aws::Endpoints::Matchers.attr(access_point_arn, "region")))
                      if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(arn_partition, "name"), Aws::Endpoints::Matchers.attr(partition_result, "name"))
                        if Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(access_point_arn, "region"), true)
                          if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(access_point_arn, "accountId"), ""))
                            if Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(access_point_arn, "accountId"), false)
                              if Aws::Endpoints::Matchers.set?(parameters.account_id) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id, "#{access_point_arn['accountId']}"))
                                raise ArgumentError, "Invalid ARN: the accountId specified in the ARN (`#{access_point_arn['accountId']}`) does not match the parameter (`#{parameters.account_id}`)"
                              end
                              if (outpost_type = Aws::Endpoints::Matchers.attr(access_point_arn, "resourceId[2]"))
                                if (access_point_name = Aws::Endpoints::Matchers.attr(access_point_arn, "resourceId[3]"))
                                  if Aws::Endpoints::Matchers.string_equals?(outpost_type, "accesspoint")
                                    if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
                                      return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts-fips.#{access_point_arn['region']}.#{arn_partition['dualStackDnsSuffix']}", headers: {"x-amz-account-id" => ["#{access_point_arn['accountId']}"], "x-amz-outpost-id" => ["#{outpost_id}"]}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{access_point_arn['region']}"}]})
                                    end
                                    if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
                                      return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts-fips.#{access_point_arn['region']}.#{arn_partition['dnsSuffix']}", headers: {"x-amz-account-id" => ["#{access_point_arn['accountId']}"], "x-amz-outpost-id" => ["#{outpost_id}"]}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{access_point_arn['region']}"}]})
                                    end
                                    if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
                                      return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts.#{access_point_arn['region']}.#{arn_partition['dualStackDnsSuffix']}", headers: {"x-amz-account-id" => ["#{access_point_arn['accountId']}"], "x-amz-outpost-id" => ["#{outpost_id}"]}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{access_point_arn['region']}"}]})
                                    end
                                    if Aws::Endpoints::Matchers.set?(parameters.endpoint) && (url = Aws::Endpoints::Matchers.parse_url(parameters.endpoint))
                                      return Aws::Endpoints::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['path']}", headers: {"x-amz-account-id" => ["#{access_point_arn['accountId']}"], "x-amz-outpost-id" => ["#{outpost_id}"]}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{access_point_arn['region']}"}]})
                                    end
                                    return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts.#{access_point_arn['region']}.#{arn_partition['dnsSuffix']}", headers: {"x-amz-account-id" => ["#{access_point_arn['accountId']}"], "x-amz-outpost-id" => ["#{outpost_id}"]}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{access_point_arn['region']}"}]})
                                  end
                                  raise ArgumentError, "Expected an outpost type `accesspoint`, found `#{outpost_type}`"
                                end
                                raise ArgumentError, "Invalid ARN: expected an access point name"
                              end
                              raise ArgumentError, "Invalid ARN: Expected a 4-component resource"
                            end
                            raise ArgumentError, "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `#{access_point_arn['accountId']}`"
                          end
                          raise ArgumentError, "Invalid ARN: missing account ID"
                        end
                        raise ArgumentError, "Invalid region in ARN: `#{access_point_arn['region']}` (invalid DNS name)"
                      end
                      raise ArgumentError, "Client was configured for partition `#{partition_result['name']}` but ARN has `#{arn_partition['name']}`"
                    end
                  end
                end
                raise ArgumentError, "Invalid ARN: The outpost Id must only contain a-z, A-Z, 0-9 and `-`., found: `#{outpost_id}`"
              end
              raise ArgumentError, "Invalid ARN: The Outpost Id was not set"
            end
          end
          raise ArgumentError, "Invalid ARN: No ARN type specified"
        end
        if Aws::Endpoints::Matchers.set?(parameters.bucket) && (bucket_arn = Aws::Endpoints::Matchers.aws_parse_arn(parameters.bucket))
          if (arn_type = Aws::Endpoints::Matchers.attr(bucket_arn, "resourceId[0]")) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(arn_type, ""))
            if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(bucket_arn, "service"), "s3-outposts")
              if (outpost_id = Aws::Endpoints::Matchers.attr(bucket_arn, "resourceId[1]"))
                if Aws::Endpoints::Matchers.valid_host_label?(outpost_id, false)
                  if Aws::Endpoints::Matchers.set?(parameters.endpoint) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
                    raise ArgumentError, "Invalid Configuration: DualStack and custom endpoint are not supported"
                  end
                  if Aws::Endpoints::Matchers.set?(parameters.use_arn_region) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_arn_region, false) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(bucket_arn, "region"), "#{parameters.region}"))
                    raise ArgumentError, "Invalid configuration: region from ARN `#{bucket_arn['region']}` does not match client region `#{parameters.region}` and UseArnRegion is `false`"
                  end
                  if (arn_partition = Aws::Endpoints::Matchers.aws_partition(Aws::Endpoints::Matchers.attr(bucket_arn, "region")))
                    if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
                      if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(arn_partition, "name"), Aws::Endpoints::Matchers.attr(partition_result, "name"))
                        if Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(bucket_arn, "region"), true)
                          if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(bucket_arn, "accountId"), ""))
                            if Aws::Endpoints::Matchers.valid_host_label?(Aws::Endpoints::Matchers.attr(bucket_arn, "accountId"), false)
                              if Aws::Endpoints::Matchers.set?(parameters.account_id) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.string_equals?(parameters.account_id, "#{bucket_arn['accountId']}"))
                                raise ArgumentError, "Invalid ARN: the accountId specified in the ARN (`#{bucket_arn['accountId']}`) does not match the parameter (`#{parameters.account_id}`)"
                              end
                              if (outpost_type = Aws::Endpoints::Matchers.attr(bucket_arn, "resourceId[2]"))
                                if (bucket_name = Aws::Endpoints::Matchers.attr(bucket_arn, "resourceId[3]"))
                                  if Aws::Endpoints::Matchers.string_equals?(outpost_type, "bucket")
                                    if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
                                      return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts-fips.#{bucket_arn['region']}.#{arn_partition['dualStackDnsSuffix']}", headers: {"x-amz-account-id" => ["#{bucket_arn['accountId']}"], "x-amz-outpost-id" => ["#{outpost_id}"]}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{bucket_arn['region']}"}]})
                                    end
                                    if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
                                      return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts-fips.#{bucket_arn['region']}.#{arn_partition['dnsSuffix']}", headers: {"x-amz-account-id" => ["#{bucket_arn['accountId']}"], "x-amz-outpost-id" => ["#{outpost_id}"]}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{bucket_arn['region']}"}]})
                                    end
                                    if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
                                      return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts.#{bucket_arn['region']}.#{arn_partition['dualStackDnsSuffix']}", headers: {"x-amz-account-id" => ["#{bucket_arn['accountId']}"], "x-amz-outpost-id" => ["#{outpost_id}"]}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{bucket_arn['region']}"}]})
                                    end
                                    if Aws::Endpoints::Matchers.set?(parameters.endpoint) && (url = Aws::Endpoints::Matchers.parse_url(parameters.endpoint))
                                      return Aws::Endpoints::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['path']}", headers: {"x-amz-account-id" => ["#{bucket_arn['accountId']}"], "x-amz-outpost-id" => ["#{outpost_id}"]}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{bucket_arn['region']}"}]})
                                    end
                                    return Aws::Endpoints::Endpoint.new(url: "https://s3-outposts.#{bucket_arn['region']}.#{arn_partition['dnsSuffix']}", headers: {"x-amz-account-id" => ["#{bucket_arn['accountId']}"], "x-amz-outpost-id" => ["#{outpost_id}"]}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{bucket_arn['region']}"}]})
                                  end
                                  raise ArgumentError, "Invalid ARN: Expected an outpost type `bucket`, found `#{outpost_type}`"
                                end
                                raise ArgumentError, "Invalid ARN: expected a bucket name"
                              end
                              raise ArgumentError, "Invalid ARN: Expected a 4-component resource"
                            end
                            raise ArgumentError, "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `#{bucket_arn['accountId']}`"
                          end
                          raise ArgumentError, "Invalid ARN: missing account ID"
                        end
                        raise ArgumentError, "Invalid region in ARN: `#{bucket_arn['region']}` (invalid DNS name)"
                      end
                      raise ArgumentError, "Client was configured for partition `#{partition_result['name']}` but ARN has `#{arn_partition['name']}`"
                    end
                  end
                end
                raise ArgumentError, "Invalid ARN: The outpost Id must only contain a-z, A-Z, 0-9 and `-`., found: `#{outpost_id}`"
              end
              raise ArgumentError, "Invalid ARN: The Outpost Id was not set"
            end
          end
          raise ArgumentError, "Invalid ARN: No ARN type specified"
        end
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
          if Aws::Endpoints::Matchers.valid_host_label?(parameters.region, true)
            if Aws::Endpoints::Matchers.set?(parameters.requires_account_id) && Aws::Endpoints::Matchers.boolean_equals?(parameters.requires_account_id, true) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.set?(parameters.account_id))
              raise ArgumentError, "AccountId is required but not set"
            end
            if Aws::Endpoints::Matchers.set?(parameters.account_id) && Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.valid_host_label?(parameters.account_id, false))
              raise ArgumentError, "AccountId must only contain a-z, A-Z, 0-9 and `-`."
            end
            if Aws::Endpoints::Matchers.set?(parameters.endpoint) && (url = Aws::Endpoints::Matchers.parse_url(parameters.endpoint))
              if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
                raise ArgumentError, "Invalid Configuration: DualStack and custom endpoint are not supported"
              end
              if Aws::Endpoints::Matchers.set?(parameters.requires_account_id) && Aws::Endpoints::Matchers.boolean_equals?(parameters.requires_account_id, true) && Aws::Endpoints::Matchers.set?(parameters.account_id)
                return Aws::Endpoints::Endpoint.new(url: "#{url['scheme']}://#{parameters.account_id}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
              return Aws::Endpoints::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true) && Aws::Endpoints::Matchers.set?(parameters.requires_account_id) && Aws::Endpoints::Matchers.boolean_equals?(parameters.requires_account_id, true) && Aws::Endpoints::Matchers.set?(parameters.account_id)
              return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.s3-control-fips.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
              return Aws::Endpoints::Endpoint.new(url: "https://s3-control-fips.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, false) && Aws::Endpoints::Matchers.set?(parameters.requires_account_id) && Aws::Endpoints::Matchers.boolean_equals?(parameters.requires_account_id, true) && Aws::Endpoints::Matchers.set?(parameters.account_id)
              return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.s3-control-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, false)
              return Aws::Endpoints::Endpoint.new(url: "https://s3-control-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true) && Aws::Endpoints::Matchers.set?(parameters.requires_account_id) && Aws::Endpoints::Matchers.boolean_equals?(parameters.requires_account_id, true) && Aws::Endpoints::Matchers.set?(parameters.account_id)
              return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.s3-control.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
              return Aws::Endpoints::Endpoint.new(url: "https://s3-control.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, false) && Aws::Endpoints::Matchers.set?(parameters.requires_account_id) && Aws::Endpoints::Matchers.boolean_equals?(parameters.requires_account_id, true) && Aws::Endpoints::Matchers.set?(parameters.account_id)
              return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.account_id}.s3-control.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
            end
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, false)
              return Aws::Endpoints::Endpoint.new(url: "https://s3-control.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
            end
          end
          raise ArgumentError, "Invalid region: region was not a valid DNS name."
        end
      end
      raise ArgumentError, "Region must be set"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
