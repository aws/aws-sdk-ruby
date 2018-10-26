# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  class LifecycleHook

    extend Aws::Deprecations

    # @overload def initialize(group_name, name, options = {})
    #   @param [String] group_name
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :group_name
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @group_name = extract_group_name(args, options)
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def group_name
      @group_name
    end
    alias :auto_scaling_group_name :group_name

    # @return [String]
    def name
      @name
    end
    alias :lifecycle_hook_name :name

    # The state of the EC2 instance to which you want to attach the
    # lifecycle hook. The following are possible values:
    #
    # * autoscaling:EC2\_INSTANCE\_LAUNCHING
    #
    # * autoscaling:EC2\_INSTANCE\_TERMINATING
    # @return [String]
    def lifecycle_transition
      data[:lifecycle_transition]
    end

    # The ARN of the target that Amazon EC2 Auto Scaling sends notifications
    # to when an instance is in the transition state for the lifecycle hook.
    # The notification target can be either an SQS queue or an SNS topic.
    # @return [String]
    def notification_target_arn
      data[:notification_target_arn]
    end

    # The ARN of the IAM role that allows the Auto Scaling group to publish
    # to the specified notification target.
    # @return [String]
    def role_arn
      data[:role_arn]
    end

    # Additional information that you want to include any time Amazon EC2
    # Auto Scaling sends a message to the notification target.
    # @return [String]
    def notification_metadata
      data[:notification_metadata]
    end

    # The maximum time, in seconds, that can elapse before the lifecycle
    # hook times out. If the lifecycle hook times out, Amazon EC2 Auto
    # Scaling performs the default action. You can prevent the lifecycle
    # hook from timing out by calling RecordLifecycleActionHeartbeat.
    # @return [Integer]
    def heartbeat_timeout
      data[:heartbeat_timeout]
    end

    # The maximum time, in seconds, that an instance can remain in a
    # `Pending:Wait` or `Terminating:Wait` state. The maximum is 172800
    # seconds (48 hours) or 100 times `HeartbeatTimeout`, whichever is
    # smaller.
    # @return [Integer]
    def global_timeout
      data[:global_timeout]
    end

    # Defines the action the Auto Scaling group should take when the
    # lifecycle hook timeout elapses or if an unexpected failure occurs. The
    # valid values are `CONTINUE` and `ABANDON`. The default value is
    # `CONTINUE`.
    # @return [String]
    def default_result
      data[:default_result]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {LifecycleHook}.
    # Returns `self` making it possible to chain methods.
    #
    #     lifecycle_hook.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_lifecycle_hooks(
        auto_scaling_group_name: @group_name,
        lifecycle_hook_names: [@name]
      )
      @data = resp.lifecycle_hooks[0]
      self
    end
    alias :reload :load

    # @return [Types::LifecycleHook]
    #   Returns the data for this {LifecycleHook}. Calls
    #   {Client#describe_lifecycle_hooks} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @deprecated Use [Aws::AutoScaling::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource remains unchanged
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) {|instance| instance.state.name == 'running' }
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is set
    # by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    #
    # @yield param [Resource] resource to be used in the waiting condition
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is encountered
    #   while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Waiters::Waiter.new(options).wait({})
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   lifecycle_hook.complete({
    #     lifecycle_action_token: "LifecycleActionToken",
    #     lifecycle_action_result: "LifecycleActionResult", # required
    #     instance_id: "XmlStringMaxLen19",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :lifecycle_action_token
    #   A universally unique identifier (UUID) that identifies a specific
    #   lifecycle action associated with an instance. Amazon EC2 Auto Scaling
    #   sends this token to the notification target you specified when you
    #   created the lifecycle hook.
    # @option options [required, String] :lifecycle_action_result
    #   The action for the group to take. This parameter can be either
    #   `CONTINUE` or `ABANDON`.
    # @option options [String] :instance_id
    #   The ID of the instance.
    # @return [Types::CompleteLifecycleActionAnswer]
    def complete(options = {})
      options = options.merge(
        auto_scaling_group_name: @group_name,
        lifecycle_hook_name: @name
      )
      resp = @client.complete_lifecycle_action(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   lifecycle_hook.delete()
    # @param [Hash] options ({})
    # @return [Types::DeleteLifecycleHookAnswer]
    def delete(options = {})
      options = options.merge(
        auto_scaling_group_name: @group_name,
        lifecycle_hook_name: @name
      )
      resp = @client.delete_lifecycle_hook(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   lifecycle_hook.put({
    #     lifecycle_transition: "LifecycleTransition",
    #     role_arn: "ResourceName",
    #     notification_target_arn: "NotificationTargetResourceName",
    #     notification_metadata: "XmlStringMaxLen1023",
    #     heartbeat_timeout: 1,
    #     default_result: "LifecycleActionResult",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :lifecycle_transition
    #   The instance state to which you want to attach the lifecycle hook. The
    #   possible values are:
    #
    #   * autoscaling:EC2\_INSTANCE\_LAUNCHING
    #
    #   * autoscaling:EC2\_INSTANCE\_TERMINATING
    #
    #   This parameter is required for new lifecycle hooks, but optional when
    #   updating existing hooks.
    # @option options [String] :role_arn
    #   The ARN of the IAM role that allows the Auto Scaling group to publish
    #   to the specified notification target.
    #
    #   This parameter is required for new lifecycle hooks, but optional when
    #   updating existing hooks.
    # @option options [String] :notification_target_arn
    #   The ARN of the notification target that Amazon EC2 Auto Scaling will
    #   use to notify you when an instance is in the transition state for the
    #   lifecycle hook. This target can be either an SQS queue or an SNS
    #   topic. If you specify an empty string, this overrides the current ARN.
    #
    #   This operation uses the JSON format when sending notifications to an
    #   Amazon SQS queue, and an email key/value pair format when sending
    #   notifications to an Amazon SNS topic.
    #
    #   When you specify a notification target, Amazon EC2 Auto Scaling sends
    #   it a test message. Test messages contains the following additional
    #   key/value pair: `"Event": "autoscaling:TEST_NOTIFICATION"`.
    # @option options [String] :notification_metadata
    #   Contains additional information that you want to include any time
    #   Amazon EC2 Auto Scaling sends a message to the notification target.
    # @option options [Integer] :heartbeat_timeout
    #   The maximum time, in seconds, that can elapse before the lifecycle
    #   hook times out. The range is from 30 to 7200 seconds. The default is
    #   3600 seconds (1 hour).
    #
    #   If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the
    #   default action. You can prevent the lifecycle hook from timing out by
    #   calling RecordLifecycleActionHeartbeat.
    # @option options [String] :default_result
    #   Defines the action the Auto Scaling group should take when the
    #   lifecycle hook timeout elapses or if an unexpected failure occurs.
    #   This parameter can be either `CONTINUE` or `ABANDON`. The default
    #   value is `ABANDON`.
    # @return [Types::PutLifecycleHookAnswer]
    def put(options = {})
      options = options.merge(
        auto_scaling_group_name: @group_name,
        lifecycle_hook_name: @name
      )
      resp = @client.put_lifecycle_hook(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   lifecycle_hook.record_heartbeat({
    #     lifecycle_action_token: "LifecycleActionToken",
    #     instance_id: "XmlStringMaxLen19",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :lifecycle_action_token
    #   A token that uniquely identifies a specific lifecycle action
    #   associated with an instance. Amazon EC2 Auto Scaling sends this token
    #   to the notification target you specified when you created the
    #   lifecycle hook.
    # @option options [String] :instance_id
    #   The ID of the instance.
    # @return [Types::RecordLifecycleActionHeartbeatAnswer]
    def record_heartbeat(options = {})
      options = options.merge(
        auto_scaling_group_name: @group_name,
        lifecycle_hook_name: @name
      )
      resp = @client.record_lifecycle_action_heartbeat(options)
      resp.data
    end

    # @!group Associations

    # @return [AutoScalingGroup]
    def group
      AutoScalingGroup.new(
        name: @group_name,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        group_name: @group_name,
        name: @name
      }
    end
    deprecated(:identifiers)

    private

    def extract_group_name(args, options)
      value = args[0] || options.delete(:group_name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :group_name"
      else
        msg = "expected :group_name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_name(args, options)
      value = args[1] || options.delete(:name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :name"
      else
        msg = "expected :name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
