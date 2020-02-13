require 'set'

module Aws
  module Plugins
    # @api private
    class RetryErrors < Seahorse::Client::Plugin
      EQUAL_JITTER = ->(delay) { (delay / 2) + Kernel.rand(0..(delay / 2)) }
      FULL_JITTER = ->(delay) { Kernel.rand(0..delay) }
      NO_JITTER = ->(delay) { delay }

      JITTERS = {
        none: NO_JITTER,
        equal: EQUAL_JITTER,
        full: FULL_JITTER
      }

      JITTERS.default_proc = lambda { |h, k|
        raise KeyError,
              "#{k} is not a named jitter function. Must be one of #{h.keys}"
      }

      DEFAULT_BACKOFF = lambda do |c|
        delay = 2**c.retries * c.config.retry_base_delay
        if (c.config.retry_max_delay || 0) > 0
          delay = [delay, c.config.retry_max_delay].min
        end
        jitter = c.config.retry_jitter
        jitter = JITTERS[jitter] if jitter.is_a?(Symbol)
        delay = jitter.call(delay) if jitter
        Kernel.sleep(delay)
      end

      option(
        :retry_limit,
        default: 3,
        doc_type: Integer,
        docstring: <<-DOCS)
The maximum number of times to retry failed requests.  Only
~ 500 level server errors and certain ~ 400 level client errors
are retried.  Generally, these are throttling errors, data
checksum errors, networking errors, timeout errors, auth errors,
endpoint discovery, and errors from expired credentials.
This option is only used in the `legacy` retry mode.
        DOCS

      option(
        :retry_max_delay,
        default: 0,
        doc_type: Integer,
        docstring: <<-DOCS)
The maximum number of seconds to delay between retries (0 for no limit)
used by the default backoff function. This option is only used in the
`legacy` retry mode.
        DOCS

      option(
        :retry_base_delay,
        default: 0.3,
        doc_type: Float,
        docstring: <<-DOCS)
The base delay in seconds used by the default backoff function. This option
is only used in the `legacy` retry mode.
        DOCS

      option(
        :retry_jitter,
        default: :none,
        doc_type: Symbol,
        docstring: <<-DOCS)
A delay randomiser function used by the default backoff function.
Some predefined functions can be referenced by name - :none, :equal, :full,
otherwise a Proc that takes and returns a number. This option is only used
in the `legacy` retry mode.

@see https://www.awsarchitectureblog.com/2015/03/backoff.html
        DOCS

      option(
        :retry_backoff,
        default: DEFAULT_BACKOFF,
        doc_type: Proc,
        docstring: <<-DOCS)
A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
This option is only used in the `legacy` retry mode.
        DOCS

      option(
        :retry_mode,
        default: 'legacy',
        doc_type: String,
        docstring: <<-DOCS) do |cfg|
Specifies which retry algorithm to use. Defaults to `legacy`
which uses exponential backoff for all retries. Other modes include
`standard` and `adaptive` which use a token bucket with variable backoff.
        DOCS
        resolve_retry_mode(cfg)
      end

      option(
        :max_attempts,
        default: 3,
        doc_type: Integer,
        docstring: <<-DOCS) do |cfg|
