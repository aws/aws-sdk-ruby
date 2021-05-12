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
      # This option is exposed through public APIs, if the default value is
      # changed, we should update the public documentation
      @credential_expiration_buffer =
        (options.is_a?(Hash) && options[:credential_expiration_buffer]) || (5 * 60)
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
    # the configured amount of time to expiration.
    def refresh_if_near_expiration
      if near_expiration?
        @mutex.synchronize do
          refresh if near_expiration?
        end
      end
    end

    def near_expiration?
      if @expiration
        # do we have the required buffer before expiration?
        (Time.now.to_i + @credential_expiration_buffer) > @expiration.to_i
      else
        true
      end
    end

  end
end
