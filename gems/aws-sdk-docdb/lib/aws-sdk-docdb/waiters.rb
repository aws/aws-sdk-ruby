# frozen_string_literal: true

# This is generated code!

module Aws::DocDB
  # @api private
  module Waiters

    # @api private
    #
    #
    class DBInstanceAvailable
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_db_instances,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "db_instances[].db_instance_status",
                    "expected" => "available",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "db_instances[].db_instance_status",
                    "expected" => "deleted",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "db_instances[].db_instance_status",
                    "expected" => "deleting",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "db_instances[].db_instance_status",
                    "expected" => "failed",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "db_instances[].db_instance_status",
                    "expected" => "incompatible-restore",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "db_instances[].db_instance_status",
                    "expected" => "incompatible-parameters",
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
    class DBInstanceDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_db_instances,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "db_instances[].db_instance_status",
                    "expected" => "deleted",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "DBInstanceNotFound"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "db_instances[].db_instance_status",
                    "expected" => "creating",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "db_instances[].db_instance_status",
                    "expected" => "modifying",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "db_instances[].db_instance_status",
                    "expected" => "rebooting",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "db_instances[].db_instance_status",
                    "expected" => "resetting-master-credentials",
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

  end
end
