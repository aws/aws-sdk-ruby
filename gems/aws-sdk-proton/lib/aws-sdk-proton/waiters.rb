# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::Proton
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
  # | waiter_name                             | params                                    | :delay   | :max_attempts |
  # | --------------------------------------- | ----------------------------------------- | -------- | ------------- |
  # | component_deleted                       | {Client#get_component}                    | 5        | 999           |
  # | component_deployed                      | {Client#get_component}                    | 5        | 999           |
  # | environment_deployed                    | {Client#get_environment}                  | 5        | 999           |
  # | environment_template_version_registered | {Client#get_environment_template_version} | 2        | 150           |
  # | service_created                         | {Client#get_service}                      | 5        | 999           |
  # | service_deleted                         | {Client#get_service}                      | 5        | 999           |
  # | service_instance_deployed               | {Client#get_service_instance}             | 5        | 999           |
  # | service_pipeline_deployed               | {Client#get_service}                      | 10       | 360           |
  # | service_template_version_registered     | {Client#get_service_template_version}     | 2        | 150           |
  # | service_updated                         | {Client#get_service}                      | 5        | 999           |
  #
  module Waiters

    # Wait until a Component is deleted. Use this after invoking DeleteComponent
    class ComponentDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (999)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 999,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_component,
            acceptors: [
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              },
              {
                "matcher" => "path",
                "argument" => "component.deployment_status",
                "state" => "failure",
                "expected" => "DELETE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_component)
      # @return (see Client#get_component)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a Component is deployed. Use this after invoking CreateComponent or UpdateComponent
    class ComponentDeployed

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (999)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 999,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_component,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "component.deployment_status",
                "state" => "success",
                "expected" => "SUCCEEDED"
              },
              {
                "matcher" => "path",
                "argument" => "component.deployment_status",
                "state" => "failure",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_component)
      # @return (see Client#get_component)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an Environment is deployed. Use this after invoking CreateEnvironment or UpdateEnvironment
    class EnvironmentDeployed

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (999)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 999,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_environment,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "environment.deployment_status",
                "state" => "success",
                "expected" => "SUCCEEDED"
              },
              {
                "matcher" => "path",
                "argument" => "environment.deployment_status",
                "state" => "failure",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_environment)
      # @return (see Client#get_environment)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an EnvironmentTemplateVersion is registered. Use this after invoking CreateEnvironmentTemplateVersion
    class EnvironmentTemplateVersionRegistered

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (150)
      # @option options [Integer] :delay (2)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 150,
          delay: 2,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_environment_template_version,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "environment_template_version.status",
                "state" => "success",
                "expected" => "DRAFT"
              },
              {
                "matcher" => "path",
                "argument" => "environment_template_version.status",
                "state" => "success",
                "expected" => "PUBLISHED"
              },
              {
                "matcher" => "path",
                "argument" => "environment_template_version.status",
                "state" => "failure",
                "expected" => "REGISTRATION_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_environment_template_version)
      # @return (see Client#get_environment_template_version)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an Service has deployed its instances and possibly pipeline. Use this after invoking CreateService
    class ServiceCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (999)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 999,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "service.status",
                "state" => "success",
                "expected" => "ACTIVE"
              },
              {
                "matcher" => "path",
                "argument" => "service.status",
                "state" => "failure",
                "expected" => "CREATE_FAILED_CLEANUP_COMPLETE"
              },
              {
                "matcher" => "path",
                "argument" => "service.status",
                "state" => "failure",
                "expected" => "CREATE_FAILED_CLEANUP_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "service.status",
                "state" => "failure",
                "expected" => "CREATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_service)
      # @return (see Client#get_service)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a Service, its instances, and possibly pipeline have been deleted after DeleteService is invoked
    class ServiceDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (999)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 999,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              },
              {
                "matcher" => "path",
                "argument" => "service.status",
                "state" => "failure",
                "expected" => "DELETE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_service)
      # @return (see Client#get_service)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a ServiceInstance is deployed. Use this after invoking CreateService or UpdateServiceInstance
    class ServiceInstanceDeployed

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (999)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 999,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_service_instance,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "service_instance.deployment_status",
                "state" => "success",
                "expected" => "SUCCEEDED"
              },
              {
                "matcher" => "path",
                "argument" => "service_instance.deployment_status",
                "state" => "failure",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_service_instance)
      # @return (see Client#get_service_instance)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an ServicePipeline is deployed. Use this after invoking CreateService or UpdateServicePipeline
    class ServicePipelineDeployed

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (360)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 360,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "service.pipeline.deployment_status",
                "state" => "success",
                "expected" => "SUCCEEDED"
              },
              {
                "matcher" => "path",
                "argument" => "service.pipeline.deployment_status",
                "state" => "failure",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_service)
      # @return (see Client#get_service)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a ServiceTemplateVersion is registered. Use this after invoking CreateServiceTemplateVersion
    class ServiceTemplateVersionRegistered

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (150)
      # @option options [Integer] :delay (2)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 150,
          delay: 2,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_service_template_version,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "service_template_version.status",
                "state" => "success",
                "expected" => "DRAFT"
              },
              {
                "matcher" => "path",
                "argument" => "service_template_version.status",
                "state" => "success",
                "expected" => "PUBLISHED"
              },
              {
                "matcher" => "path",
                "argument" => "service_template_version.status",
                "state" => "failure",
                "expected" => "REGISTRATION_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_service_template_version)
      # @return (see Client#get_service_template_version)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a Service, its instances, and possibly pipeline have been deployed after UpdateService is invoked
    class ServiceUpdated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (999)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 999,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "service.status",
                "state" => "success",
                "expected" => "ACTIVE"
              },
              {
                "matcher" => "path",
                "argument" => "service.status",
                "state" => "failure",
                "expected" => "UPDATE_FAILED_CLEANUP_COMPLETE"
              },
              {
                "matcher" => "path",
                "argument" => "service.status",
                "state" => "failure",
                "expected" => "UPDATE_FAILED_CLEANUP_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "service.status",
                "state" => "failure",
                "expected" => "UPDATE_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "service.status",
                "state" => "failure",
                "expected" => "UPDATE_COMPLETE_CLEANUP_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_service)
      # @return (see Client#get_service)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
