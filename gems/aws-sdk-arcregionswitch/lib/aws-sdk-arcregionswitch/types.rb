# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ARCRegionswitch
  module Types

    # A summarized representation of a plan execution. This structure
    # contains key information about an execution without all the detailed
    # step data.
    #
    # @!attribute [rw] plan_arn
    #   The Amazon Resource Name (ARN) of the plan.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution identifier of a plan execution.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version for the plan.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the plan execution was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] comment
    #   An optional comment about the plan execution.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when the plan execution was started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp when the plan execution was ended.
    #   @return [Time]
    #
    # @!attribute [rw] mode
    #   The plan execution mode. Valid values are `Practice`, for testing
    #   without making actual changes, or `Recovery`, for actual traffic
    #   shifting and application recovery.
    #   @return [String]
    #
    # @!attribute [rw] execution_state
    #   The plan execution state. Provides the state of a plan execution,
    #   for example, In Progress or Paused by Operator.
    #   @return [String]
    #
    # @!attribute [rw] execution_action
    #   The plan execution action. Valid values are `Activate`, to activate
    #   an Amazon Web Services Region, or `Deactivate`, to deactivate a
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] execution_region
    #   The Amazon Web Services Region for a plan execution.
    #   @return [String]
    #
    # @!attribute [rw] actual_recovery_time
    #   The actual recovery time that Region switch calculates for a plan
    #   execution. Actual recovery time includes the time for the plan to
    #   run added to the time elapsed until the application health alarms
    #   that you've specified are healthy again.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/AbbreviatedExecution AWS API Documentation
    #
    class AbbreviatedExecution < Struct.new(
      :plan_arn,
      :execution_id,
      :version,
      :updated_at,
      :comment,
      :start_time,
      :end_time,
      :mode,
      :execution_state,
      :execution_action,
      :execution_region,
      :actual_recovery_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summarized representation of a Region switch plan. This structure
    # contains key information about a plan without all the detailed
    # workflow and step data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Region switch plan.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of a Region switch plan.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a Region switch plan.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The Amazon Web Services Region specified for a Region switch plan.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recovery_approach
    #   The recovery approach for a Region switch plan, which can be
    #   active/active (activeActive) or active/passive (activePassive).
    #   @return [String]
    #
    # @!attribute [rw] primary_region
    #   The primary Region for a plan.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version for the plan.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the plan execution was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of a Region switch plan.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   The execution role is a way to categorize a Region switch plan.
    #   @return [String]
    #
    # @!attribute [rw] active_plan_execution
    #   Specifies if this is the active plan execution at this time.
    #   @return [String]
    #
    # @!attribute [rw] recovery_time_objective_minutes
    #   The recovery time objective that you've specified.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/AbbreviatedPlan AWS API Documentation
    #
    class AbbreviatedPlan < Struct.new(
      :arn,
      :owner,
      :name,
      :regions,
      :recovery_approach,
      :primary_region,
      :version,
      :updated_at,
      :description,
      :execution_role,
      :active_plan_execution,
      :recovery_time_objective_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have sufficient access to perform this action.
    #
    # HTTP Status Code: 403
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan_arn
    #   The Amazon Resource Name (ARN) of the plan.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution identifier of a plan execution.
    #   @return [String]
    #
    # @!attribute [rw] step_name
    #   The name of a step in a plan execution.
    #   @return [String]
    #
    # @!attribute [rw] approval
    #   The status of approval for a plan execution step.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment that you can enter about a plan execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ApprovePlanExecutionStepRequest AWS API Documentation
    #
    class ApprovePlanExecutionStepRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :step_name,
      :approval,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ApprovePlanExecutionStepResponse AWS API Documentation
    #
    class ApprovePlanExecutionStepResponse < Aws::EmptyStructure; end

    # Configuration for ARC routing controls used in a Region switch plan.
    # Routing controls are simple on/off switches that you can use to shift
    # traffic away from an impaired Region.
    #
    # @!attribute [rw] timeout_minutes
    #   The timeout value specified for the configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] cross_account_role
    #   The cross account role for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID (secret key) for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] region_and_routing_controls
    #   The Region and ARC routing controls for the configuration.
    #   @return [Hash<String,Array<Types::ArcRoutingControlState>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ArcRoutingControlConfiguration AWS API Documentation
    #
    class ArcRoutingControlConfiguration < Struct.new(
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :region_and_routing_controls)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the state of an ARC routing control.
    #
    # @!attribute [rw] routing_control_arn
    #   The Amazon Resource Name (ARN) of a routing control.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of an ARC routing control, On or Off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ArcRoutingControlState AWS API Documentation
    #
    class ArcRoutingControlState < Struct.new(
      :routing_control_arn,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for an Amazon EC2 Auto Scaling group used in a Region
    # switch plan.
    #
    # @!attribute [rw] cross_account_role
    #   The cross account role for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID (secret key) for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the EC2 Auto Scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Asg AWS API Documentation
    #
    class Asg < Struct.new(
      :cross_account_role,
      :external_id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon CloudWatch alarm associated with a Region switch plan. These
    # alarms can be used to trigger automatic execution of the plan.
    #
    # @!attribute [rw] cross_account_role
    #   The cross account role for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID (secret key) for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The resource identifier for alarms that you associate with a plan.
    #   @return [String]
    #
    # @!attribute [rw] alarm_type
    #   The alarm type for an associated alarm. An associated CloudWatch
    #   alarm can be an application health alarm or a trigger alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/AssociatedAlarm AWS API Documentation
    #
    class AssociatedAlarm < Struct.new(
      :cross_account_role,
      :external_id,
      :resource_identifier,
      :alarm_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan_arn
    #   The Amazon Resource Name (ARN) of the plan.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution identifier of a plan execution.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment that you can enter about canceling a plan execution step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/CancelPlanExecutionRequest AWS API Documentation
    #
    class CancelPlanExecutionRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/CancelPlanExecutionResponse AWS API Documentation
    #
    class CancelPlanExecutionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] description
    #   The description of a Region switch plan.
    #   @return [String]
    #
    # @!attribute [rw] workflows
    #   An array of workflows included in a Region switch plan.
    #   @return [Array<Types::Workflow>]
    #
    # @!attribute [rw] execution_role
    #   An execution role is a way to categorize a Region switch plan.
    #   @return [String]
    #
    # @!attribute [rw] recovery_time_objective_minutes
    #   Optionally, you can specify an recovery time objective for a Region
    #   switch plan, in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] associated_alarms
    #   The alarms associated with a Region switch plan.
    #   @return [Hash<String,Types::AssociatedAlarm>]
    #
    # @!attribute [rw] triggers
    #   The triggers associated with a Region switch plan.
    #   @return [Array<Types::Trigger>]
    #
    # @!attribute [rw] name
    #   The name of a Region switch plan.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   An array that specifies the Amazon Web Services Regions for a Region
    #   switch plan. Specify two Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recovery_approach
    #   The recovery approach for a Region switch plan, which can be
    #   active/active (activeActive) or active/passive (activePassive).
    #   @return [String]
    #
    # @!attribute [rw] primary_region
    #   The primary Amazon Web Services Region for the application. This is
    #   the Region where the application normally runs before any Region
    #   switch occurs.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the Region switch plan.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/CreatePlanRequest AWS API Documentation
    #
    class CreatePlanRequest < Struct.new(
      :description,
      :workflows,
      :execution_role,
      :recovery_time_objective_minutes,
      :associated_alarms,
      :triggers,
      :name,
      :regions,
      :recovery_approach,
      :primary_region,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan
    #   The details of the created Region switch plan.
    #   @return [Types::Plan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/CreatePlanResponse AWS API Documentation
    #
    class CreatePlanResponse < Struct.new(
      :plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for Amazon Web Services Lambda functions that perform
    # custom actions during a Region switch.
    #
    # @!attribute [rw] timeout_minutes
    #   The timeout value specified for the configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] lambdas
    #   The Amazon Web Services Lambda functions for the execution block.
    #   @return [Array<Types::Lambdas>]
    #
    # @!attribute [rw] retry_interval_minutes
    #   The retry interval specified.
    #   @return [Float]
    #
    # @!attribute [rw] region_to_run
    #   The Amazon Web Services Region for the function to run in.
    #   @return [String]
    #
    # @!attribute [rw] ungraceful
    #   The settings for ungraceful execution.
    #   @return [Types::LambdaUngraceful]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/CustomActionLambdaConfiguration AWS API Documentation
    #
    class CustomActionLambdaConfiguration < Struct.new(
      :timeout_minutes,
      :lambdas,
      :retry_interval_minutes,
      :region_to_run,
      :ungraceful)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/DeletePlanRequest AWS API Documentation
    #
    class DeletePlanRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/DeletePlanResponse AWS API Documentation
    #
    class DeletePlanResponse < Aws::EmptyStructure; end

    # Configuration for increasing the capacity of Amazon EC2 Auto Scaling
    # groups during a Region switch.
    #
    # @!attribute [rw] timeout_minutes
    #   The timeout value specified for the configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] asgs
    #   The EC2 Auto Scaling groups for the configuration.
    #   @return [Array<Types::Asg>]
    #
    # @!attribute [rw] ungraceful
    #   The settings for ungraceful execution.
    #   @return [Types::Ec2Ungraceful]
    #
    # @!attribute [rw] target_percent
    #   The target percentage that you specify for EC2 Auto Scaling groups.
    #   @return [Integer]
    #
    # @!attribute [rw] capacity_monitoring_approach
    #   The monitoring approach that you specify EC2 Auto Scaling groups for
    #   the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Ec2AsgCapacityIncreaseConfiguration AWS API Documentation
    #
    class Ec2AsgCapacityIncreaseConfiguration < Struct.new(
      :timeout_minutes,
      :asgs,
      :ungraceful,
      :target_percent,
      :capacity_monitoring_approach)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for handling failures when performing operations on EC2
    # resources.
    #
    # @!attribute [rw] minimum_success_percentage
    #   The minimum success percentage that you specify for EC2 Auto Scaling
    #   groups.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Ec2Ungraceful AWS API Documentation
    #
    class Ec2Ungraceful < Struct.new(
      :minimum_success_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an Amazon Web Services ECS capacity increase.
    #
    # @!attribute [rw] timeout_minutes
    #   The timeout value specified for the configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] services
    #   The services specified for the configuration.
    #   @return [Array<Types::Service>]
    #
    # @!attribute [rw] ungraceful
    #   The settings for ungraceful execution.
    #   @return [Types::EcsUngraceful]
    #
    # @!attribute [rw] target_percent
    #   The target percentage specified for the configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] capacity_monitoring_approach
    #   The monitoring approach specified for the configuration, for
    #   example, `Most_Recent`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/EcsCapacityIncreaseConfiguration AWS API Documentation
    #
    class EcsCapacityIncreaseConfiguration < Struct.new(
      :timeout_minutes,
      :services,
      :ungraceful,
      :target_percent,
      :capacity_monitoring_approach)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for ungraceful execution.
    #
    # @!attribute [rw] minimum_success_percentage
    #   The minimum success percentage specified for the configuration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/EcsUngraceful AWS API Documentation
    #
    class EcsUngraceful < Struct.new(
      :minimum_success_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services EKS cluster execution block configuration.
    #
    # @!attribute [rw] cross_account_role
    #   The cross account role for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID (secret key) for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of an Amazon Web Services EKS
    #   cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/EksCluster AWS API Documentation
    #
    class EksCluster < Struct.new(
      :cross_account_role,
      :external_id,
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services EKS resource scaling configuration.
    #
    # @!attribute [rw] timeout_minutes
    #   The timeout value specified for the configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] kubernetes_resource_type
    #   The Kubernetes resource type for the configuration.
    #   @return [Types::KubernetesResourceType]
    #
    # @!attribute [rw] scaling_resources
    #   The scaling resources for the configuration.
    #   @return [Array<Hash<String,Hash<String,Types::KubernetesScalingResource>>>]
    #
    # @!attribute [rw] eks_clusters
    #   The clusters for the configuration.
    #   @return [Array<Types::EksCluster>]
    #
    # @!attribute [rw] ungraceful
    #   The settings for ungraceful execution.
    #   @return [Types::EksResourceScalingUngraceful]
    #
    # @!attribute [rw] target_percent
    #   The target percentage for the configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] capacity_monitoring_approach
    #   The monitoring approach for the configuration, that is, whether it
    #   was sampled in the last 24 hours or autoscaled in the last 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/EksResourceScalingConfiguration AWS API Documentation
    #
    class EksResourceScalingConfiguration < Struct.new(
      :timeout_minutes,
      :kubernetes_resource_type,
      :scaling_resources,
      :eks_clusters,
      :ungraceful,
      :target_percent,
      :capacity_monitoring_approach)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ungraceful settings for Amazon Web Services EKS resource scaling.
    #
    # @!attribute [rw] minimum_success_percentage
    #   The minimum success percentage for the configuration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/EksResourceScalingUngraceful AWS API Documentation
    #
    class EksResourceScalingUngraceful < Struct.new(
      :minimum_success_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for approval steps in a Region switch plan execution.
    # Approval steps require manual intervention before the execution can
    # proceed.
    #
    # @!attribute [rw] timeout_minutes
    #   The timeout value specified for the configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] approval_role
    #   The IAM approval role for the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ExecutionApprovalConfiguration AWS API Documentation
    #
    class ExecutionApprovalConfiguration < Struct.new(
      :timeout_minutes,
      :approval_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Execution block configurations for a workflow in a Region switch plan.
    # An execution block represents a specific type of action to perform
    # during a Region switch.
    #
    # @note ExecutionBlockConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ExecutionBlockConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ExecutionBlockConfiguration corresponding to the set member.
    #
    # @!attribute [rw] custom_action_lambda_config
    #   An Amazon Web Services Lambda execution block.
    #   @return [Types::CustomActionLambdaConfiguration]
    #
    # @!attribute [rw] ec2_asg_capacity_increase_config
    #   An EC2 Auto Scaling group execution block.
    #   @return [Types::Ec2AsgCapacityIncreaseConfiguration]
    #
    # @!attribute [rw] execution_approval_config
    #   A manual approval execution block.
    #   @return [Types::ExecutionApprovalConfiguration]
    #
    # @!attribute [rw] arc_routing_control_config
    #   An ARC routing control execution block.
    #   @return [Types::ArcRoutingControlConfiguration]
    #
    # @!attribute [rw] global_aurora_config
    #   An Aurora Global Database execution block.
    #   @return [Types::GlobalAuroraConfiguration]
    #
    # @!attribute [rw] parallel_config
    #   A parallel configuration execution block.
    #   @return [Types::ParallelExecutionBlockConfiguration]
    #
    # @!attribute [rw] region_switch_plan_config
    #   A Region switch plan execution block.
    #   @return [Types::RegionSwitchPlanConfiguration]
    #
    # @!attribute [rw] ecs_capacity_increase_config
    #   The capacity increase specified for the configuration.
    #   @return [Types::EcsCapacityIncreaseConfiguration]
    #
    # @!attribute [rw] eks_resource_scaling_config
    #   An Amazon Web Services EKS resource scaling execution block.
    #   @return [Types::EksResourceScalingConfiguration]
    #
    # @!attribute [rw] route53_health_check_config
    #   The Amazon Route 53 health check configuration.
    #   @return [Types::Route53HealthCheckConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ExecutionBlockConfiguration AWS API Documentation
    #
    class ExecutionBlockConfiguration < Struct.new(
      :custom_action_lambda_config,
      :ec2_asg_capacity_increase_config,
      :execution_approval_config,
      :arc_routing_control_config,
      :global_aurora_config,
      :parallel_config,
      :region_switch_plan_config,
      :ecs_capacity_increase_config,
      :eks_resource_scaling_config,
      :route53_health_check_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomActionLambdaConfig < ExecutionBlockConfiguration; end
      class Ec2AsgCapacityIncreaseConfig < ExecutionBlockConfiguration; end
      class ExecutionApprovalConfig < ExecutionBlockConfiguration; end
      class ArcRoutingControlConfig < ExecutionBlockConfiguration; end
      class GlobalAuroraConfig < ExecutionBlockConfiguration; end
      class ParallelConfig < ExecutionBlockConfiguration; end
      class RegionSwitchPlanConfig < ExecutionBlockConfiguration; end
      class EcsCapacityIncreaseConfig < ExecutionBlockConfiguration; end
      class EksResourceScalingConfig < ExecutionBlockConfiguration; end
      class Route53HealthCheckConfig < ExecutionBlockConfiguration; end
      class Unknown < ExecutionBlockConfiguration; end
    end

    # Represents an event that occurred during a plan execution. These
    # events provide a detailed timeline of the execution process.
    #
    # @!attribute [rw] timestamp
    #   The timestamp for an execution event.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of an execution event.
    #   @return [String]
    #
    # @!attribute [rw] step_name
    #   The step name for an execution event.
    #   @return [String]
    #
    # @!attribute [rw] execution_block_type
    #   The execution block type for an execution event.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The resources for an execution event.
    #   @return [Array<String>]
    #
    # @!attribute [rw] error
    #   Errors for an execution event.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for an execution event.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The event ID for an execution event.
    #   @return [String]
    #
    # @!attribute [rw] previous_event_id
    #   The event ID of the previous execution event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ExecutionEvent AWS API Documentation
    #
    class ExecutionEvent < Struct.new(
      :timestamp,
      :type,
      :step_name,
      :execution_block_type,
      :resources,
      :error,
      :description,
      :event_id,
      :previous_event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan_arn
    #   The Amazon Resource Name (ARN) of the Region switch plan to retrieve
    #   evaluation status for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of objects that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlanEvaluationStatusRequest AWS API Documentation
    #
    class GetPlanEvaluationStatusRequest < Struct.new(
      :plan_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan_arn
    #   The Amazon Resource Name (ARN) of the plan.
    #   @return [String]
    #
    # @!attribute [rw] last_evaluation_time
    #   The time of the last time that Region switch ran an evaluation of
    #   the plan.
    #   @return [Time]
    #
    # @!attribute [rw] last_evaluated_version
    #   The version of the last evaluation of the plan.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region for the plan.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_state
    #   The evaluation state for the plan.
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   The current evaluation warnings for the plan.
    #   @return [Array<Types::ResourceWarning>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlanEvaluationStatusResponse AWS API Documentation
    #
    class GetPlanEvaluationStatusResponse < Struct.new(
      :plan_arn,
      :last_evaluation_time,
      :last_evaluated_version,
      :region,
      :evaluation_state,
      :warnings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan_arn
    #   The Amazon Resource Name (ARN) of the plan with the execution to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution identifier of a plan execution.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of objects that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlanExecutionRequest AWS API Documentation
    #
    class GetPlanExecutionRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan_arn
    #   The Amazon Resource Name (ARN) of the plan.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution identifier of a plan execution.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version for the plan.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the plan execution was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] comment
    #   A comment included on the plan execution.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time (UTC) when the plan execution started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time (UTC) when the plan execution ended.
    #   @return [Time]
    #
    # @!attribute [rw] mode
    #   The plan execution mode. Valid values are `Practice`, for testing
    #   without making actual changes, or `Recovery`, for actual traffic
    #   shifting and application recovery.
    #   @return [String]
    #
    # @!attribute [rw] execution_state
    #   The plan execution state. Provides the state of a plan execution,
    #   for example, In Progress or Paused by Operator.
    #   @return [String]
    #
    # @!attribute [rw] execution_action
    #   The plan execution action. Valid values are `Activate`, to activate
    #   an Amazon Web Services Region, or `Deactivate`, to deactivate a
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] execution_region
    #   The Amazon Web Services Region for a plan execution.
    #   @return [String]
    #
    # @!attribute [rw] step_states
    #   The states of the steps in the plan execution.
    #   @return [Array<Types::StepState>]
    #
    # @!attribute [rw] plan
    #   The details of the Region switch plan.
    #   @return [Types::Plan]
    #
    # @!attribute [rw] actual_recovery_time
    #   The actual recovery time that Region switch calculates for a plan
    #   execution. Actual recovery time includes the time for the plan to
    #   run added to the time elapsed until the application health alarms
    #   that you've specified are healthy again.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlanExecutionResponse AWS API Documentation
    #
    class GetPlanExecutionResponse < Struct.new(
      :plan_arn,
      :execution_id,
      :version,
      :updated_at,
      :comment,
      :start_time,
      :end_time,
      :mode,
      :execution_state,
      :execution_action,
      :execution_region,
      :step_states,
      :plan,
      :actual_recovery_time,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the plan in Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlanInRegionRequest AWS API Documentation
    #
    class GetPlanInRegionRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan
    #   The details of the Region switch plan.
    #   @return [Types::Plan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlanInRegionResponse AWS API Documentation
    #
    class GetPlanInRegionResponse < Struct.new(
      :plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlanRequest AWS API Documentation
    #
    class GetPlanRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan
    #   The detailed information about the requested Region switch plan.
    #   @return [Types::Plan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlanResponse AWS API Documentation
    #
    class GetPlanResponse < Struct.new(
      :plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for Amazon Aurora global databases used in a Region
    # switch plan.
    #
    # @!attribute [rw] timeout_minutes
    #   The timeout value specified for the configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] cross_account_role
    #   The cross account role for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID (secret key) for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] behavior
    #   The behavior for a global database, that is, only allow switchover
    #   or also allow failover.
    #   @return [String]
    #
    # @!attribute [rw] ungraceful
    #   The settings for ungraceful execution.
    #   @return [Types::GlobalAuroraUngraceful]
    #
    # @!attribute [rw] global_cluster_identifier
    #   The global cluster identifier for a global database.
    #   @return [String]
    #
    # @!attribute [rw] database_cluster_arns
    #   The database cluster Amazon Resource Names (ARNs) for a global
    #   database.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GlobalAuroraConfiguration AWS API Documentation
    #
    class GlobalAuroraConfiguration < Struct.new(
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :behavior,
      :ungraceful,
      :global_cluster_identifier,
      :database_cluster_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for handling failures when performing operations on
    # Aurora global databases.
    #
    # @!attribute [rw] ungraceful
    #   The settings for ungraceful execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GlobalAuroraUngraceful AWS API Documentation
    #
    class GlobalAuroraUngraceful < Struct.new(
      :ungraceful)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has an invalid argument.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/IllegalArgumentException AWS API Documentation
    #
    class IllegalArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the current state of the resource
    # doesn't allow the operation to proceed.
    #
    # HTTP Status Code: 400
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/IllegalStateException AWS API Documentation
    #
    class IllegalStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure.
    #
    # HTTP Status Code: 500
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the type of Kubernetes resource to scale in an Amazon EKS
    # cluster.
    #
    # @!attribute [rw] api_version
    #   The API version type for the Kubernetes resource.
    #   @return [String]
    #
    # @!attribute [rw] kind
    #   The kind for the Kubernetes resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/KubernetesResourceType AWS API Documentation
    #
    class KubernetesResourceType < Struct.new(
      :api_version,
      :kind)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a Kubernetes resource to scale in an Amazon EKS cluster.
    #
    # @!attribute [rw] namespace
    #   The namespace for the Kubernetes resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the Kubernetes resource.
    #   @return [String]
    #
    # @!attribute [rw] hpa_name
    #   The hpaname for the Kubernetes resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/KubernetesScalingResource AWS API Documentation
    #
    class KubernetesScalingResource < Struct.new(
      :namespace,
      :name,
      :hpa_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for handling failures when invoking Lambda functions.
    #
    # @!attribute [rw] behavior
    #   The ungraceful behavior for a Lambda function, which must be set to
    #   `skip`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/LambdaUngraceful AWS API Documentation
    #
    class LambdaUngraceful < Struct.new(
      :behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for Amazon Web Services Lambda functions used in a
    # Region switch plan.
    #
    # @!attribute [rw] cross_account_role
    #   The cross account role for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID (secret key) for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Lambdas AWS API Documentation
    #
    class Lambdas < Struct.new(
      :cross_account_role,
      :external_id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan_arn
    #   The Amazon Resource Name (ARN) of the plan.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution identifier of a plan execution.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of objects that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the plan execution event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlanExecutionEventsRequest AWS API Documentation
    #
    class ListPlanExecutionEventsRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :max_results,
      :next_token,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The items in the plan execution event.
    #   @return [Array<Types::ExecutionEvent>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlanExecutionEventsResponse AWS API Documentation
    #
    class ListPlanExecutionEventsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan_arn
    #   The ARN for the plan.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of objects that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the plan execution. For example, the plan execution
    #   might be In Progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlanExecutionsRequest AWS API Documentation
    #
    class ListPlanExecutionsRequest < Struct.new(
      :plan_arn,
      :max_results,
      :next_token,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The items in the plan execution to return.
    #   @return [Array<Types::AbbreviatedExecution>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlanExecutionsResponse AWS API Documentation
    #
    class ListPlanExecutionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The number of objects that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlansInRegionRequest AWS API Documentation
    #
    class ListPlansInRegionRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plans
    #   The plans that were requested.
    #   @return [Array<Types::AbbreviatedPlan>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlansInRegionResponse AWS API Documentation
    #
    class ListPlansInRegionResponse < Struct.new(
      :plans,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The number of objects that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlansRequest AWS API Documentation
    #
    class ListPlansRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plans
    #   The plans that were requested.
    #   @return [Array<Types::AbbreviatedPlan>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlansResponse AWS API Documentation
    #
    class ListPlansResponse < Struct.new(
      :plans,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Amazon Route 53 health check
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The hosted zone ID for the health checks.
    #   @return [String]
    #
    # @!attribute [rw] record_name
    #   The record name for the health checks.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of objects that you want to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListRoute53HealthChecksRequest AWS API Documentation
    #
    class ListRoute53HealthChecksRequest < Struct.new(
      :arn,
      :hosted_zone_id,
      :record_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] health_checks
    #   List of the health checks requested.
    #   @return [Array<Types::Route53HealthCheck>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListRoute53HealthChecksResponse AWS API Documentation
    #
    class ListRoute53HealthChecksResponse < Struct.new(
      :health_checks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_tags
    #   The tags for a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A simplified representation of a workflow in a Region switch plan.
    #
    # @!attribute [rw] action
    #   The action for a minimal workflow, which can be Activate or
    #   Deactivate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for a minimal workflow
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/MinimalWorkflow AWS API Documentation
    #
    class MinimalWorkflow < Struct.new(
      :action,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for steps that should be executed in parallel during a
    # Region switch.
    #
    # @!attribute [rw] steps
    #   The steps for a parallel execution block.
    #   @return [Array<Types::Step>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ParallelExecutionBlockConfiguration AWS API Documentation
    #
    class ParallelExecutionBlockConfiguration < Struct.new(
      :steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a Region switch plan. A plan defines the steps required to
    # shift traffic from one Amazon Web Services Region to another.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for a plan.
    #   @return [String]
    #
    # @!attribute [rw] workflows
    #   The workflows for a plan.
    #   @return [Array<Types::Workflow>]
    #
    # @!attribute [rw] execution_role
    #   The execution role for a plan.
    #   @return [String]
    #
    # @!attribute [rw] recovery_time_objective_minutes
    #   The recovery time objective for a plan.
    #   @return [Integer]
    #
    # @!attribute [rw] associated_alarms
    #   The associated application health alarms for a plan.
    #   @return [Hash<String,Types::AssociatedAlarm>]
    #
    # @!attribute [rw] triggers
    #   The triggers for a plan.
    #   @return [Array<Types::Trigger>]
    #
    # @!attribute [rw] name
    #   The name for a plan.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The Amazon Web Services Regions for a plan.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recovery_approach
    #   The recovery approach for a Region switch plan, which can be
    #   active/active (activeActive) or active/passive (activePassive).
    #   @return [String]
    #
    # @!attribute [rw] primary_region
    #   The primary Region for a plan.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of a plan.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version for the plan.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the plan was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Plan AWS API Documentation
    #
    class Plan < Struct.new(
      :arn,
      :description,
      :workflows,
      :execution_role,
      :recovery_time_objective_minutes,
      :associated_alarms,
      :triggers,
      :name,
      :regions,
      :recovery_approach,
      :primary_region,
      :owner,
      :version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for nested Region switch plans. This allows one Region
    # switch plan to trigger another plan as part of its execution.
    #
    # @!attribute [rw] cross_account_role
    #   The cross account role for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID (secret key) for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the plan configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/RegionSwitchPlanConfiguration AWS API Documentation
    #
    class RegionSwitchPlanConfiguration < Struct.new(
      :cross_account_role,
      :external_id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # HTTP Status Code: 404
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a warning about a resource in a Region switch plan.
    #
    # @!attribute [rw] workflow
    #   The workflow for the resource warning.
    #   @return [Types::MinimalWorkflow]
    #
    # @!attribute [rw] version
    #   The version for the resource warning.
    #   @return [String]
    #
    # @!attribute [rw] step_name
    #   The name of the step for the resource warning.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] warning_status
    #   The status of the resource warning.
    #   @return [String]
    #
    # @!attribute [rw] warning_updated_time
    #   The timestamp when the warning was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] warning_message
    #   The warning message about what needs to be corrected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ResourceWarning AWS API Documentation
    #
    class ResourceWarning < Struct.new(
      :workflow,
      :version,
      :step_name,
      :resource_arn,
      :warning_status,
      :warning_updated_time,
      :warning_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Route 53 health check.
    #
    # @!attribute [rw] hosted_zone_id
    #   The Amazon Route 53 health check hosted zone ID.
    #   @return [String]
    #
    # @!attribute [rw] record_name
    #   The Amazon Route 53 record name.
    #   @return [String]
    #
    # @!attribute [rw] health_check_id
    #   The Amazon Route 53 health check ID.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Route 53 Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Route53HealthCheck AWS API Documentation
    #
    class Route53HealthCheck < Struct.new(
      :hosted_zone_id,
      :record_name,
      :health_check_id,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Route 53 health check configuration.
    #
    # @!attribute [rw] timeout_minutes
    #   The Amazon Route 53 health check configuration time out (in
    #   minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] cross_account_role
    #   The cross account role for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID (secret key) for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The Amazon Route 53 health check configuration hosted zone ID.
    #   @return [String]
    #
    # @!attribute [rw] record_name
    #   The Amazon Route 53 health check configuration record name.
    #   @return [String]
    #
    # @!attribute [rw] record_sets
    #   The Amazon Route 53 health check configuration record sets.
    #   @return [Array<Types::Route53ResourceRecordSet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Route53HealthCheckConfiguration AWS API Documentation
    #
    class Route53HealthCheckConfiguration < Struct.new(
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :hosted_zone_id,
      :record_name,
      :record_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Route 53 record set.
    #
    # @!attribute [rw] record_set_identifier
    #   The Amazon Route 53 record set identifier.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Route 53 record set Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Route53ResourceRecordSet AWS API Documentation
    #
    class Route53ResourceRecordSet < Struct.new(
      :record_set_identifier,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service for a cross account role.
    #
    # @!attribute [rw] cross_account_role
    #   The cross account role for a service.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID (secret key) for the service.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The cluster Amazon Resource Name (ARN) for a service.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) for a service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Service AWS API Documentation
    #
    class Service < Struct.new(
      :cross_account_role,
      :external_id,
      :cluster_arn,
      :service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan_arn
    #   The Amazon Resource Name (ARN) of the plan to execute.
    #   @return [String]
    #
    # @!attribute [rw] target_region
    #   The Amazon Web Services Region to target with this execution. This
    #   is the Region that traffic will be shifted to or from, depending on
    #   the action.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action to perform. Valid values are ACTIVATE (to shift traffic
    #   to the target Region) or DEACTIVATE (to shift traffic away from the
    #   target Region).
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The plan execution mode. Valid values are `Practice`, for testing
    #   without making actual changes, or `Recovery`, for actual traffic
    #   shifting and application recovery.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   An optional comment explaining why the plan execution is being
    #   started.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   A boolean value indicating whether to use the latest version of the
    #   plan. If set to false, you must specify a specific version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/StartPlanExecutionRequest AWS API Documentation
    #
    class StartPlanExecutionRequest < Struct.new(
      :plan_arn,
      :target_region,
      :action,
      :mode,
      :comment,
      :latest_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_id
    #   The execution identifier of a plan execution.
    #   @return [String]
    #
    # @!attribute [rw] plan
    #   The details of the Region switch plan.
    #   @return [String]
    #
    # @!attribute [rw] plan_version
    #   The version of the plan, a unique number generated by Region switch.
    #   @return [String]
    #
    # @!attribute [rw] activate_region
    #   The Amazon Web Services Region to activate.
    #   @return [String]
    #
    # @!attribute [rw] deactivate_region
    #   The Amazon Web Services Region to deactivate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/StartPlanExecutionResponse AWS API Documentation
    #
    class StartPlanExecutionResponse < Struct.new(
      :execution_id,
      :plan,
      :plan_version,
      :activate_region,
      :deactivate_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a step in a Region switch plan workflow. Each step performs
    # a specific action during the Region switch process.
    #
    # @!attribute [rw] name
    #   The name of a step in a workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a step in a workflow.
    #   @return [String]
    #
    # @!attribute [rw] execution_block_configuration
    #   The configuration for an execution block in a workflow.
    #   @return [Types::ExecutionBlockConfiguration]
    #
    # @!attribute [rw] execution_block_type
    #   The type of an execution block in a workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Step AWS API Documentation
    #
    class Step < Struct.new(
      :name,
      :description,
      :execution_block_configuration,
      :execution_block_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the state of a step in a plan execution.
    #
    # @!attribute [rw] name
    #   The name of a step in a workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a step in a workflow. For example, a status might be
    #   Completed or Pending Approval.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when a step started execution.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp when a step endeded execution.
    #   @return [Time]
    #
    # @!attribute [rw] step_mode
    #   The mode for a step execution. The mode can be Graceful or
    #   Ungraceful.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/StepState AWS API Documentation
    #
    class StepState < Struct.new(
      :name,
      :status,
      :start_time,
      :end_time,
      :step_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for a tag that you add to a resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags that you add to a resource. You can add a maximum of 50 tags in
    #   Region switch.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Defines a condition that can automatically trigger the execution of a
    # Region switch plan.
    #
    # @!attribute [rw] description
    #   The description for a trigger.
    #   @return [String]
    #
    # @!attribute [rw] target_region
    #   The Amazon Web Services Region for a trigger.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action to perform when the trigger fires. Valid values include
    #   ACTIVATE and DEACTIVATE.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   The conditions that must be met for the trigger to fire.
    #   @return [Array<Types::TriggerCondition>]
    #
    # @!attribute [rw] min_delay_minutes_between_executions
    #   The minimum time, in minutes, that must elapse between automatic
    #   executions of the plan.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Trigger AWS API Documentation
    #
    class Trigger < Struct.new(
      :description,
      :target_region,
      :action,
      :conditions,
      :min_delay_minutes_between_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a condition that must be met for a trigger to fire.
    #
    # @!attribute [rw] associated_alarm_name
    #   The name of the CloudWatch alarm associated with the condition.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   The condition that must be met. Valid values include ALARM and OK.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/TriggerCondition AWS API Documentation
    #
    class TriggerCondition < Struct.new(
      :associated_alarm_name,
      :condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for a tag you remove a resource from.
    #   @return [String]
    #
    # @!attribute [rw] resource_tag_keys
    #   Tag keys that you remove from a resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :resource_tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] plan_arn
    #   The Amazon Resource Name (ARN) of the plan with the execution to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution identifier of a plan execution.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action specified for a plan execution, for example, Switch to
    #   Graceful or Pause.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   An optional comment about the plan execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UpdatePlanExecutionRequest AWS API Documentation
    #
    class UpdatePlanExecutionRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :action,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UpdatePlanExecutionResponse AWS API Documentation
    #
    class UpdatePlanExecutionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] plan_arn
    #   The Amazon Resource Name (ARN) of the plan containing the execution
    #   step to update.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The unique identifier of the plan execution containing the step to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   An optional comment about the plan execution.
    #   @return [String]
    #
    # @!attribute [rw] step_name
    #   The name of the execution step to update.
    #   @return [String]
    #
    # @!attribute [rw] action_to_take
    #   The updated action to take for the step. This can be used to skip or
    #   retry a step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UpdatePlanExecutionStepRequest AWS API Documentation
    #
    class UpdatePlanExecutionStepRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :comment,
      :step_name,
      :action_to_take)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UpdatePlanExecutionStepResponse AWS API Documentation
    #
    class UpdatePlanExecutionStepResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the Region switch plan.
    #   @return [String]
    #
    # @!attribute [rw] workflows
    #   The updated workflows for the Region switch plan.
    #   @return [Array<Types::Workflow>]
    #
    # @!attribute [rw] execution_role
    #   The updated IAM role ARN that grants Region switch the permissions
    #   needed to execute the plan steps.
    #   @return [String]
    #
    # @!attribute [rw] recovery_time_objective_minutes
    #   The updated target recovery time objective (RTO) in minutes for the
    #   plan.
    #   @return [Integer]
    #
    # @!attribute [rw] associated_alarms
    #   The updated CloudWatch alarms associated with the plan.
    #   @return [Hash<String,Types::AssociatedAlarm>]
    #
    # @!attribute [rw] triggers
    #   The updated conditions that can automatically trigger the execution
    #   of the plan.
    #   @return [Array<Types::Trigger>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UpdatePlanRequest AWS API Documentation
    #
    class UpdatePlanRequest < Struct.new(
      :arn,
      :description,
      :workflows,
      :execution_role,
      :recovery_time_objective_minutes,
      :associated_alarms,
      :triggers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan
    #   The details of the updated Region switch plan.
    #   @return [Types::Plan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UpdatePlanResponse AWS API Documentation
    #
    class UpdatePlanResponse < Struct.new(
      :plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a workflow in a Region switch plan. A workflow defines a
    # sequence of steps to execute during a Region switch.
    #
    # @!attribute [rw] steps
    #   The steps that make up the workflow.
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] workflow_target_action
    #   The action that the workflow performs. Valid values include ACTIVATE
    #   and DEACTIVATE.
    #   @return [String]
    #
    # @!attribute [rw] workflow_target_region
    #   The Amazon Web Services Region that the workflow targets.
    #   @return [String]
    #
    # @!attribute [rw] workflow_description
    #   The description of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/Workflow AWS API Documentation
    #
    class Workflow < Struct.new(
      :steps,
      :workflow_target_action,
      :workflow_target_region,
      :workflow_description)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

