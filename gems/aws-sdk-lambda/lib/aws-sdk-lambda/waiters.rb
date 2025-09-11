# frozen_string_literal: true

# This is generated code!

module Aws::Lambda

  # @api private
  module Waiters
    # @api private
    #
    # Waits for the function's State to be Active. This waiter uses GetFunctionConfiguration API. This should be used after new function creation.
    #
    class FunctionActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_function_configuration,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "Active",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "Failed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "Pending",
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
    # Waits for the function's State to be Active. This waiter uses GetFunction API. This should be used after new function creation.
    #
    class FunctionActiveV2
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 1,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_function,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "configuration.state",
                    "expected" => "Active",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "configuration.state",
                    "expected" => "Failed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "configuration.state",
                    "expected" => "Pending",
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
    #
    class FunctionExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 1,
          max_delay: options[:max_delay] || 20,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_function,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "success" => true
                }
              },
              {
                "state" => "retry",
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

    # @api private
    #
    # Waits for the function's LastUpdateStatus to be Successful. This waiter uses GetFunctionConfiguration API. This should be used after function updates.
    #
    class FunctionUpdated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_function_configuration,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "last_update_status",
                    "expected" => "Successful",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "last_update_status",
                    "expected" => "Failed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "last_update_status",
                    "expected" => "InProgress",
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
    # Waits for the function's LastUpdateStatus to be Successful. This waiter uses GetFunction API. This should be used after function updates.
    #
    class FunctionUpdatedV2
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 1,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_function,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "configuration.last_update_status",
                    "expected" => "Successful",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "configuration.last_update_status",
                    "expected" => "Failed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "configuration.last_update_status",
                    "expected" => "InProgress",
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
    # Waits for the published version's State to be Active. This waiter uses GetFunctionConfiguration API. This should be used after new version is published.
    #
    class PublishedVersionActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 1560,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_function_configuration,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "Active",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "Failed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "Pending",
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
