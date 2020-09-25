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

        def add_handlers(handlers, _config)
          handlers.add(Handler)
        end

        class Handler < Seahorse::Client::Handler
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

                ARN.resolve_url!(
                  context.http_request.endpoint,
                  arn,
                  resolved_region,
                  extract_dualstack_config!(context)
                )
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
            unless context.config.regional_endpoint
              raise ArgumentError,
                    'Cannot provide both an Access Point ARN and setting '\
                    ':endpoint.'
            end

            if context.config.force_path_style
              raise ArgumentError,
                    'Cannot provide both an Access Point ARN and setting '\
                    ':force_path_style to true.'
            end

            if context.config.use_accelerate_endpoint
              raise ArgumentError,
                    'Cannot provide both an Access Point ARN and setting '\
                    ':use_accelerate_endpoint to true.'
            end

            if !arn.support_dualstack? && context[:use_dualstack_endpoint]
              raise ArgumentError,
                    'Cannot provide both an Outpost Access Point ARN and '\
                    'setting :use_dualstack_endpoint to true.'
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
          def resolve_url!(url, arn, region, dualstack = false)
            url.host = arn.host_url(region, dualstack)
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
                    'Must provide either `true` or `false` for '\
                    's3_use_arn_region profile option or for '\
                    "ENV['AWS_S3_USE_ARN_REGION']"
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
                      'ARN without s3_use_arn_region.'
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
