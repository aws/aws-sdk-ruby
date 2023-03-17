# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BillingConductor
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of a linked account.
    #
    # @!attribute [rw] account_id
    #   The associating array of account IDs.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_arn
    #   The Billing Group Arn that the linked account is associated to.
    #   @return [String]
    #
    # @!attribute [rw] account_name
    #   The Amazon Web Services account name.
    #   @return [String]
    #
    # @!attribute [rw] account_email
    #   The Amazon Web Services account email.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/AccountAssociationsListElement AWS API Documentation
    #
    class AccountAssociationsListElement < Struct.new(
      :account_id,
      :billing_group_arn,
      :account_name,
      :account_email)
      SENSITIVE = [:account_name, :account_email]
      include Aws::Structure
    end

    # The set of accounts that will be under the billing group. The set of
    # accounts resemble the linked accounts in a consolidated family.
    #
    # @!attribute [rw] linked_account_ids
    #   The account IDs that make up the billing group. Account IDs must be
    #   a part of the consolidated billing family, and not associated with
    #   another billing group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/AccountGrouping AWS API Documentation
    #
    class AccountGrouping < Struct.new(
      :linked_account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the billing group that associates
    #   the array of account IDs.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The associating array of account IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/AssociateAccountsInput AWS API Documentation
    #
    class AssociateAccountsInput < Struct.new(
      :arn,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the billing group that associates
    #   the array of account IDs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/AssociateAccountsOutput AWS API Documentation
    #
    class AssociateAccountsOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The `PricingPlanArn` that the `PricingRuleArns` are associated with.
    #   @return [String]
    #
    # @!attribute [rw] pricing_rule_arns
    #   The `PricingRuleArns` that are associated with the Pricing Plan.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/AssociatePricingRulesInput AWS API Documentation
    #
    class AssociatePricingRulesInput < Struct.new(
      :arn,
      :pricing_rule_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The `PricingPlanArn` that the `PricingRuleArns` are associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/AssociatePricingRulesOutput AWS API Documentation
    #
    class AssociatePricingRulesOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of a resource association error.
    #
    # @!attribute [rw] message
    #   The reason why the resource association failed.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A static error code that's used to classify the type of failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/AssociateResourceError AWS API Documentation
    #
    class AssociateResourceError < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource association result for a percentage custom line item.
    #
    # @!attribute [rw] arn
    #   The resource ARN that was associated to the custom line item.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An `AssociateResourceError` that will populate if the resource
    #   association fails.
    #   @return [Types::AssociateResourceError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/AssociateResourceResponseElement AWS API Documentation
    #
    class AssociateResourceResponseElement < Struct.new(
      :arn,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_arn
    #   A percentage custom line item ARN to associate the resources to.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   A list containing the ARNs of the resources to be associated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] billing_period_range
    #   The billing period range in which the custom line item request will
    #   be applied.
    #   @return [Types::CustomLineItemBillingPeriodRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/BatchAssociateResourcesToCustomLineItemInput AWS API Documentation
    #
    class BatchAssociateResourcesToCustomLineItemInput < Struct.new(
      :target_arn,
      :resource_arns,
      :billing_period_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successfully_associated_resources
    #   A list of `AssociateResourceResponseElement` for each resource
    #   that's been associated to a percentage custom line item
    #   successfully.
    #   @return [Array<Types::AssociateResourceResponseElement>]
    #
    # @!attribute [rw] failed_associated_resources
    #   A list of `AssociateResourceResponseElement` for each resource that
    #   failed association to a percentage custom line item.
    #   @return [Array<Types::AssociateResourceResponseElement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/BatchAssociateResourcesToCustomLineItemOutput AWS API Documentation
    #
    class BatchAssociateResourcesToCustomLineItemOutput < Struct.new(
      :successfully_associated_resources,
      :failed_associated_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_arn
    #   A percentage custom line item ARN to disassociate the resources
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   A list containing the ARNs of resources to be disassociated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] billing_period_range
    #   The billing period range in which the custom line item request will
    #   be applied.
    #   @return [Types::CustomLineItemBillingPeriodRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/BatchDisassociateResourcesFromCustomLineItemInput AWS API Documentation
    #
    class BatchDisassociateResourcesFromCustomLineItemInput < Struct.new(
      :target_arn,
      :resource_arns,
      :billing_period_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successfully_disassociated_resources
    #   A list of `DisassociateResourceResponseElement` for each resource
    #   that's been disassociated from a percentage custom line item
    #   successfully.
    #   @return [Array<Types::DisassociateResourceResponseElement>]
    #
    # @!attribute [rw] failed_disassociated_resources
    #   A list of `DisassociateResourceResponseElement` for each resource
    #   that failed disassociation from a percentage custom line item.
    #   @return [Array<Types::DisassociateResourceResponseElement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/BatchDisassociateResourcesFromCustomLineItemOutput AWS API Documentation
    #
    class BatchDisassociateResourcesFromCustomLineItemOutput < Struct.new(
      :successfully_disassociated_resources,
      :failed_disassociated_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary report of actual Amazon Web Services charges and calculated
    # Amazon Web Services charges, based on the associated pricing plan of a
    # billing group.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of a billing group.
    #   @return [String]
    #
    # @!attribute [rw] aws_cost
    #   The actual Amazon Web Services charges for the billing group.
    #   @return [String]
    #
    # @!attribute [rw] proforma_cost
    #   The hypothetical Amazon Web Services charges based on the associated
    #   pricing plan of a billing group.
    #   @return [String]
    #
    # @!attribute [rw] margin
    #   The billing group margin.
    #   @return [String]
    #
    # @!attribute [rw] margin_percentage
    #   The percentage of billing group margin.
    #   @return [String]
    #
    # @!attribute [rw] currency
    #   The displayed currency.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/BillingGroupCostReportElement AWS API Documentation
    #
    class BillingGroupCostReportElement < Struct.new(
      :arn,
      :aws_cost,
      :proforma_cost,
      :margin,
      :margin_percentage,
      :currency)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of a billing group.
    #
    # @!attribute [rw] name
    #   The name of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Number (ARN) that can be used to uniquely
    #   identify the billing group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] primary_account_id
    #   The account ID that serves as the main account in a billing group.
    #   @return [String]
    #
    # @!attribute [rw] computation_preference
    #   The preferences and settings that will be used to compute the Amazon
    #   Web Services charges for a billing group.
    #   @return [Types::ComputationPreference]
    #
    # @!attribute [rw] size
    #   The number of accounts in the particular billing group.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time when the billing group was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The most recent time when the billing group was modified.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The billing group status. Only one of the valid values can be used.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason why the billing group is in its current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/BillingGroupListElement AWS API Documentation
    #
    class BillingGroupListElement < Struct.new(
      :name,
      :arn,
      :description,
      :primary_account_id,
      :computation_preference,
      :size,
      :creation_time,
      :last_modified_time,
      :status,
      :status_reason)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # The preferences and settings that will be used to compute the Amazon
    # Web Services charges for a billing group.
    #
    # @!attribute [rw] pricing_plan_arn
    #   The Amazon Resource Name (ARN) of the pricing plan that's used to
    #   compute the Amazon Web Services charges for a billing group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ComputationPreference AWS API Documentation
    #
    class ComputationPreference < Struct.new(
      :pricing_plan_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can cause an inconsistent state by updating or deleting a
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource in use.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource in use.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason for the inconsistent state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The token that is needed to support idempotency. Idempotency isn't
    #   currently supported, but will be implemented in a future update.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The billing group name. The names must be unique.
    #   @return [String]
    #
    # @!attribute [rw] account_grouping
    #   The set of accounts that will be under the billing group. The set of
    #   accounts resemble the linked accounts in a consolidated family.
    #   @return [Types::AccountGrouping]
    #
    # @!attribute [rw] computation_preference
    #   The preferences and settings that will be used to compute the Amazon
    #   Web Services charges for a billing group.
    #   @return [Types::ComputationPreference]
    #
    # @!attribute [rw] primary_account_id
    #   The account ID that serves as the main account in a billing group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to a
    #   billing group. This feature isn't available during the beta.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreateBillingGroupInput AWS API Documentation
    #
    class CreateBillingGroupInput < Struct.new(
      :client_token,
      :name,
      :account_grouping,
      :computation_preference,
      :primary_account_id,
      :description,
      :tags)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created billing group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreateBillingGroupOutput AWS API Documentation
    #
    class CreateBillingGroupOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The token that is needed to support idempotency. Idempotency isn't
    #   currently supported, but will be implemented in a future update.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the custom line item.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the custom line item. This is shown on the Bills
    #   page in association with the charge value.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_arn
    #   The Amazon Resource Name (ARN) that references the billing group
    #   where the custom line item applies to.
    #   @return [String]
    #
    # @!attribute [rw] billing_period_range
    #   A time range for which the custom line item is effective.
    #   @return [Types::CustomLineItemBillingPeriodRange]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to a
    #   custom line item.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] charge_details
    #   A `CustomLineItemChargeDetails` that describes the charge details
    #   for a custom line item.
    #   @return [Types::CustomLineItemChargeDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreateCustomLineItemInput AWS API Documentation
    #
    class CreateCustomLineItemInput < Struct.new(
      :client_token,
      :name,
      :description,
      :billing_group_arn,
      :billing_period_range,
      :tags,
      :charge_details)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created custom line item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreateCustomLineItemOutput AWS API Documentation
    #
    class CreateCustomLineItemOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The possible Amazon Web Services Free Tier configurations.
    #
    # @!attribute [rw] activated
    #   Activate or deactivate Amazon Web Services Free Tier.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreateFreeTierConfig AWS API Documentation
    #
    class CreateFreeTierConfig < Struct.new(
      :activated)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The token that is needed to support idempotency. Idempotency isn't
    #   currently supported, but will be implemented in a future update.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the pricing plan. The names must be unique to each
    #   pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] pricing_rule_arns
    #   A list of Amazon Resource Names (ARNs) that define the pricing plan
    #   parameters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to a
    #   pricing plan.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreatePricingPlanInput AWS API Documentation
    #
    class CreatePricingPlanInput < Struct.new(
      :client_token,
      :name,
      :description,
      :pricing_rule_arns,
      :tags)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created pricing plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreatePricingPlanOutput AWS API Documentation
    #
    class CreatePricingPlanOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The token that's needed to support idempotency. Idempotency isn't
    #   currently supported, but will be implemented in a future update.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The pricing rule name. The names must be unique to each pricing
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The pricing rule description.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scope of pricing rule that indicates if it's globally
    #   applicable, or it's service-specific.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of pricing rule.
    #   @return [String]
    #
    # @!attribute [rw] modifier_percentage
    #   A percentage modifier that's applied on the public pricing rates.
    #   @return [Float]
    #
    # @!attribute [rw] service
    #   If the `Scope` attribute is set to `SERVICE` or `SKU`, the attribute
    #   indicates which service the `PricingRule` is applicable for.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to a
    #   pricing rule.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] billing_entity
    #   The seller of services provided by Amazon Web Services, their
    #   affiliates, or third-party providers selling services via Amazon Web
    #   Services Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] tiering
    #   The set of tiering configurations for the pricing rule.
    #   @return [Types::CreateTieringInput]
    #
    # @!attribute [rw] usage_type
    #   Usage type is the unit that each service uses to measure the usage
    #   of a specific type of resource.
    #
    #   If the `Scope` attribute is set to `SKU`, this attribute indicates
    #   which usage type the `PricingRule` is modifying. For example,
    #   `USW2-BoxUsage:m2.2xlarge` describes an` M2 High Memory Double Extra
    #   Large` instance in the US West (Oregon) Region.     </p>
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   Operation is the specific Amazon Web Services action covered by this
    #   line item. This describes the specific usage of the line item.
    #
    #   If the `Scope` attribute is set to `SKU`, this attribute indicates
    #   which operation the `PricingRule` is modifying. For example, a value
    #   of `RunInstances:0202` indicates the operation of running an Amazon
    #   EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreatePricingRuleInput AWS API Documentation
    #
    class CreatePricingRuleInput < Struct.new(
      :client_token,
      :name,
      :description,
      :scope,
      :type,
      :modifier_percentage,
      :service,
      :tags,
      :billing_entity,
      :tiering,
      :usage_type,
      :operation)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created pricing rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreatePricingRuleOutput AWS API Documentation
    #
    class CreatePricingRuleOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of tiering configurations for the pricing rule.
    #
    # @!attribute [rw] free_tier
    #   The possible Amazon Web Services Free Tier configurations.
    #   @return [Types::CreateFreeTierConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreateTieringInput AWS API Documentation
    #
    class CreateTieringInput < Struct.new(
      :free_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The billing period range in which the custom line item request will be
    # applied.
    #
    # @!attribute [rw] inclusive_start_billing_period
    #   The inclusive start billing period that defines a billing period
    #   range where a custom line is applied.
    #   @return [String]
    #
    # @!attribute [rw] exclusive_end_billing_period
    #   The inclusive end billing period that defines a billing period range
    #   where a custom line is applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CustomLineItemBillingPeriodRange AWS API Documentation
    #
    class CustomLineItemBillingPeriodRange < Struct.new(
      :inclusive_start_billing_period,
      :exclusive_end_billing_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # The charge details of a custom line item. It should contain only one
    # of `Flat` or `Percentage`.
    #
    # @!attribute [rw] flat
    #   A `CustomLineItemFlatChargeDetails` that describes the charge
    #   details of a flat custom line item.
    #   @return [Types::CustomLineItemFlatChargeDetails]
    #
    # @!attribute [rw] percentage
    #   A `CustomLineItemPercentageChargeDetails` that describes the charge
    #   details of a percentage custom line item.
    #   @return [Types::CustomLineItemPercentageChargeDetails]
    #
    # @!attribute [rw] type
    #   The type of the custom line item that indicates whether the charge
    #   is a fee or credit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CustomLineItemChargeDetails AWS API Documentation
    #
    class CustomLineItemChargeDetails < Struct.new(
      :flat,
      :percentage,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of the charge details that are associated with a flat
    # custom line item.
    #
    # @!attribute [rw] charge_value
    #   The custom line item's fixed charge value in USD.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CustomLineItemFlatChargeDetails AWS API Documentation
    #
    class CustomLineItemFlatChargeDetails < Struct.new(
      :charge_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of a custom line item.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Names (ARNs) for custom line items.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The custom line item's name.
    #   @return [String]
    #
    # @!attribute [rw] charge_details
    #   A `ListCustomLineItemChargeDetails` that describes the charge
    #   details of a custom line item.
    #   @return [Types::ListCustomLineItemChargeDetails]
    #
    # @!attribute [rw] currency_code
    #   The custom line item's charge value currency. Only one of the valid
    #   values can be used.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The custom line item's description. This is shown on the Bills page
    #   in association with the charge value.
    #   @return [String]
    #
    # @!attribute [rw] product_code
    #   The product code that's associated with the custom line item.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_arn
    #   The Amazon Resource Name (ARN) that references the billing group
    #   where the custom line item applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The most recent time when the custom line item was modified.
    #   @return [Integer]
    #
    # @!attribute [rw] association_size
    #   The number of resources that are associated to the custom line item.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CustomLineItemListElement AWS API Documentation
    #
    class CustomLineItemListElement < Struct.new(
      :arn,
      :name,
      :charge_details,
      :currency_code,
      :description,
      :product_code,
      :billing_group_arn,
      :creation_time,
      :last_modified_time,
      :association_size)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # A representation of the charge details that are associated with a
    # percentage custom line item.
    #
    # @!attribute [rw] percentage_value
    #   The custom line item's percentage value. This will be multiplied
    #   against the combined value of its associated resources to determine
    #   its charge value.
    #   @return [Float]
    #
    # @!attribute [rw] associated_values
    #   A list of resource ARNs to associate to the percentage custom line
    #   item.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CustomLineItemPercentageChargeDetails AWS API Documentation
    #
    class CustomLineItemPercentageChargeDetails < Struct.new(
      :percentage_value,
      :associated_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of a custom line item version.
    #
    # @!attribute [rw] name
    #   The name of the custom line item.
    #   @return [String]
    #
    # @!attribute [rw] charge_details
    #   A representation of the charge details of a custom line item.
    #   @return [Types::ListCustomLineItemChargeDetails]
    #
    # @!attribute [rw] currency_code
    #   The charge value currency of the custom line item.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the custom line item.
    #   @return [String]
    #
    # @!attribute [rw] product_code
    #   The product code that’s associated with the custom line item.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_arn
    #   The Amazon Resource Name (ARN) of the billing group that the custom
    #   line item applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the custom line item version was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The most recent time that the custom line item version was modified.
    #   @return [Integer]
    #
    # @!attribute [rw] association_size
    #   The number of resources that are associated with the custom line
    #   item.
    #   @return [Integer]
    #
    # @!attribute [rw] start_billing_period
    #   The start billing period of the custom line item version.
    #   @return [String]
    #
    # @!attribute [rw] end_billing_period
    #   The end billing period of the custom line item version.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   A list of custom line item Amazon Resource Names (ARNs) to retrieve
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The inclusive start time.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CustomLineItemVersionListElement AWS API Documentation
    #
    class CustomLineItemVersionListElement < Struct.new(
      :name,
      :charge_details,
      :currency_code,
      :description,
      :product_code,
      :billing_group_arn,
      :creation_time,
      :last_modified_time,
      :association_size,
      :start_billing_period,
      :end_billing_period,
      :arn,
      :start_time)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the billing group that you're
    #   deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeleteBillingGroupInput AWS API Documentation
    #
    class DeleteBillingGroupInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted billing group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeleteBillingGroupOutput AWS API Documentation
    #
    class DeleteBillingGroupOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the custom line item to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] billing_period_range
    #   The billing period range in which the custom line item request will
    #   be applied.
    #   @return [Types::CustomLineItemBillingPeriodRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeleteCustomLineItemInput AWS API Documentation
    #
    class DeleteCustomLineItemInput < Struct.new(
      :arn,
      :billing_period_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Then ARN of the deleted custom line item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeleteCustomLineItemOutput AWS API Documentation
    #
    class DeleteCustomLineItemOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the pricing plan that you're
    #   deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeletePricingPlanInput AWS API Documentation
    #
    class DeletePricingPlanInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted pricing plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeletePricingPlanOutput AWS API Documentation
    #
    class DeletePricingPlanOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the pricing rule that you are
    #   deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeletePricingRuleInput AWS API Documentation
    #
    class DeletePricingRuleInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted pricing rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeletePricingRuleOutput AWS API Documentation
    #
    class DeletePricingRuleOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the billing group that the array
    #   of account IDs will disassociate from.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The array of account IDs to disassociate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DisassociateAccountsInput AWS API Documentation
    #
    class DisassociateAccountsInput < Struct.new(
      :arn,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the billing group that the array
    #   of account IDs is disassociated from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DisassociateAccountsOutput AWS API Documentation
    #
    class DisassociateAccountsOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The pricing plan Amazon Resource Name (ARN) to disassociate pricing
    #   rules from.
    #   @return [String]
    #
    # @!attribute [rw] pricing_rule_arns
    #   A list containing the Amazon Resource Name (ARN) of the pricing
    #   rules that will be disassociated.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DisassociatePricingRulesInput AWS API Documentation
    #
    class DisassociatePricingRulesInput < Struct.new(
      :arn,
      :pricing_rule_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the pricing plan that the pricing
    #   rules successfully disassociated from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DisassociatePricingRulesOutput AWS API Documentation
    #
    class DisassociatePricingRulesOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource disassociation result for a percentage custom line item.
    #
    # @!attribute [rw] arn
    #   The resource ARN that was disassociated from the custom line item.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An `AssociateResourceError` that's shown if the resource
    #   disassociation fails.
    #   @return [Types::AssociateResourceError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DisassociateResourceResponseElement AWS API Documentation
    #
    class DisassociateResourceResponseElement < Struct.new(
      :arn,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The possible Amazon Web Services Free Tier configurations.
    #
    # @!attribute [rw] activated
    #   Activate or deactivate Amazon Web Services Free Tier application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/FreeTierConfig AWS API Documentation
    #
    class FreeTierConfig < Struct.new(
      :activated)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred while processing a request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Number of seconds you can retry after the call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter on the account ID of the linked account, or any of the
    # following:
    #
    # `MONITORED`: linked accounts that are associated to billing groups.
    #
    # `UNMONITORED`: linked accounts that are not associated to billing
    # groups.
    #
    # `Billing Group Arn`: linked accounts that are associated to the
    # provided Billing Group Arn.
    #
    # @!attribute [rw] association
    #   `MONITORED`: linked accounts that are associated to billing groups.
    #
    #   `UNMONITORED`: linked accounts that are not associated to billing
    #   groups.
    #
    #   `Billing Group Arn`: linked accounts that are associated to the
    #   provided Billing Group Arn.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID to filter on.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The list of Amazon Web Services IDs to retrieve their associated
    #   billing group for a given time range.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListAccountAssociationsFilter AWS API Documentation
    #
    class ListAccountAssociationsFilter < Struct.new(
      :association,
      :account_id,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The preferred billing period to get account associations.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filter on the account ID of the linked account, or any of the
    #   following:
    #
    #   `MONITORED`: linked accounts that are associated to billing groups.
    #
    #   `UNMONITORED`: linked accounts that aren't associated to billing
    #   groups.
    #
    #   `Billing Group Arn`: linked accounts that are associated to the
    #   provided billing group Arn.
    #   @return [Types::ListAccountAssociationsFilter]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to retrieve
    #   accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListAccountAssociationsInput AWS API Documentation
    #
    class ListAccountAssociationsInput < Struct.new(
      :billing_period,
      :filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] linked_accounts
    #   The list of linked accounts in the payer account.
    #   @return [Array<Types::AccountAssociationsListElement>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to get
    #   accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListAccountAssociationsOutput AWS API Documentation
    #
    class ListAccountAssociationsOutput < Struct.new(
      :linked_accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter used to retrieve specific `BillingGroupCostReportElements`.
    #
    # @!attribute [rw] billing_group_arns
    #   The list of Amazon Resource Names (ARNs) used to filter billing
    #   groups to retrieve reports.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListBillingGroupCostReportsFilter AWS API Documentation
    #
    class ListBillingGroupCostReportsFilter < Struct.new(
      :billing_group_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The preferred billing period for your report.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of reports to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to get
    #   reports.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A `ListBillingGroupCostReportsFilter` to specify billing groups to
    #   retrieve reports from.
    #   @return [Types::ListBillingGroupCostReportsFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListBillingGroupCostReportsInput AWS API Documentation
    #
    class ListBillingGroupCostReportsInput < Struct.new(
      :billing_period,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_group_cost_reports
    #   A list of `BillingGroupCostReportElement` retrieved.
    #   @return [Array<Types::BillingGroupCostReportElement>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to get
    #   reports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListBillingGroupCostReportsOutput AWS API Documentation
    #
    class ListBillingGroupCostReportsOutput < Struct.new(
      :billing_group_cost_reports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter that specifies the billing groups and pricing plans to
    # retrieve billing group information.
    #
    # @!attribute [rw] arns
    #   The list of billing group Amazon Resource Names (ARNs) to retrieve
    #   information.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pricing_plan
    #   The pricing plan Amazon Resource Names (ARNs) to retrieve
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] statuses
    #   A list of billing groups to retrieve their current status for a
    #   specific time range
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListBillingGroupsFilter AWS API Documentation
    #
    class ListBillingGroupsFilter < Struct.new(
      :arns,
      :pricing_plan,
      :statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The preferred billing period to get billing groups.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of billing groups to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to get billing
    #   groups.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A `ListBillingGroupsFilter` that specifies the billing group and
    #   pricing plan to retrieve billing group information.
    #   @return [Types::ListBillingGroupsFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListBillingGroupsInput AWS API Documentation
    #
    class ListBillingGroupsInput < Struct.new(
      :billing_period,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_groups
    #   A list of `BillingGroupListElement` retrieved.
    #   @return [Array<Types::BillingGroupListElement>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to get billing
    #   groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListBillingGroupsOutput AWS API Documentation
    #
    class ListBillingGroupsOutput < Struct.new(
      :billing_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of the charge details of a custom line item.
    #
    # @!attribute [rw] flat
    #   A `ListCustomLineItemFlatChargeDetails` that describes the charge
    #   details of a flat custom line item.
    #   @return [Types::ListCustomLineItemFlatChargeDetails]
    #
    # @!attribute [rw] percentage
    #   A `ListCustomLineItemPercentageChargeDetails` that describes the
    #   charge details of a percentage custom line item.
    #   @return [Types::ListCustomLineItemPercentageChargeDetails]
    #
    # @!attribute [rw] type
    #   The type of the custom line item that indicates whether the charge
    #   is a `fee` or `credit`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListCustomLineItemChargeDetails AWS API Documentation
    #
    class ListCustomLineItemChargeDetails < Struct.new(
      :flat,
      :percentage,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of the charge details that are associated with a flat
    # custom line item.
    #
    # @!attribute [rw] charge_value
    #   The custom line item's fixed charge value in USD.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListCustomLineItemFlatChargeDetails AWS API Documentation
    #
    class ListCustomLineItemFlatChargeDetails < Struct.new(
      :charge_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of the charge details that are associated with a
    # percentage custom line item.
    #
    # @!attribute [rw] percentage_value
    #   The custom line item's percentage value. This will be multiplied
    #   against the combined value of its associated resources to determine
    #   its charge value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListCustomLineItemPercentageChargeDetails AWS API Documentation
    #
    class ListCustomLineItemPercentageChargeDetails < Struct.new(
      :percentage_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A billing period filter that specifies the custom line item versions
    # to retrieve.
    #
    # @!attribute [rw] start_billing_period
    #   The inclusive start billing period that defines a billing period
    #   range where a custom line item version is applied.
    #   @return [String]
    #
    # @!attribute [rw] end_billing_period
    #   The exclusive end billing period that defines a billing period range
    #   where a custom line item version is applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListCustomLineItemVersionsBillingPeriodRangeFilter AWS API Documentation
    #
    class ListCustomLineItemVersionsBillingPeriodRangeFilter < Struct.new(
      :start_billing_period,
      :end_billing_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that specifies the billing period range where the custom line
    # item versions reside.
    #
    # @!attribute [rw] billing_period_range
    #   The billing period range in which the custom line item version is
    #   applied.
    #   @return [Types::ListCustomLineItemVersionsBillingPeriodRangeFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListCustomLineItemVersionsFilter AWS API Documentation
    #
    class ListCustomLineItemVersionsFilter < Struct.new(
      :billing_period_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the custom line item.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of custom line item versions to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to retrieve
    #   custom line item versions.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A `ListCustomLineItemVersionsFilter` that specifies the billing
    #   period range in which the custom line item versions are applied.
    #   @return [Types::ListCustomLineItemVersionsFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListCustomLineItemVersionsInput AWS API Documentation
    #
    class ListCustomLineItemVersionsInput < Struct.new(
      :arn,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_line_item_versions
    #   A list of `CustomLineItemVersionListElements` that are received.
    #   @return [Array<Types::CustomLineItemVersionListElement>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to retrieve
    #   custom line item versions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListCustomLineItemVersionsOutput AWS API Documentation
    #
    class ListCustomLineItemVersionsOutput < Struct.new(
      :custom_line_item_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that specifies the custom line items and billing groups to
    # retrieve FFLI information.
    #
    # @!attribute [rw] names
    #   A list of custom line items to retrieve information.
    #   @return [Array<String>]
    #
    # @!attribute [rw] billing_groups
    #   The billing group Amazon Resource Names (ARNs) to retrieve
    #   information.
    #   @return [Array<String>]
    #
    # @!attribute [rw] arns
    #   A list of custom line item ARNs to retrieve information.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListCustomLineItemsFilter AWS API Documentation
    #
    class ListCustomLineItemsFilter < Struct.new(
      :names,
      :billing_groups,
      :arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The preferred billing period to get custom line items (FFLIs).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of billing groups to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to get custom
    #   line items (FFLIs).
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A `ListCustomLineItemsFilter` that specifies the custom line item
    #   names and/or billing group Amazon Resource Names (ARNs) to retrieve
    #   FFLI information.
    #   @return [Types::ListCustomLineItemsFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListCustomLineItemsInput AWS API Documentation
    #
    class ListCustomLineItemsInput < Struct.new(
      :billing_period,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_line_items
    #   A list of `FreeFormLineItemListElements` received.
    #   @return [Array<Types::CustomLineItemListElement>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to get custom
    #   line items (FFLIs).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListCustomLineItemsOutput AWS API Documentation
    #
    class ListCustomLineItemsOutput < Struct.new(
      :custom_line_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The pricing plan billing period for which associations will be
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] pricing_rule_arn
    #   The pricing rule Amazon Resource Name (ARN) for which associations
    #   will be listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The optional maximum number of pricing rule associations to
    #   retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The optional pagination token returned by a previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingPlansAssociatedWithPricingRuleInput AWS API Documentation
    #
    class ListPricingPlansAssociatedWithPricingRuleInput < Struct.new(
      :billing_period,
      :pricing_rule_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The pricing plan billing period for which associations will be
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] pricing_rule_arn
    #   The pricing rule Amazon Resource Name (ARN) for which associations
    #   will be listed.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_arns
    #   The list containing pricing plans that are associated with the
    #   requested pricing rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to be used on subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingPlansAssociatedWithPricingRuleOutput AWS API Documentation
    #
    class ListPricingPlansAssociatedWithPricingRuleOutput < Struct.new(
      :billing_period,
      :pricing_rule_arn,
      :pricing_plan_arns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter that specifies the Amazon Resource Names (ARNs) of pricing
    # plans, to retrieve pricing plan information.
    #
    # @!attribute [rw] arns
    #   A list of pricing plan Amazon Resource Names (ARNs) to retrieve
    #   information.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingPlansFilter AWS API Documentation
    #
    class ListPricingPlansFilter < Struct.new(
      :arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The preferred billing period to get pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A `ListPricingPlansFilter` that specifies the Amazon Resource Name
    #   (ARNs) of pricing plans to retrieve pricing plans information.
    #   @return [Types::ListPricingPlansFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of pricing plans to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent call to get pricing
    #   plans.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingPlansInput AWS API Documentation
    #
    class ListPricingPlansInput < Struct.new(
      :billing_period,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The billing period for which the described pricing plans are
    #   applicable.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plans
    #   A list of `PricingPlanListElement` retrieved.
    #   @return [Array<Types::PricingPlanListElement>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to get pricing
    #   plans.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingPlansOutput AWS API Documentation
    #
    class ListPricingPlansOutput < Struct.new(
      :billing_period,
      :pricing_plans,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The billing period for which the pricing rule associations are to be
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_arn
    #   The Amazon Resource Name (ARN) of the pricing plan for which
    #   associations are to be listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The optional maximum number of pricing rule associations to
    #   retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The optional pagination token returned by a previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingRulesAssociatedToPricingPlanInput AWS API Documentation
    #
    class ListPricingRulesAssociatedToPricingPlanInput < Struct.new(
      :billing_period,
      :pricing_plan_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The billing period for which the pricing rule associations are
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_arn
    #   The Amazon Resource Name (ARN) of the pricing plan for which
    #   associations are listed.
    #   @return [String]
    #
    # @!attribute [rw] pricing_rule_arns
    #   A list containing pricing rules that are associated with the
    #   requested pricing plan.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to be used on subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingRulesAssociatedToPricingPlanOutput AWS API Documentation
    #
    class ListPricingRulesAssociatedToPricingPlanOutput < Struct.new(
      :billing_period,
      :pricing_plan_arn,
      :pricing_rule_arns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter that specifies criteria that the pricing rules returned by
    # the `ListPricingRules` API will adhere to.
    #
    # @!attribute [rw] arns
    #   A list containing the pricing rule Amazon Resource Names (ARNs) to
    #   include in the API response.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingRulesFilter AWS API Documentation
    #
    class ListPricingRulesFilter < Struct.new(
      :arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The preferred billing period to get the pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A `DescribePricingRuleFilter` that specifies the Amazon Resource
    #   Name (ARNs) of pricing rules to retrieve pricing rules information.
    #   @return [Types::ListPricingRulesFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of pricing rules to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent call to get pricing
    #   rules.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingRulesInput AWS API Documentation
    #
    class ListPricingRulesInput < Struct.new(
      :billing_period,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The billing period for which the described pricing rules are
    #   applicable.
    #   @return [String]
    #
    # @!attribute [rw] pricing_rules
    #   A list containing the described pricing rules.
    #   @return [Array<Types::PricingRuleListElement>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used on subsequent calls to get pricing
    #   rules.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingRulesOutput AWS API Documentation
    #
    class ListPricingRulesOutput < Struct.new(
      :billing_period,
      :pricing_rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that specifies the type of resource associations that should
    # be retrieved for a custom line item.
    #
    # @!attribute [rw] relationship
    #   The type of relationship between the custom line item and the
    #   associated resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListResourcesAssociatedToCustomLineItemFilter AWS API Documentation
    #
    class ListResourcesAssociatedToCustomLineItemFilter < Struct.new(
      :relationship)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_period
    #   The billing period for which the resource associations will be
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the custom line item for which the resource associations
    #   will be listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) The maximum number of resource associations to be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) The pagination token that's returned by a previous
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   (Optional) A `ListResourcesAssociatedToCustomLineItemFilter` that
    #   can specify the types of resources that should be retrieved.
    #   @return [Types::ListResourcesAssociatedToCustomLineItemFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListResourcesAssociatedToCustomLineItemInput AWS API Documentation
    #
    class ListResourcesAssociatedToCustomLineItemInput < Struct.new(
      :billing_period,
      :arn,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The custom line item ARN for which the resource associations are
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] associated_resources
    #   A list of `ListResourcesAssociatedToCustomLineItemResponseElement`
    #   for each resource association retrieved.
    #   @return [Array<Types::ListResourcesAssociatedToCustomLineItemResponseElement>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to be used in subsequent requests to retrieve
    #   additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListResourcesAssociatedToCustomLineItemOutput AWS API Documentation
    #
    class ListResourcesAssociatedToCustomLineItemOutput < Struct.new(
      :arn,
      :associated_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of a resource association for a custom line item.
    #
    # @!attribute [rw] arn
    #   The ARN of the associated resource.
    #   @return [String]
    #
    # @!attribute [rw] relationship
    #   The type of relationship between the custom line item and the
    #   associated resource.
    #   @return [String]
    #
    # @!attribute [rw] end_billing_period
    #   The end billing period of the associated resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListResourcesAssociatedToCustomLineItemResponseElement AWS API Documentation
    #
    class ListResourcesAssociatedToCustomLineItemResponseElement < Struct.new(
      :arn,
      :relationship,
      :end_billing_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of a pricing plan.
    #
    # @!attribute [rw] name
    #   The name of a pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The pricing plan Amazon Resource Names (ARN). This can be used to
    #   uniquely identify a pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The pricing plan description.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The pricing rules count that's currently associated with this
    #   pricing plan list element.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time when the pricing plan was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The most recent time when the pricing plan was modified.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/PricingPlanListElement AWS API Documentation
    #
    class PricingPlanListElement < Struct.new(
      :name,
      :arn,
      :description,
      :size,
      :creation_time,
      :last_modified_time)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # A representation of a pricing rule.
    #
    # @!attribute [rw] name
    #   The name of a pricing rule.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) used to uniquely identify a pricing
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The pricing rule description.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scope of pricing rule that indicates if it is globally
    #   applicable, or if it is service-specific.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of pricing rule.
    #   @return [String]
    #
    # @!attribute [rw] modifier_percentage
    #   A percentage modifier applied on the public pricing rates.
    #   @return [Float]
    #
    # @!attribute [rw] service
    #   If the `Scope` attribute is `SERVICE`, this attribute indicates
    #   which service the `PricingRule` is applicable for.
    #   @return [String]
    #
    # @!attribute [rw] associated_pricing_plan_count
    #   The pricing plans count that this pricing rule is associated with.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time when the pricing rule was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The most recent time when the pricing rule was modified.
    #   @return [Integer]
    #
    # @!attribute [rw] billing_entity
    #   The seller of services provided by Amazon Web Services, their
    #   affiliates, or third-party providers selling services via Amazon Web
    #   Services Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] tiering
    #   The set of tiering configurations for the pricing rule.
    #   @return [Types::Tiering]
    #
    # @!attribute [rw] usage_type
    #   Usage type is the unit that each service uses to measure the usage
    #   of a specific type of resource.
    #
    #   If the `Scope` attribute is set to `SKU`, this attribute indicates
    #   which usage type the `PricingRule` is modifying. For example,
    #   `USW2-BoxUsage:m2.2xlarge` describes an` M2 High Memory Double Extra
    #   Large` instance in the US West (Oregon) Region.     </p>
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   Operation is the specific Amazon Web Services action covered by this
    #   line item. This describes the specific usage of the line item.
    #
    #   If the `Scope` attribute is set to `SKU`, this attribute indicates
    #   which operation the `PricingRule` is modifying. For example, a value
    #   of `RunInstances:0202` indicates the operation of running an Amazon
    #   EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/PricingRuleListElement AWS API Documentation
    #
    class PricingRuleListElement < Struct.new(
      :name,
      :arn,
      :description,
      :scope,
      :type,
      :modifier_percentage,
      :service,
      :associated_pricing_plan_count,
      :creation_time,
      :last_modified_time,
      :billing_entity,
      :tiering,
      :usage_type,
      :operation)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # The request references a resource that doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Resource identifier that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service limit to exceed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] limit_code
    #   The unique code identifier of the service limit that is being
    #   exceeded.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The unique code for the service of the limit that is being exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ServiceLimitExceededException AWS API Documentation
    #
    class ServiceLimitExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :limit_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource as a list of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Number of seconds you can safely retry after the call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of tiering configurations for the pricing rule.
    #
    # @!attribute [rw] free_tier
    #   The possible Amazon Web Services Free Tier configurations.
    #   @return [Types::FreeTierConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/Tiering AWS API Documentation
    #
    class Tiering < Struct.new(
      :free_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to delete
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tags to delete from the resource as a list of key-value pairs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the billing group being updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the billing group. The names must be unique to each
    #   billing group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the billing group. Only one of the valid values can be
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] computation_preference
    #   The preferences and settings that will be used to compute the Amazon
    #   Web Services charges for a billing group.
    #   @return [Types::ComputationPreference]
    #
    # @!attribute [rw] description
    #   A description of the billing group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdateBillingGroupInput AWS API Documentation
    #
    class UpdateBillingGroupInput < Struct.new(
      :arn,
      :name,
      :status,
      :computation_preference,
      :description)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the billing group that was
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the billing group. The names must be unique to each
    #   billing group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the billing group.
    #   @return [String]
    #
    # @!attribute [rw] primary_account_id
    #   The account ID that serves as the main account in a billing group.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_arn
    #   The Amazon Resource Name (ARN) of the pricing plan to compute Amazon
    #   Web Services charges for the billing group.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The number of accounts in the particular billing group.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The most recent time when the billing group was modified.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the billing group. Only one of the valid values can be
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason why the billing group is in its current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdateBillingGroupOutput AWS API Documentation
    #
    class UpdateBillingGroupOutput < Struct.new(
      :arn,
      :name,
      :description,
      :primary_account_id,
      :pricing_plan_arn,
      :size,
      :last_modified_time,
      :status,
      :status_reason)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # A representation of the new charge details of a custom line item. This
    # should contain only one of `Flat` or `Percentage`.
    #
    # @!attribute [rw] flat
    #   An `UpdateCustomLineItemFlatChargeDetails` that describes the new
    #   charge details of a flat custom line item.
    #   @return [Types::UpdateCustomLineItemFlatChargeDetails]
    #
    # @!attribute [rw] percentage
    #   An `UpdateCustomLineItemPercentageChargeDetails` that describes the
    #   new charge details of a percentage custom line item.
    #   @return [Types::UpdateCustomLineItemPercentageChargeDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdateCustomLineItemChargeDetails AWS API Documentation
    #
    class UpdateCustomLineItemChargeDetails < Struct.new(
      :flat,
      :percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of the new charge details that are associated with a
    # flat custom line item.
    #
    # @!attribute [rw] charge_value
    #   The custom line item's new fixed charge value in USD.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdateCustomLineItemFlatChargeDetails AWS API Documentation
    #
    class UpdateCustomLineItemFlatChargeDetails < Struct.new(
      :charge_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the custom line item to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the custom line item.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new line item description of the custom line item.
    #   @return [String]
    #
    # @!attribute [rw] charge_details
    #   A `ListCustomLineItemChargeDetails` containing the new charge
    #   details for the custom line item.
    #   @return [Types::UpdateCustomLineItemChargeDetails]
    #
    # @!attribute [rw] billing_period_range
    #   The billing period range in which the custom line item request will
    #   be applied.
    #   @return [Types::CustomLineItemBillingPeriodRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdateCustomLineItemInput AWS API Documentation
    #
    class UpdateCustomLineItemInput < Struct.new(
      :arn,
      :name,
      :description,
      :charge_details,
      :billing_period_range)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the successfully updated custom line item.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_arn
    #   The ARN of the billing group that the custom line item is applied
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the successfully updated custom line item.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the successfully updated custom line item.
    #   @return [String]
    #
    # @!attribute [rw] charge_details
    #   A `ListCustomLineItemChargeDetails` containing the charge details of
    #   the successfully updated custom line item.
    #   @return [Types::ListCustomLineItemChargeDetails]
    #
    # @!attribute [rw] last_modified_time
    #   The most recent time when the custom line item was modified.
    #   @return [Integer]
    #
    # @!attribute [rw] association_size
    #   The number of resources that are associated to the custom line item.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdateCustomLineItemOutput AWS API Documentation
    #
    class UpdateCustomLineItemOutput < Struct.new(
      :arn,
      :billing_group_arn,
      :name,
      :description,
      :charge_details,
      :last_modified_time,
      :association_size)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # A representation of the new charge details that are associated with a
    # percentage custom line item.
    #
    # @!attribute [rw] percentage_value
    #   The custom line item's new percentage value. This will be
    #   multiplied against the combined value of its associated resources to
    #   determine its charge value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdateCustomLineItemPercentageChargeDetails AWS API Documentation
    #
    class UpdateCustomLineItemPercentageChargeDetails < Struct.new(
      :percentage_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The possible Amazon Web Services Free Tier configurations.
    #
    # @!attribute [rw] activated
    #   Activate or deactivate application of Amazon Web Services Free Tier.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdateFreeTierConfig AWS API Documentation
    #
    class UpdateFreeTierConfig < Struct.new(
      :activated)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the pricing plan that you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the pricing plan. The name must be unique to each
    #   pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the pricing plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdatePricingPlanInput AWS API Documentation
    #
    class UpdatePricingPlanInput < Struct.new(
      :arn,
      :name,
      :description)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the pricing plan. The name must be unique to each
    #   pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the pricing rule.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The pricing rules count that's currently associated with this
    #   pricing plan list.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The most recent time when the pricing plan was modified.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdatePricingPlanOutput AWS API Documentation
    #
    class UpdatePricingPlanOutput < Struct.new(
      :arn,
      :name,
      :description,
      :size,
      :last_modified_time)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the pricing rule to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name of the pricing rule. The name must be unique to each
    #   pricing rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the pricing rule.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The new pricing rule type.
    #   @return [String]
    #
    # @!attribute [rw] modifier_percentage
    #   The new modifier to show pricing plan rates as a percentage.
    #   @return [Float]
    #
    # @!attribute [rw] tiering
    #   The set of tiering configurations for the pricing rule.
    #   @return [Types::UpdateTieringInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdatePricingRuleInput AWS API Documentation
    #
    class UpdatePricingRuleInput < Struct.new(
      :arn,
      :name,
      :description,
      :type,
      :modifier_percentage,
      :tiering)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the successfully updated pricing
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name of the pricing rule. The name must be unique to each
    #   pricing rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the pricing rule.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scope of pricing rule that indicates if it's globally
    #   applicable, or it's service-specific.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The new pricing rule type.
    #   @return [String]
    #
    # @!attribute [rw] modifier_percentage
    #   The new modifier to show pricing plan rates as a percentage.
    #   @return [Float]
    #
    # @!attribute [rw] service
    #   If the `Scope` attribute is set to `SERVICE`, the attribute
    #   indicates which service the `PricingRule` is applicable for.
    #   @return [String]
    #
    # @!attribute [rw] associated_pricing_plan_count
    #   The pricing plans count that this pricing rule is associated with.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The most recent time the pricing rule was modified.
    #   @return [Integer]
    #
    # @!attribute [rw] billing_entity
    #   The seller of services provided by Amazon Web Services, their
    #   affiliates, or third-party providers selling services via Amazon Web
    #   Services Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] tiering
    #   The set of tiering configurations for the pricing rule.
    #   @return [Types::UpdateTieringInput]
    #
    # @!attribute [rw] usage_type
    #   Usage type is the unit that each service uses to measure the usage
    #   of a specific type of resource.
    #
    #   If the `Scope` attribute is set to `SKU`, this attribute indicates
    #   which usage type the `PricingRule` is modifying. For example,
    #   `USW2-BoxUsage:m2.2xlarge` describes an `M2 High Memory Double Extra
    #   Large` instance in the US West (Oregon) Region.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   Operation refers to the specific Amazon Web Services covered by this
    #   line item. This describes the specific usage of the line item.
    #
    #   If the `Scope` attribute is set to `SKU`, this attribute indicates
    #   which operation the `PricingRule` is modifying. For example, a value
    #   of `RunInstances:0202` indicates the operation of running an Amazon
    #   EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdatePricingRuleOutput AWS API Documentation
    #
    class UpdatePricingRuleOutput < Struct.new(
      :arn,
      :name,
      :description,
      :scope,
      :type,
      :modifier_percentage,
      :service,
      :associated_pricing_plan_count,
      :last_modified_time,
      :billing_entity,
      :tiering,
      :usage_type,
      :operation)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # The set of tiering configurations for the pricing rule.
    #
    # @!attribute [rw] free_tier
    #   The possible Amazon Web Services Free Tier configurations.
    #   @return [Types::UpdateFreeTierConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdateTieringInput AWS API Documentation
    #
    class UpdateTieringInput < Struct.new(
      :free_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input doesn't match with the constraints specified by Amazon Web
    # Services services.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the request's validation failed.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The fields that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field's information of a request that resulted in an exception.
    #
    # @!attribute [rw] name
    #   The field name.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message describing why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
