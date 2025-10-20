# frozen_string_literal: true

# This is generated code!

module Aws::CloudFormation
  # @api private
  module Waiters

    # @api private
    #
    # Wait until change set status is CREATE_COMPLETE.
    #
    class ChangeSetCreateComplete
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_change_set,
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
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationError"
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
    # Wait until stack status is CREATE_COMPLETE.
    #
    class StackCreateComplete
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_stacks,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "CREATE_COMPLETE",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_COMPLETE",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_IN_PROGRESS",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_FAILED",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_ROLLBACK_IN_PROGRESS",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_ROLLBACK_FAILED",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_ROLLBACK_COMPLETE",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "CREATE_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "DELETE_COMPLETE",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "DELETE_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "ROLLBACK_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "ROLLBACK_COMPLETE",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationError"
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
    # Wait until stack status is DELETE_COMPLETE.
    #
    class StackDeleteComplete
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_stacks,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "DELETE_COMPLETE",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ValidationError"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "DELETE_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "CREATE_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "ROLLBACK_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_ROLLBACK_IN_PROGRESS",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_ROLLBACK_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_ROLLBACK_COMPLETE",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_COMPLETE",
                    "comparator" => "anyStringEquals"
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
    class StackExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_stacks,
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
                  "errorType" => "ValidationError"
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
    # Wait until stack status is IMPORT_COMPLETE.
    #
    class StackImportComplete
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_stacks,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "IMPORT_COMPLETE",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "ROLLBACK_COMPLETE",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "ROLLBACK_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "IMPORT_ROLLBACK_IN_PROGRESS",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "IMPORT_ROLLBACK_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "IMPORT_ROLLBACK_COMPLETE",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationError"
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
    # Wait until the stack refactor status is CREATE_COMPLETE.
    #
    class StackRefactorCreateComplete
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_stack_refactor,
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
                  "errorType" => "ValidationError"
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
    # Wait until the stack refactor status is EXECUTE_COMPLETE.
    #
    class StackRefactorExecuteComplete
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_stack_refactor,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "execution_status",
                    "expected" => "EXECUTE_COMPLETE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "execution_status",
                    "expected" => "EXECUTE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "execution_status",
                    "expected" => "ROLLBACK_COMPLETE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationError"
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
    # Wait until stack status is UPDATE_ROLLBACK_COMPLETE.
    #
    class StackRollbackComplete
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_stacks,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_ROLLBACK_COMPLETE",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_ROLLBACK_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "DELETE_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationError"
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
    # Wait until stack status is UPDATE_COMPLETE.
    #
    class StackUpdateComplete
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_stacks,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_COMPLETE",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_ROLLBACK_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "stacks[].stack_status",
                    "expected" => "UPDATE_ROLLBACK_COMPLETE",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationError"
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
    # Wait until type registration is COMPLETE.
    #
    class TypeRegistrationComplete
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_type_registration,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "progress_status",
                    "expected" => "COMPLETE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "progress_status",
                    "expected" => "FAILED",
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
