module Aws
  module Plugins
    module Retries
      # @api private
      # This class will be obsolete when APIs contain modeled exceptions
      class ErrorInspector
        EXPIRED_CREDS = Set.new(
          [
            'InvalidClientTokenId',        # query services
            'UnrecognizedClientException', # json services
            'InvalidAccessKeyId',          # s3
            'AuthFailure',                 # ec2
            'InvalidIdentityToken',        # sts
            'ExpiredToken'                 # route53
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
            'CRC32CheckFailed' # dynamodb
          ]
        )

        NETWORKING_ERRORS = Set.new(
          [
            'RequestTimeout',          # s3
            'RequestTimeoutException', # glacier
            'IDPCommunicationError'    # sts
          ]
        )

        def initialize(error, http_status_code)
          @error = error
          @name = extract_name(@error)
          @http_status_code = http_status_code
        end

        def expired_credentials?
          !!(EXPIRED_CREDS.include?(@name) || @name.match(/expired/i))
        end

        def throttling_error?
          !!(THROTTLING_ERRORS.include?(@name) ||
            @name.match(/throttl/i) ||
            @http_status_code == 429) ||
            modeled_throttling?
        end

        def checksum?
          CHECKSUM_ERRORS.include?(@name) || @error.is_a?(Errors::ChecksumError)
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

          if @http_status_code == 421 ||
            extract_name(@error) == 'InvalidEndpointException'
            @error = Errors::EndpointDiscoveryError.new
          end

          # When endpoint discovery error occurs
          # evict the endpoint from cache
          if @error.is_a?(Errors::EndpointDiscoveryError)
            key = context.config.endpoint_cache.extract_key(context)
            context.config.endpoint_cache.delete(key)
            true
          else
            false
          end
        end

        def modeled_retryable?
          @error.is_a?(Errors::ServiceError) && @error.retryable?
        end

        def modeled_throttling?
          @error.is_a?(Errors::ServiceError) && @error.throttling?
        end

        def retryable?(context)
          (expired_credentials? && refreshable_credentials?(context)) ||
            throttling_error? ||
            checksum? ||
            networking? ||
            server? ||
            endpoint_discovery?(context) ||
            modeled_retryable?
        end

        private

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