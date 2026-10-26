# frozen_string_literal: true

# This is generated code!

module Aws::AutoScaling
  # This module contains the types returned by client operations.
  module Types

    # <p>Specifies the minimum and maximum for the <code>AcceleratorCount</code> object when
    #             you specify <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a> for an Auto Scaling group.</p>
    # @!attribute min
    #   <p>The minimum value.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The maximum value.</p>
    #   @return [Integer]
    class AcceleratorCountRequest < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>AcceleratorTotalMemoryMiB</code>
    #             object when you specify <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a> for an Auto Scaling group.</p>
    # @!attribute min
    #   <p>The memory minimum in MiB.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The memory maximum in MiB.</p>
    #   @return [Integer]
    class AcceleratorTotalMemoryMiBRequest < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because an active instance refresh or rollback for the specified
    #             Auto Scaling group was not found.</p>
    # @!attribute message
    #   @return [String]
    class ActiveInstanceRefreshNotFoundFault < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes scaling activity, which is a long-running process that represents a change
    #             to your Auto Scaling group, such as changing its size or replacing an instance.</p>
    # @!attribute activity_id
    #   <p>The ID of the activity.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A friendly, more verbose description of the activity.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The reason the activity began.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the activity.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the activity.</p>
    #   @return [Time]
    # @!attribute status_code
    #   <p>The current status of the activity.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A friendly, more verbose description of the activity status.</p>
    #   @return [String]
    # @!attribute progress
    #   <p>A value between 0 and 100 that indicates the progress of the activity.</p>
    #   @return [Integer]
    # @!attribute details
    #   <p>The details about the activity.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_state
    #   <p>The state of the Auto Scaling group, which is either <code>InService</code> or
    #                   <code>Deleted</code>.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Auto Scaling group.</p>
    #   @return [String]
    class Activity < Struct.new(
      nil,
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
      :auto_scaling_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a policy adjustment type.</p>
    # @!attribute adjustment_type
    #   <p>The policy adjustment type. The valid values are <code>ChangeInCapacity</code>,
    #                   <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
    #   @return [String]
    class AdjustmentType < Struct.new(
      nil,
      :adjustment_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an alarm.</p>
    # @!attribute alarm_name
    #   <p>The name of the alarm.</p>
    #   @return [String]
    # @!attribute alarm_arn
    #   <p>The Amazon Resource Name (ARN) of the alarm.</p>
    #   @return [String]
    class Alarm < Struct.new(
      nil,
      :alarm_name,
      :alarm_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the CloudWatch alarm specification to use in an instance refresh.</p>
    # @!attribute alarms
    #   <p>The names of one or more CloudWatch alarms to monitor for the instance refresh. You can
    #               specify up to 10 alarms.</p>
    #   @return [Array<String>]
    class AlarmSpecification < Struct.new(
      nil,
      :alarms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You already have an Auto Scaling group or launch configuration with this name.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class AlreadyExistsFault < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #   @return [Array<String>]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    class AttachInstancesInput < Struct.new(
      nil,
      :instance_ids,
      :auto_scaling_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute target_group_ar_ns
    #   <p>The Amazon Resource Names (ARNs) of the target groups. You can specify up to 10 target
    #               groups. To get the ARN of a target group, use the Elastic Load Balancing <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #   @return [Array<String>]
    class AttachLoadBalancerTargetGroupsInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :target_group_ar_ns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AttachLoadBalancerTargetGroupsOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute load_balancer_names
    #   <p>The names of the load balancers. You can specify up to 10 load balancers.</p>
    #   @return [Array<String>]
    class AttachLoadBalancersInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :load_balancer_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AttachLoadBalancersOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute traffic_sources
    #   <p>The unique identifiers of one or more traffic sources. You can specify up to 10
    #               traffic sources.</p>
    #   @return [Array<Types::TrafficSourceIdentifier>]
    # @!attribute skip_zonal_shift_validation
    #   <p>
    #               If you enable zonal shift with cross-zone disabled load balancers, capacity could become imbalanced across Availability Zones. To skip the validation, specify <code>true</code>. For more information, see
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-zonal-shift.html">Auto Scaling group zonal shift</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #           </p>
    #   @return [Boolean]
    class AttachTrafficSourcesInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :traffic_sources,
      :skip_zonal_shift_validation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AttachTrafficSourcesOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Auto Scaling group.</p>
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute launch_configuration_name
    #   <p>The name of the associated launch configuration for the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute launch_template
    #   <p>The launch template for the Auto Scaling group.</p>
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute mixed_instances_policy
    #   <p>The mixed instances policy for the group.</p>
    #   @return [Types::MixedInstancesPolicy]
    # @!attribute min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute desired_capacity
    #   <p>The desired size of the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute predicted_capacity
    #   <p>The predicted capacity of the group when it has a predictive scaling policy.</p>
    #   @return [Integer]
    # @!attribute default_cooldown
    #   <p>The duration of the default cooldown period, in seconds, for the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute availability_zones
    #   <p>One or more Availability Zones for the Auto Scaling group.</p>
    #   @return [Array<String>]
    # @!attribute availability_zone_ids
    #   <p>
    #               The Availability Zone IDs where the Auto Scaling group can launch instances.
    #           </p>
    #   @return [Array<String>]
    # @!attribute load_balancer_names
    #   <p>One or more load balancers associated with the group.</p>
    #   @return [Array<String>]
    # @!attribute target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the target groups for your load balancer.</p>
    #   @return [Array<String>]
    # @!attribute health_check_type
    #   <p>One or more comma-separated health check types for the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute health_check_grace_period
    #   <p>The duration of the health check grace period, in seconds, for the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute instances
    #   <p>The EC2 instances associated with the Auto Scaling group.</p>
    #   @return [Array<Types::Instance>]
    # @!attribute created_time
    #   <p>The date and time the Auto Scaling group was created.</p>
    #   @return [Time]
    # @!attribute suspended_processes
    #   <p>The suspended processes associated with the Auto Scaling group.</p>
    #   @return [Array<Types::SuspendedProcess>]
    # @!attribute placement_group
    #   <p>The name of the placement group into which to launch EC2 instances for the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute vpc_zone_identifier
    #   <p>One or more comma-separated subnet IDs for the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute enabled_metrics
    #   <p>The metrics enabled for the Auto Scaling group.</p>
    #   @return [Array<Types::EnabledMetric>]
    # @!attribute status
    #   <p>The current state of the Auto Scaling group when the
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteAutoScalingGroup.html">DeleteAutoScalingGroup</a>
    #               operation is in progress.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the Auto Scaling group.</p>
    #   @return [Array<Types::TagDescription>]
    # @!attribute termination_policies
    #   <p>The termination policies for the Auto Scaling group.</p>
    #   @return [Array<String>]
    # @!attribute new_instances_protected_from_scale_in
    #   <p>Indicates whether newly launched EC2 instances are protected from termination when scaling in for the Auto Scaling group.</p>
    #            <p>
    #               For more information about preventing instances from terminating on scale in, see
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Use instance scale-in protection</a>
    #               in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #           </p>
    #   @return [Boolean]
    # @!attribute service_linked_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other Amazon Web Services on your behalf.</p>
    #   @return [String]
    # @!attribute max_instance_lifetime
    #   <p>The maximum amount of time, in seconds, that an EC2 instance can be in service for the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute capacity_rebalance
    #   <p>Indicates whether Capacity Rebalancing is enabled.</p>
    #   @return [Boolean]
    # @!attribute warm_pool_configuration
    #   <p>The warm pool for the group.</p>
    #   @return [Types::WarmPoolConfiguration]
    # @!attribute warm_pool_size
    #   <p>The current size of the warm pool.</p>
    #   @return [Integer]
    # @!attribute context
    #   <p>Reserved.</p>
    #   @return [String]
    # @!attribute desired_capacity_type
    #   <p>The unit of measurement for the value specified for desired capacity. Amazon EC2 Auto Scaling
    #               supports <code>DesiredCapacityType</code> for attribute-based instance type selection
    #               only.</p>
    #   @return [String]
    # @!attribute default_instance_warmup
    #   <p>The duration of the default EC2 instance warmup time, in seconds, for the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute traffic_sources
    #   <p>The traffic sources associated with this Auto Scaling group.</p>
    #   @return [Array<Types::TrafficSourceIdentifier>]
    # @!attribute instance_maintenance_policy
    #   <p>An instance maintenance policy.</p>
    #   @return [Types::InstanceMaintenancePolicy]
    # @!attribute deletion_protection
    #   <p>The deletion protection setting for the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute availability_zone_distribution
    #   <p>The EC2 instance capacity distribution across Availability Zones for the Auto Scaling group.</p>
    #   @return [Types::AvailabilityZoneDistribution]
    # @!attribute availability_zone_impairment_policy
    #   <p>The Availability Zone impairment policy for the Auto Scaling group.</p>
    #   @return [Types::AvailabilityZoneImpairmentPolicy]
    # @!attribute capacity_reservation_specification
    #   <p>The capacity reservation specification for the Auto Scaling group.</p>
    #   @return [Types::CapacityReservationSpecification]
    # @!attribute instance_lifecycle_policy
    #   <p>The instance lifecycle policy for the Auto Scaling group.</p>
    #   @return [Types::InstanceLifecyclePolicy]
    # @!attribute operator
    #   <p>The entity that manages the Auto Scaling group, if applicable. When set, only the designated
    #               operator can make changes to the group configuration.</p>
    #   @return [Types::Operator]
    class AutoScalingGroup < Struct.new(
      nil,
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
      :availability_zone_ids,
      :load_balancer_names,
      :target_group_ar_ns,
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
      :traffic_sources,
      :instance_maintenance_policy,
      :deletion_protection,
      :availability_zone_distribution,
      :availability_zone_impairment_policy,
      :capacity_reservation_specification,
      :instance_lifecycle_policy,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an EC2 instance associated with an Auto Scaling group.</p>
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type of the EC2 instance.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group for the instance.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone for the instance.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #               The Availability Zone ID where the instance is located.
    #           </p>
    #   @return [String]
    # @!attribute lifecycle_state
    #   <p>The lifecycle state for the instance. The <code>Quarantined</code> state is not used.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-lifecycle.html">Amazon EC2 Auto Scaling instance
    #                   lifecycle</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #            <p>Valid values: <code>Pending</code> | <code>Pending:Wait</code> |
    #                   <code>Pending:Proceed</code> | <code>Quarantined</code> | <code>InService</code> |
    #                   <code>Terminating</code> | <code>Terminating:Wait</code> |
    #                   <code>Terminating:Proceed</code> | <code>Terminating:Retained</code> | <code>Terminated</code> | <code>Detaching</code> |
    #                   <code>Detached</code> | <code>EnteringStandby</code> | <code>Standby</code> |
    #                   <code>ReplacingRootVolume</code> | <code>ReplacingRootVolume:Wait</code> | <code>ReplacingRootVolume:Proceed</code> | <code>RootVolumeReplaced</code> |
    #                   <code>Warmed:Pending</code> | <code>Warmed:Pending:Wait</code> |
    #                   <code>Warmed:Pending:Proceed</code> | <code>Warmed:Pending:Retained</code> | <code>Warmed:Terminating</code> |
    #                   <code>Warmed:Terminating:Wait</code> | <code>Warmed:Terminating:Proceed</code> | <code>Warmed:Terminating:Retained</code> |
    #                   <code>Warmed:Terminated</code> | <code>Warmed:Stopped</code> |
    #                   <code>Warmed:Running</code> | <code>Warmed:Hibernated</code>
    #            </p>
    #   @return [String]
    # @!attribute health_status
    #   <p>The last reported health status of this instance. <code>Healthy</code> means that the
    #               instance is healthy and should remain in service. <code>Unhealthy</code> means that the
    #               instance is unhealthy and Amazon EC2 Auto Scaling should terminate and replace it.</p>
    #   @return [String]
    # @!attribute launch_configuration_name
    #   <p>The launch configuration used to launch the instance. This value is not available if
    #               you attached the instance to the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute launch_template
    #   <p>The launch template for the instance.</p>
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute image_id
    #   <p>
    #               The ID of the Amazon Machine Image (AMI) associated with the instance. This field shows the
    #               current AMI ID of the instance's root volume. It may differ from the original AMI used when
    #               the instance was first launched.
    #           </p>
    #            <p>
    #               This field appears for:
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>Instances with root volume replacements through Instance Refresh</p>
    #               </li>
    #               <li>
    #                  <p>Instances launched with AMI overrides </p>
    #               </li>
    #            </ul>
    #            <p>This field won't appear for:</p>
    #            <ul>
    #               <li>
    #                  <p>Existing instances launched from Launch Templates without overrides</p>
    #               </li>
    #               <li>
    #                  <p>Existing instances that didn’t have their root volume replaced through Instance Refresh</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute protected_from_scale_in
    #   <p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling
    #               in.</p>
    #   @return [Boolean]
    # @!attribute weighted_capacity
    #   <p>The number of capacity units contributed by the instance based on its instance
    #               type.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 999.</p>
    #   @return [String]
    class AutoScalingInstanceDetails < Struct.new(
      nil,
      :instance_id,
      :instance_type,
      :auto_scaling_group_name,
      :availability_zone,
      :availability_zone_id,
      :lifecycle_state,
      :health_status,
      :launch_configuration_name,
      :launch_template,
      :image_id,
      :protected_from_scale_in,
      :weighted_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes an Availability Zone distribution.
    #         </p>
    # @!attribute capacity_distribution_strategy
    #   <p>
    #               If launches fail in an Availability Zone, the following strategies are available. The default is <code>balanced-best-effort</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>balanced-only</code> - If launches fail in an Availability Zone, Auto Scaling will continue to attempt to launch in the unhealthy zone to preserve a balanced distribution.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>balanced-best-effort</code> - If launches fail in an Availability Zone, Auto Scaling will attempt to launch in another healthy Availability Zone instead.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>reservations-then-balanced</code> - Auto Scaling will first attempt to launch into your Capacity Reservations, and then balance any remaining capacity across healthy Availability Zones.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AvailabilityZoneDistribution < Struct.new(
      nil,
      :capacity_distribution_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes an Availability Zone impairment policy.
    #         </p>
    # @!attribute zonal_shift_enabled
    #   <p>
    #               If <code>true</code>, enable zonal shift for your Auto Scaling group.
    #           </p>
    #   @return [Boolean]
    # @!attribute impaired_zone_health_check_behavior
    #   <p>
    #               Specifies the health check behavior for the impaired Availability Zone in an active zonal shift. If you select <code>Replace unhealthy</code>, instances that appear unhealthy will be replaced in all Availability Zones.
    #               If you select <code>Ignore unhealthy</code>, instances will not be replaced in the Availability Zone with the active zonal shift. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-zonal-shift.html">Auto Scaling group zonal shift</a>
    #               in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #
    #           </p>
    #   @return [String]
    class AvailabilityZoneImpairmentPolicy < Struct.new(
      nil,
      :zonal_shift_enabled,
      :impaired_zone_health_check_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>BaselineEbsBandwidthMbps</code> object
    #             when you specify <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a> for an Auto Scaling group.</p>
    # @!attribute min
    #   <p>The minimum value in Mbps.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The maximum value in Mbps.</p>
    #   @return [Integer]
    class BaselineEbsBandwidthMbpsRequest < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The baseline performance to consider, using an instance family as a baseline reference. The instance family establishes the lowest acceptable level of performance. Auto Scaling uses
    #             this baseline to guide instance type selection, but there is no guarantee that the selected instance types will always exceed the baseline for every application.
    #         </p>
    #          <p>Currently, this parameter only supports CPU performance as a baseline performance factor. For example, specifying <code>c6i</code> uses the CPU performance of the <code>c6i</code>
    #         family as the baseline reference.</p>
    # @!attribute cpu
    #   <p>
    #               The CPU performance to consider, using an instance family as the baseline reference.
    #           </p>
    #   @return [Types::CpuPerformanceFactorRequest]
    class BaselinePerformanceFactorsRequest < Struct.new(
      nil,
      :cpu,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute scheduled_action_names
    #   <p>The names of the scheduled actions to delete. The maximum number allowed is 50.
    #           </p>
    #   @return [Array<String>]
    class BatchDeleteScheduledActionInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :scheduled_action_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_scheduled_actions
    #   <p>The names of the scheduled actions that could not be deleted, including an error
    #               message.</p>
    #   @return [Array<Types::FailedScheduledUpdateGroupActionRequest>]
    class BatchDeleteScheduledActionOutput < Struct.new(
      nil,
      :failed_scheduled_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute scheduled_update_group_actions
    #   <p>One or more scheduled actions. The maximum number allowed is 50.</p>
    #   @return [Array<Types::ScheduledUpdateGroupActionRequest>]
    class BatchPutScheduledUpdateGroupActionInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :scheduled_update_group_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_scheduled_update_group_actions
    #   <p>The names of the scheduled actions that could not be created or updated, including an
    #               error message.</p>
    #   @return [Array<Types::FailedScheduledUpdateGroupActionRequest>]
    class BatchPutScheduledUpdateGroupActionOutput < Struct.new(
      nil,
      :failed_scheduled_update_group_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a block device mapping.</p>
    # @!attribute virtual_name
    #   <p>The name of the instance store volume (virtual device) to attach to an instance at
    #               launch. The name must be in the form ephemeral<i>X</i> where
    #                   <i>X</i> is a number starting from zero (0), for example,
    #                   <code>ephemeral0</code>.</p>
    #   @return [String]
    # @!attribute device_name
    #   <p>The device name assigned to the volume (for example, <code>/dev/sdh</code> or
    #                   <code>xvdh</code>). For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html">Device naming on Linux
    #                   instances</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            <note>
    #               <p>To define a block device mapping, set the device name and exactly one of the
    #                   following properties: <code>Ebs</code>, <code>NoDevice</code>, or
    #                       <code>VirtualName</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute ebs
    #   <p>Information to attach an EBS volume to an instance at launch.</p>
    #   @return [Types::Ebs]
    # @!attribute no_device
    #   <p>Setting this value to <code>true</code> prevents a volume that is included in the
    #               block device mapping of the AMI from being mapped to the specified device name at
    #               launch.</p>
    #            <p>If <code>NoDevice</code> is <code>true</code> for the root device, instances might
    #               fail the EC2 health check. In that case, Amazon EC2 Auto Scaling launches replacement instances.</p>
    #   @return [Boolean]
    class BlockDeviceMapping < Struct.new(
      nil,
      :virtual_name,
      :device_name,
      :ebs,
      :no_device,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute wait_for_transitioning_instances
    #   <p>When cancelling an instance refresh, this indicates whether to wait for in-flight launches
    #               and terminations to complete. The default is true.</p>
    #            <p>When set to false, Amazon EC2 Auto Scaling cancels the instance refresh
    #               without waiting for any pending launches or terminations to complete.</p>
    #   @return [Boolean]
    class CancelInstanceRefreshInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :wait_for_transitioning_instances,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_refresh_id
    #   <p>The instance refresh ID associated with the request. This is the unique ID assigned to
    #               the instance refresh when it was started.</p>
    #   @return [String]
    class CancelInstanceRefreshOutput < Struct.new(
      nil,
      :instance_refresh_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>GetPredictiveScalingForecast</code> call returns the capacity forecast for a
    #             predictive scaling policy. This structure includes the data points for that capacity
    #             forecast, along with the timestamps of those data points. </p>
    # @!attribute timestamps
    #   <p>The timestamps for the data points, in UTC format.</p>
    #   @return [Array<Time>]
    # @!attribute values
    #   <p>The values of the data points.</p>
    #   @return [Array<Float>]
    class CapacityForecast < Struct.new(
      nil,
      :timestamps,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the Capacity Reservation preference and targeting options. If you specify <code>open</code> or <code>none</code> for <code>CapacityReservationPreference</code>, do not specify a <code>CapacityReservationTarget</code>.
    #         </p>
    # @!attribute capacity_reservation_preference
    #   <p>
    #               The capacity reservation preference. The following options are available:
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>capacity-reservations-only</code> - Auto Scaling will only launch instances into a Capacity Reservation or Capacity Reservation resource group. If capacity isn't available, instances will fail to launch.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>capacity-reservations-first</code> - Auto Scaling will try to launch instances into a Capacity Reservation or Capacity Reservation resource group first. If capacity isn't available, instances will run in On-Demand capacity.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>none</code> - Auto Scaling will not launch instances into a Capacity Reservation. Instances will run in On-Demand capacity. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>default</code> - Auto Scaling uses the Capacity Reservation preference from your launch template or an open Capacity Reservation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute capacity_reservation_target
    #   <p>
    #               Describes a target Capacity Reservation or Capacity Reservation resource group.
    #           </p>
    #   @return [Types::CapacityReservationTarget]
    class CapacityReservationSpecification < Struct.new(
      nil,
      :capacity_reservation_preference,
      :capacity_reservation_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The target for the Capacity Reservation. Specify Capacity Reservations IDs or Capacity Reservation resource group ARNs.
    #         </p>
    # @!attribute capacity_reservation_ids
    #   <p>
    #               The Capacity Reservation IDs to launch instances into.
    #           </p>
    #   @return [Array<String>]
    # @!attribute capacity_reservation_resource_group_arns
    #   <p>
    #               The resource group ARNs of the Capacity Reservation to launch instances into.
    #           </p>
    #   @return [Array<String>]
    class CapacityReservationTarget < Struct.new(
      nil,
      :capacity_reservation_ids,
      :capacity_reservation_resource_group_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute lifecycle_action_token
    #   <p>A universally unique identifier (UUID) that identifies a specific lifecycle action
    #               associated with an instance. Amazon EC2 Auto Scaling sends this token to the notification target you
    #               specified when you created the lifecycle hook.</p>
    #   @return [String]
    # @!attribute lifecycle_action_result
    #   <p>The action for the group to take. You can specify either <code>CONTINUE</code> or
    #                   <code>ABANDON</code>.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #   @return [String]
    class CompleteLifecycleActionInput < Struct.new(
      nil,
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_action_token,
      :lifecycle_action_result,
      :instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CompleteLifecycleActionOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The CPU performance to consider, using an instance family as the baseline reference.
    #         </p>
    # @!attribute references
    #   <p>
    #               Specify an instance family to use as the baseline reference for CPU performance. All instance types that match your specified attributes will be compared against the CPU performance of the
    #               referenced instance family, regardless of CPU manufacturer or architecture differences.
    #           </p>
    #            <note>
    #               <p>Currently only one instance family can be specified in the list.</p>
    #            </note>
    #   @return [Array<Types::PerformanceFactorReferenceRequest>]
    class CpuPerformanceFactorRequest < Struct.new(
      nil,
      :references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group. This name must be unique per Region per account.</p>
    #            <p>The name can contain any ASCII character 33 to 126 including most punctuation
    #               characters, digits, and upper and lowercased letters.</p>
    #            <note>
    #               <p>You cannot use a colon (:) in the name.</p>
    #            </note>
    #   @return [String]
    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration to use to launch instances. </p>
    #            <p>Conditional: You must specify either a launch template (<code>LaunchTemplate</code> or
    #                   <code>MixedInstancesPolicy</code>) or a launch configuration
    #                   (<code>LaunchConfigurationName</code> or <code>InstanceId</code>).</p>
    #   @return [String]
    # @!attribute launch_template
    #   <p>Information used to specify the launch template and version to use to launch
    #               instances. </p>
    #            <p>Conditional: You must specify either a launch template (<code>LaunchTemplate</code> or
    #                   <code>MixedInstancesPolicy</code>) or a launch configuration
    #                   (<code>LaunchConfigurationName</code> or <code>InstanceId</code>).</p>
    #            <note>
    #               <p>The launch template that is specified must be configured for use with an Auto Scaling
    #                   group. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html">Create a launch
    #                       template for an Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            </note>
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute mixed_instances_policy
    #   <p>The mixed instances policy. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                   groups with multiple instance types and purchase options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>. To learn how to prioritize multiple capacity
    #               types, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/use-distribution-segments.html">Use Distribution
    #                   Segments to target multiple capacity types</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Types::MixedInstancesPolicy]
    # @!attribute instance_id
    #   <p>The ID of the instance used to base the launch configuration on. If specified, Amazon EC2 Auto Scaling uses the configuration values from the specified instance to create a
    #               new launch configuration. To get the instance ID, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html">DescribeInstances</a> API operation. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html">Create an Auto Scaling group using parameters from an existing instance</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute min_size
    #   <p>The minimum size of the group.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum size of the group.</p>
    #            <note>
    #               <p>With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to
    #                   go above <code>MaxSize</code> to meet your capacity requirements. In this event,
    #                   Amazon EC2 Auto Scaling will never go above <code>MaxSize</code> by more than your largest instance
    #                   weight (weights that define how many units each instance contributes to the desired
    #                   capacity of the group).</p>
    #            </note>
    #   @return [Integer]
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group at the time of its
    #               creation and the capacity it attempts to maintain. It can scale beyond this capacity if
    #               you configure auto scaling. This number must be greater than or equal to the minimum
    #               size of the group and less than or equal to the maximum size of the group. If you do not
    #               specify a desired capacity, the default is the minimum size of the group.</p>
    #   @return [Integer]
    # @!attribute default_cooldown
    #   <p>
    #               <i>Only needed if you use simple scaling policies.</i>
    #            </p>
    #            <p>The amount of time, in seconds, between one scaling activity ending and another one
    #               starting due to simple scaling policies. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Default: <code>300</code> seconds</p>
    #   @return [Integer]
    # @!attribute availability_zones
    #   <p>A list of Availability Zones where instances in the Auto Scaling group can be created. Used
    #               for launching into the default VPC subnet in each Availability Zone when not using the
    #                   <code>VPCZoneIdentifier</code> property, or for attaching a network interface when
    #               an existing network interface ID is specified in a launch template.</p>
    #   @return [Array<String>]
    # @!attribute availability_zone_ids
    #   <p>
    #               A list of Availability Zone IDs where the Auto Scaling group can launch instances. You cannot specify both AvailabilityZones and AvailabilityZoneIds in the same request.
    #           </p>
    #   @return [Array<String>]
    # @!attribute load_balancer_names
    #   <p>A list of Classic Load Balancers associated with this Auto Scaling group. For Application Load Balancers, Network Load Balancers, and Gateway Load Balancers,
    #               specify the <code>TargetGroupARNs</code> property instead.</p>
    #   @return [Array<String>]
    # @!attribute target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the Elastic Load Balancing target groups to associate with the Auto Scaling
    #               group. Instances are registered as targets with the target groups. The target groups
    #               receive incoming traffic and route requests to one or more registered targets. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Use Elastic Load Balancing to
    #                   distribute traffic across the instances in your Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute health_check_type
    #   <p>A comma-separated value string of one or more health check types.</p>
    #            <p>The valid values are <code>EC2</code>, <code>EBS</code>, <code>ELB</code>, and
    #                   <code>VPC_LATTICE</code>. <code>EC2</code> is the default health check and cannot be
    #               disabled. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-health-checks.html">Health checks
    #                   for instances in an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Only specify <code>EC2</code> if you must clear a value that was previously
    #               set.</p>
    #   @return [String]
    # @!attribute health_check_grace_period
    #   <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
    #               of an EC2 instance that has come into service and marking it unhealthy due to a failed
    #               health check. This is useful if your instances do not immediately pass their health
    #               checks after they enter the <code>InService</code> state. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html">Set the health check
    #                   grace period for an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Default: <code>0</code> seconds</p>
    #   @return [Integer]
    # @!attribute placement_group
    #   <p>The name of the placement group into which to launch your instances. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement groups</a> in the
    #                   <i>Amazon EC2 User Guide</i>.</p>
    #            <note>
    #               <p>A <i>cluster</i> placement group is a logical grouping of instances
    #                   within a single Availability Zone. You cannot specify multiple Availability Zones
    #                   and a cluster placement group. </p>
    #            </note>
    #   @return [String]
    # @!attribute vpc_zone_identifier
    #   <p>A comma-separated list of subnet IDs for a virtual private cloud (VPC) where instances
    #               in the Auto Scaling group can be created. If you specify <code>VPCZoneIdentifier</code> with
    #                   <code>AvailabilityZones</code>, the subnets that you specify must reside in those
    #               Availability Zones.</p>
    #   @return [String]
    # @!attribute termination_policies
    #   <p>A policy or a list of policies that are used to select the instance to terminate.
    #               These policies are executed in the order that you list them. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html">Configure
    #                   termination policies for Amazon EC2 Auto Scaling</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Valid values: <code>Default</code> | <code>AllocationStrategy</code> |
    #                   <code>ClosestToNextInstanceHour</code> | <code>NewestInstance</code> |
    #                   <code>OldestInstance</code> | <code>OldestLaunchConfiguration</code> |
    #                   <code>OldestLaunchTemplate</code> |
    #                   <code>arn:aws:lambda:region:account-id:function:my-function:my-alias</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute new_instances_protected_from_scale_in
    #   <p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
    #               when scaling in. For more information about preventing instances from terminating on
    #               scale in, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Use
    #                   instance scale-in protection</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute capacity_rebalance
    #   <p>Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity Rebalancing is
    #               disabled. When you turn on Capacity Rebalancing, Amazon EC2 Auto Scaling attempts to launch a Spot
    #               Instance whenever Amazon EC2 notifies that a Spot Instance is at an elevated risk of
    #               interruption. After launching a new instance, it then terminates an old instance. For
    #               more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html">Use Capacity
    #                   Rebalancing to handle Amazon EC2 Spot Interruptions</a> in the in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute lifecycle_hook_specification_list
    #   <p>One or more lifecycle hooks to add to the Auto Scaling group before instances are
    #               launched.</p>
    #   @return [Array<Types::LifecycleHookSpecification>]
    # @!attribute deletion_protection
    #   <p>
    #               The deletion protection setting for the Auto Scaling group. This setting helps safeguard your Auto Scaling group and its
    #               instances by controlling whether the <code>DeleteAutoScalingGroup</code> operation is allowed. When deletion
    #               protection is enabled, users cannot delete the Auto Scaling group according to the specified protection level until
    #               the setting is changed back to a less restrictive level.
    #           </p>
    #            <p>
    #               The valid values are <code>none</code>, <code>prevent-force-deletion</code>, and <code>prevent-all-deletion</code>.
    #           </p>
    #            <p>
    #               Default: <code>none</code>
    #            </p>
    #            <p>
    #               For more information, see
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/resource-deletion-protection.html">
    #                   Configure deletion protection for your Amazon EC2 Auto Scaling resources</a>
    #               in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #           </p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags. You can tag your Auto Scaling group and propagate the tags to the Amazon EC2
    #               instances it launches. Tags are not propagated to Amazon EBS volumes. To add tags to Amazon EBS
    #               volumes, specify the tags in a launch template but use caution. If the launch template
    #               specifies an instance tag with a key that is also specified for the Auto Scaling group, Amazon EC2 Auto Scaling
    #               overrides the value of that instance tag with the value specified by the Auto Scaling group. For
    #               more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html">Tag Auto Scaling groups and
    #                   instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute service_linked_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
    #               call other Amazon Web Services service on your behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role
    #               named <code>AWSServiceRoleForAutoScaling</code>, which it creates if it does not exist.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html">Service-linked
    #                   roles</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute max_instance_lifetime
    #   <p>The maximum amount of time, in seconds, that an instance can be in service. The
    #               default is null. If specified, the value must be either 0 or a number equal to or
    #               greater than 86,400 seconds (1 day). For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html">Replace Auto Scaling instances based on maximum instance lifetime</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute context
    #   <p>Reserved.</p>
    #   @return [String]
    # @!attribute desired_capacity_type
    #   <p>The unit of measurement for the value specified for desired capacity. Amazon EC2 Auto Scaling
    #               supports <code>DesiredCapacityType</code> for attribute-based instance type selection
    #               only. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-mixed-instances-group-attribute-based-instance-type-selection.html">Create a mixed instances group using attribute-based instance type
    #                   selection</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>By default, Amazon EC2 Auto Scaling specifies <code>units</code>, which translates into number of
    #               instances.</p>
    #            <p>Valid values: <code>units</code> | <code>vcpu</code> | <code>memory-mib</code>
    #            </p>
    #   @return [String]
    # @!attribute default_instance_warmup
    #   <p>The amount of time, in seconds, until a new instance is considered to have finished
    #               initializing and resource consumption to become stable after it enters the
    #                   <code>InService</code> state. </p>
    #            <p>During an instance refresh, Amazon EC2 Auto Scaling waits for the warm-up period after it replaces an
    #               instance before it moves on to replacing the next instance. Amazon EC2 Auto Scaling also waits for the
    #               warm-up period before aggregating the metrics for new instances with existing instances
    #               in the Amazon CloudWatch metrics that are used for scaling, resulting in more reliable usage
    #               data. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html">Set
    #                   the default instance warmup for an Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <important>
    #               <p>To manage various warm-up settings at the group level, we recommend that you set
    #                   the default instance warmup, <i>even if it is set to 0 seconds</i>. To
    #                   remove a value that you previously set, include the property but specify
    #                       <code>-1</code> for the value. However, we strongly recommend keeping the
    #                   default instance warmup enabled by specifying a value of <code>0</code> or other
    #                   nominal value.</p>
    #            </important>
    #            <p>Default: None </p>
    #   @return [Integer]
    # @!attribute traffic_sources
    #   <p>The list of traffic sources to attach to this Auto Scaling group. You can use any of the
    #               following as traffic sources for an Auto Scaling group: Classic Load Balancer, Application Load Balancer, Gateway Load Balancer, Network Load Balancer, and
    #               VPC Lattice.</p>
    #   @return [Array<Types::TrafficSourceIdentifier>]
    # @!attribute instance_maintenance_policy
    #   <p>An instance maintenance policy. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-maintenance-policy.html">Set instance maintenance policy</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Types::InstanceMaintenancePolicy]
    # @!attribute availability_zone_distribution
    #   <p>The instance capacity distribution across Availability Zones.</p>
    #   @return [Types::AvailabilityZoneDistribution]
    # @!attribute availability_zone_impairment_policy
    #   <p>
    #               The policy for Availability Zone impairment.
    #           </p>
    #   @return [Types::AvailabilityZoneImpairmentPolicy]
    # @!attribute skip_zonal_shift_validation
    #   <p>
    #               If you enable zonal shift with cross-zone disabled load balancers, capacity could become imbalanced across Availability Zones. To skip the validation, specify <code>true</code>. For more information, see
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-zonal-shift.html">Auto Scaling group zonal shift</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #           </p>
    #   @return [Boolean]
    # @!attribute capacity_reservation_specification
    #   <p>
    #           The capacity reservation specification for the Auto Scaling group.
    #       </p>
    #   @return [Types::CapacityReservationSpecification]
    # @!attribute instance_lifecycle_policy
    #   <p>
    #               The instance lifecycle policy for the Auto Scaling group. This policy controls instance behavior when an instance
    #               transitions through its lifecycle states. Configure retention triggers to specify when instances should
    #               move to a <code>Retained</code> state instead of automatic termination.
    #           </p>
    #            <p>For more information, see
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/instance-lifecycle-policy.html">
    #                   Control instance retention with instance lifecycle policies</a>
    #               in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #           </p>
    #            <note>
    #               <p>Instances in a Retained state will continue to incur standard EC2 charges until terminated.</p>
    #            </note>
    #   @return [Types::InstanceLifecyclePolicy]
    # @!attribute operator
    #   <p>The entity that manages the Auto Scaling group. If you specify this parameter, Amazon EC2 Auto Scaling
    #               passes the operator identity to EC2 for instance launches and only allows the
    #               designated operator to make changes to the Auto Scaling group. All mutating API calls from
    #               non-operator callers are rejected with an <code>AccessDenied</code> exception.</p>
    #   @return [Types::Operator]
    class CreateAutoScalingGroupInput < Struct.new(
      nil,
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
      :availability_zone_ids,
      :load_balancer_names,
      :target_group_ar_ns,
      :health_check_type,
      :health_check_grace_period,
      :placement_group,
      :vpc_zone_identifier,
      :termination_policies,
      :new_instances_protected_from_scale_in,
      :capacity_rebalance,
      :lifecycle_hook_specification_list,
      :deletion_protection,
      :tags,
      :service_linked_role_arn,
      :max_instance_lifetime,
      :context,
      :desired_capacity_type,
      :default_instance_warmup,
      :traffic_sources,
      :instance_maintenance_policy,
      :availability_zone_distribution,
      :availability_zone_impairment_policy,
      :skip_zonal_shift_validation,
      :capacity_reservation_specification,
      :instance_lifecycle_policy,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration. This name must be unique per Region per
    #               account.</p>
    #   @return [String]
    # @!attribute image_id
    #   <p>The ID of the Amazon Machine Image (AMI) that was assigned during registration. For
    #               more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Find a Linux AMI</a> in the
    #                   <i>Amazon EC2 User Guide</i>.</p>
    #            <p>If you specify <code>InstanceId</code>, an <code>ImageId</code> is not
    #               required.</p>
    #   @return [String]
    # @!attribute key_name
    #   <p>The name of the key pair. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Amazon EC2 key pairs and Amazon EC2
    #                   instances</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>A list that contains the security group IDs to assign to the instances in the Auto Scaling
    #               group. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html">Control traffic to your Amazon Web Services
    #                   resources using security groups</a> in the <i>Amazon Virtual Private
    #                   Cloud User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute classic_link_vpc_id
    #   <p>Available for backward compatibility.</p>
    #   @return [String]
    # @!attribute classic_link_vpc_security_groups
    #   <p>Available for backward compatibility.</p>
    #   @return [Array<String>]
    # @!attribute user_data
    #   <p>The user data to make available to the launched EC2 instances. For more information,
    #               see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">Instance metadata and user data</a> (Linux) and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html">Instance metadata and
    #                   user data</a> (Windows). If you are using a command line tool, base64-encoding
    #               is performed for you, and you can load the text from a file. Otherwise, you must provide
    #               base64-encoded text. User data is limited to 16 KB.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The ID of the instance to use to create the launch configuration. The new launch
    #               configuration derives attributes from the instance, except for the block device
    #               mapping.</p>
    #            <p>To create a launch configuration with a block device mapping or override any other
    #               instance attributes, specify them as part of the same request.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html">Create a launch
    #                   configuration</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>Specifies the instance type of the EC2 instance. For information about available
    #               instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes">Available
    #                   instance types</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            <p>If you specify <code>InstanceId</code>, an <code>InstanceType</code> is not
    #               required.</p>
    #   @return [String]
    # @!attribute kernel_id
    #   <p>The ID of the kernel associated with the AMI.</p>
    #            <note>
    #               <p>We recommend that you use PV-GRUB instead of kernels and RAM disks. For more
    #                   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html">User provided
    #                       kernels</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute ramdisk_id
    #   <p>The ID of the RAM disk to select.</p>
    #            <note>
    #               <p>We recommend that you use PV-GRUB instead of kernels and RAM disks. For more
    #                   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html">User provided
    #                       kernels</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute block_device_mappings
    #   <p>The block device mapping entries that define the block devices to attach to the
    #               instances at launch. By default, the block devices specified in the block device mapping
    #               for the AMI are used. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block device
    #                   mappings</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #   @return [Array<Types::BlockDeviceMapping>]
    # @!attribute instance_monitoring
    #   <p>Controls whether instances in this group are launched with detailed
    #               (<code>true</code>) or basic (<code>false</code>) monitoring.</p>
    #            <p>The default value is <code>true</code> (enabled).</p>
    #            <important>
    #               <p>When detailed monitoring is enabled, Amazon CloudWatch generates metrics every minute and
    #                   your account is charged a fee. When you disable detailed monitoring, CloudWatch generates
    #                   metrics every 5 minutes. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html">Configure
    #                       monitoring for Auto Scaling instances</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            </important>
    #   @return [Types::InstanceMonitoring]
    # @!attribute spot_price
    #   <p>The maximum hourly price to be paid for any Spot Instance launched to fulfill the
    #               request. Spot Instances are launched when the price you specify exceeds the current Spot
    #               price. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-template-spot-instances.html">Request Spot
    #                   Instances for fault-tolerant and flexible applications</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Valid Range: Minimum value of 0.001</p>
    #            <note>
    #               <p>When you change your maximum price by creating a new launch configuration, running
    #                   instances will continue to run as long as the maximum price for those running
    #                   instances is higher than the current Spot price.</p>
    #            </note>
    #   @return [String]
    # @!attribute iam_instance_profile
    #   <p>The name or the Amazon Resource Name (ARN) of the instance profile associated with the
    #               IAM role for the instance. The instance profile contains the IAM role. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html">IAM role for applications that run
    #                   on Amazon EC2 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute ebs_optimized
    #   <p>Specifies whether the launch configuration is optimized for EBS I/O
    #               (<code>true</code>) or not (<code>false</code>). The optimization provides dedicated
    #               throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O
    #               performance. This optimization is not available with all instance types. Additional fees
    #               are incurred when you enable EBS optimization for an instance type that is not
    #               EBS-optimized by default. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html">Amazon EBS-optimized instances</a>
    #               in the <i>Amazon EC2 User Guide</i>.</p>
    #            <p>The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute associate_public_ip_address
    #   <p>Specifies whether to assign a public IPv4 address to the group's instances. If the
    #               instance is launched into a default subnet, the default is to assign a public IPv4
    #               address, unless you disabled the option to assign a public IPv4 address on the subnet.
    #               If the instance is launched into a nondefault subnet, the default is not to assign a
    #               public IPv4 address, unless you enabled the option to assign a public IPv4 address on
    #               the subnet.</p>
    #            <p>If you specify <code>true</code>, each instance in the Auto Scaling group receives a unique
    #               public IPv4 address. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html">Provide network connectivity for
    #                   your Auto Scaling instances using Amazon VPC</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>If you specify this property, you must specify at least one subnet for
    #                   <code>VPCZoneIdentifier</code> when you create your group.</p>
    #   @return [Boolean]
    # @!attribute placement_tenancy
    #   <p>The tenancy of the instance, either <code>default</code> or <code>dedicated</code>. An
    #               instance with <code>dedicated</code> tenancy runs on isolated, single-tenant hardware
    #               and can only be launched into a VPC. To launch dedicated instances into a shared tenancy
    #               VPC (a VPC with the instance placement tenancy attribute set to <code>default</code>),
    #               you must set the value of this property to <code>dedicated</code>.</p>
    #            <p>If you specify <code>PlacementTenancy</code>, you must specify at least one subnet for
    #                   <code>VPCZoneIdentifier</code> when you create your group.</p>
    #            <p>Valid values: <code>default</code> | <code>dedicated</code>
    #            </p>
    #   @return [String]
    # @!attribute metadata_options
    #   <p>The metadata options for the instances. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds">Configure the instance metadata options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Types::InstanceMetadataOptions]
    class CreateLaunchConfigurationInput < Struct.new(
      nil,
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
      :metadata_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>One or more tags.</p>
    #   @return [Array<Types::Tag>]
    class CreateOrUpdateTagsInput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a CloudWatch metric of your choosing for a target tracking scaling policy to use
    #             with Amazon EC2 Auto Scaling.</p>
    #          <p>To create your customized metric specification:</p>
    #          <ul>
    #             <li>
    #                <p>Add values for each required property from CloudWatch. You can use an existing
    #                     metric, or a new metric that you create. To use your own metric, you must first
    #                     publish the metric to CloudWatch. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publish
    #                         custom metrics</a> in the <i>Amazon CloudWatch User
    #                     Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>Choose a metric that changes proportionally with capacity. The value of the
    #                     metric should increase or decrease in inverse proportion to the number of
    #                     capacity units. That is, the value of the metric should decrease when capacity
    #                     increases.</p>
    #             </li>
    #          </ul>
    #          <p>For more information about the CloudWatch terminology below, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch
    #                 concepts</a>.</p>
    #          <note>
    #             <p>Each individual service provides information about the metrics, namespace, and
    #                 dimensions they use. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html">Amazon Web Services services that publish CloudWatch metrics</a> in the <i>Amazon CloudWatch User
    #                     Guide</i>.</p>
    #          </note>
    # @!attribute metric_name
    #   <p>The name of the metric. To get the exact metric name, namespace, and dimensions,
    #               inspect the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html">Metric</a> object
    #               that is returned by a call to <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html">ListMetrics</a>.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the metric.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>The dimensions of the metric.</p>
    #            <p>Conditional: If you published your metric with dimensions, you must specify the same
    #               dimensions in your scaling policy.</p>
    #   @return [Array<Types::MetricDimension>]
    # @!attribute statistic
    #   <p>The statistic of the metric.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit of the metric. For a complete list of the units that CloudWatch supports, see the
    #                   <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">MetricDatum</a>
    #               data type in the <i>Amazon CloudWatch API Reference</i>.</p>
    #   @return [String]
    # @!attribute period
    #   <p>
    #               The period of the metric in seconds. The default value is 60. Accepted values are 10, 30, and 60. For high resolution metric, set the value to less than 60. For more information, see
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/policy-creating-high-resolution-metrics.html">Create a target tracking policy using high-resolution metrics for faster response</a>.
    #           </p>
    #   @return [Integer]
    # @!attribute metrics
    #   <p>The metrics to include in the target tracking scaling policy, as a metric data query.
    #               This can include both raw metric and metric math expressions.</p>
    #   @return [Array<Types::TargetTrackingMetricDataQuery>]
    class CustomizedMetricSpecification < Struct.new(
      nil,
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit,
      :period,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute force_delete
    #   <p>Specifies that the group is to be deleted along with all instances associated with the
    #               group, without waiting for all instances to be terminated. This action also deletes any
    #               outstanding lifecycle actions associated with the group.</p>
    #   @return [Boolean]
    class DeleteAutoScalingGroupInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :force_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration.</p>
    #   @return [String]
    class DeleteLaunchConfigurationInput < Struct.new(
      nil,
      :launch_configuration_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    class DeleteLifecycleHookInput < Struct.new(
      nil,
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLifecycleHookOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic.</p>
    #   @return [String]
    class DeleteNotificationConfigurationInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :topic_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name or Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    class DeletePolicyInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :policy_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute scheduled_action_name
    #   <p>The name of the action to delete.</p>
    #   @return [String]
    class DeleteScheduledActionInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :scheduled_action_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>One or more tags.</p>
    #   @return [Array<Types::Tag>]
    class DeleteTagsInput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute force_delete
    #   <p>Specifies that the warm pool is to be deleted along with all of its associated
    #               instances, without waiting for all instances to be terminated. This parameter also
    #               deletes any outstanding lifecycle actions associated with the warm pool
    #               instances.</p>
    #   @return [Boolean]
    class DeleteWarmPoolInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :force_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWarmPoolOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_number_of_auto_scaling_groups
    #   <p>The maximum number of groups allowed for your account. The default is 200 groups per
    #               Region.</p>
    #   @return [Integer]
    # @!attribute max_number_of_launch_configurations
    #   <p>The maximum number of launch configurations allowed for your account. The default is
    #               200 launch configurations per Region.</p>
    #   @return [Integer]
    # @!attribute number_of_auto_scaling_groups
    #   <p>The current number of groups for your account.</p>
    #   @return [Integer]
    # @!attribute number_of_launch_configurations
    #   <p>The current number of launch configurations for your account.</p>
    #   @return [Integer]
    class DescribeAccountLimitsOutput < Struct.new(
      nil,
      :max_number_of_auto_scaling_groups,
      :max_number_of_launch_configurations,
      :number_of_auto_scaling_groups,
      :number_of_launch_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute adjustment_types
    #   <p>The policy adjustment types.</p>
    #   @return [Array<Types::AdjustmentType>]
    class DescribeAdjustmentTypesOutput < Struct.new(
      nil,
      :adjustment_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_names
    #   <p>The names of the Auto Scaling groups. By default, you can only specify up to 50 names. You can
    #               optionally increase this limit using the <code>MaxRecords</code> property.</p>
    #            <p>If you omit this property, all Auto Scaling groups are described.</p>
    #   @return [Array<String>]
    # @!attribute include_instances
    #   <p>
    #               Specifies whether to include information about Amazon EC2 instances in the response. When set to <code>true</code> (default), the response includes instance details.
    #           </p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>One or more filters to limit the results based on specific tags.
    #               </p>
    #   @return [Array<Types::Filter>]
    class DescribeAutoScalingGroupsInput < Struct.new(
      nil,
      :auto_scaling_group_names,
      :include_instances,
      :next_token,
      :max_records,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_groups
    #   <p>The groups.</p>
    #   @return [Array<Types::AutoScalingGroup>]
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeAutoScalingGroupsOutput < Struct.new(
      nil,
      :auto_scaling_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_ids
    #   <p>The IDs of the instances. If you omit this property, all Auto Scaling instances are described.
    #               If you specify an ID that does not exist, it is ignored with no error.</p>
    #            <p>Array Members: Maximum number of 50 items.</p>
    #   @return [Array<String>]
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>50</code>.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    class DescribeAutoScalingInstancesInput < Struct.new(
      nil,
      :instance_ids,
      :max_records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_instances
    #   <p>The instances.</p>
    #   @return [Array<Types::AutoScalingInstanceDetails>]
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeAutoScalingInstancesOutput < Struct.new(
      nil,
      :auto_scaling_instances,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_notification_types
    #   <p>The notification types.</p>
    #   @return [Array<String>]
    class DescribeAutoScalingNotificationTypesOutput < Struct.new(
      nil,
      :auto_scaling_notification_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute instance_refresh_ids
    #   <p>One or more instance refresh IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #   @return [Integer]
    class DescribeInstanceRefreshesInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :instance_refresh_ids,
      :next_token,
      :max_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_refreshes
    #   <p>The instance refreshes for the specified group, sorted by creation timestamp in
    #               descending order.</p>
    #   @return [Array<Types::InstanceRefresh>]
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeInstanceRefreshesOutput < Struct.new(
      nil,
      :instance_refreshes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_names
    #   <p>The launch configuration names. If you omit this property, all launch configurations
    #               are described.</p>
    #            <p>Array Members: Maximum number of 50 items.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #   @return [Integer]
    class DescribeLaunchConfigurationsInput < Struct.new(
      nil,
      :launch_configuration_names,
      :next_token,
      :max_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch_configurations
    #   <p>The launch configurations.</p>
    #   @return [Array<Types::LaunchConfiguration>]
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeLaunchConfigurationsOutput < Struct.new(
      nil,
      :launch_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_hook_types
    #   <p>The lifecycle hook types.</p>
    #   @return [Array<String>]
    class DescribeLifecycleHookTypesOutput < Struct.new(
      nil,
      :lifecycle_hook_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute lifecycle_hook_names
    #   <p>The names of one or more lifecycle hooks. If you omit this property, all lifecycle
    #               hooks are described.</p>
    #   @return [Array<String>]
    class DescribeLifecycleHooksInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :lifecycle_hook_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_hooks
    #   <p>The lifecycle hooks for the specified group.</p>
    #   @return [Array<Types::LifecycleHook>]
    class DescribeLifecycleHooksOutput < Struct.new(
      nil,
      :lifecycle_hooks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    #   @return [Integer]
    class DescribeLoadBalancerTargetGroupsRequest < Struct.new(
      nil,
      :auto_scaling_group_name,
      :next_token,
      :max_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_target_groups
    #   <p>Information about the target groups.</p>
    #   @return [Array<Types::LoadBalancerTargetGroupState>]
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeLoadBalancerTargetGroupsResponse < Struct.new(
      nil,
      :load_balancer_target_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    #   @return [Integer]
    class DescribeLoadBalancersRequest < Struct.new(
      nil,
      :auto_scaling_group_name,
      :next_token,
      :max_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancers
    #   <p>The load balancers.</p>
    #   @return [Array<Types::LoadBalancerState>]
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeLoadBalancersResponse < Struct.new(
      nil,
      :load_balancers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metrics
    #   <p>The metrics.</p>
    #   @return [Array<Types::MetricCollectionType>]
    # @!attribute granularities
    #   <p>The granularities for the metrics.</p>
    #   @return [Array<Types::MetricGranularityType>]
    class DescribeMetricCollectionTypesOutput < Struct.new(
      nil,
      :metrics,
      :granularities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_names
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #   @return [Integer]
    class DescribeNotificationConfigurationsInput < Struct.new(
      nil,
      :auto_scaling_group_names,
      :next_token,
      :max_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_configurations
    #   <p>The notification configurations.</p>
    #   @return [Array<Types::NotificationConfiguration>]
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeNotificationConfigurationsOutput < Struct.new(
      nil,
      :notification_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute policy_names
    #   <p>The names of one or more policies. If you omit this property, all policies are
    #               described. If a group name is provided, the results are limited to that group. If you
    #               specify an unknown policy name, it is ignored with no error.</p>
    #            <p>Array Members: Maximum number of 50 items.</p>
    #   @return [Array<String>]
    # @!attribute policy_types
    #   <p>One or more policy types. The valid values are <code>SimpleScaling</code>,
    #                   <code>StepScaling</code>, <code>TargetTrackingScaling</code>, and
    #                   <code>PredictiveScaling</code>.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of items to be returned with each call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #   @return [Integer]
    class DescribePoliciesInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :policy_names,
      :policy_types,
      :next_token,
      :max_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scaling_policies
    #   <p>The scaling policies.</p>
    #   @return [Array<Types::ScalingPolicy>]
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribePoliciesOutput < Struct.new(
      nil,
      :scaling_policies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activity_ids
    #   <p>
    #               The activity IDs of the desired scaling activities. If unknown activity IDs are requested, they are ignored
    #               with no error. Only activities started within the last six weeks can be returned regardless of the activity
    #               IDs specified. If other filters are specified with the request, only results matching all filter criteria
    #               can be returned.
    #           </p>
    #            <p>Array Members: Maximum number of 50 IDs.</p>
    #   @return [Array<String>]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #            <important>
    #               <p>
    #                   Omitting this property performs an account-wide operation, which can result in slower or timed-out requests.
    #               </p>
    #            </important>
    #   @return [String]
    # @!attribute include_deleted_groups
    #   <p>Indicates whether to include scaling activity from deleted Auto Scaling groups.</p>
    #   @return [Boolean]
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    # @!attribute filters
    #   <p>
    #               One or more filters to limit the results based on specific criteria. The following filters are supported:
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>StartTimeLowerBound</code> - The earliest scaling activities to return based on the activity start time.
    #                       Scaling activities with a start time earlier than this value are not included in the results.
    #                       Only activities started within the last six weeks can be returned regardless of the value specified.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StartTimeUpperBound</code> - The latest scaling activities to return based on the activity start time.
    #                       Scaling activities with a start time later than this value are not included in the results.
    #                       Only activities started within the last six weeks can be returned regardless of the value specified.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - The <code>StatusCode</code> value of the scaling activity. This filter can only be
    #                       used in combination with the <code>AutoScalingGroupName</code> parameter. For valid <code>StatusCode</code>
    #                       values, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_Activity.html">Activity</a>
    #                       in the <i>Amazon EC2 Auto Scaling API Reference</i>.
    #                   </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>StartTimeLowerBound</code> and <code>StartTimeUpperBound</code> accept ISO 8601 formatted timestamps.
    #               Timestamps without a timezone offset are assumed to be UTC.
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>2000-01-18T08:15:00Z</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2000-01-18T16:15:00+08:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    class DescribeScalingActivitiesInput < Struct.new(
      nil,
      :activity_ids,
      :auto_scaling_group_name,
      :include_deleted_groups,
      :max_records,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activities
    #   <p>The scaling activities. Activities are sorted by start time. Activities still in
    #               progress are described first.</p>
    #   @return [Array<Types::Activity>]
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeScalingActivitiesOutput < Struct.new(
      nil,
      :activities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute processes
    #   <p>The names of the process types.</p>
    #   @return [Array<Types::ProcessType>]
    class DescribeScalingProcessTypesOutput < Struct.new(
      nil,
      :processes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute scheduled_action_names
    #   <p>The names of one or more scheduled actions. If you omit this property, all scheduled
    #               actions are described. If you specify an unknown scheduled action, it is ignored with no
    #               error.</p>
    #            <p>Array Members: Maximum number of 50 actions.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The earliest scheduled start time to return. If scheduled action names are provided,
    #               this property is ignored.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The latest scheduled start time to return. If scheduled action names are provided,
    #               this property is ignored.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #   @return [Integer]
    class DescribeScheduledActionsInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :scheduled_action_names,
      :start_time,
      :end_time,
      :next_token,
      :max_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_update_group_actions
    #   <p>The scheduled actions.</p>
    #   @return [Array<Types::ScheduledUpdateGroupAction>]
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeScheduledActionsOutput < Struct.new(
      nil,
      :scheduled_update_group_actions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>One or more filters to scope the tags to return. The maximum number of filters per
    #               filter type (for example, <code>auto-scaling-group</code>) is 1000.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #   @return [Integer]
    class DescribeTagsInput < Struct.new(
      nil,
      :filters,
      :next_token,
      :max_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>One or more tags.</p>
    #   @return [Array<Types::TagDescription>]
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeTagsOutput < Struct.new(
      nil,
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute termination_policy_types
    #   <p>The termination policies supported by Amazon EC2 Auto Scaling: <code>OldestInstance</code>,
    #                   <code>OldestLaunchConfiguration</code>, <code>NewestInstance</code>,
    #                   <code>ClosestToNextInstanceHour</code>, <code>Default</code>,
    #                   <code>OldestLaunchTemplate</code>, and <code>AllocationStrategy</code>.</p>
    #   @return [Array<String>]
    class DescribeTerminationPolicyTypesOutput < Struct.new(
      nil,
      :termination_policy_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute traffic_source_type
    #   <p>The traffic source type that you want to describe.</p>
    #            <p>The following lists the valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>elb</code> if the traffic source is a Classic Load Balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elbv2</code> if the traffic source is a Application Load Balancer, Gateway Load Balancer, or Network Load Balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vpc-lattice</code> if the traffic source is VPC Lattice.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The maximum value is
    #                   <code>50</code>.</p>
    #   @return [Integer]
    class DescribeTrafficSourcesRequest < Struct.new(
      nil,
      :auto_scaling_group_name,
      :traffic_source_type,
      :next_token,
      :max_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_sources
    #   <p>Information about the traffic sources.</p>
    #   @return [Array<Types::TrafficSourceState>]
    # @!attribute next_token
    #   <p>This string indicates that the response contains more items than can be returned in a
    #               single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeTrafficSourcesResponse < Struct.new(
      nil,
      :traffic_sources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of instances to return with this call. The maximum value is
    #                   <code>50</code>.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of instances to return. (You received this token from a
    #               previous call.)</p>
    #   @return [String]
    class DescribeWarmPoolInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :max_records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute warm_pool_configuration
    #   <p>The warm pool configuration details. </p>
    #   @return [Types::WarmPoolConfiguration]
    # @!attribute instances
    #   <p>The instances that are currently in the warm pool.</p>
    #   @return [Array<Types::Instance>]
    # @!attribute next_token
    #   <p>This string indicates that the response contains more items than can be returned in a
    #               single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #   @return [String]
    class DescribeWarmPoolOutput < Struct.new(
      nil,
      :warm_pool_configuration,
      :instances,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the desired configuration for an instance refresh. </p>
    #          <p>If you specify a desired configuration, you must specify either a
    #                 <code>LaunchTemplate</code> or a <code>MixedInstancesPolicy</code>. </p>
    # @!attribute launch_template
    #   <p>Describes the launch template and the version of the launch template that Amazon EC2 Auto Scaling
    #               uses to launch Amazon EC2 instances. For more information about launch templates, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-templates.html">Launch
    #                   templates</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute mixed_instances_policy
    #   <p>Use this structure to launch multiple instance types and configure how capacity is
    #               distributed across On-Demand, Spot, and supported Capacity Reservation types within a
    #               single Auto Scaling group.</p>
    #            <p>A mixed instances policy contains information that Amazon EC2 Auto Scaling can use to launch
    #               instances, prioritize capacity types, and help optimize your costs. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                   groups with multiple instance types and purchase options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Types::MixedInstancesPolicy]
    class DesiredConfiguration < Struct.new(
      nil,
      :launch_template,
      :mixed_instances_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #   @return [Array<String>]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute should_decrement_desired_capacity
    #   <p>Indicates whether the Auto Scaling group decrements the desired capacity value by the number
    #               of instances detached.</p>
    #   @return [Boolean]
    class DetachInstancesInput < Struct.new(
      nil,
      :instance_ids,
      :auto_scaling_group_name,
      :should_decrement_desired_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activities
    #   <p>The activities related to detaching the instances from the Auto Scaling group.</p>
    #   @return [Array<Types::Activity>]
    class DetachInstancesOutput < Struct.new(
      nil,
      :activities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target
    #               groups.</p>
    #   @return [Array<String>]
    class DetachLoadBalancerTargetGroupsInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :target_group_ar_ns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DetachLoadBalancerTargetGroupsOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute load_balancer_names
    #   <p>The names of the load balancers. You can specify up to 10 load balancers.</p>
    #   @return [Array<String>]
    class DetachLoadBalancersInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :load_balancer_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DetachLoadBalancersOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute traffic_sources
    #   <p>The unique identifiers of one or more traffic sources. You can specify up to 10
    #               traffic sources.</p>
    #   @return [Array<Types::TrafficSourceIdentifier>]
    class DetachTrafficSourcesInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :traffic_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DetachTrafficSourcesOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute metrics
    #   <p>Identifies the metrics to disable.</p>
    #            <p>You can specify one or more of the following metrics:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GroupMinSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupMaxSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolWarmedCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you omit this property, all metrics are disabled.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-metrics.html">Amazon CloudWatch metrics for
    #                   Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Array<String>]
    class DisableMetricsCollectionInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to specify the capacity types that Amazon EC2 Auto Scaling prioritizes when it
    #             launches instances.</p>
    # @!attribute target_capacity_types
    #   <p>The capacity types to prioritize, in order. Amazon EC2 Auto Scaling attempts to launch instances in
    #               the priority order of the capacity types, and within each capacity type, in the order of
    #               instance types listed in your launch template <code>Overrides</code>.</p>
    #            <p>The following lists the valid values:</p>
    #            <dl>
    #               <dt>on-demand-capacity-reservation</dt>
    #               <dd>
    #                  <p>On-Demand Capacity Reservations.</p>
    #               </dd>
    #               <dt>capacity-block</dt>
    #               <dd>
    #                  <p>Capacity Blocks.</p>
    #               </dd>
    #               <dt>interruptible-capacity-reservation</dt>
    #               <dd>
    #                  <p>Interruptible Capacity Reservations.</p>
    #               </dd>
    #               <dt>on-demand</dt>
    #               <dd>
    #                  <p>On-Demand capacity. Include this value to allow the group to fall back to
    #                           On-Demand capacity when the preceding capacity types are unavailable.</p>
    #               </dd>
    #            </dl>
    #   @return [Array<String>]
    class DistributionSegment < Struct.new(
      nil,
      :target_capacity_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes information used to set up an Amazon EBS volume specified in a block device
    #             mapping.</p>
    # @!attribute snapshot_id
    #   <p>The snapshot ID of the volume to use.</p>
    #            <p>You must specify either a <code>VolumeSize</code> or a <code>SnapshotId</code>.</p>
    #   @return [String]
    # @!attribute volume_size
    #   <p>The volume size, in GiBs. The following are the supported volumes sizes for each
    #               volume type: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>gp2</code> and <code>gp3</code>: 1-16,384</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>io1</code>: 4-16,384</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>st1</code> and <code>sc1</code>: 125-16,384</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>standard</code>: 1-1,024</p>
    #               </li>
    #            </ul>
    #            <p>You must specify either a <code>SnapshotId</code> or a <code>VolumeSize</code>. If you
    #               specify both <code>SnapshotId</code> and <code>VolumeSize</code>, the volume size must
    #               be equal or greater than the size of the snapshot.</p>
    #   @return [Integer]
    # @!attribute volume_type
    #   <p>The volume type. For more information, see <a href="https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volume-types.html">Amazon EBS volume types</a> in the
    #                   <i>Amazon EBS User Guide</i>.</p>
    #            <p>Valid values: <code>standard</code> | <code>io1</code> | <code>gp2</code> |
    #                   <code>st1</code> | <code>sc1</code> | <code>gp3</code>
    #            </p>
    #   @return [String]
    # @!attribute delete_on_termination
    #   <p>Indicates whether the volume is deleted on instance termination. For Amazon EC2 Auto Scaling, the
    #               default value is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute iops
    #   <p>The number of input/output (I/O) operations per second (IOPS) to provision for the
    #               volume. For <code>gp3</code> and <code>io1</code> volumes, this represents the number of
    #               IOPS that are provisioned for the volume. For <code>gp2</code> volumes, this represents
    #               the baseline performance of the volume and the rate at which the volume accumulates I/O
    #               credits for bursting. </p>
    #            <p>The following are the supported values for each volume type: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>gp3</code>: 3,000-16,000 IOPS</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>io1</code>: 100-64,000 IOPS</p>
    #               </li>
    #            </ul>
    #            <p>For <code>io1</code> volumes, we guarantee 64,000 IOPS only for <a href="https://docs.aws.amazon.com/ec2/latest/instancetypes/ec2-nitro-instances.html">Instances built on the Amazon Web Services Nitro System</a>. Other instance families
    #               guarantee performance up to 32,000 IOPS. </p>
    #            <p>
    #               <code>Iops</code> is supported when the volume type is <code>gp3</code> or
    #                   <code>io1</code> and required only when the volume type is <code>io1</code>. (Not
    #               used with <code>standard</code>, <code>gp2</code>, <code>st1</code>, or <code>sc1</code>
    #               volumes.) </p>
    #   @return [Integer]
    # @!attribute encrypted
    #   <p>Specifies whether the volume should be encrypted. Encrypted EBS volumes can only be
    #               attached to instances that support Amazon EBS encryption. For more information, see <a href="https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption-requirements.html">Requirements for Amazon EBS encryption</a> in the <i>Amazon EBS User Guide</i>. If your AMI uses encrypted volumes, you
    #               can also only launch it on supported instance types.</p>
    #            <note>
    #               <p>If you are creating a volume from a snapshot, you cannot create an unencrypted
    #                   volume from an encrypted snapshot. Also, you cannot specify a KMS key ID when using
    #                   a launch configuration.</p>
    #               <p>If you enable encryption by default, the EBS volumes that you create are always
    #                   encrypted, either using the Amazon Web Services managed KMS key or a customer-managed KMS key,
    #                   regardless of whether the snapshot was encrypted. </p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-data-protection.html#encryption">Use Amazon Web Services KMS keys to encrypt Amazon EBS volumes</a> in the
    #                       <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute throughput
    #   <p>The throughput (MiBps) to provision for a <code>gp3</code> volume.</p>
    #   @return [Integer]
    class Ebs < Struct.new(
      nil,
      :snapshot_id,
      :volume_size,
      :volume_type,
      :delete_on_termination,
      :iops,
      :encrypted,
      :throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute metrics
    #   <p>Identifies the metrics to enable.</p>
    #            <p>You can specify one or more of the following metrics:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GroupMinSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupMaxSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolWarmedCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you specify <code>Granularity</code> and don't specify any metrics, all metrics are
    #               enabled.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-metrics.html">Amazon CloudWatch metrics for
    #                   Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute granularity
    #   <p>The frequency at which Amazon EC2 Auto Scaling sends aggregated data to CloudWatch. The only valid value is
    #                   <code>1Minute</code>.</p>
    #   @return [String]
    class EnableMetricsCollectionInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :metrics,
      :granularity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an enabled Auto Scaling group metric.</p>
    # @!attribute metric
    #   <p>One of the following metrics:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GroupMinSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupMaxSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolWarmedCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-metrics.html">Amazon CloudWatch metrics for
    #                   Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute granularity
    #   <p>The granularity of the metric. The only valid value is <code>1Minute</code>.</p>
    #   @return [String]
    class EnabledMetric < Struct.new(
      nil,
      :metric,
      :granularity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #   @return [Array<String>]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute should_decrement_desired_capacity
    #   <p>Indicates whether to decrement the desired capacity of the Auto Scaling group by the number of
    #               instances moved to <code>Standby</code> mode.</p>
    #   @return [Boolean]
    class EnterStandbyInput < Struct.new(
      nil,
      :instance_ids,
      :auto_scaling_group_name,
      :should_decrement_desired_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activities
    #   <p>The activities related to moving instances into <code>Standby</code> mode.</p>
    #   @return [Array<Types::Activity>]
    class EnterStandbyOutput < Struct.new(
      nil,
      :activities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name or ARN of the policy.</p>
    #   @return [String]
    # @!attribute honor_cooldown
    #   <p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before executing
    #               the policy.</p>
    #            <p>Valid only if the policy type is <code>SimpleScaling</code>. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute metric_value
    #   <p>The metric value to compare to <code>BreachThreshold</code>. This enables you to
    #               execute a policy of type <code>StepScaling</code> and determine which step adjustment to
    #               use. For example, if the breach threshold is 50 and you want to use a step adjustment
    #               with a lower bound of 0 and an upper bound of 10, you can set the metric value to
    #               59.</p>
    #            <p>If you specify a metric value that doesn't correspond to a step adjustment for the
    #               policy, the call returns an error.</p>
    #            <p>Required if the policy type is <code>StepScaling</code> and not supported
    #               otherwise.</p>
    #   @return [Float]
    # @!attribute breach_threshold
    #   <p>The breach threshold for the alarm.</p>
    #            <p>Required if the policy type is <code>StepScaling</code> and not supported
    #               otherwise.</p>
    #   @return [Float]
    class ExecutePolicyInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :policy_name,
      :honor_cooldown,
      :metric_value,
      :breach_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #   @return [Array<String>]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    class ExitStandbyInput < Struct.new(
      nil,
      :instance_ids,
      :auto_scaling_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activities
    #   <p>The activities related to moving instances out of <code>Standby</code> mode.</p>
    #   @return [Array<Types::Activity>]
    class ExitStandbyOutput < Struct.new(
      nil,
      :activities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a scheduled action that could not be created, updated, or deleted.</p>
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message accompanying the error code.</p>
    #   @return [String]
    class FailedScheduledUpdateGroupActionRequest < Struct.new(
      nil,
      :scheduled_action_name,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a filter that is used to return a more specific list of results from a
    #             describe operation.</p>
    #          <p>If you specify multiple filters, the filters are automatically logically joined with
    #             an <code>AND</code>, and the request returns only the results that match all of the
    #             specified filters. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html">Tag Auto Scaling groups and
    #                 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #            <p>
    #               The valid values for <code>Name</code> depend on which API operation you're using with the filter.
    #           </p>
    #            <p>
    #               <b>
    #                  <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAutoScalingGroups.html">DescribeAutoScalingGroups</a>
    #               </b>
    #            </p>
    #            <p>Valid values for <code>Name</code> include the following: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>tag-key</code> - Accepts tag keys. The results only include information
    #                       about the Auto Scaling groups associated with these tag keys. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tag-value</code> - Accepts tag values. The results only include
    #                       information about the Auto Scaling groups associated with these tag values. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tag:<key></code> - Accepts the key/value combination of the tag.
    #                       Use the tag key in the filter name and the tag value as the filter value. The
    #                       results only include information about the Auto Scaling groups associated with the
    #                       specified key/value combination. </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>
    #                  <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTags.html">DescribeTags</a>
    #               </b>
    #            </p>
    #            <p>Valid values for <code>Name</code> include the following: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>auto-scaling-group</code> - Accepts the names of Auto Scaling groups. The
    #                       results only include information about the tags associated with these Auto Scaling
    #                       groups. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>key</code> - Accepts tag keys. The results only include information
    #                       about the tags associated with these tag keys. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>value</code> - Accepts tag values. The results only include information
    #                       about the tags associated with these tag values. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>propagate-at-launch</code> - Accepts a Boolean value, which specifies
    #                       whether tags propagate to instances at launch. The results only include
    #                       information about the tags associated with the specified Boolean value. </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>
    #                  <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html">DescribeScalingActivities</a>
    #               </b>
    #            </p>
    #            <p>Valid values for <code>Name</code> include the following: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>StartTimeLowerBound</code> - The earliest scaling activities to return based on the activity start time.
    #                       Scaling activities with a start time earlier than this value are not included in the results.
    #                       Only activities started within the last six weeks can be returned regardless of the value specified.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StartTimeUpperBound</code> - The latest scaling activities to return based on the activity start time.
    #                       Scaling activities with a start time later than this value are not included in the results.
    #                       Only activities started within the last six weeks can be returned regardless of the value specified.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - The <code>StatusCode</code> value of the scaling activity. This filter can only be
    #                       used in combination with the <code>AutoScalingGroupName</code> parameter. For valid <code>StatusCode</code>
    #                       values, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_Activity.html">Activity</a>
    #                       in the <i>Amazon EC2 Auto Scaling API Reference</i>.
    #                   </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>StartTimeLowerBound</code> and <code>StartTimeUpperBound</code> accept ISO 8601 formatted timestamps.
    #               Timestamps without a timezone offset are assumed to be UTC.
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>2000-01-18T08:15:00Z</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2000-01-18T16:15:00+08:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>One or more filter values. Filter values are case-sensitive. </p>
    #            <p>If you specify multiple values for a filter, the values are automatically logically
    #               joined with an <code>OR</code>, and the request returns all results that match any of
    #               the specified values.</p>
    #            <p>
    #               <b>DescribeAutoScalingGroups example:</b> Specify "tag:environment"
    #               for the filter name and "production,development" for the filter values to find Auto Scaling groups with
    #               the tag "environment=production" or "environment=development".
    #           </p>
    #            <p>
    #               <b>DescribeScalingActivities example:</b> Specify "Status" for the
    #               filter name and "Successful,Failed" for the filter values to find scaling activities with a
    #               status of either "Successful" or "Failed".
    #           </p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The inclusive start time of the time range for the forecast data to get. At most, the
    #               date and time can be one year before the current date and time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The exclusive end time of the time range for the forecast data to get. The maximum
    #               time duration between the start and end time is 30 days. </p>
    #            <p>Although this parameter can accept a date and time that is more than two days in the
    #               future, the availability of forecast data has limits. Amazon EC2 Auto Scaling only issues forecasts for
    #               periods of two days in advance.</p>
    #   @return [Time]
    class GetPredictiveScalingForecastInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :policy_name,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_forecast
    #   <p>The load forecast.</p>
    #   @return [Array<Types::LoadForecast>]
    # @!attribute capacity_forecast
    #   <p>The capacity forecast.</p>
    #   @return [Types::CapacityForecast]
    # @!attribute update_time
    #   <p>The time the forecast was made.</p>
    #   @return [Time]
    class GetPredictiveScalingForecastOutput < Struct.new(
      nil,
      :load_forecast,
      :capacity_forecast,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The service is currently processing another request with the same client token. Retry
    #             the request with the same client token—the in-flight operation will complete and return
    #             its result.
    #         </p>
    # @!attribute message
    #   @return [String]
    class IdempotentCallInProgressFault < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Indicates that the parameters in the current request do not match the parameters from a previous request with the same client token within the idempotency window.
    #         </p>
    # @!attribute message
    #   @return [String]
    class IdempotentParameterMismatchError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an EC2 instance.</p>
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type of the EC2 instance.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the instance is running.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #               The Availability Zone ID where the instance was launched.
    #           </p>
    #   @return [String]
    # @!attribute lifecycle_state
    #   <p>A description of the current lifecycle state. The <code>Quarantined</code> state is
    #               not used. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-lifecycle.html">Amazon EC2 Auto Scaling instance
    #                   lifecycle</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #   @return [String]
    # @!attribute health_status
    #   <p>The last reported health status of the instance. <code>Healthy</code> means that the
    #               instance is healthy and should remain in service. <code>Unhealthy</code> means that the
    #               instance is unhealthy and that Amazon EC2 Auto Scaling should terminate and replace it.</p>
    #   @return [String]
    # @!attribute launch_configuration_name
    #   <p>The launch configuration associated with the instance.</p>
    #   @return [String]
    # @!attribute launch_template
    #   <p>The launch template for the instance.</p>
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute image_id
    #   <p>
    #               The ID of the Amazon Machine Image (AMI) used for the instance's current root volume.
    #               This value reflects the most recent AMI applied to the instance, including updates made
    #               through root volume replacement operations.
    #           </p>
    #            <p>
    #               This field appears for:
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>Instances with root volume replacements through Instance Refresh</p>
    #               </li>
    #               <li>
    #                  <p>Instances launched with AMI overrides </p>
    #               </li>
    #            </ul>
    #            <p>This field won't appear for:</p>
    #            <ul>
    #               <li>
    #                  <p>Existing instances launched from Launch Templates without overrides</p>
    #               </li>
    #               <li>
    #                  <p>Existing instances that didn’t have their root volume replaced through Instance Refresh</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute protected_from_scale_in
    #   <p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling
    #               in.</p>
    #   @return [Boolean]
    # @!attribute weighted_capacity
    #   <p>The number of capacity units contributed by the instance based on its instance
    #               type.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 999.</p>
    #   @return [String]
    class Instance < Struct.new(
      nil,
      :instance_id,
      :instance_type,
      :availability_zone,
      :availability_zone_id,
      :lifecycle_state,
      :health_status,
      :launch_configuration_name,
      :launch_template,
      :image_id,
      :protected_from_scale_in,
      :weighted_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Contains details about a collection of instances launched in the Auto Scaling group.
    #         </p>
    # @!attribute instance_type
    #   <p>
    #               The instance type of the launched instances.
    #           </p>
    #   @return [String]
    # @!attribute market_type
    #   <p>
    #               The market type for the instances (On-Demand or Spot).
    #           </p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>
    #               The ID of the subnet where the instances were launched.
    #           </p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>
    #               The Availability Zone where the instances were launched.
    #           </p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #               The Availability Zone ID where the instances in this collection were launched.
    #           </p>
    #   @return [String]
    # @!attribute instance_ids
    #   <p>
    #               A list of instance IDs for the successfully launched instances.
    #           </p>
    #   @return [Array<String>]
    class InstanceCollection < Struct.new(
      nil,
      :instance_type,
      :market_type,
      :subnet_id,
      :availability_zone,
      :availability_zone_id,
      :instance_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The instance lifecycle policy for the Auto Scaling group. This policy controls instance behavior when an instance
    #             transitions through its lifecycle states. Configure retention triggers to specify when instances should
    #             move to a <code>Retained</code> state instead of automatic termination.
    #         </p>
    #          <p>For more information, see
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/instance-lifecycle-policy.html">
    #                 Control instance retention with instance lifecycle policies</a>
    #             in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #         </p>
    # @!attribute retention_triggers
    #   <p>
    #               Specifies the conditions that trigger instance retention behavior. These triggers determine when instances
    #               should move to a <code>Retained</code> state instead of automatic termination. This allows you to maintain
    #               control over instance management when lifecycles transition and operations fail.
    #           </p>
    #   @return [Types::RetentionTriggers]
    class InstanceLifecyclePolicy < Struct.new(
      nil,
      :retention_triggers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an instance maintenance policy.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-maintenance-policy.html">Set instance maintenance policy</a> in the
    #             <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute min_healthy_percentage
    #   <p>Specifies the lower threshold as a percentage of the desired capacity of the Auto Scaling
    #               group. It represents the minimum percentage of the group to keep in service, healthy,
    #               and ready to use to support your workload when replacing instances. Value range is 0 to
    #               100. To clear a previously set value, specify a value of <code>-1</code>.</p>
    #   @return [Integer]
    # @!attribute max_healthy_percentage
    #   <p>Specifies the upper threshold as a percentage of the desired capacity of the Auto Scaling
    #               group. It represents the maximum percentage of the group that can be in service and
    #               healthy, or pending, to support your workload when replacing instances. Value range is
    #               100 to 200. To clear a previously set value, specify a value of <code>-1</code>.</p>
    #            <p>Both <code>MinHealthyPercentage</code> and <code>MaxHealthyPercentage</code> must be
    #               specified, and the difference between them cannot be greater than 100. A large range
    #               increases the number of instances that can be replaced at the same time.</p>
    #   @return [Integer]
    class InstanceMaintenancePolicy < Struct.new(
      nil,
      :min_healthy_percentage,
      :max_healthy_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata options for the instances. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds">Configure the instance metadata options</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute http_tokens
    #   <p>The state of token usage for your instance metadata requests. If the parameter is not
    #               specified in the request, the default state is <code>optional</code>.</p>
    #            <p>If the state is <code>optional</code>, you can choose to retrieve instance metadata
    #               with or without a signed token header on your request. If you retrieve the IAM role
    #               credentials without a token, the version 1.0 role credentials are returned. If you
    #               retrieve the IAM role credentials using a valid signed token, the version 2.0 role
    #               credentials are returned.</p>
    #            <p>If the state is <code>required</code>, you must send a signed token header with any
    #               instance metadata retrieval requests. In this state, retrieving the IAM role credentials
    #               always returns the version 2.0 credentials; the version 1.0 credentials are not
    #               available.</p>
    #   @return [String]
    # @!attribute http_put_response_hop_limit
    #   <p>The desired HTTP PUT response hop limit for instance metadata requests. The larger the
    #               number, the further instance metadata requests can travel.</p>
    #            <p>Default: 1</p>
    #   @return [Integer]
    # @!attribute http_endpoint
    #   <p>This parameter enables or disables the HTTP metadata endpoint on your instances. If
    #               the parameter is not specified, the default state is <code>enabled</code>.</p>
    #            <note>
    #               <p>If you specify a value of <code>disabled</code>, you will not be able to access
    #                   your instance metadata. </p>
    #            </note>
    #   @return [String]
    class InstanceMetadataOptions < Struct.new(
      nil,
      :http_tokens,
      :http_put_response_hop_limit,
      :http_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether detailed monitoring is enabled for the Auto Scaling instances.</p>
    # @!attribute enabled
    #   <p>If <code>true</code>, detailed monitoring is enabled. Otherwise, basic monitoring is
    #               enabled.</p>
    #   @return [Boolean]
    class InstanceMonitoring < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an instance refresh for an Auto Scaling group. </p>
    # @!attribute instance_refresh_id
    #   <p>The instance refresh ID.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status for the instance refresh operation:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Pending</code> - The request was created, but the instance refresh has
    #                       not started.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InProgress</code> - An instance refresh is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Successful</code> - An instance refresh completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - An instance refresh failed to complete. You can
    #                       troubleshoot using the status reason and the scaling activities. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Cancelling</code> - An ongoing instance refresh is being
    #                       cancelled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Cancelled</code> - The instance refresh is cancelled. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RollbackInProgress</code> - An instance refresh is being rolled
    #                       back.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RollbackFailed</code> - The rollback failed to complete. You can
    #                       troubleshoot using the status reason and the scaling activities.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RollbackSuccessful</code> - The rollback completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Baking</code> - Waiting the specified bake time after an instance refresh has finished updating instances.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The explanation for the specific status assigned to this operation.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time at which the instance refresh began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time at which the instance refresh ended.</p>
    #   @return [Time]
    # @!attribute percentage_complete
    #   <p>The percentage of the instance refresh that is complete. For each instance
    #               replacement, Amazon EC2 Auto Scaling tracks the instance's health status and warm-up time. When the
    #               instance's health status changes to healthy and the specified warm-up time passes, the
    #               instance is considered updated and is added to the percentage complete.</p>
    #            <note>
    #               <p>
    #                  <code>PercentageComplete</code> does not include instances that are replaced
    #                   during a rollback. This value gradually goes back down to zero during a
    #                   rollback.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute instances_to_update
    #   <p>The number of instances remaining to update before the instance refresh is
    #               complete.</p>
    #            <note>
    #               <p>If you roll back the instance refresh, <code>InstancesToUpdate</code> shows you
    #                   the number of instances that were not yet updated by the instance refresh.
    #                   Therefore, these instances don't need to be replaced as part of the rollback.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute progress_details
    #   <p>Additional progress details for an Auto Scaling group that has a warm pool.</p>
    #   @return [Types::InstanceRefreshProgressDetails]
    # @!attribute preferences
    #   <p>The preferences for an instance refresh.</p>
    #   @return [Types::RefreshPreferences]
    # @!attribute desired_configuration
    #   <p>Describes the desired configuration for the instance refresh.</p>
    #   @return [Types::DesiredConfiguration]
    # @!attribute rollback_details
    #   <p>The rollback details.</p>
    #   @return [Types::RollbackDetails]
    # @!attribute strategy
    #   <p>
    #               The strategy to use for the instance refresh. This determines how instances in the Auto Scaling group are
    #               updated. Default is Rolling.
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Rolling</code> – Terminates instances and launches replacements in batches</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReplaceRootVolume</code> – Updates instances by replacing only the root volume without terminating the instance</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class InstanceRefresh < Struct.new(
      nil,
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
      :rollback_details,
      :strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because an active instance refresh already exists for the specified
    #             Auto Scaling group.</p>
    # @!attribute message
    #   @return [String]
    class InstanceRefreshInProgressFault < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Reports progress on replacing instances that are in the Auto Scaling group.</p>
    # @!attribute percentage_complete
    #   <p>The percentage of instances in the Auto Scaling group that have been replaced. For each
    #               instance replacement, Amazon EC2 Auto Scaling tracks the instance's health status and warm-up time.
    #               When the instance's health status changes to healthy and the specified warm-up time
    #               passes, the instance is considered updated and is added to the percentage
    #               complete.</p>
    #   @return [Integer]
    # @!attribute instances_to_update
    #   <p>The number of instances remaining to update.</p>
    #   @return [Integer]
    class InstanceRefreshLivePoolProgress < Struct.new(
      nil,
      :percentage_complete,
      :instances_to_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Reports progress on replacing instances in an Auto Scaling group that has a warm pool. This
    #             includes separate details for instances in the warm pool and instances in the Auto Scaling group
    #             (the live pool).</p>
    # @!attribute live_pool_progress
    #   <p>Reports progress on replacing instances that are in the Auto Scaling group.</p>
    #   @return [Types::InstanceRefreshLivePoolProgress]
    # @!attribute warm_pool_progress
    #   <p>Reports progress on replacing instances that are in the warm pool.</p>
    #   @return [Types::InstanceRefreshWarmPoolProgress]
    class InstanceRefreshProgressDetails < Struct.new(
      nil,
      :live_pool_progress,
      :warm_pool_progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Reports progress on replacing instances that are in the warm pool.</p>
    # @!attribute percentage_complete
    #   <p>The percentage of instances in the warm pool that have been replaced. For each
    #               instance replacement, Amazon EC2 Auto Scaling tracks the instance's health status and warm-up time.
    #               When the instance's health status changes to healthy and the specified warm-up time
    #               passes, the instance is considered updated and is added to the percentage
    #               complete.</p>
    #   @return [Integer]
    # @!attribute instances_to_update
    #   <p>The number of instances remaining to update.</p>
    #   @return [Integer]
    class InstanceRefreshWarmPoolProgress < Struct.new(
      nil,
      :percentage_complete,
      :instances_to_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attributes for the instance types for a mixed instances policy. Amazon EC2 Auto Scaling uses your
    #             specified requirements to identify instance types. Then, it uses your On-Demand and Spot
    #             allocation strategies to launch instances from these instance types.</p>
    #          <p>When you specify multiple attributes, you get instance types that satisfy all of the
    #             specified attributes. If you specify multiple values for an attribute, you get instance
    #             types that satisfy any of the specified values.</p>
    #          <p>To limit the list of instance types from which Amazon EC2 Auto Scaling can identify matching instance
    #             types, you can use one of the following parameters, but not both in the same
    #             request:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AllowedInstanceTypes</code> - The instance types to include in the list.
    #                     All other instance types are ignored, even if they match your specified
    #                     attributes.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ExcludedInstanceTypes</code> - The instance types to exclude from the
    #                     list, even if they match your specified attributes.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>You must specify <code>VCpuCount</code> and <code>MemoryMiB</code>. All other
    #                 attributes are optional. Any unspecified optional attribute is set to its
    #                 default.</p>
    #          </note>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-mixed-instances-group-attribute-based-instance-type-selection.html">Create a mixed instances group using attribute-based instance type
    #                 selection</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. For help determining
    #             which instance types match your attributes before you apply them to your Auto Scaling group, see
    #                 <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html#ec2fleet-get-instance-types-from-instance-requirements">Preview instance types with specified attributes</a> in the
    #             <i>Amazon EC2 User Guide</i>.</p>
    # @!attribute v_cpu_count
    #   <p>The minimum and maximum number of vCPUs for an instance type.</p>
    #   @return [Types::VCpuCountRequest]
    # @!attribute memory_mi_b
    #   <p>The minimum and maximum instance memory size for an instance type, in MiB.</p>
    #   @return [Types::MemoryMiBRequest]
    # @!attribute cpu_manufacturers
    #   <p>Lists which specific CPU manufacturers to include.</p>
    #            <ul>
    #               <li>
    #                  <p>For instance types with Intel CPUs, specify <code>intel</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with AMD CPUs, specify <code>amd</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with Amazon Web Services CPUs, specify
    #                       <code>amazon-web-services</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with Apple CPUs, specify
    #                       <code>apple</code>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Don't confuse the CPU hardware manufacturer with the CPU hardware architecture.
    #                   Instances will be launched with a compatible CPU architecture based on the Amazon
    #                   Machine Image (AMI) that you specify in your launch template. </p>
    #            </note>
    #            <p>Default: Any manufacturer</p>
    #   @return [Array<String>]
    # @!attribute memory_gi_b_per_v_cpu
    #   <p>The minimum and maximum amount of memory per vCPU for an instance type, in GiB.</p>
    #            <p>Default: No minimum or maximum limits</p>
    #   @return [Types::MemoryGiBPerVCpuRequest]
    # @!attribute excluded_instance_types
    #   <p>The instance types to exclude. You can use strings with one or more wild cards,
    #               represented by an asterisk (<code>*</code>), to exclude an instance family, type, size,
    #               or generation. The following are examples: <code>m5.8xlarge</code>, <code>c5*.*</code>,
    #                   <code>m5a.*</code>, <code>r*</code>, <code>*3*</code>. </p>
    #            <p>For example, if you specify <code>c5*</code>, you are excluding the entire C5 instance
    #               family, which includes all C5a and C5n instance types. If you specify
    #               <code>m5a.*</code>, Amazon EC2 Auto Scaling will exclude all the M5a instance types, but not the M5n
    #               instance types.</p>
    #            <note>
    #               <p>If you specify <code>ExcludedInstanceTypes</code>, you can't specify
    #                       <code>AllowedInstanceTypes</code>.</p>
    #            </note>
    #            <p>Default: No excluded instance types</p>
    #   @return [Array<String>]
    # @!attribute instance_generations
    #   <p>Indicates whether current or previous generation instance types are included.</p>
    #            <ul>
    #               <li>
    #                  <p>For current generation instance types, specify <code>current</code>. The
    #                       current generation includes EC2 instance types currently recommended for use.
    #                       This typically includes the latest two to three generations in each instance
    #                       family. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance types</a> in
    #                       the <i>Amazon EC2 User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>For previous generation instance types, specify <code>previous</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Default: Any current or previous generation</p>
    #   @return [Array<String>]
    # @!attribute spot_max_price_percentage_over_lowest_price
    #   <p>[Price protection] The price protection threshold for Spot Instances, as a percentage
    #               higher than an identified Spot price. The identified Spot price is the price of the
    #               lowest priced current generation C, M, or R instance type with your specified
    #               attributes. If no current generation C, M, or R instance type matches your attributes,
    #               then the identified price is from either the lowest priced current generation instance
    #               types or, failing that, the lowest priced previous generation instance types that match
    #               your attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will
    #               exclude instance types whose price exceeds your specified threshold.</p>
    #            <p>The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. </p>
    #            <p>If you set <code>DesiredCapacityType</code> to <code>vcpu</code> or
    #                   <code>memory-mib</code>, the price protection threshold is based on the per-vCPU or
    #               per-memory price instead of the per instance price. </p>
    #            <note>
    #               <p>Only one of <code>SpotMaxPricePercentageOverLowestPrice</code> or
    #                       <code>MaxSpotPriceAsPercentageOfOptimalOnDemandPrice</code> can be specified. If
    #                   you don't specify either, Amazon EC2 Auto Scaling will automatically apply optimal price protection
    #                   to consistently select from a wide range of instance types. To indicate no price
    #                   protection threshold for Spot Instances, meaning you want to consider all instance
    #                   types that match your attributes, include one of these parameters and specify a high
    #                   value, such as <code>999999</code>. </p>
    #            </note>
    #   @return [Integer]
    # @!attribute max_spot_price_as_percentage_of_optimal_on_demand_price
    #   <p>[Price protection] The price protection threshold for Spot Instances, as a percentage
    #               of an identified On-Demand price. The identified On-Demand price is the price of the
    #               lowest priced current generation C, M, or R instance type with your specified
    #               attributes. If no current generation C, M, or R instance type matches your attributes,
    #               then the identified price is from either the lowest priced current generation instance
    #               types or, failing that, the lowest priced previous generation instance types that match
    #               your attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will
    #               exclude instance types whose price exceeds your specified threshold.</p>
    #            <p>The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage.</p>
    #            <p>If you set <code>DesiredCapacityType</code> to <code>vcpu</code> or
    #                   <code>memory-mib</code>, the price protection threshold is based on the per-vCPU or
    #               per-memory price instead of the per instance price. </p>
    #            <note>
    #               <p>Only one of <code>SpotMaxPricePercentageOverLowestPrice</code> or
    #                       <code>MaxSpotPriceAsPercentageOfOptimalOnDemandPrice</code> can be specified. If
    #                   you don't specify either, Amazon EC2 Auto Scaling will automatically apply optimal price protection
    #                   to consistently select from a wide range of instance types. To indicate no price
    #                   protection threshold for Spot Instances, meaning you want to consider all instance
    #                   types that match your attributes, include one of these parameters and specify a high
    #                   value, such as <code>999999</code>. </p>
    #            </note>
    #   @return [Integer]
    # @!attribute on_demand_max_price_percentage_over_lowest_price
    #   <p>[Price protection] The price protection threshold for On-Demand Instances, as a
    #               percentage higher than an identified On-Demand price. The identified On-Demand price is
    #               the price of the lowest priced current generation C, M, or R instance type with your
    #               specified attributes. If no current generation C, M, or R instance type matches your
    #               attributes, then the identified price is from either the lowest priced current
    #               generation instance types or, failing that, the lowest priced previous generation
    #               instance types that match your attributes. When Amazon EC2 Auto Scaling selects instance types with
    #               your attributes, we will exclude instance types whose price exceeds your specified
    #               threshold. </p>
    #            <p>The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage.</p>
    #            <p>To turn off price protection, specify a high value, such as <code>999999</code>. </p>
    #            <p>If you set <code>DesiredCapacityType</code> to <code>vcpu</code> or
    #                   <code>memory-mib</code>, the price protection threshold is applied based on the
    #               per-vCPU or per-memory price instead of the per instance price. </p>
    #            <p>Default: <code>20</code>
    #            </p>
    #   @return [Integer]
    # @!attribute bare_metal
    #   <p>Indicates whether bare metal instance types are included, excluded, or
    #               required.</p>
    #            <p>Default: <code>excluded</code>
    #            </p>
    #   @return [String]
    # @!attribute burstable_performance
    #   <p>Indicates whether burstable performance instance types are included, excluded, or
    #               required. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html">Burstable
    #                   performance instances</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            <p>Default: <code>excluded</code>
    #            </p>
    #   @return [String]
    # @!attribute require_hibernate_support
    #   <p>Indicates whether instance types must provide On-Demand Instance hibernation
    #               support.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute network_interface_count
    #   <p>The minimum and maximum number of network interfaces for an instance type.</p>
    #            <p>Default: No minimum or maximum limits</p>
    #   @return [Types::NetworkInterfaceCountRequest]
    # @!attribute local_storage
    #   <p>Indicates whether instance types with instance store volumes are included, excluded,
    #               or required. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html">Amazon EC2 instance store</a> in
    #               the <i>Amazon EC2 User Guide</i>.</p>
    #            <p>Default: <code>included</code>
    #            </p>
    #   @return [String]
    # @!attribute local_storage_types
    #   <p>Indicates the type of local storage that is required.</p>
    #            <ul>
    #               <li>
    #                  <p>For instance types with hard disk drive (HDD) storage, specify
    #                           <code>hdd</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with solid state drive (SSD) storage, specify
    #                           <code>ssd</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Default: Any local storage type</p>
    #   @return [Array<String>]
    # @!attribute total_local_storage_gb
    #   <p>The minimum and maximum total local storage size for an instance type, in GB.</p>
    #            <p>Default: No minimum or maximum limits</p>
    #   @return [Types::TotalLocalStorageGBRequest]
    # @!attribute baseline_ebs_bandwidth_mbps
    #   <p>The minimum and maximum baseline bandwidth performance for an instance type, in Mbps.
    #               For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html">Amazon EBS–optimized instances</a>
    #               in the <i>Amazon EC2 User Guide</i>.</p>
    #            <p>Default: No minimum or maximum limits</p>
    #   @return [Types::BaselineEbsBandwidthMbpsRequest]
    # @!attribute accelerator_types
    #   <p>Lists the accelerator types that must be on an instance type.</p>
    #            <ul>
    #               <li>
    #                  <p>For instance types with GPU accelerators, specify <code>gpu</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with FPGA accelerators, specify <code>fpga</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with inference accelerators, specify
    #                       <code>inference</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Default: Any accelerator type</p>
    #   @return [Array<String>]
    # @!attribute accelerator_count
    #   <p>The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon Web Services Inferentia
    #               chips) for an instance type.</p>
    #            <p>To exclude accelerator-enabled instance types, set <code>Max</code> to
    #               <code>0</code>.</p>
    #            <p>Default: No minimum or maximum limits</p>
    #   @return [Types::AcceleratorCountRequest]
    # @!attribute accelerator_manufacturers
    #   <p>Indicates whether instance types must have accelerators by specific
    #               manufacturers.</p>
    #            <ul>
    #               <li>
    #                  <p>For instance types with NVIDIA devices, specify <code>nvidia</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with AMD devices, specify <code>amd</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with Amazon Web Services devices, specify
    #                           <code>amazon-web-services</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with Xilinx devices, specify <code>xilinx</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Default: Any manufacturer</p>
    #   @return [Array<String>]
    # @!attribute accelerator_names
    #   <p>Lists the accelerators that must be on an instance type.</p>
    #            <ul>
    #               <li>
    #                  <p>For instance types with NVIDIA A100 GPUs, specify <code>a100</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with NVIDIA V100 GPUs, specify <code>v100</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with NVIDIA K80 GPUs, specify <code>k80</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with NVIDIA T4 GPUs, specify <code>t4</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with NVIDIA M60 GPUs, specify <code>m60</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with AMD Radeon Pro V520 GPUs, specify
    #                           <code>radeon-pro-v520</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For instance types with Xilinx VU9P FPGAs, specify <code>vu9p</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Default: Any accelerator</p>
    #   @return [Array<String>]
    # @!attribute accelerator_total_memory_mi_b
    #   <p>The minimum and maximum total memory size for the accelerators on an instance type, in
    #               MiB.</p>
    #            <p>Default: No minimum or maximum limits</p>
    #   @return [Types::AcceleratorTotalMemoryMiBRequest]
    # @!attribute network_bandwidth_gbps
    #   <p>The minimum and maximum amount of network bandwidth, in gigabits per second
    #               (Gbps).</p>
    #            <p>Default: No minimum or maximum limits</p>
    #   @return [Types::NetworkBandwidthGbpsRequest]
    # @!attribute allowed_instance_types
    #   <p>The instance types to apply your specified attributes against. All other instance
    #               types are ignored, even if they match your specified attributes.</p>
    #            <p>You can use strings with one or more wild cards, represented by an asterisk
    #                   (<code>*</code>), to allow an instance type, size, or generation. The following are
    #               examples: <code>m5.8xlarge</code>, <code>c5*.*</code>, <code>m5a.*</code>,
    #                   <code>r*</code>, <code>*3*</code>.</p>
    #            <p>For example, if you specify <code>c5*</code>, Amazon EC2 Auto Scaling will allow the entire C5
    #               instance family, which includes all C5a and C5n instance types. If you specify
    #                   <code>m5a.*</code>, Amazon EC2 Auto Scaling will allow all the M5a instance types, but not the M5n
    #               instance types.</p>
    #            <note>
    #               <p>If you specify <code>AllowedInstanceTypes</code>, you can't specify
    #                       <code>ExcludedInstanceTypes</code>.</p>
    #            </note>
    #            <p>Default: All instance types</p>
    #   @return [Array<String>]
    # @!attribute baseline_performance_factors
    #   <p>
    #               The baseline performance factors for the instance requirements.
    #           </p>
    #   @return [Types::BaselinePerformanceFactorsRequest]
    class InstanceRequirements < Struct.new(
      nil,
      :v_cpu_count,
      :memory_mi_b,
      :cpu_manufacturers,
      :memory_gi_b_per_v_cpu,
      :excluded_instance_types,
      :instance_generations,
      :spot_max_price_percentage_over_lowest_price,
      :max_spot_price_as_percentage_of_optimal_on_demand_price,
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
      :allowed_instance_types,
      :baseline_performance_factors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an instance reuse policy for a warm pool. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html">Warm pools for
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute reuse_on_scale_in
    #   <p>Specifies whether instances in the Auto Scaling group can be returned to the warm pool on
    #               scale in. </p>
    #   @return [Boolean]
    class InstanceReusePolicy < Struct.new(
      nil,
      :reuse_on_scale_in,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to specify how a mixed instances policy distributes capacity across
    #             On-Demand, Spot, and supported Capacity Reservation types, and to specify the allocation
    #             strategies that are used to fulfill the capacity.</p>
    # @!attribute on_demand_allocation_strategy
    #   <p>The allocation strategy to apply to your On-Demand Instances when they are launched.
    #               Possible instance types are determined by the launch template overrides that you
    #               specify.</p>
    #            <p>The following lists the valid values:</p>
    #            <dl>
    #               <dt>lowest-price</dt>
    #               <dd>
    #                  <p>Uses price to determine which instance types are the highest priority,
    #                           launching the lowest priced instance types within an Availability Zone
    #                           first. This is the default value for Auto Scaling groups that specify
    #                           <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a>. </p>
    #               </dd>
    #               <dt>prioritized</dt>
    #               <dd>
    #                  <p>You set the order of instance types for the launch template overrides from
    #                           highest to lowest priority (from first to last in the list). Amazon EC2 Auto Scaling
    #                           launches your highest priority instance types first. If all your On-Demand
    #                           capacity cannot be fulfilled using your highest priority instance type, then
    #                           Amazon EC2 Auto Scaling launches the remaining capacity using the second priority instance
    #                           type, and so on. This is the default value for Auto Scaling groups that don't
    #                           specify <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a> and cannot be used for groups
    #                           that do.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute on_demand_base_capacity
    #   <p>The minimum amount of the Auto Scaling group's capacity that must be fulfilled by On-Demand
    #               Instances. This base portion is launched first as your group scales.</p>
    #            <p>This number has the same unit of measurement as the group's desired capacity. If you
    #               change the default unit of measurement (number of instances) by specifying weighted
    #               capacity values in your launch template overrides list, or by changing the default
    #               desired capacity type setting of the group, you must specify this number using the same
    #               unit of measurement.</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute on_demand_percentage_above_base_capacity
    #   <p>Controls the percentages of On-Demand Instances and Spot Instances for your additional
    #               capacity beyond <code>OnDemandBaseCapacity</code>. Expressed as a number (for example,
    #               20 specifies 20% On-Demand Instances, 80% Spot Instances). If set to 100, only On-Demand
    #               Instances are used.</p>
    #            <p>Default: 100</p>
    #   @return [Integer]
    # @!attribute spot_allocation_strategy
    #   <p>The allocation strategy to apply to your Spot Instances when they are launched.
    #               Possible instance types are determined by the launch template overrides that you
    #               specify.</p>
    #            <p>The following lists the valid values:</p>
    #            <dl>
    #               <dt>capacity-optimized</dt>
    #               <dd>
    #                  <p>Requests Spot Instances using pools that are optimally chosen based on the
    #                           available Spot capacity. This strategy has the lowest risk of interruption.
    #                           To give certain instance types a higher chance of launching first, use
    #                               <code>capacity-optimized-prioritized</code>.</p>
    #               </dd>
    #               <dt>capacity-optimized-prioritized</dt>
    #               <dd>
    #                  <p>You set the order of instance types for the launch template overrides from
    #                           highest to lowest priority (from first to last in the list). Amazon EC2 Auto Scaling honors
    #                           the instance type priorities on a best effort basis but optimizes for
    #                           capacity first. Note that if the On-Demand allocation strategy is set to
    #                               <code>prioritized</code>, the same priority is applied when fulfilling
    #                           On-Demand capacity. This is not a valid value for Auto Scaling groups that specify
    #                           <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a>.</p>
    #               </dd>
    #               <dt>lowest-price</dt>
    #               <dd>
    #                  <p>Requests Spot Instances using the lowest priced pools within an
    #                           Availability Zone, across the number of Spot pools that you specify for the
    #                               <code>SpotInstancePools</code> property. To ensure that your desired
    #                           capacity is met, you might receive Spot Instances from several pools. This
    #                           is the default value, but it might lead to high interruption rates because
    #                           this strategy only considers instance price and not available
    #                           capacity.</p>
    #               </dd>
    #               <dt>price-capacity-optimized (recommended)</dt>
    #               <dd>
    #                  <p>The price and capacity optimized allocation strategy looks at both price
    #                           and capacity to select the Spot Instance pools that are the least likely to
    #                           be interrupted and have the lowest possible price.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute spot_instance_pools
    #   <p>The number of Spot Instance pools across which to allocate your Spot Instances. The
    #               Spot pools are determined from the different instance types in the overrides. Valid only
    #               when the <code>SpotAllocationStrategy</code> is <code>lowest-price</code>. Value must be
    #               in the range of 1–20.</p>
    #            <p>Default: 2</p>
    #   @return [Integer]
    # @!attribute spot_max_price
    #   <p>The maximum price per unit hour that you are willing to pay for a Spot Instance. If
    #               your maximum price is lower than the Spot price for the instance types that you
    #               selected, your Spot Instances are not launched. We do not recommend specifying a maximum
    #               price because it can lead to increased interruptions. When Spot Instances launch, you
    #               pay the current Spot price. To remove a maximum price that you previously set, include
    #               the property but specify an empty string ("") for the value.</p>
    #            <important>
    #               <p>If you specify a maximum price, your instances will be interrupted more frequently
    #                   than if you do not specify one.</p>
    #            </important>
    #            <p>Valid Range: Minimum value of 0.001</p>
    #   @return [String]
    # @!attribute distribution_segments
    #   <p>The Distribution Segments configuration. Each segment contains an ordered list of
    #               capacity types to prioritize.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/use-distribution-segments.html">Use Distribution
    #                   Segments to target multiple capacity types</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Array<Types::DistributionSegment>]
    class InstancesDistribution < Struct.new(
      nil,
      :on_demand_allocation_strategy,
      :on_demand_base_capacity,
      :on_demand_percentage_above_base_capacity,
      :spot_allocation_strategy,
      :spot_instance_pools,
      :spot_max_price,
      :distribution_segments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>NextToken</code> value is not valid.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class InvalidNextToken < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because a desired configuration was not found or an incompatible
    #             launch template (uses a Systems Manager parameter instead of an AMI ID) or launch
    #             template version (<code>$Latest</code> or <code>$Default</code>) is present on the Auto Scaling
    #             group.</p>
    # @!attribute message
    #   @return [String]
    class IrreversibleInstanceRefreshFault < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a launch configuration.</p>
    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration.</p>
    #   @return [String]
    # @!attribute launch_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the launch configuration.</p>
    #   @return [String]
    # @!attribute image_id
    #   <p>The ID of the Amazon Machine Image (AMI) to use to launch your EC2 instances. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Find a Linux AMI</a> in the
    #                   <i>Amazon EC2 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key_name
    #   <p>The name of the key pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Amazon EC2 key pairs and Amazon EC2
    #                   instances</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>A list that contains the security groups to assign to the instances in the Auto Scaling group.
    #               For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html">Control traffic to your Amazon Web Services
    #                   resources using security groups</a> in the <i>Amazon Virtual Private
    #                   Cloud User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute classic_link_vpc_id
    #   <p>Available for backward compatibility.</p>
    #   @return [String]
    # @!attribute classic_link_vpc_security_groups
    #   <p>Available for backward compatibility.</p>
    #   @return [Array<String>]
    # @!attribute user_data
    #   <p>The user data to make available to the launched EC2 instances. For more information,
    #               see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">Instance metadata and user data</a> in the <i>Amazon EC2 User Guide</i>.
    #               If you are using a command line tool, base64-encoding
    #               is performed for you, and you can load the text from a file. Otherwise, you must provide
    #               base64-encoded text. User data is limited to 16 KB.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type for the instances. For information about available instance types,
    #               see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes">Available
    #                   instance types</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #   @return [String]
    # @!attribute kernel_id
    #   <p>The ID of the kernel associated with the AMI.</p>
    #   @return [String]
    # @!attribute ramdisk_id
    #   <p>The ID of the RAM disk associated with the AMI.</p>
    #   @return [String]
    # @!attribute block_device_mappings
    #   <p>The block device mapping entries that define the block devices to attach to the
    #               instances at launch. By default, the block devices specified in the block device mapping
    #               for the AMI are used. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block device
    #                   mappings</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #   @return [Array<Types::BlockDeviceMapping>]
    # @!attribute instance_monitoring
    #   <p>Controls whether instances in this group are launched with detailed
    #               (<code>true</code>) or basic (<code>false</code>) monitoring.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html">Configure
    #                   monitoring for Auto Scaling instances</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Types::InstanceMonitoring]
    # @!attribute spot_price
    #   <p>The maximum hourly price to be paid for any Spot Instance launched to fulfill the
    #               request. Spot Instances are launched when the price you specify exceeds the current Spot
    #               price. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-template-spot-instances.html">Requesting Spot
    #                   Instances for fault-tolerant and flexible applications</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute iam_instance_profile
    #   <p>The name or the Amazon Resource Name (ARN) of the instance profile associated with the
    #               IAM role for the instance. The instance profile contains the IAM role. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html">IAM role for applications that run
    #                   on Amazon EC2 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The creation date and time for the launch configuration.</p>
    #   @return [Time]
    # @!attribute ebs_optimized
    #   <p>Specifies whether the launch configuration is optimized for EBS I/O
    #               (<code>true</code>) or not (<code>false</code>). For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html">Amazon EBS-optimized instances</a> in the
    #               <i>Amazon EC2 User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute associate_public_ip_address
    #   <p>Specifies whether to assign a public IPv4 address to the group's instances. If the
    #               instance is launched into a default subnet, the default is to assign a public IPv4
    #               address, unless you disabled the option to assign a public IPv4 address on the subnet.
    #               If the instance is launched into a nondefault subnet, the default is not to assign a
    #               public IPv4 address, unless you enabled the option to assign a public IPv4 address on
    #               the subnet. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html">Provide network connectivity for
    #                   your Auto Scaling instances using Amazon VPC</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute placement_tenancy
    #   <p>The tenancy of the instance, either <code>default</code> or <code>dedicated</code>. An
    #               instance with <code>dedicated</code> tenancy runs on isolated, single-tenant hardware
    #               and can only be launched into a VPC.</p>
    #   @return [String]
    # @!attribute metadata_options
    #   <p>The metadata options for the instances. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds">Configure the instance metadata options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Types::InstanceMetadataOptions]
    class LaunchConfiguration < Struct.new(
      nil,
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
      :metadata_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Contains details about errors encountered during instance launch attempts.
    #         </p>
    # @!attribute instance_type
    #   <p>
    #               The instance type that failed to launch.
    #           </p>
    #   @return [String]
    # @!attribute market_type
    #   <p>
    #               The market type (On-Demand or Spot) that encountered the launch error.
    #           </p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>
    #               The subnet ID where the instance launch was attempted.
    #           </p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>
    #               The Availability Zone where the instance launch was attempted.
    #           </p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #               The Availability Zone ID where the launch error occurred.
    #           </p>
    #   @return [String]
    # @!attribute error_code
    #   <p>
    #               The error code representing the type of error encountered (e.g., InsufficientInstanceCapacity).
    #           </p>
    #   @return [String]
    # @!attribute error_message
    #   <p>
    #               A descriptive message providing details about the error encountered during the launch attempt.
    #           </p>
    #   @return [String]
    class LaunchInstancesError < Struct.new(
      nil,
      :instance_type,
      :market_type,
      :subnet_id,
      :availability_zone,
      :availability_zone_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>
    #               The name of the Auto Scaling group to launch instances into.
    #           </p>
    #   @return [String]
    # @!attribute requested_capacity
    #   <p>
    #               The number of instances to launch. Although this value can exceed 100 for instance weights, the actual instance count is limited to 100 instances per launch.
    #           </p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>
    #               A unique, case-sensitive identifier to ensure idempotency of the request.
    #           </p>
    #   @return [String]
    # @!attribute availability_zones
    #   <p>
    #               The Availability Zones for the instance launch. Must match or be included in the Auto Scaling group's Availability Zone configuration. Either <code>AvailabilityZones</code> or <code>SubnetIds</code> must be specified for groups with multiple Availability Zone configurations.
    #           </p>
    #   @return [Array<String>]
    # @!attribute availability_zone_ids
    #   <p>
    #               A list of Availability Zone IDs where instances should be launched. Must match or be included in the group's AZ configuration. You cannot specify both AvailabilityZones and AvailabilityZoneIds. Required for multi-AZ groups, optional for single-AZ groups.
    #           </p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>
    #               The subnet IDs for the instance launch. Either <code>AvailabilityZones</code> or <code>SubnetIds</code> must be specified. If both are specified, the subnets must reside in the specified Availability Zones.
    #           </p>
    #   @return [Array<String>]
    # @!attribute retry_strategy
    #   <p>
    #               Specifies whether to retry asynchronously if the synchronous launch fails. Valid values are NONE (default, no async retry) and RETRY_WITH_GROUP_CONFIGURATION (increase desired capacity and retry with group configuration).
    #           </p>
    #   @return [String]
    class LaunchInstancesRequest < Struct.new(
      nil,
      :auto_scaling_group_name,
      :requested_capacity,
      :client_token,
      :availability_zones,
      :availability_zone_ids,
      :subnet_ids,
      :retry_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>
    #               The name of the Auto Scaling group where the instances were launched.
    #           </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>
    #               The idempotency token used for the request, either customer-specified or auto-generated.
    #           </p>
    #   @return [String]
    # @!attribute instances
    #   <p>
    #               A list of successfully launched instances including details such as instance type, Availability Zone, subnet, lifecycle state, and instance IDs.
    #           </p>
    #   @return [Array<Types::InstanceCollection>]
    # @!attribute errors
    #   <p>
    #               A list of errors encountered during the launch attempt including details about failed instance launches with their corresponding error codes and messages.
    #           </p>
    #   @return [Array<Types::LaunchInstancesError>]
    class LaunchInstancesResult < Struct.new(
      nil,
      :auto_scaling_group_name,
      :client_token,
      :instances,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to specify the launch templates and instance types (overrides) for
    #             a mixed instances policy.</p>
    # @!attribute launch_template_specification
    #   <p>The launch template.</p>
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute overrides
    #   <p>Any properties that you specify override the same properties in the launch
    #               template.</p>
    #   @return [Array<Types::LaunchTemplateOverrides>]
    class LaunchTemplate < Struct.new(
      nil,
      :launch_template_specification,
      :overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to let Amazon EC2 Auto Scaling do the following when the Auto Scaling group has a mixed
    #             instances policy:</p>
    #          <ul>
    #             <li>
    #                <p>Override the instance type that is specified in the launch template.</p>
    #             </li>
    #             <li>
    #                <p>Use multiple instance types.</p>
    #             </li>
    #          </ul>
    #          <p>Specify the instance types that you want, or define your instance requirements instead
    #             and let Amazon EC2 Auto Scaling provision the available instance types that meet your requirements.
    #             This can provide Amazon EC2 Auto Scaling with a larger selection of instance types to choose from when
    #             fulfilling Spot and On-Demand capacities. You can view which instance types are matched
    #             before you apply the instance requirements to your Auto Scaling group.</p>
    #          <p>After you define your instance requirements, you don't have to keep updating these
    #             settings to get new EC2 instance types automatically. Amazon EC2 Auto Scaling uses the instance
    #             requirements of the Auto Scaling group to determine whether a new EC2 instance type can be
    #             used.</p>
    # @!attribute instance_type
    #   <p>The instance type, such as <code>m3.xlarge</code>. You must specify an instance type
    #               that is supported in your requested Region and Availability Zones. For more information,
    #               see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance types</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            <p>You can specify up to 40 instance types per Auto Scaling group.</p>
    #   @return [String]
    # @!attribute weighted_capacity
    #   <p>If you provide a list of instance types to use, you can specify the number of capacity
    #               units provided by each instance type in terms of virtual CPUs, memory, storage,
    #               throughput, or other relative performance characteristic. When a Spot or On-Demand
    #               Instance is launched, the capacity units count toward the desired capacity. Amazon EC2 Auto Scaling
    #               launches instances until the desired capacity is totally fulfilled, even if this results
    #               in an overage. For example, if there are two units remaining to fulfill capacity, and
    #               Amazon EC2 Auto Scaling can only launch an instance with a <code>WeightedCapacity</code> of five units,
    #               the instance is launched, and the desired capacity is exceeded by three units. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups-instance-weighting.html">Configure an Auto Scaling group to use instance weights</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>. Value must be in the range of 1–999.</p>
    #            <p>If you specify a value for <code>WeightedCapacity</code> for one instance type, you
    #               must specify a value for <code>WeightedCapacity</code> for all of them.</p>
    #            <important>
    #               <p>Every Auto Scaling group has three size parameters (<code>DesiredCapacity</code>,
    #                       <code>MaxSize</code>, and <code>MinSize</code>). Usually, you set these sizes
    #                   based on a specific number of instances. However, if you configure a mixed instances
    #                   policy that defines weights for the instance types, you must specify these sizes
    #                   with the same units that you use for weighting instances. </p>
    #            </important>
    #   @return [String]
    # @!attribute launch_template_specification
    #   <p>Provides a launch template for the specified instance type or set of instance
    #               requirements. For example, some instance types might require a launch template with a
    #               different AMI. If not provided, Amazon EC2 Auto Scaling uses the launch template that's specified in
    #               the <code>LaunchTemplate</code> definition. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups-launch-template-overrides.html">Specifying a different launch template for an instance type</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #            <p>You can specify up to 20 launch templates per Auto Scaling group. The launch templates
    #               specified in the overrides and in the <code>LaunchTemplate</code> definition count
    #               towards this limit.</p>
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute instance_requirements
    #   <p>The instance requirements. Amazon EC2 Auto Scaling uses your specified requirements to identify
    #               instance types. Then, it uses your On-Demand and Spot allocation strategies to launch
    #               instances from these instance types.</p>
    #            <p>You can specify up to four separate sets of instance requirements per Auto Scaling group. This
    #               is useful for provisioning instances from different Amazon Machine Images (AMIs) in the
    #               same Auto Scaling group. To do this, create the AMIs and create a new launch template for each
    #               AMI. Then, create a compatible set of instance requirements for each launch template.
    #               </p>
    #            <note>
    #               <p>If you specify <code>InstanceRequirements</code>, you can't specify
    #                       <code>InstanceType</code>.</p>
    #            </note>
    #   @return [Types::InstanceRequirements]
    # @!attribute image_id
    #   <p>
    #               The ID of the Amazon Machine Image (AMI) to use for instances launched with this override. When
    #               using Instance Refresh with <code>ReplaceRootVolume</code> strategy, this specifies the AMI for root volume
    #               replacement operations.
    #           </p>
    #            <p>
    #               For <code>ReplaceRootVolume</code> operations:
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>All overrides in the <code>MixedInstancesPolicy</code> must specify an ImageId</p>
    #               </li>
    #               <li>
    #                  <p>The AMI must contain only a single root volume</p>
    #               </li>
    #               <li>
    #                  <p>Root volume replacement doesn't support multi-volume AMIs</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class LaunchTemplateOverrides < Struct.new(
      nil,
      :instance_type,
      :weighted_capacity,
      :launch_template_specification,
      :instance_requirements,
      :image_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the launch template and the version of the launch template that Amazon EC2 Auto Scaling
    #             uses to launch Amazon EC2 instances. For more information about launch templates, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-templates.html">Launch
    #                 templates</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute launch_template_id
    #   <p>The ID of the launch template. To get the template ID, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplates.html">DescribeLaunchTemplates</a> API operation. New launch templates can be created
    #               using the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html">CreateLaunchTemplate</a> API. </p>
    #            <p>Conditional: You must specify either a <code>LaunchTemplateId</code> or a
    #                   <code>LaunchTemplateName</code>.</p>
    #   @return [String]
    # @!attribute launch_template_name
    #   <p>The name of the launch template. To get the template name, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplates.html">DescribeLaunchTemplates</a> API operation. New launch templates can be created
    #               using the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html">CreateLaunchTemplate</a> API. </p>
    #            <p>Conditional: You must specify either a <code>LaunchTemplateId</code> or a
    #                   <code>LaunchTemplateName</code>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number, <code>$Latest</code>, or <code>$Default</code>. To get the version
    #               number, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplateVersions.html">DescribeLaunchTemplateVersions</a> API operation. New launch template versions
    #               can be created using the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplateVersion.html">CreateLaunchTemplateVersion</a> API. If the value is <code>$Latest</code>,
    #               Amazon EC2 Auto Scaling selects the latest version of the launch template when launching instances. If
    #               the value is <code>$Default</code>, Amazon EC2 Auto Scaling selects the default version of the launch
    #               template when launching instances. The default value is <code>$Default</code>.</p>
    #   @return [String]
    class LaunchTemplateSpecification < Struct.new(
      nil,
      :launch_template_id,
      :launch_template_name,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a lifecycle hook. A lifecycle hook lets you create solutions that are aware
    #             of events in the Auto Scaling instance lifecycle, and then perform a custom action on instances
    #             when the corresponding lifecycle event
    #             occurs.</p>
    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group for the lifecycle hook.</p>
    #   @return [String]
    # @!attribute lifecycle_transition
    #   <p>The lifecycle transition.</p>
    #            <p>Valid values: <code>autoscaling:EC2_INSTANCE_LAUNCHING</code> |
    #                   <code>autoscaling:EC2_INSTANCE_TERMINATING</code>
    #            </p>
    #   @return [String]
    # @!attribute notification_target_arn
    #   <p>The ARN of the target that Amazon EC2 Auto Scaling sends notifications to when an instance is in a
    #               wait state for the lifecycle hook.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified
    #               notification target (an Amazon SNS topic or an Amazon SQS queue).</p>
    #   @return [String]
    # @!attribute notification_metadata
    #   <p>Additional information that is included any time Amazon EC2 Auto Scaling sends a message to the
    #               notification target.</p>
    #   @return [String]
    # @!attribute heartbeat_timeout
    #   <p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. If
    #               the lifecycle hook times out, Amazon EC2 Auto Scaling performs the action that you specified in the
    #                   <code>DefaultResult</code> property.</p>
    #   @return [Integer]
    # @!attribute global_timeout
    #   <p>The maximum time, in seconds, that an instance can remain in a wait state. The maximum
    #               is 172800 seconds (48 hours) or 100 times <code>HeartbeatTimeout</code>, whichever is
    #               smaller.</p>
    #   @return [Integer]
    # @!attribute default_result
    #   <p>The action the Auto Scaling group takes when the lifecycle hook timeout elapses or if an
    #               unexpected failure occurs.</p>
    #            <p>Valid values: <code>CONTINUE</code> | <code>ABANDON</code>
    #            </p>
    #   @return [String]
    class LifecycleHook < Struct.new(
      nil,
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_transition,
      :notification_target_arn,
      :role_arn,
      :notification_metadata,
      :heartbeat_timeout,
      :global_timeout,
      :default_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes information used to specify a lifecycle hook for an Auto Scaling
    #             group.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon EC2 Auto Scaling lifecycle
    #                 hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #   @return [String]
    # @!attribute lifecycle_transition
    #   <p>The lifecycle transition. For Auto Scaling groups, there are two major lifecycle
    #               transitions.</p>
    #            <ul>
    #               <li>
    #                  <p>To create a lifecycle hook for scale-out events, specify
    #                           <code>autoscaling:EC2_INSTANCE_LAUNCHING</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To create a lifecycle hook for scale-in events, specify
    #                           <code>autoscaling:EC2_INSTANCE_TERMINATING</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute notification_metadata
    #   <p>Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to
    #               the notification target.</p>
    #   @return [String]
    # @!attribute heartbeat_timeout
    #   <p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. The
    #               range is from <code>30</code> to <code>7200</code> seconds. The default value is
    #                   <code>3600</code> seconds (1 hour).</p>
    #   @return [Integer]
    # @!attribute default_result
    #   <p>The action the Auto Scaling group takes when the lifecycle hook timeout elapses or if an
    #               unexpected failure occurs. The default value is <code>ABANDON</code>.</p>
    #            <p>Valid values: <code>CONTINUE</code> | <code>ABANDON</code>
    #            </p>
    #   @return [String]
    # @!attribute notification_target_arn
    #   <p>The Amazon Resource Name (ARN) of the notification target that Amazon EC2 Auto Scaling sends
    #               notifications to when an instance is in a wait state for the lifecycle hook. You can
    #               specify an Amazon SNS topic or an Amazon SQS queue.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified
    #               notification target. For information about creating this role, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/prepare-for-lifecycle-notifications.html">Prepare to
    #                   add a lifecycle hook to your Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Valid only if the notification target is an Amazon SNS topic or an Amazon SQS queue.</p>
    #   @return [String]
    class LifecycleHookSpecification < Struct.new(
      nil,
      :lifecycle_hook_name,
      :lifecycle_transition,
      :notification_metadata,
      :heartbeat_timeout,
      :default_result,
      :notification_target_arn,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have already reached a limit for your Amazon EC2 Auto Scaling
    #             resources (for example, Auto Scaling groups, launch configurations, or lifecycle hooks). For
    #             more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html">DescribeAccountLimits</a> in the <i>Amazon EC2 Auto Scaling API
    #             Reference</i>.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class LimitExceededFault < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the state of a Classic Load Balancer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute state
    #   <p>One of the following load balancer states:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Adding</code> - The Auto Scaling instances are being registered with the load
    #                       balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Added</code> - All Auto Scaling instances are registered with the load
    #                       balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InService</code> - At least one Auto Scaling instance passed an <code>ELB</code>
    #                       health check.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Removing</code> - The Auto Scaling instances are being deregistered from the
    #                       load balancer. If connection draining is enabled, Elastic Load Balancing waits for in-flight
    #                       requests to complete before deregistering the instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Removed</code> - All Auto Scaling instances are deregistered from the load
    #                       balancer.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class LoadBalancerState < Struct.new(
      nil,
      :load_balancer_name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the state of a target group.</p>
    # @!attribute load_balancer_target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the target group.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Adding</code> - The Auto Scaling instances are being registered with the target
    #                       group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Added</code> - All Auto Scaling instances are registered with the target
    #                       group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InService</code> - At least one Auto Scaling instance passed an <code>ELB</code>
    #                       health check.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Removing</code> - The Auto Scaling instances are being deregistered from the
    #                       target group. If connection draining is enabled, Elastic Load Balancing waits for in-flight
    #                       requests to complete before deregistering the instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Removed</code> - All Auto Scaling instances are deregistered from the target
    #                       group.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class LoadBalancerTargetGroupState < Struct.new(
      nil,
      :load_balancer_target_group_arn,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>GetPredictiveScalingForecast</code> call returns the load forecast for a
    #             predictive scaling policy. This structure includes the data points for that load
    #             forecast, along with the timestamps of those data points and the metric specification.
    #         </p>
    # @!attribute timestamps
    #   <p>The timestamps for the data points, in UTC format.</p>
    #   @return [Array<Time>]
    # @!attribute values
    #   <p>The values of the data points.</p>
    #   @return [Array<Float>]
    # @!attribute metric_specification
    #   <p>The metric specification for the load forecast.</p>
    #   @return [Types::PredictiveScalingMetricSpecification]
    class LoadForecast < Struct.new(
      nil,
      :timestamps,
      :values,
      :metric_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>MemoryGiBPerVCpu</code> object when
    #             you specify <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a> for an Auto Scaling group.</p>
    # @!attribute min
    #   <p>The memory minimum in GiB.</p>
    #   @return [Float]
    # @!attribute max
    #   <p>The memory maximum in GiB.</p>
    #   @return [Float]
    class MemoryGiBPerVCpuRequest < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>MemoryMiB</code> object when you
    #             specify <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a> for an Auto Scaling group.</p>
    # @!attribute min
    #   <p>The memory minimum in MiB.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The memory maximum in MiB.</p>
    #   @return [Integer]
    class MemoryMiBRequest < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a specific metric. </p>
    # @!attribute namespace
    #   <p>The namespace of the metric. For more information, see the table in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html">Amazon Web Services
    #                   services that publish CloudWatch metrics </a> in the <i>Amazon CloudWatch User
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>The dimensions for the metric. For the list of available dimensions, see the Amazon Web Services
    #               documentation available from the table in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html">Amazon Web Services
    #                   services that publish CloudWatch metrics </a> in the <i>Amazon CloudWatch User
    #                   Guide</i>. </p>
    #            <p>Conditional: If you published your metric with dimensions, you must specify the same
    #               dimensions in your scaling policy.</p>
    #   @return [Array<Types::MetricDimension>]
    class Metric < Struct.new(
      nil,
      :namespace,
      :metric_name,
      :dimensions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a metric.</p>
    # @!attribute metric
    #   <p>One of the following metrics:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GroupMinSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupMaxSize</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalInstances</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupInServiceCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupStandbyCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolWarmedCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolPendingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTerminatingCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolDesiredCapacity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GroupAndWarmPoolTotalCapacity</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class MetricCollectionType < Struct.new(
      nil,
      :metric,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metric data to return. Also defines whether this call is returning data for one
    #             metric only, or whether it is performing a math expression on the values of returned
    #             metric statistics to create a new time series. A time series is a series of data points,
    #             each of which is associated with a timestamp.</p>
    #          <p>For more information and examples, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/predictive-scaling-customized-metric-specification.html">Advanced predictive scaling policy configurations using custom metrics</a> in
    #             the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute id
    #   <p>A short name that identifies the object's results in the response. This name must be
    #               unique among all <code>MetricDataQuery</code> objects specified for a single scaling
    #               policy. If you are performing math expressions on this set of data, this name represents
    #               that data and can serve as a variable in the mathematical expression. The valid
    #               characters are letters, numbers, and underscores. The first character must be a
    #               lowercase letter. </p>
    #   @return [String]
    # @!attribute expression
    #   <p>The math expression to perform on the returned data, if this object is performing a
    #               math expression. This expression can use the <code>Id</code> of the other metrics to
    #               refer to those metrics, and can also use the <code>Id</code> of other expressions to use
    #               the result of those expressions. </p>
    #            <p>Conditional: Within each <code>MetricDataQuery</code> object, you must specify either
    #                   <code>Expression</code> or <code>MetricStat</code>, but not both.</p>
    #   @return [String]
    # @!attribute metric_stat
    #   <p>Information about the metric data to return.</p>
    #            <p>Conditional: Within each <code>MetricDataQuery</code> object, you must specify either
    #                   <code>Expression</code> or <code>MetricStat</code>, but not both.</p>
    #   @return [Types::MetricStat]
    # @!attribute label
    #   <p>A human-readable label for this metric or expression. This is especially useful if
    #               this is a math expression, so that you know what the value represents.</p>
    #   @return [String]
    # @!attribute return_data
    #   <p>Indicates whether to return the timestamps and raw data values of this metric. </p>
    #            <p>If you use any math expressions, specify <code>true</code> for this value for only the
    #               final math expression that the metric specification is based on. You must specify
    #                   <code>false</code> for <code>ReturnData</code> for all the other metrics and
    #               expressions used in the metric specification.</p>
    #            <p>If you are only retrieving metrics and not performing any math expressions, do not
    #               specify anything for <code>ReturnData</code>. This sets it to its default
    #                   (<code>true</code>).</p>
    #   @return [Boolean]
    class MetricDataQuery < Struct.new(
      nil,
      :id,
      :expression,
      :metric_stat,
      :label,
      :return_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the dimension of a metric.</p>
    # @!attribute name
    #   <p>The name of the dimension.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the dimension.</p>
    #   @return [String]
    class MetricDimension < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a granularity of a metric.</p>
    # @!attribute granularity
    #   <p>The granularity. The only valid value is <code>1Minute</code>.</p>
    #   @return [String]
    class MetricGranularityType < Struct.new(
      nil,
      :granularity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines the CloudWatch metric to return, along with the statistic and
    #             unit.</p>
    #          <p>For more information about the CloudWatch terminology below, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch
    #                 concepts</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    # @!attribute metric
    #   <p>The CloudWatch metric to return, including the metric name, namespace, and dimensions. To
    #               get the exact metric name, namespace, and dimensions, inspect the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html">Metric</a> object that is returned by a call to <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html">ListMetrics</a>.</p>
    #   @return [Types::Metric]
    # @!attribute stat
    #   <p>The statistic to return. It can include any CloudWatch statistic or extended statistic. For
    #               a list of valid values, see the table in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic">Statistics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    #            <p>The most commonly used metrics for predictive scaling are <code>Average</code> and
    #                   <code>Sum</code>.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit to use for the returned data points. For a complete list of the units that
    #               CloudWatch supports, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">MetricDatum</a>
    #               data type in the <i>Amazon CloudWatch API Reference</i>.</p>
    #   @return [String]
    class MetricStat < Struct.new(
      nil,
      :metric,
      :stat,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to launch multiple instance types and configure how capacity is
    #             distributed across On-Demand, Spot, and supported Capacity Reservation types within a
    #             single Auto Scaling group.</p>
    #          <p>A mixed instances policy contains information that Amazon EC2 Auto Scaling can use to launch
    #             instances, prioritize capacity types, and help optimize your costs. For more
    #             information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                 groups with multiple instance types and purchase options</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>. To learn how to prioritize multiple capacity
    #             types, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/use-distribution-segments.html">Use Distribution
    #                 Segments to target multiple capacity types</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute launch_template
    #   <p>One or more launch templates and the instance types (overrides) that are used to
    #               launch EC2 instances to fulfill the configured capacities.</p>
    #   @return [Types::LaunchTemplate]
    # @!attribute instances_distribution
    #   <p>The instances distribution.</p>
    #   @return [Types::InstancesDistribution]
    class MixedInstancesPolicy < Struct.new(
      nil,
      :launch_template,
      :instances_distribution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>NetworkBandwidthGbps</code> object
    #             when you specify <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a> for an Auto Scaling group.</p>
    #          <note>
    #             <p>Setting the minimum bandwidth does not guarantee that your instance will achieve
    #                 the minimum bandwidth. Amazon EC2 will identify instance types that support the specified
    #                 minimum bandwidth, but the actual bandwidth of your instance might go below the
    #                 specified minimum at times. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-network-bandwidth.html#available-instance-bandwidth">Available instance bandwidth</a> in the
    #                 <i>Amazon EC2 User Guide</i>.</p>
    #          </note>
    # @!attribute min
    #   <p>The minimum amount of network bandwidth, in gigabits per second (Gbps).</p>
    #   @return [Float]
    # @!attribute max
    #   <p>The maximum amount of network bandwidth, in gigabits per second (Gbps).</p>
    #   @return [Float]
    class NetworkBandwidthGbpsRequest < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>NetworkInterfaceCount</code> object
    #             when you specify <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a> for an Auto Scaling group.</p>
    # @!attribute min
    #   <p>The minimum number of network interfaces.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The maximum number of network interfaces.</p>
    #   @return [Integer]
    class NetworkInterfaceCountRequest < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a notification.</p>
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic.</p>
    #   @return [String]
    # @!attribute notification_type
    #   <p>One of the following event notification types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>autoscaling:EC2_INSTANCE_LAUNCH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>autoscaling:EC2_INSTANCE_LAUNCH_ERROR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>autoscaling:EC2_INSTANCE_TERMINATE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>autoscaling:EC2_INSTANCE_TERMINATE_ERROR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>autoscaling:TEST_NOTIFICATION</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class NotificationConfiguration < Struct.new(
      nil,
      :auto_scaling_group_name,
      :topic_arn,
      :notification_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the entity that manages an Auto Scaling group.</p>
    # @!attribute principal
    #   <p>The service principal that is authorized to manage the Auto Scaling group. When an operator is
    #               specified, only the designated operator service principal can make mutating changes to
    #               the Auto Scaling group.</p>
    #   @return [String]
    class Operator < Struct.new(
      nil,
      :principal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Specify an instance family to use as the baseline reference for CPU performance. All instance types that All instance types that match your specified attributes will be compared against the CPU performance of the
    #             referenced instance family, regardless of CPU manufacturer or architecture differences.
    #         </p>
    #          <note>
    #             <p>Currently only one instance family can be specified in the list.</p>
    #          </note>
    # @!attribute instance_family
    #   <p>
    #               The instance family to use as a baseline reference.
    #           </p>
    #            <note>
    #               <p>Make sure that you specify the correct value for the instance family. The instance family is everything before the period (.) in the instance type name. For example, in the instance <code>c6i.large</code>, the
    #               instance family is <code>c6i</code>, not <code>c6</code>. For more information, see <a href="https://docs.aws.amazon.com/ec2/latest/instancetypes/instance-type-names.html">Amazon EC2 instance type naming conventions</a> in
    #               <i>Amazon EC2 Instance Types</i>.</p>
    #            </note>
    #            <p>The following instance types are <i>not supported</i> for performance protection.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>c1</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>g3| g3s</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>hpc7g</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>m1| m2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>mac1 | mac2 | mac2-m1ultra | mac2-m2 | mac2-m2pro</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>p3dn | p4d | p5</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>t1</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>u-12tb1 | u-18tb1 | u-24tb1 | u-3tb1 | u-6tb1 | u-9tb1 | u7i-12tb | u7in-16tb | u7in-24tb | u7in-32tb</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you performance protection by specifying a supported instance family, the returned instance types will exclude the preceding unsupported instance families.</p>
    #            <p>If you specify an unsupported instance family as a value for baseline performance, the API returns an empty response.</p>
    #   @return [String]
    class PerformanceFactorReferenceRequest < Struct.new(
      nil,
      :instance_family,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a predefined metric for a target tracking scaling policy to use with
    #             Amazon EC2 Auto Scaling.</p>
    # @!attribute predefined_metric_type
    #   <p>The metric type. The following predefined metrics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASGAverageCPUUtilization</code> - Average CPU utilization of the Auto Scaling
    #                       group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASGAverageNetworkIn</code> - Average number of bytes received on all
    #                       network interfaces by the Auto Scaling group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASGAverageNetworkOut</code> - Average number of bytes sent out on all
    #                       network interfaces by the Auto Scaling group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALBRequestCountPerTarget</code> - Average Application Load Balancer request count per target
    #                       for your Auto Scaling group.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute resource_label
    #   <p>A label that uniquely identifies a specific Application Load Balancer target group
    #               from which to determine the average request count served by your Auto Scaling group. You can't
    #               specify a resource label unless the target group is attached to the Auto Scaling group.</p>
    #            <p>You create the resource label by appending the final portion of the load balancer ARN
    #               and the final portion of the target group ARN into a single value, separated by a forward
    #               slash (/). The format of the resource label is:</p>
    #            <p>
    #               <code>app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff</code>.</p>
    #            <p>Where:</p>
    #            <ul>
    #               <li>
    #                  <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                       the load balancer ARN</p>
    #               </li>
    #               <li>
    #                  <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                       of the target group ARN.</p>
    #               </li>
    #            </ul>
    #            <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #               the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #   @return [String]
    class PredefinedMetricSpecification < Struct.new(
      nil,
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a predictive scaling policy configuration to use with Amazon EC2 Auto Scaling.</p>
    # @!attribute metric_specifications
    #   <p>This structure includes the metrics and target utilization to use for predictive
    #               scaling. </p>
    #            <p>This is an array, but we currently only support a single metric specification. That
    #               is, you can specify a target value and a single metric pair, or a target value and one
    #               scaling metric and one load metric.</p>
    #   @return [Array<Types::PredictiveScalingMetricSpecification>]
    # @!attribute mode
    #   <p>The predictive scaling mode. Defaults to <code>ForecastOnly</code> if not
    #               specified.</p>
    #   @return [String]
    # @!attribute scheduling_buffer_time
    #   <p>The amount of time, in seconds, by which the instance launch time can be advanced. For
    #               example, the forecast says to add capacity at 10:00 AM, and you choose to pre-launch
    #               instances by 5 minutes. In that case, the instances will be launched at 9:55 AM. The
    #               intention is to give resources time to be provisioned. It can take a few minutes to
    #               launch an EC2 instance. The actual amount of time required depends on several factors,
    #               such as the size of the instance and whether there are startup scripts to complete. </p>
    #            <p>The value must be less than the forecast interval duration of 3600 seconds (60
    #               minutes). Defaults to 300 seconds if not specified. </p>
    #   @return [Integer]
    # @!attribute max_capacity_breach_behavior
    #   <p>Defines the behavior that should be applied if the forecast capacity approaches or
    #               exceeds the maximum capacity of the Auto Scaling group. Defaults to
    #                   <code>HonorMaxCapacity</code> if not specified.</p>
    #            <p>The following are possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HonorMaxCapacity</code> - Amazon EC2 Auto Scaling can't increase the maximum capacity
    #                       of the group when the forecast capacity is close to or exceeds the maximum
    #                       capacity.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IncreaseMaxCapacity</code> - Amazon EC2 Auto Scaling can increase the maximum capacity
    #                       of the group when the forecast capacity is close to or exceeds the maximum
    #                       capacity. The upper limit is determined by the forecasted capacity and the value
    #                       for <code>MaxCapacityBuffer</code>.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>Use caution when allowing the maximum capacity to be automatically increased. This
    #                   can lead to more instances being launched than intended if the increased maximum
    #                   capacity is not monitored and managed. The increased maximum capacity then becomes
    #                   the new normal maximum capacity for the Auto Scaling group until you manually update
    #                   it. The maximum capacity does not automatically decrease back to the original
    #                   maximum.</p>
    #            </important>
    #   @return [String]
    # @!attribute max_capacity_buffer
    #   <p>The size of the capacity buffer to use when the forecast capacity is close to or
    #               exceeds the maximum capacity. The value is specified as a percentage relative to the
    #               forecast capacity. For example, if the buffer is 10, this means a 10 percent buffer,
    #               such that if the forecast capacity is 50, and the maximum capacity is 40, then the
    #               effective maximum capacity is 55.</p>
    #            <p>If set to 0, Amazon EC2 Auto Scaling may scale capacity higher than the maximum capacity to equal but
    #               not exceed forecast capacity. </p>
    #            <p>Required if the <code>MaxCapacityBreachBehavior</code> property is set to
    #                   <code>IncreaseMaxCapacity</code>, and cannot be used otherwise.</p>
    #   @return [Integer]
    class PredictiveScalingConfiguration < Struct.new(
      nil,
      :metric_specifications,
      :mode,
      :scheduling_buffer_time,
      :max_capacity_breach_behavior,
      :max_capacity_buffer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a customized capacity metric for a predictive scaling policy.</p>
    # @!attribute metric_data_queries
    #   <p>One or more metric data queries to provide the data points for a capacity metric. Use
    #               multiple metric data queries only if you are performing a math expression on returned
    #               data. </p>
    #   @return [Array<Types::MetricDataQuery>]
    class PredictiveScalingCustomizedCapacityMetric < Struct.new(
      nil,
      :metric_data_queries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a custom load metric for a predictive scaling policy.</p>
    # @!attribute metric_data_queries
    #   <p>One or more metric data queries to provide the data points for a load metric. Use
    #               multiple metric data queries only if you are performing a math expression on returned
    #               data. </p>
    #   @return [Array<Types::MetricDataQuery>]
    class PredictiveScalingCustomizedLoadMetric < Struct.new(
      nil,
      :metric_data_queries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a custom scaling metric for a predictive scaling policy.</p>
    # @!attribute metric_data_queries
    #   <p>One or more metric data queries to provide the data points for a scaling metric. Use
    #               multiple metric data queries only if you are performing a math expression on returned
    #               data. </p>
    #   @return [Array<Types::MetricDataQuery>]
    class PredictiveScalingCustomizedScalingMetric < Struct.new(
      nil,
      :metric_data_queries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure specifies the metrics and target utilization settings for a predictive
    #             scaling policy. </p>
    #          <p>You must specify either a metric pair, or a load metric and a scaling metric
    #             individually. Specifying a metric pair instead of individual metrics provides a simpler
    #             way to configure metrics for a scaling policy. You choose the metric pair, and the
    #             policy automatically knows the correct sum and average statistics to use for the load
    #             metric and the scaling metric.</p>
    #          <p>Example</p>
    #          <ul>
    #             <li>
    #                <p>You create a predictive scaling policy and specify
    #                         <code>ALBRequestCount</code> as the value for the metric pair and
    #                         <code>1000.0</code> as the target value. For this type of metric, you must
    #                     provide the metric dimension for the corresponding target group, so you also
    #                     provide a resource label for the Application Load Balancer target group that is
    #                     attached to your Auto Scaling group.</p>
    #             </li>
    #             <li>
    #                <p>The number of requests the target group receives per minute provides the load
    #                     metric, and the request count averaged between the members of the target group
    #                     provides the scaling metric. In CloudWatch, this refers to the
    #                         <code>RequestCount</code> and <code>RequestCountPerTarget</code> metrics,
    #                     respectively.</p>
    #             </li>
    #             <li>
    #                <p>For optimal use of predictive scaling, you adhere to the best practice of
    #                     using a dynamic scaling policy to automatically scale between the minimum
    #                     capacity and maximum capacity in response to real-time changes in resource
    #                     utilization.</p>
    #             </li>
    #             <li>
    #                <p>Amazon EC2 Auto Scaling consumes data points for the load metric over the last 14 days and
    #                     creates an hourly load forecast for predictive scaling. (A minimum of 24 hours
    #                     of data is required.)</p>
    #             </li>
    #             <li>
    #                <p>After creating the load forecast, Amazon EC2 Auto Scaling determines when to reduce or
    #                     increase the capacity of your Auto Scaling group in each hour of the forecast period so
    #                     that the average number of requests received by each instance is as close to
    #                     1000 requests per minute as possible at all times.</p>
    #             </li>
    #          </ul>
    #          <p>For information about using custom metrics with predictive scaling, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/predictive-scaling-customized-metric-specification.html">Advanced predictive scaling policy configurations using custom metrics</a> in
    #             the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute target_value
    #   <p>Specifies the target utilization.</p>
    #            <note>
    #               <p>Some metrics are based on a count instead of a percentage, such as the request
    #                   count for an Application Load Balancer or the number of messages in an SQS queue. If the scaling policy
    #                   specifies one of these metrics, specify the target utilization as the optimal
    #                   average request or message count per instance during any one-minute interval.
    #               </p>
    #            </note>
    #   @return [Float]
    # @!attribute predefined_metric_pair_specification
    #   <p>The predefined metric pair specification from which Amazon EC2 Auto Scaling determines the
    #               appropriate scaling metric and load metric to use.</p>
    #   @return [Types::PredictiveScalingPredefinedMetricPair]
    # @!attribute predefined_scaling_metric_specification
    #   <p>The predefined scaling metric specification.</p>
    #   @return [Types::PredictiveScalingPredefinedScalingMetric]
    # @!attribute predefined_load_metric_specification
    #   <p>The predefined load metric specification.</p>
    #   @return [Types::PredictiveScalingPredefinedLoadMetric]
    # @!attribute customized_scaling_metric_specification
    #   <p>The customized scaling metric specification.</p>
    #   @return [Types::PredictiveScalingCustomizedScalingMetric]
    # @!attribute customized_load_metric_specification
    #   <p>The customized load metric specification.</p>
    #   @return [Types::PredictiveScalingCustomizedLoadMetric]
    # @!attribute customized_capacity_metric_specification
    #   <p>The customized capacity metric specification.</p>
    #   @return [Types::PredictiveScalingCustomizedCapacityMetric]
    class PredictiveScalingMetricSpecification < Struct.new(
      nil,
      :target_value,
      :predefined_metric_pair_specification,
      :predefined_scaling_metric_specification,
      :predefined_load_metric_specification,
      :customized_scaling_metric_specification,
      :customized_load_metric_specification,
      :customized_capacity_metric_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a load metric for a predictive scaling policy.</p>
    #          <p>When returned in the output of <code>DescribePolicies</code>, it indicates that a
    #             predictive scaling policy uses individually specified load and scaling metrics instead
    #             of a metric pair.</p>
    # @!attribute predefined_metric_type
    #   <p>The metric type.</p>
    #   @return [String]
    # @!attribute resource_label
    #   <p>A label that uniquely identifies a specific Application Load Balancer target group from which to determine
    #               the request count served by your Auto Scaling group. You can't specify a resource label unless
    #               the target group is attached to the Auto Scaling group.</p>
    #            <p>You create the resource label by appending the final portion of the load balancer ARN
    #               and the final portion of the target group ARN into a single value, separated by a forward
    #               slash (/). The format of the resource label is:</p>
    #            <p>
    #               <code>app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff</code>.</p>
    #            <p>Where:</p>
    #            <ul>
    #               <li>
    #                  <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                       the load balancer ARN</p>
    #               </li>
    #               <li>
    #                  <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                       of the target group ARN.</p>
    #               </li>
    #            </ul>
    #            <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #               the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #   @return [String]
    class PredictiveScalingPredefinedLoadMetric < Struct.new(
      nil,
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a metric pair for a predictive scaling policy. </p>
    # @!attribute predefined_metric_type
    #   <p>Indicates which metrics to use. There are two different types of metrics for each
    #               metric type: one is a load metric and one is a scaling metric. For example, if the
    #               metric type is <code>ASGCPUUtilization</code>, the Auto Scaling group's total CPU metric is used
    #               as the load metric, and the average CPU metric is used for the scaling metric.</p>
    #   @return [String]
    # @!attribute resource_label
    #   <p>A label that uniquely identifies a specific Application Load Balancer target group from which to determine
    #               the total and average request count served by your Auto Scaling group. You can't specify a
    #               resource label unless the target group is attached to the Auto Scaling group.</p>
    #            <p>You create the resource label by appending the final portion of the load balancer ARN
    #               and the final portion of the target group ARN into a single value, separated by a forward
    #               slash (/). The format of the resource label is:</p>
    #            <p>
    #               <code>app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff</code>.</p>
    #            <p>Where:</p>
    #            <ul>
    #               <li>
    #                  <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                       the load balancer ARN</p>
    #               </li>
    #               <li>
    #                  <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                       of the target group ARN.</p>
    #               </li>
    #            </ul>
    #            <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #               the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #   @return [String]
    class PredictiveScalingPredefinedMetricPair < Struct.new(
      nil,
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a scaling metric for a predictive scaling policy.</p>
    #          <p>When returned in the output of <code>DescribePolicies</code>, it indicates that a
    #             predictive scaling policy uses individually specified load and scaling metrics instead
    #             of a metric pair.</p>
    # @!attribute predefined_metric_type
    #   <p>The metric type.</p>
    #   @return [String]
    # @!attribute resource_label
    #   <p>A label that uniquely identifies a specific Application Load Balancer target group from which to determine
    #               the average request count served by your Auto Scaling group. You can't specify a resource label
    #               unless the target group is attached to the Auto Scaling group.</p>
    #            <p>You create the resource label by appending the final portion of the load balancer ARN
    #               and the final portion of the target group ARN into a single value, separated by a forward
    #               slash (/). The format of the resource label is:</p>
    #            <p>
    #               <code>app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff</code>.</p>
    #            <p>Where:</p>
    #            <ul>
    #               <li>
    #                  <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                       the load balancer ARN</p>
    #               </li>
    #               <li>
    #                  <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                       of the target group ARN.</p>
    #               </li>
    #            </ul>
    #            <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #               the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #   @return [String]
    class PredictiveScalingPredefinedScalingMetric < Struct.new(
      nil,
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a process type.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types">Types
    #                 of processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute process_name
    #   <p>One of the following processes:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Launch</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AddToLoadBalancer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AlarmNotification</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AZRebalance</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HealthCheck</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceRefresh</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReplaceUnhealthy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledActions</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ProcessType < Struct.new(
      nil,
      :process_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute lifecycle_transition
    #   <p>The lifecycle transition. For Auto Scaling groups, there are two major lifecycle
    #               transitions.</p>
    #            <ul>
    #               <li>
    #                  <p>To create a lifecycle hook for scale-out events, specify
    #                           <code>autoscaling:EC2_INSTANCE_LAUNCHING</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To create a lifecycle hook for scale-in events, specify
    #                           <code>autoscaling:EC2_INSTANCE_TERMINATING</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Required for new lifecycle hooks, but optional when updating existing hooks.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified
    #               notification target.</p>
    #            <p>Valid only if the notification target is an Amazon SNS topic or an Amazon SQS queue. Required
    #               for new lifecycle hooks, but optional when updating existing hooks.</p>
    #   @return [String]
    # @!attribute notification_target_arn
    #   <p>The Amazon Resource Name (ARN) of the notification target that Amazon EC2 Auto Scaling uses to notify
    #               you when an instance is in a wait state for the lifecycle hook. You can specify either
    #               an Amazon SNS topic or an Amazon SQS queue.</p>
    #            <p>If you specify an empty string, this overrides the current ARN.</p>
    #            <p>This operation uses the JSON format when sending notifications to an Amazon SQS queue, and
    #               an email key-value pair format when sending notifications to an Amazon SNS topic.</p>
    #            <p>When you specify a notification target, Amazon EC2 Auto Scaling sends it a test message. Test
    #               messages contain the following additional key-value pair: <code>"Event":
    #                   "autoscaling:TEST_NOTIFICATION"</code>.</p>
    #   @return [String]
    # @!attribute notification_metadata
    #   <p>Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to
    #               the notification target.</p>
    #   @return [String]
    # @!attribute heartbeat_timeout
    #   <p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. The
    #               range is from <code>30</code> to <code>7200</code> seconds. The default value is
    #                   <code>3600</code> seconds (1 hour).</p>
    #   @return [Integer]
    # @!attribute default_result
    #   <p>The action the Auto Scaling group takes when the lifecycle hook timeout elapses or if an
    #               unexpected failure occurs. The default value is <code>ABANDON</code>.</p>
    #            <p>Valid values: <code>CONTINUE</code> | <code>ABANDON</code>
    #            </p>
    #   @return [String]
    class PutLifecycleHookInput < Struct.new(
      nil,
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_transition,
      :role_arn,
      :notification_target_arn,
      :notification_metadata,
      :heartbeat_timeout,
      :default_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutLifecycleHookOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic.</p>
    #   @return [String]
    # @!attribute notification_types
    #   <p>The type of event that causes the notification to be sent. To query the notification
    #               types supported by Amazon EC2 Auto Scaling, call the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAutoScalingNotificationTypes.html">DescribeAutoScalingNotificationTypes</a> API.</p>
    #   @return [Array<String>]
    class PutNotificationConfigurationInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :topic_arn,
      :notification_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>One of the following policy types: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TargetTrackingScaling</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StepScaling</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SimpleScaling</code> (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PredictiveScaling</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute adjustment_type
    #   <p>Specifies how the scaling adjustment is interpreted (for example, an absolute number
    #               or a percentage). The valid values are <code>ChangeInCapacity</code>,
    #                   <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
    #            <p>Required if the policy type is <code>StepScaling</code> or <code>SimpleScaling</code>.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment">Scaling adjustment types</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute min_adjustment_step
    #   <p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code>
    #               instead.</p>
    #   @return [Integer]
    # @!attribute min_adjustment_magnitude
    #   <p>The minimum value to scale by when the adjustment type is
    #                   <code>PercentChangeInCapacity</code>. For example, suppose that you create a step
    #               scaling policy to scale out an Auto Scaling group by 25 percent and you specify a
    #                   <code>MinAdjustmentMagnitude</code> of 2. If the group has 4 instances and the
    #               scaling policy is performed, 25 percent of 4 is 1. However, because you specified a
    #                   <code>MinAdjustmentMagnitude</code> of 2, Amazon EC2 Auto Scaling scales out the group by 2
    #               instances.</p>
    #            <p>Valid only if the policy type is <code>StepScaling</code> or
    #                   <code>SimpleScaling</code>. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment">Scaling adjustment types</a> in the <i>Amazon EC2 Auto Scaling User
    #               Guide</i>.</p>
    #            <note>
    #               <p>Some Auto Scaling groups use instance weights. In this case, set the
    #                       <code>MinAdjustmentMagnitude</code> to a value that is at least as large as your
    #                   largest instance weight.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute scaling_adjustment
    #   <p>The amount by which to scale, based on the specified adjustment type. A positive value
    #               adds to the current capacity while a negative number removes from the current capacity.
    #               For exact capacity, you must specify a non-negative value.</p>
    #            <p>Required if the policy type is <code>SimpleScaling</code>. (Not used with any other
    #               policy type.) </p>
    #   @return [Integer]
    # @!attribute cooldown
    #   <p>A cooldown period, in seconds, that applies to a specific simple scaling policy. When
    #               a cooldown period is specified here, it overrides the default cooldown.</p>
    #            <p>Valid only if the policy type is <code>SimpleScaling</code>. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Default: None</p>
    #   @return [Integer]
    # @!attribute metric_aggregation_type
    #   <p>The aggregation type for the CloudWatch metrics. The valid values are <code>Minimum</code>,
    #                   <code>Maximum</code>, and <code>Average</code>. If the aggregation type is null, the
    #               value is treated as <code>Average</code>.</p>
    #            <p>Valid only if the policy type is <code>StepScaling</code>.</p>
    #   @return [String]
    # @!attribute step_adjustments
    #   <p>A set of adjustments that enable you to scale based on the size of the alarm
    #               breach.</p>
    #            <p>Required if the policy type is <code>StepScaling</code>. (Not used with any other
    #               policy type.) </p>
    #   @return [Array<Types::StepAdjustment>]
    # @!attribute estimated_instance_warmup
    #   <p>
    #               <i>Not needed if the default instance warmup is defined for the
    #                   group.</i>
    #            </p>
    #            <p>The estimated time, in seconds, until a newly launched instance can contribute to the
    #               CloudWatch metrics. This warm-up period applies to instances launched due to a specific target
    #               tracking or step scaling policy. When a warm-up period is specified here, it overrides
    #               the default instance warmup.</p>
    #            <p>Valid only if the policy type is <code>TargetTrackingScaling</code> or
    #                   <code>StepScaling</code>.</p>
    #            <note>
    #               <p>The default is to use the value for the default instance warmup defined for the
    #                   group. If default instance warmup is null, then <code>EstimatedInstanceWarmup</code>
    #                   falls back to the value of default cooldown.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute target_tracking_configuration
    #   <p>A target tracking scaling policy. Provides support for predefined or custom
    #               metrics.</p>
    #            <p>The following predefined metrics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASGAverageCPUUtilization</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASGAverageNetworkIn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASGAverageNetworkOut</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALBRequestCountPerTarget</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you specify <code>ALBRequestCountPerTarget</code> for the metric, you must specify
    #               the <code>ResourceLabel</code> property with the
    #                   <code>PredefinedMetricSpecification</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html">TargetTrackingConfiguration</a> in the <i>Amazon EC2 Auto Scaling API
    #                   Reference</i>.</p>
    #            <p>Required if the policy type is <code>TargetTrackingScaling</code>.</p>
    #   @return [Types::TargetTrackingConfiguration]
    # @!attribute enabled
    #   <p>Indicates whether the scaling policy is enabled or disabled. The default is enabled.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enable-disable-scaling-policy.html">Disable a
    #                   scaling policy for an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute predictive_scaling_configuration
    #   <p>A predictive scaling policy. Provides support for predefined and custom
    #               metrics.</p>
    #            <p>Predefined metrics include CPU utilization, network in/out, and the Application Load
    #               Balancer request count.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredictiveScalingConfiguration.html">PredictiveScalingConfiguration</a> in the <i>Amazon EC2 Auto Scaling API
    #                   Reference</i>.</p>
    #            <p>Required if the policy type is <code>PredictiveScaling</code>.</p>
    #   @return [Types::PredictiveScalingConfiguration]
    class PutScalingPolicyInput < Struct.new(
      nil,
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
      :predictive_scaling_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of PutScalingPolicy.</p>
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute alarms
    #   <p>The CloudWatch alarms created for the target tracking scaling policy.</p>
    #   @return [Array<Types::Alarm>]
    class PutScalingPolicyOutput < Struct.new(
      nil,
      :policy_arn,
      :alarms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute scheduled_action_name
    #   <p>The name of this scaling action.</p>
    #   @return [String]
    # @!attribute time
    #   <p>This property is no longer used.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ format in UTC/GMT
    #               only and in quotes (for example, <code>"2021-06-01T00:00:00Z"</code>).</p>
    #            <p>If you specify <code>Recurrence</code> and <code>StartTime</code>, Amazon EC2 Auto Scaling performs
    #               the action at this time, and then performs the action based on the specified
    #               recurrence.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time for the recurring schedule to end, in UTC. For example,
    #                   <code>"2021-06-01T00:00:00Z"</code>.</p>
    #   @return [Time]
    # @!attribute recurrence
    #   <p>The recurring schedule for this action. This format consists of five fields separated
    #               by white spaces: [Minute] [Hour] [Day_of_Month] [Month_of_Year] [Day_of_Week]. The value
    #               must be in quotes (for example, <code>"30 0 1 1,6,12 *"</code>). For more information
    #               about this format, see <a href="http://crontab.org">Crontab</a>.</p>
    #            <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
    #                   <code>Recurrence</code>, they form the boundaries of when the recurring action
    #               starts and stops.</p>
    #            <p>Cron expressions use Universal Coordinated Time (UTC) by default.</p>
    #   @return [String]
    # @!attribute min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
    #               action runs and the capacity it attempts to maintain. It can scale beyond this capacity
    #               if you add more scaling conditions. </p>
    #            <note>
    #               <p>You must specify at least one of the following properties: <code>MaxSize</code>,
    #                       <code>MinSize</code>, or <code>DesiredCapacity</code>. </p>
    #            </note>
    #   @return [Integer]
    # @!attribute time_zone
    #   <p>Specifies the time zone for a cron expression. If a time zone is not provided, UTC is
    #               used by default. </p>
    #            <p>Valid values are the canonical names of the IANA time zones, derived from the IANA
    #               Time Zone Database (such as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For
    #               more information, see <a href="https://en.wikipedia.org/wiki/List_of_tz_database_time_zones">https://en.wikipedia.org/wiki/List_of_tz_database_time_zones</a>.</p>
    #   @return [String]
    class PutScheduledUpdateGroupActionInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :scheduled_action_name,
      :time,
      :start_time,
      :end_time,
      :recurrence,
      :min_size,
      :max_size,
      :desired_capacity,
      :time_zone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute max_group_prepared_capacity
    #   <p>Specifies the maximum number of instances that are allowed to be in the warm pool or
    #               in any state except <code>Terminated</code> for the Auto Scaling group. This is an optional
    #               property. Specify it only if you do not want the warm pool size to be determined by the
    #               difference between the group's maximum capacity and its desired capacity. </p>
    #            <important>
    #               <p>If a value for <code>MaxGroupPreparedCapacity</code> is not specified, Amazon EC2 Auto Scaling
    #                   launches and maintains the difference between the group's maximum capacity and its
    #                   desired capacity. If you specify a value for <code>MaxGroupPreparedCapacity</code>,
    #                   Amazon EC2 Auto Scaling uses the difference between the <code>MaxGroupPreparedCapacity</code> and
    #                   the desired capacity instead. </p>
    #               <p>The size of the warm pool is dynamic. Only when
    #                       <code>MaxGroupPreparedCapacity</code> and <code>MinSize</code> are set to the
    #                   same value does the warm pool have an absolute size.</p>
    #            </important>
    #            <p>If the desired capacity of the Auto Scaling group is higher than the
    #                   <code>MaxGroupPreparedCapacity</code>, the capacity of the warm pool is 0, unless
    #               you specify a value for <code>MinSize</code>. To remove a value that you previously set,
    #               include the property but specify -1 for the value. </p>
    #   @return [Integer]
    # @!attribute min_size
    #   <p>Specifies the minimum number of instances to maintain in the warm pool. This helps you
    #               to ensure that there is always a certain number of warmed instances available to handle
    #               traffic spikes. Defaults to 0 if not specified.</p>
    #   @return [Integer]
    # @!attribute pool_state
    #   <p>Sets the instance state to transition to after the lifecycle actions are complete.
    #               Default is <code>Stopped</code>.</p>
    #   @return [String]
    # @!attribute instance_reuse_policy
    #   <p>Indicates whether instances in the Auto Scaling group can be returned to the warm pool on
    #               scale in. The default is to terminate instances in the Auto Scaling group when the group scales
    #               in.</p>
    #   @return [Types::InstanceReusePolicy]
    class PutWarmPoolInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :max_group_prepared_capacity,
      :min_size,
      :pool_state,
      :instance_reuse_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutWarmPoolOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #   @return [String]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute lifecycle_action_token
    #   <p>A token that uniquely identifies a specific lifecycle action associated with an
    #               instance. Amazon EC2 Auto Scaling sends this token to the notification target that you specified when
    #               you created the lifecycle hook.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #   @return [String]
    class RecordLifecycleActionHeartbeatInput < Struct.new(
      nil,
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_action_token,
      :instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RecordLifecycleActionHeartbeatOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the preferences for an instance refresh.</p>
    # @!attribute min_healthy_percentage
    #   <p>Specifies the minimum percentage of the group to keep in service, healthy, and ready
    #               to use to support your workload to allow the operation to continue. The value is
    #               expressed as a percentage of the desired capacity of the Auto Scaling group. Value range is 0 to
    #               100.</p>
    #            <p>If you do not specify this property, the default is 90 percent, or the percentage set
    #               in the instance maintenance policy for the Auto Scaling group, if defined.</p>
    #   @return [Integer]
    # @!attribute instance_warmup
    #   <p>A time period, in seconds, during which an instance refresh waits before moving on to
    #               replacing the next instance after a new instance enters the <code>InService</code>
    #               state.</p>
    #            <p>This property is not required for normal usage. Instead, use the
    #                   <code>DefaultInstanceWarmup</code> property of the Auto Scaling group. The
    #                   <code>InstanceWarmup</code> and <code>DefaultInstanceWarmup</code> properties work
    #               the same way. Only specify this property if you must override the
    #                   <code>DefaultInstanceWarmup</code> property. </p>
    #            <p> If you do not specify this property, the instance warmup by default is the value of
    #               the <code>DefaultInstanceWarmup</code> property, if defined (which is recommended in all
    #               cases), or the <code>HealthCheckGracePeriod</code> property otherwise.</p>
    #   @return [Integer]
    # @!attribute checkpoint_percentages
    #   <p>(Optional) Threshold values for each checkpoint in ascending order. Each number must
    #               be unique. To replace all instances in the Auto Scaling group, the last number in the array must
    #               be <code>100</code>.</p>
    #            <p>For usage examples, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-adding-checkpoints-instance-refresh.html">Add checkpoints to an instance refresh</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Array<Integer>]
    # @!attribute checkpoint_delay
    #   <p>(Optional) The amount of time, in seconds, to wait after a checkpoint before
    #               continuing. This property is optional, but if you specify a value for it, you must also
    #               specify a value for <code>CheckpointPercentages</code>. If you specify a value for
    #                   <code>CheckpointPercentages</code> and not for <code>CheckpointDelay</code>, the
    #                   <code>CheckpointDelay</code> defaults to <code>3600</code> (1 hour). </p>
    #   @return [Integer]
    # @!attribute skip_matching
    #   <p>(Optional) Indicates whether skip matching is enabled. If enabled (<code>true</code>),
    #               then Amazon EC2 Auto Scaling skips replacing instances that match the desired configuration. If no
    #               desired configuration is specified, then it skips replacing instances that have the same
    #               launch template and instance types that the Auto Scaling group was using before the start of the
    #               instance refresh. The default is <code>false</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh-skip-matching.html">Use an
    #                   instance refresh with skip matching</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute auto_rollback
    #   <p>(Optional) Indicates whether to roll back the Auto Scaling group to its previous configuration
    #               if the instance refresh fails or a CloudWatch alarm threshold is met. The default is
    #                   <code>false</code>.</p>
    #            <p>A rollback is not supported in the following situations: </p>
    #            <ul>
    #               <li>
    #                  <p>There is no desired configuration specified for the instance refresh.</p>
    #               </li>
    #               <li>
    #                  <p>The Auto Scaling group has a launch template that uses an Amazon Web Services Systems Manager
    #                       parameter instead of an AMI ID for the <code>ImageId</code> property.</p>
    #               </li>
    #               <li>
    #                  <p>The Auto Scaling group uses the launch template's <code>$Latest</code> or
    #                           <code>$Default</code> version.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/instance-refresh-rollback.html">Undo changes with a
    #                   rollback</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute scale_in_protected_instances
    #   <p>Choose the behavior that you want Amazon EC2 Auto Scaling to use if instances protected from scale in
    #               are found. </p>
    #            <p>The following lists the valid values:</p>
    #            <dl>
    #               <dt>Refresh</dt>
    #               <dd>
    #                  <p>Amazon EC2 Auto Scaling replaces instances that are protected from scale in.</p>
    #               </dd>
    #               <dt>Ignore</dt>
    #               <dd>
    #                  <p>Amazon EC2 Auto Scaling ignores instances that are protected from scale in and continues
    #                           to replace instances that are not protected.</p>
    #               </dd>
    #               <dt>Wait (default)</dt>
    #               <dd>
    #                  <p>Amazon EC2 Auto Scaling waits one hour for you to remove scale-in protection. Otherwise,
    #                           the instance refresh will fail.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute standby_instances
    #   <p>Choose the behavior that you want Amazon EC2 Auto Scaling to use if instances in <code>Standby</code>
    #               state are found.</p>
    #            <p>The following lists the valid values:</p>
    #            <dl>
    #               <dt>Terminate</dt>
    #               <dd>
    #                  <p>Amazon EC2 Auto Scaling terminates instances that are in <code>Standby</code>.</p>
    #               </dd>
    #               <dt>Ignore</dt>
    #               <dd>
    #                  <p>Amazon EC2 Auto Scaling ignores instances that are in <code>Standby</code> and continues
    #                           to replace instances that are in the <code>InService</code> state.</p>
    #               </dd>
    #               <dt>Wait (default)</dt>
    #               <dd>
    #                  <p>Amazon EC2 Auto Scaling waits one hour for you to return the instances to service.
    #                           Otherwise, the instance refresh will fail.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute alarm_specification
    #   <p>(Optional) The CloudWatch alarm specification. CloudWatch alarms can be used to identify any
    #               issues and fail the operation if an alarm threshold is met.</p>
    #   @return [Types::AlarmSpecification]
    # @!attribute max_healthy_percentage
    #   <p>Specifies the maximum percentage of the group that can be in service and healthy, or
    #               pending, to support your workload when replacing instances. The value is expressed as a
    #               percentage of the desired capacity of the Auto Scaling group. Value range is 100 to 200.</p>
    #            <p>If you specify <code>MaxHealthyPercentage</code>, you must also specify
    #                   <code>MinHealthyPercentage</code>, and the difference between them cannot be greater
    #               than 100. A larger range increases the number of instances that can be replaced at the
    #               same time.</p>
    #            <p>If you do not specify this property, the default is 100 percent, or the percentage set
    #               in the instance maintenance policy for the Auto Scaling group, if defined.</p>
    #            <important>
    #               <p>Explicitly setting <code>MaxHealthyPercentage</code> to 100 is not equivalent to
    #               omitting it. When <code>MaxHealthyPercentage</code> is explicitly set and it is
    #               mathematically impossible to replace instances while honoring both
    #               <code>MinHealthyPercentage</code> and <code>MaxHealthyPercentage</code> bounds
    #               simultaneously, Auto Scaling launches a new instance before terminating an old one
    #               (temporarily exceeding the desired capacity). When <code>MaxHealthyPercentage</code>
    #               is omitted, Auto Scaling terminates an instance and launches its replacement
    #               simultaneously. This behavioral difference can affect workflows that depend on
    #               instance replacement ordering.</p>
    #            </important>
    #   @return [Integer]
    # @!attribute bake_time
    #   <p>
    #               The amount of time, in seconds, to wait at the end of an instance refresh before the instance refresh is considered complete.
    #           </p>
    #   @return [Integer]
    class RefreshPreferences < Struct.new(
      nil,
      :min_healthy_percentage,
      :instance_warmup,
      :checkpoint_percentages,
      :checkpoint_delay,
      :skip_matching,
      :auto_rollback,
      :scale_in_protected_instances,
      :standby_instances,
      :alarm_specification,
      :max_healthy_percentage,
      :bake_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You already have a pending update to an Amazon EC2 Auto Scaling resource (for example, an Auto Scaling group,
    #             instance, or load balancer).</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class ResourceContentionFault < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation can't be performed because the resource is in use.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class ResourceInUseFault < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute scaling_processes
    #   <p>One or more of the following processes:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Launch</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AddToLoadBalancer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AlarmNotification</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AZRebalance</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HealthCheck</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceRefresh</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReplaceUnhealthy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledActions</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you omit this property, all processes are specified.</p>
    #   @return [Array<String>]
    class ResumeProcessesInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :scaling_processes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Defines the specific triggers that cause instances to be retained in a Retained state rather than terminated. Each trigger corresponds to a different failure scenario during the instance lifecycle. This allows fine-grained control over when to preserve instances for manual intervention.
    #         </p>
    # @!attribute terminate_hook_abandon
    #   <p>
    #               Specifies the action when a termination lifecycle hook is abandoned due to failure, timeout, or explicit abandonment (calling CompleteLifecycleAction).
    #           </p>
    #            <p>
    #               Set to <code>retain</code> to move instances to a retained state. Set to <code>terminate</code> for default termination behavior.
    #           </p>
    #            <p>
    #               Retained instances don't count toward desired capacity and remain until you call <code>TerminateInstanceInAutoScalingGroup</code>.
    #           </p>
    #   @return [String]
    class RetentionTriggers < Struct.new(
      nil,
      :terminate_hook_abandon,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an instance refresh rollback.</p>
    # @!attribute rollback_reason
    #   <p>The reason for this instance refresh rollback (for example, whether a manual or
    #               automatic rollback was initiated).</p>
    #   @return [String]
    # @!attribute rollback_start_time
    #   <p>The date and time at which the rollback began.</p>
    #   @return [Time]
    # @!attribute percentage_complete_on_rollback
    #   <p>Indicates the value of <code>PercentageComplete</code> at the time the rollback
    #               started.</p>
    #   @return [Integer]
    # @!attribute instances_to_update_on_rollback
    #   <p>Indicates the value of <code>InstancesToUpdate</code> at the time the rollback
    #               started.</p>
    #   @return [Integer]
    # @!attribute progress_details_on_rollback
    #   <p>Reports progress on replacing instances in an Auto Scaling group that has a warm pool. This
    #               includes separate details for instances in the warm pool and instances in the Auto Scaling group
    #               (the live pool).</p>
    #   @return [Types::InstanceRefreshProgressDetails]
    class RollbackDetails < Struct.new(
      nil,
      :rollback_reason,
      :rollback_start_time,
      :percentage_complete_on_rollback,
      :instances_to_update_on_rollback,
      :progress_details_on_rollback,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    class RollbackInstanceRefreshInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_refresh_id
    #   <p>The instance refresh ID associated with the request. This is the unique ID assigned to
    #               the instance refresh when it was started.</p>
    #   @return [String]
    class RollbackInstanceRefreshOutput < Struct.new(
      nil,
      :instance_refresh_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation can't be performed because there are scaling activities in
    #             progress.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class ScalingActivityInProgressFault < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a scaling policy.</p>
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>One of the following policy types: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TargetTrackingScaling</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StepScaling</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SimpleScaling</code> (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PredictiveScaling</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html">Target tracking
    #                   scaling policies</a> and <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html">Step and simple scaling
    #                   policies</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute adjustment_type
    #   <p>Specifies how the scaling adjustment is interpreted (for example, an absolute number
    #               or a percentage). The valid values are <code>ChangeInCapacity</code>,
    #                   <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
    #   @return [String]
    # @!attribute min_adjustment_step
    #   <p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code>
    #               instead.</p>
    #   @return [Integer]
    # @!attribute min_adjustment_magnitude
    #   <p>The minimum value to scale by when the adjustment type is
    #                   <code>PercentChangeInCapacity</code>. </p>
    #   @return [Integer]
    # @!attribute scaling_adjustment
    #   <p>The amount by which to scale, based on the specified adjustment type. A positive value
    #               adds to the current capacity while a negative number removes from the current
    #               capacity.</p>
    #   @return [Integer]
    # @!attribute cooldown
    #   <p>The duration of the policy's cooldown period, in seconds.</p>
    #   @return [Integer]
    # @!attribute step_adjustments
    #   <p>A set of adjustments that enable you to scale based on the size of the alarm
    #               breach.</p>
    #   @return [Array<Types::StepAdjustment>]
    # @!attribute metric_aggregation_type
    #   <p>The aggregation type for the CloudWatch metrics. The valid values are <code>Minimum</code>,
    #                   <code>Maximum</code>, and <code>Average</code>.</p>
    #   @return [String]
    # @!attribute estimated_instance_warmup
    #   <p>The estimated time, in seconds, until a newly launched instance can contribute to the
    #               CloudWatch metrics.</p>
    #   @return [Integer]
    # @!attribute alarms
    #   <p>The CloudWatch alarms related to the policy.</p>
    #   @return [Array<Types::Alarm>]
    # @!attribute target_tracking_configuration
    #   <p>A target tracking scaling policy.</p>
    #   @return [Types::TargetTrackingConfiguration]
    # @!attribute enabled
    #   <p>Indicates whether the policy is enabled (<code>true</code>) or disabled
    #                   (<code>false</code>).</p>
    #   @return [Boolean]
    # @!attribute predictive_scaling_configuration
    #   <p>A predictive scaling policy.</p>
    #   @return [Types::PredictiveScalingConfiguration]
    class ScalingPolicy < Struct.new(
      nil,
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
      :predictive_scaling_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a scheduled scaling
    #             action.</p>
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #   @return [String]
    # @!attribute scheduled_action_arn
    #   <p>The Amazon Resource Name (ARN) of the scheduled action.</p>
    #   @return [String]
    # @!attribute time
    #   <p>This property is no longer used.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>The date and time in UTC for this action to start. For example,
    #                   <code>"2019-06-01T00:00:00Z"</code>. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time in UTC for the recurring schedule to end. For example,
    #                   <code>"2019-06-01T00:00:00Z"</code>. </p>
    #   @return [Time]
    # @!attribute recurrence
    #   <p>The recurring schedule for the action, in Unix cron syntax format.</p>
    #            <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
    #                   <code>Recurrence</code>, they form the boundaries of when the recurring action
    #               starts and stops.</p>
    #   @return [String]
    # @!attribute min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
    #               action runs and the capacity it attempts to maintain.</p>
    #   @return [Integer]
    # @!attribute time_zone
    #   <p>The time zone for the cron expression.</p>
    #   @return [String]
    class ScheduledUpdateGroupAction < Struct.new(
      nil,
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
      :time_zone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes information used for one or more scheduled scaling action updates in a
    #             <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_BatchPutScheduledUpdateGroupAction.html">BatchPutScheduledUpdateGroupAction</a>
    #             operation.</p>
    # @!attribute scheduled_action_name
    #   <p>The name of the scaling action.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time for the action to start, in YYYY-MM-DDThh:mm:ssZ format in UTC/GMT
    #               only and in quotes (for example, <code>"2019-06-01T00:00:00Z"</code>).</p>
    #            <p>If you specify <code>Recurrence</code> and <code>StartTime</code>, Amazon EC2 Auto Scaling performs
    #               the action at this time, and then performs the action based on the specified
    #               recurrence.</p>
    #            <p>If you try to schedule the action in the past, Amazon EC2 Auto Scaling returns an error
    #               message.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time for the recurring schedule to end, in UTC.</p>
    #   @return [Time]
    # @!attribute recurrence
    #   <p>The recurring schedule for the action, in Unix cron syntax format. This format
    #               consists of five fields separated by white spaces: [Minute] [Hour] [Day_of_Month]
    #               [Month_of_Year] [Day_of_Week]. The value must be in quotes (for example, <code>"30 0 1
    #                   1,6,12 *"</code>). For more information about this format, see <a href="http://crontab.org">Crontab</a>.</p>
    #            <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
    #                   <code>Recurrence</code>, they form the boundaries of when the recurring action
    #               starts and stops.</p>
    #            <p>Cron expressions use Universal Coordinated Time (UTC) by default.</p>
    #   @return [String]
    # @!attribute min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
    #               action runs and the capacity it attempts to maintain.</p>
    #   @return [Integer]
    # @!attribute time_zone
    #   <p>Specifies the time zone for a cron expression. If a time zone is not provided, UTC is
    #               used by default. </p>
    #            <p>Valid values are the canonical names of the IANA time zones, derived from the IANA
    #               Time Zone Database (such as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For
    #               more information, see <a href="https://en.wikipedia.org/wiki/List_of_tz_database_time_zones">https://en.wikipedia.org/wiki/List_of_tz_database_time_zones</a>.</p>
    #   @return [String]
    class ScheduledUpdateGroupActionRequest < Struct.new(
      nil,
      :scheduled_action_name,
      :start_time,
      :end_time,
      :recurrence,
      :min_size,
      :max_size,
      :desired_capacity,
      :time_zone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service-linked role is not yet ready for use.</p>
    # @!attribute message
    #   @return [String]
    class ServiceLinkedRoleFailure < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after this operation
    #               completes and the capacity it attempts to maintain.</p>
    #   @return [Integer]
    # @!attribute honor_cooldown
    #   <p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before initiating
    #               a scaling activity to set your Auto Scaling group to its new capacity. By default, Amazon EC2 Auto Scaling does
    #               not honor the cooldown period during manual scaling activities.</p>
    #   @return [Boolean]
    class SetDesiredCapacityInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :desired_capacity,
      :honor_cooldown,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #   @return [String]
    # @!attribute health_status
    #   <p>The health status of the instance. Set to <code>Healthy</code> to have the instance
    #               remain in service. Set to <code>Unhealthy</code> to have the instance be out of service.
    #               Amazon EC2 Auto Scaling terminates and replaces the unhealthy instance.</p>
    #   @return [String]
    # @!attribute should_respect_grace_period
    #   <p>If the Auto Scaling group of the specified instance has a <code>HealthCheckGracePeriod</code>
    #               specified for the group, by default, this call respects the grace period. Set this to
    #                   <code>False</code>, to have the call not respect the grace period associated with
    #               the group.</p>
    #            <p>For more information about the health check grace period, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html">Set the health check grace period for an Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Boolean]
    class SetInstanceHealthInput < Struct.new(
      nil,
      :instance_id,
      :health_status,
      :should_respect_grace_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_ids
    #   <p>One or more instance IDs. You can specify up to 50 instances.</p>
    #   @return [Array<String>]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute protected_from_scale_in
    #   <p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling
    #               in.</p>
    #   @return [Boolean]
    class SetInstanceProtectionInput < Struct.new(
      nil,
      :instance_ids,
      :auto_scaling_group_name,
      :protected_from_scale_in,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SetInstanceProtectionOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute strategy
    #   <p>The strategy to use for the instance refresh. The default value is
    #                   <code>Rolling</code>.</p>
    #   @return [String]
    # @!attribute desired_configuration
    #   <p>The desired configuration. For example, the desired configuration can specify a new
    #               launch template or a new version of the current launch template.</p>
    #            <p>Once the instance refresh succeeds, Amazon EC2 Auto Scaling updates the settings of the Auto Scaling group to
    #               reflect the new desired configuration. </p>
    #            <note>
    #               <p>When you specify a new launch template or a new version of the current launch
    #                   template for your desired configuration, consider enabling the
    #                       <code>SkipMatching</code> property in preferences. If it's enabled, Amazon EC2 Auto Scaling
    #                   skips replacing instances that already use the specified launch template and
    #                   instance types. This can help you reduce the number of replacements that are
    #                   required to apply updates. </p>
    #            </note>
    #   @return [Types::DesiredConfiguration]
    # @!attribute preferences
    #   <p>Sets your preferences for the instance refresh so that it performs as expected when
    #               you start it. Includes the instance warmup time, the minimum and maximum healthy
    #               percentages, and the behaviors that you want Amazon EC2 Auto Scaling to use if instances that are in
    #                   <code>Standby</code> state or protected from scale in are found. You can also choose
    #               to enable additional features, such as the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto rollback</p>
    #               </li>
    #               <li>
    #                  <p>Checkpoints</p>
    #               </li>
    #               <li>
    #                  <p>CloudWatch alarms</p>
    #               </li>
    #               <li>
    #                  <p>Skip matching</p>
    #               </li>
    #               <li>
    #                  <p>Bake time</p>
    #               </li>
    #            </ul>
    #   @return [Types::RefreshPreferences]
    class StartInstanceRefreshInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :strategy,
      :desired_configuration,
      :preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_refresh_id
    #   <p>A unique ID for tracking the progress of the instance refresh.</p>
    #   @return [String]
    class StartInstanceRefreshOutput < Struct.new(
      nil,
      :instance_refresh_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes information used to create a step adjustment for a step scaling
    #             policy.</p>
    #          <p>For the following examples, suppose that you have an alarm with a breach threshold of
    #             50:</p>
    #          <ul>
    #             <li>
    #                <p>To trigger the adjustment when the metric is greater than or equal to 50 and
    #                     less than 60, specify a lower bound of 0 and an upper bound of 10.</p>
    #             </li>
    #             <li>
    #                <p>To trigger the adjustment when the metric is greater than 40 and less than or
    #                     equal to 50, specify a lower bound of -10 and an upper bound of 0.</p>
    #             </li>
    #          </ul>
    #          <p>There are a few rules for the step adjustments for your step policy:</p>
    #          <ul>
    #             <li>
    #                <p>The ranges of your step adjustments can't overlap or have a gap.</p>
    #             </li>
    #             <li>
    #                <p>At most, one step adjustment can have a null lower bound. If one step
    #                     adjustment has a negative lower bound, then there must be a step adjustment with
    #                     a null lower bound.</p>
    #             </li>
    #             <li>
    #                <p>At most, one step adjustment can have a null upper bound. If one step
    #                     adjustment has a positive upper bound, then there must be a step adjustment with
    #                     a null upper bound.</p>
    #             </li>
    #             <li>
    #                <p>The upper and lower bound can't be null in the same step adjustment.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-steps">Step
    #                 adjustments</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute metric_interval_lower_bound
    #   <p>The lower bound for the difference between the alarm threshold and the CloudWatch metric. If
    #               the metric value is above the breach threshold, the lower bound is inclusive (the metric
    #               must be greater than or equal to the threshold plus the lower bound). Otherwise, it is
    #               exclusive (the metric must be greater than the threshold plus the lower bound). A null
    #               value indicates negative infinity.</p>
    #   @return [Float]
    # @!attribute metric_interval_upper_bound
    #   <p>The upper bound for the difference between the alarm threshold and the CloudWatch metric. If
    #               the metric value is above the breach threshold, the upper bound is exclusive (the metric
    #               must be less than the threshold plus the upper bound). Otherwise, it is inclusive (the
    #               metric must be less than or equal to the threshold plus the upper bound). A null value
    #               indicates positive infinity.</p>
    #            <p>The upper bound must be greater than the lower bound.</p>
    #   @return [Float]
    # @!attribute scaling_adjustment
    #   <p>The amount by which to scale, based on the specified adjustment type. A positive value
    #               adds to the current capacity while a negative number removes from the current capacity.
    #               For exact capacity, you must specify a non-negative value.</p>
    #   @return [Integer]
    class StepAdjustment < Struct.new(
      nil,
      :metric_interval_lower_bound,
      :metric_interval_upper_bound,
      :scaling_adjustment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute scaling_processes
    #   <p>One or more of the following processes:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Launch</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AddToLoadBalancer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AlarmNotification</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AZRebalance</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HealthCheck</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceRefresh</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReplaceUnhealthy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledActions</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you omit this property, all processes are specified.</p>
    #   @return [Array<String>]
    class SuspendProcessesInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :scaling_processes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an auto scaling process that has been suspended.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types">Types
    #                 of processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    # @!attribute process_name
    #   <p>The name of the suspended process.</p>
    #   @return [String]
    # @!attribute suspension_reason
    #   <p>The reason that the process was suspended.</p>
    #   @return [String]
    class SuspendedProcess < Struct.new(
      nil,
      :process_name,
      :suspension_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag for an Auto Scaling group.</p>
    # @!attribute resource_id
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource. The only supported value is
    #               <code>auto-scaling-group</code>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value.</p>
    #   @return [String]
    # @!attribute propagate_at_launch
    #   <p>Determines whether the tag is added to new instances as they are launched in the
    #               group.</p>
    #   @return [Boolean]
    class Tag < Struct.new(
      nil,
      :resource_id,
      :resource_type,
      :key,
      :value,
      :propagate_at_launch,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag for an Auto Scaling group.</p>
    # @!attribute resource_id
    #   <p>The name of the group.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource. The only supported value is
    #               <code>auto-scaling-group</code>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value.</p>
    #   @return [String]
    # @!attribute propagate_at_launch
    #   <p>Determines whether the tag is added to new instances as they are launched in the
    #               group.</p>
    #   @return [Boolean]
    class TagDescription < Struct.new(
      nil,
      :resource_id,
      :resource_type,
      :key,
      :value,
      :propagate_at_launch,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a target tracking scaling policy configuration to use with Amazon EC2 Auto Scaling.</p>
    # @!attribute predefined_metric_specification
    #   <p>A predefined metric. You must specify either a predefined metric or a customized
    #               metric.</p>
    #   @return [Types::PredefinedMetricSpecification]
    # @!attribute customized_metric_specification
    #   <p>A customized metric. You must specify either a predefined metric or a customized
    #               metric.</p>
    #   @return [Types::CustomizedMetricSpecification]
    # @!attribute target_value
    #   <p>The target value for the metric.</p>
    #            <note>
    #               <p>Some metrics are based on a count instead of a percentage, such as the request
    #                   count for an Application Load Balancer or the number of messages in an SQS queue. If the scaling policy
    #                   specifies one of these metrics, specify the target utilization as the optimal
    #                   average request or message count per instance during any one-minute interval.
    #               </p>
    #            </note>
    #   @return [Float]
    # @!attribute disable_scale_in
    #   <p>Indicates whether scaling in by the target tracking scaling policy is disabled. If
    #               scaling in is disabled, the target tracking scaling policy doesn't remove instances from
    #               the Auto Scaling group. Otherwise, the target tracking scaling policy can remove instances from
    #               the Auto Scaling group. The default is <code>false</code>.</p>
    #   @return [Boolean]
    class TargetTrackingConfiguration < Struct.new(
      nil,
      :predefined_metric_specification,
      :customized_metric_specification,
      :target_value,
      :disable_scale_in,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metric data to return. Also defines whether this call is returning data for one
    #             metric only, or whether it is performing a math expression on the values of returned
    #             metric statistics to create a new time series. A time series is a series of data points,
    #             each of which is associated with a timestamp.</p>
    # @!attribute id
    #   <p>A short name that identifies the object's results in the response. This name must be
    #               unique among all <code>TargetTrackingMetricDataQuery</code> objects specified for a
    #               single scaling policy. If you are performing math expressions on this set of data, this
    #               name represents that data and can serve as a variable in the mathematical expression.
    #               The valid characters are letters, numbers, and underscores. The first character must be
    #               a lowercase letter. </p>
    #   @return [String]
    # @!attribute expression
    #   <p>The math expression to perform on the returned data, if this object is performing a
    #               math expression. This expression can use the <code>Id</code> of the other metrics to
    #               refer to those metrics, and can also use the <code>Id</code> of other expressions to use
    #               the result of those expressions. </p>
    #            <p>Conditional: Within each <code>TargetTrackingMetricDataQuery</code> object, you must
    #               specify either <code>Expression</code> or <code>MetricStat</code>, but not both.</p>
    #   @return [String]
    # @!attribute metric_stat
    #   <p>Information about the metric data to return.</p>
    #            <p>Conditional: Within each <code>TargetTrackingMetricDataQuery</code> object, you must
    #               specify either <code>Expression</code> or <code>MetricStat</code>, but not both.</p>
    #   @return [Types::TargetTrackingMetricStat]
    # @!attribute label
    #   <p>A human-readable label for this metric or expression. This is especially useful if
    #               this is a math expression, so that you know what the value represents.</p>
    #   @return [String]
    # @!attribute period
    #   <p>
    #           The period of the metric in seconds. The default value is 60. Accepted values are 10, 30, and 60. For high resolution metric, set the value to less than 60. For more information, see
    #           <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/policy-creating-high-resolution-metrics.html">Create a target tracking policy using high-resolution metrics for faster response</a>.
    #       </p>
    #   @return [Integer]
    # @!attribute return_data
    #   <p>Indicates whether to return the timestamps and raw data values of this metric. </p>
    #            <p>If you use any math expressions, specify <code>true</code> for this value for only the
    #               final math expression that the metric specification is based on. You must specify
    #               <code>false</code> for <code>ReturnData</code> for all the other metrics and
    #               expressions used in the metric specification.</p>
    #            <p>If you are only retrieving metrics and not performing any math expressions, do not
    #               specify anything for <code>ReturnData</code>. This sets it to its default
    #               (<code>true</code>).</p>
    #   @return [Boolean]
    class TargetTrackingMetricDataQuery < Struct.new(
      nil,
      :id,
      :expression,
      :metric_stat,
      :label,
      :period,
      :return_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines the CloudWatch metric to return, along with the statistic and
    #             unit.</p>
    #          <p>For more information about the CloudWatch terminology below, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch
    #             concepts</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    # @!attribute metric
    #   <p>The metric to use.</p>
    #   @return [Types::Metric]
    # @!attribute stat
    #   <p>The statistic to return. It can include any CloudWatch statistic or extended statistic. For
    #               a list of valid values, see the table in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic">Statistics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    #            <p>The most commonly used metric for scaling is <code>Average</code>.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit to use for the returned data points. For a complete list of the units that
    #               CloudWatch supports, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">MetricDatum</a>
    #               data type in the <i>Amazon CloudWatch API Reference</i>.</p>
    #   @return [String]
    # @!attribute period
    #   <p>
    #               The period of the metric in seconds. The default value is 60. Accepted values are 10, 30, and 60. For high resolution metric, set the value to less than 60. For more information, see
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/policy-creating-high-resolution-metrics.html">Create a target tracking policy using high-resolution metrics for faster response</a>.
    #           </p>
    #   @return [Integer]
    class TargetTrackingMetricStat < Struct.new(
      nil,
      :metric,
      :stat,
      :unit,
      :period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #   @return [String]
    # @!attribute instance_ids
    #   <p>The IDs of the instances. You can specify up to 100 instances.</p>
    #            <p>This parameter requires that you also specify <code>AutoScalingGroupName</code>.</p>
    #   @return [Array<String>]
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group. Required when using <code>InstanceIds</code>.</p>
    #   @return [String]
    # @!attribute should_decrement_desired_capacity
    #   <p>Indicates whether terminating the instance also decrements the size of the Auto Scaling
    #               group.</p>
    #   @return [Boolean]
    class TerminateInstanceInAutoScalingGroupInput < Struct.new(
      nil,
      :instance_id,
      :instance_ids,
      :auto_scaling_group_name,
      :should_decrement_desired_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activity
    #   <p>A scaling activity.</p>
    #   @return [Types::Activity]
    # @!attribute activities
    #   <p>The scaling activities related to terminating the instances from the Auto Scaling group.</p>
    #   @return [Array<Types::Activity>]
    class TerminateInstanceInAutoScalingGroupOutput < Struct.new(
      nil,
      :activity,
      :activities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>TotalLocalStorageGB</code> object when
    #             you specify <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a> for an Auto Scaling group.</p>
    # @!attribute min
    #   <p>The storage minimum in GB.</p>
    #   @return [Float]
    # @!attribute max
    #   <p>The storage maximum in GB.</p>
    #   @return [Float]
    class TotalLocalStorageGBRequest < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifying information for a traffic source.</p>
    # @!attribute identifier
    #   <p>Identifies the traffic source.</p>
    #            <p>For Application Load Balancers, Gateway Load Balancers, Network Load Balancers, and VPC Lattice, this will be the Amazon Resource Name
    #               (ARN) for a target group in this account and Region. For Classic Load Balancers, this will be the name
    #               of the Classic Load Balancer in this account and Region.</p>
    #            <p>For example: </p>
    #            <ul>
    #               <li>
    #                  <p>Application Load Balancer ARN:
    #                           <code>arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/1234567890123456</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Classic Load Balancer name: <code>my-classic-load-balancer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>VPC Lattice ARN:
    #                           <code>arn:aws:vpc-lattice:us-west-2:123456789012:targetgroup/tg-1234567890123456</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the ARN of a target group for a Application Load Balancer, Gateway Load Balancer, or Network Load Balancer, or the name of a
    #               Classic Load Balancer, use the Elastic Load Balancing <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> and <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operations.</p>
    #            <p>To get the ARN of a target group for VPC Lattice, use the VPC Lattice <a href="https://docs.aws.amazon.com/vpc-lattice/latest/APIReference/API_GetTargetGroup.html">GetTargetGroup</a> API operation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Provides additional context for the value of <code>Identifier</code>.</p>
    #            <p>The following lists the valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>elb</code> if <code>Identifier</code> is the name of a Classic Load Balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elbv2</code> if <code>Identifier</code> is the ARN of an Application Load Balancer, Gateway Load Balancer,
    #                       or Network Load Balancer target group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vpc-lattice</code> if <code>Identifier</code> is the ARN of a VPC Lattice
    #                       target group.</p>
    #               </li>
    #            </ul>
    #            <p>Required if the identifier is the name of a Classic Load Balancer.</p>
    #   @return [String]
    class TrafficSourceIdentifier < Struct.new(
      nil,
      :identifier,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the state of a traffic source.</p>
    # @!attribute traffic_source
    #   <p>This is replaced by <code>Identifier</code>.</p>
    #   @deprecated
    #     TrafficSource has been replaced by Identifier
    #   @return [String]
    # @!attribute state
    #   <p>Describes the current state of a traffic source.</p>
    #            <p>The state values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Adding</code> - The Auto Scaling instances are being registered with the load
    #                       balancer or target group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Added</code> - All Auto Scaling instances are registered with the load balancer or
    #                       target group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InService</code> - For an Elastic Load Balancing load balancer or target group, at least
    #                       one Auto Scaling instance passed an <code>ELB</code> health check. For VPC Lattice, at
    #                       least one Auto Scaling instance passed an <code>VPC_LATTICE</code> health check.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Removing</code> - The Auto Scaling instances are being deregistered from the
    #                       load balancer or target group. If connection draining (deregistration delay) is
    #                       enabled, Elastic Load Balancing or VPC Lattice waits for in-flight requests to complete before
    #                       deregistering the instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Removed</code> - All Auto Scaling instances are deregistered from the load
    #                       balancer or target group.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the traffic source.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Provides additional context for the value of <code>Identifier</code>.</p>
    #            <p>The following lists the valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>elb</code> if <code>Identifier</code> is the name of a Classic Load Balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>elbv2</code> if <code>Identifier</code> is the ARN of an Application Load Balancer, Gateway Load Balancer,
    #                       or Network Load Balancer target group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vpc-lattice</code> if <code>Identifier</code> is the ARN of a VPC Lattice
    #                       target group.</p>
    #               </li>
    #            </ul>
    #            <p>Required if the identifier is the name of a Classic Load Balancer.</p>
    #   @return [String]
    class TrafficSourceState < Struct.new(
      nil,
      :traffic_source,
      :state,
      :identifier,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #   @return [String]
    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration. If you specify
    #                   <code>LaunchConfigurationName</code> in your update request, you can't specify
    #                   <code>LaunchTemplate</code> or <code>MixedInstancesPolicy</code>.</p>
    #   @return [String]
    # @!attribute launch_template
    #   <p>The launch template and version to use to specify the updates. If you specify
    #                   <code>LaunchTemplate</code> in your update request, you can't specify
    #                   <code>LaunchConfigurationName</code> or <code>MixedInstancesPolicy</code>.</p>
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute mixed_instances_policy
    #   <p>The mixed instances policy. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                   groups with multiple instance types and purchase options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>You can remove the Distribution Segments configuration by specifying
    #                   <code>OnDemandBaseCapacity</code> or
    #                   <code>OnDemandPercentageAboveBaseCapacity</code>. You can also remove it explicitly
    #               by specifying an empty list for <code>DistributionSegments</code>.</p>
    #   @return [Types::MixedInstancesPolicy]
    # @!attribute min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #            <note>
    #               <p>With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to
    #                   go above <code>MaxSize</code> to meet your capacity requirements. In this event,
    #                   Amazon EC2 Auto Scaling will never go above <code>MaxSize</code> by more than your largest instance
    #                   weight (weights that define how many units each instance contributes to the desired
    #                   capacity of the group).</p>
    #            </note>
    #   @return [Integer]
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after this operation
    #               completes and the capacity it attempts to maintain. This number must be greater than or
    #               equal to the minimum size of the group and less than or equal to the maximum size of the
    #               group.</p>
    #   @return [Integer]
    # @!attribute default_cooldown
    #   <p>
    #               <i>Only needed if you use simple scaling policies.</i>
    #            </p>
    #            <p>The amount of time, in seconds, between one scaling activity ending and another one
    #               starting due to simple scaling policies. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute availability_zones
    #   <p>One or more Availability Zones for the group.</p>
    #   @return [Array<String>]
    # @!attribute availability_zone_ids
    #   <p>
    #               A list of Availability Zone IDs for the Auto Scaling group. You cannot specify both AvailabilityZones and AvailabilityZoneIds in the same request.
    #           </p>
    #   @return [Array<String>]
    # @!attribute health_check_type
    #   <p>A comma-separated value string of one or more health check types.</p>
    #            <p>The valid values are <code>EC2</code>, <code>EBS</code>, <code>ELB</code>, and
    #                   <code>VPC_LATTICE</code>. <code>EC2</code> is the default health check and cannot be
    #               disabled. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-health-checks.html">Health checks
    #                   for instances in an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Only specify <code>EC2</code> if you must clear a value that was previously
    #               set.</p>
    #   @return [String]
    # @!attribute health_check_grace_period
    #   <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
    #               of an EC2 instance that has come into service and marking it unhealthy due to a failed
    #               health check. This is useful if your instances do not immediately pass their health
    #               checks after they enter the <code>InService</code> state. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html">Set the health check
    #                   grace period for an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute placement_group
    #   <p>The name of an existing placement group into which to launch your instances. To remove the placement group setting, pass an empty string for <code>placement-group</code>. For more
    #               information about placement groups, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement groups</a> in the
    #                   <i>Amazon EC2 User Guide</i>.</p>
    #            <note>
    #               <p>A <i>cluster</i> placement group is a logical grouping of instances
    #                   within a single Availability Zone. You cannot specify multiple Availability Zones
    #                   and a cluster placement group. </p>
    #            </note>
    #   @return [String]
    # @!attribute vpc_zone_identifier
    #   <p>A comma-separated list of subnet IDs for a virtual private cloud (VPC). If you specify
    #                   <code>VPCZoneIdentifier</code> with <code>AvailabilityZones</code>, the subnets that
    #               you specify must reside in those Availability Zones.</p>
    #   @return [String]
    # @!attribute termination_policies
    #   <p>A policy or a list of policies that are used to select the instances to terminate. The
    #               policies are executed in the order that you list them. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html">Configure
    #                   termination policies for Amazon EC2 Auto Scaling</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>Valid values: <code>Default</code> | <code>AllocationStrategy</code> |
    #                   <code>ClosestToNextInstanceHour</code> | <code>NewestInstance</code> |
    #                   <code>OldestInstance</code> | <code>OldestLaunchConfiguration</code> |
    #                   <code>OldestLaunchTemplate</code> |
    #                   <code>arn:aws:lambda:region:account-id:function:my-function:my-alias</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute new_instances_protected_from_scale_in
    #   <p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
    #               when scaling in. For more information about preventing instances from terminating on
    #               scale in, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Use
    #                   instance scale-in protection</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute service_linked_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
    #               call other Amazon Web Services on your behalf. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html">Service-linked
    #                   roles</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [String]
    # @!attribute max_instance_lifetime
    #   <p>The maximum amount of time, in seconds, that an instance can be in service. The
    #               default is null. If specified, the value must be either 0 or a number equal to or
    #               greater than 86,400 seconds (1 day). To clear a previously set value, specify a new
    #               value of 0. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html">Replacing Auto Scaling
    #                   instances based on maximum instance lifetime</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute capacity_rebalance
    #   <p>Enables or disables Capacity Rebalancing. If Capacity Rebalancing is disabled, proactive replacement of at-risk Spot Instances does not occur. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html">Capacity
    #               Rebalancing in Auto Scaling to replace at-risk Spot Instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <note>
    #               <p>To suspend rebalancing across Availability Zones, use the <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_SuspendedProcess.html">SuspendProcesses</a> API.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute context
    #   <p>Reserved.</p>
    #   @return [String]
    # @!attribute desired_capacity_type
    #   <p>The unit of measurement for the value specified for desired capacity. Amazon EC2 Auto Scaling
    #               supports <code>DesiredCapacityType</code> for attribute-based instance type selection
    #               only. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-mixed-instances-group-attribute-based-instance-type-selection.html">Create a mixed instances group using attribute-based instance type
    #                   selection</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <p>By default, Amazon EC2 Auto Scaling specifies <code>units</code>, which translates into number of
    #               instances.</p>
    #            <p>Valid values: <code>units</code> | <code>vcpu</code> | <code>memory-mib</code>
    #            </p>
    #   @return [String]
    # @!attribute default_instance_warmup
    #   <p>The amount of time, in seconds, until a new instance is considered to have finished
    #               initializing and resource consumption to become stable after it enters the
    #                   <code>InService</code> state. </p>
    #            <p>During an instance refresh, Amazon EC2 Auto Scaling waits for the warm-up period after it replaces an
    #               instance before it moves on to replacing the next instance. Amazon EC2 Auto Scaling also waits for the
    #               warm-up period before aggregating the metrics for new instances with existing instances
    #               in the Amazon CloudWatch metrics that are used for scaling, resulting in more reliable usage
    #               data. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html">Set
    #                   the default instance warmup for an Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #            <important>
    #               <p>To manage various warm-up settings at the group level, we recommend that you set
    #                   the default instance warmup, <i>even if it is set to 0 seconds</i>. To
    #                   remove a value that you previously set, include the property but specify
    #                       <code>-1</code> for the value. However, we strongly recommend keeping the
    #                   default instance warmup enabled by specifying a value of <code>0</code> or other
    #                   nominal value.</p>
    #            </important>
    #   @return [Integer]
    # @!attribute instance_maintenance_policy
    #   <p>An instance maintenance policy. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-maintenance-policy.html">Set instance maintenance policy</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #   @return [Types::InstanceMaintenancePolicy]
    # @!attribute availability_zone_distribution
    #   <p>
    #               The instance capacity distribution across Availability Zones.
    #           </p>
    #   @return [Types::AvailabilityZoneDistribution]
    # @!attribute availability_zone_impairment_policy
    #   <p>
    #               The policy for Availability Zone impairment.
    #           </p>
    #   @return [Types::AvailabilityZoneImpairmentPolicy]
    # @!attribute skip_zonal_shift_validation
    #   <p>
    #           If you enable zonal shift with cross-zone disabled load balancers, capacity could become imbalanced across Availability Zones. To skip the validation, specify <code>true</code>. For more information, see
    #           <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-zonal-shift.html">Auto Scaling group zonal shift</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #       </p>
    #   @return [Boolean]
    # @!attribute capacity_reservation_specification
    #   <p>
    #               The capacity reservation specification for the Auto Scaling group.
    #           </p>
    #   @return [Types::CapacityReservationSpecification]
    # @!attribute instance_lifecycle_policy
    #   <p>
    #               The instance lifecycle policy for the Auto Scaling group. This policy controls instance behavior when an instance
    #               transitions through its lifecycle states. Configure retention triggers to specify when instances should
    #               move to a <code>Retained</code> state instead of automatic termination.
    #           </p>
    #            <p>For more information, see
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/instance-lifecycle-policy.html">
    #                   Control instance retention with instance lifecycle policies</a>
    #               in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #           </p>
    #   @return [Types::InstanceLifecyclePolicy]
    # @!attribute deletion_protection
    #   <p>
    #               The deletion protection setting for the Auto Scaling group. This setting helps safeguard your Auto Scaling group and its
    #               instances by controlling whether the <code>DeleteAutoScalingGroup</code> operation is allowed. When deletion
    #               protection is enabled, users cannot delete the Auto Scaling group according to the specified protection level until
    #               the setting is changed back to a less restrictive level.
    #           </p>
    #            <p>
    #               The valid values are <code>none</code>, <code>prevent-force-deletion</code>, and <code>prevent-all-deletion</code>.
    #           </p>
    #            <p>
    #               Default: <code>none</code>
    #            </p>
    #            <p>
    #               For more information, see
    #               <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/resource-deletion-protection.html">
    #                   Configure deletion protection for your Amazon EC2 Auto Scaling resources</a>
    #               in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    #           </p>
    #   @return [String]
    class UpdateAutoScalingGroupInput < Struct.new(
      nil,
      :auto_scaling_group_name,
      :launch_configuration_name,
      :launch_template,
      :mixed_instances_policy,
      :min_size,
      :max_size,
      :desired_capacity,
      :default_cooldown,
      :availability_zones,
      :availability_zone_ids,
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
      :default_instance_warmup,
      :instance_maintenance_policy,
      :availability_zone_distribution,
      :availability_zone_impairment_policy,
      :skip_zonal_shift_validation,
      :capacity_reservation_specification,
      :instance_lifecycle_policy,
      :deletion_protection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>VCpuCount</code> object when you
    #             specify <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html">InstanceRequirements</a> for an Auto Scaling group.</p>
    # @!attribute min
    #   <p>The minimum number of vCPUs.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The maximum number of vCPUs.</p>
    #   @return [Integer]
    class VCpuCountRequest < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a warm pool configuration. </p>
    # @!attribute max_group_prepared_capacity
    #   <p>The maximum number of instances that are allowed to be in the warm pool or in any
    #               state except <code>Terminated</code> for the Auto Scaling group.</p>
    #   @return [Integer]
    # @!attribute min_size
    #   <p>The minimum number of instances to maintain in the warm pool.</p>
    #   @return [Integer]
    # @!attribute pool_state
    #   <p>The instance state to transition to after the lifecycle actions are complete.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a warm pool that is marked for deletion.</p>
    #   @return [String]
    # @!attribute instance_reuse_policy
    #   <p>The instance reuse policy.</p>
    #   @return [Types::InstanceReusePolicy]
    class WarmPoolConfiguration < Struct.new(
      nil,
      :max_group_prepared_capacity,
      :min_size,
      :pool_state,
      :status,
      :instance_reuse_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