Specifies how many HTTP requests an SDK should make for a single
SDK operation invocation before giving up. Used in `standard` and
`adaptive` retry modes.
        DOCS
        resolve_max_attempts(cfg)
      end

      def self.resolve_retry_mode(cfg)
        value = ENV['AWS_RETRY_MODE'] ||
                Aws.shared_config.retry_mode(profile: cfg.profile) ||
                'legacy'
        # Raise if provided value is not one of the retry modes
        if value != 'legacy' && value != 'standard' && value != 'adaptive'
          raise ArgumentError,
                'Must provide either `legacy`, `standard`, or `adaptive` for '\
                'retry_mode profile option or for ENV[\'AWS_RETRY_MODE\']'
        end
        value
      end

      def self.resolve_max_attempts(cfg)
        value = ENV['AWS_MAX_ATTEMPTS'] ||
                Aws.shared_config.max_attempts(profile: cfg.profile) ||
                3
        # Raise if provided value is not a positive integer
        if !value.is_a?(Integer) || value <= 0
          raise ArgumentError,
                'Must provide a positive integer for max_attempts profile '\
                'option or for ENV[\'AWS_MAX_ATTEMPTS\']'
        end
        value
      end

      # @api private
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
          @name = extract_name(error)
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
            error.class.code
          else
            error.class.name.to_s
          end
        end
      end

      # @api private
      class RetryQuota
        INITIAL_RETRY_TOKENS = 500
        RETRY_COST = 5
        NO_RETRY_INCREMENT = 1
        TIMEOUT_RETRY_COST = 10

        def initialize
          @max_capacity       = INITIAL_RETRY_TOKENS
          @available_capacity = INITIAL_RETRY_TOKENS
          @capacity_amount    = nil
        end

        # Acquiring tokens from the retry quota
        # TODO: networking_error == Timeout?  consider aligning terms used....
        def retry_quota?(is_networking_error)
          @capacity_amount = if is_networking_error
                               TIMEOUT_RETRY_COST
                             else
                               RETRY_COST
                             end

          # unable to acquire capacity
          return false if @capacity_amount > @available_capacity

          @available_capacity -= @capacity_amount
          true
        end

        def release(is_response_successful)
          # capacity_amount refers to the amount of capacity requested from
          # the last retry.  It can either be RETRY_COST, TIMEOUT_RETRY_COST,
          # or unset.
          if is_response_successful
            @available_capacity += if @capacity_amount
                                     NO_RETRY_INCREMENT
                                   else
                                     @capacity_amount
                                   end
          end
        end
      end

      # @api private
      class ClientRateLimiting
        MIN_CAPACITY = 1
        MIN_FILL_RATE = 0.5
        SMOOTH = 0.8
        # How much to scale back after a throttling response
        BETA = 0.7
        # Controls how aggressively we scale up after being throttled
        SCALE_CONSTANT = 0.4

        def initialize
          @fill_rate            = nil
          @max_capacity         = nil
          @current_capacity     = 0
          @last_timestamp       = nil
          @enabled              = false
          @measured_tx_rate     = 0
          @last_tx_rate_bucket  = Aws::Util.monotonic_milliseconds / 1000
          @request_count        = 0
          @last_max_rate        = 0
          @last_throttle_time   = Aws::Util.monotonic_milliseconds / 1000.0
          @time_window          = 0
        end

        def token_bucket_acquire(amount)
          # Client side throttling is not enabled until we see a
          # throttling error
          return unless @enabled

          token_bucket_refill
          # Next see if we have enough capacity for the requested amount
          # TODO: Check config for blocking (instant fail)
          if amount > @current_capacity
            sleep((amount - @current_capacity / @fill_rate))
          end
          @current_capacity -= amount
        end

        def token_bucket_refill
          timestamp = Aws::Util.monotonic_milliseconds / 1000.0
          unless @last_timestamp
            @last_timestamp = timestamp
            return
          end

          fill_amount = (timestamp - @last_timestamp) * @fill_rate
          @current_capacity = [
            @max_capacity, @current_capacity + fill_amount
          ].min

          @last_timestamp = timestamp
        end

        def token_bucket_update_rate(new_rps)
          # Refill based on our current rate before we update to the
          # new fill rate
          token_bucket_refill
          @fill_rate = [new_rps, MIN_FILL_RATE].max
          @max_capacity = [new_rps, MIN_CAPACITY].max
          # When we scale down we can't have a current capacity that exceeds our
          # max_capacity.
          @current_capacity = [@current_capacity, @max_capacity].min
        end

        def enable_token_bucket
          @enabled = true
        end

        def update_measured_rate
          t = Aws::Util.monotonic_milliseconds / 1000.0
          time_bucket = (t * 2).floor / 2
          @request_count += 1
          if time_bucket > @last_tx_rate_bucket
            current_rate = @request_count / (time_bucket - @last_tx_rate_bucket)
            @measured_tx_rate = (current_rate * SMOOTH) +
                                (@measured_tx_rate * (1 - SMOOTH))
            @request_count = 0
            @last_tx_rate_bucket = time_bucket
          end
        end

        def update_client_sending_rate(is_throttling_error)
          update_measured_rate

          if is_throttling_error
            rate_to_use = if @enabled
                            [@measured_tx_rate, @fill_rate].min
                          else
                            @measured_tx_rate
                          end

            # The fill_rate is from the token bucket
            @last_max_rate = rate_to_use
            calculate_time_window
            @last_throttle_time = Aws::Util.monotonic_milliseconds / 1000.0
            calculated_rate = cubic_throttle(rate_to_use)
            enable_token_bucket
          else
            calculated_rate = cubic_success(Aws::Util.monotonic_milliseconds / 1000.0)
          end

          new_rate = [calculated_rate, 2 * @measured_tx_rate].min
          token_bucket_update_rate(new_rate)
        end

        def calculate_time_window
          # This is broken out into a separate calculation because it only
          # gets updated when @last_max_rate changes so it can be cached.
          @time_window = ((@last_max_rate * (1 - BETA)) / SCALE_CONSTANT)**(1.0/3)
        end

        def cubic_success(timestamp)
          dt = timestamp - @last_throttle_time
          (SCALE_CONSTANT * ((dt - @time_window)**3)) + @last_max_rate
        end

        def cubic_throttle(rate_to_use)
          rate_to_use * BETA
        end
      end

      class Handler < Seahorse::Client::Handler
        # Max backoff (in seconds)
        MAX_BACKOFF = 20

        def call(context)
          #############
          puts "erase me later"
          retry_mode = context.config.retry_mode
          max_attempts = context.config.max_attempts
          puts "retry mode: #{retry_mode}, max_attempts: #{max_attempts}"
          #############

          client_rate_limiter = context.metadata[:client_rate_limiter] ||= ClientRateLimiting.new
          retry_quota = context.metadata[:retry_quota] ||= RetryQuota.new

          get_send_token(client_rate_limiter, context.config.retry_mode)
          response = @handler.call(context)
          request_bookkeeping(response, retry_quota, client_rate_limiter, context.config.retry_mode)

          return response unless retryable?(response, context)

          context.retries += 1
          return response if context.retries >= context.config.max_attempts

          return response unless retry_quota?(response)

          delay = exponential_backoff(context.retries)
          sleep(delay)
          retry_request(context, error)
        end

        private

        def get_send_token(client_rate_limiter, retry_mode)
          # either fail fast or block until a token becomes available
          # must be configurable
          # need a maximum rate at which we can send requests (max_send_rate)
          # is unset until a throttle is seen
          if retry_mode == 'adaptive'
            client_rate_limiter.token_bucket_acquire(1)
          end
        end

        def request_bookkeeping(response, retry_quota, client_rate_limiter, retry_mode)
          # maxsendrate is updated if on adaptive mode and based on response
          # retry quota is updated if the request is successful (both modes)
          retry_quota.release(response.successful?)

          if retry_mode == 'adaptive'
            error = error_for(response)
            client_rate_limiter.update_client_sending_rate(error.throttling_error?)
          end
        end

        def retryable?(response, context)
          return false if response.successful?

          error = error_for(response)
          error.retryable?(context) &&
            context.http_response.body.respond_to?(:truncate)
        end

        def retry_quota?(retry_quota)
          # attempt to checkout a token from the retry quota bucket
          # if none available, don't retry
          retry_quota.retry_quota?
        end

        def exponential_backoff(retries)
          # for a transient error, use backoff
          [Kernel.rand(0..1) * 2**retries, MAX_BACKOFF].min
        end

        def error_for(response)
          status_code = response.context.http_response.status_code
          ErrorInspector.new(response.error, status_code)
        end

        def retry_request(context, error)
          context.config.credentials.refresh! if error.expired_credentials?
          context.http_request.body.rewind
          context.http_response.reset
          call(context)
        end
      end

      class LegacyHandler < Seahorse::Client::Handler

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
          error.retryable?(context) &&
            context.retries < retry_limit(context) &&
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
        if config.retry_mode == 'legacy'
          if config.retry_limit > 0
            handlers.add(LegacyHandler, step: :sign, priority: 99)
          end
        else
          handlers.add(Handler, step: :sign, priority: 99)
        end
      end
    end
  end
end
