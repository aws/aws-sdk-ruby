# frozen_string_literal: true

# This is generated code!

module Aws::Macie2
  # @api private
  module Waiters

    # @api private
    #
    # Wait until the sensitive data occurrences are ready.
    #
    class FindingRevealed
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 2,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_sensitive_data_occurrences,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "SUCCESS",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "ERROR",
                    "comparator" => "stringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

  end
end
