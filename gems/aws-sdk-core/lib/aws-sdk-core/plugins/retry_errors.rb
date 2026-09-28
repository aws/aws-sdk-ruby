# frozen_string_literal: true

module Aws
  module Core
    module Plugins
      # @api private
      class RetryErrors < Smithy::Client::Plugin
        option(
          :retry_mode,
          default: 'standard',
          doc_type: String,
          docstring: <<~DOCS) do |cfg|
            Specifies which retry algorithm to use. Values are:

            * `standard` - A standardized set of retry rules across the AWS SDKs.
              This includes support for retry quotas, which limit the number of
              unsuccessful retries a client can make. This is the default
              value if no retry mode is provided.

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
            The maximum number attempts that will be made for a single request, including
            the initial attempt.
          DOCS
          resolve_max_attempts(cfg)
        end

        option(
          :adaptive_retry_wait_to_fill,
          default: true,
          doc_type: 'Boolean',
          docstring: <<~DOCS) do |cfg|
            When true, the request will sleep until there is sufficient client side capacity to retry
            the request. When false, the request will raise a `CapacityNotAvailableError` and will
            not retry instead of sleeping.
          DOCS
          resolve_adaptive_retry_wait_to_fill(cfg)
        end

        # TODO: Clock skew option & logic
        option(
          :retry_strategy,
          doc_type: 'Object',
          docstring: <<~DOCS)
            The retry strategy used by the client. If not provided, a default strategy is built
            based on `:retry_mode` — either `Standard` or `Adaptive`.

            A custom strategy must respond to:
            * `#acquire_initial_retry_token` - returns a token
            * `#refresh_retry_token(token, error_info)` - returns a token or nil
            * `#record_success(token)` - records a successful request
            * `#request_bookkeeping(error_info = nil)` - updates internal state
          DOCS

        REQUIRED_STRATEGY_METHODS = %i[
          acquire_initial_retry_token
          refresh_retry_token
          record_success
          request_bookkeeping
        ].freeze

        class << self
          def resolve_retry_mode(cfg)
            # TODO: Add smart defaults feature to V4
            default_mode_value =
              if cfg.respond_to?(:defaults_mode_config_resolver)
                cfg.defaults_mode_config_resolver.resolve(:retry_mode)
              end

            value = ENV['AWS_RETRY_MODE'] ||
                    Aws.shared_config.profiles.fetch(cfg.profile, {})['retry_mode'] ||
                    default_mode_value ||
                    'standard'
            value = value.to_s
            unless %w[standard adaptive].include?(value)
              raise ArgumentError,
                    "Must provide either 'standard' or 'adaptive' for " \
                    "retry_mode profile option or for ENV['AWS_RETRY_MODE']"
            end
            value
          end

          def resolve_max_attempts(cfg)
            value = ENV.fetch('AWS_MAX_ATTEMPTS', nil) ||
                    Aws.shared_config.profiles.fetch(cfg.profile, {})['max_attempts'] ||
                    3
            value = value.to_i
            if value <= 0
              raise ArgumentError,
                    'Must provide a positive integer for max_attempts profile ' \
                    'option or for ENV[\'AWS_MAX_ATTEMPTS\']'
            end
            value
          end

          def resolve_adaptive_retry_wait_to_fill(cfg) # rubocop:disable Naming/PredicateMethod
            value = ENV['AWS_ADAPTIVE_RETRY_WAIT_TO_FILL'] ||
                    Aws.shared_config.profiles.fetch(cfg.profile, {})['adaptive_retry_wait_to_fill'] ||
                    'true'
            unless %w[true false].include?(value)
              raise ArgumentError,
                    'Must provide either `true` or `false` for ' \
                    'adaptive_retry_wait_to_fill profile option or for ' \
                    'ENV[\'AWS_ADAPTIVE_RETRY_WAIT_TO_FILL\']'
            end
            value == 'true'
          end
        end

        def after_initialize(client)
          config = client.config
          if config.retry_strategy
            validate_strategy(config.retry_strategy)
          else
            config.retry_strategy = build_strategy(config)
          end
        end

        private

        def validate_strategy(strategy)
          missing = REQUIRED_STRATEGY_METHODS.reject { |m| strategy.respond_to?(m) }
          return if missing.empty?

          raise ArgumentError, "Custom retry_strategy must respond to: #{missing.join(', ')}"
        end

        def build_strategy(config)
          # Service-specific non-throttle retry scalar override.
          opts = { max_attempts: config.max_attempts }
          opts[:non_throttle_scalar] = config.retry_backoff_scalar if config.respond_to?(:retry_backoff_scalar)

          case config.retry_mode
          when 'standard'
            Aws::Core::Retry::Standard.new(**opts)
          when 'adaptive'
            Aws::Core::Retry::Adaptive.new(
              **opts,
              wait_to_fill: config.adaptive_retry_wait_to_fill
            )
          else
            raise ArgumentError, "Must provide either 'standard' or 'adaptive' for retry_mode"
          end
        end

        # @api private
        class Handler < Smithy::Client::Handler
          # TODO: remove once longPoll trait is added to models
          # Hard-coded combination of services and operations as having the
          # longPoll trait. To be removed when trait is enabled.
          LONG_POLLING_OPERATIONS = {
            'SQS' => Set[:receive_message],
            'SFN' => Set[:get_activity_task],
            'SWF' => Set[:poll_for_activity_task, :poll_for_decision_task]
          }.freeze

          def call(context)
            retry_strategy = context.config.retry_strategy
            token = retry_strategy.acquire_initial_retry_token(nil)
            handle(context, retry_strategy, token)
          end

          private

          def handle(context, retry_strategy, token)
            add_retry_headers(context)
            response = track_feature(retry_strategy) { @handler.call(context) }
            error_info = Aws::Core::Http::ErrorInspector.new(response.error, context.http_response) if response.error
            retry_strategy.request_bookkeeping(error_info)

            unless response.error
              retry_strategy.record_success(token)
              return response
            end
            return response unless retryable?(context.http_request)

            token = handle_error(context, retry_strategy, token, error_info)
            return response unless token

            retry_request(context, response, retry_strategy, token)
          end

          def handle_error(context, retry_strategy, token, error_info)
            token = retry_strategy.refresh_retry_token(token, error_info)
            return unless token

            if token.no_retry_reason == :quota_exhausted
              Kernel.sleep(token.retry_delay) if long_polling_operation?(context)
              return
            end

            Kernel.sleep(token.retry_delay)
            context.auth.identity_provider.refresh! if refresh_credentials?(context, error_info)
            token
          end

          def retry_request(context, response, retry_strategy, token)
            reset_request(context)
            reset_response(context, response)
            context.retries += 1
            handle(context, retry_strategy, token)
          end

          def add_retry_headers(context)
            request_pairs = {
              'attempt' => context.retries + 1,
              'max' => context.config.max_attempts
            }

            # TODO: Add TTL with estimated skew cached per endpoint that persists between SDK invocations
            #       along with clock skew correction, after clock skew SEP finalizes.
            formatted_header = request_pairs.map { |k, v| "#{k}=#{v}" }.join('; ')
            context.http_request.headers['amz-sdk-request'] = formatted_header
          end

          def refresh_credentials?(context, error_info)
            error_info.expired_creds? &&
              context.auth.identity_provider.respond_to?(:refresh!)
          end

          def retryable?(request)
            # IO responds to #rewind however it returns an illegal seek error
            request.body.respond_to?(:rewind) && !request.body.instance_of?(IO)
          end

          def reset_request(context)
            context.http_request.body.rewind
          end

          def reset_response(context, response)
            context.http_response.reset
            response.error = nil
          end

          def long_polling_operation?(context)
            return true if SCHEMA_EXTENSION.long_polling?(context.operation)

            # Hard-coded failback until the trait is enabled
            service_id = Extension.service_id(context.config.service)
            LONG_POLLING_OPERATIONS[service_id]&.include?(context.operation_name)
          end

          def track_feature(retry_strategy, &block)
            case retry_strategy
            when Smithy::Client::Retry::Standard then Smithy::Client::Features.track('RETRY_MODE_STANDARD', &block)
            when Smithy::Client::Retry::Adaptive then Smithy::Client::Features.track('RETRY_MODE_ADAPTIVE', &block)
            else block.call
            end
          end
        end

        handler(Handler, step: :retry)
      end
    end
  end
end
