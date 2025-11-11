# frozen_string_literal: true

module Aws
  module DynamoDB
    module Plugins
      # @api private
      class ExtendedRetries < Smithy::Client::Plugin
        # DynamoDB has more retry attempts and a lower base backoff delay.
        option(:retry_max_attempts, default: 9)
        option(:retry_base_delay, default: 0.025)
      end
    end
  end
end
