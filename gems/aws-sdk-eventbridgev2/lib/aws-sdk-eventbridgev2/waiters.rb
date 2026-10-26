# frozen_string_literal: true

# This is generated code!

module Aws::EventBridgeV2
  # @api private
  module Waiters

    # @api private
    #
    # Waits until the event bus reports ACTIVE. Use after CreateEventBus (bus starts in CREATING) or UpdateEventBus (bus moves to UPDATING) before invoking operations that require an ACTIVE bus. Fails fast on the terminal failure states CREATE_FAILED, UPDATE_FAILED, and DELETE_FAILED, surfacing StateReason. CREATING, UPDATING, and DELETING are intentionally unmodeled intermediate states that fall through to the implicit retry.
    #
    class EventBusActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 2,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_event_bus,
            acceptors: [
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "CREATE_FAILED",
                    "comparator" => "stringEquals"
                  }
                },
                "message" => "StateReason"
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "UPDATE_FAILED",
                    "comparator" => "stringEquals"
                  }
                },
                "message" => "StateReason"
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DELETE_FAILED",
                    "comparator" => "stringEquals"
                  }
                },
                "message" => "StateReason"
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "ACTIVE",
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

    # @api private
    #
    # Waits until the event bus is fully deleted, signaled by DescribeEventBus returning ResourceNotFoundException. Use after DeleteEventBus. Fails fast on the terminal DELETE_FAILED state, surfacing StateReason; retry DeleteEventBus after removing subscribers.
    #
    class EventBusDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 2,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_event_bus,
            acceptors: [
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DELETE_FAILED",
                    "comparator" => "stringEquals"
                  }
                },
                "message" => "StateReason"
              },
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ResourceNotFoundException"
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
