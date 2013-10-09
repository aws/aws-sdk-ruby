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

        RETRYABLE_400S = Set.new([
          'ProvisionedThroughputExceededException',
          'RequestLimitExceeded',
          'BandwidthLimitExceeded',
          'CRC32CheckFailed',
          'RequestTimeout',
        ])

        def initialize(error, http_status_code)
          @error = error
          @name = error.class.name.split('::').last
          @http_status_code = http_status_code
        end

        def expired_credentials?
          !!(EXPIRED_CREDS.include?(@name) || @name.match(/expired/i))
        end

        def server_error?
          (500..599).include?(@http_status_code)
        end

        def client_error?
          (400..499).include?(@http_status_code)
        end

        def networking_error?
          @http_status_code == 0
        end

      end
    end
  end
end
