# frozen_string_literal: true

# This is generated code!

module Aws::CloudControl
  # @api private
  module Waiters

    # @api private
    #
    # Wait until resource operation request is successful
    #
    class ResourceRequestSuccess
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_resource_request_status,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "progress_event.operation_status",
                    "expected" => "SUCCESS",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "progress_event.operation_status",
                    "expected" => "FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "progress_event.operation_status",
                    "expected" => "CANCEL_COMPLETE",
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
