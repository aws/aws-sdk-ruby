# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module OpsWorks
    module Waiters
      class AppExists

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (1)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 1,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeApps",
              "acceptors" => [
                {
                  "expected" => 200,
                  "matcher" => "status",
                  "state" => "success"
                },
                {
                  "matcher" => "status",
                  "expected" => 400,
                  "state" => "failure"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_apps)
        # @return (see Client#describe_apps)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class DeploymentSuccessful

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 15,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeDeployments",
              "description" => "Wait until a deployment has completed successfully",
              "acceptors" => [
                {
                  "expected" => "successful",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Deployments[].Status"
                },
                {
                  "expected" => "failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Deployments[].Status"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_deployments)
        # @return (see Client#describe_deployments)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class InstanceOnline

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 15,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeInstances",
              "description" => "Wait until OpsWorks instance is online.",
              "acceptors" => [
                {
                  "expected" => "online",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "setup_failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "shutting_down",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "start_failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "stopped",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "stopping",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "terminating",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "terminated",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "stop_failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_instances)
        # @return (see Client#describe_instances)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class InstanceStopped

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 15,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeInstances",
              "description" => "Wait until OpsWorks instance is stopped.",
              "acceptors" => [
                {
                  "expected" => "stopped",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "booting",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "online",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "pending",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "rebooting",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "requested",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "running_setup",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "setup_failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "start_failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "stop_failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_instances)
        # @return (see Client#describe_instances)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class InstanceTerminated

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 15,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeInstances",
              "description" => "Wait until OpsWorks instance is terminated.",
              "acceptors" => [
                {
                  "expected" => "terminated",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "ResourceNotFoundException",
                  "matcher" => "error",
                  "state" => "success"
                },
                {
                  "expected" => "booting",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "online",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "pending",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "rebooting",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "requested",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "running_setup",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "setup_failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                },
                {
                  "expected" => "start_failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Instances[].Status"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_instances)
        # @return (see Client#describe_instances)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end
    end
  end
end
