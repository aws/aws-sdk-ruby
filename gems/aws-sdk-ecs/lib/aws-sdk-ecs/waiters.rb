# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::ECS
  module Waiters

    class ServicesInactive

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_services,
            acceptors: [
              {
                "expected" => "MISSING",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "failures[].reason"
              },
              {
                "expected" => "INACTIVE",
                "matcher" => "pathAny",
                "state" => "success",
                "argument" => "services[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_services)
      # @return (see Client#describe_services)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ServicesStable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_services,
            acceptors: [
              {
                "expected" => "MISSING",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "failures[].reason"
              },
              {
                "expected" => "DRAINING",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "services[].status"
              },
              {
                "expected" => "INACTIVE",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "services[].status"
              },
              {
                "expected" => true,
                "matcher" => "path",
                "state" => "success",
                "argument" => "length(services[?!(length(deployments) == `1` && running_count == desired_count)]) == `0`"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_services)
      # @return (see Client#describe_services)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class TasksRunning

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (100)
      # @option options [Integer] :delay (6)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 100,
          delay: 6,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_tasks,
            acceptors: [
              {
                "expected" => "STOPPED",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "tasks[].last_status"
              },
              {
                "expected" => "MISSING",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "failures[].reason"
              },
              {
                "expected" => "RUNNING",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "tasks[].last_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_tasks)
      # @return (see Client#describe_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class TasksStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (100)
      # @option options [Integer] :delay (6)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 100,
          delay: 6,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_tasks,
            acceptors: [{
              "expected" => "STOPPED",
              "matcher" => "pathAll",
              "state" => "success",
              "argument" => "tasks[].last_status"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_tasks)
      # @return (see Client#describe_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
