# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::SageMaker
  module Waiters

    class Endpoint_Created

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 120,
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
                "expected" => "Creating",
                "matcher" => "path",
                "state" => "retry",
                "argument" => "endpoint_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "endpoint_status"
              },
              {
                "expected" => "ThrottlingException",
                "matcher" => "error",
                "state" => "retry"
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

    class Endpoint_Deleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 120,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_endpoint,
            acceptors: [
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "retry",
                "argument" => "endpoint_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "endpoint_status"
              },
              {
                "expected" => "ThrottlingException",
                "matcher" => "error",
                "state" => "retry"
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

    class Endpoint_Updated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 120,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_endpoint,
            acceptors: [
              {
                "expected" => "200",
                "matcher" => "path",
                "state" => "success",
                "argument" => "endpoint_name"
              },
              {
                "expected" => "Updating",
                "matcher" => "path",
                "state" => "retry",
                "argument" => "endpoint_status"
              },
              {
                "expected" => "RollingBack",
                "matcher" => "path",
                "state" => "retry",
                "argument" => "endpoint_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "endpoint_status"
              },
              {
                "expected" => "ThrottlingException",
                "matcher" => "error",
                "state" => "retry"
              },
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "retry"
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

    class NotebookInstance_Deleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 120,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_notebook_instance,
            acceptors: [
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "retry",
                "argument" => "notebook_instance_status"
              },
              {
                "expected" => "ThrottlingException",
                "matcher" => "error",
                "state" => "retry"
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

    class NotebookInstance_Running

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 120,
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
                "expected" => "ThrottlingException",
                "matcher" => "error",
                "state" => "retry"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "notebook_instance_status"
              },
              {
                "expected" => "Stopped",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "notebook_instance_status"
              },
              {
                "expected" => "Stopping",
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

    class NotebookInstance_Stopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 120,
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
                "expected" => "Stopping",
                "matcher" => "path",
                "state" => "retry",
                "argument" => "notebook_instance_status"
              },
              {
                "expected" => "ThrottlingException",
                "matcher" => "error",
                "state" => "retry"
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

    class TrainingJob_Created

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 120,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_training_job,
            acceptors: [
              {
                "expected" => "Created",
                "matcher" => "path",
                "state" => "success",
                "argument" => "training_job_status"
              },
              {
                "expected" => "Completed",
                "matcher" => "path",
                "state" => "success",
                "argument" => "training_job_status"
              },
              {
                "expected" => "InProgress",
                "matcher" => "path",
                "state" => "retry",
                "argument" => "training_job_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "training_job_status"
              },
              {
                "expected" => "Stopping",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "training_job_status"
              },
              {
                "expected" => "Stopped",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "training_job_status"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "training_job_status"
              },
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "failure"
              },
              {
                "expected" => "ThrottlingException",
                "matcher" => "error",
                "state" => "retry"
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

    class TrainingJob_Deleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 120,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_training_job,
            acceptors: [
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "retry",
                "argument" => "training_job_status"
              },
              {
                "expected" => "ThrottlingException",
                "matcher" => "error",
                "state" => "retry"
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

    class TrainingJob_Stopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
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
                "expected" => "Stopping",
                "matcher" => "path",
                "state" => "retry",
                "argument" => "training_job_status"
              },
              {
                "expected" => "Stopped",
                "matcher" => "path",
                "state" => "success",
                "argument" => "training_job_status"
              },
              {
                "expected" => "ThrottlingException",
                "matcher" => "error",
                "state" => "retry"
              },
              {
                "expected" => "ValidationException",
                "matcher" => "error",
                "state" => "failure"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "training_job_status"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "training_job_status"
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
  end
end
