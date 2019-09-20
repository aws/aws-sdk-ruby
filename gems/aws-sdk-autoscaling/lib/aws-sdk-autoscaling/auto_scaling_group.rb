# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  class AutoScalingGroup

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
    alias :auto_scaling_group_name :name

    # The Amazon Resource Name (ARN) of the Auto Scaling group.
    # @return [String]
    def auto_scaling_group_arn
      data[:auto_scaling_group_arn]
    end

    # The name of the associated launch configuration.
    # @return [String]
    def launch_configuration_name
      data[:launch_configuration_name]
    end

    # The launch template for the group.
    # @return [Types::LaunchTemplateSpecification]
    def launch_template
      data[:launch_template]
    end

    # The mixed instances policy for the group.
    # @return [Types::MixedInstancesPolicy]
    def mixed_instances_policy
      data[:mixed_instances_policy]
    end

    # The minimum size of the group.
    # @return [Integer]
    def min_size
      data[:min_size]
    end

    # The maximum size of the group.
    # @return [Integer]
    def max_size
      data[:max_size]
    end

    # The desired size of the group.
    # @return [Integer]
    def desired_capacity
      data[:desired_capacity]
    end

    # The amount of time, in seconds, after a scaling activity completes
    # before another scaling activity can start.
    # @return [Integer]
    def default_cooldown
      data[:default_cooldown]
    end

    # One or more Availability Zones for the group.
    # @return [Array<String>]
    def availability_zones
      data[:availability_zones]
    end

    # One or more load balancers associated with the group.
    # @return [Array<String>]
    def load_balancer_names
      data[:load_balancer_names]
    end

    # The Amazon Resource Names (ARN) of the target groups for your load
    # balancer.
    # @return [Array<String>]
    def target_group_arns
      data[:target_group_arns]
    end

    # The service to use for the health checks. The valid values are `EC2`
    # and `ELB`. If you configure an Auto Scaling group to use ELB health
    # checks, it considers the instance unhealthy if it fails either the EC2
    # status checks or the load balancer health checks.
    # @return [String]
    def health_check_type
      data[:health_check_type]
    end

    # The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    # before checking the health status of an EC2 instance that has come
    # into service.
    # @return [Integer]
    def health_check_grace_period
      data[:health_check_grace_period]
    end

    # The date and time the group was created.
    # @return [Time]
    def created_time
      data[:created_time]
    end

    # The suspended processes associated with the group.
    # @return [Array<Types::SuspendedProcess>]
    def suspended_processes
      data[:suspended_processes]
    end

    # The name of the placement group into which to launch your instances,
    # if any.
    # @return [String]
    def placement_group
      data[:placement_group]
    end

    # One or more subnet IDs, if applicable, separated by commas.
    # @return [String]
    def vpc_zone_identifier
      data[:vpc_zone_identifier]
    end

    # The metrics enabled for the group.
    # @return [Array<Types::EnabledMetric>]
    def enabled_metrics
      data[:enabled_metrics]
    end

    # The current state of the group when DeleteAutoScalingGroup is in
    # progress.
    # @return [String]
    def status
      data[:status]
    end

    # The termination policies for the group.
    # @return [Array<String>]
    def termination_policies
      data[:termination_policies]
    end

    # Indicates whether newly launched instances are protected from
    # termination by Amazon EC2 Auto Scaling when scaling in.
    # @return [Boolean]
    def new_instances_protected_from_scale_in
      data[:new_instances_protected_from_scale_in]
    end

    # The Amazon Resource Name (ARN) of the service-linked role that the
    # Auto Scaling group uses to call other AWS services on your behalf.
    # @return [String]
    def service_linked_role_arn
      data[:service_linked_role_arn]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {AutoScalingGroup}.
    # Returns `self` making it possible to chain methods.
    #
    #     auto_scaling_group.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_auto_scaling_groups(auto_scaling_group_names: [@name])
      @data = resp.auto_scaling_groups[0]
      self
    end
    alias :reload :load

    # @return [Types::AutoScalingGroup]
    #   Returns the data for this {AutoScalingGroup}. Calls
    #   {Client#describe_auto_scaling_groups} if {#data_loaded?} is `false`.
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

    # @param [Hash] options ({})
    # @return [Boolean]
    #   Returns `true` if the AutoScalingGroup exists.
    def exists?(options = {})
      begin
        wait_until_exists(options.merge(max_attempts: 1))
        true
      rescue Aws::Waiters::Errors::UnexpectedError => e
        raise e.error
      rescue Aws::Waiters::Errors::WaiterFailed
        false
      end
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (10)
    # @option options [Float] :delay (5)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [AutoScalingGroup]
    def wait_until_exists(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::GroupExists.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      waiter.wait(params.merge(auto_scaling_group_names: [@name]))
      AutoScalingGroup.new({
        name: @name,
        client: @client
      })
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (40)
    # @option options [Float] :delay (15)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [AutoScalingGroup]
    def wait_until_in_service(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::GroupInService.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      waiter.wait(params.merge(auto_scaling_group_names: [@name]))
      AutoScalingGroup.new({
        name: @name,
        client: @client
      })
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (40)
    # @option options [Float] :delay (15)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [AutoScalingGroup]
    def wait_until_not_exists(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::GroupNotExists.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      waiter.wait(params.merge(auto_scaling_group_names: [@name]))
      AutoScalingGroup.new({
        name: @name,
        client: @client
      })
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
    #   auto_scaling_group.attach_instances({
    #     instance_ids: ["XmlStringMaxLen19"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    # @return [EmptyStructure]
    def attach_instances(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = @client.attach_instances(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.delete({
    #     force_delete: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :force_delete
    #   Specifies that the group is to be deleted along with all instances
    #   associated with the group, without waiting for all instances to be
    #   terminated. This parameter also deletes any lifecycle actions
    #   associated with the group.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = @client.delete_auto_scaling_group(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   activity = auto_scaling_group.detach_instances({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     should_decrement_desired_capacity: false, # required
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    # @option options [required, Boolean] :should_decrement_desired_capacity
    #   Indicates whether the Auto Scaling group decrements the desired
    #   capacity value by the number of instances detached.
    # @return [Activity::Collection]
    def detach_instances(options = {})
      batch = []
      options = options.merge(auto_scaling_group_name: @name)
      resp = @client.detach_instances(options)
      resp.data.activities.each do |a|
        batch << Activity.new(
          id: a.activity_id,
          data: a,
          client: @client
        )
      end
      Activity::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.disable_metrics_collection({
    #     metrics: ["XmlStringMaxLen255"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :metrics
    #   One or more of the following metrics. If you omit this parameter, all
    #   metrics are disabled.
    #
    #   * `GroupMinSize`
    #
    #   * `GroupMaxSize`
    #
    #   * `GroupDesiredCapacity`
    #
    #   * `GroupInServiceInstances`
    #
    #   * `GroupPendingInstances`
    #
    #   * `GroupStandbyInstances`
    #
    #   * `GroupTerminatingInstances`
    #
    #   * `GroupTotalInstances`
    # @return [EmptyStructure]
    def disable_metrics_collection(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = @client.disable_metrics_collection(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.enable_metrics_collection({
    #     metrics: ["XmlStringMaxLen255"],
    #     granularity: "XmlStringMaxLen255", # required
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :metrics
    #   One or more of the following metrics. If you omit this parameter, all
    #   metrics are enabled.
    #
    #   * `GroupMinSize`
    #
    #   * `GroupMaxSize`
    #
    #   * `GroupDesiredCapacity`
    #
    #   * `GroupInServiceInstances`
    #
    #   * `GroupPendingInstances`
    #
    #   * `GroupStandbyInstances`
    #
    #   * `GroupTerminatingInstances`
    #
    #   * `GroupTotalInstances`
    # @option options [required, String] :granularity
    #   The granularity to associate with the metrics to collect. The only
    #   valid value is `1Minute`.
    # @return [EmptyStructure]
    def enable_metrics_collection(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = @client.enable_metrics_collection(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   scalingpolicy = auto_scaling_group.put_scaling_policy({
    #     policy_name: "XmlStringMaxLen255", # required
    #     policy_type: "XmlStringMaxLen64",
    #     adjustment_type: "XmlStringMaxLen255",
    #     min_adjustment_step: 1,
    #     min_adjustment_magnitude: 1,
    #     scaling_adjustment: 1,
    #     cooldown: 1,
    #     metric_aggregation_type: "XmlStringMaxLen32",
    #     step_adjustments: [
    #       {
    #         metric_interval_lower_bound: 1.0,
    #         metric_interval_upper_bound: 1.0,
    #         scaling_adjustment: 1, # required
    #       },
    #     ],
    #     estimated_instance_warmup: 1,
    #     target_tracking_configuration: {
    #       predefined_metric_specification: {
    #         predefined_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, ALBRequestCountPerTarget
    #         resource_label: "XmlStringMaxLen1023",
    #       },
    #       customized_metric_specification: {
    #         metric_name: "MetricName", # required
    #         namespace: "MetricNamespace", # required
    #         dimensions: [
    #           {
    #             name: "MetricDimensionName", # required
    #             value: "MetricDimensionValue", # required
    #           },
    #         ],
    #         statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #         unit: "MetricUnit",
    #       },
    #       target_value: 1.0, # required
    #       disable_scale_in: false,
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :policy_name
    #   The name of the policy.
    # @option options [String] :policy_type
    #   The policy type. The valid values are `SimpleScaling`, `StepScaling`,
    #   and `TargetTrackingScaling`. If the policy type is null, the value is
    #   treated as `SimpleScaling`.
    # @option options [String] :adjustment_type
    #   Specifies whether the `ScalingAdjustment` parameter is an absolute
    #   number or a percentage of the current capacity. The valid values are
    #   `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
    #
    #   Valid only if the policy type is `StepScaling` or `SimpleScaling`. For
    #   more information, see [Scaling Adjustment Types][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment
    # @option options [Integer] :min_adjustment_step
    #   Available for backward compatibility. Use `MinAdjustmentMagnitude`
    #   instead.
    # @option options [Integer] :min_adjustment_magnitude
    #   The minimum number of instances to scale. If the value of
    #   `AdjustmentType` is `PercentChangeInCapacity`, the scaling policy
    #   changes the `DesiredCapacity` of the Auto Scaling group by at least
    #   this many instances. Otherwise, the error is `ValidationError`.
    #
    #   This property replaces the `MinAdjustmentStep` property. For example,
    #   suppose that you create a step scaling policy to scale out an Auto
    #   Scaling group by 25 percent and you specify a `MinAdjustmentMagnitude`
    #   of 2. If the group has 4 instances and the scaling policy is
    #   performed, 25 percent of 4 is 1. However, because you specified a
    #   `MinAdjustmentMagnitude` of 2, Amazon EC2 Auto Scaling scales out the
    #   group by 2 instances.
    #
    #   Valid only if the policy type is `SimpleScaling` or `StepScaling`.
    # @option options [Integer] :scaling_adjustment
    #   The amount by which a simple scaling policy scales the Auto Scaling
    #   group in response to an alarm breach. The adjustment is based on the
    #   value that you specified in the `AdjustmentType` parameter (either an
    #   absolute number or a percentage). A positive value adds to the current
    #   capacity and a negative value subtracts from the current capacity. For
    #   exact capacity, you must specify a positive value.
    #
    #   Conditional: If you specify `SimpleScaling` for the policy type, you
    #   must specify this parameter. (Not used with any other policy type.)
    # @option options [Integer] :cooldown
    #   The amount of time, in seconds, after a scaling activity completes
    #   before any further dynamic scaling activities can start. If this
    #   parameter is not specified, the default cooldown period for the group
    #   applies.
    #
    #   Valid only if the policy type is `SimpleScaling`. For more
    #   information, see [Scaling Cooldowns][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    # @option options [String] :metric_aggregation_type
    #   The aggregation type for the CloudWatch metrics. The valid values are
    #   `Minimum`, `Maximum`, and `Average`. If the aggregation type is null,
    #   the value is treated as `Average`.
    #
    #   Valid only if the policy type is `StepScaling`.
    # @option options [Array<Types::StepAdjustment>] :step_adjustments
    #   A set of adjustments that enable you to scale based on the size of the
    #   alarm breach.
    #
    #   Conditional: If you specify `StepScaling` for the policy type, you
    #   must specify this parameter. (Not used with any other policy type.)
    # @option options [Integer] :estimated_instance_warmup
    #   The estimated time, in seconds, until a newly launched instance can
    #   contribute to the CloudWatch metrics. The default is to use the value
    #   specified for the default cooldown period for the group.
    #
    #   Valid only if the policy type is `StepScaling` or
    #   `TargetTrackingScaling`.
    # @option options [Types::TargetTrackingConfiguration] :target_tracking_configuration
    #   A target tracking scaling policy. Includes support for predefined or
    #   customized metrics.
    #
    #   For more information, see [TargetTrackingConfiguration][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #   Conditional: If you specify `TargetTrackingScaling` for the policy
    #   type, you must specify this parameter. (Not used with any other policy
    #   type.)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html
    # @return [ScalingPolicy]
    def put_scaling_policy(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = @client.put_scaling_policy(options)
      ScalingPolicy.new(
        name: options[:policy_name],
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   scheduledaction = auto_scaling_group.put_scheduled_update_group_action({
    #     scheduled_action_name: "XmlStringMaxLen255", # required
    #     time: Time.now,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     recurrence: "XmlStringMaxLen255",
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :scheduled_action_name
    #   The name of this scaling action.
    # @option options [Time,DateTime,Date,Integer,String] :time
    #   This parameter is no longer used.
    # @option options [Time,DateTime,Date,Integer,String] :start_time
    #   The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ
    #   format in UTC/GMT only and in quotes (for example,
    #   `"2019-06-01T00:00:00Z"`).
    #
    #   If you specify `Recurrence` and `StartTime`, Amazon EC2 Auto Scaling
    #   performs the action at this time, and then performs the action based
    #   on the specified recurrence.
    #
    #   If you try to schedule your action in the past, Amazon EC2 Auto
    #   Scaling returns an error message.
    # @option options [Time,DateTime,Date,Integer,String] :end_time
    #   The date and time for the recurring schedule to end. Amazon EC2 Auto
    #   Scaling does not perform the action after this time.
    # @option options [String] :recurrence
    #   The recurring schedule for this action, in Unix cron syntax format.
    #   This format consists of five fields separated by white spaces:
    #   \[Minute\] \[Hour\] \[Day\_of\_Month\] \[Month\_of\_Year\]
    #   \[Day\_of\_Week\]. The value must be in quotes (for example, `"30 0 1
    #   1,6,12 *"`). For more information about this format, see [Crontab][1].
    #
    #   When `StartTime` and `EndTime` are specified with `Recurrence`, they
    #   form the boundaries of when the recurring action starts and stops.
    #
    #
    #
    #   [1]: http://crontab.org
    # @option options [Integer] :min_size
    #   The minimum number of instances in the Auto Scaling group.
    # @option options [Integer] :max_size
    #   The maximum number of instances in the Auto Scaling group.
    # @option options [Integer] :desired_capacity
    #   The number of EC2 instances that should be running in the Auto Scaling
    #   group.
    # @return [ScheduledAction]
    def put_scheduled_update_group_action(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = @client.put_scheduled_update_group_action(options)
      ScheduledAction.new(
        name: options[:scheduled_action_name],
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.resume_processes({
    #     scaling_processes: ["XmlStringMaxLen255"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :scaling_processes
    #   One or more of the following processes. If you omit this parameter,
    #   all processes are specified.
    #
    #   * `Launch`
    #
    #   * `Terminate`
    #
    #   * `HealthCheck`
    #
    #   * `ReplaceUnhealthy`
    #
    #   * `AZRebalance`
    #
    #   * `AlarmNotification`
    #
    #   * `ScheduledActions`
    #
    #   * `AddToLoadBalancer`
    # @return [EmptyStructure]
    def resume_processes(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = @client.resume_processes(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.set_desired_capacity({
    #     desired_capacity: 1, # required
    #     honor_cooldown: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, Integer] :desired_capacity
    #   The number of EC2 instances that should be running in the Auto Scaling
    #   group.
    # @option options [Boolean] :honor_cooldown
    #   Indicates whether Amazon EC2 Auto Scaling waits for the cooldown
    #   period to complete before initiating a scaling activity to set your
    #   Auto Scaling group to its new capacity. By default, Amazon EC2 Auto
    #   Scaling does not honor the cooldown period during manual scaling
    #   activities.
    # @return [EmptyStructure]
    def set_desired_capacity(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = @client.set_desired_capacity(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.suspend_processes({
    #     scaling_processes: ["XmlStringMaxLen255"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :scaling_processes
    #   One or more of the following processes. If you omit this parameter,
    #   all processes are specified.
    #
    #   * `Launch`
    #
    #   * `Terminate`
    #
    #   * `HealthCheck`
    #
    #   * `ReplaceUnhealthy`
    #
    #   * `AZRebalance`
    #
    #   * `AlarmNotification`
    #
    #   * `ScheduledActions`
    #
    #   * `AddToLoadBalancer`
    # @return [EmptyStructure]
    def suspend_processes(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = @client.suspend_processes(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   autoscalinggroup = auto_scaling_group.update({
    #     launch_configuration_name: "ResourceName",
    #     launch_template: {
    #       launch_template_id: "XmlStringMaxLen255",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "XmlStringMaxLen255",
    #     },
    #     mixed_instances_policy: {
    #       launch_template: {
    #         launch_template_specification: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255",
    #         },
    #         overrides: [
    #           {
    #             instance_type: "XmlStringMaxLen255",
    #           },
    #         ],
    #       },
    #       instances_distribution: {
    #         on_demand_allocation_strategy: "XmlString",
    #         on_demand_base_capacity: 1,
    #         on_demand_percentage_above_base_capacity: 1,
    #         spot_allocation_strategy: "XmlString",
    #         spot_instance_pools: 1,
    #         spot_max_price: "MixedInstanceSpotPrice",
    #       },
    #     },
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #     default_cooldown: 1,
    #     availability_zones: ["XmlStringMaxLen255"],
    #     health_check_type: "XmlStringMaxLen32",
    #     health_check_grace_period: 1,
    #     placement_group: "XmlStringMaxLen255",
    #     vpc_zone_identifier: "XmlStringMaxLen2047",
    #     termination_policies: ["XmlStringMaxLen1600"],
    #     new_instances_protected_from_scale_in: false,
    #     service_linked_role_arn: "ResourceName",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :launch_configuration_name
    #   The name of the launch configuration. If you specify
    #   `LaunchConfigurationName` in your update request, you can't specify
    #   `LaunchTemplate` or `MixedInstancesPolicy`.
    #
    #   To update an Auto Scaling group with a launch configuration with
    #   `InstanceMonitoring` set to `false`, you must first disable the
    #   collection of group metrics. Otherwise, you get an error. If you have
    #   previously enabled the collection of group metrics, you can disable it
    #   using DisableMetricsCollection.
    # @option options [Types::LaunchTemplateSpecification] :launch_template
    #   The launch template and version to use to specify the updates. If you
    #   specify `LaunchTemplate` in your update request, you can't specify
    #   `LaunchConfigurationName` or `MixedInstancesPolicy`.
    #
    #   For more information, see [LaunchTemplateSpecification][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_LaunchTemplateSpecification.html
    # @option options [Types::MixedInstancesPolicy] :mixed_instances_policy
    #   An embedded object that specifies a mixed instances policy.
    #
    #   In your call to `UpdateAutoScalingGroup`, you can make changes to the
    #   policy that is specified. All optional parameters are left unchanged
    #   if not specified.
    #
    #   For more information, see [MixedInstancesPolicy][1] in the *Amazon EC2
    #   Auto Scaling API Reference* and [Auto Scaling Groups with Multiple
    #   Instance Types and Purchase Options][2] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_MixedInstancesPolicy.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html
    # @option options [Integer] :min_size
    #   The minimum size of the Auto Scaling group.
    # @option options [Integer] :max_size
    #   The maximum size of the Auto Scaling group.
    # @option options [Integer] :desired_capacity
    #   The number of EC2 instances that should be running in the Auto Scaling
    #   group. This number must be greater than or equal to the minimum size
    #   of the group and less than or equal to the maximum size of the group.
    # @option options [Integer] :default_cooldown
    #   The amount of time, in seconds, after a scaling activity completes
    #   before another scaling activity can start. The default value is `300`.
    #   This cooldown period is not used when a scaling-specific cooldown is
    #   specified.
    #
    #   Cooldown periods are not supported for target tracking scaling
    #   policies, step scaling policies, or scheduled scaling. For more
    #   information, see [Scaling Cooldowns][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    # @option options [Array<String>] :availability_zones
    #   One or more Availability Zones for the group.
    # @option options [String] :health_check_type
    #   The service to use for the health checks. The valid values are `EC2`
    #   and `ELB`. If you configure an Auto Scaling group to use ELB health
    #   checks, it considers the instance unhealthy if it fails either the EC2
    #   status checks or the load balancer health checks.
    # @option options [Integer] :health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service. The default value is `0`.
    #
    #   For more information, see [Health Check Grace Period][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Conditional: This parameter is required if you are adding an `ELB`
    #   health check.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period
    # @option options [String] :placement_group
    #   The name of the placement group into which to launch your instances,
    #   if any. A placement group is a logical grouping of instances within a
    #   single Availability Zone. You cannot specify multiple Availability
    #   Zones and a placement group. For more information, see [Placement
    #   Groups][1] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    # @option options [String] :vpc_zone_identifier
    #   A comma-separated list of subnet IDs for virtual private cloud (VPC).
    #
    #   If you specify `VPCZoneIdentifier` with `AvailabilityZones`, the
    #   subnets that you specify for this parameter must reside in those
    #   Availability Zones.
    # @option options [Array<String>] :termination_policies
    #   A standalone termination policy or a list of termination policies used
    #   to select the instance to terminate. The policies are executed in the
    #   order that they are listed.
    #
    #   For more information, see [Controlling Which Instances Auto Scaling
    #   Terminates During Scale In][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html
    # @option options [Boolean] :new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Amazon EC2 Auto Scaling when scaling in.
    #
    #   For more information about preventing instances from terminating on
    #   scale in, see [Instance Protection][1] in the *Amazon EC2 Auto Scaling
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection
    # @option options [String] :service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other AWS services on your behalf. For
    #   more information, see [Service-Linked Roles][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html
    # @return [AutoScalingGroup]
    def update(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = @client.update_auto_scaling_group(options)
      AutoScalingGroup.new(
        name: options[:auto_scaling_group_name],
        client: @client
      )
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   activities = auto_scaling_group.activities({
    #     activity_ids: ["XmlString"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :activity_ids
    #   The activity IDs of the desired scaling activities. You can specify up
    #   to 50 IDs. If you omit this parameter, all activities for the past six
    #   weeks are described. If unknown activities are requested, they are
    #   ignored with no error. If you specify an Auto Scaling group, the
    #   results are limited to that group.
    # @return [Activity::Collection]
    def activities(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(auto_scaling_group_name: @name)
        resp = @client.describe_scaling_activities(options)
        resp.each_page do |page|
          batch = []
          page.data.activities.each do |a|
            batch << Activity.new(
              id: a.activity_id,
              data: a,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Activity::Collection.new(batches)
    end

    # @return [Instance::Collection]
    def instances
      batch = []
      data[:instances].each do |d|
        batch << Instance.new(
          group_name: @name,
          id: d[:instance_id],
          data: d,
          client: @client
        )
      end
      Instance::Collection.new([batch], size: batch.size)
    end

    # @return [LaunchConfiguration, nil]
    def launch_configuration
      if data[:launch_configuration_name]
        LaunchConfiguration.new(
          name: data[:launch_configuration_name],
          client: @client
        )
      else
        nil
      end
    end

    # @param [String] name
    # @return [LifecycleHook]
    def lifecycle_hook(name)
      LifecycleHook.new(
        group_name: @name,
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   lifecycle_hooks = auto_scaling_group.lifecycle_hooks({
    #     lifecycle_hook_names: ["AsciiStringMaxLen255"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :lifecycle_hook_names
    #   The names of one or more lifecycle hooks. If you omit this parameter,
    #   all lifecycle hooks are described.
    # @return [LifecycleHook::Collection]
    def lifecycle_hooks(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = options.merge(auto_scaling_group_name: @name)
        resp = @client.describe_lifecycle_hooks(options)
        resp.data.lifecycle_hooks.each do |l|
          batch << LifecycleHook.new(
            group_name: l.auto_scaling_group_name,
            name: l.lifecycle_hook_name,
            data: l,
            client: @client
          )
        end
        y.yield(batch)
      end
      LifecycleHook::Collection.new(batches)
    end

    # @param [String] name
    # @return [LoadBalancer]
    def load_balancer(name)
      LoadBalancer.new(
        group_name: @name,
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   load_balancers = auto_scaling_group.load_balancers({
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    # @option options [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is `100` and the maximum value is `100`.
    # @return [LoadBalancer::Collection]
    def load_balancers(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = options.merge(auto_scaling_group_name: @name)
        resp = @client.describe_load_balancers(options)
        resp.data.load_balancers.each do |l|
          batch << LoadBalancer.new(
            group_name: @name,
            name: l.load_balancer_name,
            data: l,
            client: @client
          )
        end
        y.yield(batch)
      end
      LoadBalancer::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.notification_configurations()
    # @param [Hash] options ({})
    # @return [NotificationConfiguration::Collection]
    def notification_configurations(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, auto_scaling_group_names: [@name])
        resp = @client.describe_notification_configurations(options)
        resp.each_page do |page|
          batch = []
          page.data.notification_configurations.each do |n|
            batch << NotificationConfiguration.new(
              group_name: n.auto_scaling_group_name,
              type: n.notification_type,
              topic_arn: n.topic_arn,
              data: n,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      NotificationConfiguration::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   policies = auto_scaling_group.policies({
    #     policy_names: ["ResourceName"],
    #     policy_types: ["XmlStringMaxLen64"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :policy_names
    #   The names of one or more policies. If you omit this parameter, all
    #   policies are described. If a group name is provided, the results are
    #   limited to that group. This list is limited to 50 items. If you
    #   specify an unknown policy name, it is ignored with no error.
    # @option options [Array<String>] :policy_types
    #   One or more policy types. The valid values are `SimpleScaling`,
    #   `StepScaling`, and `TargetTrackingScaling`.
    # @return [ScalingPolicy::Collection]
    def policies(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(auto_scaling_group_name: @name)
        resp = @client.describe_policies(options)
        resp.each_page do |page|
          batch = []
          page.data.scaling_policies.each do |s|
            batch << ScalingPolicy.new(
              name: s.policy_name,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      ScalingPolicy::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   scheduled_actions = auto_scaling_group.scheduled_actions({
    #     scheduled_action_names: ["ResourceName"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :scheduled_action_names
    #   The names of one or more scheduled actions. You can specify up to 50
    #   actions. If you omit this parameter, all scheduled actions are
    #   described. If you specify an unknown scheduled action, it is ignored
    #   with no error.
    # @option options [Time,DateTime,Date,Integer,String] :start_time
    #   The earliest scheduled start time to return. If scheduled action names
    #   are provided, this parameter is ignored.
    # @option options [Time,DateTime,Date,Integer,String] :end_time
    #   The latest scheduled start time to return. If scheduled action names
    #   are provided, this parameter is ignored.
    # @return [ScheduledAction::Collection]
    def scheduled_actions(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(auto_scaling_group_name: @name)
        resp = @client.describe_scheduled_actions(options)
        resp.each_page do |page|
          batch = []
          page.data.scheduled_update_group_actions.each do |s|
            batch << ScheduledAction.new(
              name: s.scheduled_action_name,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      ScheduledAction::Collection.new(batches)
    end

    # @param [String] key
    # @return [Tag]
    def tag(key)
      Tag.new(
        key: key,
        resource_id: @name,
        resource_type: "auto-scaling-group",
        client: @client
      )
    end

    # @return [Tag::Collection]
    def tags
      batch = []
      data[:tags].each do |d|
        batch << Tag.new(
          key: d[:key],
          resource_id: d[:resource_id],
          resource_type: d[:resource_type],
          data: d,
          client: @client
        )
      end
      Tag::Collection.new([batch], size: batch.size)
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

    def yield_waiter_and_warn(waiter, &block)
      if !@waiter_block_warned
        msg = "pass options to configure the waiter; "
        msg << "yielding the waiter is deprecated"
        warn(msg)
        @waiter_block_warned = true
      end
      yield(waiter.waiter)
    end

    def separate_params_and_options(options)
      opts = Set.new([:client, :max_attempts, :delay, :before_attempt, :before_wait])
      waiter_opts = {}
      waiter_params = {}
      options.each_pair do |key, value|
        if opts.include?(key)
          waiter_opts[key] = value
        else
          waiter_params[key] = value
        end
      end
      waiter_opts[:client] ||= @client
      [waiter_opts, waiter_params]
    end

    class Collection < Aws::Resources::Collection; end
  end
end
