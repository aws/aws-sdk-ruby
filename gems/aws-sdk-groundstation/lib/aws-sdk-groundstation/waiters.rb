# frozen_string_literal: true

# This is generated code!

module Aws::GroundStation
  # @api private
  module Waiters

    # @api private
    #
    # Waits until a contact has been scheduled
    #
    class ContactScheduled
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 900,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_contact,
            acceptors: [
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "contact_status",
                    "comparator" => "stringEquals",
                    "expected" => "FAILED_TO_SCHEDULE"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "contact_status",
                    "comparator" => "stringEquals",
                    "expected" => "SCHEDULED"
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
