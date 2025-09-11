# frozen_string_literal: true

# This is generated code!

module Aws::Schemas

  # @api private
  module Waiters
    # @api private
    #
    # Wait until code binding is generated
    #
    class CodeBindingExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 2,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_code_binding,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "CREATE_COMPLETE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "CREATE_IN_PROGRESS",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "CREATE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "NotFoundException"
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
