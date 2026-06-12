# frozen_string_literal: true

module Aws
  module Core
    module Http
      # An HTTP error inspector, using hints from status code and headers.
      class ErrorInspector
        EXPIRED_CREDS = Set.new(
          %w[
            InvalidClientTokenId
            UnrecognizedClientException
            InvalidAccessKeyId
            AuthFailure
            InvalidIdentityToken
            ExpiredToken
            ExpiredTokenException
          ]
        ).freeze

        THROTTLING_ERRORS = Set.new(
          %w[
            Throttling
            ThrottlingException
            ThrottledException
            RequestThrottledException
            TooManyRequestsException
            ProvisionedThroughputExceededException
            TransactionInProgressException
            RequestLimitExceeded
            BandwidthLimitExceeded
            LimitExceededException
            RequestThrottled
            SlowDown
            PriorRequestNotComplete
            EC2ThrottledException
          ]
        ).freeze

        NETWORK_ERRORS = Set.new(
          %w[
            RequestTimeout
            InternalError
            RequestTimeoutException
            IDPCommunicationError
          ]
        ).freeze

        def initialize(error, http_response)
          @error = error
          @http_response = http_response
          @name = extract_name(error)
        end

        def retryable?
          (modeled_retryable? ||
            throttling? ||
            transient? ||
            server? ||
            expired_creds?) &&
            # IO does not respond to #truncate and is not rewindable
            @http_response.body.respond_to?(:truncate)
        end

        def error_type
          if expired_creds?
            'ExpiredCreds'
          elsif transient?
            'Transient'
          elsif throttling?
            'Throttling'
          elsif server?
            'ServerError'
          elsif client?
            'ClientError'
          else
            'Unknown'
          end
        end

        def expired_creds?
          EXPIRED_CREDS.include?(@name) || @name.match?(/expired/i)
        end

        def hints
          hints = {}
          if (x_amz_retry_after = x_amz_retry_after_hint)
            hints[:x_amz_retry_after] = x_amz_retry_after
          end
          hints
        end

        private

        def transient?
          @error.is_a?(Smithy::Client::NetworkingError) || NETWORK_ERRORS.include?(@name)
        end

        def throttling?
          @http_response.status_code == 429 ||
            THROTTLING_ERRORS.include?(@name) ||
            @name.match?(/throttl/i) ||
            modeled_throttling?
        end

        def server?
          (500..599).cover?(@http_response.status_code)
        end

        def client?
          (400..499).cover?(@http_response.status_code)
        end

        def modeled_retryable?
          @error.is_a?(Smithy::Client::ServiceError) && @error.retryable?
        end

        def modeled_throttling?
          modeled_retryable? && @error.throttling?
        end

        def x_amz_retry_after_hint
          x_amz_retry_after = @http_response.headers['x-amz-retry-after']
          return unless x_amz_retry_after

          Integer(x_amz_retry_after) / 1000.0
        rescue ArgumentError
          nil
        end

        def extract_name(error)
          if error.is_a?(Smithy::Client::ServiceError)
            error.class.code || error.class.name.to_s
          else
            error.class.name.to_s
          end
        end
      end
    end
  end
end
