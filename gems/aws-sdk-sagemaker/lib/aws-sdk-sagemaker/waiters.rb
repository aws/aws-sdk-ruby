# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::SageMaker
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
  # | waiter_name                         | params                              | :delay   | :max_attempts |
  # | ----------------------------------- | ----------------------------------- | -------- | ------------- |
  # | endpoint_deleted                    | {Client#describe_endpoint}          | 30       | 60            |
  # | endpoint_in_service                 | {Client#describe_endpoint}          | 30       | 120           |
  # | notebook_instance_deleted           | {Client#describe_notebook_instance} | 30       | 60            |
  # | notebook_instance_in_service        | {Client#describe_notebook_instance} | 30       | 60            |
  # | notebook_instance_stopped           | {Client#describe_notebook_instance} | 30       | 60            |
  # | processing_job_completed_or_stopped | {Client#describe_processing_job}    | 60       | 60            |
  # | training_job_completed_or_stopped   | {Client#describe_training_job}      | 120      | 180           |
  # | transform_job_completed_or_stopped  | {Client#describe_transform_job}     | 60       | 60            |
  #
  module Waiters

    class EndpointDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_endpoint,
            acceptors: [
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "endpoint_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_endpoint)
      # @return (see Client#describe_endpoint)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class EndpointInService

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_endpoint,
            acceptors: [
              {
                "expected" => "InService",
                "matcher" => "path",
                "state" => "success",
                "argument" => "endpoint_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "endpoint_status"
              },
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_endpoint)
      # @return (see Client#describe_endpoint)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class NotebookInstanceDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_notebook_instance,
            acceptors: [
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "notebook_instance_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_notebook_instance)
      # @return (see Client#describe_notebook_instance)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class NotebookInstanceInService

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_notebook_instance,
            acceptors: [
              {
                "expected" => "InService",
                "matcher" => "path",
                "state" => "success",
                "argument" => "notebook_instance_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "notebook_instance_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_notebook_instance)
      # @return (see Client#describe_notebook_instance)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class NotebookInstanceStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_notebook_instance,
            acceptors: [
              {
                "expected" => "Stopped",
                "matcher" => "path",
                "state" => "success",
                "argument" => "notebook_instance_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "notebook_instance_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_notebook_instance)
      # @return (see Client#describe_notebook_instance)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ProcessingJobCompletedOrStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_processing_job,
            acceptors: [
              {
                "expected" => "Completed",
                "matcher" => "path",
                "state" => "success",
                "argument" => "processing_job_status"
              },
              {
                "expected" => "Stopped",
                "matcher" => "path",
                "state" => "success",
                "argument" => "processing_job_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "processing_job_status"
              },
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_processing_job)
      # @return (see Client#describe_processing_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class TrainingJobCompletedOrStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (180)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 180,
          delay: 120,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_training_job,
            acceptors: [
              {
                "expected" => "Completed",
                "matcher" => "path",
                "state" => "success",
                "argument" => "training_job_status"
              },
              {
                "expected" => "Stopped",
                "matcher" => "path",
                "state" => "success",
                "argument" => "training_job_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "training_job_status"
              },
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_training_job)
      # @return (see Client#describe_training_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class TransformJobCompletedOrStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_transform_job,
            acceptors: [
              {
                "expected" => "Completed",
                "matcher" => "path",
                "state" => "success",
                "argument" => "transform_job_status"
              },
              {
                "expected" => "Stopped",
                "matcher" => "path",
                "state" => "success",
                "argument" => "transform_job_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "transform_job_status"
              },
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_transform_job)
      # @return (see Client#describe_transform_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
