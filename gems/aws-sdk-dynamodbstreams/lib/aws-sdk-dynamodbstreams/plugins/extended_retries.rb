# frozen_string_literal: true

module Aws
  module DynamoDBStreams
    module Plugins
      # @api private
      class ExtendedRetries < Smithy::Client::Plugin
        # DynamoDBStreams has more retry attempts
        option(:max_attempts, default: 4)
        # ... and a lower base backoff delay for non-throttling errors.
        option(:retry_backoff_scalar, default: 0.025)
      end
    end
  end
end
