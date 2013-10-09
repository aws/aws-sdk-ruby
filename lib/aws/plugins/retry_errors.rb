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

      class Handler < Seahorse::Client::Handler

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
          error = ErrorInspector.new(response.error)
          context = response.context
          if should_retry?(context, error)
            retry_request(context)
          else
            response
          end
        end

        def retry_request(context, error)
          refresh_credentials!(context) if
            credentials_expired?(context, error)
          context.metadata[:retry_count] += 1
          context.http_request.body.rewind
          context.http_response.body.truncate(0)
          call(context)
        end

        def should_retry?(context, error)
          retryable?(context, error) and
          retries_left?(context) and
          response_truncatable?(context)
        end

        def retries_left?(context)
          retry_count(context) < max_retries(context)
        end

        def retryable?(context, error)
          credentials_expired?(context, error) or
          error.throttling_error? or
          error.checksum? or
          error.networking? or
          error.server?
        end

        def credentials_expired?(context, error)
          error.expired_credentials? and credentials_refresh?(context)
        end

        def credentials_refresh?(context)
          context.config.credentials.respond_to?(:refresh!)
        end

        def refresh_credentials!(context)
          context.config.credentials.refresh!
        end

        def retry_count(context)
          context.metadata[:retry_count] ||= 0
        end

        def max_retries(context)
          context.config.max_retries
        end

        def response_truncatable?(context)
          context.http_response.body.respond_to?(:truncate)
        end

      end
    end
  end
end
