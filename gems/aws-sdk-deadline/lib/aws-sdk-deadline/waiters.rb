# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::Deadline
  # Waiters are utility methods that poll for a particular state to occur
  # on a client. Waiters can fail after a number of attempts at a polling
  # interval defined for the service client.
  #
  # For a list of operations that can be waited for and the
  # client methods called for each operation, see the table below or the
  # {Client#wait_until} field documentation for the {Client}.
  #
  # # Invoking a Waiter
  # To invoke a waiter, call #wait_until on a {Client}. The first parameter
  # is the waiter name, which is specific to the service client and indicates
  # which operation is being waited for. The second parameter is a hash of
  # parameters that are passed to the client method called by the waiter,
  # which varies according to the waiter name.
  #
  # # Wait Failures
  # To catch errors in a waiter, use WaiterFailed,
  # as shown in the following example.
  #
  #     rescue rescue Aws::Waiters::Errors::WaiterFailed => error
  #       puts "failed waiting for instance running: #{error.message}
  #     end
  #
  # # Configuring a Waiter
  # Each waiter has a default polling interval and a maximum number of
  # attempts it will make before returning control to your program.
  # To set these values, use the `max_attempts` and `delay` parameters
  # in your `#wait_until` call.
  # The following example waits for up to 25 seconds, polling every five seconds.
  #
  #     client.wait_until(...) do |w|
  #       w.max_attempts = 5
  #       w.delay = 5
  #     end
  #
  # To disable wait failures, set the value of either of these parameters
  # to `nil`.
  #
  # # Extending a Waiter
  # To modify the behavior of waiters, you can register callbacks that are
  # triggered before each polling attempt and before waiting.
  #
  # The following example implements an exponential backoff in a waiter
  # by doubling the amount of time to wait on every attempt.
  #
  #     client.wait_until(...) do |w|
  #       w.interval = 0 # disable normal sleep
  #       w.before_wait do |n, resp|
  #         sleep(n ** 2)
  #       end
  #     end
  #
  # # Available Waiters
  #
  # The following table lists the valid waiter names, the operations they call,
  # and the default `:delay` and `:max_attempts` values.
  #
  # | waiter_name                     | params                               | :delay   | :max_attempts |
  # | ------------------------------- | ------------------------------------ | -------- | ------------- |
  # | fleet_active                    | {Client#get_fleet}                   | 5        | 180           |
  # | job_create_complete             | {Client#get_job}                     | 1        | 120           |
  # | license_endpoint_deleted        | {Client#get_license_endpoint}        | 10       | 234           |
  # | license_endpoint_valid          | {Client#get_license_endpoint}        | 10       | 114           |
  # | queue_fleet_association_stopped | {Client#get_queue_fleet_association} | 10       | 60            |
  # | queue_limit_association_stopped | {Client#get_queue_limit_association} | 10       | 60            |
  # | queue_scheduling                | {Client#get_queue}                   | 10       | 70            |
  # | queue_scheduling_blocked        | {Client#get_queue}                   | 10       | 30            |
  #
  module Waiters

    # Wait until a Fleet is activated. Use this after invoking CreateFleet or UpdateFleet.
    class FleetActive

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (180)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 180,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_fleet,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "ACTIVE"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CREATE_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "UPDATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_fleet)
      # @return (see Client#get_fleet)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a Job is created. Use this after invoking CreateJob.
    class JobCreateComplete

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_job,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "lifecycle_status",
                "state" => "success",
                "expected" => "CREATE_COMPLETE"
              },
              {
                "matcher" => "path",
                "argument" => "lifecycle_status",
                "state" => "success",
                "expected" => "UPDATE_IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "lifecycle_status",
                "state" => "success",
                "expected" => "UPDATE_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "lifecycle_status",
                "state" => "success",
                "expected" => "UPDATE_SUCCEEDED"
              },
              {
                "matcher" => "path",
                "argument" => "lifecycle_status",
                "state" => "failure",
                "expected" => "UPLOAD_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "lifecycle_status",
                "state" => "failure",
                "expected" => "CREATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_job)
      # @return (see Client#get_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a LicenseEndpoint is Deleted. Use this after invoking DeleteLicenseEndpoint.
    class LicenseEndpointDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (234)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 234,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_license_endpoint,
            acceptors: [
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "NOT_READY"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_license_endpoint)
      # @return (see Client#get_license_endpoint)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a LicenseEndpoint is Ready. Use this after invoking CreateLicenseEndpoint.
    class LicenseEndpointValid

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (114)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 114,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_license_endpoint,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "READY"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "NOT_READY"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_license_endpoint)
      # @return (see Client#get_license_endpoint)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a QueueFleetAssociation is stopped. Use this after setting the status to STOP_SCHEDULING_AND_COMPLETE_TASKS or STOP_SCHEDULING_AND_CANCEL_TASKS to wait for a QueueFleetAssociation to reach STOPPED
    class QueueFleetAssociationStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_queue_fleet_association,
            acceptors: [{
              "matcher" => "path",
              "argument" => "status",
              "state" => "success",
              "expected" => "STOPPED"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#get_queue_fleet_association)
      # @return (see Client#get_queue_fleet_association)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a QueueLimitAssociation is stopped. Use this after setting the status to STOP_LIMIT_USAGE_AND_COMPLETE_TASKS or STOP_LIMIT_USAGE_AND_CANCEL_TASKS to wait for a QueueLimitAssociation to reach STOPPED
    class QueueLimitAssociationStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_queue_limit_association,
            acceptors: [{
              "matcher" => "path",
              "argument" => "status",
              "state" => "success",
              "expected" => "STOPPED"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#get_queue_limit_association)
      # @return (see Client#get_queue_limit_association)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class QueueScheduling

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (70)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 70,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_queue,
            acceptors: [{
              "matcher" => "path",
              "argument" => "status",
              "state" => "success",
              "expected" => "SCHEDULING"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#get_queue)
      # @return (see Client#get_queue)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class QueueSchedulingBlocked

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (30)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 30,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_queue,
            acceptors: [{
              "matcher" => "path",
              "argument" => "status",
              "state" => "success",
              "expected" => "SCHEDULING_BLOCKED"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#get_queue)
      # @return (see Client#get_queue)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
