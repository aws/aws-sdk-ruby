# frozen_string_literal: true

module Aws
  module Plugins
    module Retries
      # @api private
      # This class will be obsolete when APIs contain modeled exceptions
      class ErrorInspector
        # Target-service authentication failures that indicate the cached
        # credentials are no longer valid.
        INVALIDATING_AUTH_ERRORS = Set.new(
          %w[
            ExpiredToken
            InvalidToken
          ]
        )

        # Error codes that indicate cached credentials were rejected or have
        # expired.
        REFRESHING_AUTH_ERRORS = Set.new(
          %w[
            InvalidClientTokenId
            UnrecognizedClientException
            InvalidAccessKeyId
            AuthFailure
            InvalidIdentityToken
            ExpiredToken
            ExpiredTokenException
          ]
        )

        THROTTLING_ERRORS = Set.new(
          [
            'Throttling',                             # query services
            'ThrottlingException',                    # json services
            'ThrottledException',                     # sns
            'RequestThrottled',                       # sqs
            'RequestThrottledException',              # generic service
            'ProvisionedThroughputExceededException', # dynamodb
            'TransactionInProgressException',         # dynamodb
            'RequestLimitExceeded',                   # ec2
            'BandwidthLimitExceeded',                 # cloud search
            'LimitExceededException',                 # kinesis
            'TooManyRequestsException',               # batch
            'PriorRequestNotComplete',                # route53
            'SlowDown',                               # s3
            'EC2ThrottledException'                   # ec2
          ]
        )

        CHECKSUM_ERRORS = Set.new(
          [
            'CRC32CheckFailed', # dynamodb
            'BadDigest' # s3
          ]
        )

        NETWORKING_ERRORS = Set.new(
          [
            'RequestTimeout',          # s3
            'InternalError',           # s3
            'RequestTimeoutException', # glacier
            'IDPCommunicationError'    # sts
          ]
        )

        # Error codes that may indicate clock skew; retryable only when the
        # computed skew exceeds the detection threshold.
        CLOCK_SKEW_ERRORS = Set.new(
          [
            'RequestTimeTooSkewed',
            'RequestExpired',
            'InvalidSignatureException',
            'SignatureDoesNotMatch',
            'AuthFailure',
            'AccessDeniedException',
            'RequestInTheFuture'
          ]
        )

        def initialize(error, http_status_code)
          @error = error
          @name = extract_name(@error)
          @http_status_code = http_status_code
        end

        def invalidating_auth_error?
          INVALIDATING_AUTH_ERRORS.include?(@name)
        end

        def refreshing_auth_error?
          REFRESHING_AUTH_ERRORS.include?(@name) || !!(@name =~ /expired/i)
        end

        def throttling_error?
          !!(THROTTLING_ERRORS.include?(@name) ||
            @name.match(/throttl/i) ||
            @http_status_code == 429) ||
            modeled_throttling?
        end

        def checksum?
          CHECKSUM_ERRORS.include?(@name)
        end

        def networking?
          @error.is_a?(Seahorse::Client::NetworkingError) ||
            @error.is_a?(Errors::NoSuchEndpointError) ||
            NETWORKING_ERRORS.include?(@name)
        end

        def server?
          (500..599).cover?(@http_status_code)
        end

        def endpoint_discovery?(context)
          return false unless context.operation.endpoint_discovery

          @http_status_code == 421 ||
            @name == 'InvalidEndpointException' ||
            @error.is_a?(Errors::EndpointDiscoveryError)
        end

        def modeled_retryable?
          @error.is_a?(Errors::ServiceError) && @error.retryable?
        end

        def modeled_throttling?
          @error.is_a?(Errors::ServiceError) && @error.throttling?
        end

        def clock_skew?(context)
          return false if clock_skew_correction_disabled?(context.config)

          sent_at = context.metadata[:clock_skew_request_sent_at]
          CLOCK_SKEW_ERRORS.include?(@name) &&
            context.config.clock_skew.clock_skewed?(context, sent_at)
        end

        def retryable?(context)
          server? ||
            modeled_retryable? ||
            throttling_error? ||
            networking? ||
            checksum? ||
            endpoint_discovery?(context) ||
            (invalidating_auth_error? && invalidatable_credentials?(context)) ||
            (refreshing_auth_error? && refreshable_credentials?(context)) ||
            clock_skew?(context)
        end

        private

        def invalidatable_credentials?(context)
          context.config.credentials.respond_to?(:invalidate) && !context[:signing_credentials].nil?

        def clock_skew_correction_disabled?(config)
          config.respond_to?(:disable_clock_skew_correction) &&
            config.disable_clock_skew_correction
        end

        def refreshable_credentials?(context)
          context.config.credentials.respond_to?(:refresh!)
        end

        def extract_name(error)
          if error.is_a?(Errors::ServiceError)
            error.class.code || error.class.name.to_s
          else
            error.class.name.to_s
          end
        end
      end
    end
  end
end
