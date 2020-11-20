# frozen_string_literal: true

require_relative '../arn/access_point_arn'
require_relative '../arn/outpost_access_point_arn'

module Aws
  module S3
    module Plugins
      # When an accesspoint ARN is provided for :bucket in S3 operations, this
      # plugin resolves the request endpoint from the ARN when possible.
      # @api private
      class ARN < Seahorse::Client::Plugin
        option(
          :s3_use_arn_region,
          default: true,
          doc_type: 'Boolean',
          docstring: <<-DOCS) do |cfg|
For S3 ARNs passed into the `:bucket` parameter, this option will
use the region in the ARN, allowing for cross-region requests to
be made. Set to `false` to use the client's region instead.
          DOCS
          resolve_s3_use_arn_region(cfg)
        end

        # param validator is validate:50 (required to add account_id from arn)
        # endpoint is build:90 (populates the URI for the first time)
        # endpoint pattern is build:10 (prefix account id to host)
        def add_handlers(handlers, _config)
          handlers.add(ARNHandler, step: :validate, priority: 75)
          handlers.add(UrlHandler)
        end

        # After extracting out any ARN input, resolve a new URL with it.
        class UrlHandler < Seahorse::Client::Handler
          def call(context)
            if context.metadata[:s3_arn]
              ARN.resolve_url!(
                context.http_request.endpoint,
                context.metadata[:s3_arn][:arn],
                context.metadata[:s3_arn][:resolved_region],
                context.metadata[:s3_arn][:dualstack],
                # if regional_endpoint is false, a custom endpoint was provided
                # in this case, we want to prefix the endpoint using the ARN
                !context.config.regional_endpoint
              )
            end
            @handler.call(context)
          end
        end

        # This plugin will extract out any ARN input and set context for other
        # plugins to use without having to translate the ARN again.
        class ARNHandler < Seahorse::Client::Handler
          def call(context)
            bucket_member = _bucket_member(context.operation.input.shape)
            if bucket_member && (bucket = context.params[bucket_member])
              resolved_region, arn = ARN.resolve_arn!(
                bucket,
                context.config.region,
                context.config.s3_use_arn_region
              )
              if arn
                validate_config!(context, arn)

                context.metadata[:s3_arn] = {
                  arn: arn,
                  resolved_region: resolved_region,
                  dualstack: extract_dualstack_config!(context)
                }
              end
            end
            @handler.call(context)
          end

          private

          def _bucket_member(input)
            input.members.each do |member, ref|
              return member if ref.shape.name == 'BucketName'
            end
            nil
          end

          # other plugins use dualstack so disable it when we're done
          def extract_dualstack_config!(context)
            dualstack = context[:use_dualstack_endpoint]
            context[:use_dualstack_endpoint] = false if dualstack
            dualstack
          end

          def validate_config!(context, arn)
            if context.config.force_path_style
              raise ArgumentError,
                    'Cannot provide an Access Point ARN when '\
                    '`:force_path_style` is set to true.'
            end

            if context.config.use_accelerate_endpoint
              raise ArgumentError,
                    'Cannot provide an Access Point ARN when '\
                    '`:use_accelerate_endpoint` is set to true.'
            end

            if !arn.support_dualstack? && context[:use_dualstack_endpoint]
              raise ArgumentError,
                    'Cannot provide an Outpost Access Point ARN when '\
                    '`:use_dualstack_endpoint` is set to true.'
            end
          end
        end

        class << self
          # @api private
          def resolve_arn!(member_value, region, use_arn_region)
            if Aws::ARNParser.arn?(member_value)
              arn = Aws::ARNParser.parse(member_value)
              if arn.resource.start_with?('accesspoint')
                s3_arn = Aws::S3::AccessPointARN.new(arn.to_h)
              elsif arn.resource.start_with?('outpost')
                s3_arn = Aws::S3::OutpostAccessPointARN.new(arn.to_h)
              else
                raise ArgumentError,
                      'Only Access Point and Outpost Access Point type ARNs '\
                      'are currently supported.'
              end
              s3_arn.validate_arn!
              validate_region_config!(s3_arn, region, use_arn_region)
              region = s3_arn.region if use_arn_region
              [region, s3_arn]
            else
              [region]
            end
          end

          # @api private
          def resolve_url!(url, arn, region, dualstack = false, has_custom_endpoint = false)
            custom_endpoint = url.host if has_custom_endpoint
            url.host = arn.host_url(region, dualstack, custom_endpoint)
            url.path = url_path(url.path, arn)
            url
          end

          private

          def resolve_s3_use_arn_region(cfg)
            value = ENV['AWS_S3_USE_ARN_REGION'] ||
                    Aws.shared_config.s3_use_arn_region(profile: cfg.profile) ||
                    'true'
            value = Aws::Util.str_2_bool(value)
            # Raise if provided value is not true or false
            if value.nil?
              raise ArgumentError,
                    'Must provide either `true` or `false` for the '\
                    '`s3_use_arn_region` profile option or for '\
                    "ENV['AWS_S3_USE_ARN_REGION']."
            end
            value
          end

          # Remove ARN from the path since it was substituted already
          # This only works because accesspoints care about the URL
          def url_path(path, arn)
            path = path.sub("/#{Seahorse::Util.uri_escape(arn.to_s)}", '')
                       .sub("/#{arn}", '')
            "/#{path}" unless path =~ /^\//
            path
          end

          def validate_region_config!(arn, region, use_arn_region)
            fips = arn.support_fips?

            # s3-external-1 is specific just to s3 and not part of partitions
            # aws-global is a partition region
            unless arn.partition == 'aws' &&
                   (region == 's3-external-1' || region == 'aws-global')
              if !fips && arn.region.include?('fips')
                raise ArgumentError,
                      'FIPS region ARNs are not supported for this type of ARN.'
              end

              if !fips && !use_arn_region && region.include?('fips')
                raise ArgumentError,
                      'FIPS client regions are not supported for this type of '\
                      'ARN without `:s3_use_arn_region`.'
              end

              # if it's a fips region, attempt to normalize it
              if fips || use_arn_region
                region = region.gsub('fips-', '').gsub('-fips', '')
              end
              if use_arn_region &&
                 !Aws::Partitions.partition(arn.partition).region?(region)
                raise Aws::Errors::InvalidARNPartitionError
              end

              if !use_arn_region && region != arn.region
                raise Aws::Errors::InvalidARNRegionError
              end
            end
          end
        end
      end
    end
  end
end
