# frozen_string_literal: true

# This is generated code!

module Aws::S3
  # Resolve an endpoint from {EndpointParameters}.
  class EndpointProvider
    # @param [EndpointParameters] parameters
    # @return [Smithy::Client::EndpointRules::Endpoint]
    # @raise [ArgumentError]
    def resolve(parameters)
      if Smithy::Client::EndpointRules.set?(parameters.region)
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Accelerate cannot be used with FIPS"
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.set?(parameters.endpoint)
          raise ArgumentError, "Cannot set dual-stack in combination with a custom endpoint."
        end
        if Smithy::Client::EndpointRules.set?(parameters.endpoint) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "A custom endpoint cannot be combined with FIPS"
        end
        if Smithy::Client::EndpointRules.set?(parameters.endpoint) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true)
          raise ArgumentError, "A custom endpoint cannot be combined with S3 Accelerate"
        end
        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && (partition_result = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-cn")
          raise ArgumentError, "Partition does not support FIPS"
        end
        if Smithy::Client::EndpointRules.set?(parameters.bucket) && (bucket_suffix = Smithy::Client::EndpointRules.substring(parameters.bucket, 0, 6, true)) && Smithy::Client::EndpointRules.string_equals?(bucket_suffix, "--x-s3")
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            raise ArgumentError, "S3Express does not support Dual-stack."
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true)
            raise ArgumentError, "S3Express does not support S3 Accelerate."
          end
          if Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
            if Smithy::Client::EndpointRules.set?(parameters.disable_s3_express_session_auth) && Smithy::Client::EndpointRules.boolean_equals?(parameters.disable_s3_express_session_auth, true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(url, "isIp"), true)
                if (uri_encoded_bucket = Smithy::Client::EndpointRules.uri_encode(parameters.bucket))
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}/#{uri_encoded_bucket}#{url['path']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
              end
              if Aws::Core::EndpointRules.is_virtual_hostable_s3_bucket?(parameters.bucket, false)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{parameters.bucket}.#{url['authority']}#{url['path']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              raise ArgumentError, "S3Express bucket name is not a valid virtual hostable name."
            end
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(url, "isIp"), true)
              if (uri_encoded_bucket = Smithy::Client::EndpointRules.uri_encode(parameters.bucket))
                return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}/#{uri_encoded_bucket}#{url['path']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
            end
            if Aws::Core::EndpointRules.is_virtual_hostable_s3_bucket?(parameters.bucket, false)
              return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{parameters.bucket}.#{url['authority']}#{url['path']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            raise ArgumentError, "S3Express bucket name is not a valid virtual hostable name."
          end
          if Smithy::Client::EndpointRules.set?(parameters.use_s3_express_control_endpoint) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_s3_express_control_endpoint, true)
            if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
              if (uri_encoded_bucket = Smithy::Client::EndpointRules.uri_encode(parameters.bucket)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint))
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3express-control-fips.#{parameters.region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3express-control.#{parameters.region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
            end
          end
          if Aws::Core::EndpointRules.is_virtual_hostable_s3_bucket?(parameters.bucket, false)
            if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
              if Smithy::Client::EndpointRules.set?(parameters.disable_s3_express_session_auth) && Smithy::Client::EndpointRules.boolean_equals?(parameters.disable_s3_express_session_auth, true)
                if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 6, 14, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 14, 16, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                  if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 6, 15, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 15, 17, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                  if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 6, 19, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 19, 21, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                  if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 6, 20, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 20, 22, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                  if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 6, 26, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 26, 28, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                  if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                raise ArgumentError, "Unrecognized S3Express bucket name format."
              end
              if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 6, 14, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 14, 16, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 6, 15, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 15, 17, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 6, 19, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 19, 21, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 6, 20, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 20, 22, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 6, 26, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 26, 28, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              raise ArgumentError, "Unrecognized S3Express bucket name format."
            end
          end
          raise ArgumentError, "S3Express bucket name is not a valid virtual hostable name."
        end
        if Smithy::Client::EndpointRules.set?(parameters.bucket) && (access_point_suffix = Smithy::Client::EndpointRules.substring(parameters.bucket, 0, 7, true)) && Smithy::Client::EndpointRules.string_equals?(access_point_suffix, "--xa-s3")
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
            raise ArgumentError, "S3Express does not support Dual-stack."
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true)
            raise ArgumentError, "S3Express does not support S3 Accelerate."
          end
          if Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
            if Smithy::Client::EndpointRules.set?(parameters.disable_s3_express_session_auth) && Smithy::Client::EndpointRules.boolean_equals?(parameters.disable_s3_express_session_auth, true)
              if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(url, "isIp"), true)
                if (uri_encoded_bucket = Smithy::Client::EndpointRules.uri_encode(parameters.bucket))
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}/#{uri_encoded_bucket}#{url['path']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
              end
              if Aws::Core::EndpointRules.is_virtual_hostable_s3_bucket?(parameters.bucket, false)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{parameters.bucket}.#{url['authority']}#{url['path']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              raise ArgumentError, "S3Express bucket name is not a valid virtual hostable name."
            end
            if Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(url, "isIp"), true)
              if (uri_encoded_bucket = Smithy::Client::EndpointRules.uri_encode(parameters.bucket))
                return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}/#{uri_encoded_bucket}#{url['path']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
            end
            if Aws::Core::EndpointRules.is_virtual_hostable_s3_bucket?(parameters.bucket, false)
              return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{parameters.bucket}.#{url['authority']}#{url['path']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            raise ArgumentError, "S3Express bucket name is not a valid virtual hostable name."
          end
          if Aws::Core::EndpointRules.is_virtual_hostable_s3_bucket?(parameters.bucket, false)
            if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
              if Smithy::Client::EndpointRules.set?(parameters.disable_s3_express_session_auth) && Smithy::Client::EndpointRules.boolean_equals?(parameters.disable_s3_express_session_auth, true)
                if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 7, 15, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 15, 17, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                  if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 7, 16, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 16, 18, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                  if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 7, 20, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 20, 22, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                  if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 7, 21, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 21, 23, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                  if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 7, 27, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 27, 29, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                  if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                raise ArgumentError, "Unrecognized S3Express bucket name format."
              end
              if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 7, 15, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 15, 17, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 7, 16, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 16, 18, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 7, 20, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 20, 22, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 7, 21, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 21, 23, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              if (s3express_availability_zone_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 7, 27, true)) && (s3express_availability_zone_delim = Smithy::Client::EndpointRules.substring(parameters.bucket, 27, 29, true)) && Smithy::Client::EndpointRules.string_equals?(s3express_availability_zone_delim, "--")
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-fips-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3express-#{s3express_availability_zone_id}.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
              end
              raise ArgumentError, "Unrecognized S3Express bucket name format."
            end
          end
          raise ArgumentError, "S3Express bucket name is not a valid virtual hostable name."
        end
        if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.bucket)) && Smithy::Client::EndpointRules.set?(parameters.use_s3_express_control_endpoint) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_s3_express_control_endpoint, true)
          if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
            if Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
              return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['path']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3express-control-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
            end
            return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3express-control.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"backend" => "S3Express", "authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3express", "signingRegion" => "#{parameters.region}"}]})
          end
        end
        if Smithy::Client::EndpointRules.set?(parameters.bucket) && (hardware_type = Smithy::Client::EndpointRules.substring(parameters.bucket, 49, 50, true)) && (region_prefix = Smithy::Client::EndpointRules.substring(parameters.bucket, 8, 12, true)) && (bucket_alias_suffix = Smithy::Client::EndpointRules.substring(parameters.bucket, 0, 7, true)) && (outpost_id = Smithy::Client::EndpointRules.substring(parameters.bucket, 32, 49, true)) && (region_partition = Aws::Core::EndpointRules.partition(parameters.region)) && Smithy::Client::EndpointRules.string_equals?(bucket_alias_suffix, "--op-s3")
          if Smithy::Client::EndpointRules.valid_host_label?(outpost_id, false)
            if Smithy::Client::EndpointRules.string_equals?(hardware_type, "e")
              if Smithy::Client::EndpointRules.string_equals?(region_prefix, "beta")
                if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint))
                  raise ArgumentError, "Expected a endpoint to be specified but no endpoint was found"
                end
                if Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.ec2.#{url['authority']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"]}, {"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{parameters.region}"}]})
                end
              end
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.ec2.s3-outposts.#{parameters.region}.#{region_partition['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"]}, {"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{parameters.region}"}]})
            end
            if Smithy::Client::EndpointRules.string_equals?(hardware_type, "o")
              if Smithy::Client::EndpointRules.string_equals?(region_prefix, "beta")
                if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint))
                  raise ArgumentError, "Expected a endpoint to be specified but no endpoint was found"
                end
                if Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.op-#{outpost_id}.#{url['authority']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"]}, {"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{parameters.region}"}]})
                end
              end
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.op-#{outpost_id}.s3-outposts.#{parameters.region}.#{region_partition['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"]}, {"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{parameters.region}"}]})
            end
            raise ArgumentError, "Unrecognized hardware type: \"Expected hardware type o or e but got #{hardware_type}\""
          end
          raise ArgumentError, "Invalid ARN: The outpost Id must only contain a-z, A-Z, 0-9 and `-`."
        end
        if Smithy::Client::EndpointRules.set?(parameters.bucket)
          if Smithy::Client::EndpointRules.set?(parameters.endpoint) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(Smithy::Client::EndpointRules.parse_url(parameters.endpoint)))
            raise ArgumentError, "Custom endpoint `#{parameters.endpoint}` was not a valid URI"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.force_path_style, false) && Aws::Core::EndpointRules.is_virtual_hostable_s3_bucket?(parameters.bucket, false)
            if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
              if Smithy::Client::EndpointRules.valid_host_label?(parameters.region, false)
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(partition_result, "name"), "aws-cn")
                  raise ArgumentError, "S3 Accelerate cannot be used in this region"
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-fips.dualstack.us-east-1.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-fips.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-fips.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-fips.us-east-1.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-accelerate.dualstack.us-east-1.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-accelerate.dualstack.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-accelerate.dualstack.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3.dualstack.us-east-1.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(url, "isIp"), true) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{parameters.bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(url, "isIp"), false) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{parameters.bucket}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(url, "isIp"), true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-east-1")
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{parameters.bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{parameters.bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(url, "isIp"), false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-east-1")
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{parameters.bucket}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{parameters.bucket}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(url, "isIp"), true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{parameters.bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(Smithy::Client::EndpointRules.attr(url, "isIp"), false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{parameters.bucket}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-accelerate.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-east-1")
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-accelerate.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-accelerate.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3-accelerate.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-east-1")
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{parameters.bucket}.s3.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
              end
              raise ArgumentError, "Invalid region: region was not a valid DNS name."
            end
          end
          if Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(url, "scheme"), "http") && Aws::Core::EndpointRules.is_virtual_hostable_s3_bucket?(parameters.bucket, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.force_path_style, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false)
            if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
              if Smithy::Client::EndpointRules.valid_host_label?(parameters.region, false)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{parameters.bucket}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
              raise ArgumentError, "Invalid region: region was not a valid DNS name."
            end
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.force_path_style, false) && (bucket_arn = Aws::Core::EndpointRules.parse_arn(parameters.bucket))
            if (arn_type = Smithy::Client::EndpointRules.attr(bucket_arn, "resourceId[0]")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(arn_type, ""))
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_arn, "service"), "s3-object-lambda")
                if Smithy::Client::EndpointRules.string_equals?(arn_type, "accesspoint")
                  if (access_point_name = Smithy::Client::EndpointRules.attr(bucket_arn, "resourceId[1]")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(access_point_name, ""))
                    if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                      raise ArgumentError, "S3 Object Lambda does not support Dual-stack"
                    end
                    if Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true)
                      raise ArgumentError, "S3 Object Lambda does not support S3 Accelerate"
                    end
                    if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_arn, "region"), ""))
                      if Smithy::Client::EndpointRules.set?(parameters.disable_access_points) && Smithy::Client::EndpointRules.boolean_equals?(parameters.disable_access_points, true)
                        raise ArgumentError, "Access points are not supported for this operation"
                      end
                      if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(Smithy::Client::EndpointRules.attr(bucket_arn, "resourceId[2]")))
                        if Smithy::Client::EndpointRules.set?(parameters.use_arn_region) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_arn_region, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_arn, "region"), "#{parameters.region}"))
                          raise ArgumentError, "Invalid configuration: region from ARN `#{bucket_arn['region']}` does not match client region `#{parameters.region}` and UseArnRegion is `false`"
                        end
                        if (bucket_partition = Aws::Core::EndpointRules.partition(Smithy::Client::EndpointRules.attr(bucket_arn, "region")))
                          if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
                            if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_partition, "name"), Smithy::Client::EndpointRules.attr(partition_result, "name"))
                              if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(bucket_arn, "region"), true)
                                if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_arn, "accountId"), "")
                                  raise ArgumentError, "Invalid ARN: Missing account id"
                                end
                                if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(bucket_arn, "accountId"), false)
                                  if Smithy::Client::EndpointRules.valid_host_label?(access_point_name, false)
                                    if Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
                                      return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{access_point_name}-#{bucket_arn['accountId']}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "#{bucket_arn['region']}"}]})
                                    end
                                    if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                                      return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-object-lambda-fips.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "#{bucket_arn['region']}"}]})
                                    end
                                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-object-lambda.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "#{bucket_arn['region']}"}]})
                                  end
                                  raise ArgumentError, "Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `#{access_point_name}`"
                                end
                                raise ArgumentError, "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `#{bucket_arn['accountId']}`"
                              end
                              raise ArgumentError, "Invalid region in ARN: `#{bucket_arn['region']}` (invalid DNS name)"
                            end
                            raise ArgumentError, "Client was configured for partition `#{partition_result['name']}` but ARN (`#{parameters.bucket}`) has `#{bucket_partition['name']}`"
                          end
                        end
                      end
                      raise ArgumentError, "Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."
                    end
                    raise ArgumentError, "Invalid ARN: bucket ARN is missing a region"
                  end
                  raise ArgumentError, "Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"
                end
                raise ArgumentError, "Invalid ARN: Object Lambda ARNs only support `accesspoint` arn types, but found: `#{arn_type}`"
              end
              if Smithy::Client::EndpointRules.string_equals?(arn_type, "accesspoint")
                if (access_point_name = Smithy::Client::EndpointRules.attr(bucket_arn, "resourceId[1]")) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(access_point_name, ""))
                  if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_arn, "region"), ""))
                    if Smithy::Client::EndpointRules.string_equals?(arn_type, "accesspoint")
                      if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_arn, "region"), ""))
                        if Smithy::Client::EndpointRules.set?(parameters.disable_access_points) && Smithy::Client::EndpointRules.boolean_equals?(parameters.disable_access_points, true)
                          raise ArgumentError, "Access points are not supported for this operation"
                        end
                        if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(Smithy::Client::EndpointRules.attr(bucket_arn, "resourceId[2]")))
                          if Smithy::Client::EndpointRules.set?(parameters.use_arn_region) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_arn_region, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_arn, "region"), "#{parameters.region}"))
                            raise ArgumentError, "Invalid configuration: region from ARN `#{bucket_arn['region']}` does not match client region `#{parameters.region}` and UseArnRegion is `false`"
                          end
                          if (bucket_partition = Aws::Core::EndpointRules.partition(Smithy::Client::EndpointRules.attr(bucket_arn, "region")))
                            if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
                              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_partition, "name"), "#{partition_result['name']}")
                                if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(bucket_arn, "region"), true)
                                  if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_arn, "service"), "s3")
                                    if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(bucket_arn, "accountId"), false)
                                      if Smithy::Client::EndpointRules.valid_host_label?(access_point_name, false)
                                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true)
                                          raise ArgumentError, "Access Points do not support S3 Accelerate"
                                        end
                                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                                          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-accesspoint-fips.dualstack.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{bucket_arn['region']}"}]})
                                        end
                                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
                                          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-accesspoint-fips.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{bucket_arn['region']}"}]})
                                        end
                                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                                          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-accesspoint.dualstack.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{bucket_arn['region']}"}]})
                                        end
                                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
                                          return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{access_point_name}-#{bucket_arn['accountId']}.#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{bucket_arn['region']}"}]})
                                        end
                                        if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false)
                                          return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-accesspoint.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{bucket_arn['region']}"}]})
                                        end
                                      end
                                      raise ArgumentError, "Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `#{access_point_name}`"
                                    end
                                    raise ArgumentError, "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `#{bucket_arn['accountId']}`"
                                  end
                                  raise ArgumentError, "Invalid ARN: The ARN was not for the S3 service, found: #{bucket_arn['service']}"
                                end
                                raise ArgumentError, "Invalid region in ARN: `#{bucket_arn['region']}` (invalid DNS name)"
                              end
                              raise ArgumentError, "Client was configured for partition `#{partition_result['name']}` but ARN (`#{parameters.bucket}`) has `#{bucket_partition['name']}`"
                            end
                          end
                        end
                        raise ArgumentError, "Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."
                      end
                    end
                  end
                  if Smithy::Client::EndpointRules.valid_host_label?(access_point_name, true)
                    if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                      raise ArgumentError, "S3 MRAP does not support dual-stack"
                    end
                    if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                      raise ArgumentError, "S3 MRAP does not support FIPS"
                    end
                    if Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true)
                      raise ArgumentError, "S3 MRAP does not support S3 Accelerate"
                    end
                    if Smithy::Client::EndpointRules.boolean_equals?(parameters.disable_multi_region_access_points, true)
                      raise ArgumentError, "Invalid configuration: Multi-Region Access Point ARNs are disabled."
                    end
                    if (mrap_partition = Aws::Core::EndpointRules.partition(parameters.region))
                      if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(mrap_partition, "name"), Smithy::Client::EndpointRules.attr(bucket_arn, "partition"))
                        return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{access_point_name}.accesspoint.s3-global.#{mrap_partition['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4a", "signingName" => "s3", "signingRegionSet" => ["*"]}]})
                      end
                      raise ArgumentError, "Client was configured for partition `#{mrap_partition['name']}` but bucket referred to partition `#{bucket_arn['partition']}`"
                    end
                  end
                  raise ArgumentError, "Invalid Access Point Name"
                end
                raise ArgumentError, "Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"
              end
              if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_arn, "service"), "s3-outposts")
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                  raise ArgumentError, "S3 Outposts does not support Dual-stack"
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                  raise ArgumentError, "S3 Outposts does not support FIPS"
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true)
                  raise ArgumentError, "S3 Outposts does not support S3 Accelerate"
                end
                if Smithy::Client::EndpointRules.set?(Smithy::Client::EndpointRules.attr(bucket_arn, "resourceId[4]"))
                  raise ArgumentError, "Invalid Arn: Outpost Access Point ARN contains sub resources"
                end
                if (outpost_id = Smithy::Client::EndpointRules.attr(bucket_arn, "resourceId[1]"))
                  if Smithy::Client::EndpointRules.valid_host_label?(outpost_id, false)
                    if Smithy::Client::EndpointRules.set?(parameters.use_arn_region) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_arn_region, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_arn, "region"), "#{parameters.region}"))
                      raise ArgumentError, "Invalid configuration: region from ARN `#{bucket_arn['region']}` does not match client region `#{parameters.region}` and UseArnRegion is `false`"
                    end
                    if (bucket_partition = Aws::Core::EndpointRules.partition(Smithy::Client::EndpointRules.attr(bucket_arn, "region")))
                      if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
                        if Smithy::Client::EndpointRules.string_equals?(Smithy::Client::EndpointRules.attr(bucket_partition, "name"), Smithy::Client::EndpointRules.attr(partition_result, "name"))
                          if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(bucket_arn, "region"), true)
                            if Smithy::Client::EndpointRules.valid_host_label?(Smithy::Client::EndpointRules.attr(bucket_arn, "accountId"), false)
                              if (outpost_type = Smithy::Client::EndpointRules.attr(bucket_arn, "resourceId[2]"))
                                if (access_point_name = Smithy::Client::EndpointRules.attr(bucket_arn, "resourceId[3]"))
                                  if Smithy::Client::EndpointRules.string_equals?(outpost_type, "accesspoint")
                                    if Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
                                      return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{access_point_name}-#{bucket_arn['accountId']}.#{outpost_id}.#{url['authority']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"]}, {"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{bucket_arn['region']}"}]})
                                    end
                                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://#{access_point_name}-#{bucket_arn['accountId']}.#{outpost_id}.s3-outposts.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"]}, {"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "#{bucket_arn['region']}"}]})
                                  end
                                  raise ArgumentError, "Expected an outpost type `accesspoint`, found #{outpost_type}"
                                end
                                raise ArgumentError, "Invalid ARN: expected an access point name"
                              end
                              raise ArgumentError, "Invalid ARN: Expected a 4-component resource"
                            end
                            raise ArgumentError, "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `#{bucket_arn['accountId']}`"
                          end
                          raise ArgumentError, "Invalid region in ARN: `#{bucket_arn['region']}` (invalid DNS name)"
                        end
                        raise ArgumentError, "Client was configured for partition `#{partition_result['name']}` but ARN (`#{parameters.bucket}`) has `#{bucket_partition['name']}`"
                      end
                    end
                  end
                  raise ArgumentError, "Invalid ARN: The outpost Id may only contain a-z, A-Z, 0-9 and `-`. Found: `#{outpost_id}`"
                end
                raise ArgumentError, "Invalid ARN: The Outpost Id was not set"
              end
              raise ArgumentError, "Invalid ARN: Unrecognized format: #{parameters.bucket} (type: #{arn_type})"
            end
            raise ArgumentError, "Invalid ARN: No ARN type specified"
          end
          if (arn_prefix = Smithy::Client::EndpointRules.substring(parameters.bucket, 0, 4, false)) && Smithy::Client::EndpointRules.string_equals?(arn_prefix, "arn:") && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(Aws::Core::EndpointRules.parse_arn(parameters.bucket)))
            raise ArgumentError, "Invalid ARN: `#{parameters.bucket}` was not a valid ARN"
          end
          if Smithy::Client::EndpointRules.boolean_equals?(parameters.force_path_style, true) && Aws::Core::EndpointRules.parse_arn(parameters.bucket)
            raise ArgumentError, "Path-style addressing cannot be used with ARN buckets"
          end
          if (uri_encoded_bucket = Smithy::Client::EndpointRules.uri_encode(parameters.bucket))
            if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, false)
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.dualstack.us-east-1.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.us-east-1.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.#{parameters.region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.#{parameters.region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.dualstack.us-east-1.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-east-1")
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                  if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-east-1")
                    return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                  end
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.#{parameters.region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.#{parameters.region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
              end
              raise ArgumentError, "Path-style addressing cannot be used with S3 Accelerate"
            end
          end
        end
        if Smithy::Client::EndpointRules.set?(parameters.use_object_lambda_endpoint) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_object_lambda_endpoint, true)
          if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
            if Smithy::Client::EndpointRules.valid_host_label?(parameters.region, true)
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true)
                raise ArgumentError, "S3 Object Lambda does not support Dual-stack"
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.accelerate, true)
                raise ArgumentError, "S3 Object Lambda does not support S3 Accelerate"
              end
              if Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint))
                return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "#{parameters.region}"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-object-lambda-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "#{parameters.region}"}]})
              end
              return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-object-lambda.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "#{parameters.region}"}]})
            end
            raise ArgumentError, "Invalid region: region was not a valid DNS name."
          end
        end
        if Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.bucket))
          if (partition_result = Aws::Core::EndpointRules.partition(parameters.region))
            if Smithy::Client::EndpointRules.valid_host_label?(parameters.region, true)
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.dualstack.us-east-1.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.us-east-1.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, true) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.dualstack.us-east-1.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, true) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.dualstack.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-east-1")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.set?(parameters.endpoint) && (url = Smithy::Client::EndpointRules.parse_url(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "#{url['scheme']}://#{url['authority']}#{url['path']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, true)
                if Smithy::Client::EndpointRules.string_equals?(parameters.region, "us-east-1")
                  return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
                end
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
              if Smithy::Client::EndpointRules.boolean_equals?(parameters.use_fips, false) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_dual_stack, false) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.set?(parameters.endpoint)) && Smithy::Client::EndpointRules.not?(Smithy::Client::EndpointRules.string_equals?(parameters.region, "aws-global")) && Smithy::Client::EndpointRules.boolean_equals?(parameters.use_global_endpoint, false)
                return Smithy::Client::EndpointRules::Endpoint.new(url: "https://s3.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {"authSchemes" => [{"disableDoubleEncoding" => true, "name" => "sigv4", "signingName" => "s3", "signingRegion" => "#{parameters.region}"}]})
              end
            end
            raise ArgumentError, "Invalid region: region was not a valid DNS name."
          end
        end
      end
      raise ArgumentError, "A region must be set when sending requests to S3."
    end
  end
end
