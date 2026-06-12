# frozen_string_literal: true

module Aws
  module Core
    module Retry
      # AWS-specific standard retry strategy with configurable backoff scalar.
      class Standard < Smithy::Client::Retry::Standard
        # @option [Float] :non_throttle_scalar (0.05) The backoff scalar for non-throttling errors.
        def initialize(options = {})
          @non_throttle_scalar = options.delete(:non_throttle_scalar) || 0.05
          super
        end

        private

        def backoff
          @backoff ||= ExponentialBackoff.new(non_throttle_scalar: @non_throttle_scalar)
        end
      end
    end
  end
end
