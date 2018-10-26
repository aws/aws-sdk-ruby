# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  class ScalingPolicy

    extend Aws::Deprecations

    # @overload def initialize(name, options = {})
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def name
      @name
    end
    alias :policy_name :name

    # The name of the Auto Scaling group.
    # @return [String]
    def auto_scaling_group_name
      data[:auto_scaling_group_name]
    end

    # The Amazon Resource Name (ARN) of the policy.
    # @return [String]
    def policy_arn
      data[:policy_arn]
    end

    # The policy type. Valid values are `SimpleScaling` and `StepScaling`.
    # @return [String]
    def policy_type
      data[:policy_type]
    end

    # The adjustment type, which specifies how `ScalingAdjustment` is
    # interpreted. Valid values are `ChangeInCapacity`, `ExactCapacity`, and
    # `PercentChangeInCapacity`.
    # @return [String]
    def adjustment_type
      data[:adjustment_type]
    end

    # Available for backward compatibility. Use `MinAdjustmentMagnitude`
    # instead.
    # @return [Integer]
    def min_adjustment_step
      data[:min_adjustment_step]
    end

    # The minimum number of instances to scale. If the value of
    # `AdjustmentType` is `PercentChangeInCapacity`, the scaling policy
    # changes the `DesiredCapacity` of the Auto Scaling group by at least
    # this many instances. Otherwise, the error is `ValidationError`.
    # @return [Integer]
    def min_adjustment_magnitude
      data[:min_adjustment_magnitude]
    end

    # The amount by which to scale, based on the specified adjustment type.
    # A positive value adds to the current capacity while a negative number
    # removes from the current capacity.
    # @return [Integer]
    def scaling_adjustment
      data[:scaling_adjustment]
    end

    # The amount of time, in seconds, after a scaling activity completes
    # before any further dynamic scaling activities can start.
    # @return [Integer]
    def cooldown
      data[:cooldown]
    end

    # A set of adjustments that enable you to scale based on the size of the
    # alarm breach.
    # @return [Array<Types::StepAdjustment>]
    def step_adjustments
      data[:step_adjustments]
    end

    # The aggregation type for the CloudWatch metrics. Valid values are
    # `Minimum`, `Maximum`, and `Average`.
    # @return [String]
    def metric_aggregation_type
      data[:metric_aggregation_type]
    end

    # The estimated time, in seconds, until a newly launched instance can
    # contribute to the CloudWatch metrics.
    # @return [Integer]
    def estimated_instance_warmup
      data[:estimated_instance_warmup]
    end

    # The CloudWatch alarms related to the policy.
    # @return [Array<Types::Alarm>]
    def alarms
      data[:alarms]
    end

    # A target tracking policy.
    # @return [Types::TargetTrackingConfiguration]
    def target_tracking_configuration
      data[:target_tracking_configuration]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {ScalingPolicy}.
    # Returns `self` making it possible to chain methods.
    #
    #     scaling_policy.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_policies(policy_names: [@name])
      @data = resp.scaling_policies[0]
      self
    end
    alias :reload :load

    # @return [Types::ScalingPolicy]
    #   Returns the data for this {ScalingPolicy}. Calls
    #   {Client#describe_policies} if {#data_loaded?} is `false`.
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
    #   scaling_policy.delete({
    #     auto_scaling_group_name: "ResourceName",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(policy_name: @name)
      resp = @client.delete_policy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   scaling_policy.execute({
    #     auto_scaling_group_name: "ResourceName",
    #     honor_cooldown: false,
    #     metric_value: 1.0,
    #     breach_threshold: 1.0,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    # @option options [Boolean] :honor_cooldown
    #   Indicates whether Amazon EC2 Auto Scaling waits for the cooldown
    #   period to complete before executing the policy.
    #
    #   This parameter is not supported if the policy type is `StepScaling`.
    #
    #   For more information, see [Scaling Cooldowns][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    # @option options [Float] :metric_value
    #   The metric value to compare to `BreachThreshold`. This enables you to
    #   execute a policy of type `StepScaling` and determine which step
    #   adjustment to use. For example, if the breach threshold is 50 and you
    #   want to use a step adjustment with a lower bound of 0 and an upper
    #   bound of 10, you can set the metric value to 59.
    #
    #   If you specify a metric value that doesn't correspond to a step
    #   adjustment for the policy, the call returns an error.
    #
    #   This parameter is required if the policy type is `StepScaling` and not
    #   supported otherwise.
    # @option options [Float] :breach_threshold
    #   The breach threshold for the alarm.
    #
    #   This parameter is required if the policy type is `StepScaling` and not
    #   supported otherwise.
    # @return [EmptyStructure]
    def execute(options = {})
      options = options.merge(policy_name: @name)
      resp = @client.execute_policy(options)
      resp.data
    end

    # @!group Associations

    # @return [AutoScalingGroup, nil]
    def group
      if data[:auto_scaling_group_name]
        AutoScalingGroup.new(
          name: data[:auto_scaling_group_name],
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      { name: @name }
    end
    deprecated(:identifiers)

    private

    def extract_name(args, options)
      value = args[0] || options.delete(:name)
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
