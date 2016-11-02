require 'pathname'

module Aws
  module ClientWaiters
    def wait_until(waiter_name, params = {}, &block)
      waiter = self.class.waiters.waiter(waiter_name)
      yield(waiter) if block_given?
      waiter.wait(client:self, params:params)
    end

    # Returns the list of supported waiters.
    # @return [Array<Symbol>]
    def waiter_names
      self.class.waiters.waiter_names
    end

  end
end
