# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ComputeOptimizerAutomation
  module Types

    # You do not have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an Amazon Web Services account's
    # enrollment and association status with Compute Optimizer Automation.
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The enrollment status of the account: Active, Inactive, Pending, or
    #   Failed.
    #   @return [String]
    #
    # @!attribute [rw] organization_rule_mode
    #   Specifies whether the management account can create Automation rules
    #   that implement optimization actions for this account.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current Automation enrollment status.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp when the account's Automation enrollment status was
    #   last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/AccountInfo AWS API Documentation
    #
    class AccountInfo < Struct.new(
      :account_id,
      :status,
      :organization_rule_mode,
      :status_reason,
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The IDs of the member accounts to associate. You can specify up to
    #   50 account IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier to ensure idempotency of the request. Valid for
    #   24 hours after creation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/AssociateAccountsRequest AWS API Documentation
    #
    class AssociateAccountsRequest < Struct.new(
      :account_ids,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The IDs of the member accounts that were successfully associated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   Any errors that occurred during the association process.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/AssociateAccountsResponse AWS API Documentation
    #
    class AssociateAccountsResponse < Struct.new(
      :account_ids,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an automation event.
    #
    # @!attribute [rw] event_id
    #   The unique identifier for the automation event.
    #   @return [String]
    #
    # @!attribute [rw] event_description
    #   A description of the automation event.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The type of automation event.
    #   @return [String]
    #
    # @!attribute [rw] event_status
    #   The current status of the automation event.
    #   @return [String]
    #
    # @!attribute [rw] event_status_reason
    #   The reason for the current event status.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource affected by the
    #   automation event.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource affected by the automation event.
    #   @return [String]
    #
    # @!attribute [rw] recommended_action_id
    #   The ID of the recommended action associated with this automation
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the automation
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region where the automation event occurred.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The ID of the automation rule that triggered this event.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource affected by the automation event.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp when the automation event was created.
    #   @return [Time]
    #
    # @!attribute [rw] completed_timestamp
    #   The timestamp when the automation event completed.
    #   @return [Time]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   The estimated monthly cost savings associated with this automation
    #   event.
    #   @return [Types::EstimatedMonthlySavings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/AutomationEvent AWS API Documentation
    #
    class AutomationEvent < Struct.new(
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
      :estimated_monthly_savings)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter to apply when listing automation events.
    #
    # @!attribute [rw] name
    #   The name of the filter to apply.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to use for the specified filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/AutomationEventFilter AWS API Documentation
    #
    class AutomationEventFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a step in an automation event.
    #
    # @!attribute [rw] event_id
    #   The ID of the automation event this step belongs to.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The unique identifier for this step.
    #   @return [String]
    #
    # @!attribute [rw] step_type
    #   The type of step.
    #   @return [String]
    #
    # @!attribute [rw] step_status
    #   The current status of the step.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource being acted upon in this step.
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp
    #   The timestamp when this automation event step started execution.
    #   @return [Time]
    #
    # @!attribute [rw] completed_timestamp
    #   The timestamp when this automation event step completed execution.
    #   @return [Time]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   Contains information about estimated monthly cost savings.
    #   @return [Types::EstimatedMonthlySavings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/AutomationEventStep AWS API Documentation
    #
    class AutomationEventStep < Struct.new(
      :event_id,
      :step_id,
      :step_type,
      :step_status,
      :resource_id,
      :start_timestamp,
      :completed_timestamp,
      :estimated_monthly_savings)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of automation events grouped by specified dimensions.
    #
    # @!attribute [rw] key
    #   The key identifier for this summary grouping.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions used to group this summary, such as event status.
    #   @return [Array<Types::SummaryDimension>]
    #
    # @!attribute [rw] time_period
    #   The time period covered by this summary, with inclusive start time
    #   and exclusive end time.
    #   @return [Types::TimePeriod]
    #
    # @!attribute [rw] total
    #   The aggregated totals for this summary, including event count and
    #   estimated savings.
    #   @return [Types::SummaryTotals]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/AutomationEventSummary AWS API Documentation
    #
    class AutomationEventSummary < Struct.new(
      :key,
      :dimensions,
      :time_period,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a complete automation rule configuration including
    # criteria, schedule, and execution settings.
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The unique identifier of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of automation rule (OrganizationRule or AccountRule).
    #   @return [String]
    #
    # @!attribute [rw] rule_revision
    #   The revision number of the automation rule.
    #   @return [Integer]
    #
    # @!attribute [rw] account_id
    #   The 12-digit Amazon Web Services account ID that owns this
    #   automation rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_configuration
    #   Configuration settings for organization-wide rules.
    #   @return [Types::OrganizationConfiguration]
    #
    # @!attribute [rw] priority
    #   A string representation of a decimal number between 0 and 1 (having
    #   up to 30 digits after the decimal point) that determines the
    #   priority of the rule. When multiple rules match the same recommended
    #   action, Compute Optimizer assigns the action to the rule with the
    #   lowest priority value (highest priority), even if that rule is
    #   scheduled to run later than other matching rules.
    #   @return [String]
    #
    # @!attribute [rw] recommended_action_types
    #   List of recommended action types that this rule can execute.
    #   @return [Array<String>]
    #
    # @!attribute [rw] schedule
    #   The schedule configuration for when the automation rule should
    #   execute.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The current status of the automation rule (Active or Inactive).
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp when the automation rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp when the automation rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/AutomationRule AWS API Documentation
    #
    class AutomationRule < Struct.new(
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
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of rule.
    #
    #   <note markdown="1"> Only the management account or a delegated administrator can set the
    #   ruleType to be OrganizationRule.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] organization_configuration
    #   Configuration for organization-level rules. Required for
    #   OrganizationRule type.
    #   @return [Types::OrganizationConfiguration]
    #
    # @!attribute [rw] priority
    #   A string representation of a decimal number between 0 and 1 (having
    #   up to 30 digits after the decimal point) that determines the
    #   priority of the rule. When multiple rules match the same recommended
    #   action, Compute Optimizer assigns the action to the rule with the
    #   lowest priority value (highest priority), even if that rule is
    #   scheduled to run later than other matching rules.
    #   @return [String]
    #
    # @!attribute [rw] recommended_action_types
    #   The types of recommended actions this rule will automate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] criteria
    #   A set of conditions that specify which recommended action qualify
    #   for implementation. When a rule is active and a recommended action
    #   matches these criteria, Compute Optimizer implements the action at
    #   the scheduled run time.
    #   @return [Types::Criteria]
    #
    # @!attribute [rw] schedule
    #   The schedule for when the rule should run.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The status of the rule
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the rule.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier to ensure idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/CreateAutomationRuleRequest AWS API Documentation
    #
    class CreateAutomationRuleRequest < Struct.new(
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
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the created rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The unique identifier of the created rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the automation rule. Must be 1-128 characters long and
    #   contain only alphanumeric characters, underscores, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the automation rule. Can be up to 1024 characters
    #   long and contain alphanumeric characters, underscores, hyphens,
    #   spaces, and certain special characters.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of automation rule. Can be either OrganizationRule for
    #   organization-wide rules or AccountRule for account-specific rules.
    #   @return [String]
    #
    # @!attribute [rw] rule_revision
    #   The revision number of the automation rule. This is incremented each
    #   time the rule is updated.
    #   @return [Integer]
    #
    # @!attribute [rw] organization_configuration
    #   Configuration settings for organization-wide rules, including rule
    #   application order and target account IDs.
    #   @return [Types::OrganizationConfiguration]
    #
    # @!attribute [rw] priority
    #   The priority level of the automation rule, used to determine
    #   execution order when multiple rules apply to the same resource.
    #   @return [String]
    #
    # @!attribute [rw] recommended_action_types
    #   List of recommended action types that this rule can execute, such as
    #   SnapshotAndDeleteUnattachedEbsVolume or UpgradeEbsVolumeType.
    #   @return [Array<String>]
    #
    # @!attribute [rw] criteria
    #   A set of conditions that specify which recommended action qualify
    #   for implementation. When a rule is active and a recommended action
    #   matches these criteria, Compute Optimizer implements the action at
    #   the scheduled run time. You can specify up to 20 conditions per
    #   filter criteria and 20 values per condition.
    #   @return [Types::Criteria]
    #
    # @!attribute [rw] schedule
    #   The schedule configuration for when the automation rule should
    #   execute, including cron expression, timezone, and execution window.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The current status of the automation rule. Can be Active or
    #   Inactive.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs used to categorize and organize the
    #   automation rule. Maximum of 200 tags allowed.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp when the automation rule was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/CreateAutomationRuleResponse AWS API Documentation
    #
    class CreateAutomationRuleResponse < Struct.new(
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
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of conditions that specify which recommended action qualify for
    # implementation. When a rule is active and a recommended action matches
    # these criteria, Compute Optimizer implements the action at the
    # scheduled run time. You can specify up to 20 conditions per filter
    # criteria and 20 values per condition.
    #
    # @!attribute [rw] region
    #   Filter criteria for Amazon Web Services regions where resources must
    #   be located.
    #   @return [Array<Types::StringCriteriaCondition>]
    #
    # @!attribute [rw] resource_arn
    #   Filter criteria for specific resource ARNs to include or exclude.
    #   @return [Array<Types::StringCriteriaCondition>]
    #
    # @!attribute [rw] ebs_volume_type
    #   Filter criteria for EBS volume types, such as gp2, gp3, io1, io2,
    #   st1, or sc1.
    #   @return [Array<Types::StringCriteriaCondition>]
    #
    # @!attribute [rw] ebs_volume_size_in_gib
    #   Filter criteria for EBS volume sizes in gibibytes (GiB).
    #   @return [Array<Types::IntegerCriteriaCondition>]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   Filter criteria for estimated monthly cost savings from the
    #   recommended action.
    #   @return [Array<Types::DoubleCriteriaCondition>]
    #
    # @!attribute [rw] resource_tag
    #   Filter criteria for resource tags, allowing filtering by tag key and
    #   value combinations.
    #   @return [Array<Types::ResourceTagsCriteriaCondition>]
    #
    # @!attribute [rw] look_back_period_in_days
    #   Filter criteria for the lookback period in days used to analyze
    #   resource utilization.
    #   @return [Array<Types::IntegerCriteriaCondition>]
    #
    # @!attribute [rw] restart_needed
    #   Filter criteria indicating whether the recommended action requires a
    #   resource restart.
    #   @return [Array<Types::StringCriteriaCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/Criteria AWS API Documentation
    #
    class Criteria < Struct.new(
      :region,
      :resource_arn,
      :ebs_volume_type,
      :ebs_volume_size_in_gib,
      :estimated_monthly_savings,
      :resource_tag,
      :look_back_period_in_days,
      :restart_needed)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The ARN of the rule to delete.
    #   @return [String]
    #
    # @!attribute [rw] rule_revision
    #   The revision number of the rule to delete.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   A unique identifier to ensure idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/DeleteAutomationRuleRequest AWS API Documentation
    #
    class DeleteAutomationRuleRequest < Struct.new(
      :rule_arn,
      :rule_revision,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/DeleteAutomationRuleResponse AWS API Documentation
    #
    class DeleteAutomationRuleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_ids
    #   The IDs of the member accounts to disassociate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier to ensure idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/DisassociateAccountsRequest AWS API Documentation
    #
    class DisassociateAccountsRequest < Struct.new(
      :account_ids,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The IDs of the member accounts that were successfully disassociated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   Any errors that occurred during the disassociation process.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/DisassociateAccountsResponse AWS API Documentation
    #
    class DisassociateAccountsResponse < Struct.new(
      :account_ids,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a condition for filtering based on double/floating-point
    # numeric values with comparison operators.
    #
    # @!attribute [rw] comparison
    #   The comparison operator to use, such as equals, greater than, less
    #   than, etc.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The list of double values to compare against using the specified
    #   comparison operator.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/DoubleCriteriaCondition AWS API Documentation
    #
    class DoubleCriteriaCondition < Struct.new(
      :comparison,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an Amazon EBS volume with its configuration and snapshot
    # usage information.
    #
    # @!attribute [rw] configuration
    #   The configuration details of the EBS volume, including type, size,
    #   IOPS, and throughput.
    #   @return [Types::EbsVolumeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/EbsVolume AWS API Documentation
    #
    class EbsVolume < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details for an Amazon EBS volume.
    #
    # @!attribute [rw] type
    #   The EBS volume type, such as gp2, gp3, io1, io2, st1, or sc1.
    #   @return [String]
    #
    # @!attribute [rw] size_in_gib
    #   The size of the EBS volume in gibibytes (GiB).
    #   @return [Integer]
    #
    # @!attribute [rw] iops
    #   The number of I/O operations per second (IOPS) provisioned for the
    #   volume.
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   The throughput in MiB/s provisioned for the volume (applicable to
    #   gp3, io1, and io2bx volumes).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/EbsVolumeConfiguration AWS API Documentation
    #
    class EbsVolumeConfiguration < Struct.new(
      :type,
      :size_in_gib,
      :iops,
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about estimated monthly cost savings.
    #
    # @!attribute [rw] currency
    #   The currency of the estimated savings.
    #   @return [String]
    #
    # @!attribute [rw] before_discount_savings
    #   The estimated monthly savings before applying any discounts.
    #   @return [Float]
    #
    # @!attribute [rw] after_discount_savings
    #   The estimated monthly savings after applying any discounts.
    #   @return [Float]
    #
    # @!attribute [rw] savings_estimation_mode
    #   The mode used to calculate savings, either BeforeDiscount or
    #   AfterDiscount.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/EstimatedMonthlySavings AWS API Documentation
    #
    class EstimatedMonthlySavings < Struct.new(
      :currency,
      :before_discount_savings,
      :after_discount_savings,
      :savings_estimation_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to narrow down results based on specific criteria.
    #
    # @!attribute [rw] name
    #   The name of the filter field to apply.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The list of values to filter by for the specified filter field.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are not authorized to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The ID of the automation event to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/GetAutomationEventRequest AWS API Documentation
    #
    class GetAutomationEventRequest < Struct.new(
      :event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The ID of the automation event to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] event_description
    #   A description of the automation event.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The type of automation event.
    #   @return [String]
    #
    # @!attribute [rw] event_status
    #   The current status of the automation event.
    #   @return [String]
    #
    # @!attribute [rw] event_status_reason
    #   The reason for the current event status.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource affected by the
    #   automation event.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource affected by the automation event.
    #   @return [String]
    #
    # @!attribute [rw] recommended_action_id
    #   The ID of the recommended action associated with this automation
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the automation
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region where the automation event occurred.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The ID of the automation rule that triggered this event.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource affected by the automation event.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp when the automation event was created.
    #   @return [Time]
    #
    # @!attribute [rw] completed_timestamp
    #   The timestamp when the automation event completed.
    #   @return [Time]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   Contains information about estimated monthly cost savings.
    #   @return [Types::EstimatedMonthlySavings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/GetAutomationEventResponse AWS API Documentation
    #
    class GetAutomationEventResponse < Struct.new(
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
      :estimated_monthly_savings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The ARN of the rule to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/GetAutomationRuleRequest AWS API Documentation
    #
    class GetAutomationRuleRequest < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The unique identifier of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of automation rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_revision
    #   The revision number of the automation rule.
    #   @return [Integer]
    #
    # @!attribute [rw] account_id
    #   The 12-digit Amazon Web Services account ID that owns this
    #   automation rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_configuration
    #   Configuration settings for organization-wide automation rules.
    #   @return [Types::OrganizationConfiguration]
    #
    # @!attribute [rw] priority
    #   A string representation of a decimal number between 0 and 1 (having
    #   up to 30 digits after the decimal point) that determines the
    #   priority of the rule.
    #   @return [String]
    #
    # @!attribute [rw] recommended_action_types
    #   List of recommended action types that this rule can execute.
    #   @return [Array<String>]
    #
    # @!attribute [rw] criteria
    #   A set of conditions that specify which recommended action qualify
    #   for implementation. When a rule is active and a recommended action
    #   matches these criteria, Compute Optimizer implements the action at
    #   the scheduled run time. You can specify up to 20 conditions per
    #   filter criteria and 20 values per condition.
    #   @return [Types::Criteria]
    #
    # @!attribute [rw] schedule
    #   Configuration for scheduling when automation rules should execute,
    #   including timing and execution windows.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The current status of the automation rule (Active or Inactive).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the automation rule.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp when the automation rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp when the automation rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/GetAutomationRuleResponse AWS API Documentation
    #
    class GetAutomationRuleResponse < Struct.new(
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
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/GetEnrollmentConfigurationRequest AWS API Documentation
    #
    class GetEnrollmentConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] status
    #   The current enrollment status.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current enrollment status.
    #   @return [String]
    #
    # @!attribute [rw] organization_rule_mode
    #   Specifies whether the management account can create Automation rules
    #   that implement optimization actions for this account.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp of the last update to the enrollment configuration.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/GetEnrollmentConfigurationResponse AWS API Documentation
    #
    class GetEnrollmentConfigurationResponse < Struct.new(
      :status,
      :status_reason,
      :organization_rule_mode,
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified client token is already in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/IdempotencyTokenInUseException AWS API Documentation
    #
    class IdempotencyTokenInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown when the same client token is used with different
    # parameters, indicating a mismatch in idempotent request parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/IdempotentParameterMismatchException AWS API Documentation
    #
    class IdempotentParameterMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a condition for filtering based on integer values with
    # comparison operators.
    #
    # @!attribute [rw] comparison
    #   The comparison operator to use, such as equals, greater than, less
    #   than, etc.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The list of integer values to compare against using the specified
    #   comparison operator.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/IntegerCriteriaCondition AWS API Documentation
    #
    class IntegerCriteriaCondition < Struct.new(
      :comparison,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameter values are not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAccountsRequest AWS API Documentation
    #
    class ListAccountsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   The list of accounts in your organization enrolled in Compute
    #   Optimizer
    #   @return [Array<Types::AccountInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAccountsResponse AWS API Documentation
    #
    class ListAccountsResponse < Struct.new(
      :accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The ID of the automation event.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of automation event steps to return in a single
    #   response. Valid range is 1-1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationEventStepsRequest AWS API Documentation
    #
    class ListAutomationEventStepsRequest < Struct.new(
      :event_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] automation_event_steps
    #   The list of steps for the specified automation event.
    #   @return [Array<Types::AutomationEventStep>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination. If present, indicates there are more
    #   results available and can be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationEventStepsResponse AWS API Documentation
    #
    class ListAutomationEventStepsResponse < Struct.new(
      :automation_event_steps,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   The filters to apply to the list of automation event summaries.
    #   @return [Array<Types::AutomationEventFilter>]
    #
    # @!attribute [rw] start_date_inclusive
    #   The start date for filtering automation event summaries, inclusive.
    #   Events created on or after this date will be included.
    #   @return [String]
    #
    # @!attribute [rw] end_date_exclusive
    #   The end date for filtering automation event summaries, exclusive.
    #   Events created before this date will be included.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of automation event summaries to return in a
    #   single response. Valid range is 1-1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationEventSummariesRequest AWS API Documentation
    #
    class ListAutomationEventSummariesRequest < Struct.new(
      :filters,
      :start_date_inclusive,
      :end_date_exclusive,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] automation_event_summaries
    #   The list of automation event summaries that match the specified
    #   criteria.
    #   @return [Array<Types::AutomationEventSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination. If present, indicates there are more
    #   results available and can be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationEventSummariesResponse AWS API Documentation
    #
    class ListAutomationEventSummariesResponse < Struct.new(
      :automation_event_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   The filters to apply to the list of automation events.
    #   @return [Array<Types::AutomationEventFilter>]
    #
    # @!attribute [rw] start_time_inclusive
    #   The start of the time range to query for events.
    #   @return [Time]
    #
    # @!attribute [rw] end_time_exclusive
    #   The end of the time range to query for events.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationEventsRequest AWS API Documentation
    #
    class ListAutomationEventsRequest < Struct.new(
      :filters,
      :start_time_inclusive,
      :end_time_exclusive,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] automation_events
    #   The list of automation events that match the specified criteria.
    #   @return [Array<Types::AutomationEvent>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationEventsResponse AWS API Documentation
    #
    class ListAutomationEventsResponse < Struct.new(
      :automation_events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_type
    #   The type of rule.
    #
    #   <note markdown="1"> Only the management account or a delegated administrator can set the
    #   ruleType to be OrganizationRule.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] organization_scope
    #   The organizational scope for the rule preview.
    #   @return [Types::OrganizationScope]
    #
    # @!attribute [rw] recommended_action_types
    #   The types of recommended actions to include in the preview.
    #   @return [Array<String>]
    #
    # @!attribute [rw] criteria
    #   A set of conditions that specify which recommended action qualify
    #   for implementation. When a rule is active and a recommended action
    #   matches these criteria, Compute Optimizer implements the action at
    #   the scheduled run time.
    #   @return [Types::Criteria]
    #
    # @!attribute [rw] max_results
    #   The maximum number of automation rule preview results to return in a
    #   single response. Valid range is 1-1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationRulePreviewRequest AWS API Documentation
    #
    class ListAutomationRulePreviewRequest < Struct.new(
      :rule_type,
      :organization_scope,
      :recommended_action_types,
      :criteria,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] preview_results
    #   The list of actions that would be taken based on the specified
    #   criteria.
    #   @return [Array<Types::PreviewResult>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination. If present, indicates there are more
    #   results available and can be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationRulePreviewResponse AWS API Documentation
    #
    class ListAutomationRulePreviewResponse < Struct.new(
      :preview_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_type
    #   The type of rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_scope
    #   The organizational scope for the rule preview.
    #   @return [Types::OrganizationScope]
    #
    # @!attribute [rw] recommended_action_types
    #   The types of recommended actions to include in the preview.
    #   @return [Array<String>]
    #
    # @!attribute [rw] criteria
    #   A set of conditions that specify which recommended action qualify
    #   for implementation. When a rule is active and a recommended action
    #   matches these criteria, Compute Optimizer implements the action at
    #   the scheduled run time. You can specify up to 20 conditions per
    #   filter criteria and 20 values per condition.
    #   @return [Types::Criteria]
    #
    # @!attribute [rw] max_results
    #   The maximum number of automation rule preview summaries to return in
    #   a single response. Valid range is 1-1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationRulePreviewSummariesRequest AWS API Documentation
    #
    class ListAutomationRulePreviewSummariesRequest < Struct.new(
      :rule_type,
      :organization_scope,
      :recommended_action_types,
      :criteria,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] preview_result_summaries
    #   The list of automation rule preview summaries that match the
    #   specified criteria.
    #   @return [Array<Types::PreviewResultSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination. If present, indicates there are more
    #   results available and can be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationRulePreviewSummariesResponse AWS API Documentation
    #
    class ListAutomationRulePreviewSummariesResponse < Struct.new(
      :preview_result_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   The filters to apply to the list of automation rules.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of automation rules to return in a single
    #   response. Valid range is 1-1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationRulesRequest AWS API Documentation
    #
    class ListAutomationRulesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] automation_rules
    #   The list of automation rules that match the specified criteria.
    #   @return [Array<Types::AutomationRule>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination. If present, indicates there are more
    #   results available and can be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationRulesResponse AWS API Documentation
    #
    class ListAutomationRulesResponse < Struct.new(
      :automation_rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   A list of filters to apply when retrieving recommended action
    #   summaries. Filters can be based on resource type, action type,
    #   account ID, and other criteria.
    #   @return [Array<Types::RecommendedActionFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommended action summaries to return in a
    #   single response. Valid range is 1-1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListRecommendedActionSummariesRequest AWS API Documentation
    #
    class ListRecommendedActionSummariesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommended_action_summaries
    #   The summary of recommended actions that match the specified
    #   criteria.
    #   @return [Array<Types::RecommendedActionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination. If present, indicates there are more
    #   results available and can be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListRecommendedActionSummariesResponse AWS API Documentation
    #
    class ListRecommendedActionSummariesResponse < Struct.new(
      :recommended_action_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   The filters to apply to the list of recommended actions.
    #   @return [Array<Types::RecommendedActionFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommended actions to return in a single
    #   response. Valid range is 1-1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListRecommendedActionsRequest AWS API Documentation
    #
    class ListRecommendedActionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommended_actions
    #   The list of recommended actions that match the specified criteria.
    #   @return [Array<Types::RecommendedAction>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination. If present, indicates there are more
    #   results available and can be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListRecommendedActionsResponse AWS API Documentation
    #
    class ListRecommendedActionsResponse < Struct.new(
      :recommended_actions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation can only be performed by a management account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/NotManagementAccountException AWS API Documentation
    #
    class NotManagementAccountException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The account must be opted in to Compute Optimizer Automation before
    # performing this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/OptInRequiredException AWS API Documentation
    #
    class OptInRequiredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for organization-wide automation rules.
    #
    # @!attribute [rw] rule_apply_order
    #   Specifies when organization rules should be applied relative to
    #   account rules.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   List of specific Amazon Web Services account IDs where the
    #   organization rule should be applied.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/OrganizationConfiguration AWS API Documentation
    #
    class OrganizationConfiguration < Struct.new(
      :rule_apply_order,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the scope for organization-level rules when previewing
    # matching actions.
    #
    # @!attribute [rw] account_ids
    #   List of Amazon Web Services account IDs to include in the
    #   organization scope.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/OrganizationScope AWS API Documentation
    #
    class OrganizationScope < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of previewing an automation rule against
    # available recommendations.
    #
    # @!attribute [rw] recommended_action_id
    #   The ID of the recommended action being previewed.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource affected by the
    #   recommended action.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource affected by the recommended action.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region where the resource is located.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource being evaluated.
    #   @return [String]
    #
    # @!attribute [rw] look_back_period_in_days
    #   The number of days of historical data used to analyze the resource.
    #   @return [Integer]
    #
    # @!attribute [rw] recommended_action_type
    #   The type of recommended action being previewed.
    #   @return [String]
    #
    # @!attribute [rw] current_resource_summary
    #   A summary of the resource's current configuration.
    #   @return [String]
    #
    # @!attribute [rw] current_resource_details
    #   Detailed configuration information for a specific Amazon Web
    #   Services resource, with type-specific details.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] recommended_resource_summary
    #   A summary of the resource's recommended configuration.
    #   @return [String]
    #
    # @!attribute [rw] recommended_resource_details
    #   Detailed configuration information for a specific Amazon Web
    #   Services resource, with type-specific details.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] restart_needed
    #   Indicates whether implementing the recommended action requires a
    #   resource restart.
    #   @return [Boolean]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   Contains information about estimated monthly cost savings.
    #   @return [Types::EstimatedMonthlySavings]
    #
    # @!attribute [rw] resource_tags
    #   The tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/PreviewResult AWS API Documentation
    #
    class PreviewResult < Struct.new(
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
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of preview results for an automation rule.
    #
    # @!attribute [rw] key
    #   The key identifier for this preview result summary.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   Aggregate totals for automation rule preview results, including
    #   count and estimated savings.
    #   @return [Types::RulePreviewTotal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/PreviewResultSummary AWS API Documentation
    #
    class PreviewResultSummary < Struct.new(
      :key,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a recommended action that can be applied to
    # optimize an Amazon Web Services resource.
    #
    # @!attribute [rw] recommended_action_id
    #   The unique identifier of the recommended action.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that the
    #   recommendation applies to.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that the recommendation applies to.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region where the resource is located.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource being evaluated.
    #   @return [String]
    #
    # @!attribute [rw] look_back_period_in_days
    #   The number of days of historical data used to generate the
    #   recommendation.
    #   @return [Integer]
    #
    # @!attribute [rw] recommended_action_type
    #   The type of action being recommended.
    #   @return [String]
    #
    # @!attribute [rw] current_resource_summary
    #   A summary of the resource's current configuration.
    #   @return [String]
    #
    # @!attribute [rw] current_resource_details
    #   Detailed configuration information for a specific Amazon Web
    #   Services resource, with type-specific details.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] recommended_resource_summary
    #   A summary of the resource's recommended configuration.
    #   @return [String]
    #
    # @!attribute [rw] recommended_resource_details
    #   Detailed configuration information for a specific Amazon Web
    #   Services resource, with type-specific details.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] restart_needed
    #   Indicates whether implementing the recommended action requires a
    #   resource restart.
    #   @return [Boolean]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   Contains information about estimated monthly cost savings.
    #   @return [Types::EstimatedMonthlySavings]
    #
    # @!attribute [rw] resource_tags
    #   The tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/RecommendedAction AWS API Documentation
    #
    class RecommendedAction < Struct.new(
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
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to narrow down recommended action results based on
    # specific criteria.
    #
    # @!attribute [rw] name
    #   The name of the filter field to apply.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   List of filter values to match against the specified filter name.
    #   Used to narrow down recommended actions based on specific criteria.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/RecommendedActionFilter AWS API Documentation
    #
    class RecommendedActionFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about recommended actions, grouped by specific
    # criteria with totals and counts.
    #
    # @!attribute [rw] key
    #   The grouping key used to categorize the recommended actions in this
    #   summary.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   Aggregate totals for the recommended actions in this group,
    #   including count and estimated savings.
    #   @return [Types::RecommendedActionTotal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/RecommendedActionSummary AWS API Documentation
    #
    class RecommendedActionSummary < Struct.new(
      :key,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregate totals for a group of recommended actions, including count
    # and estimated monthly savings.
    #
    # @!attribute [rw] recommended_action_count
    #   The total number of recommended actions in this group.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   Contains information about estimated monthly cost savings.
    #   @return [Types::EstimatedMonthlySavings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/RecommendedActionTotal AWS API Documentation
    #
    class RecommendedActionTotal < Struct.new(
      :recommended_action_count,
      :estimated_monthly_savings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed configuration information for a specific Amazon Web Services
    # resource, with type-specific details.
    #
    # @note ResourceDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceDetails corresponding to the set member.
    #
    # @!attribute [rw] ebs_volume
    #   Detailed configuration information specific to EBS volumes,
    #   including volume type, size, IOPS, and throughput settings.
    #   @return [Types::EbsVolume]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :ebs_volume,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EbsVolume < ResourceDetails; end
      class Unknown < ResourceDetails; end
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Criteria condition for filtering resources based on their tags,
    # including comparison operators and values.
    #
    # @!attribute [rw] comparison
    #   The comparison operator used to evaluate the tag criteria, such as
    #   equals, not equals, or contains.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The tag key to use for comparison when filtering resources.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   List of tag values to compare against when filtering resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ResourceTagsCriteriaCondition AWS API Documentation
    #
    class ResourceTagsCriteriaCondition < Struct.new(
      :comparison,
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The ID of the automation event to roll back.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/RollbackAutomationEventRequest AWS API Documentation
    #
    class RollbackAutomationEventRequest < Struct.new(
      :event_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The ID of the automation event being rolled back.
    #   @return [String]
    #
    # @!attribute [rw] event_status
    #   The current status of the rollback operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/RollbackAutomationEventResponse AWS API Documentation
    #
    class RollbackAutomationEventResponse < Struct.new(
      :event_id,
      :event_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregate totals for automation rule preview results, including count
    # and estimated savings.
    #
    # @!attribute [rw] recommended_action_count
    #   The total number of recommended actions matching the rule preview
    #   configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   Contains information about estimated monthly cost savings.
    #   @return [Types::EstimatedMonthlySavings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/RulePreviewTotal AWS API Documentation
    #
    class RulePreviewTotal < Struct.new(
      :recommended_action_count,
      :estimated_monthly_savings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for scheduling when automation rules should execute,
    # including timing and execution windows.
    #
    # @!attribute [rw] schedule_expression
    #   The expression that defines when the schedule runs. `cron`
    #   expression is supported. A `cron` expression consists of six fields
    #   separated by white spaces: (`minutes` `hours` `day_of_month` `month`
    #   `day_of_week` `year`)
    #
    #   <note markdown="1"> You can schedule rules to run at most once per day. Your cron
    #   expression must use specific values (not wildcards) for the minutes
    #   and hours fields. For example: (`30 12 * * *`) runs daily at 12:30
    #   PM UTC.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression_timezone
    #   The timezone to use when interpreting the schedule expression.
    #   @return [String]
    #
    # @!attribute [rw] execution_window_in_minutes
    #   The time window in minutes during which the automation rule can
    #   start implementing recommended actions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :schedule_expression,
      :schedule_expression_timezone,
      :execution_window_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed service quotas.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommended_action_id
    #   The ID of the recommended action to automate.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/StartAutomationEventRequest AWS API Documentation
    #
    class StartAutomationEventRequest < Struct.new(
      :recommended_action_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommended_action_id
    #   The ID of the recommended action being automated.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The ID of the automation event.
    #   @return [String]
    #
    # @!attribute [rw] event_status
    #   The current status of the automation event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/StartAutomationEventResponse AWS API Documentation
    #
    class StartAutomationEventResponse < Struct.new(
      :recommended_action_id,
      :event_id,
      :event_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Criteria condition for filtering based on string values, including
    # comparison operators and target values.
    #
    # @!attribute [rw] comparison
    #   The comparison operator used to evaluate the string criteria, such
    #   as equals, not equals, or contains.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   List of string values to compare against when applying the criteria
    #   condition.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/StringCriteriaCondition AWS API Documentation
    #
    class StringCriteriaCondition < Struct.new(
      :comparison,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair used to categorize and group summary data for
    # analysis and reporting.
    #
    # @!attribute [rw] key
    #   The dimension key used for categorizing summary data.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The specific value for this dimension key used in the summary
    #   grouping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/SummaryDimension AWS API Documentation
    #
    class SummaryDimension < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregate totals for automation events, including counts and estimated
    # savings.
    #
    # @!attribute [rw] automation_event_count
    #   The total number of automation events in this summary group.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   Contains information about estimated monthly cost savings.
    #   @return [Types::EstimatedMonthlySavings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/SummaryTotals AWS API Documentation
    #
    class SummaryTotals < Struct.new(
      :automation_event_count,
      :estimated_monthly_savings)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair used to categorize and organize Amazon Web Services
    # resources and automation rules.
    #
    # @!attribute [rw] key
    #   The tag key, which can be up to 128 characters long.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value, which can be up to 256 characters long.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] rule_revision
    #   The revision number of the automation rule to tag. This ensures
    #   you're tagging the correct version of the rule.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :rule_revision,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a time range with inclusive start time and exclusive end time
    # for filtering and analysis.
    #
    # @!attribute [rw] start_time_inclusive
    #   The start time of the period, inclusive. Events at or after this
    #   time are included.
    #   @return [Time]
    #
    # @!attribute [rw] end_time_exclusive
    #   The end time of the period, exclusive. Events before this time are
    #   included.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/TimePeriod AWS API Documentation
    #
    class TimePeriod < Struct.new(
      :start_time_inclusive,
      :end_time_exclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to untag.
    #   @return [String]
    #
    # @!attribute [rw] rule_revision
    #   The revision number of the automation rule to untag. This ensures
    #   you're untagging the correct version of the rule.
    #   @return [Integer]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :rule_revision,
      :tag_keys,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] rule_arn
    #   The ARN of the rule to update.
    #   @return [String]
    #
    # @!attribute [rw] rule_revision
    #   The revision number of the rule to update.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The updated name of the automation rule. Must be 1-128 characters
    #   long and contain only alphanumeric characters, underscores, and
    #   hyphens.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the automation rule. Can be up to 1024
    #   characters long and contain alphanumeric characters, underscores,
    #   hyphens, spaces, and certain special characters.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The updated type of automation rule. Can be either OrganizationRule
    #   for organization-wide rules or AccountRule for account-specific
    #   rules.
    #   @return [String]
    #
    # @!attribute [rw] organization_configuration
    #   Updated configuration settings for organization-wide rules,
    #   including rule application order and target account IDs.
    #   @return [Types::OrganizationConfiguration]
    #
    # @!attribute [rw] priority
    #   The updated priority level of the automation rule, used to determine
    #   execution order when multiple rules apply to the same resource.
    #   @return [String]
    #
    # @!attribute [rw] recommended_action_types
    #   Updated list of recommended action types that this rule can execute,
    #   such as SnapshotAndDeleteUnattachedEbsVolume or
    #   UpgradeEbsVolumeType.
    #   @return [Array<String>]
    #
    # @!attribute [rw] criteria
    #   A set of conditions that specify which recommended action qualify
    #   for implementation. When a rule is active and a recommended action
    #   matches these criteria, Compute Optimizer implements the action at
    #   the scheduled run time. You can specify up to 20 conditions per
    #   filter criteria and 20 values per condition.
    #   @return [Types::Criteria]
    #
    # @!attribute [rw] schedule
    #   The updated schedule configuration for when the automation rule
    #   should execute, including cron expression, timezone, and execution
    #   window.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The updated status of the automation rule. Can be Active or
    #   Inactive.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/UpdateAutomationRuleRequest AWS API Documentation
    #
    class UpdateAutomationRuleRequest < Struct.new(
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
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The ARN of the updated rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_revision
    #   The new revision number of the updated rule.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The updated name of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The updated type of automation rule.
    #   @return [String]
    #
    # @!attribute [rw] organization_configuration
    #   The updated organization configuration settings.
    #   @return [Types::OrganizationConfiguration]
    #
    # @!attribute [rw] priority
    #   The updated priority level of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] recommended_action_types
    #   The updated list of recommended action types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] criteria
    #   A set of conditions that specify which recommended action qualify
    #   for implementation. When a rule is active and a recommended action
    #   matches these criteria, Compute Optimizer implements the action at
    #   the scheduled run time. You can specify up to 20 conditions per
    #   filter criteria and 20 values per condition.
    #   @return [Types::Criteria]
    #
    # @!attribute [rw] schedule
    #   The updated schedule configuration.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The updated status of the automation rule.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp when the automation rule was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp when the automation rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/UpdateAutomationRuleResponse AWS API Documentation
    #
    class UpdateAutomationRuleResponse < Struct.new(
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
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The desired enrollment status.
    #
    #   * Active - Enables the Automation feature for your account.
    #
    #   * Inactive - Disables the Automation feature for your account and
    #     stops all of your automation rules. If you opt in again later, all
    #     rules will be inactive, and you must enable the rules you want to
    #     run. You must wait at least 24 hours after opting out to opt in
    #     again.
    #
    #   <note markdown="1"> The `Pending` and `Failed` options cannot be used to update the
    #   enrollment status of an account. They are returned in the response
    #   of a request to update the enrollment status of an account.
    #
    #    If you are a member account, your account must be disassociated from
    #   your organization’s management account before you can disable
    #   Automation. Contact your administrator to make this change.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/UpdateEnrollmentConfigurationRequest AWS API Documentation
    #
    class UpdateEnrollmentConfigurationRequest < Struct.new(
      :status,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The updated enrollment status.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the updated enrollment status.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp when the enrollment configuration was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/UpdateEnrollmentConfigurationResponse AWS API Documentation
    #
    class UpdateEnrollmentConfigurationResponse < Struct.new(
      :status,
      :status_reason,
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

