# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::Omics
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
  # | waiter_name                       | params                               | :delay   | :max_attempts |
  # | --------------------------------- | ------------------------------------ | -------- | ------------- |
  # | annotation_import_job_created     | {Client#get_annotation_import_job}   | 30       | 20            |
  # | annotation_store_created          | {Client#get_annotation_store}        | 30       | 20            |
  # | annotation_store_deleted          | {Client#get_annotation_store}        | 30       | 20            |
  # | read_set_activation_job_completed | {Client#get_read_set_activation_job} | 30       | 20            |
  # | read_set_export_job_completed     | {Client#get_read_set_export_job}     | 30       | 20            |
  # | read_set_import_job_completed     | {Client#get_read_set_import_job}     | 30       | 20            |
  # | reference_import_job_completed    | {Client#get_reference_import_job}    | 30       | 20            |
  # | run_completed                     | {Client#get_run}                     | 30       | 20            |
  # | run_running                       | {Client#get_run}                     | 30       | 20            |
  # | task_completed                    | {Client#get_run_task}                | 30       | 20            |
  # | task_running                      | {Client#get_run_task}                | 30       | 20            |
  # | variant_import_job_created        | {Client#get_variant_import_job}      | 30       | 20            |
  # | variant_store_created             | {Client#get_variant_store}           | 30       | 20            |
  # | variant_store_deleted             | {Client#get_variant_store}           | 30       | 20            |
  # | workflow_active                   | {Client#get_workflow}                | 3        | 10            |
  #
  module Waiters

    # Wait until an annotation import is completed
    class AnnotationImportJobCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_annotation_import_job,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "SUBMITTED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "CANCELLED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "COMPLETED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_annotation_import_job)
      # @return (see Client#get_annotation_import_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an annotation store is created
    class AnnotationStoreCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_annotation_store,
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
                "state" => "retry",
                "expected" => "CREATING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "UPDATING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_annotation_store)
      # @return (see Client#get_annotation_store)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an annotation store is deleted.
    class AnnotationStoreDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_annotation_store,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "DELETED"
              },
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "DELETING"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_annotation_store)
      # @return (see Client#get_annotation_store)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a job is completed.
    class ReadSetActivationJobCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_read_set_activation_job,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "COMPLETED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "SUBMITTED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "CANCELLING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CANCELLED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "COMPLETED_WITH_FAILURES"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_read_set_activation_job)
      # @return (see Client#get_read_set_activation_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a job is completed.
    class ReadSetExportJobCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_read_set_export_job,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "COMPLETED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "SUBMITTED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "CANCELLING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CANCELLED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "COMPLETED_WITH_FAILURES"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_read_set_export_job)
      # @return (see Client#get_read_set_export_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a job is completed.
    class ReadSetImportJobCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_read_set_import_job,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "COMPLETED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "SUBMITTED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "CANCELLING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CANCELLED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "COMPLETED_WITH_FAILURES"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_read_set_import_job)
      # @return (see Client#get_read_set_import_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a job is completed.
    class ReferenceImportJobCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_reference_import_job,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "COMPLETED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "SUBMITTED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "CANCELLING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CANCELLED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "COMPLETED_WITH_FAILURES"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_reference_import_job)
      # @return (see Client#get_reference_import_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a run is completed.
    class RunCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_run,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "COMPLETED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "PENDING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "STARTING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "RUNNING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "STOPPING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_run)
      # @return (see Client#get_run)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a run is running.
    class RunRunning

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_run,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "RUNNING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "PENDING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "STARTING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CANCELLED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_run)
      # @return (see Client#get_run)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a task is completed.
    class TaskCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_run_task,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "COMPLETED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "PENDING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "STARTING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "RUNNING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "STOPPING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_run_task)
      # @return (see Client#get_run_task)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a task is running.
    class TaskRunning

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_run_task,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "RUNNING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "PENDING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "STARTING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CANCELLED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_run_task)
      # @return (see Client#get_run_task)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until variant import is completed
    class VariantImportJobCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_variant_import_job,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "SUBMITTED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "CANCELLED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "COMPLETED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_variant_import_job)
      # @return (see Client#get_variant_import_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a variant store is created
    class VariantStoreCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_variant_store,
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
                "state" => "retry",
                "expected" => "CREATING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "UPDATING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_variant_store)
      # @return (see Client#get_variant_store)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a variant store is deleted.
    class VariantStoreDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_variant_store,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "DELETED"
              },
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "DELETING"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_variant_store)
      # @return (see Client#get_variant_store)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a workflow is active.
    class WorkflowActive

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (10)
      # @option options [Integer] :delay (3)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 10,
          delay: 3,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_workflow,
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
                "state" => "retry",
                "expected" => "CREATING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "UPDATING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_workflow)
      # @return (see Client#get_workflow)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
