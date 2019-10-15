# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  module Types

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
      :details)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachInstancesQuery
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["XmlStringMaxLen19"],
    #         auto_scaling_group_name: "ResourceName", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancerTargetGroupsResultType AWS API Documentation
    #
    class AttachLoadBalancerTargetGroupsResultType < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AttachLoadBalancerTargetGroupsType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         target_group_arns: ["XmlStringMaxLen511"], # required
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups. You can
    #   specify up to 10 target groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancerTargetGroupsType AWS API Documentation
    #
    class AttachLoadBalancerTargetGroupsType < Struct.new(
      :auto_scaling_group_name,
      :target_group_arns)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancersResultType AWS API Documentation
    #
    class AttachLoadBalancersResultType < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AttachLoadBalancersType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         load_balancer_names: ["XmlStringMaxLen255"], # required
    #       }
    #
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
    # @!attribute [rw] default_cooldown
    #   The amount of time, in seconds, after a scaling activity completes
    #   before another scaling activity can start.
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
    #   The service to use for the health checks. The valid values are `EC2`
    #   and `ELB`. If you configure an Auto Scaling group to use ELB health
    #   checks, it considers the instance unhealthy if it fails either the
    #   EC2 status checks or the load balancer health checks.
    #   @return [String]
    #
    # @!attribute [rw] health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service.
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
    #   The current state of the group when DeleteAutoScalingGroup is in
    #   progress.
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
    #   Auto Scaling group uses to call other AWS services on your behalf.
    #   @return [String]
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
      :service_linked_role_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AutoScalingGroupNamesType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_names: ["ResourceName"],
    #         next_token: "XmlString",
    #         max_records: 1,
    #       }
    #
    # @!attribute [rw] auto_scaling_group_names
    #   The names of the Auto Scaling groups. Each name can be a maximum of
    #   1600 characters. By default, you can only specify up to 50 names.
    #   You can optionally increase this limit using the `MaxRecords`
    #   parameter.
    #
    #   If you omit this parameter, all Auto Scaling groups are described.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AutoScalingGroupNamesType AWS API Documentation
    #
    class AutoScalingGroupNamesType < Struct.new(
      :auto_scaling_group_names,
      :next_token,
      :max_records)
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
      include Aws::Structure
    end

    # Describes an EC2 instance associated with an Auto Scaling group.
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
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
    #   The lifecycle state for the instance.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The last reported health status of this instance. "Healthy" means
    #   that the instance is healthy and should remain in service.
    #   "Unhealthy" means that the instance is unhealthy and Amazon EC2
    #   Auto Scaling should terminate and replace it.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AutoScalingInstanceDetails AWS API Documentation
    #
    class AutoScalingInstanceDetails < Struct.new(
      :instance_id,
      :auto_scaling_group_name,
      :availability_zone,
      :lifecycle_state,
      :health_status,
      :launch_configuration_name,
      :launch_template,
      :protected_from_scale_in)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteScheduledActionType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         scheduled_action_names: ["ResourceName"], # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchPutScheduledUpdateGroupActionType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         scheduled_update_group_actions: [ # required
    #           {
    #             scheduled_action_name: "XmlStringMaxLen255", # required
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             recurrence: "XmlStringMaxLen255",
    #             min_size: 1,
    #             max_size: 1,
    #             desired_capacity: 1,
    #           },
    #         ],
    #       }
    #
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
      include Aws::Structure
    end

    # Describes a block device mapping.
    #
    # @note When making an API call, you may pass BlockDeviceMapping
    #   data as a hash:
    #
    #       {
    #         virtual_name: "XmlStringMaxLen255",
    #         device_name: "XmlStringMaxLen255", # required
    #         ebs: {
    #           snapshot_id: "XmlStringMaxLen255",
    #           volume_size: 1,
    #           volume_type: "BlockDeviceEbsVolumeType",
    #           delete_on_termination: false,
    #           iops: 1,
    #           encrypted: false,
    #         },
    #         no_device: false,
    #       }
    #
    # @!attribute [rw] virtual_name
    #   The name of the virtual device (for example, `ephemeral0`).
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The device name exposed to the EC2 instance (for example, `/dev/sdh`
    #   or `xvdh`). For more information, see [Device Naming on Linux
    #   Instances][1] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   The information about the Amazon EBS volume.
    #   @return [Types::Ebs]
    #
    # @!attribute [rw] no_device
    #   Suppresses a device mapping.
    #
    #   If this parameter is true for the root device, the instance might
    #   fail the EC2 health check. In that case, Amazon EC2 Auto Scaling
    #   launches a replacement instance.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/BlockDeviceMapping AWS API Documentation
    #
    class BlockDeviceMapping < Struct.new(
      :virtual_name,
      :device_name,
      :ebs,
      :no_device)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CompleteLifecycleActionAnswer AWS API Documentation
    #
    class CompleteLifecycleActionAnswer < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CompleteLifecycleActionType
    #   data as a hash:
    #
    #       {
    #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #         auto_scaling_group_name: "ResourceName", # required
    #         lifecycle_action_token: "LifecycleActionToken",
    #         lifecycle_action_result: "LifecycleActionResult", # required
    #         instance_id: "XmlStringMaxLen19",
    #       }
    #
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
    #   The action for the group to take. This parameter can be either
    #   `CONTINUE` or `ABANDON`.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAutoScalingGroupType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "XmlStringMaxLen255", # required
    #         launch_configuration_name: "ResourceName",
    #         launch_template: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255",
    #         },
    #         mixed_instances_policy: {
    #           launch_template: {
    #             launch_template_specification: {
    #               launch_template_id: "XmlStringMaxLen255",
    #               launch_template_name: "LaunchTemplateName",
    #               version: "XmlStringMaxLen255",
    #             },
    #             overrides: [
    #               {
    #                 instance_type: "XmlStringMaxLen255",
    #               },
    #             ],
    #           },
    #           instances_distribution: {
    #             on_demand_allocation_strategy: "XmlString",
    #             on_demand_base_capacity: 1,
    #             on_demand_percentage_above_base_capacity: 1,
    #             spot_allocation_strategy: "XmlString",
    #             spot_instance_pools: 1,
    #             spot_max_price: "MixedInstanceSpotPrice",
    #           },
    #         },
    #         instance_id: "XmlStringMaxLen19",
    #         min_size: 1, # required
    #         max_size: 1, # required
    #         desired_capacity: 1,
    #         default_cooldown: 1,
    #         availability_zones: ["XmlStringMaxLen255"],
    #         load_balancer_names: ["XmlStringMaxLen255"],
    #         target_group_arns: ["XmlStringMaxLen511"],
    #         health_check_type: "XmlStringMaxLen32",
    #         health_check_grace_period: 1,
    #         placement_group: "XmlStringMaxLen255",
    #         vpc_zone_identifier: "XmlStringMaxLen2047",
    #         termination_policies: ["XmlStringMaxLen1600"],
    #         new_instances_protected_from_scale_in: false,
    #         lifecycle_hook_specification_list: [
    #           {
    #             lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #             lifecycle_transition: "LifecycleTransition", # required
    #             notification_metadata: "XmlStringMaxLen1023",
    #             heartbeat_timeout: 1,
    #             default_result: "LifecycleActionResult",
    #             notification_target_arn: "NotificationTargetResourceName",
    #             role_arn: "ResourceName",
    #           },
    #         ],
    #         tags: [
    #           {
    #             resource_id: "XmlString",
    #             resource_type: "XmlString",
    #             key: "TagKey", # required
    #             value: "TagValue",
    #             propagate_at_launch: false,
    #           },
    #         ],
    #         service_linked_role_arn: "ResourceName",
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group. This name must be unique per
    #   Region per account.
    #   @return [String]
    #
    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration.
    #
    #   If you do not specify `LaunchConfigurationName`, you must specify
    #   one of the following parameters: `InstanceId`, `LaunchTemplate`, or
    #   `MixedInstancesPolicy`.
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   The launch template to use to launch instances.
    #
    #   For more information, see [LaunchTemplateSpecification][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #   If you do not specify `LaunchTemplate`, you must specify one of the
    #   following parameters: `InstanceId`, `LaunchConfigurationName`, or
    #   `MixedInstancesPolicy`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_LaunchTemplateSpecification.html
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] mixed_instances_policy
    #   An embedded object that specifies a mixed instances policy. The
    #   required parameters must be specified. If optional parameters are
    #   unspecified, their default values are used.
    #
    #   The policy includes parameters that not only define the distribution
    #   of On-Demand Instances and Spot Instances, the maximum price to pay
    #   for Spot Instances, and how the Auto Scaling group allocates
    #   instance types to fulfill On-Demand and Spot capacity, but also the
    #   parameters that specify the instance configuration information—the
    #   launch template and instance types.
    #
    #   For more information, see [MixedInstancesPolicy][1] in the *Amazon
    #   EC2 Auto Scaling API Reference* and [Auto Scaling Groups with
    #   Multiple Instance Types and Purchase Options][2] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #   You must specify one of the following parameters in your request:
    #   `LaunchConfigurationName`, `LaunchTemplate`, `InstanceId`, or
    #   `MixedInstancesPolicy`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_MixedInstancesPolicy.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html
    #   @return [Types::MixedInstancesPolicy]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance used to create a launch configuration for the
    #   group.
    #
    #   When you specify an ID of an instance, Amazon EC2 Auto Scaling
    #   creates a new launch configuration and associates it with the group.
    #   This launch configuration derives its attributes from the specified
    #   instance, except for the block device mapping.
    #
    #   For more information, see [Create an Auto Scaling Group Using an EC2
    #   Instance][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   You must specify one of the following parameters in your request:
    #   `LaunchConfigurationName`, `LaunchTemplate`, `InstanceId`, or
    #   `MixedInstancesPolicy`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html
    #   @return [String]
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
    #   The number of Amazon EC2 instances that the Auto Scaling group
    #   attempts to maintain. This number must be greater than or equal to
    #   the minimum size of the group and less than or equal to the maximum
    #   size of the group. If you do not specify a desired capacity, the
    #   default is the minimum size of the group.
    #   @return [Integer]
    #
    # @!attribute [rw] default_cooldown
    #   The amount of time, in seconds, after a scaling activity completes
    #   before another scaling activity can start. The default value is
    #   `300`.
    #
    #   For more information, see [Scaling Cooldowns][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   One or more Availability Zones for the group. This parameter is
    #   optional if you specify one or more subnets for `VPCZoneIdentifier`.
    #
    #   Conditional: If your account supports EC2-Classic and VPC, this
    #   parameter is required to launch instances into EC2-Classic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] load_balancer_names
    #   A list of Classic Load Balancers associated with this Auto Scaling
    #   group. For Application Load Balancers and Network Load Balancers,
    #   specify a list of target groups using the `TargetGroupARNs` property
    #   instead.
    #
    #   For more information, see [Using a Load Balancer with an Auto
    #   Scaling Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups to associate
    #   with the Auto Scaling group. Instances are registered as targets in
    #   a target group, and traffic is routed to the target group.
    #
    #   For more information, see [Using a Load Balancer with an Auto
    #   Scaling Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] health_check_type
    #   The service to use for the health checks. The valid values are `EC2`
    #   and `ELB`. The default value is `EC2`. If you configure an Auto
    #   Scaling group to use ELB health checks, it considers the instance
    #   unhealthy if it fails either the EC2 status checks or the load
    #   balancer health checks.
    #
    #   For more information, see [Health Checks for Auto Scaling
    #   Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    #   @return [String]
    #
    # @!attribute [rw] health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service. During this time, any health check failures for the
    #   instance are ignored. The default value is `0`.
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
    #   @return [Integer]
    #
    # @!attribute [rw] placement_group
    #   The name of the placement group into which to launch your instances,
    #   if any. A placement group is a logical grouping of instances within
    #   a single Availability Zone. You cannot specify multiple Availability
    #   Zones and a placement group. For more information, see [Placement
    #   Groups][1] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_zone_identifier
    #   A comma-separated list of subnet IDs for your virtual private cloud
    #   (VPC).
    #
    #   If you specify `VPCZoneIdentifier` with `AvailabilityZones`, the
    #   subnets that you specify for this parameter must reside in those
    #   Availability Zones.
    #
    #   Conditional: If your account supports EC2-Classic and VPC, this
    #   parameter is required to launch instances into a VPC.
    #   @return [String]
    #
    # @!attribute [rw] termination_policies
    #   One or more termination policies used to select the instance to
    #   terminate. These policies are executed in the order that they are
    #   listed.
    #
    #   For more information, see [Controlling Which Instances Auto Scaling
    #   Terminates During Scale In][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Amazon EC2 Auto Scaling when scaling in.
    #
    #   For more information about preventing instances from terminating on
    #   scale in, see [Instance Protection][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection
    #   @return [Boolean]
    #
    # @!attribute [rw] lifecycle_hook_specification_list
    #   One or more lifecycle hooks.
    #   @return [Array<Types::LifecycleHookSpecification>]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #
    #   For more information, see [Tagging Auto Scaling Groups and
    #   Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other AWS services on your behalf.
    #   By default, Amazon EC2 Auto Scaling uses a service-linked role named
    #   AWSServiceRoleForAutoScaling, which it creates if it does not exist.
    #   For more information, see [Service-Linked Roles][1] in the *Amazon
    #   EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html
    #   @return [String]
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
      :lifecycle_hook_specification_list,
      :tags,
      :service_linked_role_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLaunchConfigurationType
    #   data as a hash:
    #
    #       {
    #         launch_configuration_name: "XmlStringMaxLen255", # required
    #         image_id: "XmlStringMaxLen255",
    #         key_name: "XmlStringMaxLen255",
    #         security_groups: ["XmlString"],
    #         classic_link_vpc_id: "XmlStringMaxLen255",
    #         classic_link_vpc_security_groups: ["XmlStringMaxLen255"],
    #         user_data: "XmlStringUserData",
    #         instance_id: "XmlStringMaxLen19",
    #         instance_type: "XmlStringMaxLen255",
    #         kernel_id: "XmlStringMaxLen255",
    #         ramdisk_id: "XmlStringMaxLen255",
    #         block_device_mappings: [
    #           {
    #             virtual_name: "XmlStringMaxLen255",
    #             device_name: "XmlStringMaxLen255", # required
    #             ebs: {
    #               snapshot_id: "XmlStringMaxLen255",
    #               volume_size: 1,
    #               volume_type: "BlockDeviceEbsVolumeType",
    #               delete_on_termination: false,
    #               iops: 1,
    #               encrypted: false,
    #             },
    #             no_device: false,
    #           },
    #         ],
    #         instance_monitoring: {
    #           enabled: false,
    #         },
    #         spot_price: "SpotPrice",
    #         iam_instance_profile: "XmlStringMaxLen1600",
    #         ebs_optimized: false,
    #         associate_public_ip_address: false,
    #         placement_tenancy: "XmlStringMaxLen64",
    #       }
    #
    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration. This name must be unique per
    #   Region per account.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The ID of the Amazon Machine Image (AMI) that was assigned during
    #   registration. For more information, see [Finding an AMI][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
    #
    #   If you do not specify `InstanceId`, you must specify `ImageId`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair. For more information, see [Amazon EC2 Key
    #   Pairs][1] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   A list that contains the security groups to assign to the instances
    #   in the Auto Scaling group.
    #
    #   \[EC2-VPC\] Specify the security group IDs. For more information,
    #   see [Security Groups for Your VPC][1] in the *Amazon Virtual Private
    #   Cloud User Guide*.
    #
    #   \[EC2-Classic\] Specify either the security group names or the
    #   security group IDs. For more information, see [Amazon EC2 Security
    #   Groups][2] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] classic_link_vpc_id
    #   The ID of a ClassicLink-enabled VPC to link your EC2-Classic
    #   instances to. For more information, see [ClassicLink][1] in the
    #   *Amazon EC2 User Guide for Linux Instances* and [Linking EC2-Classic
    #   Instances to a VPC][2] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   This parameter can only be used if you are launching EC2-Classic
    #   instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink
    #   @return [String]
    #
    # @!attribute [rw] classic_link_vpc_security_groups
    #   The IDs of one or more security groups for the specified
    #   ClassicLink-enabled VPC. For more information, see [ClassicLink][1]
    #   in the *Amazon EC2 User Guide for Linux Instances* and [Linking
    #   EC2-Classic Instances to a VPC][2] in the *Amazon EC2 Auto Scaling
    #   User Guide*.
    #
    #   If you specify the `ClassicLinkVPCId` parameter, you must specify
    #   this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_data
    #   The Base64-encoded user data to make available to the launched EC2
    #   instances. For more information, see [Instance Metadata and User
    #   Data][1] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
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
    #   For more information, see [Create a Launch Configuration Using an
    #   EC2 Instance][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   If you do not specify `InstanceId`, you must specify both `ImageId`
    #   and `InstanceType`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   Specifies the instance type of the EC2 instance.
    #
    #   For information about available instance types, see [Available
    #   Instance Types][1] in the *Amazon EC2 User Guide for Linux
    #   Instances.*
    #
    #   If you do not specify `InstanceId`, you must specify `InstanceType`.
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
    #   The ID of the RAM disk to select.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   A block device mapping, which specifies the block devices for the
    #   instance. You can specify virtual devices and EBS volumes. For more
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
    #   [1]: https://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-monitoring.html#enable-as-instance-metrics
    #   @return [Types::InstanceMonitoring]
    #
    # @!attribute [rw] spot_price
    #   The maximum hourly price to be paid for any Spot Instance launched
    #   to fulfill the request. Spot Instances are launched when the price
    #   you specify exceeds the current Spot market price. For more
    #   information, see [Launching Spot Instances in Your Auto Scaling
    #   Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   If a Spot price is set, then the Auto Scaling group will only launch
    #   instances when the Spot price has been met, regardless of the
    #   setting in the Auto Scaling group's `DesiredCapacity`.
    #
    #   <note markdown="1"> When you change your Spot price by creating a new launch
    #   configuration, running instances will continue to run as long as the
    #   Spot price for those running instances is higher than the current
    #   Spot market price.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile
    #   The name or the Amazon Resource Name (ARN) of the instance profile
    #   associated with the IAM role for the instance. The instance profile
    #   contains the IAM role.
    #
    #   For more information, see [IAM Role for Applications That Run on
    #   Amazon EC2 Instances][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
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
    #   EBS-Optimized Instances][1] in the *Amazon EC2 User Guide for Linux
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
    #   For Auto Scaling groups that are running in a virtual private cloud
    #   (VPC), specifies whether to assign a public IP address to the
    #   group's instances. If you specify `true`, each instance in the Auto
    #   Scaling group receives a unique public IP address. For more
    #   information, see [Launching Auto Scaling Instances in a VPC][1] in
    #   the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   If you specify this parameter, you must specify at least one subnet
    #   for `VPCZoneIdentifier` when you create your group.
    #
    #   <note markdown="1"> If the instance is launched into a default subnet, the default is to
    #   assign a public IP address, unless you disabled the option to assign
    #   a public IP address on the subnet. If the instance is launched into
    #   a nondefault subnet, the default is not to assign a public IP
    #   address, unless you enabled the option to assign a public IP address
    #   on the subnet.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    #   @return [Boolean]
    #
    # @!attribute [rw] placement_tenancy
    #   The tenancy of the instance. An instance with `dedicated` tenancy
    #   runs on isolated, single-tenant hardware and can only be launched
    #   into a VPC.
    #
    #   To launch dedicated instances into a shared tenancy VPC (a VPC with
    #   the instance placement tenancy attribute set to `default`), you must
    #   set the value of this parameter to `dedicated`.
    #
    #   If you specify `PlacementTenancy`, you must specify at least one
    #   subnet for `VPCZoneIdentifier` when you create your group.
    #
    #   For more information, see [Instance Placement Tenancy][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid values: `default` \| `dedicated`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-vpc-tenancy
    #   @return [String]
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
      :placement_tenancy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOrUpdateTagsType
    #   data as a hash:
    #
    #       {
    #         tags: [ # required
    #           {
    #             resource_id: "XmlString",
    #             resource_type: "XmlString",
    #             key: "TagKey", # required
    #             value: "TagValue",
    #             propagate_at_launch: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateOrUpdateTagsType AWS API Documentation
    #
    class CreateOrUpdateTagsType < Struct.new(
      :tags)
      include Aws::Structure
    end

    # Represents a CloudWatch metric of your choosing for a target tracking
    # scaling policy to use with Amazon EC2 Auto Scaling.
    #
    # To create your customized metric specification:
    #
    # * Add values for each required parameter from CloudWatch. You can use
    #   an existing metric, or a new metric that you create. To use your own
    #   metric, you must first publish the metric to CloudWatch. For more
    #   information, see [Publish Custom Metrics][1] in the *Amazon
    #   CloudWatch User Guide*.
    #
    # * Choose a metric that changes proportionally with capacity. The value
    #   of the metric should increase or decrease in inverse proportion to
    #   the number of capacity units. That is, the value of the metric
    #   should decrease when capacity increases.
    #
    # For more information about CloudWatch, see [Amazon CloudWatch
    # Concepts][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
    #
    # @note When making an API call, you may pass CustomizedMetricSpecification
    #   data as a hash:
    #
    #       {
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
    #       }
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
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
    #   The unit of the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CustomizedMetricSpecification AWS API Documentation
    #
    class CustomizedMetricSpecification < Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAutoScalingGroupType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         force_delete: false,
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   Specifies that the group is to be deleted along with all instances
    #   associated with the group, without waiting for all instances to be
    #   terminated. This parameter also deletes any lifecycle actions
    #   associated with the group.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteAutoScalingGroupType AWS API Documentation
    #
    class DeleteAutoScalingGroupType < Struct.new(
      :auto_scaling_group_name,
      :force_delete)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteLifecycleHookAnswer AWS API Documentation
    #
    class DeleteLifecycleHookAnswer < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteLifecycleHookType
    #   data as a hash:
    #
    #       {
    #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #         auto_scaling_group_name: "ResourceName", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteNotificationConfigurationType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         topic_arn: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (Amazon SNS) topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteNotificationConfigurationType AWS API Documentation
    #
    class DeleteNotificationConfigurationType < Struct.new(
      :auto_scaling_group_name,
      :topic_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePolicyType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName",
    #         policy_name: "ResourceName", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteScheduledActionType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         scheduled_action_name: "ResourceName", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTagsType
    #   data as a hash:
    #
    #       {
    #         tags: [ # required
    #           {
    #             resource_id: "XmlString",
    #             resource_type: "XmlString",
    #             key: "TagKey", # required
    #             value: "TagValue",
    #             propagate_at_launch: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteTagsType AWS API Documentation
    #
    class DeleteTagsType < Struct.new(
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] max_number_of_auto_scaling_groups
    #   The maximum number of groups allowed for your AWS account. The
    #   default limit is 200 per AWS Region.
    #   @return [Integer]
    #
    # @!attribute [rw] max_number_of_launch_configurations
    #   The maximum number of launch configurations allowed for your AWS
    #   account. The default limit is 200 per AWS Region.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_auto_scaling_groups
    #   The current number of groups for your AWS account.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_launch_configurations
    #   The current number of launch configurations for your AWS account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAccountLimitsAnswer AWS API Documentation
    #
    class DescribeAccountLimitsAnswer < Struct.new(
      :max_number_of_auto_scaling_groups,
      :max_number_of_launch_configurations,
      :number_of_auto_scaling_groups,
      :number_of_launch_configurations)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAutoScalingInstancesType
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["XmlStringMaxLen19"],
    #         max_records: 1,
    #         next_token: "XmlString",
    #       }
    #
    # @!attribute [rw] instance_ids
    #   The IDs of the instances. You can specify up to `MaxRecords` IDs. If
    #   you omit this parameter, all Auto Scaling instances are described.
    #   If you specify an ID that does not exist, it is ignored with no
    #   error.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLifecycleHooksType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         lifecycle_hook_names: ["AsciiStringMaxLen255"],
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_hook_names
    #   The names of one or more lifecycle hooks. If you omit this
    #   parameter, all lifecycle hooks are described.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLifecycleHooksType AWS API Documentation
    #
    class DescribeLifecycleHooksType < Struct.new(
      :auto_scaling_group_name,
      :lifecycle_hook_names)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLoadBalancerTargetGroupsRequest
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         next_token: "XmlString",
    #         max_records: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLoadBalancersRequest
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         next_token: "XmlString",
    #         max_records: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # @!attribute [rw] metrics
    #   One or more metrics.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeNotificationConfigurationsType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_names: ["ResourceName"],
    #         next_token: "XmlString",
    #         max_records: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePoliciesType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName",
    #         policy_names: ["ResourceName"],
    #         policy_types: ["XmlStringMaxLen64"],
    #         next_token: "XmlString",
    #         max_records: 1,
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] policy_names
    #   The names of one or more policies. If you omit this parameter, all
    #   policies are described. If a group name is provided, the results are
    #   limited to that group. This list is limited to 50 items. If you
    #   specify an unknown policy name, it is ignored with no error.
    #   @return [Array<String>]
    #
    # @!attribute [rw] policy_types
    #   One or more policy types. The valid values are `SimpleScaling`,
    #   `StepScaling`, and `TargetTrackingScaling`.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScalingActivitiesType
    #   data as a hash:
    #
    #       {
    #         activity_ids: ["XmlString"],
    #         auto_scaling_group_name: "ResourceName",
    #         max_records: 1,
    #         next_token: "XmlString",
    #       }
    #
    # @!attribute [rw] activity_ids
    #   The activity IDs of the desired scaling activities. You can specify
    #   up to 50 IDs. If you omit this parameter, all activities for the
    #   past six weeks are described. If unknown activities are requested,
    #   they are ignored with no error. If you specify an Auto Scaling
    #   group, the results are limited to that group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
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
      :max_records,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScheduledActionsType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName",
    #         scheduled_action_names: ["ResourceName"],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         next_token: "XmlString",
    #         max_records: 1,
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_names
    #   The names of one or more scheduled actions. You can specify up to 50
    #   actions. If you omit this parameter, all scheduled actions are
    #   described. If you specify an unknown scheduled action, it is ignored
    #   with no error.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The earliest scheduled start time to return. If scheduled action
    #   names are provided, this parameter is ignored.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The latest scheduled start time to return. If scheduled action names
    #   are provided, this parameter is ignored.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTagsType
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "XmlString",
    #             values: ["XmlString"],
    #           },
    #         ],
    #         next_token: "XmlString",
    #         max_records: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachInstancesQuery
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["XmlStringMaxLen19"],
    #         auto_scaling_group_name: "ResourceName", # required
    #         should_decrement_desired_capacity: false, # required
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancerTargetGroupsResultType AWS API Documentation
    #
    class DetachLoadBalancerTargetGroupsResultType < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DetachLoadBalancerTargetGroupsType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         target_group_arns: ["XmlStringMaxLen511"], # required
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancersResultType AWS API Documentation
    #
    class DetachLoadBalancersResultType < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DetachLoadBalancersType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         load_balancer_names: ["XmlStringMaxLen255"], # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableMetricsCollectionQuery
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         metrics: ["XmlStringMaxLen255"],
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   One or more of the following metrics. If you omit this parameter,
    #   all metrics are disabled.
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
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DisableMetricsCollectionQuery AWS API Documentation
    #
    class DisableMetricsCollectionQuery < Struct.new(
      :auto_scaling_group_name,
      :metrics)
      include Aws::Structure
    end

    # Describes an Amazon EBS volume. Used in combination with
    # BlockDeviceMapping.
    #
    # @note When making an API call, you may pass Ebs
    #   data as a hash:
    #
    #       {
    #         snapshot_id: "XmlStringMaxLen255",
    #         volume_size: 1,
    #         volume_type: "BlockDeviceEbsVolumeType",
    #         delete_on_termination: false,
    #         iops: 1,
    #         encrypted: false,
    #       }
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID of the volume to use.
    #
    #   Conditional: This parameter is optional if you specify a volume
    #   size. If you specify both `SnapshotId` and `VolumeSize`,
    #   `VolumeSize` must be equal or greater than the size of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   The volume size, in Gibibytes (GiB).
    #
    #   This can be a number from 1-1,024 for `standard`, 4-16,384 for
    #   `io1`, 1-16,384 for `gp2`, and 500-16,384 for `st1` and `sc1`. If
    #   you specify a snapshot, the volume size must be equal to or larger
    #   than the snapshot size.
    #
    #   Default: If you create a volume from a snapshot and you don't
    #   specify a volume size, the default is the snapshot size.
    #
    #   <note markdown="1"> At least one of VolumeSize or SnapshotId is required.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   The volume type, which can be `standard` for Magnetic, `io1` for
    #   Provisioned IOPS SSD, `gp2` for General Purpose SSD, `st1` for
    #   Throughput Optimized HDD, or `sc1` for Cold HDD. For more
    #   information, see [Amazon EBS Volume Types][1] in the *Amazon EC2
    #   User Guide for Linux Instances*.
    #
    #   Valid values: `standard` \| `io1` \| `gp2` \| `st1` \| `sc1`
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
    #   The number of I/O operations per second (IOPS) to provision for the
    #   volume. The maximum ratio of IOPS to volume size (in GiB) is 50:1.
    #   For more information, see [Amazon EBS Volume Types][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
    #
    #   Conditional: This parameter is required when the volume type is
    #   `io1`. (Not used with `standard`, `gp2`, `st1`, or `sc1` volumes.)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    #   @return [Integer]
    #
    # @!attribute [rw] encrypted
    #   Specifies whether the volume should be encrypted. Encrypted EBS
    #   volumes can only be attached to instances that support Amazon EBS
    #   encryption. For more information, see [Supported Instance Types][1].
    #   If your AMI uses encrypted volumes, you can also only launch it on
    #   supported instance types.
    #
    #   <note markdown="1"> If you are creating a volume from a snapshot, you cannot specify an
    #   encryption value. Volumes that are created from encrypted snapshots
    #   are automatically encrypted, and volumes that are created from
    #   unencrypted snapshots are automatically unencrypted. By default,
    #   encrypted snapshots use the AWS managed CMK that is used for EBS
    #   encryption, but you can specify a custom CMK when you create the
    #   snapshot. The ability to encrypt a snapshot during copying also
    #   allows you to apply a new CMK to an already-encrypted snapshot.
    #   Volumes restored from the resulting copy are only accessible using
    #   the new CMK.
    #
    #    Enabling [encryption by default][2] results in all EBS volumes being
    #   encrypted with the AWS managed CMK or a customer managed CMK,
    #   whether or not the snapshot was encrypted.
    #
    #    </note>
    #
    #   For more information, see [Using Encryption with EBS-Backed AMIs][3]
    #   in the *Amazon EC2 User Guide for Linux Instances* and [Required CMK
    #   Key Policy for Use with Encrypted Volumes][4] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default
    #   [3]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html
    #   [4]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/key-policy-requirements-EBS-encryption.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/Ebs AWS API Documentation
    #
    class Ebs < Struct.new(
      :snapshot_id,
      :volume_size,
      :volume_type,
      :delete_on_termination,
      :iops,
      :encrypted)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableMetricsCollectionQuery
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         metrics: ["XmlStringMaxLen255"],
    #         granularity: "XmlStringMaxLen255", # required
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   One or more of the following metrics. If you omit this parameter,
    #   all metrics are enabled.
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] granularity
    #   The granularity to associate with the metrics to collect. The only
    #   valid value is `1Minute`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/EnableMetricsCollectionQuery AWS API Documentation
    #
    class EnableMetricsCollectionQuery < Struct.new(
      :auto_scaling_group_name,
      :metrics,
      :granularity)
      include Aws::Structure
    end

    # Describes an enabled metric.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnterStandbyQuery
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["XmlStringMaxLen19"],
    #         auto_scaling_group_name: "ResourceName", # required
    #         should_decrement_desired_capacity: false, # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExecutePolicyType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName",
    #         policy_name: "ResourceName", # required
    #         honor_cooldown: false,
    #         metric_value: 1.0,
    #         breach_threshold: 1.0,
    #       }
    #
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
    #   This parameter is not supported if the policy type is `StepScaling`
    #   or `TargetTrackingScaling`.
    #
    #   For more information, see [Scaling Cooldowns][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
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
    #   Conditional: This parameter is required if the policy type is
    #   `StepScaling` and not supported otherwise.
    #   @return [Float]
    #
    # @!attribute [rw] breach_threshold
    #   The breach threshold for the alarm.
    #
    #   Conditional: This parameter is required if the policy type is
    #   `StepScaling` and not supported otherwise.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExitStandbyQuery
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["XmlStringMaxLen19"],
    #         auto_scaling_group_name: "ResourceName", # required
    #       }
    #
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
      include Aws::Structure
    end

    # Describes a filter.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "XmlString",
    #         values: ["XmlString"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter. The valid values are:
    #   `"auto-scaling-group"`, `"key"`, `"value"`, and
    #   `"propagate-at-launch"`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      include Aws::Structure
    end

    # Describes an EC2 instance.
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the instance is running.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_state
    #   A description of the current lifecycle state. The `Quarantined`
    #   state is not used.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The last reported health status of the instance. "Healthy" means
    #   that the instance is healthy and should remain in service.
    #   "Unhealthy" means that the instance is unhealthy and that Amazon
    #   EC2 Auto Scaling should terminate and replace it.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :instance_id,
      :availability_zone,
      :lifecycle_state,
      :health_status,
      :launch_configuration_name,
      :launch_template,
      :protected_from_scale_in)
      include Aws::Structure
    end

    # Describes whether detailed monitoring is enabled for the Auto Scaling
    # instances.
    #
    # @note When making an API call, you may pass InstanceMonitoring
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
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
      include Aws::Structure
    end

    # Describes an instances distribution for an Auto Scaling group with
    # MixedInstancesPolicy.
    #
    # The instances distribution specifies the distribution of On-Demand
    # Instances and Spot Instances, the maximum price to pay for Spot
    # Instances, and how the Auto Scaling group allocates instance types to
    # fulfill On-Demand and Spot capacity.
    #
    # @note When making an API call, you may pass InstancesDistribution
    #   data as a hash:
    #
    #       {
    #         on_demand_allocation_strategy: "XmlString",
    #         on_demand_base_capacity: 1,
    #         on_demand_percentage_above_base_capacity: 1,
    #         spot_allocation_strategy: "XmlString",
    #         spot_instance_pools: 1,
    #         spot_max_price: "MixedInstanceSpotPrice",
    #       }
    #
    # @!attribute [rw] on_demand_allocation_strategy
    #   Indicates how to allocate instance types to fulfill On-Demand
    #   capacity.
    #
    #   The only valid value is `prioritized`, which is also the default
    #   value. This strategy uses the order of instance type overrides for
    #   the LaunchTemplate to define the launch priority of each instance
    #   type. The first instance type in the array is prioritized higher
    #   than the last. If all your On-Demand capacity cannot be fulfilled
    #   using your highest priority instance, then the Auto Scaling groups
    #   launches the remaining capacity using the second priority instance
    #   type, and so on.
    #   @return [String]
    #
    # @!attribute [rw] on_demand_base_capacity
    #   The minimum amount of the Auto Scaling group's capacity that must
    #   be fulfilled by On-Demand Instances. This base portion is
    #   provisioned first as your group scales.
    #
    #   The default value is `0`. If you leave this parameter set to `0`,
    #   On-Demand Instances are launched as a percentage of the Auto Scaling
    #   group's desired capacity, per the
    #   `OnDemandPercentageAboveBaseCapacity` setting.
    #   @return [Integer]
    #
    # @!attribute [rw] on_demand_percentage_above_base_capacity
    #   Controls the percentages of On-Demand Instances and Spot Instances
    #   for your additional capacity beyond `OnDemandBaseCapacity`. The
    #   range is 0–100.
    #
    #   The default value is `100`. If you leave this parameter set to
    #   `100`, the percentages are 100% for On-Demand Instances and 0% for
    #   Spot Instances.
    #   @return [Integer]
    #
    # @!attribute [rw] spot_allocation_strategy
    #   Indicates how to allocate instances across Spot Instance pools.
    #
    #   If the allocation strategy is `lowest-price`, the Auto Scaling group
    #   launches instances using the Spot pools with the lowest price, and
    #   evenly allocates your instances across the number of Spot pools that
    #   you specify. If the allocation strategy is `capacity-optimized`, the
    #   Auto Scaling group launches instances using Spot pools that are
    #   optimally chosen based on the available Spot capacity.
    #
    #   The default Spot allocation strategy for calls that you make through
    #   the API, the AWS CLI, or the AWS SDKs is `lowest-price`. The default
    #   Spot allocation strategy for the AWS Management Console is
    #   `capacity-optimized`.
    #
    #   Valid values: `lowest-price` \| `capacity-optimized`
    #   @return [String]
    #
    # @!attribute [rw] spot_instance_pools
    #   The number of Spot Instance pools across which to allocate your Spot
    #   Instances. The Spot pools are determined from the different instance
    #   types in the Overrides array of LaunchTemplate. The range is 1–20.
    #   The default value is `2`.
    #
    #   Valid only when the Spot allocation strategy is `lowest-price`.
    #   @return [Integer]
    #
    # @!attribute [rw] spot_max_price
    #   The maximum price per unit hour that you are willing to pay for a
    #   Spot Instance. If you leave the value of this parameter blank (which
    #   is the default), the maximum Spot price is set at the On-Demand
    #   price.
    #
    #   To remove a value that you previously set, include the parameter but
    #   leave the value blank.
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
    #   instances.
    #
    #   For more information, see [Finding an AMI][1] in the *Amazon EC2
    #   User Guide for Linux Instances*.
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
    #   in the Auto Scaling group.
    #
    #   For more information, see [Security Groups for Your VPC][1] in the
    #   *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] classic_link_vpc_id
    #   The ID of a ClassicLink-enabled VPC to link your EC2-Classic
    #   instances to.
    #
    #   For more information, see [ClassicLink][1] in the *Amazon EC2 User
    #   Guide for Linux Instances* and [Linking EC2-Classic Instances to a
    #   VPC][2] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink
    #   @return [String]
    #
    # @!attribute [rw] classic_link_vpc_security_groups
    #   The IDs of one or more security groups for the VPC specified in
    #   `ClassicLinkVPCId`.
    #
    #   For more information, see [ClassicLink][1] in the *Amazon EC2 User
    #   Guide for Linux Instances* and [Linking EC2-Classic Instances to a
    #   VPC][2] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_data
    #   The Base64-encoded user data to make available to the launched EC2
    #   instances.
    #
    #   For more information, see [Instance Metadata and User Data][1] in
    #   the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type for the instances.
    #
    #   For information about available instance types, see [Available
    #   Instance Types][1] in the *Amazon EC2 User Guide for Linux
    #   Instances.*
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
    #   A block device mapping, which specifies the block devices for the
    #   instance.
    #
    #   For more information, see [Block Device Mapping][1] in the *Amazon
    #   EC2 User Guide for Linux Instances*.
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
    #   [1]: https://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-monitoring.html#enable-as-instance-metrics
    #   @return [Types::InstanceMonitoring]
    #
    # @!attribute [rw] spot_price
    #   The maximum hourly price to be paid for any Spot Instance launched
    #   to fulfill the request. Spot Instances are launched when the price
    #   you specify exceeds the current Spot market price.
    #
    #   For more information, see [Launching Spot Instances in Your Auto
    #   Scaling Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile
    #   The name or the Amazon Resource Name (ARN) of the instance profile
    #   associated with the IAM role for the instance. The instance profile
    #   contains the IAM role.
    #
    #   For more information, see [IAM Role for Applications That Run on
    #   Amazon EC2 Instances][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
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
    #   (`true`) or not (`false`).
    #
    #   For more information, see [Amazon EBS-Optimized Instances][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html
    #   @return [Boolean]
    #
    # @!attribute [rw] associate_public_ip_address
    #   For Auto Scaling groups that are running in a VPC, specifies whether
    #   to assign a public IP address to the group's instances.
    #
    #   For more information, see [Launching Auto Scaling Instances in a
    #   VPC][1] in the *Amazon EC2 Auto Scaling User Guide*.
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
    #   For more information, see [Instance Placement Tenancy][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-vpc-tenancy
    #   @return [String]
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
      :placement_tenancy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass LaunchConfigurationNameType
    #   data as a hash:
    #
    #       {
    #         launch_configuration_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LaunchConfigurationNameType AWS API Documentation
    #
    class LaunchConfigurationNameType < Struct.new(
      :launch_configuration_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass LaunchConfigurationNamesType
    #   data as a hash:
    #
    #       {
    #         launch_configuration_names: ["ResourceName"],
    #         next_token: "XmlString",
    #         max_records: 1,
    #       }
    #
    # @!attribute [rw] launch_configuration_names
    #   The launch configuration names. If you omit this parameter, all
    #   launch configurations are described.
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
      include Aws::Structure
    end

    # Describes a launch template and overrides.
    #
    # The overrides are used to override the instance type specified by the
    # launch template with multiple instance types that can be used to
    # launch On-Demand Instances and Spot Instances.
    #
    # @note When making an API call, you may pass LaunchTemplate
    #   data as a hash:
    #
    #       {
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
    #       }
    #
    # @!attribute [rw] launch_template_specification
    #   The launch template to use. You must specify either the launch
    #   template ID or launch template name in the request.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] overrides
    #   Any parameters that you specify override the same parameters in the
    #   launch template. Currently, the only supported override is instance
    #   type. You must specify between 2 and 20 overrides.
    #   @return [Array<Types::LaunchTemplateOverrides>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LaunchTemplate AWS API Documentation
    #
    class LaunchTemplate < Struct.new(
      :launch_template_specification,
      :overrides)
      include Aws::Structure
    end

    # Describes an override for a launch template.
    #
    # @note When making an API call, you may pass LaunchTemplateOverrides
    #   data as a hash:
    #
    #       {
    #         instance_type: "XmlStringMaxLen255",
    #       }
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #
    #   For information about available instance types, see [Available
    #   Instance Types][1] in the *Amazon Elastic Compute Cloud User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LaunchTemplateOverrides AWS API Documentation
    #
    class LaunchTemplateOverrides < Struct.new(
      :instance_type)
      include Aws::Structure
    end

    # Describes a launch template and the launch template version.
    #
    # The launch template that is specified must be configured for use with
    # an Auto Scaling group. For more information, see [Creating a Launch
    # Template for an Auto Scaling Group][1] in the *Amazon EC2 Auto Scaling
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html
    #
    # @note When making an API call, you may pass LaunchTemplateSpecification
    #   data as a hash:
    #
    #       {
    #         launch_template_id: "XmlStringMaxLen255",
    #         launch_template_name: "LaunchTemplateName",
    #         version: "XmlStringMaxLen255",
    #       }
    #
    # @!attribute [rw] launch_template_id
    #   The ID of the launch template. You must specify either a template ID
    #   or a template name.
    #   @return [String]
    #
    # @!attribute [rw] launch_template_name
    #   The name of the launch template. You must specify either a template
    #   name or a template ID.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number, `$Latest`, or `$Default`. If the value is
    #   `$Latest`, Amazon EC2 Auto Scaling selects the latest version of the
    #   launch template when launching instances. If the value is
    #   `$Default`, Amazon EC2 Auto Scaling selects the default version of
    #   the launch template when launching instances. The default value is
    #   `$Default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LaunchTemplateSpecification AWS API Documentation
    #
    class LaunchTemplateSpecification < Struct.new(
      :launch_template_id,
      :launch_template_name,
      :version)
      include Aws::Structure
    end

    # Describes a lifecycle hook, which tells Amazon EC2 Auto Scaling that
    # you want to perform an action whenever it launches instances or
    # terminates instances. Used in response to DescribeLifecycleHooks.
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
    #   The state of the EC2 instance to which to attach the lifecycle hook.
    #   The following are possible values:
    #
    #   * autoscaling:EC2\_INSTANCE\_LAUNCHING
    #
    #   * autoscaling:EC2\_INSTANCE\_TERMINATING
    #   @return [String]
    #
    # @!attribute [rw] notification_target_arn
    #   The ARN of the target that Amazon EC2 Auto Scaling sends
    #   notifications to when an instance is in the transition state for the
    #   lifecycle hook. The notification target can be either an SQS queue
    #   or an SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that allows the Auto Scaling group to
    #   publish to the specified notification target.
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
    #   `DefaultResult` parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] global_timeout
    #   The maximum time, in seconds, that an instance can remain in a
    #   `Pending:Wait` or `Terminating:Wait` state. The maximum is 172800
    #   seconds (48 hours) or 100 times `HeartbeatTimeout`, whichever is
    #   smaller.
    #   @return [Integer]
    #
    # @!attribute [rw] default_result
    #   Defines the action the Auto Scaling group should take when the
    #   lifecycle hook timeout elapses or if an unexpected failure occurs.
    #   The possible values are `CONTINUE` and `ABANDON`.
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
      include Aws::Structure
    end

    # Describes a lifecycle hook. Used in combination with
    # CreateAutoScalingGroup.
    #
    # A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on
    # an instance when the instance launches (before it is put into service)
    # or as the instance terminates (before it is fully terminated).
    #
    # This step is a part of the procedure for creating a lifecycle hook for
    # an Auto Scaling group:
    #
    # 1.  (Optional) Create a Lambda function and a rule that allows
    #     CloudWatch Events to invoke your Lambda function when Amazon EC2
    #     Auto Scaling launches or terminates instances.
    #
    # 2.  (Optional) Create a notification target and an IAM role. The
    #     target can be either an Amazon SQS queue or an Amazon SNS topic.
    #     The role allows Amazon EC2 Auto Scaling to publish lifecycle
    #     notifications to the target.
    #
    # 3.  **Create the lifecycle hook. Specify whether the hook is used when
    #     the instances launch or terminate.**
    #
    # 4.  If you need more time, record the lifecycle action heartbeat to
    #     keep the instance in a pending state using
    #     RecordLifecycleActionHeartbeat.
    #
    # 5.  If you finish before the timeout period ends, complete the
    #     lifecycle action using CompleteLifecycleAction.
    #
    # For more information, see [Amazon EC2 Auto Scaling Lifecycle Hooks][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    # You can view the lifecycle hooks for an Auto Scaling group using
    # DescribeLifecycleHooks. You can modify an existing lifecycle hook or
    # create new lifecycle hooks using PutLifecycleHook. If you are no
    # longer using a lifecycle hook, you can delete it using
    # DeleteLifecycleHook.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html
    #
    # @note When making an API call, you may pass LifecycleHookSpecification
    #   data as a hash:
    #
    #       {
    #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #         lifecycle_transition: "LifecycleTransition", # required
    #         notification_metadata: "XmlStringMaxLen1023",
    #         heartbeat_timeout: 1,
    #         default_result: "LifecycleActionResult",
    #         notification_target_arn: "NotificationTargetResourceName",
    #         role_arn: "ResourceName",
    #       }
    #
    # @!attribute [rw] lifecycle_hook_name
    #   The name of the lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_transition
    #   The state of the EC2 instance to which you want to attach the
    #   lifecycle hook. The valid values are:
    #
    #   * autoscaling:EC2\_INSTANCE\_LAUNCHING
    #
    #   * autoscaling:EC2\_INSTANCE\_TERMINATING
    #   @return [String]
    #
    # @!attribute [rw] notification_metadata
    #   Additional information that you want to include any time Amazon EC2
    #   Auto Scaling sends a message to the notification target.
    #   @return [String]
    #
    # @!attribute [rw] heartbeat_timeout
    #   The maximum time, in seconds, that can elapse before the lifecycle
    #   hook times out.
    #
    #   If the lifecycle hook times out, Amazon EC2 Auto Scaling performs
    #   the action that you specified in the `DefaultResult` parameter. You
    #   can prevent the lifecycle hook from timing out by calling
    #   RecordLifecycleActionHeartbeat.
    #   @return [Integer]
    #
    # @!attribute [rw] default_result
    #   Defines the action the Auto Scaling group should take when the
    #   lifecycle hook timeout elapses or if an unexpected failure occurs.
    #   The valid values are `CONTINUE` and `ABANDON`. The default value is
    #   `ABANDON`.
    #   @return [String]
    #
    # @!attribute [rw] notification_target_arn
    #   The ARN of the target that Amazon EC2 Auto Scaling sends
    #   notifications to when an instance is in the transition state for the
    #   lifecycle hook. The notification target can be either an SQS queue
    #   or an SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that allows the Auto Scaling group to
    #   publish to the specified notification target, for example, an Amazon
    #   SNS topic or an Amazon SQS queue.
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
      include Aws::Structure
    end

    # You have already reached a limit for your Amazon EC2 Auto Scaling
    # resources (for example, Auto Scaling groups, launch configurations, or
    # lifecycle hooks). For more information, see DescribeAccountLimits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LimitExceededFault AWS API Documentation
    #
    class LimitExceededFault < Struct.new(
      :message)
      include Aws::Structure
    end

    # Describes the state of a Classic Load Balancer.
    #
    # If you specify a load balancer when creating the Auto Scaling group,
    # the state of the load balancer is `InService`.
    #
    # If you attach a load balancer to an existing Auto Scaling group, the
    # initial state is `Adding`. The state transitions to `Added` after all
    # instances in the group are registered with the load balancer. If
    # Elastic Load Balancing health checks are enabled for the load
    # balancer, the state transitions to `InService` after at least one
    # instance in the group passes the health check. If EC2 health checks
    # are enabled instead, the load balancer remains in the `Added` state.
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   One of the following load balancer states:
    #
    #   * `Adding` - The instances in the group are being registered with
    #     the load balancer.
    #
    #   * `Added` - All instances in the group are registered with the load
    #     balancer.
    #
    #   * `InService` - At least one instance in the group passed an ELB
    #     health check.
    #
    #   * `Removing` - The instances in the group are being deregistered
    #     from the load balancer. If connection draining is enabled, Elastic
    #     Load Balancing waits for in-flight requests to complete before
    #     deregistering the instances.
    #
    #   * `Removed` - All instances in the group are deregistered from the
    #     load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/LoadBalancerState AWS API Documentation
    #
    class LoadBalancerState < Struct.new(
      :load_balancer_name,
      :state)
      include Aws::Structure
    end

    # Describes the state of a target group.
    #
    # If you attach a target group to an existing Auto Scaling group, the
    # initial state is `Adding`. The state transitions to `Added` after all
    # Auto Scaling instances are registered with the target group. If
    # Elastic Load Balancing health checks are enabled, the state
    # transitions to `InService` after at least one Auto Scaling instance
    # passes the health check. If EC2 health checks are enabled instead, the
    # target group remains in the `Added` state.
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
    #   * `InService` - At least one Auto Scaling instance passed an ELB
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/MetricCollectionType AWS API Documentation
    #
    class MetricCollectionType < Struct.new(
      :metric)
      include Aws::Structure
    end

    # Describes the dimension of a metric.
    #
    # @note When making an API call, you may pass MetricDimension
    #   data as a hash:
    #
    #       {
    #         name: "MetricDimensionName", # required
    #         value: "MetricDimensionValue", # required
    #       }
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
      include Aws::Structure
    end

    # Describes a mixed instances policy for an Auto Scaling group. With
    # mixed instances, your Auto Scaling group can provision a combination
    # of On-Demand Instances and Spot Instances across multiple instance
    # types. For more information, see [Auto Scaling Groups with Multiple
    # Instance Types and Purchase Options][1] in the *Amazon EC2 Auto
    # Scaling User Guide*.
    #
    # You can create a mixed instances policy for a new Auto Scaling group,
    # or you can create it for an existing group by updating the group to
    # specify `MixedInstancesPolicy` as the top-level parameter instead of a
    # launch configuration or template. For more information, see
    # CreateAutoScalingGroup and UpdateAutoScalingGroup.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html
    #
    # @note When making an API call, you may pass MixedInstancesPolicy
    #   data as a hash:
    #
    #       {
    #         launch_template: {
    #           launch_template_specification: {
    #             launch_template_id: "XmlStringMaxLen255",
    #             launch_template_name: "LaunchTemplateName",
    #             version: "XmlStringMaxLen255",
    #           },
    #           overrides: [
    #             {
    #               instance_type: "XmlStringMaxLen255",
    #             },
    #           ],
    #         },
    #         instances_distribution: {
    #           on_demand_allocation_strategy: "XmlString",
    #           on_demand_base_capacity: 1,
    #           on_demand_percentage_above_base_capacity: 1,
    #           spot_allocation_strategy: "XmlString",
    #           spot_instance_pools: 1,
    #           spot_max_price: "MixedInstanceSpotPrice",
    #         },
    #       }
    #
    # @!attribute [rw] launch_template
    #   The launch template and instance types (overrides).
    #
    #   This parameter must be specified when creating a mixed instances
    #   policy.
    #   @return [Types::LaunchTemplate]
    #
    # @!attribute [rw] instances_distribution
    #   The instances distribution to use.
    #
    #   If you leave this parameter unspecified when creating a mixed
    #   instances policy, the default values are used.
    #   @return [Types::InstancesDistribution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/MixedInstancesPolicy AWS API Documentation
    #
    class MixedInstancesPolicy < Struct.new(
      :launch_template,
      :instances_distribution)
      include Aws::Structure
    end

    # Describes a notification.
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (Amazon SNS) topic.
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
      include Aws::Structure
    end

    # Represents a predefined metric for a target tracking scaling policy to
    # use with Amazon EC2 Auto Scaling.
    #
    # @note When making an API call, you may pass PredefinedMetricSpecification
    #   data as a hash:
    #
    #       {
    #         predefined_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, ALBRequestCountPerTarget
    #         resource_label: "XmlStringMaxLen1023",
    #       }
    #
    # @!attribute [rw] predefined_metric_type
    #   The metric type.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   Identifies the resource associated with the metric type. The
    #   following predefined metrics are available:
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
    #   * `ALBRequestCountPerTarget` - Number of requests completed per
    #     target in an Application Load Balancer target group.
    #
    #   For predefined metric types `ASGAverageCPUUtilization`,
    #   `ASGAverageNetworkIn`, and `ASGAverageNetworkOut`, the parameter
    #   must not be specified as the resource associated with the metric
    #   type is the Auto Scaling group. For predefined metric type
    #   `ALBRequestCountPerTarget`, the parameter must be specified in the
    #   format:
    #   `app/load-balancer-name/load-balancer-id/targetgroup/target-group-name/target-group-id
    #   `, where `app/load-balancer-name/load-balancer-id ` is the final
    #   portion of the load balancer ARN, and
    #   `targetgroup/target-group-name/target-group-id ` is the final
    #   portion of the target group ARN. The target group must be attached
    #   to the Auto Scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PredefinedMetricSpecification AWS API Documentation
    #
    class PredefinedMetricSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label)
      include Aws::Structure
    end

    # Describes a process type.
    #
    # For more information, see [Scaling Processes][1] in the *Amazon EC2
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
    #   * `ReplaceUnhealthy`
    #
    #   * `ScheduledActions`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ProcessType AWS API Documentation
    #
    class ProcessType < Struct.new(
      :process_name)
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutLifecycleHookAnswer AWS API Documentation
    #
    class PutLifecycleHookAnswer < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutLifecycleHookType
    #   data as a hash:
    #
    #       {
    #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #         auto_scaling_group_name: "ResourceName", # required
    #         lifecycle_transition: "LifecycleTransition",
    #         role_arn: "ResourceName",
    #         notification_target_arn: "NotificationTargetResourceName",
    #         notification_metadata: "XmlStringMaxLen1023",
    #         heartbeat_timeout: 1,
    #         default_result: "LifecycleActionResult",
    #       }
    #
    # @!attribute [rw] lifecycle_hook_name
    #   The name of the lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_transition
    #   The instance state to which you want to attach the lifecycle hook.
    #   The valid values are:
    #
    #   * autoscaling:EC2\_INSTANCE\_LAUNCHING
    #
    #   * autoscaling:EC2\_INSTANCE\_TERMINATING
    #
    #   Conditional: This parameter is required for new lifecycle hooks, but
    #   optional when updating existing hooks.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that allows the Auto Scaling group to
    #   publish to the specified notification target, for example, an Amazon
    #   SNS topic or an Amazon SQS queue.
    #
    #   Conditional: This parameter is required for new lifecycle hooks, but
    #   optional when updating existing hooks.
    #   @return [String]
    #
    # @!attribute [rw] notification_target_arn
    #   The ARN of the notification target that Amazon EC2 Auto Scaling uses
    #   to notify you when an instance is in the transition state for the
    #   lifecycle hook. This target can be either an SQS queue or an SNS
    #   topic.
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
    #
    #   If the lifecycle hook times out, Amazon EC2 Auto Scaling performs
    #   the action that you specified in the `DefaultResult` parameter. You
    #   can prevent the lifecycle hook from timing out by calling
    #   RecordLifecycleActionHeartbeat.
    #   @return [Integer]
    #
    # @!attribute [rw] default_result
    #   Defines the action the Auto Scaling group should take when the
    #   lifecycle hook timeout elapses or if an unexpected failure occurs.
    #   This parameter can be either `CONTINUE` or `ABANDON`. The default
    #   value is `ABANDON`.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutNotificationConfigurationType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         topic_arn: "ResourceName", # required
    #         notification_types: ["XmlStringMaxLen255"], # required
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (Amazon SNS) topic.
    #   @return [String]
    #
    # @!attribute [rw] notification_types
    #   The type of event that causes the notification to be sent. For more
    #   information about notification types supported by Amazon EC2 Auto
    #   Scaling, see DescribeAutoScalingNotificationTypes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutNotificationConfigurationType AWS API Documentation
    #
    class PutNotificationConfigurationType < Struct.new(
      :auto_scaling_group_name,
      :topic_arn,
      :notification_types)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutScalingPolicyType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         policy_name: "XmlStringMaxLen255", # required
    #         policy_type: "XmlStringMaxLen64",
    #         adjustment_type: "XmlStringMaxLen255",
    #         min_adjustment_step: 1,
    #         min_adjustment_magnitude: 1,
    #         scaling_adjustment: 1,
    #         cooldown: 1,
    #         metric_aggregation_type: "XmlStringMaxLen32",
    #         step_adjustments: [
    #           {
    #             metric_interval_lower_bound: 1.0,
    #             metric_interval_upper_bound: 1.0,
    #             scaling_adjustment: 1, # required
    #           },
    #         ],
    #         estimated_instance_warmup: 1,
    #         target_tracking_configuration: {
    #           predefined_metric_specification: {
    #             predefined_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, ALBRequestCountPerTarget
    #             resource_label: "XmlStringMaxLen1023",
    #           },
    #           customized_metric_specification: {
    #             metric_name: "MetricName", # required
    #             namespace: "MetricNamespace", # required
    #             dimensions: [
    #               {
    #                 name: "MetricDimensionName", # required
    #                 value: "MetricDimensionValue", # required
    #               },
    #             ],
    #             statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #             unit: "MetricUnit",
    #           },
    #           target_value: 1.0, # required
    #           disable_scale_in: false,
    #         },
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The policy type. The valid values are `SimpleScaling`,
    #   `StepScaling`, and `TargetTrackingScaling`. If the policy type is
    #   null, the value is treated as `SimpleScaling`.
    #   @return [String]
    #
    # @!attribute [rw] adjustment_type
    #   Specifies whether the `ScalingAdjustment` parameter is an absolute
    #   number or a percentage of the current capacity. The valid values are
    #   `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
    #
    #   Valid only if the policy type is `StepScaling` or `SimpleScaling`.
    #   For more information, see [Scaling Adjustment Types][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
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
    #   The minimum number of instances to scale. If the value of
    #   `AdjustmentType` is `PercentChangeInCapacity`, the scaling policy
    #   changes the `DesiredCapacity` of the Auto Scaling group by at least
    #   this many instances. Otherwise, the error is `ValidationError`.
    #
    #   This property replaces the `MinAdjustmentStep` property. For
    #   example, suppose that you create a step scaling policy to scale out
    #   an Auto Scaling group by 25 percent and you specify a
    #   `MinAdjustmentMagnitude` of 2. If the group has 4 instances and the
    #   scaling policy is performed, 25 percent of 4 is 1. However, because
    #   you specified a `MinAdjustmentMagnitude` of 2, Amazon EC2 Auto
    #   Scaling scales out the group by 2 instances.
    #
    #   Valid only if the policy type is `SimpleScaling` or `StepScaling`.
    #   @return [Integer]
    #
    # @!attribute [rw] scaling_adjustment
    #   The amount by which a simple scaling policy scales the Auto Scaling
    #   group in response to an alarm breach. The adjustment is based on the
    #   value that you specified in the `AdjustmentType` parameter (either
    #   an absolute number or a percentage). A positive value adds to the
    #   current capacity and a negative value subtracts from the current
    #   capacity. For exact capacity, you must specify a positive value.
    #
    #   Conditional: If you specify `SimpleScaling` for the policy type, you
    #   must specify this parameter. (Not used with any other policy type.)
    #   @return [Integer]
    #
    # @!attribute [rw] cooldown
    #   The amount of time, in seconds, after a scaling activity completes
    #   before any further dynamic scaling activities can start. If this
    #   parameter is not specified, the default cooldown period for the
    #   group applies.
    #
    #   Valid only if the policy type is `SimpleScaling`. For more
    #   information, see [Scaling Cooldowns][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
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
    #   Conditional: If you specify `StepScaling` for the policy type, you
    #   must specify this parameter. (Not used with any other policy type.)
    #   @return [Array<Types::StepAdjustment>]
    #
    # @!attribute [rw] estimated_instance_warmup
    #   The estimated time, in seconds, until a newly launched instance can
    #   contribute to the CloudWatch metrics. The default is to use the
    #   value specified for the default cooldown period for the group.
    #
    #   Valid only if the policy type is `StepScaling` or
    #   `TargetTrackingScaling`.
    #   @return [Integer]
    #
    # @!attribute [rw] target_tracking_configuration
    #   A target tracking scaling policy. Includes support for predefined or
    #   customized metrics.
    #
    #   For more information, see [TargetTrackingConfiguration][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #   Conditional: If you specify `TargetTrackingScaling` for the policy
    #   type, you must specify this parameter. (Not used with any other
    #   policy type.)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html
    #   @return [Types::TargetTrackingConfiguration]
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
      :target_tracking_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutScheduledUpdateGroupActionType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         scheduled_action_name: "XmlStringMaxLen255", # required
    #         time: Time.now,
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         recurrence: "XmlStringMaxLen255",
    #         min_size: 1,
    #         max_size: 1,
    #         desired_capacity: 1,
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of this scaling action.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   This parameter is no longer used.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
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
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time for the recurring schedule to end. Amazon EC2 Auto
    #   Scaling does not perform the action after this time.
    #   @return [Time]
    #
    # @!attribute [rw] recurrence
    #   The recurring schedule for this action, in Unix cron syntax format.
    #   This format consists of five fields separated by white spaces:
    #   \[Minute\] \[Hour\] \[Day\_of\_Month\] \[Month\_of\_Year\]
    #   \[Day\_of\_Week\]. The value must be in quotes (for example, `"30 0
    #   1 1,6,12 *"`). For more information about this format, see
    #   [Crontab][1].
    #
    #   When `StartTime` and `EndTime` are specified with `Recurrence`, they
    #   form the boundaries of when the recurring action starts and stops.
    #
    #
    #
    #   [1]: http://crontab.org
    #   @return [String]
    #
    # @!attribute [rw] min_size
    #   The minimum number of instances in the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum number of instances in the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_capacity
    #   The number of EC2 instances that should be running in the Auto
    #   Scaling group.
    #   @return [Integer]
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
      :desired_capacity)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/RecordLifecycleActionHeartbeatAnswer AWS API Documentation
    #
    class RecordLifecycleActionHeartbeatAnswer < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RecordLifecycleActionHeartbeatType
    #   data as a hash:
    #
    #       {
    #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #         auto_scaling_group_name: "ResourceName", # required
    #         lifecycle_action_token: "LifecycleActionToken",
    #         instance_id: "XmlStringMaxLen19",
    #       }
    #
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
    #   The policy type. The valid values are `SimpleScaling`,
    #   `StepScaling`, and `TargetTrackingScaling`.
    #   @return [String]
    #
    # @!attribute [rw] adjustment_type
    #   The adjustment type, which specifies how `ScalingAdjustment` is
    #   interpreted. The valid values are `ChangeInCapacity`,
    #   `ExactCapacity`, and `PercentChangeInCapacity`.
    #   @return [String]
    #
    # @!attribute [rw] min_adjustment_step
    #   Available for backward compatibility. Use `MinAdjustmentMagnitude`
    #   instead.
    #   @return [Integer]
    #
    # @!attribute [rw] min_adjustment_magnitude
    #   The minimum number of instances to scale. If the value of
    #   `AdjustmentType` is `PercentChangeInCapacity`, the scaling policy
    #   changes the `DesiredCapacity` of the Auto Scaling group by at least
    #   this many instances. Otherwise, the error is `ValidationError`.
    #   @return [Integer]
    #
    # @!attribute [rw] scaling_adjustment
    #   The amount by which to scale, based on the specified adjustment
    #   type. A positive value adds to the current capacity while a negative
    #   number removes from the current capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] cooldown
    #   The amount of time, in seconds, after a scaling activity completes
    #   before any further dynamic scaling activities can start.
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
      :target_tracking_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ScalingProcessQuery
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         scaling_processes: ["XmlStringMaxLen255"],
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scaling_processes
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
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ScalingProcessQuery AWS API Documentation
    #
    class ScalingProcessQuery < Struct.new(
      :auto_scaling_group_name,
      :scaling_processes)
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
      include Aws::Structure
    end

    # Describes a scheduled scaling action. Used in response to
    # DescribeScheduledActions.
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
    #   This parameter is no longer used.
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
    #   The minimum number of instances in the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum number of instances in the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_capacity
    #   The number of instances you prefer to maintain in the group.
    #   @return [Integer]
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
      :desired_capacity)
      include Aws::Structure
    end

    # Describes one or more scheduled scaling action updates for a specified
    # Auto Scaling group. Used in combination with
    # BatchPutScheduledUpdateGroupAction.
    #
    # When updating a scheduled scaling action, all optional parameters are
    # left unchanged if not specified.
    #
    # @note When making an API call, you may pass ScheduledUpdateGroupActionRequest
    #   data as a hash:
    #
    #       {
    #         scheduled_action_name: "XmlStringMaxLen255", # required
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         recurrence: "XmlStringMaxLen255",
    #         min_size: 1,
    #         max_size: 1,
    #         desired_capacity: 1,
    #       }
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
    #   The date and time for the recurring schedule to end. Amazon EC2 Auto
    #   Scaling does not perform the action after this time.
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
    #
    #
    #   [1]: http://crontab.org
    #   @return [String]
    #
    # @!attribute [rw] min_size
    #   The minimum number of instances in the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum number of instances in the Auto Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_capacity
    #   The number of EC2 instances that should be running in the group.
    #   @return [Integer]
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
      :desired_capacity)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetDesiredCapacityType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         desired_capacity: 1, # required
    #         honor_cooldown: false,
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] desired_capacity
    #   The number of EC2 instances that should be running in the Auto
    #   Scaling group.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetInstanceHealthQuery
    #   data as a hash:
    #
    #       {
    #         instance_id: "XmlStringMaxLen19", # required
    #         health_status: "XmlStringMaxLen32", # required
    #         should_respect_grace_period: false,
    #       }
    #
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
    #   CreateAutoScalingGroup.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetInstanceHealthQuery AWS API Documentation
    #
    class SetInstanceHealthQuery < Struct.new(
      :instance_id,
      :health_status,
      :should_respect_grace_period)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetInstanceProtectionAnswer AWS API Documentation
    #
    class SetInstanceProtectionAnswer < Aws::EmptyStructure; end

    # @note When making an API call, you may pass SetInstanceProtectionQuery
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["XmlStringMaxLen19"], # required
    #         auto_scaling_group_name: "ResourceName", # required
    #         protected_from_scale_in: false, # required
    #       }
    #
    # @!attribute [rw] instance_ids
    #   One or more instance IDs.
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
      include Aws::Structure
    end

    # Describes an adjustment based on the difference between the value of
    # the aggregated CloudWatch metric and the breach threshold that you've
    # defined for the alarm. Used in combination with PutScalingPolicy.
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
    # @note When making an API call, you may pass StepAdjustment
    #   data as a hash:
    #
    #       {
    #         metric_interval_lower_bound: 1.0,
    #         metric_interval_upper_bound: 1.0,
    #         scaling_adjustment: 1, # required
    #       }
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
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/StepAdjustment AWS API Documentation
    #
    class StepAdjustment < Struct.new(
      :metric_interval_lower_bound,
      :metric_interval_upper_bound,
      :scaling_adjustment)
      include Aws::Structure
    end

    # Describes an automatic scaling process that has been suspended. For
    # more information, see ProcessType.
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
      include Aws::Structure
    end

    # Describes a tag for an Auto Scaling group.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false,
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :resource_id,
      :resource_type,
      :key,
      :value,
      :propagate_at_launch)
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
      include Aws::Structure
    end

    # Represents a target tracking scaling policy configuration to use with
    # Amazon EC2 Auto Scaling.
    #
    # @note When making an API call, you may pass TargetTrackingConfiguration
    #   data as a hash:
    #
    #       {
    #         predefined_metric_specification: {
    #           predefined_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, ALBRequestCountPerTarget
    #           resource_label: "XmlStringMaxLen1023",
    #         },
    #         customized_metric_specification: {
    #           metric_name: "MetricName", # required
    #           namespace: "MetricNamespace", # required
    #           dimensions: [
    #             {
    #               name: "MetricDimensionName", # required
    #               value: "MetricDimensionValue", # required
    #             },
    #           ],
    #           statistic: "Average", # required, accepts Average, Minimum, Maximum, SampleCount, Sum
    #           unit: "MetricUnit",
    #         },
    #         target_value: 1.0, # required
    #         disable_scale_in: false,
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass TerminateInstanceInAutoScalingGroupType
    #   data as a hash:
    #
    #       {
    #         instance_id: "XmlStringMaxLen19", # required
    #         should_decrement_desired_capacity: false, # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAutoScalingGroupType
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_name: "ResourceName", # required
    #         launch_configuration_name: "ResourceName",
    #         launch_template: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255",
    #         },
    #         mixed_instances_policy: {
    #           launch_template: {
    #             launch_template_specification: {
    #               launch_template_id: "XmlStringMaxLen255",
    #               launch_template_name: "LaunchTemplateName",
    #               version: "XmlStringMaxLen255",
    #             },
    #             overrides: [
    #               {
    #                 instance_type: "XmlStringMaxLen255",
    #               },
    #             ],
    #           },
    #           instances_distribution: {
    #             on_demand_allocation_strategy: "XmlString",
    #             on_demand_base_capacity: 1,
    #             on_demand_percentage_above_base_capacity: 1,
    #             spot_allocation_strategy: "XmlString",
    #             spot_instance_pools: 1,
    #             spot_max_price: "MixedInstanceSpotPrice",
    #           },
    #         },
    #         min_size: 1,
    #         max_size: 1,
    #         desired_capacity: 1,
    #         default_cooldown: 1,
    #         availability_zones: ["XmlStringMaxLen255"],
    #         health_check_type: "XmlStringMaxLen32",
    #         health_check_grace_period: 1,
    #         placement_group: "XmlStringMaxLen255",
    #         vpc_zone_identifier: "XmlStringMaxLen2047",
    #         termination_policies: ["XmlStringMaxLen1600"],
    #         new_instances_protected_from_scale_in: false,
    #         service_linked_role_arn: "ResourceName",
    #       }
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration. If you specify
    #   `LaunchConfigurationName` in your update request, you can't specify
    #   `LaunchTemplate` or `MixedInstancesPolicy`.
    #
    #   To update an Auto Scaling group with a launch configuration with
    #   `InstanceMonitoring` set to `false`, you must first disable the
    #   collection of group metrics. Otherwise, you get an error. If you
    #   have previously enabled the collection of group metrics, you can
    #   disable it using DisableMetricsCollection.
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   The launch template and version to use to specify the updates. If
    #   you specify `LaunchTemplate` in your update request, you can't
    #   specify `LaunchConfigurationName` or `MixedInstancesPolicy`.
    #
    #   For more information, see [LaunchTemplateSpecification][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_LaunchTemplateSpecification.html
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] mixed_instances_policy
    #   An embedded object that specifies a mixed instances policy.
    #
    #   In your call to `UpdateAutoScalingGroup`, you can make changes to
    #   the policy that is specified. All optional parameters are left
    #   unchanged if not specified.
    #
    #   For more information, see [MixedInstancesPolicy][1] in the *Amazon
    #   EC2 Auto Scaling API Reference* and [Auto Scaling Groups with
    #   Multiple Instance Types and Purchase Options][2] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_MixedInstancesPolicy.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html
    #   @return [Types::MixedInstancesPolicy]
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
    #   The number of EC2 instances that should be running in the Auto
    #   Scaling group. This number must be greater than or equal to the
    #   minimum size of the group and less than or equal to the maximum size
    #   of the group.
    #   @return [Integer]
    #
    # @!attribute [rw] default_cooldown
    #   The amount of time, in seconds, after a scaling activity completes
    #   before another scaling activity can start. The default value is
    #   `300`. This cooldown period is not used when a scaling-specific
    #   cooldown is specified.
    #
    #   Cooldown periods are not supported for target tracking scaling
    #   policies, step scaling policies, or scheduled scaling. For more
    #   information, see [Scaling Cooldowns][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
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
    #   The service to use for the health checks. The valid values are `EC2`
    #   and `ELB`. If you configure an Auto Scaling group to use ELB health
    #   checks, it considers the instance unhealthy if it fails either the
    #   EC2 status checks or the load balancer health checks.
    #   @return [String]
    #
    # @!attribute [rw] health_check_grace_period
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
    #   @return [Integer]
    #
    # @!attribute [rw] placement_group
    #   The name of the placement group into which to launch your instances,
    #   if any. A placement group is a logical grouping of instances within
    #   a single Availability Zone. You cannot specify multiple Availability
    #   Zones and a placement group. For more information, see [Placement
    #   Groups][1] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_zone_identifier
    #   A comma-separated list of subnet IDs for virtual private cloud
    #   (VPC).
    #
    #   If you specify `VPCZoneIdentifier` with `AvailabilityZones`, the
    #   subnets that you specify for this parameter must reside in those
    #   Availability Zones.
    #   @return [String]
    #
    # @!attribute [rw] termination_policies
    #   A standalone termination policy or a list of termination policies
    #   used to select the instance to terminate. The policies are executed
    #   in the order that they are listed.
    #
    #   For more information, see [Controlling Which Instances Auto Scaling
    #   Terminates During Scale In][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Amazon EC2 Auto Scaling when scaling in.
    #
    #   For more information about preventing instances from terminating on
    #   scale in, see [Instance Protection][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection
    #   @return [Boolean]
    #
    # @!attribute [rw] service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other AWS services on your behalf.
    #   For more information, see [Service-Linked Roles][1] in the *Amazon
    #   EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html
    #   @return [String]
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
      :service_linked_role_arn)
      include Aws::Structure
    end

  end
end
