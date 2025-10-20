# frozen_string_literal: true

# This is generated code!

module Aws::MediaLive
  # @api private
  module Waiters

    # @api private
    #
    # Wait until a channel has been created
    #
    class ChannelCreated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "IDLE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "CREATING",
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
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "CREATE_FAILED",
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
    # Wait until a channel has been deleted
    #
    class ChannelDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DELETED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
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
    # Wait until the channel placement group has been assigned
    #
    class ChannelPlacementGroupAssigned
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_channel_placement_group,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "ASSIGNED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "ASSIGNING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
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
    # Wait until the channel placement group has been deleted
    #
    class ChannelPlacementGroupDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_channel_placement_group,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DELETED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
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
    # Wait until the channel placement group has been unassigned
    #
    class ChannelPlacementGroupUnassigned
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_channel_placement_group,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "UNASSIGNED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "UNASSIGNING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
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
    # Wait until a channel is running
    #
    class ChannelRunning
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "RUNNING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "STARTING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
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
    # Wait until a channel has is stopped
    #
    class ChannelStopped
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "IDLE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
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
    # Wait until a cluster has been created
    #
    class ClusterCreated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "ACTIVE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "CREATING",
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
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "CREATE_FAILED",
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
    # Wait until a cluster has been deleted
    #
    class ClusterDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DELETED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
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
    # Wait until an input has been attached
    #
    class InputAttached
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_input,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "ATTACHED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DETACHED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
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
    # Wait until an input has been deleted
    #
    class InputDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_input,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DELETED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
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
    # Wait until an input has been detached
    #
    class InputDetached
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_input,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DETACHED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "CREATING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "ATTACHED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
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
    # Wait until a multiplex has been created
    #
    class MultiplexCreated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_multiplex,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "IDLE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "CREATING",
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
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "CREATE_FAILED",
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
    # Wait until a multiplex has been deleted
    #
    class MultiplexDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_multiplex,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DELETED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
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
    # Wait until a multiplex is running
    #
    class MultiplexRunning
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_multiplex,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "RUNNING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "STARTING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
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
    # Wait until a multiplex has is stopped
    #
    class MultiplexStopped
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_multiplex,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "IDLE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
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
    # Wait until a node has been deregistered
    #
    class NodeDeregistered
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_node,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DEREGISTERED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DEREGISTERING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "DRAINING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
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
    # Wait until a node has been registered
    #
    class NodeRegistered
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_node,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "ACTIVE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "REGISTERING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "NotFoundException"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "state",
                    "expected" => "REGISTRATION_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
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
    # Wait until a signal map has been created
    #
    class SignalMapCreated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_signal_map,
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
    # Wait until a signal map's monitor has been deleted
    #
    class SignalMapMonitorDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_signal_map,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "monitor_deployment.status",
                    "expected" => "DELETE_COMPLETE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "monitor_deployment.status",
                    "expected" => "DELETE_IN_PROGRESS",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "monitor_deployment.status",
                    "expected" => "DELETE_FAILED",
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
    # Wait until a signal map's monitor has been deployed
    #
    class SignalMapMonitorDeployed
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_signal_map,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "monitor_deployment.status",
                    "expected" => "DRY_RUN_DEPLOYMENT_COMPLETE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "monitor_deployment.status",
                    "expected" => "DEPLOYMENT_COMPLETE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "monitor_deployment.status",
                    "expected" => "DRY_RUN_DEPLOYMENT_IN_PROGRESS",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "monitor_deployment.status",
                    "expected" => "DEPLOYMENT_IN_PROGRESS",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "monitor_deployment.status",
                    "expected" => "DRY_RUN_DEPLOYMENT_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "monitor_deployment.status",
                    "expected" => "DEPLOYMENT_FAILED",
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
    # Wait until a signal map has been updated
    #
    class SignalMapUpdated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_signal_map,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "UPDATE_COMPLETE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "UPDATE_IN_PROGRESS",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "UPDATE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "UPDATE_REVERTED",
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
