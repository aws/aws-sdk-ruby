require 'set'

module Aws
  module Plugins

    # @seahorse.client.option [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    # @seahorse.client.option [Number] : retry_max_delay (20)
    #   The maximum number of seconds to delay between retries for capped backoff strategies
    # @seahorse.client.option [Number] : retry_base_delay (0.3)
    #   The base delay in seconds for exponential backoff functions - all are based on ((2 ** attempt) * retry_base_delay))
    class RetryErrors < Seahorse::Client::Plugin

      # Sources
      # http://docs.aws.amazon.com/general/latest/gr/api-retries.html
      # https://www.awsarchitectureblog.com/2015/03/backoff.html
      #
      # Java SDK
      #    https://github.com/aws/aws-sdk-java/blob/master/aws-java-sdk-core/src/main/java/com/amazonaws/retry/PredefinedBackoffStrategies.java
      #    20s max delay. Equal Jitter for throttled events, full jitter for everything else, max retries defaults to 30!
      #
      # NodeJS SDK
      #    https://github.com/aws/aws-sdk-js/blob/d0aa9db29be01cd909eec4780dffb9d182cde5e4/lib/util.js#L822
      #    Default Full Jitter 3 retries, 100ms base, no cap
      #

      # Original uncapped, exponential backoff
      EXPONENTIAL_BACKOFF = lambda { |c| Kernel.sleep(2 ** c.retries * c.config.retry_base_delay) }

      # Exponential backoff capped to :max_delay
      CAPPED_BACKOFF = lambda { |c| Kernel.sleep([c.config.retry_max_delay, (2 ** c.retries * c.config.retry_base_delay)].min) }

      # Retain at least half of the capped backoff, + random the other half.
      EQUAL_JITTER_BACKOFF = lambda { |c| delay = ([c.config.retry_max_delay, (2 ** c.retries * c.config.retry_base_delay)].min)/2.0 ; Kernel.sleep((delay + Kernel.rand(0..delay))) }

      # Full Jitter, random between no delay and the capped exponential backoff
      FULL_JITTER_BACKOFF = lambda { |c| Kernel.sleep(Kernel.rand(0..[c.config.retry_max_delay,(2 ** c.retries * c.config.retry_base_delay)].min))}

      DEFAULT_BACKOFF = EXPONENTIAL_BACKOFF  # EQUAL_JITTER might be a better default option

      option(:retry_limit, 3)
      option(:retry_max_delay,20) # same as the java sdk, caps exponential backoff after 6 retries.
      option(:retry_base_delay,0.3)
      option(:retry_backoff, DEFAULT_BACKOFF)


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
          'LimitExceededException',                 # kinesis
        ])

        CHECKSUM_ERRORS = Set.new([
          'CRC32CheckFailed', # dynamodb
        ])

        NETWORKING_ERRORS = Set.new([
          'RequestTimeout', # s3
        ])

        def initialize(error, http_status_code)
          @error = error
          @name = extract_name(error)
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
          @error.is_a?(Seahorse::Client::NetworkingError) ||
          NETWORKING_ERRORS.include?(@name)
        end

        def server?
          (500..599).include?(@http_status_code)
        end

        private

        def extract_name(error)
          if error.is_a?(Errors::ServiceError)
            error.class.code
          else
            error.class.name.to_s
          end
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
          context = response.context
          error = error_for(response)
          if should_retry?(context, error)
            retry_request(context, error)
          else
            response
          end
        end

        def error_for(response)
          status_code = response.context.http_response.status_code
          ErrorInspector.new(response.error, status_code)
        end

        def retry_request(context, error)
          delay_retry(context)
          context.retries += 1
          context.config.credentials.refresh! if error.expired_credentials?
          context.http_request.body.rewind
          context.http_response.reset
          call(context)
        end

        def delay_retry(context)
          context.config.retry_backoff.call(context)
        end

        def should_retry?(context, error)
          retryable?(context, error) and
          context.retries < retry_limit(context) and
          response_truncatable?(context)
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

        def retry_limit(context)
          context.config.retry_limit
        end

        def response_truncatable?(context)
          context.http_response.body.respond_to?(:truncate)
        end

      end

      def add_handlers(handlers, config)
        if config.retry_limit > 0
          handlers.add(Handler, step: :sign, priority: 99)
        end
      end

    end
  end
end
