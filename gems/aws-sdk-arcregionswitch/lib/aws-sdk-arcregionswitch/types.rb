# frozen_string_literal: true

# This is generated code!

module Aws::ARCRegionswitch
  # This module contains the types returned by client operations.
  module Types

    # <p>A summarized representation of a plan execution. This structure contains key information about an execution without all the detailed step data.</p>
    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The execution identifier of a plan execution.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version for the plan.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the plan execution was last updated.</p>
    #   @return [Time]
    # @!attribute comment
    #   <p>An optional comment about the plan execution.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp when the plan execution was started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp when the plan execution was ended.</p>
    #   @return [Time]
    # @!attribute mode
    #   <p>The plan execution mode. Valid values are <code>Practice</code>, for testing without making actual changes, or <code>Recovery</code>, for actual traffic shifting and application recovery.</p>
    #   @return [String]
    # @!attribute execution_state
    #   <p>The plan execution state. Provides the state of a plan execution, for example, In Progress or Paused by Operator.</p>
    #   @return [String]
    # @!attribute execution_action
    #   <p>The plan execution action. Valid values are <code>Activate</code>, to activate an Amazon Web Services Region, or <code>Deactivate</code>, to deactivate a Region.</p>
    #   @return [String]
    # @!attribute execution_region
    #   <p>The Amazon Web Services Region for a plan execution.</p>
    #   @return [String]
    # @!attribute actual_recovery_time
    #   <p>The actual recovery time that Region switch calculates for a plan execution. Actual recovery time includes the time for the plan to run added to the time elapsed until the application health alarms that you've specified are healthy again.</p>
    #   @return [String]
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
      :actual_recovery_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summarized representation of a Region switch plan. This structure contains key information about a plan without all the detailed workflow and step data.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Region switch plan.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of a Region switch plan.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a Region switch plan.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The Amazon Web Services Region specified for a Region switch plan.</p>
    #   @return [Array<String>]
    # @!attribute recovery_approach
    #   <p>The recovery approach for a Region switch plan, which can be active/active (activeActive) or active/passive (activePassive).</p>
    #   @return [String]
    # @!attribute primary_region
    #   <p>The primary Region for a plan.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version for the plan.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the plan execution was last updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of a Region switch plan.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The execution role is a way to categorize a Region switch plan. </p>
    #   @return [String]
    # @!attribute active_plan_execution
    #   <p>Specifies if this is the active plan execution at this time.</p>
    #   @return [String]
    # @!attribute recovery_time_objective_minutes
    #   <p>The recovery time objective that you've specified.</p>
    #   @return [Integer]
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
      :recovery_time_objective_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have sufficient access to perform this action.</p> <p>HTTP Status Code: 403</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The execution identifier of a plan execution.</p>
    #   @return [String]
    # @!attribute step_name
    #   <p>The name of a step in a plan execution.</p>
    #   @return [String]
    # @!attribute approval
    #   <p>The status of approval for a plan execution step. </p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment that you can enter about a plan execution.</p>
    #   @return [String]
    class ApprovePlanExecutionStepRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :step_name,
      :approval,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ApprovePlanExecutionStepResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for ARC routing controls used in a Region switch plan. Routing controls are simple on/off switches that you can use to shift traffic away from an impaired Region.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute cross_account_role
    #   <p>The cross account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute region_and_routing_controls
    #   <p>The Region and ARC routing controls for the configuration.</p>
    #   @return [Hash<String, Array<Types::ArcRoutingControlState>>]
    class ArcRoutingControlConfiguration < Struct.new(
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :region_and_routing_controls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        super
      end
    end

    # <p>Represents the state of an ARC routing control.</p>
    # @!attribute routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of a routing control.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of an ARC routing control, On or Off.</p>
    #   @return [String]
    class ArcRoutingControlState < Struct.new(
      :routing_control_arn,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for an Amazon EC2 Auto Scaling group used in a Region switch plan.</p>
    # @!attribute cross_account_role
    #   <p>The cross account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the EC2 Auto Scaling group.</p>
    #   @return [String]
    class Asg < Struct.new(
      :cross_account_role,
      :external_id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon CloudWatch alarm associated with a Region switch plan. These alarms can be used to trigger automatic execution of the plan.</p>
    # @!attribute cross_account_role
    #   <p>The cross account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>The resource identifier for alarms that you associate with a plan.</p>
    #   @return [String]
    # @!attribute alarm_type
    #   <p>The alarm type for an associated alarm. An associated CloudWatch alarm can be an application health alarm or a trigger alarm.</p>
    #   @return [String]
    class AssociatedAlarm < Struct.new(
      :cross_account_role,
      :external_id,
      :resource_identifier,
      :alarm_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The execution identifier of a plan execution.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment that you can enter about canceling a plan execution step.</p>
    #   @return [String]
    class CancelPlanExecutionRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelPlanExecutionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of a Region switch plan.</p>
    #   @return [String]
    # @!attribute workflows
    #   <p>An array of workflows included in a Region switch plan.</p>
    #   @return [Array<Types::Workflow>]
    # @!attribute execution_role
    #   <p>An execution role is a way to categorize a Region switch plan.</p>
    #   @return [String]
    # @!attribute recovery_time_objective_minutes
    #   <p>Optionally, you can specify an recovery time objective for a Region switch plan, in minutes.</p>
    #   @return [Integer]
    # @!attribute associated_alarms
    #   <p>The alarms associated with a Region switch plan.</p>
    #   @return [Hash<String, Types::AssociatedAlarm>]
    # @!attribute triggers
    #   <p>The triggers associated with a Region switch plan.</p>
    #   @return [Array<Types::Trigger>]
    # @!attribute name
    #   <p>The name of a Region switch plan.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>An array that specifies the Amazon Web Services Regions for a Region switch plan. Specify two Regions.</p>
    #   @return [Array<String>]
    # @!attribute recovery_approach
    #   <p>The recovery approach for a Region switch plan, which can be active/active (activeActive) or active/passive (activePassive).</p>
    #   @return [String]
    # @!attribute primary_region
    #   <p>The primary Amazon Web Services Region for the application. This is the Region where the application normally runs before any Region switch occurs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the Region switch plan.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan
    #   <p>The details of the created Region switch plan.</p>
    #   @return [Types::Plan]
    class CreatePlanResponse < Struct.new(
      :plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Amazon Web Services Lambda functions that perform custom actions during a Region switch.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute lambdas
    #   <p>The Amazon Web Services Lambda functions for the execution block.</p>
    #   @return [Array<Types::Lambdas>]
    # @!attribute retry_interval_minutes
    #   <p>The retry interval specified.</p>
    #   @return [Float]
    # @!attribute region_to_run
    #   <p>The Amazon Web Services Region for the function to run in.</p>
    #   @return [String]
    # @!attribute ungraceful
    #   <p>The settings for ungraceful execution.</p>
    #   @return [Types::LambdaUngraceful]
    class CustomActionLambdaConfiguration < Struct.new(
      :timeout_minutes,
      :lambdas,
      :retry_interval_minutes,
      :region_to_run,
      :ungraceful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        super
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    #   @return [String]
    class DeletePlanRequest < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePlanResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for increasing the capacity of Amazon EC2 Auto Scaling groups during a Region switch.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute asgs
    #   <p>The EC2 Auto Scaling groups for the configuration.</p>
    #   @return [Array<Types::Asg>]
    # @!attribute ungraceful
    #   <p>The settings for ungraceful execution.</p>
    #   @return [Types::Ec2Ungraceful]
    # @!attribute target_percent
    #   <p>The target percentage that you specify for EC2 Auto Scaling groups.</p>
    #   @return [Integer]
    # @!attribute capacity_monitoring_approach
    #   <p>The monitoring approach that you specify EC2 Auto Scaling groups for the configuration.</p>
    #   @return [String]
    class Ec2AsgCapacityIncreaseConfiguration < Struct.new(
      :timeout_minutes,
      :asgs,
      :ungraceful,
      :target_percent,
      :capacity_monitoring_approach,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        options[:target_percent] = 100 unless options.key?(:target_percent)
        options[:capacity_monitoring_approach] = 'sampledMaxInLast24Hours' unless options.key?(:capacity_monitoring_approach)
        super
      end
    end

    # <p>Configuration for handling failures when performing operations on EC2 resources.</p>
    # @!attribute minimum_success_percentage
    #   <p>The minimum success percentage that you specify for EC2 Auto Scaling groups.</p>
    #   @return [Integer]
    class Ec2Ungraceful < Struct.new(
      :minimum_success_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an Amazon Web Services ECS capacity increase.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute services
    #   <p>The services specified for the configuration.</p>
    #   @return [Array<Types::Service>]
    # @!attribute ungraceful
    #   <p>The settings for ungraceful execution.</p>
    #   @return [Types::EcsUngraceful]
    # @!attribute target_percent
    #   <p>The target percentage specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute capacity_monitoring_approach
    #   <p>The monitoring approach specified for the configuration, for example, <code>Most_Recent</code>.</p>
    #   @return [String]
    class EcsCapacityIncreaseConfiguration < Struct.new(
      :timeout_minutes,
      :services,
      :ungraceful,
      :target_percent,
      :capacity_monitoring_approach,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        options[:target_percent] = 100 unless options.key?(:target_percent)
        options[:capacity_monitoring_approach] = 'sampledMaxInLast24Hours' unless options.key?(:capacity_monitoring_approach)
        super
      end
    end

    # <p>The settings for ungraceful execution.</p>
    # @!attribute minimum_success_percentage
    #   <p>The minimum success percentage specified for the configuration.</p>
    #   @return [Integer]
    class EcsUngraceful < Struct.new(
      :minimum_success_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services EKS cluster execution block configuration.</p>
    # @!attribute cross_account_role
    #   <p>The cross account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services EKS cluster.</p>
    #   @return [String]
    class EksCluster < Struct.new(
      :cross_account_role,
      :external_id,
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services EKS resource scaling configuration.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute kubernetes_resource_type
    #   <p>The Kubernetes resource type for the configuration.</p>
    #   @return [Types::KubernetesResourceType]
    # @!attribute scaling_resources
    #   <p>The scaling resources for the configuration.</p>
    #   @return [Array<Hash<String, Hash<String, Types::KubernetesScalingResource>>>]
    # @!attribute eks_clusters
    #   <p>The clusters for the configuration.</p>
    #   @return [Array<Types::EksCluster>]
    # @!attribute ungraceful
    #   <p>The settings for ungraceful execution.</p>
    #   @return [Types::EksResourceScalingUngraceful]
    # @!attribute target_percent
    #   <p>The target percentage for the configuration.</p>
    #   @return [Integer]
    # @!attribute capacity_monitoring_approach
    #   <p>The monitoring approach for the configuration, that is, whether it was sampled in the last 24 hours or autoscaled in the last 24 hours.</p>
    #   @return [String]
    class EksResourceScalingConfiguration < Struct.new(
      :timeout_minutes,
      :kubernetes_resource_type,
      :scaling_resources,
      :eks_clusters,
      :ungraceful,
      :target_percent,
      :capacity_monitoring_approach,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        options[:target_percent] = 100 unless options.key?(:target_percent)
        options[:capacity_monitoring_approach] = 'sampledMaxInLast24Hours' unless options.key?(:capacity_monitoring_approach)
        super
      end
    end

    # <p>The ungraceful settings for Amazon Web Services EKS resource scaling.</p>
    # @!attribute minimum_success_percentage
    #   <p>The minimum success percentage for the configuration.</p>
    #   @return [Integer]
    class EksResourceScalingUngraceful < Struct.new(
      :minimum_success_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for approval steps in a Region switch plan execution. Approval steps require manual intervention before the execution can proceed.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute approval_role
    #   <p>The IAM approval role for the configuration.</p>
    #   @return [String]
    class ExecutionApprovalConfiguration < Struct.new(
      :timeout_minutes,
      :approval_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        super
      end
    end

    # <p>Execution block configurations for a workflow in a Region switch plan. An execution block represents a specific type of action to perform during a Region switch.</p>
    # @!attribute custom_action_lambda_config
    #   <p>An Amazon Web Services Lambda execution block.</p>
    #   @return [Types::CustomActionLambdaConfiguration]
    # @!attribute ec2_asg_capacity_increase_config
    #   <p>An EC2 Auto Scaling group execution block.</p>
    #   @return [Types::Ec2AsgCapacityIncreaseConfiguration]
    # @!attribute execution_approval_config
    #   <p>A manual approval execution block.</p>
    #   @return [Types::ExecutionApprovalConfiguration]
    # @!attribute arc_routing_control_config
    #   <p>An ARC routing control execution block.</p>
    #   @return [Types::ArcRoutingControlConfiguration]
    # @!attribute global_aurora_config
    #   <p>An Aurora Global Database execution block.</p>
    #   @return [Types::GlobalAuroraConfiguration]
    # @!attribute parallel_config
    #   <p>A parallel configuration execution block.</p>
    #   @return [Types::ParallelExecutionBlockConfiguration]
    # @!attribute region_switch_plan_config
    #   <p>A Region switch plan execution block.</p>
    #   @return [Types::RegionSwitchPlanConfiguration]
    # @!attribute ecs_capacity_increase_config
    #   <p>The capacity increase specified for the configuration.</p>
    #   @return [Types::EcsCapacityIncreaseConfiguration]
    # @!attribute eks_resource_scaling_config
    #   <p>An Amazon Web Services EKS resource scaling execution block.</p>
    #   @return [Types::EksResourceScalingConfiguration]
    # @!attribute route53_health_check_config
    #   <p>The Amazon Route 53 health check configuration.</p>
    #   @return [Types::Route53HealthCheckConfiguration]
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
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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

    # <p>Represents an event that occurred during a plan execution. These events provide a detailed timeline of the execution process.</p>
    # @!attribute timestamp
    #   <p>The timestamp for an execution event.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The type of an execution event.</p>
    #   @return [String]
    # @!attribute step_name
    #   <p>The step name for an execution event.</p>
    #   @return [String]
    # @!attribute execution_block_type
    #   <p>The execution block type for an execution event.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The resources for an execution event.</p>
    #   @return [Array<String>]
    # @!attribute error
    #   <p>Errors for an execution event.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for an execution event.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The event ID for an execution event.</p>
    #   @return [String]
    # @!attribute previous_event_id
    #   <p>The event ID of the previous execution event.</p>
    #   @return [String]
    class ExecutionEvent < Struct.new(
      :timestamp,
      :type,
      :step_name,
      :execution_block_type,
      :resources,
      :error,
      :description,
      :event_id,
      :previous_event_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the Region switch plan to retrieve evaluation status for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class GetPlanEvaluationStatusRequest < Struct.new(
      :plan_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    #   @return [String]
    # @!attribute last_evaluation_time
    #   <p>The time of the last time that Region switch ran an evaluation of the plan.</p>
    #   @return [Time]
    # @!attribute last_evaluated_version
    #   <p>The version of the last evaluation of the plan.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region for the plan.</p>
    #   @return [String]
    # @!attribute evaluation_state
    #   <p>The evaluation state for the plan.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The current evaluation warnings for the plan. </p>
    #   @return [Array<Types::ResourceWarning>]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class GetPlanEvaluationStatusResponse < Struct.new(
      :plan_arn,
      :last_evaluation_time,
      :last_evaluated_version,
      :region,
      :evaluation_state,
      :warnings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan with the execution to retrieve.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The execution identifier of a plan execution.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class GetPlanExecutionRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The execution identifier of a plan execution.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version for the plan.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the plan execution was last updated.</p>
    #   @return [Time]
    # @!attribute comment
    #   <p>A comment included on the plan execution.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time (UTC) when the plan execution started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time (UTC) when the plan execution ended.</p>
    #   @return [Time]
    # @!attribute mode
    #   <p>The plan execution mode. Valid values are <code>Practice</code>, for testing without making actual changes, or <code>Recovery</code>, for actual traffic shifting and application recovery.</p>
    #   @return [String]
    # @!attribute execution_state
    #   <p>The plan execution state. Provides the state of a plan execution, for example, In Progress or Paused by Operator.</p>
    #   @return [String]
    # @!attribute execution_action
    #   <p>The plan execution action. Valid values are <code>Activate</code>, to activate an Amazon Web Services Region, or <code>Deactivate</code>, to deactivate a Region.</p>
    #   @return [String]
    # @!attribute execution_region
    #   <p>The Amazon Web Services Region for a plan execution.</p>
    #   @return [String]
    # @!attribute step_states
    #   <p>The states of the steps in the plan execution.</p>
    #   @return [Array<Types::StepState>]
    # @!attribute plan
    #   <p>The details of the Region switch plan.</p>
    #   @return [Types::Plan]
    # @!attribute actual_recovery_time
    #   <p>The actual recovery time that Region switch calculates for a plan execution. Actual recovery time includes the time for the plan to run added to the time elapsed until the application health alarms that you've specified are healthy again.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
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
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the plan in Region.</p>
    #   @return [String]
    class GetPlanInRegionRequest < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan
    #   <p>The details of the Region switch plan.</p>
    #   @return [Types::Plan]
    class GetPlanInRegionResponse < Struct.new(
      :plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    #   @return [String]
    class GetPlanRequest < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan
    #   <p>The detailed information about the requested Region switch plan.</p>
    #   @return [Types::Plan]
    class GetPlanResponse < Struct.new(
      :plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Amazon Aurora global databases used in a Region switch plan.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute cross_account_role
    #   <p>The cross account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute behavior
    #   <p>The behavior for a global database, that is, only allow switchover or also allow failover.</p>
    #   @return [String]
    # @!attribute ungraceful
    #   <p>The settings for ungraceful execution.</p>
    #   @return [Types::GlobalAuroraUngraceful]
    # @!attribute global_cluster_identifier
    #   <p>The global cluster identifier for a global database.</p>
    #   @return [String]
    # @!attribute database_cluster_arns
    #   <p>The database cluster Amazon Resource Names (ARNs) for a global database.</p>
    #   @return [Array<String>]
    class GlobalAuroraConfiguration < Struct.new(
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :behavior,
      :ungraceful,
      :global_cluster_identifier,
      :database_cluster_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        options[:behavior] = 'switchoverOnly' unless options.key?(:behavior)
        super
      end
    end

    # <p>Configuration for handling failures when performing operations on Aurora global databases.</p>
    # @!attribute ungraceful
    #   <p>The settings for ungraceful execution.</p>
    #   @return [String]
    class GlobalAuroraUngraceful < Struct.new(
      :ungraceful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has an invalid argument.</p>
    # @!attribute message
    #   @return [String]
    class IllegalArgumentException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because the current state of the resource doesn't allow the operation to proceed.</p> <p>HTTP Status Code: 400</p>
    # @!attribute message
    #   @return [String]
    class IllegalStateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception, or failure.</p> <p>HTTP Status Code: 500</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the type of Kubernetes resource to scale in an Amazon EKS cluster.</p>
    # @!attribute api_version
    #   <p>The API version type for the Kubernetes resource.</p>
    #   @return [String]
    # @!attribute kind
    #   <p>The kind for the Kubernetes resource.</p>
    #   @return [String]
    class KubernetesResourceType < Struct.new(
      :api_version,
      :kind,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a Kubernetes resource to scale in an Amazon EKS cluster.</p>
    # @!attribute namespace
    #   <p>The namespace for the Kubernetes resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the Kubernetes resource.</p>
    #   @return [String]
    # @!attribute hpa_name
    #   <p>The hpaname for the Kubernetes resource.</p>
    #   @return [String]
    class KubernetesScalingResource < Struct.new(
      :namespace,
      :name,
      :hpa_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for handling failures when invoking Lambda functions.</p>
    # @!attribute behavior
    #   <p>The ungraceful behavior for a Lambda function, which must be set to <code>skip</code>.</p>
    #   @return [String]
    class LambdaUngraceful < Struct.new(
      :behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:behavior] = 'skip' unless options.key?(:behavior)
        super
      end
    end

    # <p>Configuration for Amazon Web Services Lambda functions used in a Region switch plan.</p>
    # @!attribute cross_account_role
    #   <p>The cross account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function.</p>
    #   @return [String]
    class Lambdas < Struct.new(
      :cross_account_role,
      :external_id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The execution identifier of a plan execution.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the plan execution event.</p>
    #   @return [String]
    class ListPlanExecutionEventsRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :max_results,
      :next_token,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The items in the plan execution event.</p>
    #   @return [Array<Types::ExecutionEvent>]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class ListPlanExecutionEventsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arn
    #   <p>The ARN for the plan.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the plan execution. For example, the plan execution might be In Progress.</p>
    #   @return [String]
    class ListPlanExecutionsRequest < Struct.new(
      :plan_arn,
      :max_results,
      :next_token,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The items in the plan execution to return.</p>
    #   @return [Array<Types::AbbreviatedExecution>]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class ListPlanExecutionsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class ListPlansInRegionRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plans
    #   <p>The plans that were requested.</p>
    #   @return [Array<Types::AbbreviatedPlan>]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class ListPlansInRegionResponse < Struct.new(
      :plans,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class ListPlansRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plans
    #   <p>The plans that were requested.</p>
    #   @return [Array<Types::AbbreviatedPlan>]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class ListPlansResponse < Struct.new(
      :plans,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Route 53 health check request.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>The hosted zone ID for the health checks.</p>
    #   @return [String]
    # @!attribute record_name
    #   <p>The record name for the health checks.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class ListRoute53HealthChecksRequest < Struct.new(
      :arn,
      :hosted_zone_id,
      :record_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute health_checks
    #   <p>List of the health checks requested.</p>
    #   @return [Array<Types::Route53HealthCheck>]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class ListRoute53HealthChecksResponse < Struct.new(
      :health_checks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_tags
    #   <p>The tags for a resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A simplified representation of a workflow in a Region switch plan.</p>
    # @!attribute action
    #   <p>The action for a minimal workflow, which can be Activate or Deactivate.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for a minimal workflow</p>
    #   @return [String]
    class MinimalWorkflow < Struct.new(
      :action,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for steps that should be executed in parallel during a Region switch.</p>
    # @!attribute steps
    #   <p>The steps for a parallel execution block.</p>
    #   @return [Array<Types::Step>]
    class ParallelExecutionBlockConfiguration < Struct.new(
      :steps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a Region switch plan. A plan defines the steps required to shift traffic from one Amazon Web Services Region to another.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for a plan.</p>
    #   @return [String]
    # @!attribute workflows
    #   <p>The workflows for a plan.</p>
    #   @return [Array<Types::Workflow>]
    # @!attribute execution_role
    #   <p>The execution role for a plan.</p>
    #   @return [String]
    # @!attribute recovery_time_objective_minutes
    #   <p>The recovery time objective for a plan.</p>
    #   @return [Integer]
    # @!attribute associated_alarms
    #   <p>The associated application health alarms for a plan.</p>
    #   @return [Hash<String, Types::AssociatedAlarm>]
    # @!attribute triggers
    #   <p>The triggers for a plan.</p>
    #   @return [Array<Types::Trigger>]
    # @!attribute name
    #   <p>The name for a plan.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The Amazon Web Services Regions for a plan.</p>
    #   @return [Array<String>]
    # @!attribute recovery_approach
    #   <p>The recovery approach for a Region switch plan, which can be active/active (activeActive) or active/passive (activePassive).</p>
    #   @return [String]
    # @!attribute primary_region
    #   <p>The primary Region for a plan.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of a plan.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version for the plan.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the plan was last updated.</p>
    #   @return [Time]
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for nested Region switch plans. This allows one Region switch plan to trigger another plan as part of its execution.</p>
    # @!attribute cross_account_role
    #   <p>The cross account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the plan configuration.</p>
    #   @return [String]
    class RegionSwitchPlanConfiguration < Struct.new(
      :cross_account_role,
      :external_id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p> <p>HTTP Status Code: 404</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a warning about a resource in a Region switch plan.</p>
    # @!attribute workflow
    #   <p>The workflow for the resource warning.</p>
    #   @return [Types::MinimalWorkflow]
    # @!attribute version
    #   <p>The version for the resource warning.</p>
    #   @return [String]
    # @!attribute step_name
    #   <p>The name of the step for the resource warning.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute warning_status
    #   <p>The status of the resource warning.</p>
    #   @return [String]
    # @!attribute warning_updated_time
    #   <p>The timestamp when the warning was last updated.</p>
    #   @return [Time]
    # @!attribute warning_message
    #   <p>The warning message about what needs to be corrected.</p>
    #   @return [String]
    class ResourceWarning < Struct.new(
      :workflow,
      :version,
      :step_name,
      :resource_arn,
      :warning_status,
      :warning_updated_time,
      :warning_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Route 53 health check.</p>
    # @!attribute hosted_zone_id
    #   <p>The Amazon Route 53 health check hosted zone ID.</p>
    #   @return [String]
    # @!attribute record_name
    #   <p>The Amazon Route 53 record name.</p>
    #   @return [String]
    # @!attribute health_check_id
    #   <p>The Amazon Route 53 health check ID.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Route 53 Region.</p>
    #   @return [String]
    class Route53HealthCheck < Struct.new(
      :hosted_zone_id,
      :record_name,
      :health_check_id,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Route 53 health check configuration.</p>
    # @!attribute timeout_minutes
    #   <p>The Amazon Route 53 health check configuration time out (in minutes).</p>
    #   @return [Integer]
    # @!attribute cross_account_role
    #   <p>The cross account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>The Amazon Route 53 health check configuration hosted zone ID.</p>
    #   @return [String]
    # @!attribute record_name
    #   <p>The Amazon Route 53 health check configuration record name.</p>
    #   @return [String]
    # @!attribute record_sets
    #   <p>The Amazon Route 53 health check configuration record sets.</p>
    #   @return [Array<Types::Route53ResourceRecordSet>]
    class Route53HealthCheckConfiguration < Struct.new(
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :hosted_zone_id,
      :record_name,
      :record_sets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        super
      end
    end

    # <p>The Amazon Route 53 record set.</p>
    # @!attribute record_set_identifier
    #   <p>The Amazon Route 53 record set identifier.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Route 53 record set Region.</p>
    #   @return [String]
    class Route53ResourceRecordSet < Struct.new(
      :record_set_identifier,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service for a cross account role.</p>
    # @!attribute cross_account_role
    #   <p>The cross account role for a service.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the service.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The cluster Amazon Resource Name (ARN) for a service.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) for a service.</p>
    #   @return [String]
    class Service < Struct.new(
      :cross_account_role,
      :external_id,
      :cluster_arn,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan to execute.</p>
    #   @return [String]
    # @!attribute target_region
    #   <p>The Amazon Web Services Region to target with this execution. This is the Region that traffic will be shifted to or from, depending on the action.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action to perform. Valid values are ACTIVATE (to shift traffic to the target Region) or DEACTIVATE (to shift traffic away from the target Region).</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The plan execution mode. Valid values are <code>Practice</code>, for testing without making actual changes, or <code>Recovery</code>, for actual traffic shifting and application recovery.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment explaining why the plan execution is being started.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>A boolean value indicating whether to use the latest version of the plan. If set to false, you must specify a specific version.</p>
    #   @return [String]
    class StartPlanExecutionRequest < Struct.new(
      :plan_arn,
      :target_region,
      :action,
      :mode,
      :comment,
      :latest_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>The execution identifier of a plan execution.</p>
    #   @return [String]
    # @!attribute plan
    #   <p>The details of the Region switch plan.</p>
    #   @return [String]
    # @!attribute plan_version
    #   <p>The version of the plan, a unique number generated by Region switch.</p>
    #   @return [String]
    # @!attribute activate_region
    #   <p>The Amazon Web Services Region to activate.</p>
    #   @return [String]
    # @!attribute deactivate_region
    #   <p>The Amazon Web Services Region to deactivate.</p>
    #   @return [String]
    class StartPlanExecutionResponse < Struct.new(
      :execution_id,
      :plan,
      :plan_version,
      :activate_region,
      :deactivate_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a step in a Region switch plan workflow. Each step performs a specific action during the Region switch process.</p>
    # @!attribute name
    #   <p>The name of a step in a workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a step in a workflow.</p>
    #   @return [String]
    # @!attribute execution_block_configuration
    #   <p>The configuration for an execution block in a workflow.</p>
    #   @return [Types::ExecutionBlockConfiguration]
    # @!attribute execution_block_type
    #   <p>The type of an execution block in a workflow.</p>
    #   @return [String]
    class Step < Struct.new(
      :name,
      :description,
      :execution_block_configuration,
      :execution_block_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the state of a step in a plan execution.</p>
    # @!attribute name
    #   <p>The name of a step in a workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a step in a workflow. For example, a status might be Completed or Pending Approval.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp when a step started execution.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp when a step endeded execution.</p>
    #   @return [Time]
    # @!attribute step_mode
    #   <p>The mode for a step execution. The mode can be Graceful or Ungraceful.</p>
    #   @return [String]
    class StepState < Struct.new(
      :name,
      :status,
      :start_time,
      :end_time,
      :step_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for a tag that you add to a resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags that you add to a resource. You can add a maximum of 50 tags in Region switch.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a condition that can automatically trigger the execution of a Region switch plan.</p>
    # @!attribute description
    #   <p>The description for a trigger.</p>
    #   @return [String]
    # @!attribute target_region
    #   <p>The Amazon Web Services Region for a trigger.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action to perform when the trigger fires. Valid values include ACTIVATE and DEACTIVATE.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>The conditions that must be met for the trigger to fire.</p>
    #   @return [Array<Types::TriggerCondition>]
    # @!attribute min_delay_minutes_between_executions
    #   <p>The minimum time, in minutes, that must elapse between automatic executions of the plan.</p>
    #   @return [Integer]
    class Trigger < Struct.new(
      :description,
      :target_region,
      :action,
      :conditions,
      :min_delay_minutes_between_executions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a condition that must be met for a trigger to fire.</p>
    # @!attribute associated_alarm_name
    #   <p>The name of the CloudWatch alarm associated with the condition.</p>
    #   @return [String]
    # @!attribute condition
    #   <p>The condition that must be met. Valid values include ALARM and OK.</p>
    #   @return [String]
    class TriggerCondition < Struct.new(
      :associated_alarm_name,
      :condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for a tag you remove a resource from.</p>
    #   @return [String]
    # @!attribute resource_tag_keys
    #   <p>Tag keys that you remove from a resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :arn,
      :resource_tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan with the execution to update.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The execution identifier of a plan execution.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action specified for a plan execution, for example, Switch to Graceful or Pause.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment about the plan execution.</p>
    #   @return [String]
    class UpdatePlanExecutionRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :action,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdatePlanExecutionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan containing the execution step to update.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The unique identifier of the plan execution containing the step to update.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment about the plan execution.</p>
    #   @return [String]
    # @!attribute step_name
    #   <p>The name of the execution step to update.</p>
    #   @return [String]
    # @!attribute action_to_take
    #   <p>The updated action to take for the step. This can be used to skip or retry a step.</p>
    #   @return [String]
    class UpdatePlanExecutionStepRequest < Struct.new(
      :plan_arn,
      :execution_id,
      :comment,
      :step_name,
      :action_to_take,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdatePlanExecutionStepResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description for the Region switch plan.</p>
    #   @return [String]
    # @!attribute workflows
    #   <p>The updated workflows for the Region switch plan.</p>
    #   @return [Array<Types::Workflow>]
    # @!attribute execution_role
    #   <p>The updated IAM role ARN that grants Region switch the permissions needed to execute the plan steps.</p>
    #   @return [String]
    # @!attribute recovery_time_objective_minutes
    #   <p>The updated target recovery time objective (RTO) in minutes for the plan.</p>
    #   @return [Integer]
    # @!attribute associated_alarms
    #   <p>The updated CloudWatch alarms associated with the plan.</p>
    #   @return [Hash<String, Types::AssociatedAlarm>]
    # @!attribute triggers
    #   <p>The updated conditions that can automatically trigger the execution of the plan.</p>
    #   @return [Array<Types::Trigger>]
    class UpdatePlanRequest < Struct.new(
      :arn,
      :description,
      :workflows,
      :execution_role,
      :recovery_time_objective_minutes,
      :associated_alarms,
      :triggers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan
    #   <p>The details of the updated Region switch plan.</p>
    #   @return [Types::Plan]
    class UpdatePlanResponse < Struct.new(
      :plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a workflow in a Region switch plan. A workflow defines a sequence of steps to execute during a Region switch.</p>
    # @!attribute steps
    #   <p>The steps that make up the workflow.</p>
    #   @return [Array<Types::Step>]
    # @!attribute workflow_target_action
    #   <p>The action that the workflow performs. Valid values include ACTIVATE and DEACTIVATE.</p>
    #   @return [String]
    # @!attribute workflow_target_region
    #   <p>The Amazon Web Services Region that the workflow targets.</p>
    #   @return [String]
    # @!attribute workflow_description
    #   <p>The description of the workflow.</p>
    #   @return [String]
    class Workflow < Struct.new(
      :steps,
      :workflow_target_action,
      :workflow_target_region,
      :workflow_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
