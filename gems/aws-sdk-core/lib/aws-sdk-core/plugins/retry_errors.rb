# frozen_string_literal: true

require 'set'
require_relative 'retries/error_inspector'
require_relative 'retries/retry_quota'
require_relative 'retries/client_rate_limiter'
require_relative 'retries/clock_skew'

module Aws
  module Plugins
    # @api private
    class RetryErrors < Seahorse::Client::Plugin
      # BEGIN LEGACY OPTIONS
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
        docstring: <<~DOCS)
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
        docstring: <<~DOCS)
          The maximum number of seconds to delay between retries (0 for no limit)
          used by the default backoff function. This option is only used in the
          `legacy` retry mode.
        DOCS

      option(
        :retry_base_delay,
        default: 0.3,
        doc_type: Float,
        docstring: <<~DOCS)
          The base delay in seconds used by the default backoff function. This option
          is only used in the `legacy` retry mode.
        DOCS

      option(
        :retry_jitter,
        default: :none,
        doc_type: Symbol,
        rbs_type: '(:none | :equal | :full | ^(Integer) -> Integer)',
        docstring: <<~DOCS)
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
        docstring: <<~DOCS)
          A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
          This option is only used in the `legacy` retry mode.
        DOCS

      # END LEGACY OPTIONS

      option(
        :retry_mode,
        default: 'legacy', # TODO: Change to 'standard' when new retries become default
        doc_type: String,
        rbs_type: '("legacy" | "standard" | "adaptive")',
        docstring: <<~DOCS) do |cfg|
          Specifies which retry algorithm to use. Values are:

          * `legacy` - The pre-existing retry behavior. This is the default
            value if no retry mode is provided.

          * `standard` - A standardized set of retry rules across the AWS SDKs.
            This includes support for retry quotas, which limit the number of
            unsuccessful retries a client can make.

          * `adaptive` - A retry mode that includes all the functionality of
            `standard` mode along with automatic client side throttling.
        DOCS
        resolve_retry_mode(cfg)
      end

      option(
        :max_attempts,
        default: 3,
        doc_type: Integer,
        docstring: <<~DOCS) do |cfg|
          An integer representing the maximum number attempts that will be made for
          a single request, including the initial attempt.  For example,
          setting this value to 5 will result in a request being retried up to
          4 times. Used in `standard` and `adaptive` retry modes.
        DOCS
        resolve_max_attempts(cfg)
      end

      option(
        :adaptive_retry_wait_to_fill,
        default: true,
        doc_type: 'Boolean',
        docstring: <<~DOCS) do |cfg|
          Used only in `adaptive` retry mode.  When true, the request will sleep
          until there is sufficent client side capacity to retry the request.
          When false, the request will raise a `RetryCapacityNotAvailableError` and will
          not retry instead of sleeping.
        DOCS
        resolve_adaptive_retry_wait_to_fill(cfg)
      end

      option(
        :correct_clock_skew,
        default: true,
        doc_type: 'Boolean',
        docstring: <<~DOCS) do |cfg|
          Used only in `standard` and `adaptive` retry modes. Specifies whether to apply
          a clock skew correction and retry requests with skewed client clocks.
        DOCS
        resolve_correct_clock_skew(cfg)
      end

      # @api private undocumented
      option(:client_rate_limiter) { Retries::ClientRateLimiter.new }

      # @api private undocumented
      option(:retry_quota) { Retries::RetryQuota.new }

      # @api private undocumented
      option(:clock_skew) { Retries::ClockSkew.new }

      DYNAMODB_SERVICES = Set['DynamoDB', 'DynamoDB Streams'].freeze

      class << self
        # TODO: Remove this gate and hardcode new retry behavior once
        # AWS_NEW_RETRIES_2026 is enabled by default, which includes:
        # - Default retry_mode to 'standard'
        # - Default max_attempts to 4 for DynamoDB
        # - Remove the old retries branch in Handler#call
        # - Remove the old retries branch in #exponential_backoff
        # - Remove LEGACY_RETRY_COST and TIMEOUT_RETRY_COST from RetryQuota
        def new_retries?
          ENV.fetch('AWS_NEW_RETRIES_2026', 'false').downcase == 'true'
        end

        def resolve_retry_mode(cfg)
          default_mode_value =
            if cfg.respond_to?(:defaults_mode_config_resolver)
              cfg.defaults_mode_config_resolver.resolve(:retry_mode)
            end

          value = ENV['AWS_RETRY_MODE'] ||
                  Aws.shared_config.retry_mode(profile: cfg.profile) ||
                  default_mode_value ||
                  (new_retries? ? 'standard' : 'legacy') # TODO: default to 'standard' when new retries become default
          # Raise if provided value is not one of the retry modes
          if value != 'legacy' && value != 'standard' && value != 'adaptive'
            raise ArgumentError,
                  'Must provide either `legacy`, `standard`, or `adaptive` for '\
                    'retry_mode profile option or for ENV[\'AWS_RETRY_MODE\']'
          end
          value
        end

        def resolve_max_attempts(cfg)
          value = (ENV['AWS_MAX_ATTEMPTS']) ||
                  Aws.shared_config.max_attempts(profile: cfg.profile)
          if value
            value = value.to_i
            # Raise if provided value is not a positive integer
            if value <= 0
              raise ArgumentError,
                    'Must provide a positive integer for max_attempts profile '\
                      'option or for ENV[\'AWS_MAX_ATTEMPTS\']'
            end
            return value
          end

          default_max_attempts(cfg)
        end

        def default_max_attempts(cfg)
          # TODO: Remove gate and keep only the new retries branch
          return 3 unless new_retries?

          service_id = cfg.api.metadata['serviceId'] if cfg.respond_to?(:api)
          DYNAMODB_SERVICES.include?(service_id) ? 4 : 3
        end

        def resolve_adaptive_retry_wait_to_fill(cfg)
          value = ENV['AWS_ADAPTIVE_RETRY_WAIT_TO_FILL'] ||
                  Aws.shared_config.adaptive_retry_wait_to_fill(profile: cfg.profile) ||
                  'true'
          # Raise if provided value is not true or false
          if value != 'true' && value != 'false'
            raise ArgumentError,
                  'Must provide either `true` or `false` for '\
                    'adaptive_retry_wait_to_fill profile option or for '\
                    'ENV[\'AWS_ADAPTIVE_RETRY_WAIT_TO_FILL\']'
          end
          value == 'true'
        end

        def resolve_correct_clock_skew(cfg)
          value = ENV['AWS_CORRECT_CLOCK_SKEW'] ||
                  Aws.shared_config.correct_clock_skew(profile: cfg.profile) ||
                  'true'
          # Raise if provided value is not true or false
          if value != 'true' && value != 'false'
            raise ArgumentError,
                  'Must provide either `true` or `false` for '\
                    'correct_clock_skew profile option or for '\
                    'ENV[\'AWS_CORRECT_CLOCK_SKEW\']'
          end
          value == 'true'
        end
      end

      class Handler < Seahorse::Client::Handler
        # Max backoff (in seconds)
        MAX_BACKOFF = 20

        # TODO: remove once longPoll trait is added to models
        # Hard-coded combination of services and operations as having the
        # longPoll trait. To be removed when trait is enabled.
        LONG_POLLING_OPERATIONS = {
          'SQS' => Set[:receive_message],
          'SFN' => Set[:get_activity_task],
          'SWF' => Set[:poll_for_activity_task, :poll_for_decision_task]
        }.freeze

        def call(context)
          context.metadata[:retries] ||= {}
          config = context.config

          get_send_token(config)
          add_retry_headers(context)
          response = with_metric(config.retry_mode) { @handler.call(context) }
          error_inspector = Retries::ErrorInspector.new(
            response.error, response.context.http_response.status_code
          )

          request_bookkeeping(context, response, error_inspector)

          if error_inspector.endpoint_discovery?(context)
            key = config.endpoint_cache.extract_key(context)
            config.endpoint_cache.delete(key)
          end

          # Clock correction needs to be updated from the response even when
          # the request is not retryable but should only be updated
          # in the case of clock skew errors
          if error_inspector.clock_skew?(context)
            config.clock_skew.update_clock_correction(context)
          end

          # Estimated skew needs to be updated on every request
          config.clock_skew.update_estimated_skew(context)

          return response unless retryable?(context, response, error_inspector)

          return response if context.retries >= config.max_attempts - 1

          capacity_amount = config.retry_quota.checkout_capacity(error_inspector)
          context.metadata[:retries][:capacity_amount] = capacity_amount

          # TODO: Remove gate and keep only the new retries branch
          if new_retries?
            return response if capacity_amount <= 0 && !long_polling_operation?(context)

            service_id = context.config.api.metadata['serviceId']
            delay = backoff(context, error_inspector, service_id)
            Kernel.sleep(delay)

            return response if capacity_amount <= 0
          else
            return response unless capacity_amount > 0

            delay = exponential_backoff(context.retries)
            Kernel.sleep(delay)
          end

          retry_request(context, error_inspector)
        end

        private

        def new_retries?
          RetryErrors.new_retries?
        end

        def with_metric(retry_mode, &block)
          Aws::Plugins::UserAgent.metric("RETRY_MODE_#{retry_mode.upcase}", &block)
        end

        def get_send_token(config)
          # either fail fast or block until a token becomes available
          # must be configurable
          # need a maximum rate at which we can send requests (max_send_rate)
          # is unset until a throttle is seen
          if config.retry_mode == 'adaptive'
            config.client_rate_limiter.token_bucket_acquire(
              1,
              config.adaptive_retry_wait_to_fill
            )
          end
        end

        # maxsendrate is updated if on adaptive mode and based on response
        # retry quota is updated if the request is successful (both modes)
        def request_bookkeeping(context, response, error_inspector)
          config = context.config
          if response.successful?
            config.retry_quota.release(
              context.metadata[:retries][:capacity_amount]
            )
          end

          if config.retry_mode == 'adaptive'
            is_throttling_error = error_inspector.throttling_error?
            config.client_rate_limiter.update_sending_rate(is_throttling_error)
          end
        end

        def retryable?(context, response, error_inspector)
          return false if response.successful?

          error_inspector.retryable?(context) &&
            context.http_response.body.respond_to?(:truncate)
        end

        def long_polling_operation?(context)
          return true if context.operation['longPoll']

          # Hard-coded failback until the trait is enabled
          service_id = context.config.api.metadata['serviceId']
          LONG_POLLING_OPERATIONS[service_id]&.include?(context.operation_name)
        end

        def backoff(context, error_inspector, service_id)
          exp_backoff = exponential_backoff(context.retries, error_inspector, service_id)
          retry_after = parse_retry_after(context)
          return exp_backoff unless retry_after

          backoff_duration = [retry_after, exp_backoff].max
          [backoff_duration, exp_backoff + 5].min
        end

        # TODO: Remove gate, remove default nil params, keep only new retries branch
        def exponential_backoff(retries, error_inspector = nil, service_id = nil)
          if new_retries?
            backoff_scalar = if error_inspector.throttling_error?
                               1
                             elsif DYNAMODB_SERVICES.include?(service_id)
                               0.025
                             else
                               0.05
                             end
            Kernel.rand * [backoff_scalar * 2**retries, MAX_BACKOFF].min
          else
            [Kernel.rand * 2**retries, MAX_BACKOFF].min
          end
        end

        def parse_retry_after(context)
          retry_after = context.http_response.headers['x-amz-retry-after']
          return unless retry_after

          unless retry_after.match?(/\A\d+\z/)
            context.config.logger&.debug(
              "Failed to parse x-amz-retry-after header value: #{retry_after.inspect}"
            )
            return
          end

          retry_after.to_i / 1000.0
        end

        def retry_request(context, error)
          context.retries += 1
          context.config.credentials.refresh! if refresh_credentials?(context, error)
          context.http_request.body.rewind
          context.http_response.reset
          call(context)
        end

        def refresh_credentials?(context, error)
          error.expired_credentials? &&
            context.config.credentials.respond_to?(:refresh!)
        end

        def add_retry_headers(context)
          request_pairs = {
            'attempt' => context.retries + 1,
            'max' => context.config.max_attempts
          }
          if (ttl = compute_request_ttl(context))
            request_pairs['ttl'] = ttl
          end

          # create the request header
          formatted_header = request_pairs.map { |k, v| "#{k}=#{v}" }.join('; ')
          context.http_request.headers['amz-sdk-request'] = formatted_header
        end

        def compute_request_ttl(context)
          return if context.operation.async

          endpoint = context.http_request.endpoint
          estimated_skew = context.config.clock_skew.estimated_skew(endpoint)
          if context.config.respond_to?(:http_read_timeout)
            read_timeout = context.config.http_read_timeout
          end

          if estimated_skew && read_timeout
            (Time.now.utc + read_timeout + estimated_skew)
              .strftime('%Y%m%dT%H%M%SZ')
          end
        end
      end

      class LegacyHandler < Seahorse::Client::Handler

        def call(context)
          response = with_metric { @handler.call(context) }
          if response.error
            error_inspector = Retries::ErrorInspector.new(
              response.error, response.context.http_response.status_code
            )

            if error_inspector.endpoint_discovery?(context)
              key = context.config.endpoint_cache.extract_key(context)
              context.config.endpoint_cache.delete(key)
            end

            retry_if_possible(response, error_inspector)
          else
            response
          end
        end

        private

        def with_metric(&block)
          Aws::Plugins::UserAgent.metric('RETRY_MODE_LEGACY', &block)
        end

        def retry_if_possible(response, error_inspector)
          context = response.context
          if should_retry?(context, error_inspector)
            retry_request(context, error_inspector)
          else
            response
          end
        end

        def retry_request(context, error)
          delay_retry(context)
          context.retries += 1
          context.config.credentials.refresh! if refresh_credentials?(context, error)
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

        def refresh_credentials?(context, error)
          error.expired_credentials? &&
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
