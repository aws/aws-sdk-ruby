require 'set'

module Aws
  module Plugins
    # @api private
    class RetryErrors < Seahorse::Client::Plugin

      EQUAL_JITTER = lambda { |delay| (delay / 2) + Kernel.rand(0..(delay/2))}
      FULL_JITTER= lambda { |delay| Kernel.rand(0..delay) }
      NO_JITTER = lambda { |delay| delay }

      JITTERS = {
        none: NO_JITTER,
        equal: EQUAL_JITTER,
        full: FULL_JITTER
      }

      JITTERS.default_proc = lambda { |h,k|
        raise KeyError, "#{k} is not a named jitter function. Must be one of #{h.keys}"
      }

      DEFAULT_BACKOFF = lambda do |c|
        delay = 2 ** c.retries * c.config.retry_base_delay
        delay = [delay, c.config.retry_max_delay].min if (c.config.retry_max_delay || 0) > 0
        jitter = c.config.retry_jitter
        jitter = JITTERS[jitter] if Symbol === jitter
        delay = jitter.call(delay) if jitter
        Kernel.sleep(delay)
      end

      option(:retry_limit,
        default: 3,
        doc_type: Integer,
        docstring: <<-DOCS)
The maximum number of times to retry failed requests.  Only
~ 500 level server errors and certain ~ 400 level client errors
are retried.  Generally, these are throttling errors, data
checksum errors, networking errors, timeout errors and auth
errors from expired credentials.
        DOCS

      option(:retry_max_delay,
        default: 0,
        doc_type: Integer,
        docstring: <<-DOCS)
The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
        DOCS

      option(:retry_base_delay,
        default: 0.3,
        doc_type: Float,
        docstring: <<-DOCS)
The base delay in seconds used by the default backoff function.
        DOCS

      option(:retry_jitter,
        default: :none,
        doc_type: Symbol,
        docstring: <<-DOCS)
A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.

@see https://www.awsarchitectureblog.com/2015/03/backoff.html
        DOCS

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
          'RequestThrottledException',
          'ProvisionedThroughputExceededException', # dynamodb
          'TransactionInProgressException',         # dynamodb
          'RequestLimitExceeded',                   # ec2
          'BandwidthLimitExceeded',                 # cloud search
          'LimitExceededException',                 # kinesis
          'TooManyRequestsException',               # batch
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
          !!(THROTTLING_ERRORS.include?(@name) || @name.match(/throttl/i) || @http_status_code == 429)
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
          
        def retryable?(context)
          (expired_credentials? and refreshable_credentials?(context)) or
            throttling_error? or
            checksum? or
            networking? or
            server? or
            endpoint_discovery?(context)
        end

        private

        def refreshable_credentials?(context)
          context.config.credentials.respond_to?(:refresh!)
        end

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
          error.retryable?(context) and
          context.retries < retry_limit(context) and
          response_truncatable?(context)
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
