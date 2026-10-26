# frozen_string_literal: true

# This is generated code!

module Aws::ECS
  # @api private
  module Waiters

    # @api private
    #
    #
    class DaemonActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_daemon,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "daemon.status",
                    "expected" => "ACTIVE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "daemon.status",
                    "expected" => "DELETE_IN_PROGRESS",
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
    class DaemonDeploymentStopped
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_daemon_deployments,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "daemon_deployments[].status",
                    "expected" => "STOPPED",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "failures[].reason",
                    "expected" => "MISSING",
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
    class DaemonDeploymentSuccessful
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_daemon_deployments,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "daemon_deployments[].status",
                    "expected" => "SUCCESSFUL",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "daemon_deployments[].status",
                    "expected" => "STOPPED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "daemon_deployments[].status",
                    "expected" => "ROLLBACK_FAILED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "daemon_deployments[].status",
                    "expected" => "ROLLBACK_SUCCESSFUL",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "failures[].reason",
                    "expected" => "MISSING",
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
    class DaemonTaskDefinitionActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_daemon_task_definition,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "daemon_task_definition.status",
                    "expected" => "ACTIVE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "daemon_task_definition.status",
                    "expected" => "DELETE_IN_PROGRESS",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "daemon_task_definition.status",
                    "expected" => "DELETED",
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
    class DaemonTaskDefinitionDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_daemon_task_definition,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "daemon_task_definition.status",
                  "expected" => "DELETED",
                  "comparator" => "stringEquals"
                }
              }
            }]
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
    class ServicesInactive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_services,
            acceptors: [
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "failures[].reason",
                    "expected" => "MISSING",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "services[].status",
                    "expected" => "INACTIVE",
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
    class ServicesStable
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_services,
            acceptors: [
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "failures[].reason",
                    "expected" => "MISSING",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "services[].status",
                    "expected" => "DRAINING",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "services[].status",
                    "expected" => "INACTIVE",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "length(services[?!(length(deployments) == `1` && running_count == desired_count)]) == `0`",
                    "expected" => "true",
                    "comparator" => "booleanEquals"
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
    class TasksRunning
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 6,
          max_delay: options[:max_delay] || 600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_tasks,
            acceptors: [
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "tasks[].last_status",
                    "expected" => "STOPPED",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "failures[].reason",
                    "expected" => "MISSING",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "tasks[].last_status",
                    "expected" => "RUNNING",
                    "comparator" => "allStringEquals"
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
    class TasksStopped
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 6,
          max_delay: options[:max_delay] || 600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_tasks,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "tasks[].last_status",
                  "expected" => "STOPPED",
                  "comparator" => "allStringEquals"
                }
              }
            }]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

  end
end
