require 'set'

module Aws
  module Plugins
    # This plugin is an implementation detail and may be modified.
    # @api private
    class S3RequestSigner < Seahorse::Client::Plugin

      class SigningHandler < RequestSigner::Handler

        # List of regions that support older S3 signature versions.
        # All new regions only support signature version 4.
        V2_REGIONS = Set.new(%w(
          us-east-1
          us-west-1
          us-west-2
          ap-northeast-1
          ap-southeast-1
          ap-southeast-2
          sa-east-1
          eu-west-1
          us-gov-west-1
        ))

        def call(context)
          require_credentials(context)
          version = signature_version(context)
          case version
          when /v4/ then apply_v4_signature(context)
          when /s3/ then apply_v2_signature(context)
          else raise "unsupported signature version #{version.inspect}"
          end
          @handler.call(context)
        end

        private

        def apply_v4_signature(context)
          Signers::V4.new(
            context.config.credentials, 's3',
            context[:cached_sigv4_region] || context.config.sigv4_region,
          ).sign(context.http_request)
        end

        def apply_v2_signature(context)
          Signers::S3.sign(context)
        end

        def signature_version(context)
          context[:cached_signature_version] ||
          context.config.signature_version ||
          version_by_region(context)
        end

        def version_by_region(context)
          if classic_endpoint?(context)
            classic_sigv(context)
          else
            regional_sigv(context)
          end
        end

        def classic_endpoint?(context)
          context.config.region == 'us-east-1'
        end

        # When accessing the classic endpoint, s3.amazonaws.com, we don't know
        # the region name. This makes creating a version 4 signature difficult.
        # Choose v4 only if using KMS encryptions, which requires v4.
        def classic_sigv(context)
          if kms_encrypted?(context)
            :v4
          else
            :s3
          end
        end

        def regional_sigv(context)
          # Drop back to older S3 signature version when uploading objects for
          # better performance. This optimization may be removed at some point
          # in favor of always using signature version 4.
          if V2_REGIONS.include?(context.config.region)
            uploading_file?(context) && !kms_encrypted?(context) ? :s3 : :v4
          else
            :v4
          end
        end

        def kms_encrypted?(context)
          context.params[:server_side_encryption] == 'aws:kms'
        end

        def uploading_file?(context)
          [:put_object, :upload_part].include?(context.operation_name) &&
            context.http_request.body.size > 0
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
            context[:cached_sigv4_region] = cached_region
            context[:cached_signature_version] = :v4
          end
        end

      end

      # This handler detects when a request fails because signature version 4
      # is required but not used. It follows up by making a request to
      # determine the correct region, then finally a version 4 signed
      # request against the regional endpoint.
      class BucketSigningErrorHandler < Handler

        SIGV4_MSG = /(Please use AWS4-HMAC-SHA256|AWS Signature Version 4)/

        def call(context)
          response = @handler.call(context)
          handle_region_errors(response)
        end

        private

        def handle_region_errors(response)
          if sigv4_required_error?(response)
            detect_region_and_retry(response)
          elsif wrong_sigv4_region?(response)
            extract_body_region_and_retry(response.context)
          else
            response
          end
        end

        def sigv4_required_error?(resp)
          resp.context.http_response.status_code == 400 &&
          resp.context.http_response.body_contents.match(SIGV4_MSG) &&
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
          if resp.successful?
            resp
          else
            actual_region = region_from_location_header(context)
            updgrade_to_v4(context, actual_region)
            log_warning(context, actual_region)
            @handler.call(context)
          end
        end

        def updgrade_to_v4(context, region)
          context.http_response.body.truncate(0)
          context.http_request.headers.delete('authorization')
          context.http_request.headers.delete('x-amz-security-token')
          context.http_request.endpoint.host = new_hostname(context, region)
          signer = Signers::V4.new(context.config.credentials, 's3', region)
          signer.sign(context.http_request)
        end

        def region_from_location_header(context)
          location = context.http_response.headers['location']
          location.match(/s3[.-](.+?)\.amazonaws\.com/)[1]
        end

        def log_warning(context, actual_region)
          S3::BUCKET_REGIONS[context.params[:bucket]] = actual_region
          msg = "S3 client configured for #{context.config.region.inspect} " +
            "but the bucket #{context.params[:bucket].inspect} is in " +
            "#{actual_region.inspect}; Please configure the proper region " +
            "to avoid multiple unecessary redirects and signing attempts\n"
          if logger = context.config.logger
            logger.warn(msg)
          else
            warn(msg)
          end
        end

      end

      # BEFORE signing
      handle(CachedBucketRegionHandler, step: :sign, priority: 60)

      # sign the request
      handler(SigningHandler, step: :sign)

      # AFTER signing
      handle(BucketSigningErrorHandler, step: :sign, priority: 40)

    end
  end
end
