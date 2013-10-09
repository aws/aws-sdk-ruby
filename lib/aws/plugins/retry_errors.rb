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

        def checksum_error?
          CHECKSUM_ERRORS.include?(@name) || @error.is_a?(Errors::ChecksumError)
        end

        def server_error?
          (500..599).include?(@http_status_code)
        end

        def networking_error?
          @http_status_code == 0
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
        end

      end
    end
  end
end
