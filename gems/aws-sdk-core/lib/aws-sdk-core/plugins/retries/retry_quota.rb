module Aws
  module Plugins
    module Retries

      # @api private
      # Used in 'standard' and 'adaptive' retry modes.
      class RetryQuota
        INITIAL_RETRY_TOKENS = 500
        RETRY_COST = 5
        NO_RETRY_INCREMENT = 1
        TIMEOUT_RETRY_COST = 10

        attr_reader :max_capacity, :available_capacity

        def initialize
          @mutex              = Mutex.new
          @max_capacity       = INITIAL_RETRY_TOKENS
          @available_capacity = INITIAL_RETRY_TOKENS
        end

        # check if there is sufficient capacity to retry
        def checkout_capacity(error_inspector)
          @mutex.synchronize do
            capacity_amount = if error_inspector.networking?
                                TIMEOUT_RETRY_COST
                              else
                                RETRY_COST
                              end

            # unable to acquire capacity
            return 0 if capacity_amount > @available_capacity

            @available_capacity -= capacity_amount
            capacity_amount
          end
        end

        def release(is_response_successful, capacity_amount)
          # capacity_amount refers to the amount of capacity requested from
          # the last retry.  It can either be RETRY_COST, TIMEOUT_RETRY_COST,
          # or unset.
          if is_response_successful
            @mutex.synchronize do
              @available_capacity += if capacity_amount
                                       capacity_amount
                                     else
                                       NO_RETRY_INCREMENT
                                     end
            end
          end
        end
      end
    end
  end
end
