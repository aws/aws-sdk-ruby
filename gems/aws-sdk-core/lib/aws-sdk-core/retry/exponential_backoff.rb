# frozen_string_literal: true

module Aws
  module Core
    module Retry
      # @api private
      # AWS-specific exponential backoff with configurable non-throttle scalar
      # and x-amz-retry-after header support.
      class ExponentialBackoff < Smithy::Client::Retry::ExponentialBackoff
        DEFAULT_NON_THROTTLE_SCALAR = 0.05 # seconds

        def initialize(non_throttle_scalar: DEFAULT_NON_THROTTLE_SCALAR)
          super()
          @non_throttle_scalar = non_throttle_scalar
        end

        private

        def backoff_scalar_x(error_info)
          error_info.error_type == 'Throttling' ? 1 : @non_throttle_scalar
        end

        def apply_retry_after(t_i, error_info)
          x_amz_retry_after = error_info.hints[:x_amz_retry_after]
          return t_i unless x_amz_retry_after

          # Keep the delay between t_i and t_i + 5 seconds, inclusive.
          delay = [t_i, x_amz_retry_after].max
          [delay, t_i + 5].min
        end
      end
    end
  end
end
