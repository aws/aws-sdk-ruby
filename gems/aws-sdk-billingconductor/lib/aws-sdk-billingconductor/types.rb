# frozen_string_literal: true

# This is generated code!

module Aws::Billingconductor
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A representation of a linked account.</p>
    # @!attribute account_id
    #   <p>The associating array of account IDs.</p>
    #   @return [String]
    # @!attribute billing_group_arn
    #   <p>The Billing Group Arn that the linked account is associated to.</p>
    #   @return [String]
    # @!attribute account_name
    #   <p>The Amazon Web Services account name.</p>
    #   @return [String]
    # @!attribute account_email
    #   <p>The Amazon Web Services account email.</p>
    #   @return [String]
    class AccountAssociationsListElement < Struct.new(
      nil,
      :account_id,
      :billing_group_arn,
      :account_name,
      :account_email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of accounts that will be under the billing group. The set of accounts resemble the linked accounts in a consolidated billing family.</p>
    # @!attribute linked_account_ids
    #   <p>The account IDs that make up the billing group. Account IDs must be a part of the consolidated billing family, and not associated with another billing group.</p>
    #   @return [Array<String>]
    # @!attribute auto_associate
    #   <p>Specifies if this billing group will automatically associate newly added Amazon Web Services accounts that join your consolidated billing family.</p>
    #   @return [Boolean]
    # @!attribute responsibility_transfer_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the transfer relationship owned by the Bill Transfer account (caller account). When specified, the PrimaryAccountId is no longer required. </p>
    #   @return [String]
    class AccountGrouping < Struct.new(
      nil,
      :linked_account_ids,
      :auto_associate,
      :responsibility_transfer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:linked_account_ids] = [] unless options.key?(:linked_account_ids)
        super
      end
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the billing group that associates the array of account IDs. </p>
    #   @return [String]
    # @!attribute account_ids
    #   <p> The associating array of account IDs. </p>
    #   @return [Array<String>]
    class AssociateAccountsOperationInput < Struct.new(
      nil,
      :arn,
      :account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the billing group that associates the array of account IDs. </p>
    #   @return [String]
    class AssociateAccountsOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The <code>PricingPlanArn</code> that the <code>PricingRuleArns</code> are associated with. </p>
    #   @return [String]
    # @!attribute pricing_rule_arns
    #   <p> The <code>PricingRuleArns</code> that are associated with the Pricing Plan. </p>
    #   @return [Array<String>]
    class AssociatePricingRulesOperationInput < Struct.new(
      nil,
      :arn,
      :pricing_rule_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The <code>PricingPlanArn</code> that the <code>PricingRuleArns</code> are associated with. </p>
    #   @return [String]
    class AssociatePricingRulesOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A representation of a resource association error.</p>
    # @!attribute message
    #   <p>The reason why the resource association failed.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A static error code that's used to classify the type of failure.</p>
    #   @return [String]
    class AssociateResourceError < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource association result for a percentage custom line item.</p>
    # @!attribute arn
    #   <p>The resource ARN that was associated to the custom line item.</p>
    #   @return [String]
    # @!attribute error
    #   <p>An <code>AssociateResourceError</code> that will populate if the resource association fails.</p>
    #   @return [Types::AssociateResourceError]
    class AssociateResourceResponseElement < Struct.new(
      nil,
      :arn,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The key-value pair that represents the attribute by which the <code>BillingGroupCostReportResults</code> are grouped. For example, if you want a service-level breakdown for Amazon Simple Storage Service (Amazon S3) of the billing group, the attribute will be a key-value pair of <code>"PRODUCT_NAME"</code> and <code>"S3"</code>.</p>
    # @!attribute key
    #   <p>The key in a key-value pair that describes the margin summary.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value in a key-value pair that describes the margin summary.</p>
    #   @return [String]
    class Attribute < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The auto billing group creation preference for a billing transfer. When the preference is enabled, Billing Conductor automatically creates an indirect billing transfer billing group, with the specified pricing plan, for each account that transfers its bill to the bill source account of the billing transfer. </p>
    # @!attribute enabled
    #   <p> Specifies whether Billing Conductor automatically creates billing groups for the billing transfer. The preference is disabled by default. </p>
    #   @return [Boolean]
    # @!attribute pricing_plan_arn
    #   <p> The Amazon Resource Name (ARN) of the pricing plan to apply to the automatically created billing groups. This value is required when <code>Enabled</code> is <code>true</code>, and must be omitted when <code>Enabled</code> is <code>false</code>. </p>
    #   @return [String]
    class AutoTransferBillingGroupCreationPreference < Struct.new(
      nil,
      :enabled,
      :pricing_plan_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_arn
    #   <p> A percentage custom line item ARN to associate the resources to. </p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p> A list containing the ARNs of the resources to be associated. </p>
    #   @return [Array<String>]
    # @!attribute billing_period_range
    #   <p>The billing period range in which the custom line item request will be applied.</p>
    #   @return [Types::CustomLineItemBillingPeriodRange]
    class BatchAssociateResourcesToCustomLineItemOperationInput < Struct.new(
      nil,
      :target_arn,
      :resource_arns,
      :billing_period_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute successfully_associated_resources
    #   <p> A list of <code>AssociateResourceResponseElement</code> for each resource that's been associated to a percentage custom line item successfully. </p>
    #   @return [Array<Types::AssociateResourceResponseElement>]
    # @!attribute failed_associated_resources
    #   <p> A list of <code>AssociateResourceResponseElement</code> for each resource that failed association to a percentage custom line item. </p>
    #   @return [Array<Types::AssociateResourceResponseElement>]
    class BatchAssociateResourcesToCustomLineItemOperationOutput < Struct.new(
      nil,
      :successfully_associated_resources,
      :failed_associated_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_arn
    #   <p> A percentage custom line item ARN to disassociate the resources from. </p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p> A list containing the ARNs of resources to be disassociated. </p>
    #   @return [Array<String>]
    # @!attribute billing_period_range
    #   <p>The billing period range in which the custom line item request will be applied.</p>
    #   @return [Types::CustomLineItemBillingPeriodRange]
    class BatchDisassociateResourcesFromCustomLineItemOperationInput < Struct.new(
      nil,
      :target_arn,
      :resource_arns,
      :billing_period_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute successfully_disassociated_resources
    #   <p> A list of <code>DisassociateResourceResponseElement</code> for each resource that's been disassociated from a percentage custom line item successfully. </p>
    #   @return [Array<Types::DisassociateResourceResponseElement>]
    # @!attribute failed_disassociated_resources
    #   <p> A list of <code>DisassociateResourceResponseElement</code> for each resource that failed disassociation from a percentage custom line item. </p>
    #   @return [Array<Types::DisassociateResourceResponseElement>]
    class BatchDisassociateResourcesFromCustomLineItemOperationOutput < Struct.new(
      nil,
      :successfully_disassociated_resources,
      :failed_disassociated_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary report of actual Amazon Web Services charges and calculated Amazon Web Services charges, based on the associated pricing plan of a billing group.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of a billing group.</p>
    #   @return [String]
    # @!attribute aws_cost
    #   <p>The actual Amazon Web Services charges for the billing group.</p>
    #   @return [String]
    # @!attribute proforma_cost
    #   <p>The hypothetical Amazon Web Services charges based on the associated pricing plan of a billing group.</p>
    #   @return [String]
    # @!attribute margin
    #   <p>The billing group margin.</p>
    #   @return [String]
    # @!attribute margin_percentage
    #   <p>The percentage of billing group margin.</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The displayed currency.</p>
    #   @return [String]
    class BillingGroupCostReportElement < Struct.new(
      nil,
      :arn,
      :aws_cost,
      :proforma_cost,
      :margin,
      :margin_percentage,
      :currency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A paginated call to retrieve a list of summary reports of actual Amazon Web Services charges and the calculated Amazon Web Services charges, broken down by attributes.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) that uniquely identifies the billing group.</p>
    #   @return [String]
    # @!attribute aws_cost
    #   <p>The actual Amazon Web Services charges for the billing group.</p>
    #   @return [String]
    # @!attribute proforma_cost
    #   <p>The hypothetical Amazon Web Services charges based on the associated pricing plan of a billing group.</p>
    #   @return [String]
    # @!attribute margin
    #   <p>The billing group margin.</p>
    #   @return [String]
    # @!attribute margin_percentage
    #   <p>The percentage of the billing group margin.</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The displayed currency.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The list of key-value pairs that represent the attributes by which the <code>BillingGroupCostReportResults</code> are grouped. For example, if you want the Amazon S3 service-level breakdown of a billing group for November 2023, the attributes list will contain a key-value pair of <code>"PRODUCT_NAME"</code> and <code>"S3"</code> and a key-value pair of <code>"BILLING_PERIOD"</code> and <code>"Nov 2023"</code>.</p>
    #   @return [Array<Types::Attribute>]
    class BillingGroupCostReportResultElement < Struct.new(
      nil,
      :arn,
      :aws_cost,
      :proforma_cost,
      :margin,
      :margin_percentage,
      :currency,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A representation of a billing group.</p>
    # @!attribute name
    #   <p>The name of the billing group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) that can be used to uniquely identify the billing group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the billing group.</p>
    #   @return [String]
    # @!attribute primary_account_id
    #   <p>The account ID that serves as the main account in a billing group.</p>
    #   @return [String]
    # @!attribute computation_preference
    #   <p>The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.</p>
    #   @return [Types::ComputationPreference]
    # @!attribute size
    #   <p>The number of accounts in the particular billing group.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The time when the billing group was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p>The most recent time when the billing group was modified.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The billing group status. Only one of the valid values can be used.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason why the billing group is in its current status.</p>
    #   @return [String]
    # @!attribute account_grouping
    #   <p>Specifies if the billing group has automatic account association (<code>AutoAssociate</code>) enabled.</p>
    #   @return [Types::ListBillingGroupAccountGrouping]
    # @!attribute billing_group_type
    #   <p> The type of billing group. </p>
    #   @return [String]
    class BillingGroupListElement < Struct.new(
      nil,
      :name,
      :arn,
      :description,
      :primary_account_id,
      :computation_preference,
      :size,
      :creation_time,
      :last_modified_time,
      :status,
      :status_reason,
      :account_grouping,
      :billing_group_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:size] = 0 unless options.key?(:size)
        options[:creation_time] = 0 unless options.key?(:creation_time)
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        super
      end
    end

    # <p>A time range for which the margin summary is effective. The time range can be up to 12 months.</p>
    # @!attribute inclusive_start_billing_period
    #   <p>The inclusive start billing period that defines a billing period range for the margin summary.</p>
    #   @return [String]
    # @!attribute exclusive_end_billing_period
    #   <p>The exclusive end billing period that defines a billing period range for the margin summary. For example, if you choose a billing period that starts in October 2023 and ends in December 2023, the margin summary will only include data from October 2023 and November 2023.</p>
    #   @return [String]
    class BillingPeriodRange < Struct.new(
      nil,
      :inclusive_start_billing_period,
      :exclusive_end_billing_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.</p>
    # @!attribute pricing_plan_arn
    #   <p> The Amazon Resource Name (ARN) of the pricing plan that's used to compute the Amazon Web Services charges for a billing group. </p>
    #   @return [String]
    class ComputationPreference < Struct.new(
      nil,
      :pricing_plan_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can cause an inconsistent state by updating or deleting a resource. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource in use. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource in use. </p>
    #   @return [String]
    # @!attribute reason
    #   <p>Reason for the inconsistent state. </p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you specify to ensure idempotency of the request. Idempotency ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries complete successfully without performing any further actions.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The billing group name. The names must be unique. </p>
    #   @return [String]
    # @!attribute account_grouping
    #   <p> The set of accounts that will be under the billing group. The set of accounts resemble the linked accounts in a consolidated billing family. </p>
    #   @return [Types::AccountGrouping]
    # @!attribute computation_preference
    #   <p> The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group. </p>
    #   @return [Types::ComputationPreference]
    # @!attribute primary_account_id
    #   <p> The account ID that serves as the main account in a billing group. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the billing group. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> A map that contains tag keys and tag values that are attached to a billing group. This feature isn't available during the beta. </p>
    #   @return [Hash<String, String>]
    class CreateBillingGroupOperationInput < Struct.new(
      nil,
      :client_token,
      :name,
      :account_grouping,
      :computation_preference,
      :primary_account_id,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created billing group. </p>
    #   @return [String]
    class CreateBillingGroupOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you specify to ensure idempotency of the request. Idempotency ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries complete successfully without performing any further actions.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the custom line item. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the custom line item. This is shown on the Bills page in association with the charge value. </p>
    #   @return [String]
    # @!attribute billing_group_arn
    #   <p> The Amazon Resource Name (ARN) that references the billing group where the custom line item applies to. </p>
    #   @return [String]
    # @!attribute billing_period_range
    #   <p> A time range for which the custom line item is effective. </p>
    #   @return [Types::CustomLineItemBillingPeriodRange]
    # @!attribute tags
    #   <p> A map that contains tag keys and tag values that are attached to a custom line item. </p>
    #   @return [Hash<String, String>]
    # @!attribute charge_details
    #   <p> A <code>CustomLineItemChargeDetails</code> that describes the charge details for a custom line item. </p>
    #   @return [Types::CustomLineItemChargeDetails]
    # @!attribute account_id
    #   <p>The Amazon Web Services account in which this custom line item will be applied to.</p>
    #   @return [String]
    # @!attribute computation_rule
    #   <p> Specifies how the custom line item charges are computed. </p>
    #   @return [String]
    # @!attribute presentation_details
    #   <p> Details controlling how the custom line item charges are presented in the bill. Contains specifications for which service the charges will be shown under. </p>
    #   @return [Types::PresentationObject]
    class CreateCustomLineItemOperationInput < Struct.new(
      nil,
      :client_token,
      :name,
      :description,
      :billing_group_arn,
      :billing_period_range,
      :tags,
      :charge_details,
      :account_id,
      :computation_rule,
      :presentation_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the created custom line item. </p>
    #   @return [String]
    class CreateCustomLineItemOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The possible Amazon Web Services Free Tier configurations. </p>
    # @!attribute activated
    #   <p> Activate or deactivate Amazon Web Services Free Tier. </p>
    #   @return [Boolean]
    class CreateFreeTierConfig < Struct.new(
      nil,
      :activated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you specify to ensure idempotency of the request. Idempotency ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries complete successfully without performing any further actions.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the pricing plan. The names must be unique to each pricing plan. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the pricing plan. </p>
    #   @return [String]
    # @!attribute pricing_rule_arns
    #   <p> A list of Amazon Resource Names (ARNs) that define the pricing plan parameters. </p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p> A map that contains tag keys and tag values that are attached to a pricing plan. </p>
    #   @return [Hash<String, String>]
    class CreatePricingPlanOperationInput < Struct.new(
      nil,
      :client_token,
      :name,
      :description,
      :pricing_rule_arns,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created pricing plan.</p>
    #   @return [String]
    class CreatePricingPlanOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you specify to ensure idempotency of the request. Idempotency ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries complete successfully without performing any further actions.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The pricing rule name. The names must be unique to each pricing rule. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The pricing rule description. </p>
    #   @return [String]
    # @!attribute scope
    #   <p> The scope of pricing rule that indicates if it's globally applicable, or it's service-specific. </p>
    #   @return [String]
    # @!attribute type
    #   <p> The type of pricing rule. </p>
    #   @return [String]
    # @!attribute modifier_percentage
    #   <p>A percentage modifier that's applied on the public pricing rates. Your entry will be rounded to the nearest 2 decimal places.</p>
    #   @return [Float]
    # @!attribute service
    #   <p> If the <code>Scope</code> attribute is set to <code>SERVICE</code> or <code>SKU</code>, the attribute indicates which service the <code>PricingRule</code> is applicable for. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> A map that contains tag keys and tag values that are attached to a pricing rule. </p>
    #   @return [Hash<String, String>]
    # @!attribute billing_entity
    #   <p> The seller of services provided by Amazon Web Services, their affiliates, or third-party providers selling services via Amazon Web Services Marketplace. </p>
    #   @return [String]
    # @!attribute tiering
    #   <p> The set of tiering configurations for the pricing rule. </p>
    #   @return [Types::CreateTieringInput]
    # @!attribute usage_type
    #   <p> Usage type is the unit that each service uses to measure the usage of a specific type of resource.</p> <p>If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which usage type the <code>PricingRule</code> is modifying. For example, <code>USW2-BoxUsage:m2.2xlarge</code> describes an<code> M2 High Memory Double Extra Large</code> instance in the US West (Oregon) Region. </p>
    #   @return [String]
    # @!attribute operation
    #   <p> Operation is the specific Amazon Web Services action covered by this line item. This describes the specific usage of the line item.</p> <p> If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which operation the <code>PricingRule</code> is modifying. For example, a value of <code>RunInstances:0202</code> indicates the operation of running an Amazon EC2 instance.</p>
    #   @return [String]
    class CreatePricingRuleOperationInput < Struct.new(
      nil,
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
      :operation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the created pricing rule. </p>
    #   @return [String]
    class CreatePricingRuleOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The set of tiering configurations for the pricing rule. </p>
    # @!attribute free_tier
    #   <p> The possible Amazon Web Services Free Tier configurations. </p>
    #   @return [Types::CreateFreeTierConfig]
    # @!attribute custom_tiers
    #   <p> The set of custom tiers for the pricing rule. </p>
    #   @return [Array<Types::CustomTier>]
    class CreateTieringInput < Struct.new(
      nil,
      :free_tier,
      :custom_tiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The billing period range in which the custom line item request will be applied.</p>
    # @!attribute inclusive_start_billing_period
    #   <p>The inclusive start billing period that defines a billing period range where a custom line is applied.</p>
    #   @return [String]
    # @!attribute exclusive_end_billing_period
    #   <p>The inclusive end billing period that defines a billing period range where a custom line is applied.</p>
    #   @return [String]
    class CustomLineItemBillingPeriodRange < Struct.new(
      nil,
      :inclusive_start_billing_period,
      :exclusive_end_billing_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The charge details of a custom line item. It should contain only one of <code>Flat</code> or <code>Percentage</code>.</p>
    # @!attribute flat
    #   <p>A <code>CustomLineItemFlatChargeDetails</code> that describes the charge details of a flat custom line item.</p>
    #   @return [Types::CustomLineItemFlatChargeDetails]
    # @!attribute percentage
    #   <p>A <code>CustomLineItemPercentageChargeDetails</code> that describes the charge details of a percentage custom line item.</p>
    #   @return [Types::CustomLineItemPercentageChargeDetails]
    # @!attribute type
    #   <p>The type of the custom line item that indicates whether the charge is a fee or credit.</p>
    #   @return [String]
    # @!attribute line_item_filters
    #   <p>A representation of the line item filter.</p>
    #   @return [Array<Types::LineItemFilter>]
    class CustomLineItemChargeDetails < Struct.new(
      nil,
      :flat,
      :percentage,
      :type,
      :line_item_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A representation of the charge details that are associated with a flat custom line item.</p>
    # @!attribute charge_value
    #   <p>The custom line item's fixed charge value in USD.</p>
    #   @return [Float]
    class CustomLineItemFlatChargeDetails < Struct.new(
      nil,
      :charge_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A representation of a custom line item.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Names (ARNs) for custom line items.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The custom line item's name.</p>
    #   @return [String]
    # @!attribute charge_details
    #   <p>A <code>ListCustomLineItemChargeDetails</code> that describes the charge details of a custom line item.</p>
    #   @return [Types::ListCustomLineItemChargeDetails]
    # @!attribute currency_code
    #   <p>The custom line item's charge value currency. Only one of the valid values can be used.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The custom line item's description. This is shown on the Bills page in association with the charge value.</p>
    #   @return [String]
    # @!attribute product_code
    #   <p>The product code that's associated with the custom line item.</p>
    #   @return [String]
    # @!attribute billing_group_arn
    #   <p>The Amazon Resource Name (ARN) that references the billing group where the custom line item applies to.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time created.</p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p>The most recent time when the custom line item was modified.</p>
    #   @return [Integer]
    # @!attribute association_size
    #   <p>The number of resources that are associated to the custom line item.</p>
    #   @return [Integer]
    # @!attribute account_id
    #   <p>The Amazon Web Services account in which this custom line item will be applied to.</p>
    #   @return [String]
    # @!attribute computation_rule
    #   <p> The computation rule that determines how the custom line item charges are computed and reflected in the bill. </p>
    #   @return [String]
    # @!attribute presentation_details
    #   <p> Configuration details specifying how the custom line item charges are presented, including which service the charges are shown under. </p>
    #   @return [Types::PresentationObject]
    class CustomLineItemListElement < Struct.new(
      nil,
      :arn,
      :name,
      :charge_details,
      :currency_code,
      :description,
      :product_code,
      :billing_group_arn,
      :creation_time,
      :last_modified_time,
      :association_size,
      :account_id,
      :computation_rule,
      :presentation_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:creation_time] = 0 unless options.key?(:creation_time)
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        options[:association_size] = 0 unless options.key?(:association_size)
        super
      end
    end

    # <p>A representation of the charge details that are associated with a percentage custom line item.</p>
    # @!attribute percentage_value
    #   <p>The custom line item's percentage value. This will be multiplied against the combined value of its associated resources to determine its charge value. </p>
    #   @return [Float]
    # @!attribute associated_values
    #   <p>A list of resource ARNs to associate to the percentage custom line item.</p>
    #   @return [Array<String>]
    class CustomLineItemPercentageChargeDetails < Struct.new(
      nil,
      :percentage_value,
      :associated_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A representation of a custom line item version.</p>
    # @!attribute name
    #   <p>The name of the custom line item.</p>
    #   @return [String]
    # @!attribute charge_details
    #   <p> A representation of the charge details of a custom line item. </p>
    #   @return [Types::ListCustomLineItemChargeDetails]
    # @!attribute currency_code
    #   <p>The charge value currency of the custom line item.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the custom line item.</p>
    #   @return [String]
    # @!attribute product_code
    #   <p>The product code that’s associated with the custom line item.</p>
    #   @return [String]
    # @!attribute billing_group_arn
    #   <p>The Amazon Resource Name (ARN) of the billing group that the custom line item applies to.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the custom line item version was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p>The most recent time that the custom line item version was modified.</p>
    #   @return [Integer]
    # @!attribute association_size
    #   <p>The number of resources that are associated with the custom line item.</p>
    #   @return [Integer]
    # @!attribute start_billing_period
    #   <p>The start billing period of the custom line item version.</p>
    #   @return [String]
    # @!attribute end_billing_period
    #   <p>The end billing period of the custom line item version.</p>
    #   @return [String]
    # @!attribute arn
    #   <p> A list of custom line item Amazon Resource Names (ARNs) to retrieve information. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p> The inclusive start time. </p>
    #   @return [Integer]
    # @!attribute account_id
    #   <p>The Amazon Web Services account in which this custom line item will be applied to.</p>
    #   @return [String]
    # @!attribute computation_rule
    #   <p> The computation rule for a specific version of a custom line item, determining how charges are computed and reflected in the bill. </p>
    #   @return [String]
    # @!attribute presentation_details
    #   <p> Presentation configuration for a specific version of a custom line item, specifying how charges are displayed in the bill. </p>
    #   @return [Types::PresentationObject]
    class CustomLineItemVersionListElement < Struct.new(
      nil,
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
      :start_time,
      :account_id,
      :computation_rule,
      :presentation_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:creation_time] = 0 unless options.key?(:creation_time)
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        options[:association_size] = 0 unless options.key?(:association_size)
        options[:start_time] = 0 unless options.key?(:start_time)
        super
      end
    end

    # <p> A custom tier for the pricing rule. Each custom tier applies a rate to the usage that falls within the tier's range. </p>
    # @!attribute begin_range_inclusive
    #   <p> The inclusive start of the usage range that this tier applies to. </p>
    #   @return [Float]
    # @!attribute end_range_exclusive
    #   <p> The exclusive end of the usage range that this tier applies to. If you don't specify a value, this tier applies to all usage that is greater than or equal to <code>BeginRangeInclusive</code>. </p>
    #   @return [Float]
    # @!attribute rate_value
    #   <p> The rate that's applied to the usage that falls within this tier. </p>
    #   @return [Float]
    class CustomTier < Struct.new(
      nil,
      :begin_range_inclusive,
      :end_range_exclusive,
      :rate_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the billing group that you're deleting.</p>
    #   @return [String]
    class DeleteBillingGroupOperationInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted billing group.</p>
    #   @return [String]
    class DeleteBillingGroupOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The ARN of the custom line item to be deleted. </p>
    #   @return [String]
    # @!attribute billing_period_range
    #   <p>The billing period range in which the custom line item request will be applied.</p>
    #   @return [Types::CustomLineItemBillingPeriodRange]
    class DeleteCustomLineItemOperationInput < Struct.new(
      nil,
      :arn,
      :billing_period_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the deleted custom line item. </p>
    #   @return [String]
    class DeleteCustomLineItemOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the pricing plan that you're deleting. </p>
    #   @return [String]
    class DeletePricingPlanOperationInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the deleted pricing plan. </p>
    #   @return [String]
    class DeletePricingPlanOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the pricing rule that you are deleting. </p>
    #   @return [String]
    class DeletePricingRuleOperationInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the deleted pricing rule. </p>
    #   @return [String]
    class DeletePricingRuleOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the billing group that the array of account IDs will disassociate from. </p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>The array of account IDs to disassociate. </p>
    #   @return [Array<String>]
    class DisassociateAccountsOperationInput < Struct.new(
      nil,
      :arn,
      :account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the billing group that the array of account IDs is disassociated from. </p>
    #   @return [String]
    class DisassociateAccountsOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The pricing plan Amazon Resource Name (ARN) to disassociate pricing rules from. </p>
    #   @return [String]
    # @!attribute pricing_rule_arns
    #   <p> A list containing the Amazon Resource Name (ARN) of the pricing rules that will be disassociated. </p>
    #   @return [Array<String>]
    class DisassociatePricingRulesOperationInput < Struct.new(
      nil,
      :arn,
      :pricing_rule_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the pricing plan that the pricing rules successfully disassociated from. </p>
    #   @return [String]
    class DisassociatePricingRulesOperationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource disassociation result for a percentage custom line item.</p>
    # @!attribute arn
    #   <p>The resource ARN that was disassociated from the custom line item. </p>
    #   @return [String]
    # @!attribute error
    #   <p> An <code>AssociateResourceError</code> that's shown if the resource disassociation fails. </p>
    #   @return [Types::AssociateResourceError]
    class DisassociateResourceResponseElement < Struct.new(
      nil,
      :arn,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The possible Amazon Web Services Free Tier configurations. </p>
    # @!attribute activated
    #   <p> Activate or deactivate Amazon Web Services Free Tier application. </p>
    #   @return [Boolean]
    class FreeTierConfig < Struct.new(
      nil,
      :activated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) that uniquely identifies the billing group.</p>
    #   @return [String]
    # @!attribute billing_period_range
    #   <p>A time range for which the margin summary is effective. You can specify up to 12 months.</p>
    #   @return [Types::BillingPeriodRange]
    # @!attribute group_by
    #   <p>A list of strings that specify the attributes that are used to break down costs in the margin summary reports for the billing group. For example, you can view your costs by the Amazon Web Services service name or the billing period.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of margin summary reports to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token used on subsequent calls to get reports.</p>
    #   @return [String]
    class GetBillingGroupCostReportInput < Struct.new(
      nil,
      :arn,
      :billing_period_range,
      :group_by,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_group_cost_report_results
    #   <p>The list of margin summary reports.</p>
    #   @return [Array<Types::BillingGroupCostReportResultElement>]
    # @!attribute next_token
    #   <p>The pagination token used on subsequent calls to get reports.</p>
    #   @return [String]
    class GetBillingGroupCostReportOutput < Struct.new(
      nil,
      :billing_group_cost_report_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute responsibility_transfer_arn
    #   <p>The Amazon Resource Name (ARN) of the billing transfer whose preference you want to retrieve.</p>
    #   @return [String]
    class GetBillingTransferPreferenceInput < Struct.new(
      nil,
      :responsibility_transfer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute responsibility_transfer_arn
    #   <p>The Amazon Resource Name (ARN) of the billing transfer that the preference applies to.</p>
    #   @return [String]
    # @!attribute auto_billing_transfer_billing_group_creation
    #   <p>The auto billing group creation preference for the billing transfer.</p>
    #   @return [Types::AutoTransferBillingGroupCreationPreference]
    # @!attribute last_modified_time
    #   <p>The most recent time when the preference was modified. This value is empty if the preference has never been set for the billing transfer.</p>
    #   @return [Integer]
    class GetBillingTransferPreferenceOutput < Struct.new(
      nil,
      :responsibility_transfer_arn,
      :auto_billing_transfer_billing_group_creation,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:last_modified_time] = nil unless options.key?(:last_modified_time)
        super
      end
    end

    # <p>An unexpected error occurred while processing a request. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Number of seconds you can retry after the call. </p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>A representation of the line item filter for your custom line item. You can use line item filters to include or exclude specific resource values from the billing group's total cost. For example, if you create a custom line item and you want to filter out a value, such as Savings Plans discounts, you can update <code>LineItemFilter</code> to exclude it.</p>
    # @!attribute attribute
    #   <p>The attribute of the line item filter. This specifies what attribute that you can filter on.</p>
    #   @return [String]
    # @!attribute match_option
    #   <p>The match criteria of the line item filter. This parameter specifies whether not to include the resource value from the billing group total cost.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the line item filter. This specifies the values to filter on. Currently, you can only exclude Savings Plans discounts.</p>
    #   @return [Array<String>]
    # @!attribute attribute_values
    #   <p>The values of the line item filter. This specifies the values to filter on.</p>
    #   @return [Array<String>]
    class LineItemFilter < Struct.new(
      nil,
      :attribute,
      :match_option,
      :values,
      :attribute_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:values] = [] unless options.key?(:values)
        super
      end
    end

    # <p>The filter on the account ID of the linked account, or any of the following:</p> <p> <code>MONITORED</code>: linked accounts that are associated to billing groups.</p> <p> <code>UNMONITORED</code>: linked accounts that are not associated to billing groups.</p> <p> <code>Billing Group Arn</code>: linked accounts that are associated to the provided Billing Group Arn.</p>
    # @!attribute association
    #   <p> <code>MONITORED</code>: linked accounts that are associated to billing groups.</p> <p> <code>UNMONITORED</code>: linked accounts that are not associated to billing groups.</p> <p> <code>Billing Group Arn</code>: linked accounts that are associated to the provided Billing Group Arn.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID to filter on.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p> The list of Amazon Web Services IDs to retrieve their associated billing group for a given time range. </p>
    #   @return [Array<String>]
    class ListAccountAssociationsFilter < Struct.new(
      nil,
      :association,
      :account_id,
      :account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p> The preferred billing period to get account associations. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filter on the account ID of the linked account, or any of the following:</p> <p> <code>MONITORED</code>: linked accounts that are associated to billing groups.</p> <p> <code>UNMONITORED</code>: linked accounts that aren't associated to billing groups.</p> <p> <code>Billing Group Arn</code>: linked accounts that are associated to the provided billing group Arn. </p>
    #   @return [Types::ListAccountAssociationsFilter]
    # @!attribute next_token
    #   <p> The pagination token that's used on subsequent calls to retrieve accounts. </p>
    #   @return [String]
    class ListAccountAssociationsOperationInput < Struct.new(
      nil,
      :billing_period,
      :filters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute linked_accounts
    #   <p> The list of linked accounts in the payer account. </p>
    #   @return [Array<Types::AccountAssociationsListElement>]
    # @!attribute next_token
    #   <p> The pagination token that's used on subsequent calls to get accounts. </p>
    #   @return [String]
    class ListAccountAssociationsOperationOutput < Struct.new(
      nil,
      :linked_accounts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies if the billing group has the following features enabled.</p>
    # @!attribute auto_associate
    #   <p>Specifies if this billing group will automatically associate newly added Amazon Web Services accounts that join your consolidated billing family.</p>
    #   @return [Boolean]
    # @!attribute responsibility_transfer_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the transfer relationship for the billing group. </p>
    #   @return [String]
    class ListBillingGroupAccountGrouping < Struct.new(
      nil,
      :auto_associate,
      :responsibility_transfer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter used to retrieve specific <code>BillingGroupCostReportElements</code>.</p>
    # @!attribute billing_group_arns
    #   <p>The list of Amazon Resource Names (ARNs) used to filter billing groups to retrieve reports. </p>
    #   @return [Array<String>]
    class ListBillingGroupCostReportsFilter < Struct.new(
      nil,
      :billing_group_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p>The preferred billing period for your report. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of reports to retrieve. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that's used on subsequent calls to get reports. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>A <code>ListBillingGroupCostReportsFilter</code> to specify billing groups to retrieve reports from. </p>
    #   @return [Types::ListBillingGroupCostReportsFilter]
    class ListBillingGroupCostReportsOperationInput < Struct.new(
      nil,
      :billing_period,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_group_cost_reports
    #   <p>A list of <code>BillingGroupCostReportElement</code> retrieved. </p>
    #   @return [Array<Types::BillingGroupCostReportElement>]
    # @!attribute next_token
    #   <p>The pagination token that's used on subsequent calls to get reports. </p>
    #   @return [String]
    class ListBillingGroupCostReportsOperationOutput < Struct.new(
      nil,
      :billing_group_cost_reports,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter that specifies the billing groups and pricing plans to retrieve billing group information.</p>
    # @!attribute arns
    #   <p>The list of billing group Amazon Resource Names (ARNs) to retrieve information.</p>
    #   @return [Array<String>]
    # @!attribute pricing_plan
    #   <p>The pricing plan Amazon Resource Names (ARNs) to retrieve information.</p>
    #   @return [String]
    # @!attribute statuses
    #   <p> A list of billing groups to retrieve their current status for a specific time range </p>
    #   @return [Array<String>]
    # @!attribute auto_associate
    #   <p>Specifies if this billing group will automatically associate newly added Amazon Web Services accounts that join your consolidated billing family.</p>
    #   @return [Boolean]
    # @!attribute primary_account_ids
    #   <p> A list of primary account IDs to filter the billing groups. </p>
    #   @return [Array<String>]
    # @!attribute billing_group_types
    #   <p> Filter billing groups by their type. </p>
    #   @return [Array<String>]
    # @!attribute names
    #   <p> Filter billing groups by their names. </p>
    #   @return [Array<Types::StringSearch>]
    # @!attribute responsibility_transfer_arns
    #   <p> Filter billing groups by their responsibility transfer ARNs. </p>
    #   @return [Array<String>]
    class ListBillingGroupsFilter < Struct.new(
      nil,
      :arns,
      :pricing_plan,
      :statuses,
      :auto_associate,
      :primary_account_ids,
      :billing_group_types,
      :names,
      :responsibility_transfer_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p>The preferred billing period to get billing groups. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of billing groups to retrieve. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that's used on subsequent calls to get billing groups. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>A <code>ListBillingGroupsFilter</code> that specifies the billing group and pricing plan to retrieve billing group information. </p>
    #   @return [Types::ListBillingGroupsFilter]
    class ListBillingGroupsOperationInput < Struct.new(
      nil,
      :billing_period,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_groups
    #   <p>A list of <code>BillingGroupListElement</code> retrieved. </p>
    #   @return [Array<Types::BillingGroupListElement>]
    # @!attribute next_token
    #   <p>The pagination token that's used on subsequent calls to get billing groups. </p>
    #   @return [String]
    class ListBillingGroupsOperationOutput < Struct.new(
      nil,
      :billing_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A representation of the charge details of a custom line item. </p>
    # @!attribute flat
    #   <p> A <code>ListCustomLineItemFlatChargeDetails</code> that describes the charge details of a flat custom line item. </p>
    #   @return [Types::ListCustomLineItemFlatChargeDetails]
    # @!attribute percentage
    #   <p> A <code>ListCustomLineItemPercentageChargeDetails</code> that describes the charge details of a percentage custom line item. </p>
    #   @return [Types::ListCustomLineItemPercentageChargeDetails]
    # @!attribute type
    #   <p> The type of the custom line item that indicates whether the charge is a <code>fee</code> or <code>credit</code>. </p>
    #   @return [String]
    # @!attribute line_item_filters
    #   <p>A representation of the line item filter.</p>
    #   @return [Array<Types::LineItemFilter>]
    class ListCustomLineItemChargeDetails < Struct.new(
      nil,
      :flat,
      :percentage,
      :type,
      :line_item_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A representation of the charge details that are associated with a flat custom line item. </p>
    # @!attribute charge_value
    #   <p> The custom line item's fixed charge value in USD. </p>
    #   @return [Float]
    class ListCustomLineItemFlatChargeDetails < Struct.new(
      nil,
      :charge_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A representation of the charge details that are associated with a percentage custom line item. </p>
    # @!attribute percentage_value
    #   <p> The custom line item's percentage value. This will be multiplied against the combined value of its associated resources to determine its charge value. </p>
    #   @return [Float]
    class ListCustomLineItemPercentageChargeDetails < Struct.new(
      nil,
      :percentage_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A billing period filter that specifies the custom line item versions to retrieve.</p>
    # @!attribute start_billing_period
    #   <p>The inclusive start billing period that defines a billing period range where a custom line item version is applied.</p>
    #   @return [String]
    # @!attribute end_billing_period
    #   <p>The exclusive end billing period that defines a billing period range where a custom line item version is applied.</p>
    #   @return [String]
    class ListCustomLineItemVersionsBillingPeriodRangeFilter < Struct.new(
      nil,
      :start_billing_period,
      :end_billing_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that specifies the billing period range where the custom line item versions reside.</p>
    # @!attribute billing_period_range
    #   <p>The billing period range in which the custom line item version is applied.</p>
    #   @return [Types::ListCustomLineItemVersionsBillingPeriodRangeFilter]
    class ListCustomLineItemVersionsFilter < Struct.new(
      nil,
      :billing_period_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the custom line item.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of custom line item versions to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that's used on subsequent calls to retrieve custom line item versions.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A <code>ListCustomLineItemVersionsFilter</code> that specifies the billing period range in which the custom line item versions are applied.</p>
    #   @return [Types::ListCustomLineItemVersionsFilter]
    class ListCustomLineItemVersionsOperationInput < Struct.new(
      nil,
      :arn,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_line_item_versions
    #   <p>A list of <code>CustomLineItemVersionListElements</code> that are received.</p>
    #   @return [Array<Types::CustomLineItemVersionListElement>]
    # @!attribute next_token
    #   <p>The pagination token that's used on subsequent calls to retrieve custom line item versions.</p>
    #   @return [String]
    class ListCustomLineItemVersionsOperationOutput < Struct.new(
      nil,
      :custom_line_item_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that specifies the custom line items and billing groups to retrieve FFLI information.</p>
    # @!attribute names
    #   <p>A list of custom line items to retrieve information.</p>
    #   @return [Array<String>]
    # @!attribute billing_groups
    #   <p>The billing group Amazon Resource Names (ARNs) to retrieve information.</p>
    #   @return [Array<String>]
    # @!attribute arns
    #   <p>A list of custom line item ARNs to retrieve information.</p>
    #   @return [Array<String>]
    # @!attribute account_ids
    #   <p>The Amazon Web Services accounts in which this custom line item will be applied to.</p>
    #   @return [Array<String>]
    class ListCustomLineItemsFilter < Struct.new(
      nil,
      :names,
      :billing_groups,
      :arns,
      :account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p> The preferred billing period to get custom line items (FFLIs). </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of billing groups to retrieve. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The pagination token that's used on subsequent calls to get custom line items (FFLIs). </p>
    #   @return [String]
    # @!attribute filters
    #   <p>A <code>ListCustomLineItemsFilter</code> that specifies the custom line item names and/or billing group Amazon Resource Names (ARNs) to retrieve FFLI information.</p>
    #   @return [Types::ListCustomLineItemsFilter]
    class ListCustomLineItemsOperationInput < Struct.new(
      nil,
      :billing_period,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_line_items
    #   <p> A list of <code>FreeFormLineItemListElements</code> received. </p>
    #   @return [Array<Types::CustomLineItemListElement>]
    # @!attribute next_token
    #   <p> The pagination token that's used on subsequent calls to get custom line items (FFLIs). </p>
    #   @return [String]
    class ListCustomLineItemsOperationOutput < Struct.new(
      nil,
      :custom_line_items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p> The pricing plan billing period for which associations will be listed. </p>
    #   @return [String]
    # @!attribute pricing_rule_arn
    #   <p> The pricing rule Amazon Resource Name (ARN) for which associations will be listed. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The optional maximum number of pricing rule associations to retrieve. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The optional pagination token returned by a previous call. </p>
    #   @return [String]
    class ListPricingPlansAssociatedWithPricingRuleOperationInput < Struct.new(
      nil,
      :billing_period,
      :pricing_rule_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p> The pricing plan billing period for which associations will be listed. </p>
    #   @return [String]
    # @!attribute pricing_rule_arn
    #   <p> The pricing rule Amazon Resource Name (ARN) for which associations will be listed. </p>
    #   @return [String]
    # @!attribute pricing_plan_arns
    #   <p> The list containing pricing plans that are associated with the requested pricing rule. </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> The pagination token to be used on subsequent calls. </p>
    #   @return [String]
    class ListPricingPlansAssociatedWithPricingRuleOperationOutput < Struct.new(
      nil,
      :billing_period,
      :pricing_rule_arn,
      :pricing_plan_arns,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter that specifies the Amazon Resource Names (ARNs) of pricing plans, to retrieve pricing plan information.</p>
    # @!attribute arns
    #   <p>A list of pricing plan Amazon Resource Names (ARNs) to retrieve information.</p>
    #   @return [Array<String>]
    class ListPricingPlansFilter < Struct.new(
      nil,
      :arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p>The preferred billing period to get pricing plan. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>A <code>ListPricingPlansFilter</code> that specifies the Amazon Resource Name (ARNs) of pricing plans to retrieve pricing plans information.</p>
    #   @return [Types::ListPricingPlansFilter]
    # @!attribute max_results
    #   <p>The maximum number of pricing plans to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that's used on subsequent call to get pricing plans. </p>
    #   @return [String]
    class ListPricingPlansOperationInput < Struct.new(
      nil,
      :billing_period,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p> The billing period for which the described pricing plans are applicable. </p>
    #   @return [String]
    # @!attribute pricing_plans
    #   <p>A list of <code>PricingPlanListElement</code> retrieved. </p>
    #   @return [Array<Types::PricingPlanListElement>]
    # @!attribute next_token
    #   <p>The pagination token that's used on subsequent calls to get pricing plans. </p>
    #   @return [String]
    class ListPricingPlansOperationOutput < Struct.new(
      nil,
      :billing_period,
      :pricing_plans,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p> The billing period for which the pricing rule associations are to be listed. </p>
    #   @return [String]
    # @!attribute pricing_plan_arn
    #   <p> The Amazon Resource Name (ARN) of the pricing plan for which associations are to be listed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The optional maximum number of pricing rule associations to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The optional pagination token returned by a previous call. </p>
    #   @return [String]
    class ListPricingRulesAssociatedToPricingPlanOperationInput < Struct.new(
      nil,
      :billing_period,
      :pricing_plan_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p> The billing period for which the pricing rule associations are listed. </p>
    #   @return [String]
    # @!attribute pricing_plan_arn
    #   <p> The Amazon Resource Name (ARN) of the pricing plan for which associations are listed.</p>
    #   @return [String]
    # @!attribute pricing_rule_arns
    #   <p> A list containing pricing rules that are associated with the requested pricing plan. </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> The pagination token to be used on subsequent calls. </p>
    #   @return [String]
    class ListPricingRulesAssociatedToPricingPlanOperationOutput < Struct.new(
      nil,
      :billing_period,
      :pricing_plan_arn,
      :pricing_rule_arns,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The filter that specifies criteria that the pricing rules returned by the <code>ListPricingRules</code> API will adhere to.</p>
    # @!attribute arns
    #   <p>A list containing the pricing rule Amazon Resource Names (ARNs) to include in the API response.</p>
    #   @return [Array<String>]
    class ListPricingRulesFilter < Struct.new(
      nil,
      :arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p> The preferred billing period to get the pricing plan. </p>
    #   @return [String]
    # @!attribute filters
    #   <p> A <code>DescribePricingRuleFilter</code> that specifies the Amazon Resource Name (ARNs) of pricing rules to retrieve pricing rules information. </p>
    #   @return [Types::ListPricingRulesFilter]
    # @!attribute max_results
    #   <p> The maximum number of pricing rules to retrieve. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The pagination token that's used on subsequent call to get pricing rules. </p>
    #   @return [String]
    class ListPricingRulesOperationInput < Struct.new(
      nil,
      :billing_period,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p> The billing period for which the described pricing rules are applicable. </p>
    #   @return [String]
    # @!attribute pricing_rules
    #   <p> A list containing the described pricing rules. </p>
    #   @return [Array<Types::PricingRuleListElement>]
    # @!attribute next_token
    #   <p> The pagination token that's used on subsequent calls to get pricing rules. </p>
    #   @return [String]
    class ListPricingRulesOperationOutput < Struct.new(
      nil,
      :billing_period,
      :pricing_rules,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A filter that specifies the type of resource associations that should be retrieved for a custom line item. </p>
    # @!attribute relationship
    #   <p> The type of relationship between the custom line item and the associated resource. </p>
    #   @return [String]
    class ListResourcesAssociatedToCustomLineItemFilter < Struct.new(
      nil,
      :relationship,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_period
    #   <p> The billing period for which the resource associations will be listed. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The ARN of the custom line item for which the resource associations will be listed. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> (Optional) The maximum number of resource associations to be retrieved. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> (Optional) The pagination token that's returned by a previous request. </p>
    #   @return [String]
    # @!attribute filters
    #   <p> (Optional) A <code>ListResourcesAssociatedToCustomLineItemFilter</code> that can specify the types of resources that should be retrieved. </p>
    #   @return [Types::ListResourcesAssociatedToCustomLineItemFilter]
    class ListResourcesAssociatedToCustomLineItemOperationInput < Struct.new(
      nil,
      :billing_period,
      :arn,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The custom line item ARN for which the resource associations are listed. </p>
    #   @return [String]
    # @!attribute associated_resources
    #   <p> A list of <code>ListResourcesAssociatedToCustomLineItemResponseElement</code> for each resource association retrieved. </p>
    #   @return [Array<Types::ListResourcesAssociatedToCustomLineItemResponseElement>]
    # @!attribute next_token
    #   <p> The pagination token to be used in subsequent requests to retrieve additional results. </p>
    #   @return [String]
    class ListResourcesAssociatedToCustomLineItemOperationOutput < Struct.new(
      nil,
      :arn,
      :associated_resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A representation of a resource association for a custom line item. </p>
    # @!attribute arn
    #   <p> The ARN of the associated resource. </p>
    #   @return [String]
    # @!attribute relationship
    #   <p> The type of relationship between the custom line item and the associated resource. </p>
    #   @return [String]
    # @!attribute end_billing_period
    #   <p>The end billing period of the associated resource.</p>
    #   @return [String]
    class ListResourcesAssociatedToCustomLineItemResponseElement < Struct.new(
      nil,
      :arn,
      :relationship,
      :end_billing_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the resource to list the tags. </p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> The tags for the resource. </p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An object that defines how custom line item charges are presented in the bill, containing specifications for service presentation. </p>
    # @!attribute service
    #   <p> The service under which the custom line item charges will be presented. Must be a string between 1 and 128 characters matching the pattern "<code>^[a-zA-Z0-9]+$</code>". </p>
    #   @return [String]
    class PresentationObject < Struct.new(
      nil,
      :service,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A representation of a pricing plan.</p>
    # @!attribute name
    #   <p>The name of a pricing plan.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The pricing plan Amazon Resource Names (ARN). This can be used to uniquely identify a pricing plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The pricing plan description.</p>
    #   @return [String]
    # @!attribute size
    #   <p>The pricing rules count that's currently associated with this pricing plan list element.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The time when the pricing plan was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p>The most recent time when the pricing plan was modified.</p>
    #   @return [Integer]
    class PricingPlanListElement < Struct.new(
      nil,
      :name,
      :arn,
      :description,
      :size,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:size] = 0 unless options.key?(:size)
        options[:creation_time] = 0 unless options.key?(:creation_time)
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        super
      end
    end

    # <p>A representation of a pricing rule.</p>
    # @!attribute name
    #   <p>The name of a pricing rule.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) used to uniquely identify a pricing rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The pricing rule description.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The scope of pricing rule that indicates if it is globally applicable, or if it is service-specific.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of pricing rule.</p>
    #   @return [String]
    # @!attribute modifier_percentage
    #   <p>A percentage modifier applied on the public pricing rates.</p>
    #   @return [Float]
    # @!attribute service
    #   <p>If the <code>Scope</code> attribute is <code>SERVICE</code>, this attribute indicates which service the <code>PricingRule</code> is applicable for.</p>
    #   @return [String]
    # @!attribute associated_pricing_plan_count
    #   <p>The pricing plans count that this pricing rule is associated with.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The time when the pricing rule was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p> The most recent time when the pricing rule was modified.</p>
    #   @return [Integer]
    # @!attribute billing_entity
    #   <p> The seller of services provided by Amazon Web Services, their affiliates, or third-party providers selling services via Amazon Web Services Marketplace. </p>
    #   @return [String]
    # @!attribute tiering
    #   <p> The set of tiering configurations for the pricing rule. </p>
    #   @return [Types::Tiering]
    # @!attribute usage_type
    #   <p> Usage type is the unit that each service uses to measure the usage of a specific type of resource.</p> <p>If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which usage type the <code>PricingRule</code> is modifying. For example, <code>USW2-BoxUsage:m2.2xlarge</code> describes an<code> M2 High Memory Double Extra Large</code> instance in the US West (Oregon) Region. </p>
    #   @return [String]
    # @!attribute operation
    #   <p> Operation is the specific Amazon Web Services action covered by this line item. This describes the specific usage of the line item.</p> <p> If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which operation the <code>PricingRule</code> is modifying. For example, a value of <code>RunInstances:0202</code> indicates the operation of running an Amazon EC2 instance.</p>
    #   @return [String]
    class PricingRuleListElement < Struct.new(
      nil,
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
      :operation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:associated_pricing_plan_count] = 0 unless options.key?(:associated_pricing_plan_count)
        options[:creation_time] = 0 unless options.key?(:creation_time)
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        super
      end
    end

    # <p>The request references a resource that doesn't exist. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Resource identifier that was not found. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Resource type that was not found. </p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service limit to exceed. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource affected. </p>
    #   @return [String]
    # @!attribute limit_code
    #   <p>The unique code identifier of the service limit that is being exceeded. </p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The unique code for the service of the limit that is being exceeded. </p>
    #   @return [String]
    class ServiceLimitExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :limit_code,
      :service_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A structure that defines string search parameters. </p>
    # @!attribute search_option
    #   <p> The search option to be applied when performing the string search. </p>
    #   @return [String]
    # @!attribute search_value
    #   <p> The value to search for within the specified string field. </p>
    #   @return [String]
    class StringSearch < Struct.new(
      nil,
      :search_option,
      :search_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource to which to add tags. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags to add to the resource as a list of key-value pairs. </p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Number of seconds you can safely retry after the call. </p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p> The set of tiering configurations for the pricing rule. </p>
    # @!attribute free_tier
    #   <p> The possible Amazon Web Services Free Tier configurations. </p>
    #   @return [Types::FreeTierConfig]
    # @!attribute custom_tiers
    #   <p> The set of custom tiers for the pricing rule. </p>
    #   @return [Array<Types::CustomTier>]
    class Tiering < Struct.new(
      nil,
      :free_tier,
      :custom_tiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource to which to delete tags. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p> The tags to delete from the resource as a list of key-value pairs. </p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies if the billing group has the following features enabled.</p>
    # @!attribute auto_associate
    #   <p>Specifies if this billing group will automatically associate newly added Amazon Web Services accounts that join your consolidated billing family.</p>
    #   @return [Boolean]
    # @!attribute responsibility_transfer_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the transfer relationship. Note: Modifications to the ResponsibilityTransferArn are not permitted for existing billing groups. </p>
    #   @return [String]
    class UpdateBillingGroupAccountGrouping < Struct.new(
      nil,
      :auto_associate,
      :responsibility_transfer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the billing group being updated. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the billing group. The names must be unique to each billing group. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the billing group. Only one of the valid values can be used. </p>
    #   @return [String]
    # @!attribute computation_preference
    #   <p> The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group. </p>
    #   @return [Types::ComputationPreference]
    # @!attribute description
    #   <p>A description of the billing group. </p>
    #   @return [String]
    # @!attribute account_grouping
    #   <p>Specifies if the billing group has automatic account association (<code>AutoAssociate</code>) enabled.</p>
    #   @return [Types::UpdateBillingGroupAccountGrouping]
    class UpdateBillingGroupOperationInput < Struct.new(
      nil,
      :arn,
      :name,
      :status,
      :computation_preference,
      :description,
      :account_grouping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the billing group that was updated. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the billing group. The names must be unique to each billing group. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the billing group. </p>
    #   @return [String]
    # @!attribute primary_account_id
    #   <p> The account ID that serves as the main account in a billing group. </p>
    #   @return [String]
    # @!attribute pricing_plan_arn
    #   <p> The Amazon Resource Name (ARN) of the pricing plan to compute Amazon Web Services charges for the billing group. </p>
    #   @return [String]
    # @!attribute size
    #   <p> The number of accounts in the particular billing group. </p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p> The most recent time when the billing group was modified. </p>
    #   @return [Integer]
    # @!attribute status
    #   <p> The status of the billing group. Only one of the valid values can be used. </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p> The reason why the billing group is in its current status. </p>
    #   @return [String]
    # @!attribute account_grouping
    #   <p>Specifies if the billing group has automatic account association (<code>AutoAssociate</code>) enabled.</p>
    #   @return [Types::UpdateBillingGroupAccountGrouping]
    class UpdateBillingGroupOperationOutput < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :primary_account_id,
      :pricing_plan_arn,
      :size,
      :last_modified_time,
      :status,
      :status_reason,
      :account_grouping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:size] = 0 unless options.key?(:size)
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        super
      end
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you specify to ensure idempotency of the request. Idempotency ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries complete successfully without performing any further actions.</p>
    #   @return [String]
    # @!attribute responsibility_transfer_arn
    #   <p>The Amazon Resource Name (ARN) of the billing transfer whose preference you want to set.</p>
    #   @return [String]
    # @!attribute auto_billing_transfer_billing_group_creation
    #   <p>The auto billing group creation preference to set for the billing transfer.</p>
    #   @return [Types::AutoTransferBillingGroupCreationPreference]
    class UpdateBillingTransferPreferenceInput < Struct.new(
      nil,
      :client_token,
      :responsibility_transfer_arn,
      :auto_billing_transfer_billing_group_creation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute responsibility_transfer_arn
    #   <p>The Amazon Resource Name (ARN) of the billing transfer that the preference applies to.</p>
    #   @return [String]
    # @!attribute auto_billing_transfer_billing_group_creation
    #   <p>The updated auto billing group creation preference for the billing transfer.</p>
    #   @return [Types::AutoTransferBillingGroupCreationPreference]
    # @!attribute last_modified_time
    #   <p>The most recent time when the preference was modified.</p>
    #   @return [Integer]
    class UpdateBillingTransferPreferenceOutput < Struct.new(
      nil,
      :responsibility_transfer_arn,
      :auto_billing_transfer_billing_group_creation,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        super
      end
    end

    # <p> A representation of the new charge details of a custom line item. This should contain only one of <code>Flat</code> or <code>Percentage</code>. </p>
    # @!attribute flat
    #   <p> An <code>UpdateCustomLineItemFlatChargeDetails</code> that describes the new charge details of a flat custom line item. </p>
    #   @return [Types::UpdateCustomLineItemFlatChargeDetails]
    # @!attribute percentage
    #   <p> An <code>UpdateCustomLineItemPercentageChargeDetails</code> that describes the new charge details of a percentage custom line item. </p>
    #   @return [Types::UpdateCustomLineItemPercentageChargeDetails]
    # @!attribute line_item_filters
    #   <p>A representation of the line item filter.</p>
    #   @return [Array<Types::LineItemFilter>]
    class UpdateCustomLineItemChargeDetails < Struct.new(
      nil,
      :flat,
      :percentage,
      :line_item_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A representation of the new charge details that are associated with a flat custom line item. </p>
    # @!attribute charge_value
    #   <p> The custom line item's new fixed charge value in USD. </p>
    #   @return [Float]
    class UpdateCustomLineItemFlatChargeDetails < Struct.new(
      nil,
      :charge_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The ARN of the custom line item to be updated. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The new name for the custom line item. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The new line item description of the custom line item. </p>
    #   @return [String]
    # @!attribute charge_details
    #   <p> A <code>ListCustomLineItemChargeDetails</code> containing the new charge details for the custom line item. </p>
    #   @return [Types::UpdateCustomLineItemChargeDetails]
    # @!attribute billing_period_range
    #   <p>The billing period range in which the custom line item request will be applied.</p>
    #   @return [Types::CustomLineItemBillingPeriodRange]
    class UpdateCustomLineItemOperationInput < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :charge_details,
      :billing_period_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The ARN of the successfully updated custom line item. </p>
    #   @return [String]
    # @!attribute billing_group_arn
    #   <p> The ARN of the billing group that the custom line item is applied to. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the successfully updated custom line item. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the successfully updated custom line item. </p>
    #   @return [String]
    # @!attribute charge_details
    #   <p> A <code>ListCustomLineItemChargeDetails</code> containing the charge details of the successfully updated custom line item. </p>
    #   @return [Types::ListCustomLineItemChargeDetails]
    # @!attribute last_modified_time
    #   <p> The most recent time when the custom line item was modified. </p>
    #   @return [Integer]
    # @!attribute association_size
    #   <p> The number of resources that are associated to the custom line item. </p>
    #   @return [Integer]
    class UpdateCustomLineItemOperationOutput < Struct.new(
      nil,
      :arn,
      :billing_group_arn,
      :name,
      :description,
      :charge_details,
      :last_modified_time,
      :association_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        options[:association_size] = 0 unless options.key?(:association_size)
        super
      end
    end

    # <p> A representation of the new charge details that are associated with a percentage custom line item. </p>
    # @!attribute percentage_value
    #   <p> The custom line item's new percentage value. This will be multiplied against the combined value of its associated resources to determine its charge value. </p>
    #   @return [Float]
    class UpdateCustomLineItemPercentageChargeDetails < Struct.new(
      nil,
      :percentage_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The possible Amazon Web Services Free Tier configurations. </p>
    # @!attribute activated
    #   <p> Activate or deactivate application of Amazon Web Services Free Tier. </p>
    #   @return [Boolean]
    class UpdateFreeTierConfig < Struct.new(
      nil,
      :activated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the pricing plan that you're updating. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the pricing plan. The name must be unique to each pricing plan. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the pricing plan. </p>
    #   @return [String]
    class UpdatePricingPlanOperationInput < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated pricing plan. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the pricing plan. The name must be unique to each pricing plan. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The new description for the pricing rule. </p>
    #   @return [String]
    # @!attribute size
    #   <p> The pricing rules count that's currently associated with this pricing plan list. </p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p> The most recent time when the pricing plan was modified. </p>
    #   @return [Integer]
    class UpdatePricingPlanOperationOutput < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :size,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:size] = 0 unless options.key?(:size)
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        super
      end
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the pricing rule to update. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The new name of the pricing rule. The name must be unique to each pricing rule. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The new description for the pricing rule. </p>
    #   @return [String]
    # @!attribute type
    #   <p> The new pricing rule type. </p>
    #   @return [String]
    # @!attribute modifier_percentage
    #   <p> The new modifier to show pricing plan rates as a percentage. Your entry will be rounded to the nearest 2 decimal places. </p>
    #   @return [Float]
    # @!attribute tiering
    #   <p> The set of tiering configurations for the pricing rule. </p>
    #   @return [Types::UpdateTieringInput]
    class UpdatePricingRuleOperationInput < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :type,
      :modifier_percentage,
      :tiering,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the successfully updated pricing rule. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The new name of the pricing rule. The name must be unique to each pricing rule. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The new description for the pricing rule. </p>
    #   @return [String]
    # @!attribute scope
    #   <p> The scope of pricing rule that indicates if it's globally applicable, or it's service-specific. </p>
    #   @return [String]
    # @!attribute type
    #   <p> The new pricing rule type. </p>
    #   @return [String]
    # @!attribute modifier_percentage
    #   <p> The new modifier to show pricing plan rates as a percentage. </p>
    #   @return [Float]
    # @!attribute service
    #   <p> If the <code>Scope</code> attribute is set to <code>SERVICE</code>, the attribute indicates which service the <code>PricingRule</code> is applicable for. </p>
    #   @return [String]
    # @!attribute associated_pricing_plan_count
    #   <p> The pricing plans count that this pricing rule is associated with. </p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p> The most recent time the pricing rule was modified. </p>
    #   @return [Integer]
    # @!attribute billing_entity
    #   <p> The seller of services provided by Amazon Web Services, their affiliates, or third-party providers selling services via Amazon Web Services Marketplace. </p>
    #   @return [String]
    # @!attribute tiering
    #   <p> The set of tiering configurations for the pricing rule. </p>
    #   @return [Types::UpdateTieringInput]
    # @!attribute usage_type
    #   <p>Usage type is the unit that each service uses to measure the usage of a specific type of resource.</p> <p>If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which usage type the <code>PricingRule</code> is modifying. For example, <code>USW2-BoxUsage:m2.2xlarge</code> describes an <code>M2 High Memory Double Extra Large</code> instance in the US West (Oregon) Region. </p>
    #   @return [String]
    # @!attribute operation
    #   <p>Operation refers to the specific Amazon Web Services covered by this line item. This describes the specific usage of the line item.</p> <p> If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which operation the <code>PricingRule</code> is modifying. For example, a value of <code>RunInstances:0202</code> indicates the operation of running an Amazon EC2 instance.</p>
    #   @return [String]
    class UpdatePricingRuleOperationOutput < Struct.new(
      nil,
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
      :operation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:associated_pricing_plan_count] = 0 unless options.key?(:associated_pricing_plan_count)
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        super
      end
    end

    # <p> The set of tiering configurations for the pricing rule. </p>
    # @!attribute free_tier
    #   <p> The possible Amazon Web Services Free Tier configurations. </p>
    #   @return [Types::UpdateFreeTierConfig]
    # @!attribute custom_tiers
    #   <p> The set of custom tiers for the pricing rule. </p>
    #   @return [Array<Types::CustomTier>]
    class UpdateTieringInput < Struct.new(
      nil,
      :free_tier,
      :custom_tiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input doesn't match with the constraints specified by Amazon Web Services services.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the request's validation failed. </p>
    #   @return [String]
    # @!attribute fields
    #   <p>The fields that caused the error, if applicable. </p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The field's information of a request that resulted in an exception.</p>
    # @!attribute name
    #   <p>The field name.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message describing why the field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
