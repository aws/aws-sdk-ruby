# frozen_string_literal: true

require 'aws-sigv4'

module Aws
  module S3
    module Plugins
      # This plugin is an implementation detail and may be modified.
      # @api private
      class S3Signer < Seahorse::Client::Plugin
        option(:signature_version, 'v4')

        # These once had defaults. But now they are used as overrides to
        # new endpoint and auth resolution.
        option(:sigv4_signer)
        option(:sigv4_name)
        option(:sigv4_region)

        def add_handlers(handlers, cfg)
          case cfg.signature_version
          when 'v4' then add_v4_handlers(handlers)
          when 's3' then add_legacy_handler(handlers)
          else
            msg = "unsupported signature version `#{cfg.signature_version}'"
            raise ArgumentError, msg
          end
        end

        def add_v4_handlers(handlers)
          handlers.add(CachedBucketRegionHandler, step: :sign, priority: 60)
          handlers.add(V4Handler, step: :sign)
          handlers.add(BucketRegionErrorHandler, step: :sign, priority: 40)
        end

        def add_legacy_handler(handlers)
          handlers.add(LegacyHandler, step: :sign)
        end

        class LegacyHandler < Seahorse::Client::Handler
          def call(context)
            LegacySigner.sign(context)
            @handler.call(context)
          end
        end

        class V4Handler < Seahorse::Client::Handler
          def call(context)
            auth_scheme = context[:auth_scheme]
            if %w[sigv4 sigv4a].include?(auth_scheme['name'])
              Aws::Plugins::SignatureV4.apply_signature(
                context: context,
                signer: sigv4_signer(context)
              )
            end
            @handler.call(context)
          end

          private

          def sigv4_signer(context)
            if context[:cached_sigv4_region] &&
               context[:cached_sigv4_region] != context.config.region
              region = context[:cached_sigv4_region]
            end

            S3Signer.build_v4_signer(context, region)
          end
        end

        # This handler will update the http endpoint when the bucket region
        # is known/cached.
        class CachedBucketRegionHandler < Seahorse::Client::Handler
          def call(context)
            bucket = context.params[:bucket]
            check_for_cached_region(context, bucket) if bucket
            @handler.call(context)
          end

          private

          def check_for_cached_region(context, bucket)
            cached_region = S3::BUCKET_REGIONS[bucket]
            if cached_region && cached_region != context.config.region
              context.http_request.endpoint.host = S3Signer.new_hostname(
                context, cached_region
              )
              context[:cached_sigv4_region] = cached_region
            end
          end
        end

        # This handler detects when a request fails because of a mismatched bucket
        # region. It follows up by making a request to determine the correct
        # region, then finally a version 4 signed request against the correct
        # regional endpoint.
        class BucketRegionErrorHandler < Seahorse::Client::Handler
          def call(context)
            response = @handler.call(context)
            handle_region_errors(response)
          end

          private

          def handle_region_errors(response)
            if wrong_sigv4_region?(response) &&
               !fips_region?(response) &&
               response.context.config.regional_endpoint &&
               !expired_credentials?(response)
              get_region_and_retry(response.context)
            else
              response
            end
          end

          def get_region_and_retry(context)
            actual_region = context.http_response.headers['x-amz-bucket-region']
            actual_region ||= region_from_body(context.http_response.body_contents)
            update_bucket_cache(context, actual_region)
            log_warning(context, actual_region)
            resign_with_new_region(context, actual_region)
            @handler.call(context)
          end

          def update_bucket_cache(context, actual_region)
            S3::BUCKET_REGIONS[context.params[:bucket]] = actual_region
          end

          def fips_region?(resp)
            resp.context.http_request.endpoint.host.include?('s3-fips.')
          end

          def expired_credentials?(resp)
            resp.context.http_response.body_contents.match(/<Code>ExpiredToken<\/Code>/)
          end

          def wrong_sigv4_region?(resp)
            resp.context.http_response.status_code == 400 &&
              (resp.context.http_response.headers['x-amz-bucket-region'] ||
               resp.context.http_response.body_contents.match(/<Region>.+?<\/Region>/))
          end

          def resign_with_new_region(context, actual_region)
            context.http_response.body.truncate(0)
            context.http_request.endpoint.host = S3Signer.new_hostname(
              context, actual_region
            )
            context.metadata[:redirect_region] = actual_region

            Aws::Plugins::SignatureV4.apply_signature(
              context: context,
              signer: S3Signer.build_v4_signer(context, actual_region)
            )
          end

          def region_from_body(body)
            region = body.match(/<Region>(.+?)<\/Region>/)[1]
            if region.nil? || region == ''
              raise "couldn't get region from body: #{body}"
            else
              region
            end
          end

          def log_warning(context, actual_region)
            msg = "S3 client configured for #{context.config.region.inspect} " \
                  "but the bucket #{context.params[:bucket].inspect} is in " \
                  "#{actual_region.inspect}; Please configure the proper region " \
                  "to avoid multiple unnecessary redirects and signing attempts\n"
            if (logger = context.config.logger)
              logger.warn(msg)
            else
              warn(msg)
            end
          end
        end

        class << self
          # @api private
          def build_v4_signer(context, new_region = nil)
            cfg = context.config
            auth_scheme = context[:auth_scheme]
            Aws::Sigv4::Signer.new(
              service: _sigv4_name(cfg, auth_scheme),
              region: new_region || _sigv4_region(cfg, auth_scheme),
              credentials: cfg.credentials,
              signing_algorithm: auth_scheme['name'].to_sym,
              uri_escape_path: !!!auth_scheme['disableDoubleEncoding'],
              unsigned_headers: %w[content-length user-agent x-amzn-trace-id]
            )
          end

          # @api private
          def _sigv4_name(cfg, scheme)
            cfg.sigv4_name || scheme['signingName'] ||
              cfg.api.metadata['signingName'] ||
              cfg.api.metadata['endpointPrefix']
          end

          # @api private
          def _sigv4_region(cfg, scheme)
            cfg.sigv4_region || scheme['signingRegion'] ||
              '*' if scheme['name'] == 'sigv4a' || cfg.region
          end

          def new_hostname(context, region)
            endpoint_params = context[:endpoint_params]
            endpoint_params.region = region
            endpoint =
              context.config.endpoint_provider.resolve_endpoint(endpoint_params)
            URI(endpoint.url).host
          end
        end
      end
    end
  end
end
