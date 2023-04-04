# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  module Types

    # Specifies the minimum and maximum for the `AcceleratorCount` object
    # when you specify InstanceRequirements for an Auto Scaling group.
    #
    # @!attribute [rw] min
    #   The minimum value.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AcceleratorCountRequest AWS API Documentation
    #
    class AcceleratorCountRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the minimum and maximum for the `AcceleratorTotalMemoryMiB`
    # object when you specify InstanceRequirements for an Auto Scaling
    # group.
    #
    # @!attribute [rw] min
    #   The memory minimum in MiB.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The memory maximum in MiB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AcceleratorTotalMemoryMiBRequest AWS API Documentation
    #
    class AcceleratorTotalMemoryMiBRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because an active instance refresh or rollback for
    # the specified Auto Scaling group was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ActiveInstanceRefreshNotFoundFault AWS API Documentation
    #
    class ActiveInstanceRefreshNotFoundFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activities
    #   The scaling activities. Activities are sorted by start time.
    #   Activities still in progress are described first.
    #   @return [Array<Types::Activity>]
    #
    # @!attribute [rw] next_token
    #   A string that indicates that the response contains more items than
    #   can be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ActivitiesType AWS API Documentation
    #
    class ActivitiesType < Struct.new(
      :activities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes scaling activity, which is a long-running process that
    # represents a change to your Auto Scaling group, such as changing its
    # size or replacing an instance.
    #
    # @!attribute [rw] activity_id
    #   The ID of the activity.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A friendly, more verbose description of the activity.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The reason the activity began.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the activity.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the activity.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The current status of the activity.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A friendly, more verbose description of the activity status.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   A value between 0 and 100 that indicates the progress of the
    #   activity.
    #   @return [Integer]
    #
    # @!attribute [rw] details
    #   The details about the activity.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_state
    #   The state of the Auto Scaling group, which is either `InService` or
    #   `Deleted`.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_arn
    #   The Amazon Resource Name (ARN) of the Auto Scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/Activity AWS API Documentation
    #
    class Activity < Struct.new(
      :activity_id,
      :auto_scaling_group_name,
      :description,
      :cause,
      :start_time,
      :end_time,
      :status_code,
      :status_message,
      :progress,
      :details,
      :auto_scaling_group_state,
      :auto_scaling_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activity
    #   A scaling activity.
    #   @return [Types::Activity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ActivityType AWS API Documentation
    #
    class ActivityType < Struct.new(
      :activity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a policy adjustment type.
    #
    # @!attribute [rw] adjustment_type
    #   The policy adjustment type. The valid values are `ChangeInCapacity`,
    #   `ExactCapacity`, and `PercentChangeInCapacity`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AdjustmentType AWS API Documentation
    #
    class AdjustmentType < Struct.new(
      :adjustment_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an alarm.
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_arn
    #   The Amazon Resource Name (ARN) of the alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/Alarm AWS API Documentation
    #
    class Alarm < Struct.new(
      :alarm_name,
      :alarm_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You already have an Auto Scaling group or launch configuration with
    # this name.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AlreadyExistsFault AWS API Documentation
    #
    class AlreadyExistsFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachInstancesQuery AWS API Documentation
    #
    class AttachInstancesQuery < Struct.new(
      :instance_ids,
      :auto_scaling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancerTargetGroupsResultType AWS API Documentation
    #
    class AttachLoadBalancerTargetGroupsResultType < Aws::EmptyStructure; end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] target_group_arns
    #   The Amazon Resource Names (ARNs) of the target groups. You can
    #   specify up to 10 target groups. To get the ARN of a target group,
    #   use the Elastic Load Balancing [DescribeTargetGroups][1] API
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancerTargetGroupsType AWS API Documentation
    #
    class AttachLoadBalancerTargetGroupsType < Struct.new(
      :auto_scaling_group_name,
      :target_group_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancersResultType AWS API Documentation
    #
    class AttachLoadBalancersResultType < Aws::EmptyStructure; end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_names
    #   The names of the load balancers. You can specify up to 10 load
    #   balancers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancersType AWS API Documentation
    #
    class AttachLoadBalancersType < Struct.new(
      :auto_scaling_group_name,
      :load_balancer_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachTrafficSourcesResultType AWS API Documentation
    #
    class AttachTrafficSourcesResultType < Aws::EmptyStructure; end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] traffic_sources
    #   The unique identifiers of one or more traffic sources. You can
    #   specify up to 10 traffic sources.
    #   @return [Array<Types::TrafficSourceIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachTrafficSourcesType AWS API Documentation
    #
    class AttachTrafficSourcesType < Struct.new(
      :auto_scaling_group_name,
      :traffic_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Auto Scaling group.
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_arn
    #   The Amazon Resource Name (ARN) of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] launch_configuration_name
    #   The name of the associated launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   The launch template for the group.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] mixed_instances_policy
    #   The mixed instances policy for the group.
    #   @return [Types::MixedInstancesPolicy]
    #
    # @!attribute [rw] min_size
    #   The minimum size of the group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum size of the group.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_capacity
    #   The desired size of the group.
    #   @return [Integer]
    #
    # @!attribute [rw] predicted_capacity
    #   The predicted capacity of the group when it has a predictive scaling
    #   policy.
    #   @return [Integer]
    #
    # @!attribute [rw] default_cooldown
    #   The duration of the default cooldown period, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   One or more Availability Zones for the group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] load_balancer_names
    #   One or more load balancers associated with the group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups for your load
    #   balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] health_check_type
    #   A comma-separated value string of one or more health check types.
    #   @return [String]
    #
    # @!attribute [rw] health_check_grace_period
    #   The duration of the health check grace period, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] instances
    #   The EC2 instances associated with the group.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] created_time
    #   The date and time the group was created.
    #   @return [Time]
    #
    # @!attribute [rw] suspended_processes
    #   The suspended processes associated with the group.
    #   @return [Array<Types::SuspendedProcess>]
    #
    # @!attribute [rw] placement_group
    #   The name of the placement group into which to launch your instances,
    #   if any.
    #   @return [String]
    #
    # @!attribute [rw] vpc_zone_identifier
    #   One or more subnet IDs, if applicable, separated by commas.
    #   @return [String]
    #
    # @!attribute [rw] enabled_metrics
    #   The metrics enabled for the group.
    #   @return [Array<Types::EnabledMetric>]
    #
    # @!attribute [rw] status
    #   The current state of the group when the DeleteAutoScalingGroup
    #   operation is in progress.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the group.
    #   @return [Array<Types::TagDescription>]
    #
    # @!attribute [rw] termination_policies
    #   The termination policies for the group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Amazon EC2 Auto Scaling when scaling in.
    #   @return [Boolean]
    #
    # @!attribute [rw] service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other Amazon Web Services on your
    #   behalf.
    #   @return [String]
    #
    # @!attribute [rw] max_instance_lifetime
    #   The maximum amount of time, in seconds, that an instance can be in
    #   service.
    #
    #   Valid Range: Minimum value of 0.
    #   @return [Integer]
    #
    # @!attribute [rw] capacity_rebalance
    #   Indicates whether Capacity Rebalancing is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] warm_pool_configuration
    #   The warm pool for the group.
    #   @return [Types::WarmPoolConfiguration]
    #
    # @!attribute [rw] warm_pool_size
    #   The current size of the warm pool.
    #   @return [Integer]
    #
    # @!attribute [rw] context
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] desired_capacity_type
    #   The unit of measurement for the value specified for desired
    #   capacity. Amazon EC2 Auto Scaling supports `DesiredCapacityType` for
    #   attribute-based instance type selection only.
    #   @return [String]
    #
    # @!attribute [rw] default_instance_warmup
    #   The duration of the default instance warmup, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] traffic_sources
    #   The traffic sources associated with this Auto Scaling group.
    #   @return [Array<Types::TrafficSourceIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AutoScalingGroup AWS API Documentation
    #
    class AutoScalingGroup < Struct.new(
      :auto_scaling_group_name,
      :auto_scaling_group_arn,
      :launch_configuration_name,
      :launch_template,
      :mixed_instances_policy,
      :min_size,
      :max_size,
      :desired_capacity,
      :predicted_capacity,
      :default_cooldown,
      :availability_zones,
      :load_balancer_names,
      :target_group_arns,
      :health_check_type,
      :health_check_grace_period,
      :instances,
      :created_time,
      :suspended_processes,
      :placement_group,
      :vpc_zone_identifier,
      :enabled_metrics,
      :status,
      :tags,
      :termination_policies,
      :new_instances_protected_from_scale_in,
      :service_linked_role_arn,
      :max_instance_lifetime,
      :capacity_rebalance,
      :warm_pool_configuration,
      :warm_pool_size,
      :context,
      :desired_capacity_type,
      :default_instance_warmup,
      :traffic_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_names
    #   The names of the Auto Scaling groups. By default, you can only
    #   specify up to 50 names. You can optionally increase this limit using
    #   the `MaxRecords` property.
    #
    #   If you omit this property, all Auto Scaling groups are described.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   One or more filters to limit the results based on specific tags.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AutoScalingGroupNamesType AWS API Documentation
    #
    class AutoScalingGroupNamesType < Struct.new(
      :auto_scaling_group_names,
      :next_token,
      :max_records,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_groups
    #   The groups.
    #   @return [Array<Types::AutoScalingGroup>]
    #
    # @!attribute [rw] next_token
    #   A string that indicates that the response contains more items than
    #   can be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AutoScalingGroupsType AWS API Documentation
    #
    class AutoScalingGroupsType < Struct.new(
      :auto_scaling_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an EC2 instance associated with an Auto Scaling group.
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group for the instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the instance.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_state
    #   The lifecycle state for the instance. The `Quarantined` state is not
    #   used. For information about lifecycle states, see [Instance
    #   lifecycle][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid values: `Pending` \| `Pending:Wait` \| `Pending:Proceed` \|
    #   `Quarantined` \| `InService` \| `Terminating` \| `Terminating:Wait`
    #   \| `Terminating:Proceed` \| `Terminated` \| `Detaching` \|
    #   `Detached` \| `EnteringStandby` \| `Standby` \| `Warmed:Pending` \|
    #   `Warmed:Pending:Wait` \| `Warmed:Pending:Proceed` \|
    #   `Warmed:Terminating` \| `Warmed:Terminating:Wait` \|
    #   `Warmed:Terminating:Proceed` \| `Warmed:Terminated` \|
    #   `Warmed:Stopped` \| `Warmed:Running`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The last reported health status of this instance. `Healthy` means
    #   that the instance is healthy and should remain in service.
    #   `Unhealthy` means that the instance is unhealthy and Amazon EC2 Auto
    #   Scaling should terminate and replace it.
    #   @return [String]
    #
    # @!attribute [rw] launch_configuration_name
    #   The launch configuration used to launch the instance. This value is
    #   not available if you attached the instance to the Auto Scaling
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   The launch template for the instance.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] protected_from_scale_in
    #   Indicates whether the instance is protected from termination by
    #   Amazon EC2 Auto Scaling when scaling in.
    #   @return [Boolean]
    #
    # @!attribute [rw] weighted_capacity
    #   The number of capacity units contributed by the instance based on
    #   its instance type.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 999.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AutoScalingInstanceDetails AWS API Documentation
    #
    class AutoScalingInstanceDetails < Struct.new(
      :instance_id,
      :instance_type,
      :auto_scaling_group_name,
      :availability_zone,
      :lifecycle_state,
      :health_status,
      :launch_configuration_name,
      :launch_template,
      :protected_from_scale_in,
      :weighted_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_instances
    #   The instances.
    #   @return [Array<Types::AutoScalingInstanceDetails>]
    #
    # @!attribute [rw] next_token
    #   A string that indicates that the response contains more items than
    #   can be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AutoScalingInstancesType AWS API Documentation
    #
    class AutoScalingInstancesType < Struct.new(
      :auto_scaling_instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the minimum and maximum for the `BaselineEbsBandwidthMbps`
    # object when you specify InstanceRequirements for an Auto Scaling
    # group.
    #
    # @!attribute [rw] min
    #   The minimum value in Mbps.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum value in Mbps.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/BaselineEbsBandwidthMbpsRequest AWS API Documentation
    #
    class BaselineEbsBandwidthMbpsRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_scheduled_actions
    #   The names of the scheduled actions that could not be deleted,
    #   including an error message.
    #   @return [Array<Types::FailedScheduledUpdateGroupActionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/BatchDeleteScheduledActionAnswer AWS API Documentation
    #
    class BatchDeleteScheduledActionAnswer < Struct.new(
      :failed_scheduled_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_names
    #   The names of the scheduled actions to delete. The maximum number
    #   allowed is 50.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/BatchDeleteScheduledActionType AWS API Documentation
    #
    class BatchDeleteScheduledActionType < Struct.new(
      :auto_scaling_group_name,
      :scheduled_action_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_scheduled_update_group_actions
    #   The names of the scheduled actions that could not be created or
    #   updated, including an error message.
    #   @return [Array<Types::FailedScheduledUpdateGroupActionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/BatchPutScheduledUpdateGroupActionAnswer AWS API Documentation
    #
    class BatchPutScheduledUpdateGroupActionAnswer < Struct.new(
      :failed_scheduled_update_group_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_update_group_actions
    #   One or more scheduled actions. The maximum number allowed is 50.
    #   @return [Array<Types::ScheduledUpdateGroupActionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/BatchPutScheduledUpdateGroupActionType AWS API Documentation
    #
    class BatchPutScheduledUpdateGroupActionType < Struct.new(
      :auto_scaling_group_name,
      :scheduled_update_group_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a block device mapping.
    #
    # @!attribute [rw] virtual_name
    #   The name of the instance store volume (virtual device) to attach to
    #   an instance at launch. The name must be in the form ephemeral*X*
    #   where *X* is a number starting from zero (0), for example,
    #   `ephemeral0`.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The device name assigned to the volume (for example, `/dev/sdh` or
    #   `xvdh`). For more information, see [Device naming on Linux
    #   instances][1] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #   <note markdown="1"> To define a block device mapping, set the device name and exactly
    #   one of the following properties: `Ebs`, `NoDevice`, or
    #   `VirtualName`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   Information to attach an EBS volume to an instance at launch.
    #   @return [Types::Ebs]
    #
    # @!attribute [rw] no_device
    #   Setting this value to `true` prevents a volume that is included in
    #   the block device mapping of the AMI from being mapped to the
    #   specified device name at launch.
    #
    #   If `NoDevice` is `true` for the root device, instances might fail
    #   the EC2 health check. In that case, Amazon EC2 Auto Scaling launches
    #   replacement instances.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/BlockDeviceMapping AWS API Documentation
    #
    class BlockDeviceMapping < Struct.new(
      :virtual_name,
      :device_name,
      :ebs,
      :no_device)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_refresh_id
    #   The instance refresh ID associated with the request. This is the
    #   unique ID assigned to the instance refresh when it was started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CancelInstanceRefreshAnswer AWS API Documentation
    #
    class CancelInstanceRefreshAnswer < Struct.new(
      :instance_refresh_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CancelInstanceRefreshType AWS API Documentation
    #
    class CancelInstanceRefreshType < Struct.new(
      :auto_scaling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `GetPredictiveScalingForecast` call returns the capacity forecast
    # for a predictive scaling policy. This structure includes the data
    # points for that capacity forecast, along with the timestamps of those
    # data points.
    #
    # @!attribute [rw] timestamps
    #   The timestamps for the data points, in UTC format.
    #   @return [Array<Time>]
    #
    # @!attribute [rw] values
    #   The values of the data points.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CapacityForecast AWS API Documentation
    #
    class CapacityForecast < Struct.new(
      :timestamps,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CompleteLifecycleActionAnswer AWS API Documentation
    #
    class CompleteLifecycleActionAnswer < Aws::EmptyStructure; end

    # @!attribute [rw] lifecycle_hook_name
    #   The name of the lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_action_token
    #   A universally unique identifier (UUID) that identifies a specific
    #   lifecycle action associated with an instance. Amazon EC2 Auto
    #   Scaling sends this token to the notification target you specified
    #   when you created the lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_action_result
    #   The action for the group to take. You can specify either `CONTINUE`
    #   or `ABANDON`.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CompleteLifecycleActionType AWS API Documentation
    #
    class CompleteLifecycleActionType < Struct.new(
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_action_token,
      :lifecycle_action_result,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group. This name must be unique per
    #   Region per account.
    #
    #   The name can contain any ASCII character 33 to 126 including most
    #   punctuation characters, digits, and upper and lowercased letters.
    #
    #   <note markdown="1"> You cannot use a colon (:) in the name.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration to use to launch instances.
    #
    #   Conditional: You must specify either a launch template
    #   (`LaunchTemplate` or `MixedInstancesPolicy`) or a launch
    #   configuration (`LaunchConfigurationName` or `InstanceId`).
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   Information used to specify the launch template and version to use
    #   to launch instances.
    #
    #   Conditional: You must specify either a launch template
    #   (`LaunchTemplate` or `MixedInstancesPolicy`) or a launch
    #   configuration (`LaunchConfigurationName` or `InstanceId`).
    #
    #   <note markdown="1"> The launch template that is specified must be configured for use
    #   with an Auto Scaling group. For more information, see [Creating a
    #   launch template for an Auto Scaling group][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] mixed_instances_policy
    #   The mixed instances policy. For more information, see [Auto Scaling
    #   groups with multiple instance types and purchase options][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html
    #   @return [Types::MixedInstancesPolicy]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance used to base the launch configuration on. If
    #   specified, Amazon EC2 Auto Scaling uses the configuration values
    #   from the specified instance to create a new launch configuration. To
    #   get the instance ID, use the Amazon EC2 [DescribeInstances][1] API
    #   operation. For more information, see [Creating an Auto Scaling group
    #   using an EC2 instance][2] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html
    #   @return [String]
    #
    # @!attribute [rw] min_size
    #   The minimum size of the group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum size of the group.
    #
    #   <note markdown="1"> With a mixed instances policy that uses instance weighting, Amazon
    #   EC2 Auto Scaling may need to go above `MaxSize` to meet your
    #   capacity requirements. In this event, Amazon EC2 Auto Scaling will
    #   never go above `MaxSize` by more than your largest instance weight
    #   (weights that define how many units each instance contributes to the
    #   desired capacity of the group).
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling
    #   group at the time of its creation and the capacity it attempts to
    #   maintain. It can scale beyond this capacity if you configure auto
    #   scaling. This number must be greater than or equal to the minimum
    #   size of the group and less than or equal to the maximum size of the
    #   group. If you do not specify a desired capacity, the default is the
    #   minimum size of the group.
    #   @return [Integer]
    #
    # @!attribute [rw] default_cooldown
    #   *Only needed if you use simple scaling policies.*
    #
    #   The amount of time, in seconds, between one scaling activity ending
    #   and another one starting due to simple scaling policies. For more
    #   information, see [Scaling cooldowns for Amazon EC2 Auto Scaling][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Default: `300` seconds
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones where instances in the Auto Scaling
    #   group can be created. Used for launching into the default VPC subnet
    #   in each Availability Zone when not using the `VPCZoneIdentifier`
    #   property, or for attaching a network interface when an existing
    #   network interface ID is specified in a launch template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] load_balancer_names
    #   A list of Classic Load Balancers associated with this Auto Scaling
    #   group. For Application Load Balancers, Network Load Balancers, and
    #   Gateway Load Balancers, specify the `TargetGroupARNs` property
    #   instead.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_group_arns
    #   The Amazon Resource Names (ARN) of the Elastic Load Balancing target
    #   groups to associate with the Auto Scaling group. Instances are
    #   registered as targets with the target groups. The target groups
    #   receive incoming traffic and route requests to one or more
    #   registered targets. For more information, see [Use Elastic Load
    #   Balancing to distribute traffic across the instances in your Auto
    #   Scaling group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] health_check_type
    #   A comma-separated value string of one or more health check types.
    #
    #   The valid values are `EC2`, `ELB`, and `VPC_LATTICE`. `EC2` is the
    #   default health check and cannot be disabled. For more information,
    #   see [Health checks for Auto Scaling instances][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #   Only specify `EC2` if you must clear a value that was previously
    #   set.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    #   @return [String]
    #
    # @!attribute [rw] health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service and marking it unhealthy due to a failed health check.
    #   This is useful if your instances do not immediately pass their
    #   health checks after they enter the `InService` state. For more
    #   information, see [Set the health check grace period for an Auto
    #   Scaling group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Default: `0` seconds
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html
    #   @return [Integer]
    #
    # @!attribute [rw] placement_group
    #   The name of the placement group into which to launch your instances.
    #   For more information, see [Placement groups][1] in the *Amazon EC2
    #   User Guide for Linux Instances*.
    #
    #   <note markdown="1"> A *cluster* placement group is a logical grouping of instances
    #   within a single Availability Zone. You cannot specify multiple
    #   Availability Zones and a cluster placement group.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_zone_identifier
    #   A comma-separated list of subnet IDs for a virtual private cloud
    #   (VPC) where instances in the Auto Scaling group can be created. If
    #   you specify `VPCZoneIdentifier` with `AvailabilityZones`, the
    #   subnets that you specify must reside in those Availability Zones.
    #   @return [String]
    #
    # @!attribute [rw] termination_policies
    #   A policy or a list of policies that are used to select the instance
    #   to terminate. These policies are executed in the order that you list
    #   them. For more information, see [Work with Amazon EC2 Auto Scaling
    #   termination policies][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #   Valid values: `Default` \| `AllocationStrategy` \|
    #   `ClosestToNextInstanceHour` \| `NewestInstance` \| `OldestInstance`
    #   \| `OldestLaunchConfiguration` \| `OldestLaunchTemplate` \|
    #   `arn:aws:lambda:region:account-id:function:my-function:my-alias`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Amazon EC2 Auto Scaling when scaling in. For more
    #   information about preventing instances from terminating on scale in,
    #   see [Using instance scale-in protection][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html
    #   @return [Boolean]
    #
    # @!attribute [rw] capacity_rebalance
    #   Indicates whether Capacity Rebalancing is enabled. Otherwise,
    #   Capacity Rebalancing is disabled. When you turn on Capacity
    #   Rebalancing, Amazon EC2 Auto Scaling attempts to launch a Spot
    #   Instance whenever Amazon EC2 notifies that a Spot Instance is at an
    #   elevated risk of interruption. After launching a new instance, it
    #   then terminates an old instance. For more information, see [Use
    #   Capacity Rebalancing to handle Amazon EC2 Spot Interruptions][1] in
    #   the in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html
    #   @return [Boolean]
    #
    # @!attribute [rw] lifecycle_hook_specification_list
    #   One or more lifecycle hooks to add to the Auto Scaling group before
    #   instances are launched.
    #   @return [Array<Types::LifecycleHookSpecification>]
    #
    # @!attribute [rw] tags
    #   One or more tags. You can tag your Auto Scaling group and propagate
    #   the tags to the Amazon EC2 instances it launches. Tags are not
    #   propagated to Amazon EBS volumes. To add tags to Amazon EBS volumes,
    #   specify the tags in a launch template but use caution. If the launch
    #   template specifies an instance tag with a key that is also specified
    #   for the Auto Scaling group, Amazon EC2 Auto Scaling overrides the
    #   value of that instance tag with the value specified by the Auto
    #   Scaling group. For more information, see [Tag Auto Scaling groups
    #   and instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other Amazon Web Services service on
    #   your behalf. By default, Amazon EC2 Auto Scaling uses a
    #   service-linked role named `AWSServiceRoleForAutoScaling`, which it
    #   creates if it does not exist. For more information, see
    #   [Service-linked roles][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html
    #   @return [String]
    #
    # @!attribute [rw] max_instance_lifetime
    #   The maximum amount of time, in seconds, that an instance can be in
    #   service. The default is null. If specified, the value must be either
    #   0 or a number equal to or greater than 86,400 seconds (1 day). For
    #   more information, see [Replacing Auto Scaling instances based on
    #   maximum instance lifetime][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html
    #   @return [Integer]
    #
    # @!attribute [rw] context
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] desired_capacity_type
    #   The unit of measurement for the value specified for desired
    #   capacity. Amazon EC2 Auto Scaling supports `DesiredCapacityType` for
    #   attribute-based instance type selection only. For more information,
    #   see [Creating an Auto Scaling group using attribute-based instance
    #   type selection][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   By default, Amazon EC2 Auto Scaling specifies `units`, which
    #   translates into number of instances.
    #
    #   Valid values: `units` \| `vcpu` \| `memory-mib`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html
    #   @return [String]
    #
    # @!attribute [rw] default_instance_warmup
    #   The amount of time, in seconds, until a new instance is considered
    #   to have finished initializing and resource consumption to become
    #   stable after it enters the `InService` state.
    #
    #   During an instance refresh, Amazon EC2 Auto Scaling waits for the
    #   warm-up period after it replaces an instance before it moves on to
    #   replacing the next instance. Amazon EC2 Auto Scaling also waits for
    #   the warm-up period before aggregating the metrics for new instances
    #   with existing instances in the Amazon CloudWatch metrics that are
    #   used for scaling, resulting in more reliable usage data. For more
    #   information, see [Set the default instance warmup for an Auto
    #   Scaling group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   To manage various warm-up settings at the group level, we recommend
    #   that you set the default instance warmup, *even if it is set to 0
    #   seconds*. To remove a value that you previously set, include the
    #   property but specify `-1` for the value. However, we strongly
    #   recommend keeping the default instance warmup enabled by specifying
    #   a value of `0` or other nominal value.
    #
    #   Default: None
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html
    #   @return [Integer]
    #
    # @!attribute [rw] traffic_sources
    #   The list of traffic sources to attach to this Auto Scaling group.
    #   You can use any of the following as traffic sources for an Auto
    #   Scaling group: Classic Load Balancer, Application Load Balancer,
    #   Gateway Load Balancer, Network Load Balancer, and VPC Lattice.
    #   @return [Array<Types::TrafficSourceIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateAutoScalingGroupType AWS API Documentation
    #
    class CreateAutoScalingGroupType < Struct.new(
      :auto_scaling_group_name,
      :launch_configuration_name,
      :launch_template,
      :mixed_instances_policy,
      :instance_id,
      :min_size,
      :max_size,
      :desired_capacity,
      :default_cooldown,
      :availability_zones,
      :load_balancer_names,
      :target_group_arns,
      :health_check_type,
      :health_check_grace_period,
      :placement_group,
      :vpc_zone_identifier,
      :termination_policies,
      :new_instances_protected_from_scale_in,
      :capacity_rebalance,
      :lifecycle_hook_specification_list,
      :tags,
      :service_linked_role_arn,
      :max_instance_lifetime,
      :context,
      :desired_capacity_type,
      :default_instance_warmup,
      :traffic_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration. This name must be unique per
    #   Region per account.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The ID of the Amazon Machine Image (AMI) that was assigned during
    #   registration. For more information, see [Finding a Linux AMI][1] in
    #   the *Amazon EC2 User Guide for Linux Instances*.
    #
    #   If you specify `InstanceId`, an `ImageId` is not required.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair. For more information, see [Amazon EC2 key
    #   pairs and Linux instances][1] in the *Amazon EC2 User Guide for
    #   Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   A list that contains the security group IDs to assign to the
    #   instances in the Auto Scaling group. For more information, see
    #   [Control traffic to resources using security groups][1] in the
    #   *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] classic_link_vpc_id
    #   Available for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] classic_link_vpc_security_groups
    #   Available for backward compatibility.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_data
    #   The user data to make available to the launched EC2 instances. For
    #   more information, see [Instance metadata and user data][1] (Linux)
    #   and [Instance metadata and user data][2] (Windows). If you are using
    #   a command line tool, base64-encoding is performed for you, and you
    #   can load the text from a file. Otherwise, you must provide
    #   base64-encoded text. User data is limited to 16 KB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance to use to create the launch configuration.
    #   The new launch configuration derives attributes from the instance,
    #   except for the block device mapping.
    #
    #   To create a launch configuration with a block device mapping or
    #   override any other instance attributes, specify them as part of the
    #   same request.
    #
    #   For more information, see [Creating a launch configuration using an
    #   EC2 instance][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   Specifies the instance type of the EC2 instance. For information
    #   about available instance types, see [Available instance types][1] in
    #   the *Amazon EC2 User Guide for Linux Instances*.
    #
    #   If you specify `InstanceId`, an `InstanceType` is not required.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes
    #   @return [String]
    #
    # @!attribute [rw] kernel_id
    #   The ID of the kernel associated with the AMI.
    #
    #   <note markdown="1"> We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [User provided kernels][1] in the *Amazon
    #   EC2 User Guide for Linux Instances*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    #   @return [String]
    #
    # @!attribute [rw] ramdisk_id
    #   The ID of the RAM disk to select.
    #
    #   <note markdown="1"> We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [User provided kernels][1] in the *Amazon
    #   EC2 User Guide for Linux Instances*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   The block device mapping entries that define the block devices to
    #   attach to the instances at launch. By default, the block devices
    #   specified in the block device mapping for the AMI are used. For more
    #   information, see [Block device mappings][1] in the *Amazon EC2 User
    #   Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] instance_monitoring
    #   Controls whether instances in this group are launched with detailed
    #   (`true`) or basic (`false`) monitoring.
    #
    #   The default value is `true` (enabled).
    #
    #   When detailed monitoring is enabled, Amazon CloudWatch generates
    #   metrics every minute and your account is charged a fee. When you
    #   disable detailed monitoring, CloudWatch generates metrics every 5
    #   minutes. For more information, see [Configure Monitoring for Auto
    #   Scaling Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html
    #   @return [Types::InstanceMonitoring]
    #
    # @!attribute [rw] spot_price
    #   The maximum hourly price to be paid for any Spot Instance launched
    #   to fulfill the request. Spot Instances are launched when the price
    #   you specify exceeds the current Spot price. For more information,
    #   see [Request Spot Instances for fault-tolerant and flexible
    #   applications][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid Range: Minimum value of 0.001
    #
    #   <note markdown="1"> When you change your maximum price by creating a new launch
    #   configuration, running instances will continue to run as long as the
    #   maximum price for those running instances is higher than the current
    #   Spot price.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-template-spot-instances.html
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile
    #   The name or the Amazon Resource Name (ARN) of the instance profile
    #   associated with the IAM role for the instance. The instance profile
    #   contains the IAM role. For more information, see [IAM role for
    #   applications that run on Amazon EC2 instances][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html
    #   @return [String]
    #
    # @!attribute [rw] ebs_optimized
    #   Specifies whether the launch configuration is optimized for EBS I/O
    #   (`true`) or not (`false`). The optimization provides dedicated
    #   throughput to Amazon EBS and an optimized configuration stack to
    #   provide optimal I/O performance. This optimization is not available
    #   with all instance types. Additional fees are incurred when you
    #   enable EBS optimization for an instance type that is not
    #   EBS-optimized by default. For more information, see [Amazon
    #   EBS-optimized instances][1] in the *Amazon EC2 User Guide for Linux
    #   Instances*.
    #
    #   The default value is `false`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html
    #   @return [Boolean]
    #
    # @!attribute [rw] associate_public_ip_address
    #   Specifies whether to assign a public IPv4 address to the group's
    #   instances. If the instance is launched into a default subnet, the
    #   default is to assign a public IPv4 address, unless you disabled the
    #   option to assign a public IPv4 address on the subnet. If the
    #   instance is launched into a nondefault subnet, the default is not to
    #   assign a public IPv4 address, unless you enabled the option to
    #   assign a public IPv4 address on the subnet.
    #
    #   If you specify `true`, each instance in the Auto Scaling group
    #   receives a unique public IPv4 address. For more information, see
    #   [Launching Auto Scaling instances in a VPC][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #   If you specify this property, you must specify at least one subnet
    #   for `VPCZoneIdentifier` when you create your group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    #   @return [Boolean]
    #
    # @!attribute [rw] placement_tenancy
    #   The tenancy of the instance, either `default` or `dedicated`. An
    #   instance with `dedicated` tenancy runs on isolated, single-tenant
    #   hardware and can only be launched into a VPC. To launch dedicated
    #   instances into a shared tenancy VPC (a VPC with the instance
    #   placement tenancy attribute set to `default`), you must set the
    #   value of this property to `dedicated`. For more information, see
    #   [Configuring instance tenancy with Amazon EC2 Auto Scaling][1] in
    #   the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   If you specify `PlacementTenancy`, you must specify at least one
    #   subnet for `VPCZoneIdentifier` when you create your group.
    #
    #   Valid values: `default` \| `dedicated`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html
    #   @return [String]
    #
    # @!attribute [rw] metadata_options
    #   The metadata options for the instances. For more information, see
    #   [Configuring the Instance Metadata Options][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds
    #   @return [Types::InstanceMetadataOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateLaunchConfigurationType AWS API Documentation
    #
    class CreateLaunchConfigurationType < Struct.new(
      :launch_configuration_name,
      :image_id,
      :key_name,
      :security_groups,
      :classic_link_vpc_id,
      :classic_link_vpc_security_groups,
      :user_data,
      :instance_id,
      :instance_type,
      :kernel_id,
      :ramdisk_id,
      :block_device_mappings,
      :instance_monitoring,
      :spot_price,
      :iam_instance_profile,
      :ebs_optimized,
      :associate_public_ip_address,
      :placement_tenancy,
      :metadata_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateOrUpdateTagsType AWS API Documentation
    #
    class CreateOrUpdateTagsType < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a CloudWatch metric of your choosing for a target tracking
    # scaling policy to use with Amazon EC2 Auto Scaling.
    #
    # To create your customized metric specification:
    #
    # * Add values for each required property from CloudWatch. You can use
    #   an existing metric, or a new metric that you create. To use your own
    #   metric, you must first publish the metric to CloudWatch. For more
    #   information, see [Publish custom metrics][1] in the *Amazon
    #   CloudWatch User Guide*.
    #
    # * Choose a metric that changes proportionally with capacity. The value
    #   of the metric should increase or decrease in inverse proportion to
    #   the number of capacity units. That is, the value of the metric
    #   should decrease when capacity increases.
    #
    # For more information about the CloudWatch terminology below, see
    # [Amazon CloudWatch concepts][2].
    #
    # <note markdown="1"> Each individual service provides information about the metrics,
    # namespace, and dimensions they use. For more information, see [Amazon
    # Web Services services that publish CloudWatch metrics][3] in the
    # *Amazon CloudWatch User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html
    #
    # @!attribute [rw] metric_name
    #   The name of the metric. To get the exact metric name, namespace, and
    #   dimensions, inspect the [Metric][1] object that is returned by a
    #   call to [ListMetrics][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions of the metric.
    #
    #   Conditional: If you published your metric with dimensions, you must
    #   specify the same dimensions in your scaling policy.
    #   @return [Array<Types::MetricDimension>]
    #
    # @!attribute [rw] statistic
    #   The statistic of the metric.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the metric. For a complete list of the units that
    #   CloudWatch supports, see the [MetricDatum][1] data type in the
    #   *Amazon CloudWatch API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   The metrics to include in the target tracking scaling policy, as a
    #   metric data query. This can include both raw metric and metric math
    #   expressions.
    #   @return [Array<Types::TargetTrackingMetricDataQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CustomizedMetricSpecification AWS API Documentation
    #
    class CustomizedMetricSpecification < Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   Specifies that the group is to be deleted along with all instances
    #   associated with the group, without waiting for all instances to be
    #   terminated. This action also deletes any outstanding lifecycle
    #   actions associated with the group.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteAutoScalingGroupType AWS API Documentation
    #
    class DeleteAutoScalingGroupType < Struct.new(
      :auto_scaling_group_name,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteLifecycleHookAnswer AWS API Documentation
    #
    class DeleteLifecycleHookAnswer < Aws::EmptyStructure; end

    # @!attribute [rw] lifecycle_hook_name
    #   The name of the lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteLifecycleHookType AWS API Documentation
    #
    class DeleteLifecycleHookType < Struct.new(
      :lifecycle_hook_name,
      :auto_scaling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteNotificationConfigurationType AWS API Documentation
    #
    class DeleteNotificationConfigurationType < Struct.new(
      :auto_scaling_group_name,
      :topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name or Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeletePolicyType AWS API Documentation
    #
    class DeletePolicyType < Struct.new(
      :auto_scaling_group_name,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the action to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteScheduledActionType AWS API Documentation
    #
    class DeleteScheduledActionType < Struct.new(
      :auto_scaling_group_name,
      :scheduled_action_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteTagsType AWS API Documentation
    #
    class DeleteTagsType < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteWarmPoolAnswer AWS API Documentation
    #
    class DeleteWarmPoolAnswer < Aws::EmptyStructure; end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   Specifies that the warm pool is to be deleted along with all of its
    #   associated instances, without waiting for all instances to be
    #   terminated. This parameter also deletes any outstanding lifecycle
    #   actions associated with the warm pool instances.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteWarmPoolType AWS API Documentation
    #
    class DeleteWarmPoolType < Struct.new(
      :auto_scaling_group_name,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_number_of_auto_scaling_groups
    #   The maximum number of groups allowed for your account. The default
    #   is 200 groups per Region.
    #   @return [Integer]
    #
    # @!attribute [rw] max_number_of_launch_configurations
    #   The maximum number of launch configurations allowed for your
    #   account. The default is 200 launch configurations per Region.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_auto_scaling_groups
    #   The current number of groups for your account.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_launch_configurations
    #   The current number of launch configurations for your account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAccountLimitsAnswer AWS API Documentation
    #
    class DescribeAccountLimitsAnswer < Struct.new(
      :max_number_of_auto_scaling_groups,
      :max_number_of_launch_configurations,
      :number_of_auto_scaling_groups,
      :number_of_launch_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adjustment_types
    #   The policy adjustment types.
    #   @return [Array<Types::AdjustmentType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAdjustmentTypesAnswer AWS API Documentation
    #
    class DescribeAdjustmentTypesAnswer < Struct.new(
      :adjustment_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_ids
    #   The IDs of the instances. If you omit this property, all Auto
    #   Scaling instances are described. If you specify an ID that does not
    #   exist, it is ignored with no error.
    #
    #   Array Members: Maximum number of 50 items.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `50`.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAutoScalingInstancesType AWS API Documentation
    #
    class DescribeAutoScalingInstancesType < Struct.new(
      :instance_ids,
      :max_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_notification_types
    #   The notification types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAutoScalingNotificationTypesAnswer AWS API Documentation
    #
    class DescribeAutoScalingNotificationTypesAnswer < Struct.new(
      :auto_scaling_notification_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_refreshes
    #   The instance refreshes for the specified group, sorted by creation
    #   timestamp in descending order.
    #   @return [Array<Types::InstanceRefresh>]
    #
    # @!attribute [rw] next_token
    #   A string that indicates that the response contains more items than
    #   can be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeInstanceRefreshesAnswer AWS API Documentation
    #
    class DescribeInstanceRefreshesAnswer < Struct.new(
      :instance_refreshes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] instance_refresh_ids
    #   One or more instance refresh IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeInstanceRefreshesType AWS API Documentation
    #
    class DescribeInstanceRefreshesType < Struct.new(
      :auto_scaling_group_name,
      :instance_refresh_ids,
      :next_token,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_hook_types
    #   The lifecycle hook types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLifecycleHookTypesAnswer AWS API Documentation
    #
    class DescribeLifecycleHookTypesAnswer < Struct.new(
      :lifecycle_hook_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_hooks
    #   The lifecycle hooks for the specified group.
    #   @return [Array<Types::LifecycleHook>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLifecycleHooksAnswer AWS API Documentation
    #
    class DescribeLifecycleHooksAnswer < Struct.new(
      :lifecycle_hooks)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_hook_names
    #   The names of one or more lifecycle hooks. If you omit this property,
    #   all lifecycle hooks are described.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLifecycleHooksType AWS API Documentation
    #
    class DescribeLifecycleHooksType < Struct.new(
      :auto_scaling_group_name,
      :lifecycle_hook_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to return with this call. The default
    #   value is `100` and the maximum value is `100`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLoadBalancerTargetGroupsRequest AWS API Documentation
    #
    class DescribeLoadBalancerTargetGroupsRequest < Struct.new(
      :auto_scaling_group_name,
      :next_token,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_target_groups
    #   Information about the target groups.
    #   @return [Array<Types::LoadBalancerTargetGroupState>]
    #
    # @!attribute [rw] next_token
    #   A string that indicates that the response contains more items than
    #   can be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLoadBalancerTargetGroupsResponse AWS API Documentation
    #
    class DescribeLoadBalancerTargetGroupsResponse < Struct.new(
      :load_balancer_target_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to return with this call. The default
    #   value is `100` and the maximum value is `100`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLoadBalancersRequest AWS API Documentation
    #
    class DescribeLoadBalancersRequest < Struct.new(
      :auto_scaling_group_name,
      :next_token,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancers
    #   The load balancers.
    #   @return [Array<Types::LoadBalancerState>]
    #
    # @!attribute [rw] next_token
    #   A string that indicates that the response contains more items than
    #   can be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLoadBalancersResponse AWS API Documentation
    #
    class DescribeLoadBalancersResponse < Struct.new(
      :load_balancers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metrics
    #   The metrics.
    #   @return [Array<Types::MetricCollectionType>]
    #
    # @!attribute [rw] granularities
    #   The granularities for the metrics.
    #   @return [Array<Types::MetricGranularityType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeMetricCollectionTypesAnswer AWS API Documentation
    #
    class DescribeMetricCollectionTypesAnswer < Struct.new(
      :metrics,
      :granularities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_configurations
    #   The notification configurations.
    #   @return [Array<Types::NotificationConfiguration>]
    #
    # @!attribute [rw] next_token
    #   A string that indicates that the response contains more items than
    #   can be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeNotificationConfigurationsAnswer AWS API Documentation
    #
    class DescribeNotificationConfigurationsAnswer < Struct.new(
      :notification_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_names
    #   The name of the Auto Scaling group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeNotificationConfigurationsType AWS API Documentation
    #
    class DescribeNotificationConfigurationsType < Struct.new(
      :auto_scaling_group_names,
      :next_token,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] policy_names
    #   The names of one or more policies. If you omit this property, all
    #   policies are described. If a group name is provided, the results are
    #   limited to that group. If you specify an unknown policy name, it is
    #   ignored with no error.
    #
    #   Array Members: Maximum number of 50 items.
    #   @return [Array<String>]
    #
    # @!attribute [rw] policy_types
    #   One or more policy types. The valid values are `SimpleScaling`,
    #   `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to be returned with each call. The
    #   default value is `50` and the maximum value is `100`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribePoliciesType AWS API Documentation
    #
    class DescribePoliciesType < Struct.new(
      :auto_scaling_group_name,
      :policy_names,
      :policy_types,
      :next_token,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activity_ids
    #   The activity IDs of the desired scaling activities. If you omit this
    #   property, all activities for the past six weeks are described. If
    #   unknown activities are requested, they are ignored with no error. If
    #   you specify an Auto Scaling group, the results are limited to that
    #   group.
    #
    #   Array Members: Maximum number of 50 IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] include_deleted_groups
    #   Indicates whether to include scaling activity from deleted Auto
    #   Scaling groups.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to return with this call. The default
    #   value is `100` and the maximum value is `100`.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeScalingActivitiesType AWS API Documentation
    #
    class DescribeScalingActivitiesType < Struct.new(
      :activity_ids,
      :auto_scaling_group_name,
      :include_deleted_groups,
      :max_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_names
    #   The names of one or more scheduled actions. If you omit this
    #   property, all scheduled actions are described. If you specify an
    #   unknown scheduled action, it is ignored with no error.
    #
    #   Array Members: Maximum number of 50 actions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The earliest scheduled start time to return. If scheduled action
    #   names are provided, this property is ignored.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The latest scheduled start time to return. If scheduled action names
    #   are provided, this property is ignored.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeScheduledActionsType AWS API Documentation
    #
    class DescribeScheduledActionsType < Struct.new(
      :auto_scaling_group_name,
      :scheduled_action_names,
      :start_time,
      :end_time,
      :next_token,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   One or more filters to scope the tags to return. The maximum number
    #   of filters per filter type (for example, `auto-scaling-group`) is
    #   1000.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeTagsType AWS API Documentation
    #
    class DescribeTagsType < Struct.new(
      :filters,
      :next_token,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] termination_policy_types
    #   The termination policies supported by Amazon EC2 Auto Scaling:
    #   `OldestInstance`, `OldestLaunchConfiguration`, `NewestInstance`,
    #   `ClosestToNextInstanceHour`, `Default`, `OldestLaunchTemplate`, and
    #   `AllocationStrategy`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeTerminationPolicyTypesAnswer AWS API Documentation
    #
    class DescribeTerminationPolicyTypesAnswer < Struct.new(
      :termination_policy_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] traffic_source_type
    #   The traffic source type that you want to describe.
    #
    #   The following lists the valid values:
    #
    #   * `elb` if the traffic source is a Classic Load Balancer.
    #
    #   * `elbv2` if the traffic source is a Application Load Balancer,
    #     Gateway Load Balancer, or Network Load Balancer.
    #
    #   * `vpc-lattice` if the traffic source is VPC Lattice.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to return with this call. The maximum
    #   value is `50`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeTrafficSourcesRequest AWS API Documentation
    #
    class DescribeTrafficSourcesRequest < Struct.new(
      :auto_scaling_group_name,
      :traffic_source_type,
      :next_token,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] traffic_sources
    #   Information about the traffic sources.
    #   @return [Array<Types::TrafficSourceState>]
    #
    # @!attribute [rw] next_token
    #   This string indicates that the response contains more items than can
    #   be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeTrafficSourcesResponse AWS API Documentation
    #
    class DescribeTrafficSourcesResponse < Struct.new(
      :traffic_sources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] warm_pool_configuration
    #   The warm pool configuration details.
    #   @return [Types::WarmPoolConfiguration]
    #
    # @!attribute [rw] instances
    #   The instances that are currently in the warm pool.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] next_token
    #   This string indicates that the response contains more items than can
    #   be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeWarmPoolAnswer AWS API Documentation
    #
    class DescribeWarmPoolAnswer < Struct.new(
      :warm_pool_configuration,
      :instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of instances to return with this call. The
    #   maximum value is `50`.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of instances to return. (You received
    #   this token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeWarmPoolType AWS API Documentation
    #
    class DescribeWarmPoolType < Struct.new(
      :auto_scaling_group_name,
      :max_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the desired configuration for an instance refresh.
    #
    # If you specify a desired configuration, you must specify either a
    # `LaunchTemplate` or a `MixedInstancesPolicy`.
    #
    # @!attribute [rw] launch_template
    #   Describes the launch template and the version of the launch template
    #   that Amazon EC2 Auto Scaling uses to launch Amazon EC2 instances.
    #   For more information about launch templates, see [Launch
    #   templates][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchTemplates.html
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] mixed_instances_policy
    #   Use this structure to launch multiple instance types and On-Demand
    #   Instances and Spot Instances within a single Auto Scaling group.
    #
    #   A mixed instances policy contains information that Amazon EC2 Auto
    #   Scaling can use to launch instances and help optimize your costs.
    #   For more information, see [Auto Scaling groups with multiple
    #   instance types and purchase options][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html
    #   @return [Types::MixedInstancesPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DesiredConfiguration AWS API Documentation
    #
    class DesiredConfiguration < Struct.new(
      :launch_template,
      :mixed_instances_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activities
    #   The activities related to detaching the instances from the Auto
    #   Scaling group.
    #   @return [Array<Types::Activity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachInstancesAnswer AWS API Documentation
    #
    class DetachInstancesAnswer < Struct.new(
      :activities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] should_decrement_desired_capacity
    #   Indicates whether the Auto Scaling group decrements the desired
    #   capacity value by the number of instances detached.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachInstancesQuery AWS API Documentation
    #
    class DetachInstancesQuery < Struct.new(
      :instance_ids,
      :auto_scaling_group_name,
      :should_decrement_desired_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancerTargetGroupsResultType AWS API Documentation
    #
    class DetachLoadBalancerTargetGroupsResultType < Aws::EmptyStructure; end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups. You can
    #   specify up to 10 target groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancerTargetGroupsType AWS API Documentation
    #
    class DetachLoadBalancerTargetGroupsType < Struct.new(
      :auto_scaling_group_name,
      :target_group_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancersResultType AWS API Documentation
    #
    class DetachLoadBalancersResultType < Aws::EmptyStructure; end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_names
    #   The names of the load balancers. You can specify up to 10 load
    #   balancers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancersType AWS API Documentation
    #
    class DetachLoadBalancersType < Struct.new(
      :auto_scaling_group_name,
      :load_balancer_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachTrafficSourcesResultType AWS API Documentation
    #
    class DetachTrafficSourcesResultType < Aws::EmptyStructure; end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] traffic_sources
    #   The unique identifiers of one or more traffic sources. You can
    #   specify up to 10 traffic sources.
    #   @return [Array<Types::TrafficSourceIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachTrafficSourcesType AWS API Documentation
    #
    class DetachTrafficSourcesType < Struct.new(
      :auto_scaling_group_name,
      :traffic_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Identifies the metrics to disable.
    #
    #   You can specify one or more of the following metrics:
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
    #
    #   * `GroupInServiceCapacity`
    #
    #   * `GroupPendingCapacity`
    #
    #   * `GroupStandbyCapacity`
    #
    #   * `GroupTerminatingCapacity`
    #
    #   * `GroupTotalCapacity`
    #
    #   * `WarmPoolDesiredCapacity`
    #
    #   * `WarmPoolWarmedCapacity`
    #
    #   * `WarmPoolPendingCapacity`
    #
    #   * `WarmPoolTerminatingCapacity`
    #
    #   * `WarmPoolTotalCapacity`
    #
    #   * `GroupAndWarmPoolDesiredCapacity`
    #
    #   * `GroupAndWarmPoolTotalCapacity`
    #
    #   If you omit this property, all metrics are disabled.
    #
    #   For more information, see [Auto Scaling group metrics][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html#as-group-metrics
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DisableMetricsCollectionQuery AWS API Documentation
    #
    class DisableMetricsCollectionQuery < Struct.new(
      :auto_scaling_group_name,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes information used to set up an Amazon EBS volume specified in
    # a block device mapping.
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID of the volume to use.
    #
    #   You must specify either a `VolumeSize` or a `SnapshotId`.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   The volume size, in GiBs. The following are the supported volumes
    #   sizes for each volume type:
    #
    #   * `gp2` and `gp3`: 1-16,384
    #
    #   * `io1`: 4-16,384
    #
    #   * `st1` and `sc1`: 125-16,384
    #
    #   * `standard`: 1-1,024
    #
    #   You must specify either a `SnapshotId` or a `VolumeSize`. If you
    #   specify both `SnapshotId` and `VolumeSize`, the volume size must be
    #   equal or greater than the size of the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   The volume type. For more information, see [Amazon EBS volume
    #   types][1] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #   Valid values: `standard` \| `io1` \| `gp2` \| `st1` \| `sc1` \|
    #   `gp3`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    #   @return [String]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the volume is deleted on instance termination. For
    #   Amazon EC2 Auto Scaling, the default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   The number of input/output (I/O) operations per second (IOPS) to
    #   provision for the volume. For `gp3` and `io1` volumes, this
    #   represents the number of IOPS that are provisioned for the volume.
    #   For `gp2` volumes, this represents the baseline performance of the
    #   volume and the rate at which the volume accumulates I/O credits for
    #   bursting.
    #
    #   The following are the supported values for each volume type:
    #
    #   * `gp3`: 3,000-16,000 IOPS
    #
    #   * `io1`: 100-64,000 IOPS
    #
    #   For `io1` volumes, we guarantee 64,000 IOPS only for [Instances
    #   built on the Nitro System][1]. Other instance families guarantee
    #   performance up to 32,000 IOPS.
    #
    #   `Iops` is supported when the volume type is `gp3` or `io1` and
    #   required only when the volume type is `io1`. (Not used with
    #   `standard`, `gp2`, `st1`, or `sc1` volumes.)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances
    #   @return [Integer]
    #
    # @!attribute [rw] encrypted
    #   Specifies whether the volume should be encrypted. Encrypted EBS
    #   volumes can only be attached to instances that support Amazon EBS
    #   encryption. For more information, see [Supported instance types][1].
    #   If your AMI uses encrypted volumes, you can also only launch it on
    #   supported instance types.
    #
    #   <note markdown="1"> If you are creating a volume from a snapshot, you cannot create an
    #   unencrypted volume from an encrypted snapshot. Also, you cannot
    #   specify a KMS key ID when using a launch configuration.
    #
    #    If you enable encryption by default, the EBS volumes that you create
    #   are always encrypted, either using the Amazon Web Services managed
    #   KMS key or a customer-managed KMS key, regardless of whether the
    #   snapshot was encrypted.
    #
    #    For more information, see [Use Amazon Web Services KMS keys to
    #   encrypt Amazon EBS volumes][2] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-data-protection.html#encryption
    #   @return [Boolean]
    #
    # @!attribute [rw] throughput
    #   The throughput (MiBps) to provision for a `gp3` volume.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/Ebs AWS API Documentation
    #
    class Ebs < Struct.new(
      :snapshot_id,
      :volume_size,
      :volume_type,
      :delete_on_termination,
      :iops,
      :encrypted,
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Identifies the metrics to enable.
    #
    #   You can specify one or more of the following metrics:
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
    #
    #   * `GroupInServiceCapacity`
    #
    #   * `GroupPendingCapacity`
    #
    #   * `GroupStandbyCapacity`
    #
    #   * `GroupTerminatingCapacity`
    #
    #   * `GroupTotalCapacity`
    #
    #   * `WarmPoolDesiredCapacity`
    #
    #   * `WarmPoolWarmedCapacity`
    #
    #   * `WarmPoolPendingCapacity`
    #
    #   * `WarmPoolTerminatingCapacity`
    #
    #   * `WarmPoolTotalCapacity`
    #
    #   * `GroupAndWarmPoolDesiredCapacity`
    #
    #   * `GroupAndWarmPoolTotalCapacity`
    #
    #   If you specify `Granularity` and don't specify any metrics, all
    #   metrics are enabled.
    #
    #   For more information, see [Auto Scaling group metrics][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html#as-group-metrics
    #   @return [Array<String>]
    #
    # @!attribute [rw] granularity
    #   The frequency at which Amazon EC2 Auto Scaling sends aggregated data
    #   to CloudWatch. The only valid value is `1Minute`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/EnableMetricsCollectionQuery AWS API Documentation
    #
    class EnableMetricsCollectionQuery < Struct.new(
      :auto_scaling_group_name,
      :metrics,
      :granularity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an enabled Auto Scaling group metric.
    #
    # @!attribute [rw] metric
    #   One of the following metrics:
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
    #
    #   * `GroupInServiceCapacity`
    #
    #   * `GroupPendingCapacity`
    #
    #   * `GroupStandbyCapacity`
    #
    #   * `GroupTerminatingCapacity`
    #
    #   * `GroupTotalCapacity`
    #
    #   * `WarmPoolDesiredCapacity`
    #
    #   * `WarmPoolWarmedCapacity`
    #
    #   * `WarmPoolPendingCapacity`
    #
    #   * `WarmPoolTerminatingCapacity`
    #
    #   * `WarmPoolTotalCapacity`
    #
    #   * `GroupAndWarmPoolDesiredCapacity`
    #
    #   * `GroupAndWarmPoolTotalCapacity`
    #
    #   For more information, see [Auto Scaling group metrics][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html#as-group-metrics
    #   @return [String]
    #
    # @!attribute [rw] granularity
    #   The granularity of the metric. The only valid value is `1Minute`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/EnabledMetric AWS API Documentation
    #
    class EnabledMetric < Struct.new(
      :metric,
      :granularity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activities
    #   The activities related to moving instances into `Standby` mode.
    #   @return [Array<Types::Activity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/EnterStandbyAnswer AWS API Documentation
    #
    class EnterStandbyAnswer < Struct.new(
      :activities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] should_decrement_desired_capacity
    #   Indicates whether to decrement the desired capacity of the Auto
    #   Scaling group by the number of instances moved to `Standby` mode.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/EnterStandbyQuery AWS API Documentation
    #
    class EnterStandbyQuery < Struct.new(
      :instance_ids,
      :auto_scaling_group_name,
      :should_decrement_desired_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name or ARN of the policy.
    #   @return [String]
    #
    # @!attribute [rw] honor_cooldown
    #   Indicates whether Amazon EC2 Auto Scaling waits for the cooldown
    #   period to complete before executing the policy.
    #
    #   Valid only if the policy type is `SimpleScaling`. For more
    #   information, see [Scaling cooldowns for Amazon EC2 Auto Scaling][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #   @return [Boolean]
    #
    # @!attribute [rw] metric_value
    #   The metric value to compare to `BreachThreshold`. This enables you
    #   to execute a policy of type `StepScaling` and determine which step
    #   adjustment to use. For example, if the breach threshold is 50 and
    #   you want to use a step adjustment with a lower bound of 0 and an
    #   upper bound of 10, you can set the metric value to 59.
    #
    #   If you specify a metric value that doesn't correspond to a step
    #   adjustment for the policy, the call returns an error.
    #
    #   Required if the policy type is `StepScaling` and not supported
    #   otherwise.
    #   @return [Float]
    #
    # @!attribute [rw] breach_threshold
    #   The breach threshold for the alarm.
    #
    #   Required if the policy type is `StepScaling` and not supported
    #   otherwise.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ExecutePolicyType AWS API Documentation
    #
    class ExecutePolicyType < Struct.new(
      :auto_scaling_group_name,
      :policy_name,
      :honor_cooldown,
      :metric_value,
      :breach_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activities
    #   The activities related to moving instances out of `Standby` mode.
    #   @return [Array<Types::Activity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ExitStandbyAnswer AWS API Documentation
    #
    class ExitStandbyAnswer < Struct.new(
      :activities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ExitStandbyQuery AWS API Documentation
    #
    class ExitStandbyQuery < Struct.new(
      :instance_ids,
      :auto_scaling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a scheduled action that could not be created, updated, or
    # deleted.
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message accompanying the error code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/FailedScheduledUpdateGroupActionRequest AWS API Documentation
    #
    class FailedScheduledUpdateGroupActionRequest < Struct.new(
      :scheduled_action_name,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter that is used to return a more specific list of
    # results from a describe operation.
    #
    # If you specify multiple filters, the filters are automatically
    # logically joined with an `AND`, and the request returns only the
    # results that match all of the specified filters.
    #
    # For more information, see [Tag Auto Scaling groups and instances][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #
    #   The valid values for `Name` depend on which API operation you're
    #   using with the filter (DescribeAutoScalingGroups or DescribeTags).
    #
    #   **DescribeAutoScalingGroups**
    #
    #   Valid values for `Name` include the following:
    #
    #   * `tag-key` - Accepts tag keys. The results only include information
    #     about the Auto Scaling groups associated with these tag keys.
    #
    #   * `tag-value` - Accepts tag values. The results only include
    #     information about the Auto Scaling groups associated with these
    #     tag values.
    #
    #   * `tag:<key>` - Accepts the key/value combination of the tag. Use
    #     the tag key in the filter name and the tag value as the filter
    #     value. The results only include information about the Auto Scaling
    #     groups associated with the specified key/value combination.
    #
    #   **DescribeTags**
    #
    #   Valid values for `Name` include the following:
    #
    #   * `auto-scaling-group` - Accepts the names of Auto Scaling groups.
    #     The results only include information about the tags associated
    #     with these Auto Scaling groups.
    #
    #   * `key` - Accepts tag keys. The results only include information
    #     about the tags associated with these tag keys.
    #
    #   * `value` - Accepts tag values. The results only include information
    #     about the tags associated with these tag values.
    #
    #   * `propagate-at-launch` - Accepts a Boolean value, which specifies
    #     whether tags propagate to instances at launch. The results only
    #     include information about the tags associated with the specified
    #     Boolean value.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One or more filter values. Filter values are case-sensitive.
    #
    #   If you specify multiple values for a filter, the values are
    #   automatically logically joined with an `OR`, and the request returns
    #   all results that match any of the specified values. For example,
    #   specify "tag:environment" for the filter name and
    #   "production,development" for the filter values to find Auto
    #   Scaling groups with the tag "environment=production" or
    #   "environment=development".
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_forecast
    #   The load forecast.
    #   @return [Array<Types::LoadForecast>]
    #
    # @!attribute [rw] capacity_forecast
    #   The capacity forecast.
    #   @return [Types::CapacityForecast]
    #
    # @!attribute [rw] update_time
    #   The time the forecast was made.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/GetPredictiveScalingForecastAnswer AWS API Documentation
    #
    class GetPredictiveScalingForecastAnswer < Struct.new(
      :load_forecast,
      :capacity_forecast,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The inclusive start time of the time range for the forecast data to
    #   get. At most, the date and time can be one year before the current
    #   date and time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The exclusive end time of the time range for the forecast data to
    #   get. The maximum time duration between the start and end time is 30
    #   days.
    #
    #   Although this parameter can accept a date and time that is more than
    #   two days in the future, the availability of forecast data has
    #   limits. Amazon EC2 Auto Scaling only issues forecasts for periods of
    #   two days in advance.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/GetPredictiveScalingForecastType AWS API Documentation
    #
    class GetPredictiveScalingForecastType < Struct.new(
      :auto_scaling_group_name,
      :policy_name,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an EC2 instance.
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the instance is running.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_state
    #   A description of the current lifecycle state. The `Quarantined`
    #   state is not used. For information about lifecycle states, see
    #   [Instance lifecycle][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The last reported health status of the instance. `Healthy` means
    #   that the instance is healthy and should remain in service.
    #   `Unhealthy` means that the instance is unhealthy and that Amazon EC2
    #   Auto Scaling should terminate and replace it.
    #   @return [String]
    #
    # @!attribute [rw] launch_configuration_name
    #   The launch configuration associated with the instance.
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   The launch template for the instance.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] protected_from_scale_in
    #   Indicates whether the instance is protected from termination by
    #   Amazon EC2 Auto Scaling when scaling in.
    #   @return [Boolean]
    #
    # @!attribute [rw] weighted_capacity
    #   The number of capacity units contributed by the instance based on
    #   its instance type.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 999.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :instance_id,
      :instance_type,
      :availability_zone,
      :lifecycle_state,
      :health_status,
      :launch_configuration_name,
      :launch_template,
      :protected_from_scale_in,
      :weighted_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata options for the instances. For more information, see
    # [Configuring the Instance Metadata Options][1] in the *Amazon EC2 Auto
    # Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds
    #
    # @!attribute [rw] http_tokens
    #   The state of token usage for your instance metadata requests. If the
    #   parameter is not specified in the request, the default state is
    #   `optional`.
    #
    #   If the state is `optional`, you can choose to retrieve instance
    #   metadata with or without a signed token header on your request. If
    #   you retrieve the IAM role credentials without a token, the version
    #   1.0 role credentials are returned. If you retrieve the IAM role
    #   credentials using a valid signed token, the version 2.0 role
    #   credentials are returned.
    #
    #   If the state is `required`, you must send a signed token header with
    #   any instance metadata retrieval requests. In this state, retrieving
    #   the IAM role credentials always returns the version 2.0 credentials;
    #   the version 1.0 credentials are not available.
    #   @return [String]
    #
    # @!attribute [rw] http_put_response_hop_limit
    #   The desired HTTP PUT response hop limit for instance metadata
    #   requests. The larger the number, the further instance metadata
    #   requests can travel.
    #
    #   Default: 1
    #   @return [Integer]
    #
    # @!attribute [rw] http_endpoint
    #   This parameter enables or disables the HTTP metadata endpoint on
    #   your instances. If the parameter is not specified, the default state
    #   is `enabled`.
    #
    #   <note markdown="1"> If you specify a value of `disabled`, you will not be able to access
    #   your instance metadata.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/InstanceMetadataOptions AWS API Documentation
    #
    class InstanceMetadataOptions < Struct.new(
      :http_tokens,
      :http_put_response_hop_limit,
      :http_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether detailed monitoring is enabled for the Auto Scaling
    # instances.
    #
    # @!attribute [rw] enabled
    #   If `true`, detailed monitoring is enabled. Otherwise, basic
    #   monitoring is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/InstanceMonitoring AWS API Documentation
    #
    class InstanceMonitoring < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an instance refresh for an Auto Scaling group.
    #
    # @!attribute [rw] instance_refresh_id
    #   The instance refresh ID.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status for the instance refresh operation:
    #
    #   * `Pending` - The request was created, but the instance refresh has
    #     not started.
    #
    #   * `InProgress` - An instance refresh is in progress.
    #
    #   * `Successful` - An instance refresh completed successfully.
    #
    #   * `Failed` - An instance refresh failed to complete. You can
    #     troubleshoot using the status reason and the scaling activities.
    #
    #   * `Cancelling` - An ongoing instance refresh is being cancelled.
    #
    #   * `Cancelled` - The instance refresh is cancelled.
    #
    #   * `RollbackInProgress` - An instance refresh is being rolled back.
    #
    #   * `RollbackFailed` - The rollback failed to complete. You can
    #     troubleshoot using the status reason and the scaling activities.
    #
    #   * `RollbackSuccessful` - The rollback completed successfully.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The explanation for the specific status assigned to this operation.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time at which the instance refresh began.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time at which the instance refresh ended.
    #   @return [Time]
    #
    # @!attribute [rw] percentage_complete
    #   The percentage of the instance refresh that is complete. For each
    #   instance replacement, Amazon EC2 Auto Scaling tracks the instance's
    #   health status and warm-up time. When the instance's health status
    #   changes to healthy and the specified warm-up time passes, the
    #   instance is considered updated and is added to the percentage
    #   complete.
    #
    #   <note markdown="1"> `PercentageComplete` does not include instances that are replaced
    #   during a rollback. This value gradually goes back down to zero
    #   during a rollback.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] instances_to_update
    #   The number of instances remaining to update before the instance
    #   refresh is complete.
    #
    #   <note markdown="1"> If you roll back the instance refresh, `InstancesToUpdate` shows you
    #   the number of instances that were not yet updated by the instance
    #   refresh. Therefore, these instances don't need to be replaced as
    #   part of the rollback.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] progress_details
    #   Additional progress details for an Auto Scaling group that has a
    #   warm pool.
    #   @return [Types::InstanceRefreshProgressDetails]
    #
    # @!attribute [rw] preferences
    #   The preferences for an instance refresh.
    #   @return [Types::RefreshPreferences]
    #
    # @!attribute [rw] desired_configuration
    #   Describes the desired configuration for the instance refresh.
    #   @return [Types::DesiredConfiguration]
    #
    # @!attribute [rw] rollback_details
    #   The rollback details.
    #   @return [Types::RollbackDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/InstanceRefresh AWS API Documentation
    #
    class InstanceRefresh < Struct.new(
      :instance_refresh_id,
      :auto_scaling_group_name,
      :status,
      :status_reason,
      :start_time,
      :end_time,
      :percentage_complete,
      :instances_to_update,
      :progress_details,
      :preferences,
      :desired_configuration,
      :rollback_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because an active instance refresh already exists
    # for the specified Auto Scaling group.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/InstanceRefreshInProgressFault AWS API Documentation
    #
    class InstanceRefreshInProgressFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reports progress on replacing instances that are in the Auto Scaling
    # group.
    #
    # @!attribute [rw] percentage_complete
    #   The percentage of instances in the Auto Scaling group that have been
    #   replaced. For each instance replacement, Amazon EC2 Auto Scaling
    #   tracks the instance's health status and warm-up time. When the
    #   instance's health status changes to healthy and the specified
    #   warm-up time passes, the instance is considered updated and is added
    #   to the percentage complete.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_to_update
    #   The number of instances remaining to update.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/InstanceRefreshLivePoolProgress AWS API Documentation
    #
    class InstanceRefreshLivePoolProgress < Struct.new(
      :percentage_complete,
      :instances_to_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reports progress on replacing instances in an Auto Scaling group that
    # has a warm pool. This includes separate details for instances in the
    # warm pool and instances in the Auto Scaling group (the live pool).
    #
    # @!attribute [rw] live_pool_progress
    #   Reports progress on replacing instances that are in the Auto Scaling
    #   group.
    #   @return [Types::InstanceRefreshLivePoolProgress]
    #
    # @!attribute [rw] warm_pool_progress
    #   Reports progress on replacing instances that are in the warm pool.
    #   @return [Types::InstanceRefreshWarmPoolProgress]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/InstanceRefreshProgressDetails AWS API Documentation
    #
    class InstanceRefreshProgressDetails < Struct.new(
      :live_pool_progress,
      :warm_pool_progress)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reports progress on replacing instances that are in the warm pool.
    #
    # @!attribute [rw] percentage_complete
    #   The percentage of instances in the warm pool that have been
    #   replaced. For each instance replacement, Amazon EC2 Auto Scaling
    #   tracks the instance's health status and warm-up time. When the
    #   instance's health status changes to healthy and the specified
    #   warm-up time passes, the instance is considered updated and is added
    #   to the percentage complete.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_to_update
    #   The number of instances remaining to update.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/InstanceRefreshWarmPoolProgress AWS API Documentation
    #
    class InstanceRefreshWarmPoolProgress < Struct.new(
      :percentage_complete,
      :instances_to_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attributes for the instance types for a mixed instances policy.
    # Amazon EC2 Auto Scaling uses your specified requirements to identify
    # instance types. Then, it uses your On-Demand and Spot allocation
    # strategies to launch instances from these instance types.
    #
    # When you specify multiple attributes, you get instance types that
    # satisfy all of the specified attributes. If you specify multiple
    # values for an attribute, you get instance types that satisfy any of
    # the specified values.
    #
    # To limit the list of instance types from which Amazon EC2 Auto Scaling
    # can identify matching instance types, you can use one of the following
    # parameters, but not both in the same request:
    #
    # * `AllowedInstanceTypes` - The instance types to include in the list.
    #   All other instance types are ignored, even if they match your
    #   specified attributes.
    #
    # * `ExcludedInstanceTypes` - The instance types to exclude from the
    #   list, even if they match your specified attributes.
    #
    # <note markdown="1"> You must specify `VCpuCount` and `MemoryMiB`. All other attributes are
    # optional. Any unspecified optional attribute is set to its default.
    #
    #  </note>
    #
    # For more information, see [Creating an Auto Scaling group using
    # attribute-based instance type selection][1] in the *Amazon EC2 Auto
    # Scaling User Guide*. For help determining which instance types match
    # your attributes before you apply them to your Auto Scaling group, see
    # [Preview instance types with specified attributes][2] in the *Amazon
    # EC2 User Guide for Linux Instances*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html
    # [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html#ec2fleet-get-instance-types-from-instance-requirements
    #
    # @!attribute [rw] v_cpu_count
    #   The minimum and maximum number of vCPUs for an instance type.
    #   @return [Types::VCpuCountRequest]
    #
    # @!attribute [rw] memory_mi_b
    #   The minimum and maximum instance memory size for an instance type,
    #   in MiB.
    #   @return [Types::MemoryMiBRequest]
    #
    # @!attribute [rw] cpu_manufacturers
    #   Lists which specific CPU manufacturers to include.
    #
    #   * For instance types with Intel CPUs, specify `intel`.
    #
    #   * For instance types with AMD CPUs, specify `amd`.
    #
    #   * For instance types with Amazon Web Services CPUs, specify
    #     `amazon-web-services`.
    #
    #   <note markdown="1"> Don't confuse the CPU hardware manufacturer with the CPU hardware
    #   architecture. Instances will be launched with a compatible CPU
    #   architecture based on the Amazon Machine Image (AMI) that you
    #   specify in your launch template.
    #
    #    </note>
    #
    #   Default: Any manufacturer
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_gi_b_per_v_cpu
    #   The minimum and maximum amount of memory per vCPU for an instance
    #   type, in GiB.
    #
    #   Default: No minimum or maximum limits
    #   @return [Types::MemoryGiBPerVCpuRequest]
    #
    # @!attribute [rw] excluded_instance_types
    #   The instance types to exclude. You can use strings with one or more
    #   wild cards, represented by an asterisk (`*`), to exclude an instance
    #   family, type, size, or generation. The following are examples:
    #   `m5.8xlarge`, `c5*.*`, `m5a.*`, `r*`, `*3*`.
    #
    #   For example, if you specify `c5*`, you are excluding the entire C5
    #   instance family, which includes all C5a and C5n instance types. If
    #   you specify `m5a.*`, Amazon EC2 Auto Scaling will exclude all the
    #   M5a instance types, but not the M5n instance types.
    #
    #   <note markdown="1"> If you specify `ExcludedInstanceTypes`, you can't specify
    #   `AllowedInstanceTypes`.
    #
    #    </note>
    #
    #   Default: No excluded instance types
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_generations
    #   Indicates whether current or previous generation instance types are
    #   included.
    #
    #   * For current generation instance types, specify `current`. The
    #     current generation includes EC2 instance types currently
    #     recommended for use. This typically includes the latest two to
    #     three generations in each instance family. For more information,
    #     see [Instance types][1] in the *Amazon EC2 User Guide for Linux
    #     Instances*.
    #
    #   * For previous generation instance types, specify `previous`.
    #
    #   Default: Any current or previous generation
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] spot_max_price_percentage_over_lowest_price
    #   The price protection threshold for Spot Instances. This is the
    #   maximum you’ll pay for a Spot Instance, expressed as a percentage
    #   higher than the least expensive current generation M, C, or R
    #   instance type with your specified attributes. When Amazon EC2 Auto
    #   Scaling selects instance types with your attributes, we will exclude
    #   instance types whose price is higher than your threshold. The
    #   parameter accepts an integer, which Amazon EC2 Auto Scaling
    #   interprets as a percentage. To turn off price protection, specify a
    #   high value, such as `999999`.
    #
    #   If you set `DesiredCapacityType` to `vcpu` or `memory-mib`, the
    #   price protection threshold is applied based on the per vCPU or per
    #   memory price instead of the per instance price.
    #
    #   Default: `100`
    #   @return [Integer]
    #
    # @!attribute [rw] on_demand_max_price_percentage_over_lowest_price
    #   The price protection threshold for On-Demand Instances. This is the
    #   maximum you’ll pay for an On-Demand Instance, expressed as a
    #   percentage higher than the least expensive current generation M, C,
    #   or R instance type with your specified attributes. When Amazon EC2
    #   Auto Scaling selects instance types with your attributes, we will
    #   exclude instance types whose price is higher than your threshold.
    #   The parameter accepts an integer, which Amazon EC2 Auto Scaling
    #   interprets as a percentage. To turn off price protection, specify a
    #   high value, such as `999999`.
    #
    #   If you set `DesiredCapacityType` to `vcpu` or `memory-mib`, the
    #   price protection threshold is applied based on the per vCPU or per
    #   memory price instead of the per instance price.
    #
    #   Default: `20`
    #   @return [Integer]
    #
    # @!attribute [rw] bare_metal
    #   Indicates whether bare metal instance types are included, excluded,
    #   or required.
    #
    #   Default: `excluded`
    #   @return [String]
    #
    # @!attribute [rw] burstable_performance
    #   Indicates whether burstable performance instance types are included,
    #   excluded, or required. For more information, see [Burstable
    #   performance instances][1] in the *Amazon EC2 User Guide for Linux
    #   Instances*.
    #
    #   Default: `excluded`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html
    #   @return [String]
    #
    # @!attribute [rw] require_hibernate_support
    #   Indicates whether instance types must provide On-Demand Instance
    #   hibernation support.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] network_interface_count
    #   The minimum and maximum number of network interfaces for an instance
    #   type.
    #
    #   Default: No minimum or maximum limits
    #   @return [Types::NetworkInterfaceCountRequest]
    #
    # @!attribute [rw] local_storage
    #   Indicates whether instance types with instance store volumes are
    #   included, excluded, or required. For more information, see [Amazon
    #   EC2 instance store][1] in the *Amazon EC2 User Guide for Linux
    #   Instances*.
    #
    #   Default: `included`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html
    #   @return [String]
    #
    # @!attribute [rw] local_storage_types
    #   Indicates the type of local storage that is required.
    #
    #   * For instance types with hard disk drive (HDD) storage, specify
    #     `hdd`.
    #
    #   * For instance types with solid state drive (SSD) storage, specify
    #     `ssd`.
    #
    #   Default: Any local storage type
    #   @return [Array<String>]
    #
    # @!attribute [rw] total_local_storage_gb
    #   The minimum and maximum total local storage size for an instance
    #   type, in GB.
    #
    #   Default: No minimum or maximum limits
    #   @return [Types::TotalLocalStorageGBRequest]
    #
    # @!attribute [rw] baseline_ebs_bandwidth_mbps
    #   The minimum and maximum baseline bandwidth performance for an
    #   instance type, in Mbps. For more information, see [Amazon
    #   EBS–optimized instances][1] in the *Amazon EC2 User Guide for Linux
    #   Instances*.
    #
    #   Default: No minimum or maximum limits
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html
    #   @return [Types::BaselineEbsBandwidthMbpsRequest]
    #
    # @!attribute [rw] accelerator_types
    #   Lists the accelerator types that must be on an instance type.
    #
    #   * For instance types with GPU accelerators, specify `gpu`.
    #
    #   * For instance types with FPGA accelerators, specify `fpga`.
    #
    #   * For instance types with inference accelerators, specify
    #     `inference`.
    #
    #   Default: Any accelerator type
    #   @return [Array<String>]
    #
    # @!attribute [rw] accelerator_count
    #   The minimum and maximum number of accelerators (GPUs, FPGAs, or
    #   Amazon Web Services Inferentia chips) for an instance type.
    #
    #   To exclude accelerator-enabled instance types, set `Max` to `0`.
    #
    #   Default: No minimum or maximum limits
    #   @return [Types::AcceleratorCountRequest]
    #
    # @!attribute [rw] accelerator_manufacturers
    #   Indicates whether instance types must have accelerators by specific
    #   manufacturers.
    #
    #   * For instance types with NVIDIA devices, specify `nvidia`.
    #
    #   * For instance types with AMD devices, specify `amd`.
    #
    #   * For instance types with Amazon Web Services devices, specify
    #     `amazon-web-services`.
    #
    #   * For instance types with Xilinx devices, specify `xilinx`.
    #
    #   Default: Any manufacturer
    #   @return [Array<String>]
    #
    # @!attribute [rw] accelerator_names
    #   Lists the accelerators that must be on an instance type.
    #
    #   * For instance types with NVIDIA A100 GPUs, specify `a100`.
    #
    #   * For instance types with NVIDIA V100 GPUs, specify `v100`.
    #
    #   * For instance types with NVIDIA K80 GPUs, specify `k80`.
    #
    #   * For instance types with NVIDIA T4 GPUs, specify `t4`.
    #
    #   * For instance types with NVIDIA M60 GPUs, specify `m60`.
    #
    #   * For instance types with AMD Radeon Pro V520 GPUs, specify
    #     `radeon-pro-v520`.
    #
    #   * For instance types with Xilinx VU9P FPGAs, specify `vu9p`.
    #
    #   Default: Any accelerator
    #   @return [Array<String>]
    #
    # @!attribute [rw] accelerator_total_memory_mi_b
    #   The minimum and maximum total memory size for the accelerators on an
    #   instance type, in MiB.
    #
    #   Default: No minimum or maximum limits
    #   @return [Types::AcceleratorTotalMemoryMiBRequest]
    #
    # @!attribute [rw] network_bandwidth_gbps
    #   The minimum and maximum amount of network bandwidth, in gigabits per
    #   second (Gbps).
    #
    #   Default: No minimum or maximum limits
    #   @return [Types::NetworkBandwidthGbpsRequest]
    #
    # @!attribute [rw] allowed_instance_types
    #   The instance types to apply your specified attributes against. All
    #   other instance types are ignored, even if they match your specified
    #   attributes.
    #
    #   You can use strings with one or more wild cards, represented by an
    #   asterisk (`*`), to allow an instance type, size, or generation. The
    #   following are examples: `m5.8xlarge`, `c5*.*`, `m5a.*`, `r*`, `*3*`.
    #
    #   For example, if you specify `c5*`, Amazon EC2 Auto Scaling will
    #   allow the entire C5 instance family, which includes all C5a and C5n
    #   instance types. If you specify `m5a.*`, Amazon EC2 Auto Scaling will
    #   allow all the M5a instance types, but not the M5n instance types.
    #
    #   <note markdown="1"> If you specify `AllowedInstanceTypes`, you can't specify
    #   `ExcludedInstanceTypes`.
    #
    #    </note>
    #
    #   Default: All instance types
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/InstanceRequirements AWS API Documentation
    #
    class InstanceRequirements < Struct.new(
      :v_cpu_count,
      :memory_mi_b,
      :cpu_manufacturers,
      :memory_gi_b_per_v_cpu,
      :excluded_instance_types,
      :instance_generations,
      :spot_max_price_percentage_over_lowest_price,
      :on_demand_max_price_percentage_over_lowest_price,
      :bare_metal,
      :burstable_performance,
      :require_hibernate_support,
      :network_interface_count,
      :local_storage,
      :local_storage_types,
      :total_local_storage_gb,
      :baseline_ebs_bandwidth_mbps,
      :accelerator_types,
      :accelerator_count,
      :accelerator_manufacturers,
      :accelerator_names,
      :accelerator_total_memory_mi_b,
      :network_bandwidth_gbps,
      :allowed_instance_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an instance reuse policy for a warm pool.
    #
    # For more information, see [Warm pools for Amazon EC2 Auto Scaling][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html
    #
    # @!attribute [rw] reuse_on_scale_in
    #   Specifies whether instances in the Auto Scaling group can be
    #   returned to the warm pool on scale in.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/InstanceReusePolicy AWS API Documentation
    #
    class InstanceReusePolicy < Struct.new(
      :reuse_on_scale_in)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to specify the distribution of On-Demand Instances
    # and Spot Instances and the allocation strategies used to fulfill
    # On-Demand and Spot capacities for a mixed instances policy.
    #
    # @!attribute [rw] on_demand_allocation_strategy
    #   The allocation strategy to apply to your On-Demand Instances when
    #   they are launched. Possible instance types are determined by the
    #   launch template overrides that you specify.
    #
    #   The following lists the valid values:
    #
    #   lowest-price
    #
    #   : Uses price to determine which instance types are the highest
    #     priority, launching the lowest priced instance types within an
    #     Availability Zone first. This is the default value for Auto
    #     Scaling groups that specify InstanceRequirements.
    #
    #   prioritized
    #
    #   : You set the order of instance types for the launch template
    #     overrides from highest to lowest priority (from first to last in
    #     the list). Amazon EC2 Auto Scaling launches your highest priority
    #     instance types first. If all your On-Demand capacity cannot be
    #     fulfilled using your highest priority instance type, then Amazon
    #     EC2 Auto Scaling launches the remaining capacity using the second
    #     priority instance type, and so on. This is the default value for
    #     Auto Scaling groups that don't specify InstanceRequirements and
    #     cannot be used for groups that do.
    #   @return [String]
    #
    # @!attribute [rw] on_demand_base_capacity
    #   The minimum amount of the Auto Scaling group's capacity that must
    #   be fulfilled by On-Demand Instances. This base portion is launched
    #   first as your group scales.
    #
    #   This number has the same unit of measurement as the group's desired
    #   capacity. If you change the default unit of measurement (number of
    #   instances) by specifying weighted capacity values in your launch
    #   template overrides list, or by changing the default desired capacity
    #   type setting of the group, you must specify this number using the
    #   same unit of measurement.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] on_demand_percentage_above_base_capacity
    #   Controls the percentages of On-Demand Instances and Spot Instances
    #   for your additional capacity beyond `OnDemandBaseCapacity`.
    #   Expressed as a number (for example, 20 specifies 20% On-Demand
    #   Instances, 80% Spot Instances). If set to 100, only On-Demand
    #   Instances are used.
    #
    #   Default: 100
    #   @return [Integer]
    #
    # @!attribute [rw] spot_allocation_strategy
    #   The allocation strategy to apply to your Spot Instances when they
    #   are launched. Possible instance types are determined by the launch
    #   template overrides that you specify.
    #
    #   The following lists the valid values:
    #
    #   capacity-optimized
    #
    #   : Requests Spot Instances using pools that are optimally chosen
    #     based on the available Spot capacity. This strategy has the lowest
    #     risk of interruption. To give certain instance types a higher
    #     chance of launching first, use `capacity-optimized-prioritized`.
    #
    #   capacity-optimized-prioritized
    #
    #   : You set the order of instance types for the launch template
    #     overrides from highest to lowest priority (from first to last in
    #     the list). Amazon EC2 Auto Scaling honors the instance type
    #     priorities on a best effort basis but optimizes for capacity
    #     first. Note that if the On-Demand allocation strategy is set to
    #     `prioritized`, the same priority is applied when fulfilling
    #     On-Demand capacity. This is not a valid value for Auto Scaling
    #     groups that specify InstanceRequirements.
    #
    #   lowest-price
    #
    #   : Requests Spot Instances using the lowest priced pools within an
    #     Availability Zone, across the number of Spot pools that you
    #     specify for the `SpotInstancePools` property. To ensure that your
    #     desired capacity is met, you might receive Spot Instances from
    #     several pools. This is the default value, but it might lead to
    #     high interruption rates because this strategy only considers
    #     instance price and not available capacity.
    #
    #   price-capacity-optimized (recommended)
    #
    #   : The price and capacity optimized allocation strategy looks at both
    #     price and capacity to select the Spot Instance pools that are the
    #     least likely to be interrupted and have the lowest possible price.
    #   @return [String]
    #
    # @!attribute [rw] spot_instance_pools
    #   The number of Spot Instance pools across which to allocate your Spot
    #   Instances. The Spot pools are determined from the different instance
    #   types in the overrides. Valid only when the `SpotAllocationStrategy`
    #   is `lowest-price`. Value must be in the range of 1–20.
    #
    #   Default: 2
    #   @return [Integer]
    #
    # @!attribute [rw] spot_max_price
    #   The maximum price per unit hour that you are willing to pay for a
    #   Spot Instance. If your maximum price is lower than the Spot price
    #   for the instance types that you selected, your Spot Instances are
    #   not launched. We do not recommend specifying a maximum price because
    #   it can lead to increased interruptions. When Spot Instances launch,
    #   you pay the current Spot price. To remove a maximum price that you
    #   previously set, include the property but specify an empty string
    #   ("") for the value.
    #
    #   If you specify a maximum price, your instances will be interrupted
    #   more frequently than if you do not specify one.
    #
    #   Valid Range: Minimum value of 0.001
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/InstancesDistribution AWS API Documentation
    #
    class InstancesDistribution < Struct.new(
      :on_demand_allocation_strategy,
      :on_demand_base_capacity,
      :on_demand_percentage_above_base_capacity,
      :spot_allocation_strategy,
      :spot_instance_pools,
      :spot_max_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `NextToken` value is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/InvalidNextToken AWS API Documentation
    #
    class InvalidNextToken < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because a desired configuration was not found or an
    # incompatible launch template (uses a Systems Manager parameter instead
    # of an AMI ID) or launch template version (`$Latest` or `$Default`) is
    # present on the Auto Scaling group.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/IrreversibleInstanceRefreshFault AWS API Documentation
    #
    class IrreversibleInstanceRefreshFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a launch configuration.
    #
    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] launch_configuration_arn
    #   The Amazon Resource Name (ARN) of the launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The ID of the Amazon Machine Image (AMI) to use to launch your EC2
    #   instances. For more information, see [Find a Linux AMI][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair.
    #
    #   For more information, see [Amazon EC2 Key Pairs][1] in the *Amazon
    #   EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   A list that contains the security groups to assign to the instances
    #   in the Auto Scaling group. For more information, see [Security
    #   Groups for Your VPC][1] in the *Amazon Virtual Private Cloud User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] classic_link_vpc_id
    #   Available for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] classic_link_vpc_security_groups
    #   Available for backward compatibility.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_data
    #   The user data to make available to the launched EC2 instances. For
    #   more information, see [Instance metadata and user data][1] (Linux)
    #   and [Instance metadata and user data][2] (Windows). If you are using
    #   a command line tool, base64-encoding is performed for you, and you
    #   can load the text from a file. Otherwise, you must provide
    #   base64-encoded text. User data is limited to 16 KB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type for the instances. For information about available
    #   instance types, see [Available instance types][1] in the *Amazon EC2
    #   User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes
    #   @return [String]
    #
    # @!attribute [rw] kernel_id
    #   The ID of the kernel associated with the AMI.
    #   @return [String]
    #
    # @!attribute [rw] ramdisk_id
    #   The ID of the RAM disk associated with the AMI.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   The block device mapping entries that define the block devices to
    #   attach to the instances at launch. By default, the block devices
    #   specified in the block device mapping for the AMI are used. For more
    #   information, see [Block Device Mapping][1] in the *Amazon EC2 User
    #   Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] instance_monitoring
    #   Controls whether instances in this group are launched with detailed
    #   (`true`) or basic (`false`) monitoring.
    #
    #   For more information, see [Configure Monitoring for Auto Scaling
    #   Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html
    #   @return [Types::InstanceMonitoring]
    #
    # @!attribute [rw] spot_price
    #   The maximum hourly price to be paid for any Spot Instance launched
    #   to fulfill the request. Spot Instances are launched when the price
    #   you specify exceeds the current Spot price. For more information,
    #   see [Requesting Spot Instances][1] in the *Amazon EC2 Auto Scaling
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile
    #   The name or the Amazon Resource Name (ARN) of the instance profile
    #   associated with the IAM role for the instance. The instance profile
    #   contains the IAM role. For more information, see [IAM role for
    #   applications that run on Amazon EC2 instances][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The creation date and time for the launch configuration.
    #   @return [Time]
    #
    # @!attribute [rw] ebs_optimized
    #   Specifies whether the launch configuration is optimized for EBS I/O
    #   (`true`) or not (`false`). For more information, see [Amazon
    #   EBS-Optimized Instances][1] in the *Amazon EC2 User Guide for Linux
    #   Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html
    #   @return [Boolean]
    #
    # @!attribute [rw] associate_public_ip_address
    #   Specifies whether to assign a public IPv4 address to the group's
    #   instances. If the instance is launched into a default subnet, the
    #   default is to assign a public IPv4 address, unless you disabled the
    #   option to assign a public IPv4 address on the subnet. If the
    #   instance is launched into a nondefault subnet, the default is not to
    #   assign a public IPv4 address, unless you enabled the option to
    #   assign a public IPv4 address on the subnet. For more information,
    #   see [Launching Auto Scaling instances in a VPC][1] in the *Amazon
    #   EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    #   @return [Boolean]
    #
    # @!attribute [rw] placement_tenancy
    #   The tenancy of the instance, either `default` or `dedicated`. An
    #   instance with `dedicated` tenancy runs on isolated, single-tenant
    #   hardware and can only be launched into a VPC.
    #
    #   For more information, see [Configuring instance tenancy with Amazon
    #   EC2 Auto Scaling][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html
    #   @return [String]
    #
    # @!attribute [rw] metadata_options
    #   The metadata options for the instances. For more information, see
    #   [Configuring the Instance Metadata Options][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds
    #   @return [Types::InstanceMetadataOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LaunchConfiguration AWS API Documentation
    #
    class LaunchConfiguration < Struct.new(
      :launch_configuration_name,
      :launch_configuration_arn,
      :image_id,
      :key_name,
      :security_groups,
      :classic_link_vpc_id,
      :classic_link_vpc_security_groups,
      :user_data,
      :instance_type,
      :kernel_id,
      :ramdisk_id,
      :block_device_mappings,
      :instance_monitoring,
      :spot_price,
      :iam_instance_profile,
      :created_time,
      :ebs_optimized,
      :associate_public_ip_address,
      :placement_tenancy,
      :metadata_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LaunchConfigurationNameType AWS API Documentation
    #
    class LaunchConfigurationNameType < Struct.new(
      :launch_configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_configuration_names
    #   The launch configuration names. If you omit this property, all
    #   launch configurations are described.
    #
    #   Array Members: Maximum number of 50 items.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LaunchConfigurationNamesType AWS API Documentation
    #
    class LaunchConfigurationNamesType < Struct.new(
      :launch_configuration_names,
      :next_token,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_configurations
    #   The launch configurations.
    #   @return [Array<Types::LaunchConfiguration>]
    #
    # @!attribute [rw] next_token
    #   A string that indicates that the response contains more items than
    #   can be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LaunchConfigurationsType AWS API Documentation
    #
    class LaunchConfigurationsType < Struct.new(
      :launch_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to specify the launch templates and instance types
    # (overrides) for a mixed instances policy.
    #
    # @!attribute [rw] launch_template_specification
    #   The launch template.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] overrides
    #   Any properties that you specify override the same properties in the
    #   launch template.
    #   @return [Array<Types::LaunchTemplateOverrides>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LaunchTemplate AWS API Documentation
    #
    class LaunchTemplate < Struct.new(
      :launch_template_specification,
      :overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to let Amazon EC2 Auto Scaling do the following
    # when the Auto Scaling group has a mixed instances policy:
    #
    # * Override the instance type that is specified in the launch template.
    #
    # * Use multiple instance types.
    #
    # Specify the instance types that you want, or define your instance
    # requirements instead and let Amazon EC2 Auto Scaling provision the
    # available instance types that meet your requirements. This can provide
    # Amazon EC2 Auto Scaling with a larger selection of instance types to
    # choose from when fulfilling Spot and On-Demand capacities. You can
    # view which instance types are matched before you apply the instance
    # requirements to your Auto Scaling group.
    #
    # After you define your instance requirements, you don't have to keep
    # updating these settings to get new EC2 instance types automatically.
    # Amazon EC2 Auto Scaling uses the instance requirements of the Auto
    # Scaling group to determine whether a new EC2 instance type can be
    # used.
    #
    # @!attribute [rw] instance_type
    #   The instance type, such as `m3.xlarge`. You must specify an instance
    #   type that is supported in your requested Region and Availability
    #   Zones. For more information, see [Instance types][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #   You can specify up to 40 instance types per Auto Scaling group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   @return [String]
    #
    # @!attribute [rw] weighted_capacity
    #   If you provide a list of instance types to use, you can specify the
    #   number of capacity units provided by each instance type in terms of
    #   virtual CPUs, memory, storage, throughput, or other relative
    #   performance characteristic. When a Spot or On-Demand Instance is
    #   launched, the capacity units count toward the desired capacity.
    #   Amazon EC2 Auto Scaling launches instances until the desired
    #   capacity is totally fulfilled, even if this results in an overage.
    #   For example, if there are two units remaining to fulfill capacity,
    #   and Amazon EC2 Auto Scaling can only launch an instance with a
    #   `WeightedCapacity` of five units, the instance is launched, and the
    #   desired capacity is exceeded by three units. For more information,
    #   see [Configuring instance weighting for Amazon EC2 Auto Scaling][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*. Value must be in the
    #   range of 1–999.
    #
    #   If you specify a value for `WeightedCapacity` for one instance type,
    #   you must specify a value for `WeightedCapacity` for all of them.
    #
    #   Every Auto Scaling group has three size parameters
    #   (`DesiredCapacity`, `MaxSize`, and `MinSize`). Usually, you set
    #   these sizes based on a specific number of instances. However, if you
    #   configure a mixed instances policy that defines weights for the
    #   instance types, you must specify these sizes with the same units
    #   that you use for weighting instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups-instance-weighting.html
    #   @return [String]
    #
    # @!attribute [rw] launch_template_specification
    #   Provides a launch template for the specified instance type or set of
    #   instance requirements. For example, some instance types might
    #   require a launch template with a different AMI. If not provided,
    #   Amazon EC2 Auto Scaling uses the launch template that's specified
    #   in the `LaunchTemplate` definition. For more information, see
    #   [Specifying a different launch template for an instance type][1] in
    #   the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   You can specify up to 20 launch templates per Auto Scaling group.
    #   The launch templates specified in the overrides and in the
    #   `LaunchTemplate` definition count towards this limit.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups-launch-template-overrides.html
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] instance_requirements
    #   The instance requirements. Amazon EC2 Auto Scaling uses your
    #   specified requirements to identify instance types. Then, it uses
    #   your On-Demand and Spot allocation strategies to launch instances
    #   from these instance types.
    #
    #   You can specify up to four separate sets of instance requirements
    #   per Auto Scaling group. This is useful for provisioning instances
    #   from different Amazon Machine Images (AMIs) in the same Auto Scaling
    #   group. To do this, create the AMIs and create a new launch template
    #   for each AMI. Then, create a compatible set of instance requirements
    #   for each launch template.
    #
    #   <note markdown="1"> If you specify `InstanceRequirements`, you can't specify
    #   `InstanceType`.
    #
    #    </note>
    #   @return [Types::InstanceRequirements]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LaunchTemplateOverrides AWS API Documentation
    #
    class LaunchTemplateOverrides < Struct.new(
      :instance_type,
      :weighted_capacity,
      :launch_template_specification,
      :instance_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the launch template and the version of the launch template
    # that Amazon EC2 Auto Scaling uses to launch Amazon EC2 instances. For
    # more information about launch templates, see [Launch templates][1] in
    # the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchTemplates.html
    #
    # @!attribute [rw] launch_template_id
    #   The ID of the launch template. To get the template ID, use the
    #   Amazon EC2 [DescribeLaunchTemplates][1] API operation. New launch
    #   templates can be created using the Amazon EC2
    #   [CreateLaunchTemplate][2] API.
    #
    #   Conditional: You must specify either a `LaunchTemplateId` or a
    #   `LaunchTemplateName`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplates.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html
    #   @return [String]
    #
    # @!attribute [rw] launch_template_name
    #   The name of the launch template. To get the template name, use the
    #   Amazon EC2 [DescribeLaunchTemplates][1] API operation. New launch
    #   templates can be created using the Amazon EC2
    #   [CreateLaunchTemplate][2] API.
    #
    #   Conditional: You must specify either a `LaunchTemplateId` or a
    #   `LaunchTemplateName`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplates.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number, `$Latest`, or `$Default`. To get the version
    #   number, use the Amazon EC2 [DescribeLaunchTemplateVersions][1] API
    #   operation. New launch template versions can be created using the
    #   Amazon EC2 [CreateLaunchTemplateVersion][2] API. If the value is
    #   `$Latest`, Amazon EC2 Auto Scaling selects the latest version of the
    #   launch template when launching instances. If the value is
    #   `$Default`, Amazon EC2 Auto Scaling selects the default version of
    #   the launch template when launching instances. The default value is
    #   `$Default`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplateVersions.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplateVersion.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LaunchTemplateSpecification AWS API Documentation
    #
    class LaunchTemplateSpecification < Struct.new(
      :launch_template_id,
      :launch_template_name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a lifecycle hook. A lifecycle hook lets you create solutions
    # that are aware of events in the Auto Scaling instance lifecycle, and
    # then perform a custom action on instances when the corresponding
    # lifecycle event occurs.
    #
    # @!attribute [rw] lifecycle_hook_name
    #   The name of the lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group for the lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_transition
    #   The lifecycle transition.
    #
    #   Valid values: `autoscaling:EC2_INSTANCE_LAUNCHING` \|
    #   `autoscaling:EC2_INSTANCE_TERMINATING`
    #   @return [String]
    #
    # @!attribute [rw] notification_target_arn
    #   The ARN of the target that Amazon EC2 Auto Scaling sends
    #   notifications to when an instance is in a wait state for the
    #   lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that allows the Auto Scaling group to
    #   publish to the specified notification target (an Amazon SNS topic or
    #   an Amazon SQS queue).
    #   @return [String]
    #
    # @!attribute [rw] notification_metadata
    #   Additional information that is included any time Amazon EC2 Auto
    #   Scaling sends a message to the notification target.
    #   @return [String]
    #
    # @!attribute [rw] heartbeat_timeout
    #   The maximum time, in seconds, that can elapse before the lifecycle
    #   hook times out. If the lifecycle hook times out, Amazon EC2 Auto
    #   Scaling performs the action that you specified in the
    #   `DefaultResult` property.
    #   @return [Integer]
    #
    # @!attribute [rw] global_timeout
    #   The maximum time, in seconds, that an instance can remain in a wait
    #   state. The maximum is 172800 seconds (48 hours) or 100 times
    #   `HeartbeatTimeout`, whichever is smaller.
    #   @return [Integer]
    #
    # @!attribute [rw] default_result
    #   The action the Auto Scaling group takes when the lifecycle hook
    #   timeout elapses or if an unexpected failure occurs.
    #
    #   Valid values: `CONTINUE` \| `ABANDON`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LifecycleHook AWS API Documentation
    #
    class LifecycleHook < Struct.new(
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_transition,
      :notification_target_arn,
      :role_arn,
      :notification_metadata,
      :heartbeat_timeout,
      :global_timeout,
      :default_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes information used to specify a lifecycle hook for an Auto
    # Scaling group.
    #
    # For more information, see [Amazon EC2 Auto Scaling lifecycle hooks][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html
    #
    # @!attribute [rw] lifecycle_hook_name
    #   The name of the lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_transition
    #   The lifecycle transition. For Auto Scaling groups, there are two
    #   major lifecycle transitions.
    #
    #   * To create a lifecycle hook for scale-out events, specify
    #     `autoscaling:EC2_INSTANCE_LAUNCHING`.
    #
    #   * To create a lifecycle hook for scale-in events, specify
    #     `autoscaling:EC2_INSTANCE_TERMINATING`.
    #   @return [String]
    #
    # @!attribute [rw] notification_metadata
    #   Additional information that you want to include any time Amazon EC2
    #   Auto Scaling sends a message to the notification target.
    #   @return [String]
    #
    # @!attribute [rw] heartbeat_timeout
    #   The maximum time, in seconds, that can elapse before the lifecycle
    #   hook times out. The range is from `30` to `7200` seconds. The
    #   default value is `3600` seconds (1 hour).
    #   @return [Integer]
    #
    # @!attribute [rw] default_result
    #   The action the Auto Scaling group takes when the lifecycle hook
    #   timeout elapses or if an unexpected failure occurs. The default
    #   value is `ABANDON`.
    #
    #   Valid values: `CONTINUE` \| `ABANDON`
    #   @return [String]
    #
    # @!attribute [rw] notification_target_arn
    #   The Amazon Resource Name (ARN) of the notification target that
    #   Amazon EC2 Auto Scaling sends notifications to when an instance is
    #   in a wait state for the lifecycle hook. You can specify an Amazon
    #   SNS topic or an Amazon SQS queue.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that allows the Auto Scaling group to
    #   publish to the specified notification target. For information about
    #   creating this role, see [Configure a notification target for a
    #   lifecycle hook][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid only if the notification target is an Amazon SNS topic or an
    #   Amazon SQS queue.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/prepare-for-lifecycle-notifications.html#lifecycle-hook-notification-target
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LifecycleHookSpecification AWS API Documentation
    #
    class LifecycleHookSpecification < Struct.new(
      :lifecycle_hook_name,
      :lifecycle_transition,
      :notification_metadata,
      :heartbeat_timeout,
      :default_result,
      :notification_target_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have already reached a limit for your Amazon EC2 Auto Scaling
    # resources (for example, Auto Scaling groups, launch configurations, or
    # lifecycle hooks). For more information, see [DescribeAccountLimits][1]
    # in the *Amazon EC2 Auto Scaling API Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LimitExceededFault AWS API Documentation
    #
    class LimitExceededFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of a Classic Load Balancer.
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   One of the following load balancer states:
    #
    #   * `Adding` - The Auto Scaling instances are being registered with
    #     the load balancer.
    #
    #   * `Added` - All Auto Scaling instances are registered with the load
    #     balancer.
    #
    #   * `InService` - At least one Auto Scaling instance passed an `ELB`
    #     health check.
    #
    #   * `Removing` - The Auto Scaling instances are being deregistered
    #     from the load balancer. If connection draining is enabled, Elastic
    #     Load Balancing waits for in-flight requests to complete before
    #     deregistering the instances.
    #
    #   * `Removed` - All Auto Scaling instances are deregistered from the
    #     load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LoadBalancerState AWS API Documentation
    #
    class LoadBalancerState < Struct.new(
      :load_balancer_name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of a target group.
    #
    # @!attribute [rw] load_balancer_target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the target group.
    #
    #   * `Adding` - The Auto Scaling instances are being registered with
    #     the target group.
    #
    #   * `Added` - All Auto Scaling instances are registered with the
    #     target group.
    #
    #   * `InService` - At least one Auto Scaling instance passed an `ELB`
    #     health check.
    #
    #   * `Removing` - The Auto Scaling instances are being deregistered
    #     from the target group. If connection draining is enabled, Elastic
    #     Load Balancing waits for in-flight requests to complete before
    #     deregistering the instances.
    #
    #   * `Removed` - All Auto Scaling instances are deregistered from the
    #     target group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LoadBalancerTargetGroupState AWS API Documentation
    #
    class LoadBalancerTargetGroupState < Struct.new(
      :load_balancer_target_group_arn,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `GetPredictiveScalingForecast` call returns the load forecast for a
    # predictive scaling policy. This structure includes the data points for
    # that load forecast, along with the timestamps of those data points and
    # the metric specification.
    #
    # @!attribute [rw] timestamps
    #   The timestamps for the data points, in UTC format.
    #   @return [Array<Time>]
    #
    # @!attribute [rw] values
    #   The values of the data points.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] metric_specification
    #   The metric specification for the load forecast.
    #   @return [Types::PredictiveScalingMetricSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LoadForecast AWS API Documentation
    #
    class LoadForecast < Struct.new(
      :timestamps,
      :values,
      :metric_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the minimum and maximum for the `MemoryGiBPerVCpu` object
    # when you specify InstanceRequirements for an Auto Scaling group.
    #
    # @!attribute [rw] min
    #   The memory minimum in GiB.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The memory maximum in GiB.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/MemoryGiBPerVCpuRequest AWS API Documentation
    #
    class MemoryGiBPerVCpuRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the minimum and maximum for the `MemoryMiB` object when you
    # specify InstanceRequirements for an Auto Scaling group.
    #
    # @!attribute [rw] min
    #   The memory minimum in MiB.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The memory maximum in MiB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/MemoryMiBRequest AWS API Documentation
    #
    class MemoryMiBRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a specific metric.
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric. For more information, see the table in
    #   [Amazon Web Services services that publish CloudWatch metrics ][1]
    #   in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the metric. For the list of available dimensions,
    #   see the Amazon Web Services documentation available from the table
    #   in [Amazon Web Services services that publish CloudWatch metrics
    #   ][1] in the *Amazon CloudWatch User Guide*.
    #
    #   Conditional: If you published your metric with dimensions, you must
    #   specify the same dimensions in your scaling policy.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html
    #   @return [Array<Types::MetricDimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/Metric AWS API Documentation
    #
    class Metric < Struct.new(
      :namespace,
      :metric_name,
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a metric.
    #
    # @!attribute [rw] metric
    #   One of the following metrics:
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
    #
    #   * `GroupInServiceCapacity`
    #
    #   * `GroupPendingCapacity`
    #
    #   * `GroupStandbyCapacity`
    #
    #   * `GroupTerminatingCapacity`
    #
    #   * `GroupTotalCapacity`
    #
    #   * `WarmPoolDesiredCapacity`
    #
    #   * `WarmPoolWarmedCapacity`
    #
    #   * `WarmPoolPendingCapacity`
    #
    #   * `WarmPoolTerminatingCapacity`
    #
    #   * `WarmPoolTotalCapacity`
    #
    #   * `GroupAndWarmPoolDesiredCapacity`
    #
    #   * `GroupAndWarmPoolTotalCapacity`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/MetricCollectionType AWS API Documentation
    #
    class MetricCollectionType < Struct.new(
      :metric)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metric data to return. Also defines whether this call is returning
    # data for one metric only, or whether it is performing a math
    # expression on the values of returned metric statistics to create a new
    # time series. A time series is a series of data points, each of which
    # is associated with a timestamp.
    #
    # For more information and examples, see [Advanced predictive scaling
    # policy configurations using custom metrics][1] in the *Amazon EC2 Auto
    # Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/predictive-scaling-customized-metric-specification.html
    #
    # @!attribute [rw] id
    #   A short name that identifies the object's results in the response.
    #   This name must be unique among all `MetricDataQuery` objects
    #   specified for a single scaling policy. If you are performing math
    #   expressions on this set of data, this name represents that data and
    #   can serve as a variable in the mathematical expression. The valid
    #   characters are letters, numbers, and underscores. The first
    #   character must be a lowercase letter.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The math expression to perform on the returned data, if this object
    #   is performing a math expression. This expression can use the `Id` of
    #   the other metrics to refer to those metrics, and can also use the
    #   `Id` of other expressions to use the result of those expressions.
    #
    #   Conditional: Within each `MetricDataQuery` object, you must specify
    #   either `Expression` or `MetricStat`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] metric_stat
    #   Information about the metric data to return.
    #
    #   Conditional: Within each `MetricDataQuery` object, you must specify
    #   either `Expression` or `MetricStat`, but not both.
    #   @return [Types::MetricStat]
    #
    # @!attribute [rw] label
    #   A human-readable label for this metric or expression. This is
    #   especially useful if this is a math expression, so that you know
    #   what the value represents.
    #   @return [String]
    #
    # @!attribute [rw] return_data
    #   Indicates whether to return the timestamps and raw data values of
    #   this metric.
    #
    #   If you use any math expressions, specify `true` for this value for
    #   only the final math expression that the metric specification is
    #   based on. You must specify `false` for `ReturnData` for all the
    #   other metrics and expressions used in the metric specification.
    #
    #   If you are only retrieving metrics and not performing any math
    #   expressions, do not specify anything for `ReturnData`. This sets it
    #   to its default (`true`).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/MetricDataQuery AWS API Documentation
    #
    class MetricDataQuery < Struct.new(
      :id,
      :expression,
      :metric_stat,
      :label,
      :return_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the dimension of a metric.
    #
    # @!attribute [rw] name
    #   The name of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/MetricDimension AWS API Documentation
    #
    class MetricDimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a granularity of a metric.
    #
    # @!attribute [rw] granularity
    #   The granularity. The only valid value is `1Minute`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/MetricGranularityType AWS API Documentation
    #
    class MetricGranularityType < Struct.new(
      :granularity)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines the CloudWatch metric to return, along with the
    # statistic, period, and unit.
    #
    # For more information about the CloudWatch terminology below, see
    # [Amazon CloudWatch concepts][1] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
    #
    # @!attribute [rw] metric
    #   The CloudWatch metric to return, including the metric name,
    #   namespace, and dimensions. To get the exact metric name, namespace,
    #   and dimensions, inspect the [Metric][1] object that is returned by a
    #   call to [ListMetrics][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html
    #   @return [Types::Metric]
    #
    # @!attribute [rw] stat
    #   The statistic to return. It can include any CloudWatch statistic or
    #   extended statistic. For a list of valid values, see the table in
    #   [Statistics][1] in the *Amazon CloudWatch User Guide*.
    #
    #   The most commonly used metrics for predictive scaling are `Average`
    #   and `Sum`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit to use for the returned data points. For a complete list of
    #   the units that CloudWatch supports, see the [MetricDatum][1] data
    #   type in the *Amazon CloudWatch API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/MetricStat AWS API Documentation
    #
    class MetricStat < Struct.new(
      :metric,
      :stat,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to launch multiple instance types and On-Demand
    # Instances and Spot Instances within a single Auto Scaling group.
    #
    # A mixed instances policy contains information that Amazon EC2 Auto
    # Scaling can use to launch instances and help optimize your costs. For
    # more information, see [Auto Scaling groups with multiple instance
    # types and purchase options][1] in the *Amazon EC2 Auto Scaling User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html
    #
    # @!attribute [rw] launch_template
    #   One or more launch templates and the instance types (overrides) that
    #   are used to launch EC2 instances to fulfill On-Demand and Spot
    #   capacities.
    #   @return [Types::LaunchTemplate]
    #
    # @!attribute [rw] instances_distribution
    #   The instances distribution.
    #   @return [Types::InstancesDistribution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/MixedInstancesPolicy AWS API Documentation
    #
    class MixedInstancesPolicy < Struct.new(
      :launch_template,
      :instances_distribution)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the minimum and maximum for the `NetworkBandwidthGbps`
    # object when you specify InstanceRequirements for an Auto Scaling
    # group.
    #
    # <note markdown="1"> Setting the minimum bandwidth does not guarantee that your instance
    # will achieve the minimum bandwidth. Amazon EC2 will identify instance
    # types that support the specified minimum bandwidth, but the actual
    # bandwidth of your instance might go below the specified minimum at
    # times. For more information, see [Available instance bandwidth][1] in
    # the *Amazon EC2 User Guide for Linux Instances*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-network-bandwidth.html#available-instance-bandwidth
    #
    # @!attribute [rw] min
    #   The minimum amount of network bandwidth, in gigabits per second
    #   (Gbps).
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The maximum amount of network bandwidth, in gigabits per second
    #   (Gbps).
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/NetworkBandwidthGbpsRequest AWS API Documentation
    #
    class NetworkBandwidthGbpsRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the minimum and maximum for the `NetworkInterfaceCount`
    # object when you specify InstanceRequirements for an Auto Scaling
    # group.
    #
    # @!attribute [rw] min
    #   The minimum number of network interfaces.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum number of network interfaces.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/NetworkInterfaceCountRequest AWS API Documentation
    #
    class NetworkInterfaceCountRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a notification.
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] notification_type
    #   One of the following event notification types:
    #
    #   * `autoscaling:EC2_INSTANCE_LAUNCH`
    #
    #   * `autoscaling:EC2_INSTANCE_LAUNCH_ERROR`
    #
    #   * `autoscaling:EC2_INSTANCE_TERMINATE`
    #
    #   * `autoscaling:EC2_INSTANCE_TERMINATE_ERROR`
    #
    #   * `autoscaling:TEST_NOTIFICATION`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/NotificationConfiguration AWS API Documentation
    #
    class NotificationConfiguration < Struct.new(
      :auto_scaling_group_name,
      :topic_arn,
      :notification_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_policies
    #   The scaling policies.
    #   @return [Array<Types::ScalingPolicy>]
    #
    # @!attribute [rw] next_token
    #   A string that indicates that the response contains more items than
    #   can be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PoliciesType AWS API Documentation
    #
    class PoliciesType < Struct.new(
      :scaling_policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the output of PutScalingPolicy.
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @!attribute [rw] alarms
    #   The CloudWatch alarms created for the target tracking scaling
    #   policy.
    #   @return [Array<Types::Alarm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PolicyARNType AWS API Documentation
    #
    class PolicyARNType < Struct.new(
      :policy_arn,
      :alarms)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a predefined metric for a target tracking scaling policy to
    # use with Amazon EC2 Auto Scaling.
    #
    # @!attribute [rw] predefined_metric_type
    #   The metric type. The following predefined metrics are available:
    #
    #   * `ASGAverageCPUUtilization` - Average CPU utilization of the Auto
    #     Scaling group.
    #
    #   * `ASGAverageNetworkIn` - Average number of bytes received on all
    #     network interfaces by the Auto Scaling group.
    #
    #   * `ASGAverageNetworkOut` - Average number of bytes sent out on all
    #     network interfaces by the Auto Scaling group.
    #
    #   * `ALBRequestCountPerTarget` - Average Application Load Balancer
    #     request count per target for your Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   A label that uniquely identifies a specific Application Load
    #   Balancer target group from which to determine the average request
    #   count served by your Auto Scaling group. You can't specify a
    #   resource label unless the target group is attached to the Auto
    #   Scaling group.
    #
    #   You create the resource label by appending the final portion of the
    #   load balancer ARN and the final portion of the target group ARN into
    #   a single value, separated by a forward slash (/). The format of the
    #   resource label is:
    #
    #   `app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff`.
    #
    #   Where:
    #
    #   * app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the
    #     final portion of the load balancer ARN
    #
    #   * targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is
    #     the final portion of the target group ARN.
    #
    #   To find the ARN for an Application Load Balancer, use the
    #   [DescribeLoadBalancers][1] API operation. To find the ARN for the
    #   target group, use the [DescribeTargetGroups][2] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PredefinedMetricSpecification AWS API Documentation
    #
    class PredefinedMetricSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a predictive scaling policy configuration to use with
    # Amazon EC2 Auto Scaling.
    #
    # @!attribute [rw] metric_specifications
    #   This structure includes the metrics and target utilization to use
    #   for predictive scaling.
    #
    #   This is an array, but we currently only support a single metric
    #   specification. That is, you can specify a target value and a single
    #   metric pair, or a target value and one scaling metric and one load
    #   metric.
    #   @return [Array<Types::PredictiveScalingMetricSpecification>]
    #
    # @!attribute [rw] mode
    #   The predictive scaling mode. Defaults to `ForecastOnly` if not
    #   specified.
    #   @return [String]
    #
    # @!attribute [rw] scheduling_buffer_time
    #   The amount of time, in seconds, by which the instance launch time
    #   can be advanced. For example, the forecast says to add capacity at
    #   10:00 AM, and you choose to pre-launch instances by 5 minutes. In
    #   that case, the instances will be launched at 9:55 AM. The intention
    #   is to give resources time to be provisioned. It can take a few
    #   minutes to launch an EC2 instance. The actual amount of time
    #   required depends on several factors, such as the size of the
    #   instance and whether there are startup scripts to complete.
    #
    #   The value must be less than the forecast interval duration of 3600
    #   seconds (60 minutes). Defaults to 300 seconds if not specified.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity_breach_behavior
    #   Defines the behavior that should be applied if the forecast capacity
    #   approaches or exceeds the maximum capacity of the Auto Scaling
    #   group. Defaults to `HonorMaxCapacity` if not specified.
    #
    #   The following are possible values:
    #
    #   * `HonorMaxCapacity` - Amazon EC2 Auto Scaling cannot scale out
    #     capacity higher than the maximum capacity. The maximum capacity is
    #     enforced as a hard limit.
    #
    #   * `IncreaseMaxCapacity` - Amazon EC2 Auto Scaling can scale out
    #     capacity higher than the maximum capacity when the forecast
    #     capacity is close to or exceeds the maximum capacity. The upper
    #     limit is determined by the forecasted capacity and the value for
    #     `MaxCapacityBuffer`.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity_buffer
    #   The size of the capacity buffer to use when the forecast capacity is
    #   close to or exceeds the maximum capacity. The value is specified as
    #   a percentage relative to the forecast capacity. For example, if the
    #   buffer is 10, this means a 10 percent buffer, such that if the
    #   forecast capacity is 50, and the maximum capacity is 40, then the
    #   effective maximum capacity is 55.
    #
    #   If set to 0, Amazon EC2 Auto Scaling may scale capacity higher than
    #   the maximum capacity to equal but not exceed forecast capacity.
    #
    #   Required if the `MaxCapacityBreachBehavior` property is set to
    #   `IncreaseMaxCapacity`, and cannot be used otherwise.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PredictiveScalingConfiguration AWS API Documentation
    #
    class PredictiveScalingConfiguration < Struct.new(
      :metric_specifications,
      :mode,
      :scheduling_buffer_time,
      :max_capacity_breach_behavior,
      :max_capacity_buffer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a customized capacity metric for a predictive scaling
    # policy.
    #
    # @!attribute [rw] metric_data_queries
    #   One or more metric data queries to provide the data points for a
    #   capacity metric. Use multiple metric data queries only if you are
    #   performing a math expression on returned data.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PredictiveScalingCustomizedCapacityMetric AWS API Documentation
    #
    class PredictiveScalingCustomizedCapacityMetric < Struct.new(
      :metric_data_queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a custom load metric for a predictive scaling policy.
    #
    # @!attribute [rw] metric_data_queries
    #   One or more metric data queries to provide the data points for a
    #   load metric. Use multiple metric data queries only if you are
    #   performing a math expression on returned data.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PredictiveScalingCustomizedLoadMetric AWS API Documentation
    #
    class PredictiveScalingCustomizedLoadMetric < Struct.new(
      :metric_data_queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a custom scaling metric for a predictive scaling policy.
    #
    # @!attribute [rw] metric_data_queries
    #   One or more metric data queries to provide the data points for a
    #   scaling metric. Use multiple metric data queries only if you are
    #   performing a math expression on returned data.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PredictiveScalingCustomizedScalingMetric AWS API Documentation
    #
    class PredictiveScalingCustomizedScalingMetric < Struct.new(
      :metric_data_queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure specifies the metrics and target utilization settings
    # for a predictive scaling policy.
    #
    # You must specify either a metric pair, or a load metric and a scaling
    # metric individually. Specifying a metric pair instead of individual
    # metrics provides a simpler way to configure metrics for a scaling
    # policy. You choose the metric pair, and the policy automatically knows
    # the correct sum and average statistics to use for the load metric and
    # the scaling metric.
    #
    # Example
    #
    # * You create a predictive scaling policy and specify `ALBRequestCount`
    #   as the value for the metric pair and `1000.0` as the target value.
    #   For this type of metric, you must provide the metric dimension for
    #   the corresponding target group, so you also provide a resource label
    #   for the Application Load Balancer target group that is attached to
    #   your Auto Scaling group.
    #
    # * The number of requests the target group receives per minute provides
    #   the load metric, and the request count averaged between the members
    #   of the target group provides the scaling metric. In CloudWatch, this
    #   refers to the `RequestCount` and `RequestCountPerTarget` metrics,
    #   respectively.
    #
    # * For optimal use of predictive scaling, you adhere to the best
    #   practice of using a dynamic scaling policy to automatically scale
    #   between the minimum capacity and maximum capacity in response to
    #   real-time changes in resource utilization.
    #
    # * Amazon EC2 Auto Scaling consumes data points for the load metric
    #   over the last 14 days and creates an hourly load forecast for
    #   predictive scaling. (A minimum of 24 hours of data is required.)
    #
    # * After creating the load forecast, Amazon EC2 Auto Scaling determines
    #   when to reduce or increase the capacity of your Auto Scaling group
    #   in each hour of the forecast period so that the average number of
    #   requests received by each instance is as close to 1000 requests per
    #   minute as possible at all times.
    #
    # For information about using custom metrics with predictive scaling,
    # see [Advanced predictive scaling policy configurations using custom
    # metrics][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/predictive-scaling-customized-metric-specification.html
    #
    # @!attribute [rw] target_value
    #   Specifies the target utilization.
    #
    #   <note markdown="1"> Some metrics are based on a count instead of a percentage, such as
    #   the request count for an Application Load Balancer or the number of
    #   messages in an SQS queue. If the scaling policy specifies one of
    #   these metrics, specify the target utilization as the optimal average
    #   request or message count per instance during any one-minute
    #   interval.
    #
    #    </note>
    #   @return [Float]
    #
    # @!attribute [rw] predefined_metric_pair_specification
    #   The predefined metric pair specification from which Amazon EC2 Auto
    #   Scaling determines the appropriate scaling metric and load metric to
    #   use.
    #   @return [Types::PredictiveScalingPredefinedMetricPair]
    #
    # @!attribute [rw] predefined_scaling_metric_specification
    #   The predefined scaling metric specification.
    #   @return [Types::PredictiveScalingPredefinedScalingMetric]
    #
    # @!attribute [rw] predefined_load_metric_specification
    #   The predefined load metric specification.
    #   @return [Types::PredictiveScalingPredefinedLoadMetric]
    #
    # @!attribute [rw] customized_scaling_metric_specification
    #   The customized scaling metric specification.
    #   @return [Types::PredictiveScalingCustomizedScalingMetric]
    #
    # @!attribute [rw] customized_load_metric_specification
    #   The customized load metric specification.
    #   @return [Types::PredictiveScalingCustomizedLoadMetric]
    #
    # @!attribute [rw] customized_capacity_metric_specification
    #   The customized capacity metric specification.
    #   @return [Types::PredictiveScalingCustomizedCapacityMetric]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PredictiveScalingMetricSpecification AWS API Documentation
    #
    class PredictiveScalingMetricSpecification < Struct.new(
      :target_value,
      :predefined_metric_pair_specification,
      :predefined_scaling_metric_specification,
      :predefined_load_metric_specification,
      :customized_scaling_metric_specification,
      :customized_load_metric_specification,
      :customized_capacity_metric_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a load metric for a predictive scaling policy.
    #
    # When returned in the output of `DescribePolicies`, it indicates that a
    # predictive scaling policy uses individually specified load and scaling
    # metrics instead of a metric pair.
    #
    # @!attribute [rw] predefined_metric_type
    #   The metric type.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   A label that uniquely identifies a specific Application Load
    #   Balancer target group from which to determine the request count
    #   served by your Auto Scaling group. You can't specify a resource
    #   label unless the target group is attached to the Auto Scaling group.
    #
    #   You create the resource label by appending the final portion of the
    #   load balancer ARN and the final portion of the target group ARN into
    #   a single value, separated by a forward slash (/). The format of the
    #   resource label is:
    #
    #   `app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff`.
    #
    #   Where:
    #
    #   * app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the
    #     final portion of the load balancer ARN
    #
    #   * targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is
    #     the final portion of the target group ARN.
    #
    #   To find the ARN for an Application Load Balancer, use the
    #   [DescribeLoadBalancers][1] API operation. To find the ARN for the
    #   target group, use the [DescribeTargetGroups][2] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PredictiveScalingPredefinedLoadMetric AWS API Documentation
    #
    class PredictiveScalingPredefinedLoadMetric < Struct.new(
      :predefined_metric_type,
      :resource_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a metric pair for a predictive scaling policy.
    #
    # @!attribute [rw] predefined_metric_type
    #   Indicates which metrics to use. There are two different types of
    #   metrics for each metric type: one is a load metric and one is a
    #   scaling metric. For example, if the metric type is
    #   `ASGCPUUtilization`, the Auto Scaling group's total CPU metric is
    #   used as the load metric, and the average CPU metric is used for the
    #   scaling metric.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   A label that uniquely identifies a specific Application Load
    #   Balancer target group from which to determine the total and average
    #   request count served by your Auto Scaling group. You can't specify
    #   a resource label unless the target group is attached to the Auto
    #   Scaling group.
    #
    #   You create the resource label by appending the final portion of the
    #   load balancer ARN and the final portion of the target group ARN into
    #   a single value, separated by a forward slash (/). The format of the
    #   resource label is:
    #
    #   `app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff`.
    #
    #   Where:
    #
    #   * app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the
    #     final portion of the load balancer ARN
    #
    #   * targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is
    #     the final portion of the target group ARN.
    #
    #   To find the ARN for an Application Load Balancer, use the
    #   [DescribeLoadBalancers][1] API operation. To find the ARN for the
    #   target group, use the [DescribeTargetGroups][2] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PredictiveScalingPredefinedMetricPair AWS API Documentation
    #
    class PredictiveScalingPredefinedMetricPair < Struct.new(
      :predefined_metric_type,
      :resource_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a scaling metric for a predictive scaling policy.
    #
    # When returned in the output of `DescribePolicies`, it indicates that a
    # predictive scaling policy uses individually specified load and scaling
    # metrics instead of a metric pair.
    #
    # @!attribute [rw] predefined_metric_type
    #   The metric type.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   A label that uniquely identifies a specific Application Load
    #   Balancer target group from which to determine the average request
    #   count served by your Auto Scaling group. You can't specify a
    #   resource label unless the target group is attached to the Auto
    #   Scaling group.
    #
    #   You create the resource label by appending the final portion of the
    #   load balancer ARN and the final portion of the target group ARN into
    #   a single value, separated by a forward slash (/). The format of the
    #   resource label is:
    #
    #   `app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff`.
    #
    #   Where:
    #
    #   * app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the
    #     final portion of the load balancer ARN
    #
    #   * targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is
    #     the final portion of the target group ARN.
    #
    #   To find the ARN for an Application Load Balancer, use the
    #   [DescribeLoadBalancers][1] API operation. To find the ARN for the
    #   target group, use the [DescribeTargetGroups][2] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PredictiveScalingPredefinedScalingMetric AWS API Documentation
    #
    class PredictiveScalingPredefinedScalingMetric < Struct.new(
      :predefined_metric_type,
      :resource_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a process type.
    #
    # For more information, see [Scaling processes][1] in the *Amazon EC2
    # Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types
    #
    # @!attribute [rw] process_name
    #   One of the following processes:
    #
    #   * `Launch`
    #
    #   * `Terminate`
    #
    #   * `AddToLoadBalancer`
    #
    #   * `AlarmNotification`
    #
    #   * `AZRebalance`
    #
    #   * `HealthCheck`
    #
    #   * `InstanceRefresh`
    #
    #   * `ReplaceUnhealthy`
    #
    #   * `ScheduledActions`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ProcessType AWS API Documentation
    #
    class ProcessType < Struct.new(
      :process_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] processes
    #   The names of the process types.
    #   @return [Array<Types::ProcessType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ProcessesType AWS API Documentation
    #
    class ProcessesType < Struct.new(
      :processes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutLifecycleHookAnswer AWS API Documentation
    #
    class PutLifecycleHookAnswer < Aws::EmptyStructure; end

    # @!attribute [rw] lifecycle_hook_name
    #   The name of the lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_transition
    #   The lifecycle transition. For Auto Scaling groups, there are two
    #   major lifecycle transitions.
    #
    #   * To create a lifecycle hook for scale-out events, specify
    #     `autoscaling:EC2_INSTANCE_LAUNCHING`.
    #
    #   * To create a lifecycle hook for scale-in events, specify
    #     `autoscaling:EC2_INSTANCE_TERMINATING`.
    #
    #   Required for new lifecycle hooks, but optional when updating
    #   existing hooks.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that allows the Auto Scaling group to
    #   publish to the specified notification target.
    #
    #   Valid only if the notification target is an Amazon SNS topic or an
    #   Amazon SQS queue. Required for new lifecycle hooks, but optional
    #   when updating existing hooks.
    #   @return [String]
    #
    # @!attribute [rw] notification_target_arn
    #   The Amazon Resource Name (ARN) of the notification target that
    #   Amazon EC2 Auto Scaling uses to notify you when an instance is in a
    #   wait state for the lifecycle hook. You can specify either an Amazon
    #   SNS topic or an Amazon SQS queue.
    #
    #   If you specify an empty string, this overrides the current ARN.
    #
    #   This operation uses the JSON format when sending notifications to an
    #   Amazon SQS queue, and an email key-value pair format when sending
    #   notifications to an Amazon SNS topic.
    #
    #   When you specify a notification target, Amazon EC2 Auto Scaling
    #   sends it a test message. Test messages contain the following
    #   additional key-value pair: `"Event":
    #   "autoscaling:TEST_NOTIFICATION"`.
    #   @return [String]
    #
    # @!attribute [rw] notification_metadata
    #   Additional information that you want to include any time Amazon EC2
    #   Auto Scaling sends a message to the notification target.
    #   @return [String]
    #
    # @!attribute [rw] heartbeat_timeout
    #   The maximum time, in seconds, that can elapse before the lifecycle
    #   hook times out. The range is from `30` to `7200` seconds. The
    #   default value is `3600` seconds (1 hour).
    #   @return [Integer]
    #
    # @!attribute [rw] default_result
    #   The action the Auto Scaling group takes when the lifecycle hook
    #   timeout elapses or if an unexpected failure occurs. The default
    #   value is `ABANDON`.
    #
    #   Valid values: `CONTINUE` \| `ABANDON`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutLifecycleHookType AWS API Documentation
    #
    class PutLifecycleHookType < Struct.new(
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_transition,
      :role_arn,
      :notification_target_arn,
      :notification_metadata,
      :heartbeat_timeout,
      :default_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] notification_types
    #   The type of event that causes the notification to be sent. To query
    #   the notification types supported by Amazon EC2 Auto Scaling, call
    #   the DescribeAutoScalingNotificationTypes API.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutNotificationConfigurationType AWS API Documentation
    #
    class PutNotificationConfigurationType < Struct.new(
      :auto_scaling_group_name,
      :topic_arn,
      :notification_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   One of the following policy types:
    #
    #   * `TargetTrackingScaling`
    #
    #   * `StepScaling`
    #
    #   * `SimpleScaling` (default)
    #
    #   * `PredictiveScaling`
    #   @return [String]
    #
    # @!attribute [rw] adjustment_type
    #   Specifies how the scaling adjustment is interpreted (for example, an
    #   absolute number or a percentage). The valid values are
    #   `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
    #
    #   Required if the policy type is `StepScaling` or `SimpleScaling`. For
    #   more information, see [Scaling adjustment types][1] in the *Amazon
    #   EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment
    #   @return [String]
    #
    # @!attribute [rw] min_adjustment_step
    #   Available for backward compatibility. Use `MinAdjustmentMagnitude`
    #   instead.
    #   @return [Integer]
    #
    # @!attribute [rw] min_adjustment_magnitude
    #   The minimum value to scale by when the adjustment type is
    #   `PercentChangeInCapacity`. For example, suppose that you create a
    #   step scaling policy to scale out an Auto Scaling group by 25 percent
    #   and you specify a `MinAdjustmentMagnitude` of 2. If the group has 4
    #   instances and the scaling policy is performed, 25 percent of 4 is 1.
    #   However, because you specified a `MinAdjustmentMagnitude` of 2,
    #   Amazon EC2 Auto Scaling scales out the group by 2 instances.
    #
    #   Valid only if the policy type is `StepScaling` or `SimpleScaling`.
    #   For more information, see [Scaling adjustment types][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #   <note markdown="1"> Some Auto Scaling groups use instance weights. In this case, set the
    #   `MinAdjustmentMagnitude` to a value that is at least as large as
    #   your largest instance weight.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment
    #   @return [Integer]
    #
    # @!attribute [rw] scaling_adjustment
    #   The amount by which to scale, based on the specified adjustment
    #   type. A positive value adds to the current capacity while a negative
    #   number removes from the current capacity. For exact capacity, you
    #   must specify a positive value.
    #
    #   Required if the policy type is `SimpleScaling`. (Not used with any
    #   other policy type.)
    #   @return [Integer]
    #
    # @!attribute [rw] cooldown
    #   A cooldown period, in seconds, that applies to a specific simple
    #   scaling policy. When a cooldown period is specified here, it
    #   overrides the default cooldown.
    #
    #   Valid only if the policy type is `SimpleScaling`. For more
    #   information, see [Scaling cooldowns for Amazon EC2 Auto Scaling][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Default: None
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #   @return [Integer]
    #
    # @!attribute [rw] metric_aggregation_type
    #   The aggregation type for the CloudWatch metrics. The valid values
    #   are `Minimum`, `Maximum`, and `Average`. If the aggregation type is
    #   null, the value is treated as `Average`.
    #
    #   Valid only if the policy type is `StepScaling`.
    #   @return [String]
    #
    # @!attribute [rw] step_adjustments
    #   A set of adjustments that enable you to scale based on the size of
    #   the alarm breach.
    #
    #   Required if the policy type is `StepScaling`. (Not used with any
    #   other policy type.)
    #   @return [Array<Types::StepAdjustment>]
    #
    # @!attribute [rw] estimated_instance_warmup
    #   *Not needed if the default instance warmup is defined for the
    #   group.*
    #
    #   The estimated time, in seconds, until a newly launched instance can
    #   contribute to the CloudWatch metrics. This warm-up period applies to
    #   instances launched due to a specific target tracking or step scaling
    #   policy. When a warm-up period is specified here, it overrides the
    #   default instance warmup.
    #
    #   Valid only if the policy type is `TargetTrackingScaling` or
    #   `StepScaling`.
    #
    #   <note markdown="1"> The default is to use the value for the default instance warmup
    #   defined for the group. If default instance warmup is null, then
    #   `EstimatedInstanceWarmup` falls back to the value of default
    #   cooldown.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] target_tracking_configuration
    #   A target tracking scaling policy. Provides support for predefined or
    #   custom metrics.
    #
    #   The following predefined metrics are available:
    #
    #   * `ASGAverageCPUUtilization`
    #
    #   * `ASGAverageNetworkIn`
    #
    #   * `ASGAverageNetworkOut`
    #
    #   * `ALBRequestCountPerTarget`
    #
    #   If you specify `ALBRequestCountPerTarget` for the metric, you must
    #   specify the `ResourceLabel` property with the
    #   `PredefinedMetricSpecification`.
    #
    #   For more information, see [TargetTrackingConfiguration][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #   Required if the policy type is `TargetTrackingScaling`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html
    #   @return [Types::TargetTrackingConfiguration]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the scaling policy is enabled or disabled. The
    #   default is enabled. For more information, see [Disabling a scaling
    #   policy for an Auto Scaling group][1] in the *Amazon EC2 Auto Scaling
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enable-disable-scaling-policy.html
    #   @return [Boolean]
    #
    # @!attribute [rw] predictive_scaling_configuration
    #   A predictive scaling policy. Provides support for predefined and
    #   custom metrics.
    #
    #   Predefined metrics include CPU utilization, network in/out, and the
    #   Application Load Balancer request count.
    #
    #   For more information, see [PredictiveScalingConfiguration][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #   Required if the policy type is `PredictiveScaling`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredictiveScalingConfiguration.html
    #   @return [Types::PredictiveScalingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutScalingPolicyType AWS API Documentation
    #
    class PutScalingPolicyType < Struct.new(
      :auto_scaling_group_name,
      :policy_name,
      :policy_type,
      :adjustment_type,
      :min_adjustment_step,
      :min_adjustment_magnitude,
      :scaling_adjustment,
      :cooldown,
      :metric_aggregation_type,
      :step_adjustments,
      :estimated_instance_warmup,
      :target_tracking_configuration,
      :enabled,
      :predictive_scaling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of this scaling action.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   This property is no longer used.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ
    #   format in UTC/GMT only and in quotes (for example,
    #   `"2021-06-01T00:00:00Z"`).
    #
    #   If you specify `Recurrence` and `StartTime`, Amazon EC2 Auto Scaling
    #   performs the action at this time, and then performs the action based
    #   on the specified recurrence.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time for the recurring schedule to end, in UTC. For
    #   example, `"2021-06-01T00:00:00Z"`.
    #   @return [Time]
    #
    # @!attribute [rw] recurrence
    #   The recurring schedule for this action. This format consists of five
    #   fields separated by white spaces: \[Minute\] \[Hour\]
    #   \[Day\_of\_Month\] \[Month\_of\_Year\] \[Day\_of\_Week\]. The value
    #   must be in quotes (for example, `"30 0 1 1,6,12 *"`). For more
    #   information about this format, see [Crontab][1].
    #
    #   When `StartTime` and `EndTime` are specified with `Recurrence`, they
    #   form the boundaries of when the recurring action starts and stops.
    #
    #   Cron expressions use Universal Coordinated Time (UTC) by default.
    #
    #
    #
    #   [1]: http://crontab.org
    #   @return [String]
    #
    # @!attribute [rw] min_size
    #   The minimum size of the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum size of the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling
    #   group after the scheduled action runs and the capacity it attempts
    #   to maintain. It can scale beyond this capacity if you add more
    #   scaling conditions.
    #
    #   <note markdown="1"> You must specify at least one of the following properties:
    #   `MaxSize`, `MinSize`, or `DesiredCapacity`.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] time_zone
    #   Specifies the time zone for a cron expression. If a time zone is not
    #   provided, UTC is used by default.
    #
    #   Valid values are the canonical names of the IANA time zones, derived
    #   from the IANA Time Zone Database (such as `Etc/GMT+9` or
    #   `Pacific/Tahiti`). For more information, see
    #   [https://en.wikipedia.org/wiki/List\_of\_tz\_database\_time\_zones][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutScheduledUpdateGroupActionType AWS API Documentation
    #
    class PutScheduledUpdateGroupActionType < Struct.new(
      :auto_scaling_group_name,
      :scheduled_action_name,
      :time,
      :start_time,
      :end_time,
      :recurrence,
      :min_size,
      :max_size,
      :desired_capacity,
      :time_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutWarmPoolAnswer AWS API Documentation
    #
    class PutWarmPoolAnswer < Aws::EmptyStructure; end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] max_group_prepared_capacity
    #   Specifies the maximum number of instances that are allowed to be in
    #   the warm pool or in any state except `Terminated` for the Auto
    #   Scaling group. This is an optional property. Specify it only if you
    #   do not want the warm pool size to be determined by the difference
    #   between the group's maximum capacity and its desired capacity.
    #
    #   If a value for `MaxGroupPreparedCapacity` is not specified, Amazon
    #   EC2 Auto Scaling launches and maintains the difference between the
    #   group's maximum capacity and its desired capacity. If you specify a
    #   value for `MaxGroupPreparedCapacity`, Amazon EC2 Auto Scaling uses
    #   the difference between the `MaxGroupPreparedCapacity` and the
    #   desired capacity instead.
    #
    #    The size of the warm pool is dynamic. Only when
    #   `MaxGroupPreparedCapacity` and `MinSize` are set to the same value
    #   does the warm pool have an absolute size.
    #
    #   If the desired capacity of the Auto Scaling group is higher than the
    #   `MaxGroupPreparedCapacity`, the capacity of the warm pool is 0,
    #   unless you specify a value for `MinSize`. To remove a value that you
    #   previously set, include the property but specify -1 for the value.
    #   @return [Integer]
    #
    # @!attribute [rw] min_size
    #   Specifies the minimum number of instances to maintain in the warm
    #   pool. This helps you to ensure that there is always a certain number
    #   of warmed instances available to handle traffic spikes. Defaults to
    #   0 if not specified.
    #   @return [Integer]
    #
    # @!attribute [rw] pool_state
    #   Sets the instance state to transition to after the lifecycle actions
    #   are complete. Default is `Stopped`.
    #   @return [String]
    #
    # @!attribute [rw] instance_reuse_policy
    #   Indicates whether instances in the Auto Scaling group can be
    #   returned to the warm pool on scale in. The default is to terminate
    #   instances in the Auto Scaling group when the group scales in.
    #   @return [Types::InstanceReusePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutWarmPoolType AWS API Documentation
    #
    class PutWarmPoolType < Struct.new(
      :auto_scaling_group_name,
      :max_group_prepared_capacity,
      :min_size,
      :pool_state,
      :instance_reuse_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/RecordLifecycleActionHeartbeatAnswer AWS API Documentation
    #
    class RecordLifecycleActionHeartbeatAnswer < Aws::EmptyStructure; end

    # @!attribute [rw] lifecycle_hook_name
    #   The name of the lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_action_token
    #   A token that uniquely identifies a specific lifecycle action
    #   associated with an instance. Amazon EC2 Auto Scaling sends this
    #   token to the notification target that you specified when you created
    #   the lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/RecordLifecycleActionHeartbeatType AWS API Documentation
    #
    class RecordLifecycleActionHeartbeatType < Struct.new(
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_action_token,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the preferences for an instance refresh.
    #
    # @!attribute [rw] min_healthy_percentage
    #   The amount of capacity in the Auto Scaling group that must pass your
    #   group's health checks to allow the operation to continue. The value
    #   is expressed as a percentage of the desired capacity of the Auto
    #   Scaling group (rounded up to the nearest integer). The default is
    #   `90`.
    #
    #   Setting the minimum healthy percentage to 100 percent limits the
    #   rate of replacement to one instance at a time. In contrast, setting
    #   it to 0 percent has the effect of replacing all instances at the
    #   same time.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_warmup
    #   A time period, in seconds, during which an instance refresh waits
    #   before moving on to replacing the next instance after a new instance
    #   enters the `InService` state.
    #
    #   This property is not required for normal usage. Instead, use the
    #   `DefaultInstanceWarmup` property of the Auto Scaling group. The
    #   `InstanceWarmup` and `DefaultInstanceWarmup` properties work the
    #   same way. Only specify this property if you must override the
    #   `DefaultInstanceWarmup` property.
    #
    #   If you do not specify this property, the instance warmup by default
    #   is the value of the `DefaultInstanceWarmup` property, if defined
    #   (which is recommended in all cases), or the `HealthCheckGracePeriod`
    #   property otherwise.
    #   @return [Integer]
    #
    # @!attribute [rw] checkpoint_percentages
    #   (Optional) Threshold values for each checkpoint in ascending order.
    #   Each number must be unique. To replace all instances in the Auto
    #   Scaling group, the last number in the array must be `100`.
    #
    #   For usage examples, see [Adding checkpoints to an instance
    #   refresh][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-adding-checkpoints-instance-refresh.html
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] checkpoint_delay
    #   (Optional) The amount of time, in seconds, to wait after a
    #   checkpoint before continuing. This property is optional, but if you
    #   specify a value for it, you must also specify a value for
    #   `CheckpointPercentages`. If you specify a value for
    #   `CheckpointPercentages` and not for `CheckpointDelay`, the
    #   `CheckpointDelay` defaults to `3600` (1 hour).
    #   @return [Integer]
    #
    # @!attribute [rw] skip_matching
    #   (Optional) Indicates whether skip matching is enabled. If enabled
    #   (`true`), then Amazon EC2 Auto Scaling skips replacing instances
    #   that match the desired configuration. If no desired configuration is
    #   specified, then it skips replacing instances that have the same
    #   launch template and instance types that the Auto Scaling group was
    #   using before the start of the instance refresh. The default is
    #   `false`.
    #
    #   For more information, see [Use an instance refresh with skip
    #   matching][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh-skip-matching.html
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_rollback
    #   (Optional) Indicates whether to roll back the Auto Scaling group to
    #   its previous configuration if the instance refresh fails. The
    #   default is `false`.
    #
    #   A rollback is not supported in the following situations:
    #
    #   * There is no desired configuration specified for the instance
    #     refresh.
    #
    #   * The Auto Scaling group has a launch template that uses an Amazon
    #     Web Services Systems Manager parameter instead of an AMI ID for
    #     the `ImageId` property.
    #
    #   * The Auto Scaling group uses the launch template's `$Latest` or
    #     `$Default` version.
    #   @return [Boolean]
    #
    # @!attribute [rw] scale_in_protected_instances
    #   Choose the behavior that you want Amazon EC2 Auto Scaling to use if
    #   instances protected from scale in are found.
    #
    #   The following lists the valid values:
    #
    #   Refresh
    #
    #   : Amazon EC2 Auto Scaling replaces instances that are protected from
    #     scale in.
    #
    #   Ignore
    #
    #   : Amazon EC2 Auto Scaling ignores instances that are protected from
    #     scale in and continues to replace instances that are not
    #     protected.
    #
    #   Wait (default)
    #
    #   : Amazon EC2 Auto Scaling waits one hour for you to remove scale-in
    #     protection. Otherwise, the instance refresh will fail.
    #   @return [String]
    #
    # @!attribute [rw] standby_instances
    #   Choose the behavior that you want Amazon EC2 Auto Scaling to use if
    #   instances in `Standby` state are found.
    #
    #   The following lists the valid values:
    #
    #   Terminate
    #
    #   : Amazon EC2 Auto Scaling terminates instances that are in
    #     `Standby`.
    #
    #   Ignore
    #
    #   : Amazon EC2 Auto Scaling ignores instances that are in `Standby`
    #     and continues to replace instances that are in the `InService`
    #     state.
    #
    #   Wait (default)
    #
    #   : Amazon EC2 Auto Scaling waits one hour for you to return the
    #     instances to service. Otherwise, the instance refresh will fail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/RefreshPreferences AWS API Documentation
    #
    class RefreshPreferences < Struct.new(
      :min_healthy_percentage,
      :instance_warmup,
      :checkpoint_percentages,
      :checkpoint_delay,
      :skip_matching,
      :auto_rollback,
      :scale_in_protected_instances,
      :standby_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # You already have a pending update to an Amazon EC2 Auto Scaling
    # resource (for example, an Auto Scaling group, instance, or load
    # balancer).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ResourceContentionFault AWS API Documentation
    #
    class ResourceContentionFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation can't be performed because the resource is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ResourceInUseFault AWS API Documentation
    #
    class ResourceInUseFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an instance refresh rollback.
    #
    # @!attribute [rw] rollback_reason
    #   The reason for this instance refresh rollback (for example, whether
    #   a manual or automatic rollback was initiated).
    #   @return [String]
    #
    # @!attribute [rw] rollback_start_time
    #   The date and time at which the rollback began.
    #   @return [Time]
    #
    # @!attribute [rw] percentage_complete_on_rollback
    #   Indicates the value of `PercentageComplete` at the time the rollback
    #   started.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_to_update_on_rollback
    #   Indicates the value of `InstancesToUpdate` at the time the rollback
    #   started.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_details_on_rollback
    #   Reports progress on replacing instances in an Auto Scaling group
    #   that has a warm pool. This includes separate details for instances
    #   in the warm pool and instances in the Auto Scaling group (the live
    #   pool).
    #   @return [Types::InstanceRefreshProgressDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/RollbackDetails AWS API Documentation
    #
    class RollbackDetails < Struct.new(
      :rollback_reason,
      :rollback_start_time,
      :percentage_complete_on_rollback,
      :instances_to_update_on_rollback,
      :progress_details_on_rollback)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_refresh_id
    #   The instance refresh ID associated with the request. This is the
    #   unique ID assigned to the instance refresh when it was started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/RollbackInstanceRefreshAnswer AWS API Documentation
    #
    class RollbackInstanceRefreshAnswer < Struct.new(
      :instance_refresh_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/RollbackInstanceRefreshType AWS API Documentation
    #
    class RollbackInstanceRefreshType < Struct.new(
      :auto_scaling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation can't be performed because there are scaling activities
    # in progress.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ScalingActivityInProgressFault AWS API Documentation
    #
    class ScalingActivityInProgressFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a scaling policy.
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   One of the following policy types:
    #
    #   * `TargetTrackingScaling`
    #
    #   * `StepScaling`
    #
    #   * `SimpleScaling` (default)
    #
    #   * `PredictiveScaling`
    #
    #   For more information, see [Target tracking scaling policies][1] and
    #   [Step and simple scaling policies][2] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html
    #   @return [String]
    #
    # @!attribute [rw] adjustment_type
    #   Specifies how the scaling adjustment is interpreted (for example, an
    #   absolute number or a percentage). The valid values are
    #   `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
    #   @return [String]
    #
    # @!attribute [rw] min_adjustment_step
    #   Available for backward compatibility. Use `MinAdjustmentMagnitude`
    #   instead.
    #   @return [Integer]
    #
    # @!attribute [rw] min_adjustment_magnitude
    #   The minimum value to scale by when the adjustment type is
    #   `PercentChangeInCapacity`.
    #   @return [Integer]
    #
    # @!attribute [rw] scaling_adjustment
    #   The amount by which to scale, based on the specified adjustment
    #   type. A positive value adds to the current capacity while a negative
    #   number removes from the current capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] cooldown
    #   The duration of the policy's cooldown period, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] step_adjustments
    #   A set of adjustments that enable you to scale based on the size of
    #   the alarm breach.
    #   @return [Array<Types::StepAdjustment>]
    #
    # @!attribute [rw] metric_aggregation_type
    #   The aggregation type for the CloudWatch metrics. The valid values
    #   are `Minimum`, `Maximum`, and `Average`.
    #   @return [String]
    #
    # @!attribute [rw] estimated_instance_warmup
    #   The estimated time, in seconds, until a newly launched instance can
    #   contribute to the CloudWatch metrics.
    #   @return [Integer]
    #
    # @!attribute [rw] alarms
    #   The CloudWatch alarms related to the policy.
    #   @return [Array<Types::Alarm>]
    #
    # @!attribute [rw] target_tracking_configuration
    #   A target tracking scaling policy.
    #   @return [Types::TargetTrackingConfiguration]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the policy is enabled (`true`) or disabled
    #   (`false`).
    #   @return [Boolean]
    #
    # @!attribute [rw] predictive_scaling_configuration
    #   A predictive scaling policy.
    #   @return [Types::PredictiveScalingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ScalingPolicy AWS API Documentation
    #
    class ScalingPolicy < Struct.new(
      :auto_scaling_group_name,
      :policy_name,
      :policy_arn,
      :policy_type,
      :adjustment_type,
      :min_adjustment_step,
      :min_adjustment_magnitude,
      :scaling_adjustment,
      :cooldown,
      :step_adjustments,
      :metric_aggregation_type,
      :estimated_instance_warmup,
      :alarms,
      :target_tracking_configuration,
      :enabled,
      :predictive_scaling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scaling_processes
    #   One or more of the following processes:
    #
    #   * `Launch`
    #
    #   * `Terminate`
    #
    #   * `AddToLoadBalancer`
    #
    #   * `AlarmNotification`
    #
    #   * `AZRebalance`
    #
    #   * `HealthCheck`
    #
    #   * `InstanceRefresh`
    #
    #   * `ReplaceUnhealthy`
    #
    #   * `ScheduledActions`
    #
    #   If you omit this property, all processes are specified.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ScalingProcessQuery AWS API Documentation
    #
    class ScalingProcessQuery < Struct.new(
      :auto_scaling_group_name,
      :scaling_processes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_update_group_actions
    #   The scheduled actions.
    #   @return [Array<Types::ScheduledUpdateGroupAction>]
    #
    # @!attribute [rw] next_token
    #   A string that indicates that the response contains more items than
    #   can be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ScheduledActionsType AWS API Documentation
    #
    class ScheduledActionsType < Struct.new(
      :scheduled_update_group_actions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a scheduled scaling action.
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_arn
    #   The Amazon Resource Name (ARN) of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   This property is no longer used.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The date and time in UTC for this action to start. For example,
    #   `"2019-06-01T00:00:00Z"`.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time in UTC for the recurring schedule to end. For
    #   example, `"2019-06-01T00:00:00Z"`.
    #   @return [Time]
    #
    # @!attribute [rw] recurrence
    #   The recurring schedule for the action, in Unix cron syntax format.
    #
    #   When `StartTime` and `EndTime` are specified with `Recurrence`, they
    #   form the boundaries of when the recurring action starts and stops.
    #   @return [String]
    #
    # @!attribute [rw] min_size
    #   The minimum size of the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum size of the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling
    #   group after the scheduled action runs and the capacity it attempts
    #   to maintain.
    #   @return [Integer]
    #
    # @!attribute [rw] time_zone
    #   The time zone for the cron expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ScheduledUpdateGroupAction AWS API Documentation
    #
    class ScheduledUpdateGroupAction < Struct.new(
      :auto_scaling_group_name,
      :scheduled_action_name,
      :scheduled_action_arn,
      :time,
      :start_time,
      :end_time,
      :recurrence,
      :min_size,
      :max_size,
      :desired_capacity,
      :time_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes information used for one or more scheduled scaling action
    # updates in a BatchPutScheduledUpdateGroupAction operation.
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scaling action.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time for the action to start, in YYYY-MM-DDThh:mm:ssZ
    #   format in UTC/GMT only and in quotes (for example,
    #   `"2019-06-01T00:00:00Z"`).
    #
    #   If you specify `Recurrence` and `StartTime`, Amazon EC2 Auto Scaling
    #   performs the action at this time, and then performs the action based
    #   on the specified recurrence.
    #
    #   If you try to schedule the action in the past, Amazon EC2 Auto
    #   Scaling returns an error message.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time for the recurring schedule to end, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] recurrence
    #   The recurring schedule for the action, in Unix cron syntax format.
    #   This format consists of five fields separated by white spaces:
    #   \[Minute\] \[Hour\] \[Day\_of\_Month\] \[Month\_of\_Year\]
    #   \[Day\_of\_Week\]. The value must be in quotes (for example, `"30 0
    #   1 1,6,12 *"`). For more information about this format, see
    #   [Crontab][1].
    #
    #   When `StartTime` and `EndTime` are specified with `Recurrence`, they
    #   form the boundaries of when the recurring action starts and stops.
    #
    #   Cron expressions use Universal Coordinated Time (UTC) by default.
    #
    #
    #
    #   [1]: http://crontab.org
    #   @return [String]
    #
    # @!attribute [rw] min_size
    #   The minimum size of the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum size of the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling
    #   group after the scheduled action runs and the capacity it attempts
    #   to maintain.
    #   @return [Integer]
    #
    # @!attribute [rw] time_zone
    #   Specifies the time zone for a cron expression. If a time zone is not
    #   provided, UTC is used by default.
    #
    #   Valid values are the canonical names of the IANA time zones, derived
    #   from the IANA Time Zone Database (such as `Etc/GMT+9` or
    #   `Pacific/Tahiti`). For more information, see
    #   [https://en.wikipedia.org/wiki/List\_of\_tz\_database\_time\_zones][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ScheduledUpdateGroupActionRequest AWS API Documentation
    #
    class ScheduledUpdateGroupActionRequest < Struct.new(
      :scheduled_action_name,
      :start_time,
      :end_time,
      :recurrence,
      :min_size,
      :max_size,
      :desired_capacity,
      :time_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service-linked role is not yet ready for use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ServiceLinkedRoleFailure AWS API Documentation
    #
    class ServiceLinkedRoleFailure < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling
    #   group after this operation completes and the capacity it attempts to
    #   maintain.
    #   @return [Integer]
    #
    # @!attribute [rw] honor_cooldown
    #   Indicates whether Amazon EC2 Auto Scaling waits for the cooldown
    #   period to complete before initiating a scaling activity to set your
    #   Auto Scaling group to its new capacity. By default, Amazon EC2 Auto
    #   Scaling does not honor the cooldown period during manual scaling
    #   activities.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetDesiredCapacityType AWS API Documentation
    #
    class SetDesiredCapacityType < Struct.new(
      :auto_scaling_group_name,
      :desired_capacity,
      :honor_cooldown)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The health status of the instance. Set to `Healthy` to have the
    #   instance remain in service. Set to `Unhealthy` to have the instance
    #   be out of service. Amazon EC2 Auto Scaling terminates and replaces
    #   the unhealthy instance.
    #   @return [String]
    #
    # @!attribute [rw] should_respect_grace_period
    #   If the Auto Scaling group of the specified instance has a
    #   `HealthCheckGracePeriod` specified for the group, by default, this
    #   call respects the grace period. Set this to `False`, to have the
    #   call not respect the grace period associated with the group.
    #
    #   For more information about the health check grace period, see
    #   [CreateAutoScalingGroup][1] in the *Amazon EC2 Auto Scaling API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetInstanceHealthQuery AWS API Documentation
    #
    class SetInstanceHealthQuery < Struct.new(
      :instance_id,
      :health_status,
      :should_respect_grace_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetInstanceProtectionAnswer AWS API Documentation
    #
    class SetInstanceProtectionAnswer < Aws::EmptyStructure; end

    # @!attribute [rw] instance_ids
    #   One or more instance IDs. You can specify up to 50 instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] protected_from_scale_in
    #   Indicates whether the instance is protected from termination by
    #   Amazon EC2 Auto Scaling when scaling in.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetInstanceProtectionQuery AWS API Documentation
    #
    class SetInstanceProtectionQuery < Struct.new(
      :instance_ids,
      :auto_scaling_group_name,
      :protected_from_scale_in)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_refresh_id
    #   A unique ID for tracking the progress of the instance refresh.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/StartInstanceRefreshAnswer AWS API Documentation
    #
    class StartInstanceRefreshAnswer < Struct.new(
      :instance_refresh_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] strategy
    #   The strategy to use for the instance refresh. The only valid value
    #   is `Rolling`.
    #   @return [String]
    #
    # @!attribute [rw] desired_configuration
    #   The desired configuration. For example, the desired configuration
    #   can specify a new launch template or a new version of the current
    #   launch template.
    #
    #   Once the instance refresh succeeds, Amazon EC2 Auto Scaling updates
    #   the settings of the Auto Scaling group to reflect the new desired
    #   configuration.
    #
    #   <note markdown="1"> When you specify a new launch template or a new version of the
    #   current launch template for your desired configuration, consider
    #   enabling the `SkipMatching` property in preferences. If it's
    #   enabled, Amazon EC2 Auto Scaling skips replacing instances that
    #   already use the specified launch template and instance types. This
    #   can help you reduce the number of replacements that are required to
    #   apply updates.
    #
    #    </note>
    #   @return [Types::DesiredConfiguration]
    #
    # @!attribute [rw] preferences
    #   Sets your preferences for the instance refresh so that it performs
    #   as expected when you start it. Includes the instance warmup time,
    #   the minimum healthy percentage, and the behaviors that you want
    #   Amazon EC2 Auto Scaling to use if instances that are in `Standby`
    #   state or protected from scale in are found. You can also choose to
    #   enable additional features, such as the following:
    #
    #   * Auto rollback
    #
    #   * Checkpoints
    #
    #   * Skip matching
    #   @return [Types::RefreshPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/StartInstanceRefreshType AWS API Documentation
    #
    class StartInstanceRefreshType < Struct.new(
      :auto_scaling_group_name,
      :strategy,
      :desired_configuration,
      :preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes information used to create a step adjustment for a step
    # scaling policy.
    #
    # For the following examples, suppose that you have an alarm with a
    # breach threshold of 50:
    #
    # * To trigger the adjustment when the metric is greater than or equal
    #   to 50 and less than 60, specify a lower bound of 0 and an upper
    #   bound of 10.
    #
    # * To trigger the adjustment when the metric is greater than 40 and
    #   less than or equal to 50, specify a lower bound of -10 and an upper
    #   bound of 0.
    #
    # There are a few rules for the step adjustments for your step policy:
    #
    # * The ranges of your step adjustments can't overlap or have a gap.
    #
    # * At most, one step adjustment can have a null lower bound. If one
    #   step adjustment has a negative lower bound, then there must be a
    #   step adjustment with a null lower bound.
    #
    # * At most, one step adjustment can have a null upper bound. If one
    #   step adjustment has a positive upper bound, then there must be a
    #   step adjustment with a null upper bound.
    #
    # * The upper and lower bound can't be null in the same step
    #   adjustment.
    #
    # For more information, see [Step adjustments][1] in the *Amazon EC2
    # Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-steps
    #
    # @!attribute [rw] metric_interval_lower_bound
    #   The lower bound for the difference between the alarm threshold and
    #   the CloudWatch metric. If the metric value is above the breach
    #   threshold, the lower bound is inclusive (the metric must be greater
    #   than or equal to the threshold plus the lower bound). Otherwise, it
    #   is exclusive (the metric must be greater than the threshold plus the
    #   lower bound). A null value indicates negative infinity.
    #   @return [Float]
    #
    # @!attribute [rw] metric_interval_upper_bound
    #   The upper bound for the difference between the alarm threshold and
    #   the CloudWatch metric. If the metric value is above the breach
    #   threshold, the upper bound is exclusive (the metric must be less
    #   than the threshold plus the upper bound). Otherwise, it is inclusive
    #   (the metric must be less than or equal to the threshold plus the
    #   upper bound). A null value indicates positive infinity.
    #
    #   The upper bound must be greater than the lower bound.
    #   @return [Float]
    #
    # @!attribute [rw] scaling_adjustment
    #   The amount by which to scale, based on the specified adjustment
    #   type. A positive value adds to the current capacity while a negative
    #   number removes from the current capacity.
    #
    #   The amount by which to scale. The adjustment is based on the value
    #   that you specified in the `AdjustmentType` property (either an
    #   absolute number or a percentage). A positive value adds to the
    #   current capacity and a negative number subtracts from the current
    #   capacity.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/StepAdjustment AWS API Documentation
    #
    class StepAdjustment < Struct.new(
      :metric_interval_lower_bound,
      :metric_interval_upper_bound,
      :scaling_adjustment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an auto scaling process that has been suspended.
    #
    # For more information, see [Scaling processes][1] in the *Amazon EC2
    # Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types
    #
    # @!attribute [rw] process_name
    #   The name of the suspended process.
    #   @return [String]
    #
    # @!attribute [rw] suspension_reason
    #   The reason that the process was suspended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SuspendedProcess AWS API Documentation
    #
    class SuspendedProcess < Struct.new(
      :process_name,
      :suspension_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag for an Auto Scaling group.
    #
    # @!attribute [rw] resource_id
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource. The only supported value is
    #   `auto-scaling-group`.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @!attribute [rw] propagate_at_launch
    #   Determines whether the tag is added to new instances as they are
    #   launched in the group.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :resource_id,
      :resource_type,
      :key,
      :value,
      :propagate_at_launch)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag for an Auto Scaling group.
    #
    # @!attribute [rw] resource_id
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource. The only supported value is
    #   `auto-scaling-group`.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @!attribute [rw] propagate_at_launch
    #   Determines whether the tag is added to new instances as they are
    #   launched in the group.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TagDescription AWS API Documentation
    #
    class TagDescription < Struct.new(
      :resource_id,
      :resource_type,
      :key,
      :value,
      :propagate_at_launch)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::TagDescription>]
    #
    # @!attribute [rw] next_token
    #   A string that indicates that the response contains more items than
    #   can be returned in a single response. To receive additional items,
    #   specify this string for the `NextToken` value when requesting the
    #   next set of items. This value is null when there are no more items
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TagsType AWS API Documentation
    #
    class TagsType < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a target tracking scaling policy configuration to use with
    # Amazon EC2 Auto Scaling.
    #
    # @!attribute [rw] predefined_metric_specification
    #   A predefined metric. You must specify either a predefined metric or
    #   a customized metric.
    #   @return [Types::PredefinedMetricSpecification]
    #
    # @!attribute [rw] customized_metric_specification
    #   A customized metric. You must specify either a predefined metric or
    #   a customized metric.
    #   @return [Types::CustomizedMetricSpecification]
    #
    # @!attribute [rw] target_value
    #   The target value for the metric.
    #
    #   <note markdown="1"> Some metrics are based on a count instead of a percentage, such as
    #   the request count for an Application Load Balancer or the number of
    #   messages in an SQS queue. If the scaling policy specifies one of
    #   these metrics, specify the target utilization as the optimal average
    #   request or message count per instance during any one-minute
    #   interval.
    #
    #    </note>
    #   @return [Float]
    #
    # @!attribute [rw] disable_scale_in
    #   Indicates whether scaling in by the target tracking scaling policy
    #   is disabled. If scaling in is disabled, the target tracking scaling
    #   policy doesn't remove instances from the Auto Scaling group.
    #   Otherwise, the target tracking scaling policy can remove instances
    #   from the Auto Scaling group. The default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TargetTrackingConfiguration AWS API Documentation
    #
    class TargetTrackingConfiguration < Struct.new(
      :predefined_metric_specification,
      :customized_metric_specification,
      :target_value,
      :disable_scale_in)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metric data to return. Also defines whether this call is returning
    # data for one metric only, or whether it is performing a math
    # expression on the values of returned metric statistics to create a new
    # time series. A time series is a series of data points, each of which
    # is associated with a timestamp.
    #
    # @!attribute [rw] id
    #   A short name that identifies the object's results in the response.
    #   This name must be unique among all `TargetTrackingMetricDataQuery`
    #   objects specified for a single scaling policy. If you are performing
    #   math expressions on this set of data, this name represents that data
    #   and can serve as a variable in the mathematical expression. The
    #   valid characters are letters, numbers, and underscores. The first
    #   character must be a lowercase letter.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The math expression to perform on the returned data, if this object
    #   is performing a math expression. This expression can use the `Id` of
    #   the other metrics to refer to those metrics, and can also use the
    #   `Id` of other expressions to use the result of those expressions.
    #
    #   Conditional: Within each `TargetTrackingMetricDataQuery` object, you
    #   must specify either `Expression` or `MetricStat`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] metric_stat
    #   Information about the metric data to return.
    #
    #   Conditional: Within each `TargetTrackingMetricDataQuery` object, you
    #   must specify either `Expression` or `MetricStat`, but not both.
    #   @return [Types::TargetTrackingMetricStat]
    #
    # @!attribute [rw] label
    #   A human-readable label for this metric or expression. This is
    #   especially useful if this is a math expression, so that you know
    #   what the value represents.
    #   @return [String]
    #
    # @!attribute [rw] return_data
    #   Indicates whether to return the timestamps and raw data values of
    #   this metric.
    #
    #   If you use any math expressions, specify `true` for this value for
    #   only the final math expression that the metric specification is
    #   based on. You must specify `false` for `ReturnData` for all the
    #   other metrics and expressions used in the metric specification.
    #
    #   If you are only retrieving metrics and not performing any math
    #   expressions, do not specify anything for `ReturnData`. This sets it
    #   to its default (`true`).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TargetTrackingMetricDataQuery AWS API Documentation
    #
    class TargetTrackingMetricDataQuery < Struct.new(
      :id,
      :expression,
      :metric_stat,
      :label,
      :return_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines the CloudWatch metric to return, along with the
    # statistic and unit.
    #
    # For more information about the CloudWatch terminology below, see
    # [Amazon CloudWatch concepts][1] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
    #
    # @!attribute [rw] metric
    #   The metric to use.
    #   @return [Types::Metric]
    #
    # @!attribute [rw] stat
    #   The statistic to return. It can include any CloudWatch statistic or
    #   extended statistic. For a list of valid values, see the table in
    #   [Statistics][1] in the *Amazon CloudWatch User Guide*.
    #
    #   The most commonly used metric for scaling is `Average`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit to use for the returned data points. For a complete list of
    #   the units that CloudWatch supports, see the [MetricDatum][1] data
    #   type in the *Amazon CloudWatch API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TargetTrackingMetricStat AWS API Documentation
    #
    class TargetTrackingMetricStat < Struct.new(
      :metric,
      :stat,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] should_decrement_desired_capacity
    #   Indicates whether terminating the instance also decrements the size
    #   of the Auto Scaling group.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TerminateInstanceInAutoScalingGroupType AWS API Documentation
    #
    class TerminateInstanceInAutoScalingGroupType < Struct.new(
      :instance_id,
      :should_decrement_desired_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the minimum and maximum for the `TotalLocalStorageGB` object
    # when you specify InstanceRequirements for an Auto Scaling group.
    #
    # @!attribute [rw] min
    #   The storage minimum in GB.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The storage maximum in GB.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TotalLocalStorageGBRequest AWS API Documentation
    #
    class TotalLocalStorageGBRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifying information for a traffic source.
    #
    # @!attribute [rw] identifier
    #   Identifies the traffic source.
    #
    #   For Application Load Balancers, Gateway Load Balancers, Network Load
    #   Balancers, and VPC Lattice, this will be the Amazon Resource Name
    #   (ARN) for a target group in this account and Region. For Classic
    #   Load Balancers, this will be the name of the Classic Load Balancer
    #   in this account and Region.
    #
    #   For example:
    #
    #   * Application Load Balancer ARN:
    #     `arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/1234567890123456`
    #
    #   * Classic Load Balancer name: `my-classic-load-balancer`
    #
    #   * VPC Lattice ARN:
    #     `arn:aws:vpc-lattice:us-west-2:123456789012:targetgroup/tg-1234567890123456`
    #
    #   To get the ARN of a target group for a Application Load Balancer,
    #   Gateway Load Balancer, or Network Load Balancer, or the name of a
    #   Classic Load Balancer, use the Elastic Load Balancing
    #   [DescribeTargetGroups][1] and [DescribeLoadBalancers][2] API
    #   operations.
    #
    #   To get the ARN of a target group for VPC Lattice, use the VPC
    #   Lattice [GetTargetGroup][3] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html
    #   [3]: https://docs.aws.amazon.com/vpc-lattice/latest/APIReference/API_GetTargetGroup.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Provides additional context for the value of `Identifier`.
    #
    #   The following lists the valid values:
    #
    #   * `elb` if `Identifier` is the name of a Classic Load Balancer.
    #
    #   * `elbv2` if `Identifier` is the ARN of an Application Load
    #     Balancer, Gateway Load Balancer, or Network Load Balancer target
    #     group.
    #
    #   * `vpc-lattice` if `Identifier` is the ARN of a VPC Lattice target
    #     group.
    #
    #   Required if the identifier is the name of a Classic Load Balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TrafficSourceIdentifier AWS API Documentation
    #
    class TrafficSourceIdentifier < Struct.new(
      :identifier,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of a traffic source.
    #
    # @!attribute [rw] traffic_source
    #   This is replaced by `Identifier`.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Describes the current state of a traffic source.
    #
    #   The state values are as follows:
    #
    #   * `Adding` - The Auto Scaling instances are being registered with
    #     the load balancer or target group.
    #
    #   * `Added` - All Auto Scaling instances are registered with the load
    #     balancer or target group.
    #
    #   * `InService` - For an Elastic Load Balancing load balancer or
    #     target group, at least one Auto Scaling instance passed an `ELB`
    #     health check. For VPC Lattice, at least one Auto Scaling instance
    #     passed an `VPC_LATTICE` health check.
    #
    #   * `Removing` - The Auto Scaling instances are being deregistered
    #     from the load balancer or target group. If connection draining
    #     (deregistration delay) is enabled, Elastic Load Balancing or VPC
    #     Lattice waits for in-flight requests to complete before
    #     deregistering the instances.
    #
    #   * `Removed` - All Auto Scaling instances are deregistered from the
    #     load balancer or target group.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the traffic source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Provides additional context for the value of `Identifier`.
    #
    #   The following lists the valid values:
    #
    #   * `elb` if `Identifier` is the name of a Classic Load Balancer.
    #
    #   * `elbv2` if `Identifier` is the ARN of an Application Load
    #     Balancer, Gateway Load Balancer, or Network Load Balancer target
    #     group.
    #
    #   * `vpc-lattice` if `Identifier` is the ARN of a VPC Lattice target
    #     group.
    #
    #   Required if the identifier is the name of a Classic Load Balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TrafficSourceState AWS API Documentation
    #
    class TrafficSourceState < Struct.new(
      :traffic_source,
      :state,
      :identifier,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration. If you specify
    #   `LaunchConfigurationName` in your update request, you can't specify
    #   `LaunchTemplate` or `MixedInstancesPolicy`.
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   The launch template and version to use to specify the updates. If
    #   you specify `LaunchTemplate` in your update request, you can't
    #   specify `LaunchConfigurationName` or `MixedInstancesPolicy`.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] mixed_instances_policy
    #   The mixed instances policy. For more information, see [Auto Scaling
    #   groups with multiple instance types and purchase options][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html
    #   @return [Types::MixedInstancesPolicy]
    #
    # @!attribute [rw] min_size
    #   The minimum size of the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum size of the Auto Scaling group.
    #
    #   <note markdown="1"> With a mixed instances policy that uses instance weighting, Amazon
    #   EC2 Auto Scaling may need to go above `MaxSize` to meet your
    #   capacity requirements. In this event, Amazon EC2 Auto Scaling will
    #   never go above `MaxSize` by more than your largest instance weight
    #   (weights that define how many units each instance contributes to the
    #   desired capacity of the group).
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling
    #   group after this operation completes and the capacity it attempts to
    #   maintain. This number must be greater than or equal to the minimum
    #   size of the group and less than or equal to the maximum size of the
    #   group.
    #   @return [Integer]
    #
    # @!attribute [rw] default_cooldown
    #   *Only needed if you use simple scaling policies.*
    #
    #   The amount of time, in seconds, between one scaling activity ending
    #   and another one starting due to simple scaling policies. For more
    #   information, see [Scaling cooldowns for Amazon EC2 Auto Scaling][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   One or more Availability Zones for the group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] health_check_type
    #   A comma-separated value string of one or more health check types.
    #
    #   The valid values are `EC2`, `ELB`, and `VPC_LATTICE`. `EC2` is the
    #   default health check and cannot be disabled. For more information,
    #   see [Health checks for Auto Scaling instances][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #   Only specify `EC2` if you must clear a value that was previously
    #   set.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    #   @return [String]
    #
    # @!attribute [rw] health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service and marking it unhealthy due to a failed health check.
    #   This is useful if your instances do not immediately pass their
    #   health checks after they enter the `InService` state. For more
    #   information, see [Set the health check grace period for an Auto
    #   Scaling group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html
    #   @return [Integer]
    #
    # @!attribute [rw] placement_group
    #   The name of an existing placement group into which to launch your
    #   instances. For more information, see [Placement groups][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
    #
    #   <note markdown="1"> A *cluster* placement group is a logical grouping of instances
    #   within a single Availability Zone. You cannot specify multiple
    #   Availability Zones and a cluster placement group.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_zone_identifier
    #   A comma-separated list of subnet IDs for a virtual private cloud
    #   (VPC). If you specify `VPCZoneIdentifier` with `AvailabilityZones`,
    #   the subnets that you specify must reside in those Availability
    #   Zones.
    #   @return [String]
    #
    # @!attribute [rw] termination_policies
    #   A policy or a list of policies that are used to select the instances
    #   to terminate. The policies are executed in the order that you list
    #   them. For more information, see [Work with Amazon EC2 Auto Scaling
    #   termination policies][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #   Valid values: `Default` \| `AllocationStrategy` \|
    #   `ClosestToNextInstanceHour` \| `NewestInstance` \| `OldestInstance`
    #   \| `OldestLaunchConfiguration` \| `OldestLaunchTemplate` \|
    #   `arn:aws:lambda:region:account-id:function:my-function:my-alias`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Amazon EC2 Auto Scaling when scaling in. For more
    #   information about preventing instances from terminating on scale in,
    #   see [Using instance scale-in protection][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html
    #   @return [Boolean]
    #
    # @!attribute [rw] service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other Amazon Web Services on your
    #   behalf. For more information, see [Service-linked roles][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html
    #   @return [String]
    #
    # @!attribute [rw] max_instance_lifetime
    #   The maximum amount of time, in seconds, that an instance can be in
    #   service. The default is null. If specified, the value must be either
    #   0 or a number equal to or greater than 86,400 seconds (1 day). To
    #   clear a previously set value, specify a new value of 0. For more
    #   information, see [Replacing Auto Scaling instances based on maximum
    #   instance lifetime][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html
    #   @return [Integer]
    #
    # @!attribute [rw] capacity_rebalance
    #   Enables or disables Capacity Rebalancing. For more information, see
    #   [Use Capacity Rebalancing to handle Amazon EC2 Spot
    #   Interruptions][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html
    #   @return [Boolean]
    #
    # @!attribute [rw] context
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] desired_capacity_type
    #   The unit of measurement for the value specified for desired
    #   capacity. Amazon EC2 Auto Scaling supports `DesiredCapacityType` for
    #   attribute-based instance type selection only. For more information,
    #   see [Creating an Auto Scaling group using attribute-based instance
    #   type selection][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   By default, Amazon EC2 Auto Scaling specifies `units`, which
    #   translates into number of instances.
    #
    #   Valid values: `units` \| `vcpu` \| `memory-mib`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html
    #   @return [String]
    #
    # @!attribute [rw] default_instance_warmup
    #   The amount of time, in seconds, until a new instance is considered
    #   to have finished initializing and resource consumption to become
    #   stable after it enters the `InService` state.
    #
    #   During an instance refresh, Amazon EC2 Auto Scaling waits for the
    #   warm-up period after it replaces an instance before it moves on to
    #   replacing the next instance. Amazon EC2 Auto Scaling also waits for
    #   the warm-up period before aggregating the metrics for new instances
    #   with existing instances in the Amazon CloudWatch metrics that are
    #   used for scaling, resulting in more reliable usage data. For more
    #   information, see [Set the default instance warmup for an Auto
    #   Scaling group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   To manage various warm-up settings at the group level, we recommend
    #   that you set the default instance warmup, *even if it is set to 0
    #   seconds*. To remove a value that you previously set, include the
    #   property but specify `-1` for the value. However, we strongly
    #   recommend keeping the default instance warmup enabled by specifying
    #   a value of `0` or other nominal value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/UpdateAutoScalingGroupType AWS API Documentation
    #
    class UpdateAutoScalingGroupType < Struct.new(
      :auto_scaling_group_name,
      :launch_configuration_name,
      :launch_template,
      :mixed_instances_policy,
      :min_size,
      :max_size,
      :desired_capacity,
      :default_cooldown,
      :availability_zones,
      :health_check_type,
      :health_check_grace_period,
      :placement_group,
      :vpc_zone_identifier,
      :termination_policies,
      :new_instances_protected_from_scale_in,
      :service_linked_role_arn,
      :max_instance_lifetime,
      :capacity_rebalance,
      :context,
      :desired_capacity_type,
      :default_instance_warmup)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the minimum and maximum for the `VCpuCount` object when you
    # specify InstanceRequirements for an Auto Scaling group.
    #
    # @!attribute [rw] min
    #   The minimum number of vCPUs.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum number of vCPUs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/VCpuCountRequest AWS API Documentation
    #
    class VCpuCountRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a warm pool configuration.
    #
    # @!attribute [rw] max_group_prepared_capacity
    #   The maximum number of instances that are allowed to be in the warm
    #   pool or in any state except `Terminated` for the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] min_size
    #   The minimum number of instances to maintain in the warm pool.
    #   @return [Integer]
    #
    # @!attribute [rw] pool_state
    #   The instance state to transition to after the lifecycle actions are
    #   complete.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a warm pool that is marked for deletion.
    #   @return [String]
    #
    # @!attribute [rw] instance_reuse_policy
    #   The instance reuse policy.
    #   @return [Types::InstanceReusePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/WarmPoolConfiguration AWS API Documentation
    #
    class WarmPoolConfiguration < Struct.new(
      :max_group_prepared_capacity,
      :min_size,
      :pool_state,
      :status,
      :instance_reuse_policy)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
