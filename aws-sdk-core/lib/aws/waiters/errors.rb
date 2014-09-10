require 'jamespath'

module Aws
  module Waiters
    module Errors

      # Base class errors raised while waiting.
      class Error < StandardError; end

      # Raised when a waiter detects a condition where the waiter can never
      # succeed.
      class WatierFailed < Error; end

      # Raised when a waiter does not succeed or fail after a configured
      # maximum number of attempts have been made.
      class MaxAttemptsError < Error; end

      # Raised when attempting to get a waiter by name and the waiter has not
      # been defined.
      class NoSuchWaiterError < ArgumentError
        def initialize(waiter_name, waiter_names)
          msg = "no definition found for #{waiter_name.inspect}"
          msg << "; valid waiter names are:"
          waiter_names.sort.each.with_index do |name, n|
            if n % 3 == 0
              msg << "\n  #{name.inspect}"
            else
              msg << ", #{name.inspect}"
            end
          end
          super(msg)
        end
      end

    end
  end
end
