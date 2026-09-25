# frozen_string_literal: true

module Aws
  # Implements the statically stable refresh lifecycle: caching,
  # an advisory and a mandatory refresh window, rate-limited backoff on
  # failure, static stability (continue using cached credentials when a
  # refresh fails), and short-lived caching of non-recoverable errors.
  #
  # Classes mixing in this module must implement `#refresh`, which fetches
  # from the source and assigns `@credentials` and `@expiration` on success,
  # or raises on failure. It must not partially update those on failure.
  #
  # Before calling `super`, classes may set `@static_stability` to false for
  # caching-only behavior. Classes may override `#non_recoverable_error?` to
  # classify provider errors that should be raised immediately rather than
  # retried.
  module ResilientRefreshingCredentials
    MANDATORY_REFRESH_WINDOW = 60 # 1 minute

    CLIENT_EXCLUDE_OPTIONS = Set.new([:before_refresh]).freeze

    # @api private
    # Signals a credential source response whose Expiration is at or before
    # the current time.
    class StaleCredentialsError < RuntimeError
      def initialize(*_args)
        super('the credential source returned credentials that are already expired')
      end
    end

    # @param [Hash] options
    # @option options [Proc] :before_refresh A Proc called before credentials are refreshed.
    #   It accepts `self` as the only argument.
    def initialize(options = {})
      @mutex = Mutex.new
      if options.is_a?(Hash)
        @before_refresh = options.delete(:before_refresh)
        @configured_advisory_window = options.delete(:advisory_refresh_window)
      end
      # mandatory refresh window must not exceed the advisory window
      if @configured_advisory_window && @configured_advisory_window < MANDATORY_REFRESH_WINDOW
        raise ArgumentError,
              "advisory_refresh_window (#{@configured_advisory_window}) must be at least " \
              "the mandatory refresh window (#{MANDATORY_REFRESH_WINDOW} seconds)"
      end
      @static_stability = true if @static_stability.nil?
      @next_refresh_allowed_at = nil
      @cached_error = nil
      @cached_error_expires_at = nil
      @advisory_window = nil
      fetch_initial_credentials
    end

    attr_reader :advisory_window

    # @return [Credentials]
    def credentials
      get_credentials
      @credentials
    end

    # Force a synchronous refresh, raising on failure. Does not apply static
    # stability or backoff.
    # @return [void]
    def refresh!
      @mutex.synchronize do
        @before_refresh&.call(self)
        refresh
      end
    end

    # Mark cached credentials for refresh after a target service rejects them
    def invalidate(rejected_credentials)
      return unless @mutex.try_lock

      begin
        if @credentials && @credentials.access_key_id == rejected_credentials.access_key_id
          @expiration = Time.now
        end
      ensure
        @mutex.unlock
      end
    end

    def rate_limited?
      !@next_refresh_allowed_at.nil? && Time.now < @next_refresh_allowed_at
    end

    private

    def get_credentials
      return fetch_initial_credentials if @credentials.nil?
      return unless refresh_needed?
      return if rate_limited?

      if mandatory_refresh_needed?
        attempt_mandatory_refresh
      else
        attempt_advisory_refresh
      end
    end

    def fetch_initial_credentials
      @mutex.synchronize do
        return @credentials unless @credentials.nil?
        raise @cached_error if non_recoverable_error_cached?

        error = call_source
        if error.nil?
          on_refresh_success
          return @credentials
        end

        if non_recoverable_error?(error)
          cache_non_recoverable_error(error)
          raise error
        end
        raise Errors::MissingCredentialsError
      end
    end

    def attempt_advisory_refresh
      # Non-blocking: if another caller holds the lock it is already
      # refreshing, so return the cached credentials rather than waiting.
      return @credentials unless @mutex.try_lock

      begin
        perform_refresh(mandatory: false, raise_to_caller: true)
      ensure
        @mutex.unlock
      end
    end

    def attempt_mandatory_refresh
      @mutex.synchronize do
        perform_refresh(mandatory: true, raise_to_caller: true)
      end
    end

    def perform_refresh(mandatory:, raise_to_caller:)
      return @credentials unless mandatory ? mandatory_refresh_needed? : refresh_needed?

      if non_recoverable_error_cached?
        raise @cached_error if raise_to_caller

        return @credentials
      end
      return @credentials if rate_limited?

      error = call_source
      if error.nil?
        on_refresh_success
        return @credentials
      end

      handle_failure(error, raise_to_caller: raise_to_caller)
    end

    # Calls the source via #refresh. Returns nil on success, or restores
    # prior credentials and returns error on failure so a failed or stale
    # refresh never discards the cached credentials.
    def call_source
      prior = [@credentials, @expiration]
      @before_refresh&.call(self)
      refresh
      if !@expiration.nil? && @expiration <= Time.now
        @credentials, @expiration = prior
        return StaleCredentialsError.new
      end
      nil
    rescue StandardError => e
      @credentials, @expiration = prior
      e
    end

    def handle_failure(error, raise_to_caller:)
      if non_recoverable_error?(error)
        cache_non_recoverable_error(error)
        raise error if raise_to_caller

        return @credentials
      end

      raise error if mandatory_refresh_needed? && !@static_stability

      @next_refresh_allowed_at = Time.now + refresh_backoff
      log_refresh_failure(error)
      @credentials
    end

    def on_refresh_success
      @next_refresh_allowed_at = nil
      @cached_error = nil
      @cached_error_expires_at = nil
      @advisory_window = select_advisory_window
    end

    def refresh_needed?
      within?(@advisory_window || select_advisory_window)
    end

    def mandatory_refresh_needed?
      within?(MANDATORY_REFRESH_WINDOW)
    end

    def within?(seconds)
      return false unless @expiration

      Time.now + seconds > @expiration
    end

    def select_advisory_window
      return @configured_advisory_window if @configured_advisory_window
      return 60 * 60 unless @expiration

      lifetime = @expiration - Time.now
      return 5 * 60 if lifetime <= 20 * 60
      return 15 * 60 if lifetime < 90 * 60

      60 * 60
    end

    def non_recoverable_error_cached?
      !@cached_error.nil? && Time.now < @cached_error_expires_at
    end

    def refresh_backoff
      rand(300..600)
    end

    def cache_non_recoverable_error(error)
      @cached_error = error
      @cached_error_expires_at = Time.now + rand(1..5)
    end

    def non_recoverable_error?(_error)
      false
    end

    def log_refresh_failure(error)
      seconds = (@next_refresh_allowed_at - Time.now).round
      warn(
        "Credential refresh failed: #{error.message}. The SDK will continue " \
        'using cached credentials. A refresh of these credentials will be ' \
        "attempted again after #{seconds} seconds."
      )
    end
  end
end
