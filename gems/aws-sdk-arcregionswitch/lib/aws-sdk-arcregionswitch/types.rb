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
    #   <p>The plan execution mode. Valid values are <code>graceful</code>, for graceful executions, or <code>ungraceful</code>, for ungraceful executions.</p>
    #   @return [String]
    # @!attribute execution_state
    #   <p>The plan execution state. Provides the state of a plan execution, for example, In Progress or Paused by Operator.</p>
    #   @return [String]
    # @!attribute execution_action
    #   <p>The plan execution action. Valid values are <code>activate</code>, to activate an Amazon Web Services Region, or <code>deactivate</code>, to deactivate a Region.</p>
    #   @return [String]
    # @!attribute execution_region
    #   <p>The Amazon Web Services Region for a plan execution.</p>
    #   @return [String]
    # @!attribute recovery_execution_id
    #   <p>The unique identifier of the most recent recovery execution. Required when starting a post-recovery execution.</p>
    #   @return [String]
    # @!attribute actual_recovery_time
    #   <p>The actual recovery time that Region switch calculates for a plan execution. Actual recovery time includes the time for the plan to run added to the time elapsed until the application health alarms that you've specified are healthy again.</p>
    #   @return [String]
    class AbbreviatedExecution < Struct.new(
      nil,
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
      :recovery_execution_id,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :cross_account_role,
      :external_id,
      :resource_identifier,
      :alarm_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Amazon Aurora provisioned cluster scaling used in a Region switch plan.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute cross_account_role
    #   <p>The cross account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute global_cluster_identifier
    #   <p>The global cluster identifier for a global database.</p>
    #   @return [String]
    # @!attribute region_database_cluster_arns
    #   <p>Per-Region configuration that maps each Region to the Aurora database cluster ARN for scaling.</p>
    #   @return [Hash<String, String>]
    # @!attribute instance_arns
    #   <p>Per-Region configuration that maps each Region to the Aurora database instance ARN for scaling.</p>
    #   @return [Hash<String, String>]
    class AuroraProvisionedScalingConfiguration < Struct.new(
      nil,
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :global_cluster_identifier,
      :region_database_cluster_arns,
      :instance_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        super
      end
    end

    # <p>Configuration for Amazon Aurora Serverless scaling used in a Region switch plan.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute cross_account_role
    #   <p>The cross account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute global_cluster_identifier
    #   <p>The global cluster identifier for a global database.</p>
    #   @return [String]
    # @!attribute region_database_cluster_arns
    #   <p>Per-Region configuration that maps each Region to the Aurora database cluster ARN for scaling.</p>
    #   @return [Hash<String, String>]
    # @!attribute target_percent
    #   <p>The target capacity percentage for Aurora Serverless scaling.</p>
    #   @return [Integer]
    class AuroraServerlessScalingConfiguration < Struct.new(
      nil,
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :global_cluster_identifier,
      :region_database_cluster_arns,
      :target_percent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        options[:target_percent] = 100 unless options.key?(:target_percent)
        super
      end
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
      nil,
      :plan_arn,
      :execution_id,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelPlanExecutionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client token was already used with different request parameters. A client token must map to the same parameters for every request. To retry this operation, provide a new client token.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource involved in the client token conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource involved in the client token conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
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
    # @!attribute report_configuration
    #   <p>Configuration for automatic report generation for plan executions. When configured, Region switch automatically generates a report after each plan execution that includes execution events, plan configuration, and CloudWatch alarm states.</p>
    #   @return [Types::ReportConfiguration]
    # @!attribute service_quota_checks_enabled
    #   <p>Specifies whether to enable service quota checks for the Region switch plan.</p>
    #   @return [Boolean]
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
      nil,
      :description,
      :workflows,
      :execution_role,
      :recovery_time_objective_minutes,
      :associated_alarms,
      :triggers,
      :report_configuration,
      :service_quota_checks_enabled,
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
      nil,
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
    #   <p>The Amazon Web Services Region for the function to run in. For recovery workflows use <code>activatingRegion</code> or <code>deactivatingRegion</code>. For post-recovery workflows, use <code>activeRegion</code> (the Region with customer traffic) or <code>inactiveRegion</code> (the Region with no customer traffic).</p>
    #   @return [String]
    # @!attribute ungraceful
    #   <p>The settings for ungraceful execution.</p>
    #   @return [Types::LambdaUngraceful]
    class CustomActionLambdaConfiguration < Struct.new(
      nil,
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
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePlanResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Amazon DocumentDB global clusters used in a Region switch plan.</p>
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
    #   <p>The behavior for a global cluster, that is, only allow switchover or also allow failover.</p>
    #   @return [String]
    # @!attribute ungraceful
    #   <p>The settings for ungraceful execution.</p>
    #   @return [Types::DocumentDbUngraceful]
    # @!attribute global_cluster_identifier
    #   <p>The global cluster identifier for a DocumentDB global cluster.</p>
    #   @return [String]
    # @!attribute database_cluster_arns
    #   <p>The database cluster Amazon Resource Names (ARNs) for a DocumentDB global cluster.</p>
    #   @return [Array<String>]
    class DocumentDbConfiguration < Struct.new(
      nil,
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

    # <p>Configuration for handling failures when performing operations on DocumentDB global clusters.</p>
    # @!attribute ungraceful
    #   <p>The settings for ungraceful execution.</p>
    #   @return [String]
    class DocumentDbUngraceful < Struct.new(
      nil,
      :ungraceful,
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
    #   <p>The target percentage that you specify for EC2 Auto Scaling groups. The default is 100.</p>
    #   @return [Integer]
    # @!attribute capacity_monitoring_approach
    #   <p>The monitoring approach that you specify EC2 Auto Scaling groups for the configuration.</p>
    #   @return [String]
    # @!attribute wait_elb_target_group_healthy
    #   <p>If enabled, the step completes only after each attached ELB target group reports a healthy target count that matches the group's new desired capacity calculated in the step.</p>
    #   @return [String]
    class Ec2AsgCapacityIncreaseConfiguration < Struct.new(
      nil,
      :timeout_minutes,
      :asgs,
      :ungraceful,
      :target_percent,
      :capacity_monitoring_approach,
      :wait_elb_target_group_healthy,
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
      nil,
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
    #   <p>The target percentage specified for the configuration. The default is 100.</p>
    #   @return [Integer]
    # @!attribute capacity_monitoring_approach
    #   <p>The monitoring approach specified for the configuration, for example, <code>Most_Recent</code>.</p>
    #   @return [String]
    # @!attribute wait_elb_target_group_healthy
    #   <p>If enabled, the step completes only after each attached ELB target group reports a healthy target count that matches the service's new desired task count calculated in the step.</p>
    #   @return [String]
    class EcsCapacityIncreaseConfiguration < Struct.new(
      nil,
      :timeout_minutes,
      :services,
      :ungraceful,
      :target_percent,
      :capacity_monitoring_approach,
      :wait_elb_target_group_healthy,
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
      nil,
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
      nil,
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
    #   <p>The target percentage for the configuration. The default is 100.</p>
    #   @return [Integer]
    # @!attribute capacity_monitoring_approach
    #   <p>The monitoring approach for the configuration, that is, whether it was sampled in the last 24 hours or autoscaled in the last 24 hours.</p>
    #   @return [String]
    class EksResourceScalingConfiguration < Struct.new(
      nil,
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
      nil,
      :minimum_success_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Lambda event source mapping configuration, containing the resource ARN and optional cross-account configuration.</p>
    # @!attribute cross_account_role
    #   <p>The cross account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda event source mapping.</p>
    #   @return [String]
    class EventSourceMapping < Struct.new(
      nil,
      :cross_account_role,
      :external_id,
      :arn,
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
      nil,
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
    # @!attribute document_db_config
    #   <p>Configuration for Amazon DocumentDB global clusters used in a Region switch plan.</p>
    #   @return [Types::DocumentDbConfiguration]
    # @!attribute rds_promote_read_replica_config
    #   <p>An Amazon RDS promote read replica execution block.</p>
    #   @return [Types::RdsPromoteReadReplicaConfiguration]
    # @!attribute rds_create_cross_region_read_replica_config
    #   <p>An Amazon RDS create cross-Region replica execution block.</p>
    #   @return [Types::RdsCreateCrossRegionReplicaConfiguration]
    # @!attribute lambda_event_source_mapping_config
    #   <p>A Lambda event source mapping execution block.</p>
    #   @return [Types::LambdaEventSourceMappingConfiguration]
    # @!attribute aurora_serverless_scaling_config
    #   <p>An Aurora Serverless scaling execution block.</p>
    #   @return [Types::AuroraServerlessScalingConfiguration]
    # @!attribute aurora_provisioned_scaling_config
    #   <p>An Aurora provisioned cluster scaling execution block.</p>
    #   @return [Types::AuroraProvisionedScalingConfiguration]
    # @!attribute neptune_global_database_config
    #   <p>A Neptune global database execution block.</p>
    #   @return [Types::NeptuneGlobalDatabaseConfiguration]
    # @!attribute rds_switchover_read_replica_config
    #   <p>An Amazon RDS switchover read replica execution block.</p>
    #   @return [Types::RdsSwitchoverReadReplicaConfiguration]
    # @!attribute ssm_send_command_config
    #   <p>Specifies an AWS Systems Manager <code>SendCommand</code> execution block.</p>
    #   @return [Types::SsmSendCommandConfiguration]
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
      :document_db_config,
      :rds_promote_read_replica_config,
      :rds_create_cross_region_read_replica_config,
      :lambda_event_source_mapping_config,
      :aurora_serverless_scaling_config,
      :aurora_provisioned_scaling_config,
      :neptune_global_database_config,
      :rds_switchover_read_replica_config,
      :ssm_send_command_config,
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
      class DocumentDbConfig < ExecutionBlockConfiguration; end
      class RdsPromoteReadReplicaConfig < ExecutionBlockConfiguration; end
      class RdsCreateCrossRegionReadReplicaConfig < ExecutionBlockConfiguration; end
      class LambdaEventSourceMappingConfig < ExecutionBlockConfiguration; end
      class AuroraServerlessScalingConfig < ExecutionBlockConfiguration; end
      class AuroraProvisionedScalingConfig < ExecutionBlockConfiguration; end
      class NeptuneGlobalDatabaseConfig < ExecutionBlockConfiguration; end
      class RdsSwitchoverReadReplicaConfig < ExecutionBlockConfiguration; end
      class SsmSendCommandConfig < ExecutionBlockConfiguration; end
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
      nil,
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

    # <p>Information about a report generation that failed.</p>
    # @!attribute error_code
    #   <p>The error code for the failed report generation.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for the failed report generation.</p>
    #   @return [String]
    class FailedReportOutput < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a generated execution report.</p>
    # @!attribute report_generation_time
    #   <p>The timestamp when the report was generated.</p>
    #   @return [Time]
    # @!attribute report_output
    #   <p>The output location or cause of a failure in report generation.</p>
    #   @return [Types::ReportOutput]
    class GeneratedReport < Struct.new(
      nil,
      :report_generation_time,
      :report_output,
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
      nil,
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
      nil,
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
      nil,
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
    #   <p>The plan execution mode. Valid values are <code>graceful</code>, for graceful executions, or <code>ungraceful</code>, for ungraceful executions.</p>
    #   @return [String]
    # @!attribute execution_state
    #   <p>The plan execution state. Provides the state of a plan execution, for example, In Progress or Paused by Operator.</p>
    #   @return [String]
    # @!attribute execution_action
    #   <p>The plan execution action. Valid values are <code>activate</code>, to activate an Amazon Web Services Region, or <code>deactivate</code>, to deactivate a Region.</p>
    #   @return [String]
    # @!attribute execution_region
    #   <p>The Amazon Web Services Region for a plan execution.</p>
    #   @return [String]
    # @!attribute recovery_execution_id
    #   <p>The unique identifier of the most recent recovery execution. Required when starting a post-recovery execution.</p>
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
    # @!attribute generated_report_details
    #   <p>Information about the location of a generated report, or the cause of its failure.</p>
    #   @return [Array<Types::GeneratedReport>]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class GetPlanExecutionResponse < Struct.new(
      nil,
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
      :recovery_execution_id,
      :step_states,
      :plan,
      :actual_recovery_time,
      :generated_report_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the plan in Region.</p>
    #   @return [String]
    class GetPlanInRegionRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan
    #   <p>The details of the Region switch plan.</p>
    #   @return [Types::Plan]
    class GetPlanInRegionResponse < Struct.new(
      nil,
      :plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    #   @return [String]
    class GetPlanRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan
    #   <p>The detailed information about the requested Region switch plan.</p>
    #   @return [Types::Plan]
    class GetPlanResponse < Struct.new(
      nil,
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
    #   <p>The default behavior for the Aurora global database execution block. Valid values:</p> <ul> <li> <p> <code>switchoverOnly</code> - Calls <code>SwitchoverGlobalCluster</code> for a zero-data-loss switchover during graceful execution.</p> </li> <li> <p> <code>failover</code> - Calls <code>FailoverGlobalCluster</code> with <code>AllowDataLoss</code> set to <code>true</code>. This operation might cause data loss, including during graceful execution.</p> </li> </ul>
    #   @return [String]
    # @!attribute ungraceful
    #   <p>The behavior to use when the plan runs in ungraceful mode. If you omit this value, Region switch uses the value of <code>behavior</code>.</p>
    #   @return [Types::GlobalAuroraUngraceful]
    # @!attribute global_cluster_identifier
    #   <p>The global cluster identifier for a global database.</p>
    #   @return [String]
    # @!attribute database_cluster_arns
    #   <p>The database cluster Amazon Resource Names (ARNs) for a global database.</p>
    #   @return [Array<String>]
    class GlobalAuroraConfiguration < Struct.new(
      nil,
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

    # <p>Configuration for an Aurora global database execution block in ungraceful mode.</p>
    # @!attribute ungraceful
    #   <p>The ungraceful behavior. The only valid value is <code>failover</code>, which calls <code>FailoverGlobalCluster</code> with <code>AllowDataLoss</code> set to <code>true</code> and might cause data loss.</p>
    #   @return [String]
    class GlobalAuroraUngraceful < Struct.new(
      nil,
      :ungraceful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has an invalid argument.</p>
    # @!attribute message
    #   @return [String]
    class IllegalArgumentException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because the current state of the resource doesn't allow the operation to proceed.</p> <p>HTTP Status Code: 400</p>
    # @!attribute message
    #   @return [String]
    class IllegalStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception, or failure.</p> <p>HTTP Status Code: 500</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
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
      nil,
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
      nil,
      :namespace,
      :name,
      :hpa_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Amazon Web Services Lambda event source mappings used in a Region switch plan.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>The action to take - whether to <code>enable</code> or <code>disable</code> an event source mapping.</p>
    #   @return [String]
    # @!attribute region_event_source_mappings
    #   <p>Per-region configuration for which Lambda event source mapping to enable or disable when activating or deactivating a region.</p>
    #   @return [Hash<String, Types::EventSourceMapping>]
    # @!attribute ungraceful
    #   <p>The settings for ungraceful execution.</p>
    #   @return [Types::LambdaEventSourceMappingUngraceful]
    class LambdaEventSourceMappingConfiguration < Struct.new(
      nil,
      :timeout_minutes,
      :action,
      :region_event_source_mappings,
      :ungraceful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        super
      end
    end

    # <p>Specifies whether to skip enabling or disabling an event source mapping during an ungraceful execution.</p>
    # @!attribute behavior
    #   <p>Set to <code>skip</code> to skip executing this event source mapping step during an ungraceful execution.</p>
    #   @return [String]
    class LambdaEventSourceMappingUngraceful < Struct.new(
      nil,
      :behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:behavior] = 'skip' unless options.key?(:behavior)
        super
      end
    end

    # <p>Configuration for handling failures when invoking Lambda functions.</p>
    # @!attribute behavior
    #   <p>The ungraceful behavior for a Lambda function, which must be set to <code>skip</code>.</p>
    #   @return [String]
    class LambdaUngraceful < Struct.new(
      nil,
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
    # @!attribute payload
    #   <p>The JSON payload to send to the Lambda function invocation. If you don't specify a payload, Region switch invokes the function with only the execution metadata.</p> <p>If you provide a JSON object, Region switch merges execution metadata keys (<code>InvokedBy</code>, <code>PlanArn</code>, <code>ExecutionId</code>, <code>StepName</code>) into the top level. If one of your keys has the same name as a metadata key, your key takes precedence.</p> <p>If you provide any other JSON type (string, number, boolean, or array), Region switch forwards it to the Lambda function unchanged, without adding metadata.</p>
    #   @return [String]
    class Lambdas < Struct.new(
      nil,
      :cross_account_role,
      :external_id,
      :arn,
      :payload,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :plans,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Arc Region Switch Plan.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>The hosted zone ID for the health checks.</p>
    #   @return [String]
    # @!attribute record_name
    #   <p>The record name for the health checks.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class ListRoute53HealthChecksInRegionRequest < Struct.new(
      nil,
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
    #   <p>A pagination token. A response may contain no results while still including a <code>nextToken</code>. Continue paginating until <code>nextToken</code> is null to retrieve all results.</p>
    #   @return [String]
    class ListRoute53HealthChecksInRegionResponse < Struct.new(
      nil,
      :health_checks,
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
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class ListRoute53HealthChecksRequest < Struct.new(
      nil,
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
    #   <p>A pagination token. A response may contain no results while still including a <code>nextToken</code>. Continue paginating until <code>nextToken</code> is null to retrieve all results.</p>
    #   @return [String]
    class ListRoute53HealthChecksResponse < Struct.new(
      nil,
      :health_checks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_arns
    #   <p>The Amazon Resource Names (ARNs) of the plans to return service quota warnings for. You can specify up to 100 plan ARNs. Region switch ignores any plan ARN that you can't access. If you omit this parameter, Region switch returns the warnings for all of your accessible plans.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return with this call. Valid values are <code>1</code> to <code>100</code>. If you don't specify a value, the operation returns up to the maximum number of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    #   @return [String]
    class ListServiceQuotaWarningsRequest < Struct.new(
      nil,
      :plan_arns,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_quota_warning_summaries
    #   <p>The service quota warnings for the plans that you can access.</p>
    #   @return [Array<Types::ServiceQuotaWarningSummary>]
    # @!attribute next_token
    #   <p>A pagination token. A response may contain no results while still including a <code>nextToken</code>. Continue paginating until <code>nextToken</code> is null to retrieve all results.</p>
    #   @return [String]
    class ListServiceQuotaWarningsResponse < Struct.new(
      nil,
      :service_quota_warning_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_tags
    #   <p>The tags for a resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
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
      nil,
      :action,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Amazon Neptune global databases used in a Region switch plan.</p>
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
    #   @return [Types::NeptuneUngraceful]
    # @!attribute global_cluster_identifier
    #   <p>The global cluster identifier for a Neptune global database.</p>
    #   @return [String]
    # @!attribute region_database_cluster_arns
    #   <p>The database cluster Amazon Resource Names (ARNs) for a Neptune global database.</p>
    #   @return [Hash<String, String>]
    class NeptuneGlobalDatabaseConfiguration < Struct.new(
      nil,
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :behavior,
      :ungraceful,
      :global_cluster_identifier,
      :region_database_cluster_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        options[:behavior] = 'switchoverOnly' unless options.key?(:behavior)
        super
      end
    end

    # <p>Configuration for handling failures when performing operations on Neptune global databases.</p>
    # @!attribute ungraceful
    #   <p>The settings for ungraceful execution.</p>
    #   @return [String]
    class NeptuneUngraceful < Struct.new(
      nil,
      :ungraceful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for steps that should be executed in parallel during a Region switch.</p>
    # @!attribute steps
    #   <p>The steps for a parallel execution block.</p>
    #   @return [Array<Types::Step>]
    class ParallelExecutionBlockConfiguration < Struct.new(
      nil,
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
    # @!attribute report_configuration
    #   <p>The report configuration for a plan.</p>
    #   @return [Types::ReportConfiguration]
    # @!attribute service_quota_checks_enabled
    #   <p>Indicates whether service quota checks are enabled for the Region switch plan. When enabled, Region switch compares the applied service quota values across the plan's Amazon Web Services Regions and creates a warning when a quota in one Region is lower than the value required for the matching resource in another Region. Service quota checks are advisory and don't prevent you from creating, evaluating, or executing a plan.</p>
    #   @return [Boolean]
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
      nil,
      :arn,
      :description,
      :workflows,
      :execution_role,
      :recovery_time_objective_minutes,
      :associated_alarms,
      :triggers,
      :report_configuration,
      :service_quota_checks_enabled,
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

    # <p>Configuration for creating an Amazon RDS cross-Region read replica during post-recovery in a Region switch.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute cross_account_role
    #   <p>The cross-account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute db_instance_arn_map
    #   <p>A map of database instance ARNs for each Region in the plan.</p>
    #   @return [Hash<String, String>]
    class RdsCreateCrossRegionReplicaConfiguration < Struct.new(
      nil,
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :db_instance_arn_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        super
      end
    end

    # <p>Configuration for promoting an Amazon RDS read replica to a standalone database instance during a Region switch.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute cross_account_role
    #   <p>The cross-account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute db_instance_arn_map
    #   <p>A map of database instance ARNs for each Region in the plan.</p>
    #   @return [Hash<String, String>]
    class RdsPromoteReadReplicaConfiguration < Struct.new(
      nil,
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :db_instance_arn_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        super
      end
    end

    # <p>Configuration for switching over an Amazon RDS read replica to become the new primary database instance during a Region switch.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute cross_account_role
    #   <p>The cross-account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute db_instance_arn_map
    #   <p>A map of database instance ARNs for each Region in the plan.</p>
    #   @return [Hash<String, String>]
    # @!attribute ungraceful
    #   <p>The ungraceful execution settings for the configuration.</p>
    #   @return [Types::RdsUngraceful]
    class RdsSwitchoverReadReplicaConfiguration < Struct.new(
      nil,
      :timeout_minutes,
      :cross_account_role,
      :external_id,
      :db_instance_arn_map,
      :ungraceful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        super
      end
    end

    # <p>The ungraceful execution settings for an Amazon RDS switchover read replica execution block.</p>
    # @!attribute ungraceful
    #   <p>The ungraceful behavior to perform if switching to ungraceful execution.</p>
    #   @return [String]
    class RdsUngraceful < Struct.new(
      nil,
      :ungraceful,
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
      nil,
      :cross_account_role,
      :external_id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for automatic report generation for plan executions. When configured, Region switch automatically generates a report after each plan execution that includes execution events, plan configuration, and CloudWatch alarm states.</p>
    # @!attribute report_output
    #   <p>The output configuration for the report.</p>
    #   @return [Array<Types::ReportOutputConfiguration>]
    class ReportConfiguration < Struct.new(
      nil,
      :report_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output location or cause of a failure in report generation.</p>
    # @!attribute s3_report_output
    #   <p>Information about a report delivered to Amazon S3.</p>
    #   @return [Types::S3ReportOutput]
    # @!attribute failed_report_output
    #   <p>The details about a failed report generation.</p>
    #   @return [Types::FailedReportOutput]
    class ReportOutput < Struct.new(
      :s3_report_output,
      :failed_report_output,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3ReportOutput < ReportOutput; end
      class FailedReportOutput < ReportOutput; end
      class Unknown < ReportOutput; end
    end

    # <p>Configuration for report output destinations used in a Region switch plan.</p>
    # @!attribute s3_configuration
    #   <p>Configuration for delivering reports to an Amazon S3 bucket.</p>
    #   @return [Types::S3ReportOutputConfiguration]
    class ReportOutputConfiguration < Struct.new(
      :s3_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3Configuration < ReportOutputConfiguration; end
      class Unknown < ReportOutputConfiguration; end
    end

    # <p>The specified resource was not found.</p> <p>HTTP Status Code: 404</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
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
      nil,
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
    # @!attribute status
    #   <p>The Amazon Route 53 health check status.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Route 53 Region.</p>
    #   @return [String]
    class Route53HealthCheck < Struct.new(
      nil,
      :hosted_zone_id,
      :record_name,
      :health_check_id,
      :status,
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
      nil,
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
      nil,
      :record_set_identifier,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a report delivered to Amazon S3.</p>
    # @!attribute s3_object_key
    #   <p>The S3 object key where the generated report is stored.</p>
    #   @return [String]
    class S3ReportOutput < Struct.new(
      nil,
      :s3_object_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for delivering generated reports to an Amazon S3 bucket.</p>
    # @!attribute bucket_path
    #   <p>The S3 bucket name and optional prefix where reports are stored. Format: bucket-name or bucket-name/prefix.</p>
    #   @return [String]
    # @!attribute bucket_owner
    #   <p>The Amazon Web Services account ID that owns the S3 bucket. Required to ensure the bucket is still owned by the same expected owner at generation time.</p>
    #   @return [String]
    class S3ReportOutputConfiguration < Struct.new(
      nil,
      :bucket_path,
      :bucket_owner,
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
      nil,
      :cross_account_role,
      :external_id,
      :cluster_arn,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A service quota warning for a plan. Region switch creates a warning when the applied quota value in one Region of a plan is lower than the value for the matching resource in another Region or account in the plan, or when it can't complete a service quota check.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that owns the plan that the warning applies to.</p>
    #   @return [String]
    # @!attribute quota_region
    #   <p>The Amazon Web Services Region that the quota applies to.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of the service that the quota belongs to, as defined in Service Quotas. For example, <code>ec2</code>.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code of the quota that the warning applies to, as defined in Service Quotas.</p>
    #   @return [String]
    # @!attribute quota_name
    #   <p>The name of the quota that the warning applies to, as defined in Service Quotas.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the service quota warning.</p>
    #   @return [String]
    # @!attribute plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan that the warning applies to.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the quota increase request that Region switch submitted, if it submitted one for this quota.</p>
    #   @return [String]
    # @!attribute case_id
    #   <p>The ID of the support case associated with the quota increase request, if Region switch submitted one for this quota.</p>
    #   @return [String]
    # @!attribute warning_message
    #   <p>A message that describes the service quota warning.</p>
    #   @return [String]
    # @!attribute last_checked_at
    #   <p>The time (UTC) when Region switch last checked this quota.</p>
    #   @return [Time]
    # @!attribute warning_created_at
    #   <p>The time (UTC) when Region switch created this warning.</p>
    #   @return [Time]
    class ServiceQuotaWarningSummary < Struct.new(
      nil,
      :account_id,
      :quota_region,
      :service_code,
      :quota_code,
      :quota_name,
      :status,
      :plan_arn,
      :request_id,
      :case_id,
      :warning_message,
      :last_checked_at,
      :warning_created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Systems Manager document to run and the managed nodes to target for a single Amazon Web Services Region.</p>
    # @!attribute cross_account_role
    #   <p>The cross-account role for the configuration.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (secret key) for the configuration.</p>
    #   @return [String]
    # @!attribute document_arn
    #   <p>The Amazon Resource Name (ARN) of the Systems Manager document to run.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The target filters that Systems Manager resolves to managed nodes when the command runs. To target specific managed nodes, use the <code>InstanceIds</code> key. You can specify up to five target filters.</p>
    #   @return [Array<Types::SsmTarget>]
    # @!attribute parameters
    #   <p>The parameters that are passed to this Region's Systems Manager document. You set parameters for each document, so each Region can run its document with its own parameters.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute document_version
    #   <p>The version of the Systems Manager document to run for this Region. When you omit it, Systems Manager runs the document's default version.</p>
    #   @return [String]
    class SsmDocumentConfig < Struct.new(
      nil,
      :cross_account_role,
      :external_id,
      :document_arn,
      :targets,
      :parameters,
      :document_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for an AWS Systems Manager <code>SendCommand</code> execution block in a Region switch plan. This execution block runs a Systems Manager document on the managed nodes that you target in each Amazon Web Services Region of the plan.</p>
    # @!attribute timeout_minutes
    #   <p>The timeout value specified for the configuration.</p>
    #   @return [Integer]
    # @!attribute region_documents
    #   <p>The Systems Manager document and target configuration for each Amazon Web Services Region in the plan. Provide an entry for each Amazon Web Services Region that you want the command to run in.</p>
    #   @return [Hash<String, Types::SsmDocumentConfig>]
    # @!attribute retry_interval_minutes
    #   <p>How often, in minutes, Region switch retries the command if it returns a failure.</p>
    #   @return [Float]
    # @!attribute ungraceful
    #   <p>Specifies the settings that determine how the execution block behaves when the plan runs ungracefully, such as whether to skip the command.</p>
    #   @return [Types::SsmSendCommandUngraceful]
    class SsmSendCommandConfiguration < Struct.new(
      nil,
      :timeout_minutes,
      :region_documents,
      :retry_interval_minutes,
      :ungraceful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_minutes] = 60 unless options.key?(:timeout_minutes)
        super
      end
    end

    # <p>The ungraceful execution settings for an AWS Systems Manager <code>SendCommand</code> execution block.</p>
    # @!attribute behavior
    #   <p>Specifies whether to skip running this command during an ungraceful execution. Set to <code>skip</code> to skip the command.</p>
    #   @return [String]
    class SsmSendCommandUngraceful < Struct.new(
      nil,
      :behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single <code>SendCommand</code> target filter, consisting of a target key and the values matched by that key.</p>
    # @!attribute key
    #   <p>The target key, such as <code>tag:Environment</code> or <code>InstanceIds</code>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values matched by this target key. Multiple values combine with a logical OR.</p>
    #   @return [Array<String>]
    class SsmTarget < Struct.new(
      nil,
      :key,
      :values,
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
    #   <p>The action to perform. Valid values are <code>activate</code> (to shift traffic to the target Region) or <code>deactivate</code> (to shift traffic away from the target Region).</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The plan execution mode. Valid values are <code>graceful</code>, for starting the execution in graceful mode, or <code>ungraceful</code>, for starting the execution in ungraceful mode.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment explaining why the plan execution is being started.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>A boolean value indicating whether to use the latest version of the plan. If set to false, you must specify a specific version.</p>
    #   @return [String]
    # @!attribute recovery_execution_id
    #   <p>The execution identifier of the recovery execution that ran in the opposite region post-recovery is ran in. Required when starting a post-recovery execution.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service ignores the request and returns the result of the original successful request. If you don't provide a client token, the service automatically generates one. For more information about idempotency, see <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class StartPlanExecutionRequest < Struct.new(
      nil,
      :plan_arn,
      :target_region,
      :action,
      :mode,
      :comment,
      :latest_version,
      :recovery_execution_id,
      :client_token,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
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
    #   <p>The action to perform when the trigger fires. Valid values include <code>activate</code> and <code>deactivate</code>.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>The conditions that must be met for the trigger to fire.</p>
    #   @return [Array<Types::TriggerCondition>]
    # @!attribute min_delay_minutes_between_executions
    #   <p>The minimum time, in minutes, that must elapse between automatic executions of the plan.</p>
    #   @return [Integer]
    class Trigger < Struct.new(
      nil,
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
    #   <p>The condition that must be met. Valid values include <code>green</code> and <code>red</code>.</p>
    #   @return [String]
    class TriggerCondition < Struct.new(
      nil,
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
      nil,
      :arn,
      :resource_tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
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
      nil,
      :plan_arn,
      :execution_id,
      :action,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdatePlanExecutionResponse < Struct.new(
      nil,
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
      nil,
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
      nil,
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
    # @!attribute report_configuration
    #   <p>The updated report configuration for the plan.</p>
    #   @return [Types::ReportConfiguration]
    # @!attribute service_quota_checks_enabled
    #   <p>Specifies whether service quota checks are enabled for the Region switch plan.</p>
    #   @return [Boolean]
    class UpdatePlanRequest < Struct.new(
      nil,
      :arn,
      :description,
      :workflows,
      :execution_role,
      :recovery_time_objective_minutes,
      :associated_alarms,
      :triggers,
      :report_configuration,
      :service_quota_checks_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan
    #   <p>The details of the updated Region switch plan.</p>
    #   @return [Types::Plan]
    class UpdatePlanResponse < Struct.new(
      nil,
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
    #   <p>The action that the workflow performs. Valid values include <code>activate</code> and <code>deactivate</code>.</p>
    #   @return [String]
    # @!attribute workflow_target_region
    #   <p>The Amazon Web Services Region that the workflow targets.</p>
    #   @return [String]
    # @!attribute workflow_description
    #   <p>The description of the workflow.</p>
    #   @return [String]
    class Workflow < Struct.new(
      nil,
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
