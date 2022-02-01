# frozen_string_literal: true

require 'thread'

module Aws

  # Base class used credential classes that can be refreshed. This
  # provides basic refresh logic in a thread-safe manner. Classes mixing in
  # this module are expected to implement a #refresh method that populates
  # the following instance variables:
  #
  # * `@access_key_id`
  # * `@secret_access_key`
  # * `@session_token`
  # * `@expiration`
  #
  # @api private
  module RefreshingCredentials

    def initialize(options = {})
      @mutex = Mutex.new
      refresh
    end

    # @return [Credentials]
    def credentials
      refresh_if_near_expiration
      @credentials
    end

    # @return [Time,nil]
    def expiration
      refresh_if_near_expiration
      @expiration
    end

    # Refresh credentials.
    # @return [void]
    def refresh!
      @mutex.synchronize { refresh }
    end

    private

    # Refreshes instance metadata credentials if they are within
    # 5 minutes of expiration.
    def refresh_if_near_expiration
      Thread.new do
        # Note: This check is an optimization. Rather than acquire the mutex on every #refresh_if_near_expiration
        # call, we check before doing so, and then we check within the mutex to avoid a race condition.
        if near_expiration?
          @mutex.synchronize do
            refresh if near_expiration?
          end
        end
      end
    end

    def near_expiration?
      if @expiration
        # are we within 5 minutes of expiration?
        (Time.now.to_i + 300) > @expiration.to_i
      else
        true
      end
    end

  end
end
