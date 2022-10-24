# frozen_string_literal: true

require_relative '../arn/access_point_arn'
require_relative '../arn/object_lambda_arn'
require_relative '../arn/outpost_access_point_arn'
require_relative '../arn/multi_region_access_point_arn'

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

        option(
          :s3_disable_multiregion_access_points,
          default: false,
          doc_type: 'Boolean',
          docstring: <<-DOCS) do |cfg|
When set to `false` this will option will raise errors when multi-region
access point ARNs are used.  Multi-region access points can potentially
result in cross region requests.
        DOCS
          resolve_s3_disable_multiregion_access_points(cfg)
        end

        # param validator is validate:50
        # endpoint is build:90 (populates the URI for the first time)
        # endpoint pattern is build:10
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
                context.metadata[:s3_arn][:fips],
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
                  fips: context.config.use_fips_endpoint,
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
                    'Cannot provide an Outpost Access Point, Object Lambda, '\
                    'or Multi-region Access Point ARN'\
                    ' when `:use_dualstack_endpoint` is set to true.'
            end

            if arn.region.empty? && context.config.s3_disable_multiregion_access_points
              raise ArgumentError,
                    'Cannot provide a Multi-region Access Point ARN with '\
                    '`:s3_disable_multiregion_access_points` set to true'
            end

            if context.config.use_fips_endpoint && !arn.support_fips?
              raise ArgumentError,
                    'FIPS client regions are not supported for this type '\
                    'of ARN.'
            end
          end
        end

        class << self
          # @api private
          def resolve_arn!(member_value, region, use_arn_region)
            if Aws::ARNParser.arn?(member_value)
              arn = Aws::ARNParser.parse(member_value)
              s3_arn = resolve_arn_type!(arn)
              s3_arn.validate_arn!
              validate_region_config!(s3_arn, region, use_arn_region)
              region = s3_arn.region if use_arn_region
              [region, s3_arn]
            else
              [region]
            end
          end

          # @api private
          def resolve_url!(url, arn, region, fips = false, dualstack = false, has_custom_endpoint = false)
            custom_endpoint = url.host if has_custom_endpoint
            url.host = arn.host_url(region, fips, dualstack, custom_endpoint)
            url.path = url_path(url.path, arn)
            url
          end

          private

          def resolve_arn_type!(arn)
            case arn.service
            when 's3'
              arn.region.empty? ?
                Aws::S3::MultiRegionAccessPointARN.new(arn.to_h) :
                Aws::S3::AccessPointARN.new(arn.to_h)
            when 's3-outposts'
              Aws::S3::OutpostAccessPointARN.new(arn.to_h)
            when 's3-object-lambda'
              Aws::S3::ObjectLambdaARN.new(arn.to_h)
            else
              raise ArgumentError,
                    'Only Access Point, Outposts, and Object Lambdas ARNs '\
                    'are currently supported.'
            end
          end

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

          def resolve_s3_disable_multiregion_access_points(cfg)
            value = ENV['AWS_S3_DISABLE_MULTIREGION_ACCESS_POINTS'] ||
              Aws.shared_config.s3_disable_multiregion_access_points(profile: cfg.profile) ||
              'false'
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

          # Remove ARN from the path because we've already set the new host
          def url_path(path, arn)
            path = path.sub("/#{Seahorse::Util.uri_escape(arn.to_s)}", '')
                       .sub("/#{arn}", '')
            "/#{path}" unless path =~ /^\//
            path
          end

          def validate_region_config!(arn, region, use_arn_region)
            if ['s3-external-1', 'aws-global'].include?(region)
              # These "regions" are not regional endpoints
              unless use_arn_region
                raise Aws::Errors::InvalidARNRegionError,
                      'Configured client region is not a regional endpoint.'
              end
              # These "regions" are in the AWS partition
              # Cannot use ARN region unless it's the same partition
              unless arn.partition == 'aws'
                raise Aws::Errors::InvalidARNPartitionError
              end
            else
              # use_arn_region does not apply to MRAP (global) arns
              unless arn.region.empty?
                # Raise if the ARN and client regions are in different partitions
                if use_arn_region &&
                   !Aws::Partitions.partition(arn.partition).region?(region)
                  raise Aws::Errors::InvalidARNPartitionError
                end

                # Raise if regions mismatch
                # Either when it's a fips client or not using the ARN region
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
end
