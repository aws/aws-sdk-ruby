# frozen_string_literal: true

# This is generated code!

module Aws::ComputeOptimizerAutomation
  # This module contains the types returned by client operations.
  module Types

    # <p> You do not have sufficient permissions to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains information about an Amazon Web Services account's enrollment and association status with Compute Optimizer Automation. </p>
    # @!attribute account_id
    #   <p> The ID of the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The enrollment status of the account: Active, Inactive, Pending, or Failed. </p>
    #   @return [String]
    # @!attribute organization_rule_mode
    #   <p>Specifies whether the management account can create Automation rules that implement optimization actions for this account. </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current Automation enrollment status. </p>
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   <p>The timestamp when the account's Automation enrollment status was last updated. </p>
    #   @return [Time]
    class AccountInfo < Struct.new(
      nil,
      :account_id,
      :status,
      :organization_rule_mode,
      :status_reason,
      :last_updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p> The IDs of the member accounts to associate. You can specify up to 50 account IDs. </p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p> A unique identifier to ensure idempotency of the request. Valid for 24 hours after creation. </p>
    #   @return [String]
    class AssociateAccountsRequest < Struct.new(
      nil,
      :account_ids,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p> The IDs of the member accounts that were successfully associated. </p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p> Any errors that occurred during the association process. </p>
    #   @return [Array<String>]
    class AssociateAccountsResponse < Struct.new(
      nil,
      :account_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains information about an automation event. </p>
    # @!attribute event_id
    #   <p> The unique identifier for the automation event. </p>
    #   @return [String]
    # @!attribute event_description
    #   <p> A description of the automation event. </p>
    #   @return [String]
    # @!attribute event_type
    #   <p> The type of automation event. </p>
    #   @return [String]
    # @!attribute event_status
    #   <p> The current status of the automation event. </p>
    #   @return [String]
    # @!attribute event_status_reason
    #   <p> The reason for the current event status. </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource affected by the automation event. </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p> The ID of the resource affected by the automation event. </p>
    #   @return [String]
    # @!attribute recommended_action_id
    #   <p> The ID of the recommended action associated with this automation event. </p>
    #   @return [String]
    # @!attribute account_id
    #   <p> The Amazon Web Services account ID associated with the automation event. </p>
    #   @return [String]
    # @!attribute region
    #   <p> The Amazon Web Services Region where the automation event occurred. </p>
    #   @return [String]
    # @!attribute rule_id
    #   <p> The ID of the automation rule that triggered this event. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of resource affected by the automation event. </p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp when the automation event was created.</p>
    #   @return [Time]
    # @!attribute completed_timestamp
    #   <p> The timestamp when the automation event completed. </p>
    #   @return [Time]
    # @!attribute estimated_monthly_savings
    #   <p> The estimated monthly cost savings associated with this automation event. </p>
    #   @return [Types::EstimatedMonthlySavings]
    class AutomationEvent < Struct.new(
      nil,
      :event_id,
      :event_description,
      :event_type,
      :event_status,
      :event_status_reason,
      :resource_arn,
      :resource_id,
      :recommended_action_id,
      :account_id,
      :region,
      :rule_id,
      :resource_type,
      :created_timestamp,
      :completed_timestamp,
      :estimated_monthly_savings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A filter to apply when listing automation events. </p>
    # @!attribute name
    #   <p> The name of the filter to apply. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The values to use for the specified filter. </p>
    #   @return [Array<String>]
    class AutomationEventFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains information about a step in an automation event. </p>
    # @!attribute event_id
    #   <p> The ID of the automation event this step belongs to. </p>
    #   @return [String]
    # @!attribute step_id
    #   <p> The unique identifier for this step. </p>
    #   @return [String]
    # @!attribute step_type
    #   <p> The type of step. </p>
    #   @return [String]
    # @!attribute step_status
    #   <p> The current status of the step. </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource being acted upon in this step.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The timestamp when this automation event step started execution.</p>
    #   @return [Time]
    # @!attribute completed_timestamp
    #   <p>The timestamp when this automation event step completed execution.</p>
    #   @return [Time]
    # @!attribute estimated_monthly_savings
    #   <p> Contains information about estimated monthly cost savings. </p>
    #   @return [Types::EstimatedMonthlySavings]
    class AutomationEventStep < Struct.new(
      nil,
      :event_id,
      :step_id,
      :step_type,
      :step_status,
      :resource_id,
      :start_timestamp,
      :completed_timestamp,
      :estimated_monthly_savings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A summary of automation events grouped by specified dimensions. </p>
    # @!attribute key
    #   <p>The key identifier for this summary grouping.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>The dimensions used to group this summary, such as event status.</p>
    #   @return [Array<Types::SummaryDimension>]
    # @!attribute time_period
    #   <p>The time period covered by this summary, with inclusive start time and exclusive end time.</p>
    #   @return [Types::TimePeriod]
    # @!attribute total
    #   <p>The aggregated totals for this summary, including event count and estimated savings.</p>
    #   @return [Types::SummaryTotals]
    class AutomationEventSummary < Struct.new(
      nil,
      :key,
      :dimensions,
      :time_period,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a complete automation rule configuration including criteria, schedule, and execution settings.</p>
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the automation rule.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The unique identifier of the automation rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the automation rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the automation rule.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of automation rule (OrganizationRule or AccountRule).</p>
    #   @return [String]
    # @!attribute rule_revision
    #   <p>The revision number of the automation rule.</p>
    #   @return [Integer]
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID that owns this automation rule.</p>
    #   @return [String]
    # @!attribute organization_configuration
    #   <p>Configuration settings for organization-wide rules.</p>
    #   @return [Types::OrganizationConfiguration]
    # @!attribute priority
    #   <p>A string representation of a decimal number between 0 and 1 (having up to 30 digits after the decimal point) that determines the priority of the rule. When multiple rules match the same recommended action, Compute Optimizer assigns the action to the rule with the lowest priority value (highest priority), even if that rule is scheduled to run later than other matching rules.</p>
    #   @return [String]
    # @!attribute recommended_action_types
    #   <p>List of recommended action types that this rule can execute.</p>
    #   @return [Array<String>]
    # @!attribute schedule
    #   <p>The schedule configuration for when the automation rule should execute.</p>
    #   @return [Types::Schedule]
    # @!attribute status
    #   <p>The current status of the automation rule (Active or Inactive).</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp when the automation rule was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The timestamp when the automation rule was last updated.</p>
    #   @return [Time]
    class AutomationRule < Struct.new(
      nil,
      :rule_arn,
      :rule_id,
      :name,
      :description,
      :rule_type,
      :rule_revision,
      :account_id,
      :organization_configuration,
      :priority,
      :recommended_action_types,
      :schedule,
      :status,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the automation rule. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the automation rule. </p>
    #   @return [String]
    # @!attribute rule_type
    #   <p> The type of rule. </p> <note> <p>Only the management account or a delegated administrator can set the ruleType to be OrganizationRule.</p> </note>
    #   @return [String]
    # @!attribute organization_configuration
    #   <p> Configuration for organization-level rules. Required for OrganizationRule type. </p>
    #   @return [Types::OrganizationConfiguration]
    # @!attribute priority
    #   <p>A string representation of a decimal number between 0 and 1 (having up to 30 digits after the decimal point) that determines the priority of the rule. When multiple rules match the same recommended action, Compute Optimizer assigns the action to the rule with the lowest priority value (highest priority), even if that rule is scheduled to run later than other matching rules. </p>
    #   @return [String]
    # @!attribute recommended_action_types
    #   <p> The types of recommended actions this rule will automate. </p>
    #   @return [Array<String>]
    # @!attribute criteria
    #   <p>A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. </p>
    #   @return [Types::Criteria]
    # @!attribute schedule
    #   <p> The schedule for when the rule should run. </p>
    #   @return [Types::Schedule]
    # @!attribute status
    #   <p>The status of the rule </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags to associate with the rule. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p> A unique identifier to ensure idempotency of the request. </p>
    #   @return [String]
    class CreateAutomationRuleRequest < Struct.new(
      nil,
      :name,
      :description,
      :rule_type,
      :organization_configuration,
      :priority,
      :recommended_action_types,
      :criteria,
      :schedule,
      :status,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p> The Amazon Resource Name (ARN) of the created rule. </p>
    #   @return [String]
    # @!attribute rule_id
    #   <p> The unique identifier of the created rule. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the automation rule. Must be 1-128 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the automation rule. Can be up to 1024 characters long and contain alphanumeric characters, underscores, hyphens, spaces, and certain special characters.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of automation rule. Can be either OrganizationRule for organization-wide rules or AccountRule for account-specific rules.</p>
    #   @return [String]
    # @!attribute rule_revision
    #   <p>The revision number of the automation rule. This is incremented each time the rule is updated.</p>
    #   @return [Integer]
    # @!attribute organization_configuration
    #   <p>Configuration settings for organization-wide rules, including rule application order and target account IDs.</p>
    #   @return [Types::OrganizationConfiguration]
    # @!attribute priority
    #   <p>The priority level of the automation rule, used to determine execution order when multiple rules apply to the same resource.</p>
    #   @return [String]
    # @!attribute recommended_action_types
    #   <p>List of recommended action types that this rule can execute, such as SnapshotAndDeleteUnattachedEbsVolume or UpgradeEbsVolumeType.</p>
    #   @return [Array<String>]
    # @!attribute criteria
    #   <p> A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. You can specify up to 20 conditions per filter criteria and 20 values per condition. </p>
    #   @return [Types::Criteria]
    # @!attribute schedule
    #   <p>The schedule configuration for when the automation rule should execute, including cron expression, timezone, and execution window.</p>
    #   @return [Types::Schedule]
    # @!attribute status
    #   <p>The current status of the automation rule. Can be Active or Inactive.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs used to categorize and organize the automation rule. Maximum of 200 tags allowed.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The timestamp when the automation rule was created.</p>
    #   @return [Time]
    class CreateAutomationRuleResponse < Struct.new(
      nil,
      :rule_arn,
      :rule_id,
      :name,
      :description,
      :rule_type,
      :rule_revision,
      :organization_configuration,
      :priority,
      :recommended_action_types,
      :criteria,
      :schedule,
      :status,
      :tags,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. You can specify up to 20 conditions per filter criteria and 20 values per condition. </p>
    # @!attribute region
    #   <p>Filter criteria for Amazon Web Services regions where resources must be located.</p>
    #   @return [Array<Types::StringCriteriaCondition>]
    # @!attribute resource_arn
    #   <p>Filter criteria for specific resource ARNs to include or exclude.</p>
    #   @return [Array<Types::StringCriteriaCondition>]
    # @!attribute ebs_volume_type
    #   <p>Filter criteria for EBS volume types, such as gp2, gp3, io1, io2, st1, or sc1.</p>
    #   @return [Array<Types::StringCriteriaCondition>]
    # @!attribute ebs_volume_size_in_gib
    #   <p>Filter criteria for EBS volume sizes in gibibytes (GiB).</p>
    #   @return [Array<Types::IntegerCriteriaCondition>]
    # @!attribute estimated_monthly_savings
    #   <p>Filter criteria for estimated monthly cost savings from the recommended action.</p>
    #   @return [Array<Types::DoubleCriteriaCondition>]
    # @!attribute resource_tag
    #   <p>Filter criteria for resource tags, allowing filtering by tag key and value combinations.</p>
    #   @return [Array<Types::ResourceTagsCriteriaCondition>]
    # @!attribute look_back_period_in_days
    #   <p>Filter criteria for the lookback period in days used to analyze resource utilization.</p>
    #   @return [Array<Types::IntegerCriteriaCondition>]
    # @!attribute restart_needed
    #   <p>Filter criteria indicating whether the recommended action requires a resource restart.</p>
    #   @return [Array<Types::StringCriteriaCondition>]
    class Criteria < Struct.new(
      nil,
      :region,
      :resource_arn,
      :ebs_volume_type,
      :ebs_volume_size_in_gib,
      :estimated_monthly_savings,
      :resource_tag,
      :look_back_period_in_days,
      :restart_needed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p> The ARN of the rule to delete. </p>
    #   @return [String]
    # @!attribute rule_revision
    #   <p> The revision number of the rule to delete. </p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p> A unique identifier to ensure idempotency of the request. </p>
    #   @return [String]
    class DeleteAutomationRuleRequest < Struct.new(
      nil,
      :rule_arn,
      :rule_revision,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAutomationRuleResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p> The IDs of the member accounts to disassociate. </p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p> A unique identifier to ensure idempotency of the request. </p>
    #   @return [String]
    class DisassociateAccountsRequest < Struct.new(
      nil,
      :account_ids,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p> The IDs of the member accounts that were successfully disassociated. </p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p> Any errors that occurred during the disassociation process. </p>
    #   @return [Array<String>]
    class DisassociateAccountsResponse < Struct.new(
      nil,
      :account_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a condition for filtering based on double/floating-point numeric values with comparison operators.</p>
    # @!attribute comparison
    #   <p>The comparison operator used to evaluate the attribute against the specified values.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The list of double values to compare against using the specified comparison operator.</p>
    #   @return [Array<Float>]
    class DoubleCriteriaCondition < Struct.new(
      nil,
      :comparison,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an Amazon EBS volume with its configuration and snapshot usage information.</p>
    # @!attribute configuration
    #   <p>The configuration details of the EBS volume, including type, size, IOPS, and throughput.</p>
    #   @return [Types::EbsVolumeConfiguration]
    class EbsVolume < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for an Amazon EBS volume.</p>
    # @!attribute type
    #   <p>The EBS volume type, such as gp2, gp3, io1, io2, st1, or sc1.</p>
    #   @return [String]
    # @!attribute size_in_gib
    #   <p>The size of the EBS volume in gibibytes (GiB).</p>
    #   @return [Integer]
    # @!attribute iops
    #   <p>The number of I/O operations per second (IOPS) provisioned for the volume.</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>The throughput in MiB/s provisioned for the volume (applicable to gp3, io1, and io2bx volumes).</p>
    #   @return [Integer]
    class EbsVolumeConfiguration < Struct.new(
      nil,
      :type,
      :size_in_gib,
      :iops,
      :throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains information about estimated monthly cost savings. </p>
    # @!attribute currency
    #   <p> The currency of the estimated savings. </p>
    #   @return [String]
    # @!attribute before_discount_savings
    #   <p> The estimated monthly savings before applying any discounts. </p>
    #   @return [Float]
    # @!attribute after_discount_savings
    #   <p> The estimated monthly savings after applying any discounts. </p>
    #   @return [Float]
    # @!attribute savings_estimation_mode
    #   <p>The mode used to calculate savings, either BeforeDiscount or AfterDiscount.</p>
    #   @return [String]
    class EstimatedMonthlySavings < Struct.new(
      nil,
      :currency,
      :before_discount_savings,
      :after_discount_savings,
      :savings_estimation_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to narrow down results based on specific criteria.</p>
    # @!attribute name
    #   <p>The name of the filter field to apply.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The list of values to filter by for the specified filter field.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> You are not authorized to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p> The ID of the automation event to retrieve. </p>
    #   @return [String]
    class GetAutomationEventRequest < Struct.new(
      nil,
      :event_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p>The ID of the automation event to retrieve.</p>
    #   @return [String]
    # @!attribute event_description
    #   <p>A description of the automation event.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of automation event.</p>
    #   @return [String]
    # @!attribute event_status
    #   <p>The current status of the automation event.</p>
    #   @return [String]
    # @!attribute event_status_reason
    #   <p>The reason for the current event status.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource affected by the automation event.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource affected by the automation event.</p>
    #   @return [String]
    # @!attribute recommended_action_id
    #   <p>The ID of the recommended action associated with this automation event.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the automation event.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the automation event occurred.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The ID of the automation rule that triggered this event.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource affected by the automation event.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp when the automation event was created.</p>
    #   @return [Time]
    # @!attribute completed_timestamp
    #   <p>The timestamp when the automation event completed.</p>
    #   @return [Time]
    # @!attribute estimated_monthly_savings
    #   <p> Contains information about estimated monthly cost savings. </p>
    #   @return [Types::EstimatedMonthlySavings]
    class GetAutomationEventResponse < Struct.new(
      nil,
      :event_id,
      :event_description,
      :event_type,
      :event_status,
      :event_status_reason,
      :resource_arn,
      :resource_id,
      :recommended_action_id,
      :account_id,
      :region,
      :rule_id,
      :resource_type,
      :created_timestamp,
      :completed_timestamp,
      :estimated_monthly_savings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p> The ARN of the rule to retrieve. </p>
    #   @return [String]
    class GetAutomationRuleRequest < Struct.new(
      nil,
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the automation rule.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The unique identifier of the automation rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the automation rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the automation rule.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of automation rule.</p>
    #   @return [String]
    # @!attribute rule_revision
    #   <p>The revision number of the automation rule.</p>
    #   @return [Integer]
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID that owns this automation rule.</p>
    #   @return [String]
    # @!attribute organization_configuration
    #   <p>Configuration settings for organization-wide automation rules.</p>
    #   @return [Types::OrganizationConfiguration]
    # @!attribute priority
    #   <p>A string representation of a decimal number between 0 and 1 (having up to 30 digits after the decimal point) that determines the priority of the rule.</p>
    #   @return [String]
    # @!attribute recommended_action_types
    #   <p>List of recommended action types that this rule can execute.</p>
    #   @return [Array<String>]
    # @!attribute criteria
    #   <p> A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. You can specify up to 20 conditions per filter criteria and 20 values per condition. </p>
    #   @return [Types::Criteria]
    # @!attribute schedule
    #   <p>Configuration for scheduling when automation rules should execute, including timing and execution windows.</p>
    #   @return [Types::Schedule]
    # @!attribute status
    #   <p>The current status of the automation rule (Active or Inactive).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the automation rule.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The timestamp when the automation rule was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The timestamp when the automation rule was last updated.</p>
    #   @return [Time]
    class GetAutomationRuleResponse < Struct.new(
      nil,
      :rule_arn,
      :rule_id,
      :name,
      :description,
      :rule_type,
      :rule_revision,
      :account_id,
      :organization_configuration,
      :priority,
      :recommended_action_types,
      :criteria,
      :schedule,
      :status,
      :tags,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetEnrollmentConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p> The current enrollment status. </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p> The reason for the current enrollment status. </p>
    #   @return [String]
    # @!attribute organization_rule_mode
    #   <p>Specifies whether the management account can create Automation rules that implement optimization actions for this account. </p>
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   <p> The timestamp of the last update to the enrollment configuration. </p>
    #   @return [Time]
    class GetEnrollmentConfigurationResponse < Struct.new(
      nil,
      :status,
      :status_reason,
      :organization_rule_mode,
      :last_updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The specified client token is already in use. </p>
    # @!attribute message
    #   @return [String]
    class IdempotencyTokenInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception thrown when the same client token is used with different parameters, indicating a mismatch in idempotent request parameters.</p>
    # @!attribute message
    #   @return [String]
    class IdempotentParameterMismatchException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a condition for filtering based on integer values with comparison operators.</p>
    # @!attribute comparison
    #   <p>The comparison operator used to evaluate the attribute against the specified values.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The list of integer values to compare against using the specified comparison operator.</p>
    #   @return [Array<Integer>]
    class IntegerCriteriaCondition < Struct.new(
      nil,
      :comparison,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An internal error occurred while processing the request. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> One or more parameter values are not valid. </p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return in a single call. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for the next page of results. </p>
    #   @return [String]
    class ListAccountsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p> The list of accounts in your organization enrolled in Compute Optimizer </p>
    #   @return [Array<Types::AccountInfo>]
    # @!attribute next_token
    #   <p> The token to use to retrieve the next page of results. </p>
    #   @return [String]
    class ListAccountsResponse < Struct.new(
      nil,
      :accounts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p> The ID of the automation event. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of automation event steps to return in a single response. Valid range is 1-1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    #   @return [String]
    class ListAutomationEventStepsRequest < Struct.new(
      nil,
      :event_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute automation_event_steps
    #   <p> The list of steps for the specified automation event. </p>
    #   @return [Array<Types::AutomationEventStep>]
    # @!attribute next_token
    #   <p>A token used for pagination. If present, indicates there are more results available and can be used in subsequent requests.</p>
    #   @return [String]
    class ListAutomationEventStepsResponse < Struct.new(
      nil,
      :automation_event_steps,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> The filters to apply to the list of automation event summaries. </p>
    #   @return [Array<Types::AutomationEventFilter>]
    # @!attribute start_date_inclusive
    #   <p>The start date for filtering automation event summaries, inclusive. Events created on or after this date will be included.</p>
    #   @return [String]
    # @!attribute end_date_exclusive
    #   <p>The end date for filtering automation event summaries, exclusive. Events created before this date will be included.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of automation event summaries to return in a single response. Valid range is 1-1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    #   @return [String]
    class ListAutomationEventSummariesRequest < Struct.new(
      nil,
      :filters,
      :start_date_inclusive,
      :end_date_exclusive,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute automation_event_summaries
    #   <p> The list of automation event summaries that match the specified criteria. </p>
    #   @return [Array<Types::AutomationEventSummary>]
    # @!attribute next_token
    #   <p>A token used for pagination. If present, indicates there are more results available and can be used in subsequent requests.</p>
    #   @return [String]
    class ListAutomationEventSummariesResponse < Struct.new(
      nil,
      :automation_event_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> The filters to apply to the list of automation events. </p>
    #   @return [Array<Types::AutomationEventFilter>]
    # @!attribute start_time_inclusive
    #   <p> The start of the time range to query for events. </p>
    #   @return [Time]
    # @!attribute end_time_exclusive
    #   <p> The end of the time range to query for events. </p>
    #   @return [Time]
    # @!attribute max_results
    #   <p> The maximum number of results to return in a single call. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for the next page of results. </p>
    #   @return [String]
    class ListAutomationEventsRequest < Struct.new(
      nil,
      :filters,
      :start_time_inclusive,
      :end_time_exclusive,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute automation_events
    #   <p> The list of automation events that match the specified criteria. </p>
    #   @return [Array<Types::AutomationEvent>]
    # @!attribute next_token
    #   <p> The token to use to retrieve the next page of results. </p>
    #   @return [String]
    class ListAutomationEventsResponse < Struct.new(
      nil,
      :automation_events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_type
    #   <p> The type of rule. </p> <note> <p>Only the management account or a delegated administrator can set the ruleType to be OrganizationRule.</p> </note>
    #   @return [String]
    # @!attribute organization_scope
    #   <p> The organizational scope for the rule preview. </p>
    #   @return [Types::OrganizationScope]
    # @!attribute recommended_action_types
    #   <p> The types of recommended actions to include in the preview. </p>
    #   @return [Array<String>]
    # @!attribute criteria
    #   <p>A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. </p>
    #   @return [Types::Criteria]
    # @!attribute max_results
    #   <p>The maximum number of automation rule preview results to return in a single response. Valid range is 1-1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    #   @return [String]
    class ListAutomationRulePreviewRequest < Struct.new(
      nil,
      :rule_type,
      :organization_scope,
      :recommended_action_types,
      :criteria,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute preview_results
    #   <p> The list of actions that would be taken based on the specified criteria. </p>
    #   @return [Array<Types::PreviewResult>]
    # @!attribute next_token
    #   <p>A token used for pagination. If present, indicates there are more results available and can be used in subsequent requests.</p>
    #   @return [String]
    class ListAutomationRulePreviewResponse < Struct.new(
      nil,
      :preview_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_type
    #   <p>The type of rule.</p>
    #   @return [String]
    # @!attribute organization_scope
    #   <p>The organizational scope for the rule preview.</p>
    #   @return [Types::OrganizationScope]
    # @!attribute recommended_action_types
    #   <p>The types of recommended actions to include in the preview.</p>
    #   @return [Array<String>]
    # @!attribute criteria
    #   <p> A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. You can specify up to 20 conditions per filter criteria and 20 values per condition. </p>
    #   @return [Types::Criteria]
    # @!attribute max_results
    #   <p>The maximum number of automation rule preview summaries to return in a single response. Valid range is 1-1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    #   @return [String]
    class ListAutomationRulePreviewSummariesRequest < Struct.new(
      nil,
      :rule_type,
      :organization_scope,
      :recommended_action_types,
      :criteria,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute preview_result_summaries
    #   <p>The list of automation rule preview summaries that match the specified criteria.</p>
    #   @return [Array<Types::PreviewResultSummary>]
    # @!attribute next_token
    #   <p>A token used for pagination. If present, indicates there are more results available and can be used in subsequent requests.</p>
    #   @return [String]
    class ListAutomationRulePreviewSummariesResponse < Struct.new(
      nil,
      :preview_result_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> The filters to apply to the list of automation rules. </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The maximum number of automation rules to return in a single response. Valid range is 1-1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    #   @return [String]
    class ListAutomationRulesRequest < Struct.new(
      nil,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute automation_rules
    #   <p> The list of automation rules that match the specified criteria. </p>
    #   @return [Array<Types::AutomationRule>]
    # @!attribute next_token
    #   <p>A token used for pagination. If present, indicates there are more results available and can be used in subsequent requests.</p>
    #   @return [String]
    class ListAutomationRulesResponse < Struct.new(
      nil,
      :automation_rules,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>A list of filters to apply when retrieving recommended action summaries. Filters can be based on resource type, action type, account ID, and other criteria.</p>
    #   @return [Array<Types::RecommendedActionFilter>]
    # @!attribute max_results
    #   <p>The maximum number of recommended action summaries to return in a single response. Valid range is 1-1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    #   @return [String]
    class ListRecommendedActionSummariesRequest < Struct.new(
      nil,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommended_action_summaries
    #   <p> The summary of recommended actions that match the specified criteria. </p>
    #   @return [Array<Types::RecommendedActionSummary>]
    # @!attribute next_token
    #   <p>A token used for pagination. If present, indicates there are more results available and can be used in subsequent requests.</p>
    #   @return [String]
    class ListRecommendedActionSummariesResponse < Struct.new(
      nil,
      :recommended_action_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> The filters to apply to the list of recommended actions. </p>
    #   @return [Array<Types::RecommendedActionFilter>]
    # @!attribute max_results
    #   <p>The maximum number of recommended actions to return in a single response. Valid range is 1-1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    #   @return [String]
    class ListRecommendedActionsRequest < Struct.new(
      nil,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommended_actions
    #   <p> The list of recommended actions that match the specified criteria. </p>
    #   @return [Array<Types::RecommendedAction>]
    # @!attribute next_token
    #   <p>A token used for pagination. If present, indicates there are more results available and can be used in subsequent requests.</p>
    #   @return [String]
    class ListRecommendedActionsResponse < Struct.new(
      nil,
      :recommended_actions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of the resource to list tags for. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> The list of tags associated with the specified resource. </p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The operation can only be performed by a management account. </p>
    # @!attribute message
    #   @return [String]
    class NotManagementAccountException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The account must be opted in to Compute Optimizer Automation before performing this action. </p>
    # @!attribute message
    #   @return [String]
    class OptInRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for organization-wide automation rules.</p>
    # @!attribute rule_apply_order
    #   <p>Specifies when organization rules should be applied relative to account rules.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>List of specific Amazon Web Services account IDs where the organization rule should be applied.</p>
    #   @return [Array<String>]
    class OrganizationConfiguration < Struct.new(
      nil,
      :rule_apply_order,
      :account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Defines the scope for organization-level rules when previewing matching actions.</p>
    # @!attribute account_ids
    #   <p>List of Amazon Web Services account IDs to include in the organization scope.</p>
    #   @return [Array<String>]
    class OrganizationScope < Struct.new(
      nil,
      :account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of previewing an automation rule against available recommendations.</p>
    # @!attribute recommended_action_id
    #   <p>The ID of the recommended action being previewed.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource affected by the recommended action.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource affected by the recommended action.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the resource.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the resource is located.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource being evaluated.</p>
    #   @return [String]
    # @!attribute look_back_period_in_days
    #   <p>The number of days of historical data used to analyze the resource.</p>
    #   @return [Integer]
    # @!attribute recommended_action_type
    #   <p>The type of recommended action being previewed.</p>
    #   @return [String]
    # @!attribute current_resource_summary
    #   <p>A summary of the resource's current configuration.</p>
    #   @return [String]
    # @!attribute current_resource_details
    #   <p>Detailed configuration information for a specific Amazon Web Services resource, with type-specific details.</p>
    #   @return [Types::ResourceDetails]
    # @!attribute recommended_resource_summary
    #   <p>A summary of the resource's recommended configuration.</p>
    #   @return [String]
    # @!attribute recommended_resource_details
    #   <p>Detailed configuration information for a specific Amazon Web Services resource, with type-specific details.</p>
    #   @return [Types::ResourceDetails]
    # @!attribute restart_needed
    #   <p>Indicates whether implementing the recommended action requires a resource restart.</p>
    #   @return [Boolean]
    # @!attribute estimated_monthly_savings
    #   <p> Contains information about estimated monthly cost savings. </p>
    #   @return [Types::EstimatedMonthlySavings]
    # @!attribute resource_tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class PreviewResult < Struct.new(
      nil,
      :recommended_action_id,
      :resource_arn,
      :resource_id,
      :account_id,
      :region,
      :resource_type,
      :look_back_period_in_days,
      :recommended_action_type,
      :current_resource_summary,
      :current_resource_details,
      :recommended_resource_summary,
      :recommended_resource_details,
      :restart_needed,
      :estimated_monthly_savings,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of preview results for an automation rule.</p>
    # @!attribute key
    #   <p>The key identifier for this preview result summary.</p>
    #   @return [String]
    # @!attribute total
    #   <p>Aggregate totals for automation rule preview results, including count and estimated savings.</p>
    #   @return [Types::RulePreviewTotal]
    class PreviewResultSummary < Struct.new(
      nil,
      :key,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a recommended action that can be applied to optimize an Amazon Web Services resource.</p>
    # @!attribute recommended_action_id
    #   <p>The unique identifier of the recommended action.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that the recommendation applies to.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that the recommendation applies to.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that owns the resource.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the resource is located.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource being evaluated.</p>
    #   @return [String]
    # @!attribute look_back_period_in_days
    #   <p>The number of days of historical data used to generate the recommendation.</p>
    #   @return [Integer]
    # @!attribute recommended_action_type
    #   <p>The type of action being recommended.</p>
    #   @return [String]
    # @!attribute current_resource_summary
    #   <p>A summary of the resource's current configuration.</p>
    #   @return [String]
    # @!attribute current_resource_details
    #   <p>Detailed configuration information for a specific Amazon Web Services resource, with type-specific details.</p>
    #   @return [Types::ResourceDetails]
    # @!attribute recommended_resource_summary
    #   <p>A summary of the resource's recommended configuration.</p>
    #   @return [String]
    # @!attribute recommended_resource_details
    #   <p>Detailed configuration information for a specific Amazon Web Services resource, with type-specific details.</p>
    #   @return [Types::ResourceDetails]
    # @!attribute restart_needed
    #   <p>Indicates whether implementing the recommended action requires a resource restart.</p>
    #   @return [Boolean]
    # @!attribute estimated_monthly_savings
    #   <p> Contains information about estimated monthly cost savings. </p>
    #   @return [Types::EstimatedMonthlySavings]
    # @!attribute resource_tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class RecommendedAction < Struct.new(
      nil,
      :recommended_action_id,
      :resource_arn,
      :resource_id,
      :account_id,
      :region,
      :resource_type,
      :look_back_period_in_days,
      :recommended_action_type,
      :current_resource_summary,
      :current_resource_details,
      :recommended_resource_summary,
      :recommended_resource_details,
      :restart_needed,
      :estimated_monthly_savings,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to narrow down recommended action results based on specific criteria.</p>
    # @!attribute name
    #   <p>The name of the filter field to apply.</p>
    #   @return [String]
    # @!attribute values
    #   <p>List of filter values to match against the specified filter name. Used to narrow down recommended actions based on specific criteria.</p>
    #   @return [Array<String>]
    class RecommendedActionFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about recommended actions, grouped by specific criteria with totals and counts.</p>
    # @!attribute key
    #   <p>The grouping key used to categorize the recommended actions in this summary.</p>
    #   @return [String]
    # @!attribute total
    #   <p>Aggregate totals for the recommended actions in this group, including count and estimated savings.</p>
    #   @return [Types::RecommendedActionTotal]
    class RecommendedActionSummary < Struct.new(
      nil,
      :key,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Aggregate totals for a group of recommended actions, including count and estimated monthly savings.</p>
    # @!attribute recommended_action_count
    #   <p>The total number of recommended actions in this group.</p>
    #   @return [Integer]
    # @!attribute estimated_monthly_savings
    #   <p> Contains information about estimated monthly cost savings. </p>
    #   @return [Types::EstimatedMonthlySavings]
    class RecommendedActionTotal < Struct.new(
      nil,
      :recommended_action_count,
      :estimated_monthly_savings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed configuration information for a specific Amazon Web Services resource, with type-specific details.</p>
    # @!attribute ebs_volume
    #   <p>Detailed configuration information specific to EBS volumes, including volume type, size, IOPS, and throughput settings.</p>
    #   @return [Types::EbsVolume]
    class ResourceDetails < Struct.new(
      :ebs_volume,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EbsVolume < ResourceDetails; end
      class Unknown < ResourceDetails; end
    end

    # <p> The specified resource was not found. </p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Criteria condition for filtering resources based on their tags, including comparison operators and values.</p>
    # @!attribute comparison
    #   <p>The comparison operator used to evaluate the attribute against the specified values.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The tag key to use for comparison when filtering resources.</p>
    #   @return [String]
    # @!attribute values
    #   <p>List of tag values to compare against when filtering resources.</p>
    #   @return [Array<String>]
    class ResourceTagsCriteriaCondition < Struct.new(
      nil,
      :comparison,
      :key,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p> The ID of the automation event to roll back. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    #   @return [String]
    class RollbackAutomationEventRequest < Struct.new(
      nil,
      :event_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p> The ID of the automation event being rolled back. </p>
    #   @return [String]
    # @!attribute event_status
    #   <p> The current status of the rollback operation. </p>
    #   @return [String]
    class RollbackAutomationEventResponse < Struct.new(
      nil,
      :event_id,
      :event_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Aggregate totals for automation rule preview results, including count and estimated savings.</p>
    # @!attribute recommended_action_count
    #   <p>The total number of recommended actions matching the rule preview configuration.</p>
    #   @return [Integer]
    # @!attribute estimated_monthly_savings
    #   <p> Contains information about estimated monthly cost savings. </p>
    #   @return [Types::EstimatedMonthlySavings]
    class RulePreviewTotal < Struct.new(
      nil,
      :recommended_action_count,
      :estimated_monthly_savings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for scheduling when automation rules should execute, including timing and execution windows.</p>
    # @!attribute schedule_expression
    #   <p>The expression that defines when the schedule runs. <code>cron</code> expression is supported. A <code>cron</code> expression consists of six fields separated by white spaces: (<code>minutes</code> <code>hours</code> <code>day_of_month</code> <code>month</code> <code>day_of_week</code> <code>year</code>)</p> <note> <p>You can schedule rules to run at most once per day. Your cron expression must use specific values (not wildcards) for the minutes and hours fields. For example: (<code>30 12 * * *</code>) runs daily at 12:30 PM UTC.</p> </note>
    #   @return [String]
    # @!attribute schedule_expression_timezone
    #   <p>The timezone to use when interpreting the schedule expression.</p>
    #   @return [String]
    # @!attribute execution_window_in_minutes
    #   <p>The time window in minutes during which the automation rule can start implementing recommended actions.</p>
    #   @return [Integer]
    class Schedule < Struct.new(
      nil,
      :schedule_expression,
      :schedule_expression_timezone,
      :execution_window_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The request would exceed service quotas. </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The service is temporarily unavailable. </p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommended_action_id
    #   <p> The ID of the recommended action to automate. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    #   @return [String]
    class StartAutomationEventRequest < Struct.new(
      nil,
      :recommended_action_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommended_action_id
    #   <p>The ID of the recommended action being automated.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The ID of the automation event.</p>
    #   @return [String]
    # @!attribute event_status
    #   <p>The current status of the automation event.</p>
    #   @return [String]
    class StartAutomationEventResponse < Struct.new(
      nil,
      :recommended_action_id,
      :event_id,
      :event_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Criteria condition for filtering based on string values, including comparison operators and target values.</p>
    # @!attribute comparison
    #   <p>The comparison operator used to evaluate the attribute against the specified values.</p>
    #   @return [String]
    # @!attribute values
    #   <p>List of string values to compare against when applying the criteria condition.</p>
    #   @return [Array<String>]
    class StringCriteriaCondition < Struct.new(
      nil,
      :comparison,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair used to categorize and group summary data for analysis and reporting.</p>
    # @!attribute key
    #   <p>The dimension key used for categorizing summary data.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The specific value for this dimension key used in the summary grouping.</p>
    #   @return [String]
    class SummaryDimension < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Aggregate totals for automation events, including counts and estimated savings.</p>
    # @!attribute automation_event_count
    #   <p>The total number of automation events in this summary group.</p>
    #   @return [Integer]
    # @!attribute estimated_monthly_savings
    #   <p> Contains information about estimated monthly cost savings. </p>
    #   @return [Types::EstimatedMonthlySavings]
    class SummaryTotals < Struct.new(
      nil,
      :automation_event_count,
      :estimated_monthly_savings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair used to categorize and organize Amazon Web Services resources and automation rules.</p>
    # @!attribute key
    #   <p>The tag key, which can be up to 128 characters long.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value, which can be up to 256 characters long.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of the resource to tag. </p>
    #   @return [String]
    # @!attribute rule_revision
    #   <p>The revision number of the automation rule to tag. This ensures you're tagging the correct version of the rule.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p> The tags to add to the resource. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    #   @return [String]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :rule_revision,
      :tags,
      :client_token,
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

    # <p> The request was denied due to request throttling. </p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a time range with inclusive start time and exclusive end time for filtering and analysis.</p>
    # @!attribute start_time_inclusive
    #   <p>The start time of the period, inclusive. Events at or after this time are included.</p>
    #   @return [Time]
    # @!attribute end_time_exclusive
    #   <p>The end time of the period, exclusive. Events before this time are included.</p>
    #   @return [Time]
    class TimePeriod < Struct.new(
      nil,
      :start_time_inclusive,
      :end_time_exclusive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of the resource to untag. </p>
    #   @return [String]
    # @!attribute rule_revision
    #   <p>The revision number of the automation rule to untag. This ensures you're untagging the correct version of the rule.</p>
    #   @return [Integer]
    # @!attribute tag_keys
    #   <p> The keys of the tags to remove from the resource. </p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    #   @return [String]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :rule_revision,
      :tag_keys,
      :client_token,
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

    # @!attribute rule_arn
    #   <p> The ARN of the rule to update. </p>
    #   @return [String]
    # @!attribute rule_revision
    #   <p> The revision number of the rule to update. </p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The updated name of the automation rule. Must be 1-128 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the automation rule. Can be up to 1024 characters long and contain alphanumeric characters, underscores, hyphens, spaces, and certain special characters.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The updated type of automation rule. Can be either OrganizationRule for organization-wide rules or AccountRule for account-specific rules.</p>
    #   @return [String]
    # @!attribute organization_configuration
    #   <p>Updated configuration settings for organization-wide rules, including rule application order and target account IDs.</p>
    #   @return [Types::OrganizationConfiguration]
    # @!attribute priority
    #   <p>The updated priority level of the automation rule, used to determine execution order when multiple rules apply to the same resource.</p>
    #   @return [String]
    # @!attribute recommended_action_types
    #   <p>Updated list of recommended action types that this rule can execute, such as SnapshotAndDeleteUnattachedEbsVolume or UpgradeEbsVolumeType.</p>
    #   @return [Array<String>]
    # @!attribute criteria
    #   <p> A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. You can specify up to 20 conditions per filter criteria and 20 values per condition. </p>
    #   @return [Types::Criteria]
    # @!attribute schedule
    #   <p>The updated schedule configuration for when the automation rule should execute, including cron expression, timezone, and execution window.</p>
    #   @return [Types::Schedule]
    # @!attribute status
    #   <p>The updated status of the automation rule. Can be Active or Inactive.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    #   @return [String]
    class UpdateAutomationRuleRequest < Struct.new(
      nil,
      :rule_arn,
      :rule_revision,
      :name,
      :description,
      :rule_type,
      :organization_configuration,
      :priority,
      :recommended_action_types,
      :criteria,
      :schedule,
      :status,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p> The ARN of the updated rule. </p>
    #   @return [String]
    # @!attribute rule_revision
    #   <p> The new revision number of the updated rule. </p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The updated name of the automation rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the automation rule.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The updated type of automation rule.</p>
    #   @return [String]
    # @!attribute organization_configuration
    #   <p>The updated organization configuration settings.</p>
    #   @return [Types::OrganizationConfiguration]
    # @!attribute priority
    #   <p>The updated priority level of the automation rule.</p>
    #   @return [String]
    # @!attribute recommended_action_types
    #   <p>The updated list of recommended action types.</p>
    #   @return [Array<String>]
    # @!attribute criteria
    #   <p> A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. You can specify up to 20 conditions per filter criteria and 20 values per condition. </p>
    #   @return [Types::Criteria]
    # @!attribute schedule
    #   <p>The updated schedule configuration.</p>
    #   @return [Types::Schedule]
    # @!attribute status
    #   <p>The updated status of the automation rule.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp when the automation rule was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The timestamp when the automation rule was last updated.</p>
    #   @return [Time]
    class UpdateAutomationRuleResponse < Struct.new(
      nil,
      :rule_arn,
      :rule_revision,
      :name,
      :description,
      :rule_type,
      :organization_configuration,
      :priority,
      :recommended_action_types,
      :criteria,
      :schedule,
      :status,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The desired enrollment status. </p> <ul> <li> <p>Active - Enables the Automation feature for your account.</p> </li> <li> <p>Inactive - Disables the Automation feature for your account and stops all of your automation rules. If you opt in again later, all rules will be inactive, and you must enable the rules you want to run. You must wait at least 24 hours after opting out to opt in again.</p> </li> </ul> <note> <p>The <code>Pending</code> and <code>Failed</code> options cannot be used to update the enrollment status of an account. They are returned in the response of a request to update the enrollment status of an account.</p> <p>If you are a member account, your account must be disassociated from your organization’s management account before you can disable Automation. Contact your administrator to make this change.</p> </note>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    #   @return [String]
    class UpdateEnrollmentConfigurationRequest < Struct.new(
      nil,
      :status,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p> The updated enrollment status. </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p> The reason for the updated enrollment status. </p>
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   <p> The timestamp when the enrollment configuration was last updated. </p>
    #   @return [Time]
    class UpdateEnrollmentConfigurationResponse < Struct.new(
      nil,
      :status,
      :status_reason,
      :last_updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
