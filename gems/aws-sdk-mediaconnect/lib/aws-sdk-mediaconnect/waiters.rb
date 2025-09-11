# frozen_string_literal: true

# This is generated code!

module Aws::MediaConnect

  # @api private
  module Waiters
    # @api private
    #
    # Wait until a flow is active
    #
    class FlowActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_flow,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "flow.status",
                    "expected" => "ACTIVE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "flow.status",
                    "expected" => "STARTING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "flow.status",
                    "expected" => "UPDATING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "ServiceUnavailableException"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "flow.status",
                    "expected" => "STANDBY",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "flow.status",
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

    # @api private
    #
    # Wait until a flow is deleted
    #
    class FlowDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_flow,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "NotFoundException"
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "flow.status",
                    "expected" => "DELETING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "ServiceUnavailableException"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "flow.status",
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

    # @api private
    #
    # Wait until a flow is in standby mode
    #
    class FlowStandby
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_flow,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "flow.status",
                    "expected" => "STANDBY",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "flow.status",
                    "expected" => "STOPPING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "ServiceUnavailableException"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "flow.status",
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
