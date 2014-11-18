module Aws
  module Plugins
    # This plugin is an implementation detail and may be modified.
    # @api private
    class S3RegionDetection < Seahorse::Client::Plugin

      # Intentionally not documented - this should go away when all
      # services support signature version 4 in every region.
      option(:signature_version) do |cfg|
        if S3.sigv2_region?(cfg.region)
          's3'
        else
          'v4'
        end
      end

      # Abstract base class for the other two handlers
      class Handler < Seahorse::Client::Handler

        private

        def new_hostname(context, region)
          bucket = context.params[:bucket]
          if region == 'us-east-1'
            "#{bucket}.s3-external-1.amazonaws.com"
          else
            bucket + '.' + URI.parse(EndpointProvider.resolve(region, 's3')).host
          end
        end

      end

      # This handler will update the http endpoint when the bucket region
      # is known/cached.
      class CachedBucketRegionHandler < Handler

        def call(context)
          if bucket = context.params[:bucket]
            use_regional_endpoint_when_known(context, bucket)
          end
          @handler.call(context)
        end

        private

        def use_regional_endpoint_when_known(context, bucket)
          cached_region = S3::BUCKET_REGIONS[bucket]
          if cached_region && cached_region != context.config.region
            context.http_request.endpoint.host = new_hostname(context, cached_region)
            context[:sigv4_region] = cached_region
            context[:signature_version] = 'v4'
          end
        end

      end

      # This handler detects when a request fails because signature version 4
      # is required but not used. It follows up by making a request to
      # determine the correct region, then finally a version 4 signed
      # request against the regional endpoint.
      class DetectRegionHandler < Handler

        def call(context)
          response = @handler.call(context)
          handle_region_errors(response)
        end

        private

        def handle_region_errors(response)
          if requires_sigv4?(response)
            detect_region_and_retry(response)
          elsif wrong_sigv4_region?(response)
            extract_body_region_and_retry(response.context)
          else
            response
          end
        end

        def requires_sigv4?(resp)
          resp.context.http_response.status_code == 400 &&
          resp.context.http_response.body_contents.include?('Please use AWS4-HMAC-SHA256') &&
          resp.context.http_response.body.respond_to?(:truncate)
        end

        def wrong_sigv4_region?(resp)
          resp.context.http_response.status_code == 400 &&
          resp.context.http_response.body_contents.match(/<Region>.+?<\/Region>/)
        end

        def extract_body_region_and_retry(context)
          actual_region = region_from_body(context)
          updgrade_to_v4(context, actual_region)
          log_warning(context, actual_region)
          @handler.call(context)
        end

        def region_from_body(context)
          context.http_response.body_contents.match(/<Region>(.+?)<\/Region>/)[1]
        end

        def detect_region_and_retry(resp)
          context = resp.context
          updgrade_to_v4(context, 'us-east-1')
          resp = @handler.call(context)
          actual_region = region_from_location_header(context)
          updgrade_to_v4(context, actual_region)
          log_warning(context, actual_region)
          @handler.call(context)
        end

        def updgrade_to_v4(context, region)
          bucket = context.params[:bucket]
          context.http_response.body.truncate(0)
          context.http_request.headers.delete('authorization')
          context.http_request.headers.delete('x-amz-security-token')
          context.http_request.endpoint.host = new_hostname(context, region)
          signer = Signers::V4.new(context.config.credentials, 's3', region)
          signer.sign(context.http_request)
        end

        def region_from_location_header(context)
          location = context.http_response.headers['location']
          location.match(/s3.(.+?)\.amazonaws\.com/)[1]
        end

        def log_warning(context, actual_region)
          S3::BUCKET_REGIONS[context.params[:bucket]] = actual_region
          msg = "S3 client configured for #{context.config.region.inspect} " +
            "but the bucket #{context.params[:bucket].inspect} is in " +
            "#{actual_region.inspect}; Please configure the proper region " +
            "to avoid multiple unecessary redirects and signing attempts"
          if logger = context.config.logger
            logger.warn(msg)
          else
            warn(msg)
          end

        end

      end

      # BEFORE the request is signed
      handle(CachedBucketRegionHandler, step: :sign, priority: 60)

      # AFTER the request is signed
      handle(DetectRegionHandler, step: :sign, priority: 40)

    end
  end
end
