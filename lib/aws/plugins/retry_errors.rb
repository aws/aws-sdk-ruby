require 'set'

module Aws
  module Plugins
    class RetryErrors < Seahorse::Client::Plugin

      option(:max_retries, 3)

      # @api private
      class ErrorInspector

        EXPIRED_CREDS = Set.new([
          'InvalidClientTokenId',        # query services
          'UnrecognizedClientException', # json services
          'InvalidAccessKeyId',          # s3
          'AuthFailure',                 # ec2
        ])

        THROTTLING_ERRORS = Set.new([
          'Throttling',                             # query services
          'ThrottlingException',                    # json services
          'RequestThrottled',                       # sqs
          'ProvisionedThroughputExceededException', # dynamodb
          'RequestLimitExceeded',                   # ec2
          'BandwidthLimitExceeded',                 # cloud search
        ])

        CHECKSUM_ERRORS = Set.new([
          'CRC32CheckFailed', # dynamodb
        ])

        NETWORKING_ERRORS = Set.new([
          'RequestTimeout', # s3
        ])

        def initialize(error, http_status_code)
          @error = error
          @name = error.class.name.split('::').last
          @http_status_code = http_status_code
        end

        def expired_credentials?
          !!(EXPIRED_CREDS.include?(@name) || @name.match(/expired/i))
        end

        def throttling_error?
          !!(THROTTLING_ERRORS.include?(@name) || @name.match(/throttl/i))
        end

        def checksum?
          CHECKSUM_ERRORS.include?(@name) || @error.is_a?(Errors::ChecksumError)
        end

        def networking?
          NETWORKING_ERRORS.include?(@name) || @http_status_code == 0
        end

        def server?
          (500..599).include?(@http_status_code)
        end

      end

      class Handler

        def initialize(&backoff)
          @backoff = backoff || lambda do |context|
            sleep(2 ** context.retry_count * 0.3)
          end
        end

        attr_accessor :handler

        def call(context)
          response = @handler.call(context)
          if response.error
            retry_if_possible(response)
          else
            response
          end
        end

        private

        def retry_if_possible(response)
          context = response.context
          error = error_for(response)
          if should_retry?(context, error)
            retry_request(context, error)
          else
            response
          end
        end

        def error_for(response)
          ErrorInspector.new(response.error, response.http_response.status_code)
        end

        def retry_request(context, error)
          delay_retry(context)
          context.increment_retry_count!
          context.config.credentials.refresh! if error.expired_credentials?
          context.http_request.body.rewind
          context.http_response.body.tap do |body|
            body.truncate(0) unless body.pos == 0
          end
          call(context)
        end

        def should_retry?(context, error)
          retryable?(context, error) and
          retries_left?(context) and
          response_truncatable?(context)
        end

        def delay_retry(context)
          @backoff.call(context)
        end

        def retries_left?(context)
          context.retry_count < max_retries(context)
        end

        def retryable?(context, error)
          (error.expired_credentials? and refreshable_credentials?(context)) or
          error.throttling_error? or
          error.checksum? or
          error.networking? or
          error.server?
        end

        def refreshable_credentials?(context)
          context.config.credentials.respond_to?(:refresh!)
        end

        def max_retries(context)
          context.config.max_retries
        end

        def response_truncatable?(context)
          # IF the target response body IO object has received no bytes
          # or if it can be truncated then we can retry the request.
          context.http_response.body.respond_to?(:truncate) or
          context.http_response.body.pos == 0
        end

      end
    end
  end
end
