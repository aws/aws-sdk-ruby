# frozen_string_literal: true

# This is generated code!

module Aws::LambdaWeb
  # @api private
  module Waiters

    # @api private
    #
    # Waits for the web function's state to be Active. This should be used after new function creation.
    #
    class WebFunctionActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 1,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_web_function,
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
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "Deleting",
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
    # Waits for the web function to be deleted. This should be used after function deletion.
    #
    class WebFunctionDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 1,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_web_function,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ResourceNotFoundException"
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "Deleting",
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
    # Waits for the web function endpoint's state to be Active. This should be used after new endpoint creation.
    #
    class WebFunctionEndpointActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 1,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_web_function_endpoint,
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
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "Deleting",
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
    # Waits for the web function endpoint to be deleted. This should be used after endpoint deletion.
    #
    class WebFunctionEndpointDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 1,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_web_function_endpoint,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ResourceNotFoundException"
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "Deleting",
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
    # Waits for the web function endpoint's update status to be Successful. This should be used after endpoint updates.
    #
    class WebFunctionEndpointUpdated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 1,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_web_function_endpoint,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "update_status",
                    "expected" => "Successful",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "update_status",
                    "expected" => "Failed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "update_status",
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
    # Waits for the web function revision's state to be Active. This should be used after new revision creation.
    #
    class WebFunctionRevisionActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 1,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_web_function_revision,
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
