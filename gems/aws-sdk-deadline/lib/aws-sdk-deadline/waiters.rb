# frozen_string_literal: true

# This is generated code!

module Aws::Deadline

  # @api private
  module Waiters
    # @api private
    #
    # Wait until a Fleet is activated. Use this after invoking CreateFleet or UpdateFleet.
    #
    class FleetActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 900,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_fleet,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "ACTIVE",
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
                  "output" => {
                    "path" => "status",
                    "expected" => "UPDATE_FAILED",
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
    # Wait until a Job is created. Use this after invoking CreateJob.
    #
    class JobCreateComplete
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 1,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_job,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "lifecycle_status",
                    "expected" => "CREATE_COMPLETE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "lifecycle_status",
                    "expected" => "UPDATE_IN_PROGRESS",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "lifecycle_status",
                    "expected" => "UPDATE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "lifecycle_status",
                    "expected" => "UPDATE_SUCCEEDED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "lifecycle_status",
                    "expected" => "UPLOAD_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "lifecycle_status",
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
    # Wait until a LicenseEndpoint is Deleted. Use this after invoking DeleteLicenseEndpoint.
    #
    class LicenseEndpointDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 10,
          max_delay: options[:max_delay] || 2340,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_license_endpoint,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ResourceNotFoundException"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "NOT_READY",
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
    # Wait until a LicenseEndpoint is Ready. Use this after invoking CreateLicenseEndpoint.
    #
    class LicenseEndpointValid
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 10,
          max_delay: options[:max_delay] || 1140,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_license_endpoint,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "READY",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "NOT_READY",
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
    # Wait until a QueueFleetAssociation is stopped. Use this after setting the status to STOP_SCHEDULING_AND_COMPLETE_TASKS or STOP_SCHEDULING_AND_CANCEL_TASKS to wait for a QueueFleetAssociation to reach STOPPED
    #
    class QueueFleetAssociationStopped
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 10,
          max_delay: options[:max_delay] || 600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_queue_fleet_association,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "status",
                  "expected" => "STOPPED",
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
    # Wait until a QueueLimitAssociation is stopped. Use this after setting the status to STOP_LIMIT_USAGE_AND_COMPLETE_TASKS or STOP_LIMIT_USAGE_AND_CANCEL_TASKS to wait for a QueueLimitAssociation to reach STOPPED
    #
    class QueueLimitAssociationStopped
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 10,
          max_delay: options[:max_delay] || 600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_queue_limit_association,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "status",
                  "expected" => "STOPPED",
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
    class QueueScheduling
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 10,
          max_delay: options[:max_delay] || 700,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_queue,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "status",
                  "expected" => "SCHEDULING",
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
    class QueueSchedulingBlocked
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 10,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_queue,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "status",
                  "expected" => "SCHEDULING_BLOCKED",
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

  end
end
