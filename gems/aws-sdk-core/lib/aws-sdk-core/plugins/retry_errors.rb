require 'set'
require_relative 'retries/error_inspector'
require_relative 'retries/retry_quota'
require_relative 'retries/client_rate_limiter'

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

      # END LEGACY OPTIONS

      option(
        :retry_mode,
        default: 'standard',
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

      # @api private undocumented
      option(:client_rate_limiter) { Retries::ClientRateLimiter.new }

      # @api private undocumented
      option(:retry_quota) { Retries::RetryQuota.new }

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

      class Handler < Seahorse::Client::Handler
        # Max backoff (in seconds)
        MAX_BACKOFF = 20

        def call(context)
          context.metadata[:retries] ||= {}
          config = context.config

          get_send_token(config)
          response = @handler.call(context)
          error_inspector = Retries::ErrorInspector.new(response.error, response.context.http_response.status_code)

          request_bookkeeping(context, response, error_inspector)
          return response unless retryable?(context, response, error_inspector)

          return response if context.retries >= config.max_attempts - 1

          context.metadata[:retries][:capacity_amount] = config.retry_quota.checkout_capacity(error_inspector)
          return response unless context.metadata[:retries][:capacity_amount] > 0

          delay = exponential_backoff(context.retries)
          Kernel.sleep(delay)
          retry_request(context, error_inspector)
        end

        private

        def get_send_token(config)
          # either fail fast or block until a token becomes available
          # must be configurable
          # need a maximum rate at which we can send requests (max_send_rate)
          # is unset until a throttle is seen
          if config.retry_mode == 'adaptive'
            config.client_rate_limiter.token_bucket_acquire(1)
          end
        end
        # maxsendrate is updated if on adaptive mode and based on response
        # retry quota is updated if the request is successful (both modes)
        def request_bookkeeping(context, response, error_inspector)
          config = context.config
          config.retry_quota.release(response.successful?, context.metadata[:retries][:capacity_amount])

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

        def exponential_backoff(retries)
          # for a transient error, use backoff
          [Kernel.rand * 2**retries, MAX_BACKOFF].min
        end

        def retry_request(context, error)
          context.retries += 1
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
          error_inspector = Retries::ErrorInspector.new(response.error, response.context.http_response.status_code)
          if should_retry?(context, error_inspector)
            retry_request(context, error_inspector)
          else
            response
          end
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
