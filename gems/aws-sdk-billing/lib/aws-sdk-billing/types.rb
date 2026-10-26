# frozen_string_literal: true

# This is generated code!

module Aws::Billing
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A time range with a start and end time.</p>
    # @!attribute active_after_inclusive
    #   <p>The inclusive time range start date.</p>
    #   @return [Time]
    # @!attribute active_before_inclusive
    #   <p> The inclusive time range end date. </p>
    #   @return [Time]
    class ActiveTimeRange < Struct.new(
      nil,
      :active_after_inclusive,
      :active_before_inclusive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An additional charge applied to an Enterprise Support contract.</p>
    # @!attribute description
    #   <p>A description of the additional charge.</p>
    #   @return [String]
    # @!attribute amount
    #   <p>The charge amount.</p>
    #   @return [String]
    # @!attribute charge_type
    #   <p>The type of additional charge.</p>
    #   @return [String]
    class AdditionalCharge < Struct.new(
      nil,
      :description,
      :amount,
      :charge_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A monetary amount with a currency code. Used throughout the Billing API to represent credit balances, allocations, and adjustments.</p>
    # @!attribute currency_code
    #   <p>The ISO 4217 currency code for the amount (for example, <code>USD</code>).</p>
    #   @return [String]
    # @!attribute currency_amount
    #   <p>The amount as a decimal string (for example, <code>"743.21"</code>). Negative values represent credits that reduce a bill.</p>
    #   @return [String]
    class Amount < Struct.new(
      nil,
      :currency_code,
      :currency_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the billing view to associate source views with. </p>
    #   @return [String]
    # @!attribute source_views
    #   <p> A list of ARNs of the source billing views to associate. </p>
    #   @return [Array<String>]
    class AssociateSourceViewsRequest < Struct.new(
      nil,
      :arn,
      :source_views,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The ARN of the billing view that the source views were associated with. </p>
    #   @return [String]
    class AssociateSourceViewsResponse < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that narrows the set of preferences returned by <code>GetBillingPreferences</code>.</p>
    # @!attribute name
    #   <p>The filter name. Currently the only supported value is <code>PREFERENCE_KEY</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The filter values to match. For <code>PREFERENCE_KEY</code>, supply 1 to 10 preference key values to match.</p>
    #   @return [Array<String>]
    class BillingFeatureFilter < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specific billing period identified by year and month.</p>
    # @!attribute year
    #   <p>The four-digit year of the billing period.</p>
    #   @return [Integer]
    # @!attribute month
    #   <p>The month of the billing period as an integer between 1 and 12.</p>
    #   @return [Integer]
    class BillingPeriod < Struct.new(
      nil,
      :year,
      :month,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single key/value entry used to update a billing preference.</p>
    # @!attribute key
    #   <p>The preference key. Format depends on the feature being updated.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The preference value. Valid values: <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [String]
    class BillingPreferenceForKey < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single billing preference entry returned by <code>GetBillingPreferences</code>.</p>
    # @!attribute feature
    #   <p>The feature this preference belongs to.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The preference key. Format depends on the feature.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The preference value. Valid values: <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute account_name
    #   <p>The display name of the account. Populated together with <code>accountId</code>; <code>null</code> otherwise.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The associated Amazon Web Services account ID. Populated for account-list keys; <code>null</code> otherwise.</p>
    #   @return [String]
    # @!attribute billing_period
    #   <p>The billing period associated with the preference change. Populated only for the history features <code>RI_SHARING_HISTORY</code> and <code>CREDIT_SHARING_HISTORY</code>.</p>
    #   @return [Types::BillingPeriod]
    class BillingPreferenceSummary < Struct.new(
      nil,
      :feature,
      :key,
      :value,
      :account_name,
      :account_id,
      :billing_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata associated to the billing view. </p>
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The account name of the billing view. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the billing view. </p>
    #   @return [String]
    # @!attribute billing_view_type
    #   <p>The type of billing group. </p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The account owner of the billing view. </p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p> The Amazon Web Services account ID that owns the source billing view, if this is a derived billing view. </p>
    #   @return [String]
    # @!attribute data_filter_expression
    #   <p> See <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html">Expression</a>. Billing view only supports <code>LINKED_ACCOUNT</code>, <code>Tags</code>, and <code>CostCategories</code>. </p>
    #   @return [Types::Expression]
    # @!attribute created_at
    #   <p>The time when the billing view was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the billing view was last updated. </p>
    #   @return [Time]
    # @!attribute derived_view_count
    #   <p> The number of billing views that use this billing view as a source. </p>
    #   @return [Integer]
    # @!attribute source_view_count
    #   <p> The number of source views associated with this billing view. </p>
    #   @return [Integer]
    # @!attribute view_definition_last_updated_at
    #   <p> The timestamp of when the billing view definition was last updated. </p>
    #   @return [Time]
    # @!attribute health_status
    #   <p> The current health status of the billing view. </p>
    #   @return [Types::BillingViewHealthStatus]
    class BillingViewElement < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :billing_view_type,
      :owner_account_id,
      :source_account_id,
      :data_filter_expression,
      :created_at,
      :updated_at,
      :derived_view_count,
      :source_view_count,
      :view_definition_last_updated_at,
      :health_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the health status of a billing view, including a status code and optional reasons for the status. </p>
    # @!attribute status_code
    #   <p>The current health status code of the billing view.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>A list of reasons explaining the current health status, if applicable.</p>
    #   @return [Array<String>]
    class BillingViewHealthStatus < Struct.new(
      nil,
      :status_code,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Exception thrown when a billing view's health status prevents an operation from being performed. This may occur if the billing view is in a state other than <code>HEALTHY</code>.</p>
    # @!attribute message
    #   @return [String]
    class BillingViewHealthStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A representation of a billing view.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute name
    #   <p> A list of names of the Billing view. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the billing view. </p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p> The list of owners of the Billing view. </p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p> The Amazon Web Services account ID that owns the source billing view, if this is a derived billing view. </p>
    #   @return [String]
    # @!attribute billing_view_type
    #   <p>The type of billing view.</p>
    #   @return [String]
    # @!attribute health_status
    #   <p> The current health status of the billing view. </p>
    #   @return [Types::BillingViewHealthStatus]
    class BillingViewListElement < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :owner_account_id,
      :source_account_id,
      :billing_view_type,
      :health_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies a time range with an inclusive begin date and an exclusive end date. </p>
    # @!attribute begin_date_inclusive
    #   <p> The inclusive start of the time range. This value can't be in the future. </p>
    #   @return [Time]
    # @!attribute end_date_exclusive
    #   <p> The exclusive end of the time range. This value must be after <code>beginDateInclusive</code>. </p>
    #   @return [Time]
    class BillingViewSegmentTimeRange < Struct.new(
      nil,
      :begin_date_inclusive,
      :end_date_exclusive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A billing view segment. A segment represents a time range during which the billing domain and account relationships for a billing view remained unchanged. </p>
    # @!attribute domain
    #   <p>The billing domain for this segment. The following values are valid:</p> <ul> <li> <p> <code>PRO_FORMA</code> - Data shaped by Billing Conductor that doesn't reflect the final charges owed to Amazon Web Services.</p> </li> <li> <p> <code>BILLABLE</code> - Data that represents the final charges owed to Amazon Web Services.</p> </li> </ul>
    #   @return [String]
    # @!attribute time_range
    #   <p> The time range during which this segment is effective. </p>
    #   @return [Types::BillingViewSegmentTimeRange]
    # @!attribute billing_transfer_account_id
    #   <p> The billing transfer account ID. The response includes this field only when the caller is a billing transfer source account. The response omits this field for billing group billing views. </p>
    #   @return [String]
    # @!attribute management_account_id
    #   <p> The management account ID of the organization. The response includes this field for organization member accounts. </p>
    #   @return [String]
    # @!attribute billing_group_primary_account_id
    #   <p> The billing group primary account ID. The response includes this field for billing group members. Compare this value to your own account ID to determine whether you are the primary account. </p>
    #   @return [String]
    class BillingViewSegmentsListElement < Struct.new(
      nil,
      :domain,
      :time_range,
      :billing_transfer_account_id,
      :management_account_id,
      :billing_group_primary_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Business Support charges for a linked account.</p>
    # @!attribute account_id
    #   <p>The linked account ID.</p>
    #   @return [String]
    # @!attribute support_plan_name
    #   <p>The Support plan name for this account. Valid values: <code>AWSSupportBusiness</code> (Business Support plan), <code>AWSSupportDeveloper</code> (Developer Support plan), <code>AWSSupportEssential</code> (Basic Support plan).</p>
    #   @return [String]
    # @!attribute total_charge
    #   <p>The total Business Support charge amount for this account in the billing month.</p>
    #   @return [String]
    # @!attribute total_usage_basis
    #   <p>The total Support-eligible spend used as the basis for calculating the Business Support charge for this account.</p>
    #   @return [String]
    # @!attribute tier_charges
    #   <p>The tier-level charges that make up the total Business Support charge for this account. Each tier represents a spend range with its own rate.</p>
    #   @return [Array<Types::BusinessSupportTierCharge>]
    # @!attribute support_discount
    #   <p>The discount applied to the Business Support charge for this account, if any. This field is absent when no discount applies.</p>
    #   @return [Types::BusinessSupportDiscount]
    # @!attribute support_eligible_spend_by_service
    #   <p>The Support-eligible spend broken down by contributing service for this account.</p>
    #   @return [Array<Types::BusinessSupportServiceSpend>]
    class BusinessSupportAccountCharge < Struct.new(
      nil,
      :account_id,
      :support_plan_name,
      :total_charge,
      :total_usage_basis,
      :tier_charges,
      :support_discount,
      :support_eligible_spend_by_service,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A discount applied to a Business Support account charge, including the discount amount, percentage, type, and source.</p>
    # @!attribute discount_amount
    #   <p>The discount amount applied to the Business Support charge. This value is negative, representing a reduction in the charge.</p>
    #   @return [String]
    # @!attribute discount_percentage
    #   <p>The discount percentage applied to the Business Support charge, expressed as a decimal (for example, <code>0.12</code> for a 12% discount).</p>
    #   @return [String]
    # @!attribute discount_type
    #   <p>The type of discount applied. Valid values: <code>Distributor_Discount</code> (a discount applied through a distributor arrangement), <code>SPP_Discount</code> (a discount applied through the Solution Provider Program).</p>
    #   @return [String]
    # @!attribute discount_source
    #   <p>The source or program through which the discount was applied.</p>
    #   @return [String]
    class BusinessSupportDiscount < Struct.new(
      nil,
      :discount_amount,
      :discount_percentage,
      :discount_type,
      :discount_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A service-level spend entry contributing to Business Support eligible spend.</p>
    # @!attribute contributing_service
    #   <p>The name of the Amazon Web Services service contributing to the Support-eligible spend.</p>
    #   @return [String]
    # @!attribute item_type
    #   <p>The type of the line item. Valid values: <code>Usage</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of the service spend entry.</p>
    #   @return [String]
    # @!attribute charge_amount
    #   <p>The Support-eligible spend amount for this service.</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The ISO 4217 currency code for the charge amount (for example, <code>USD</code>).</p>
    #   @return [String]
    class BusinessSupportServiceSpend < Struct.new(
      nil,
      :contributing_service,
      :item_type,
      :description,
      :charge_amount,
      :currency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Business Support subscription contract for an account.</p>
    # @!attribute account_id
    #   <p>The account ID associated with this subscription contract.</p>
    #   @return [String]
    # @!attribute plan_name
    #   <p>The name of the Support plan for this subscription contract. Valid values: <code>AWSSupportBusiness</code> (Business Support plan), <code>AWSSupportDeveloper</code> (Developer Support plan), <code>AWSSupportEssential</code> (Basic Support plan).</p>
    #   @return [String]
    # @!attribute contract_start_date
    #   <p>The start date of the subscription contract.</p>
    #   @return [Time]
    # @!attribute contract_end_date
    #   <p>The end date of the subscription contract.</p>
    #   @return [Time]
    class BusinessSupportSubscriptionContract < Struct.new(
      nil,
      :account_id,
      :plan_name,
      :contract_start_date,
      :contract_end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tier-level charge within a Business Support pricing plan. Business Support uses tiered pricing where different percentage rates apply to different ranges of Support-eligible spend.</p>
    # @!attribute tier_description
    #   <p>A human-readable description of the pricing tier, including the spend range and percentage rate applied.</p>
    #   @return [String]
    # @!attribute tier_rate
    #   <p>The percentage rate applied to Support-eligible spend within this pricing tier.</p>
    #   @return [String]
    # @!attribute usage_slice
    #   <p>The amount of Support-eligible spend that falls within this pricing tier.</p>
    #   @return [String]
    # @!attribute tier_charge
    #   <p>The Business Support charge amount calculated for this pricing tier.</p>
    #   @return [String]
    # @!attribute charge_period_start_date
    #   <p>The start date of the charge period for this tier charge.</p>
    #   @return [Time]
    # @!attribute charge_period_end_date
    #   <p>The end date of the charge period for this tier charge.</p>
    #   @return [Time]
    class BusinessSupportTierCharge < Struct.new(
      nil,
      :tier_description,
      :tier_rate,
      :usage_slice,
      :tier_charge,
      :charge_period_start_date,
      :charge_period_end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An account that is charged all or a portion of the total Support charge and the percentage of the charge allocated to it.</p>
    # @!attribute account_id
    #   <p>The account ID.</p>
    #   @return [String]
    # @!attribute charge_percentage
    #   <p>The percentage of the total Support charge allocated to this account. This is 0.0 when supportAllocationMethod = Proportional.</p>
    #   @return [String]
    class ChargeAccount < Struct.new(
      nil,
      :account_id,
      :charge_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The identifier for the service resource associated with the request. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of resource associated with the request. </p>
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

    # <p>An account that is covered by the Enterprise Support contract.</p>
    # @!attribute account_id
    #   <p>The account ID.</p>
    #   @return [String]
    # @!attribute is_gdn
    #   <p>When true, Support charges are calculated on charges before private discounts. When false, they are calculated after private discounts.</p>
    #   @return [Boolean]
    class ContractAccount < Struct.new(
      nil,
      :account_id,
      :is_gdn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The Cost Categories values used for filtering the costs. </p>
    # @!attribute key
    #   <p> The unique name of the Cost Category. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The specific value of the Cost Category. </p>
    #   @return [Array<String>]
    class CostCategoryValues < Struct.new(
      nil,
      :key,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the billing view. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the billing view. </p>
    #   @return [String]
    # @!attribute source_views
    #   <p>A list of billing views used as the data source for the custom billing view.</p>
    #   @return [Array<String>]
    # @!attribute data_filter_expression
    #   <p> See <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html">Expression</a>. Billing view only supports <code>LINKED_ACCOUNT</code>, <code>Tags</code>, and <code>CostCategories</code>. </p>
    #   @return [Types::Expression]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you specify to ensure idempotency of the request. Idempotency ensures that an API request completes no more than one time. If the original request completes successfully, any subsequent retries complete successfully without performing any further actions with an idempotent request. </p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>A list of key value map specifying tags associated to the billing view being created. </p>
    #   @return [Array<Types::ResourceTag>]
    class CreateBillingViewRequest < Struct.new(
      nil,
      :name,
      :description,
      :source_views,
      :data_filter_expression,
      :client_token,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The time when the billing view was created. </p>
    #   @return [Time]
    class CreateBillingViewResponse < Struct.new(
      nil,
      :arn,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single entry in the credit allocation history, representing how a credit was applied to a specific service during a billing month.</p>
    # @!attribute credit_id
    #   <p>The identifier of the credit that was applied.</p>
    #   @return [String]
    # @!attribute credit_amount
    #   <p>The amount of credit applied. Negative values represent credits that reduced the bill.</p>
    #   @return [Types::Amount]
    # @!attribute description
    #   <p>A human-readable description of the credit allocation.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account the credit was applied to.</p>
    #   @return [String]
    # @!attribute applied_service_name
    #   <p>The Amazon Web Services service the credit was applied to.</p>
    #   @return [String]
    # @!attribute billing_month
    #   <p>The billing month of the application in <code>YYYY-MM</code> format.</p>
    #   @return [String]
    # @!attribute is_estimated_bill
    #   <p> <code>true</code> when the entry was applied to an in-flight bill that has not yet been finalized.</p>
    #   @return [Boolean]
    class CreditAllocationHistoryEntry < Struct.new(
      nil,
      :credit_id,
      :credit_amount,
      :description,
      :account_id,
      :applied_service_name,
      :billing_month,
      :is_estimated_bill,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about an Amazon Web Services credit, including its identifier, type, monetary amounts, applicable products, sharing configuration, and current enabled status.</p>
    # @!attribute credit_id
    #   <p>The unique identifier for the credit.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that owns the credit.</p>
    #   @return [String]
    # @!attribute credit_type
    #   <p>The type of credit. Examples: <code>Promotion</code>, <code>Refund</code>, <code>TrueUp</code>.</p>
    #   @return [String]
    # @!attribute initial_amount
    #   <p>The initial amount of the credit when it was issued.</p>
    #   @return [Types::Amount]
    # @!attribute remaining_amount
    #   <p>The unused balance of the credit.</p>
    #   @return [Types::Amount]
    # @!attribute estimated_amount
    #   <p>The estimated remaining balance, including in-flight (open) bills that have not yet been finalized.</p>
    #   @return [Types::Amount]
    # @!attribute applicable_product_names
    #   <p>The names of Amazon Web Services services this credit applies to.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>A human-readable description of the credit.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date the credit becomes valid, as Unix epoch seconds.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The date the credit expires, as Unix epoch seconds.</p>
    #   @return [Time]
    # @!attribute exhaust_date
    #   <p>The date the credit balance reached zero, as Unix epoch seconds.</p>
    #   @return [Time]
    # @!attribute application_type
    #   <p>When the credit is applied during bill computation. Valid values: <code>BEFORE_CROSS_SERVICE_DISCOUNTS</code>, <code>AFTER_DISCOUNTS</code>.</p>
    #   @return [String]
    # @!attribute shareable_accounts
    #   <p>The Amazon Web Services account IDs entitled to apply this credit.</p>
    #   @return [Array<String>]
    # @!attribute account_has_credit_sharing_enabled
    #   <p>Whether the owning account has account-level credit sharing turned on.</p>
    #   @return [Boolean]
    # @!attribute credit_console_visibility
    #   <p>The display configuration for the credit in the Amazon Web Services Billing console.</p>
    #   @return [String]
    # @!attribute credit_sharing_type
    #   <p>The sharing configuration for the credit. Valid values: <code>DEFAULT</code>, <code>DISABLED</code>, <code>CUSTOM</code>, <code>COST_CATEGORY_RULE</code>.</p>
    #   @return [String]
    # @!attribute cost_category_arn
    #   <p>The Amazon Resource Name (ARN) of the Cost Category controlling the credit's sharing scope. Present only when <code>creditSharingType</code> is <code>COST_CATEGORY_RULE</code>.</p>
    #   @return [String]
    # @!attribute rule_name
    #   <p>The rule name within the Cost Category. Present only when <code>creditSharingType</code> is <code>COST_CATEGORY_RULE</code>.</p>
    #   @return [String]
    # @!attribute credit_status
    #   <p>Whether the credit participates in billing runs. Valid values: <code>ENABLED</code>, <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute purchase_type_applications
    #   <p>Restricts which purchase types this credit applies to. When <code>null</code> or omitted, the credit applies to all purchase types.</p>
    #   @return [Array<String>]
    class CreditData < Struct.new(
      nil,
      :credit_id,
      :account_id,
      :credit_type,
      :initial_amount,
      :remaining_amount,
      :estimated_amount,
      :applicable_product_names,
      :description,
      :start_date,
      :end_date,
      :exhaust_date,
      :application_type,
      :shareable_accounts,
      :account_has_credit_sharing_enabled,
      :credit_console_visibility,
      :credit_sharing_type,
      :cost_category_arn,
      :rule_name,
      :credit_status,
      :purchase_type_applications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute force
    #   <p> If set to true, forces deletion of the billing view even if it has derived resources (e.g. other billing views or budgets). Use with caution as this may break dependent resources. </p>
    #   @return [Boolean]
    class DeleteBillingViewRequest < Struct.new(
      nil,
      :arn,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    class DeleteBillingViewResponse < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata that you can use to filter and group your results. </p>
    # @!attribute key
    #   <p> The names of the metadata types that you can use to filter and group your results. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The metadata values that you can use to filter and group your results. </p>
    #   @return [Array<String>]
    class DimensionValues < Struct.new(
      nil,
      :key,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the billing view to disassociate source views from. </p>
    #   @return [String]
    # @!attribute source_views
    #   <p> A list of ARNs of the source billing views to disassociate. </p>
    #   @return [Array<String>]
    class DisassociateSourceViewsRequest < Struct.new(
      nil,
      :arn,
      :source_views,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The ARN of the billing view that the source views were disassociated from. </p>
    #   @return [String]
    class DisassociateSourceViewsResponse < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A time period for Enterprise Support billing.</p>
    # @!attribute begin_date
    #   <p>The begin date of the time period.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The end date of the time period.</p>
    #   @return [Time]
    class EnterpriseSupportTimePeriod < Struct.new(
      nil,
      :begin_date,
      :end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> See <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html">Expression</a>. Billing view only supports <code>LINKED_ACCOUNT</code>, <code>Tags</code>, and <code>CostCategories</code>. </p>
    # @!attribute dimensions
    #   <p> The specific <code>Dimension</code> to use for <code>Expression</code>. </p>
    #   @return [Types::DimensionValues]
    # @!attribute tags
    #   <p> The specific <code>Tag</code> to use for <code>Expression</code>. </p>
    #   @return [Types::TagValues]
    # @!attribute cost_categories
    #   <p> The filter that's based on <code>CostCategory</code> values. </p>
    #   @return [Types::CostCategoryValues]
    # @!attribute time_range
    #   <p> Specifies a time range filter for the billing view data. </p>
    #   @return [Types::TimeRange]
    class Expression < Struct.new(
      nil,
      :dimensions,
      :tags,
      :cost_categories,
      :time_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token from a previous response. Pass the value returned in <code>nextToken</code> to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to return per page. Range: 1 to 50. Default: 50.</p>
    #   @return [Integer]
    # @!attribute features
    #   <p>The feature to retrieve. Specify exactly one value. Valid values: <code>BILLING_ALERTS</code>, <code>RI_SHARING</code>, <code>RI_SHARING_HISTORY</code>, <code>CREDIT_SHARING</code>, <code>CREDIT_SHARING_HISTORY</code>, <code>CREDIT_LEVEL_SHARING</code>, <code>CREDIT_PREFERENCE_OPTIONS</code>.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>Filters to narrow results. Specify exactly one filter when supplied. The supported filter name is <code>PREFERENCE_KEY</code>, which accepts 1 to 10 values to match preference keys.</p>
    #   @return [Array<Types::BillingFeatureFilter>]
    class GetBillingPreferencesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :features,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_preferences
    #   <p>The list of preference entries matching the request.</p>
    #   @return [Array<Types::BillingPreferenceSummary>]
    # @!attribute next_token
    #   <p>Pagination token. Present when more pages are available; <code>null</code> when there are no more results.</p>
    #   @return [String]
    class GetBillingPreferencesResponse < Struct.new(
      nil,
      :billing_preferences,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    class GetBillingViewRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_view
    #   <p>The billing view element associated with the specified ARN. </p>
    #   @return [Types::BillingViewElement]
    class GetBillingViewResponse < Struct.new(
      nil,
      :billing_view,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID whose allocation history to retrieve. Must be a 12-digit numeric string.</p>
    #   @return [String]
    # @!attribute credit_id
    #   <p>Filters the result to a single credit. When omitted, returns allocation entries for all credits.</p>
    #   @return [Integer]
    # @!attribute start_date
    #   <p>Inclusive start date as Unix epoch seconds. Must be on or before <code>endDate</code>. The range from <code>startDate</code> to <code>endDate</code> cannot exceed 24 billing months.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>Inclusive end date as Unix epoch seconds.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>Pagination token from a previous response. Pass the value returned in <code>nextToken</code> to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to return per page. Range: 1 to 1000. Default: 100.</p>
    #   @return [Integer]
    class GetCreditAllocationHistoryRequest < Struct.new(
      nil,
      :account_id,
      :credit_id,
      :start_date,
      :end_date,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute credit_allocation_history_list
    #   <p>Allocation entries sorted by <code>billingMonth</code> in descending order.</p>
    #   @return [Array<Types::CreditAllocationHistoryEntry>]
    # @!attribute partial_results
    #   <p> <code>true</code> when data could not be retrieved for one or more billing months. The <code>failedMonths</code> field lists which months are missing.</p>
    #   @return [Boolean]
    # @!attribute failed_months
    #   <p>Billing months in <code>YYYY-MM</code> format that failed to return data. Non-empty only when <code>partialResults</code> is <code>true</code>.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Pagination token. Present when more pages are available; <code>null</code> when there are no more results.</p>
    #   @return [String]
    class GetCreditAllocationHistoryResponse < Struct.new(
      nil,
      :credit_allocation_history_list,
      :partial_results,
      :failed_months,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID. Must be a 12-digit numeric string.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The start date for the credit period as Unix epoch seconds. Must be a past date that is not more than one year before the current date.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The end date for the credit period as Unix epoch seconds. Must not be a future date and must be on or after <code>startDate</code>. Defaults to the current date when omitted.</p>
    #   @return [Time]
    # @!attribute payer_account_flag
    #   <p>When <code>true</code> and the caller is the management account, the response aggregates credits across the entire consolidated billing family. When <code>false</code> or omitted, returns only credits for the specified <code>accountId</code>.</p>
    #   @return [Boolean]
    class GetCreditsRequest < Struct.new(
      nil,
      :account_id,
      :start_date,
      :end_date,
      :payer_account_flag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute credits
    #   <p>The list of credits matching the request. Returns an empty list when no credits exist.</p>
    #   @return [Array<Types::CreditData>]
    class GetCreditsResponse < Struct.new(
      nil,
      :credits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for GetEnterpriseSupportChargeSummary.</p>
    # @!attribute billing_month
    #   <p>The billing month in YYYY-MM format. This must be a month in the past.</p>
    #   @return [String]
    class GetEnterpriseSupportChargeSummaryRequest < Struct.new(
      nil,
      :billing_month,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response structure for GetEnterpriseSupportChargeSummary.</p>
    # @!attribute payer_account_id
    #   <p>The payer account ID that is authorized to view Enterprise Support data for all accounts in its Support profile.</p>
    #   @return [String]
    # @!attribute billing_month
    #   <p>The billing month in YYYY-MM format. This must be a month in the past.</p>
    #   @return [String]
    # @!attribute billing_period_start_date
    #   <p>The start date of the billing period.</p>
    #   @return [Time]
    # @!attribute billing_period_end_date
    #   <p>The end date of the billing period.</p>
    #   @return [Time]
    # @!attribute is_estimated
    #   <p>Specifies whether the Support charge amount is estimated. When false, the charge amount is finalized.</p>
    #   @return [Boolean]
    # @!attribute bill_date
    #   <p>The date the bill was generated.</p>
    #   @return [Time]
    # @!attribute support_charge
    #   <p>The Support charge amount for the account.</p>
    #   @return [String]
    # @!attribute total_support_charge
    #   <p>The total Support charge amount for all accounts in the Support profile.</p>
    #   @return [String]
    # @!attribute support_discount
    #   <p>The support discount amount.</p>
    #   @return [String]
    # @!attribute total_support_eligible_spend
    #   <p>The total Support-eligible Spend from all accounts in the Support profile. This includes eligible spend from usage of Amazon Web Services, Reserved Instances, and Savings Plans.</p>
    #   @return [String]
    # @!attribute total_support_eligible_usage_spend
    #   <p>The total Support-eligible spend from usage of Amazon Web Services from all accounts in the Support profile.</p>
    #   @return [String]
    # @!attribute total_support_eligible_reserved_instance_spend
    #   <p>The total Support-eligible Reserved Instance spend from all accounts in the Support profile.</p>
    #   @return [String]
    # @!attribute total_support_eligible_savings_plan_spend
    #   <p>The total Support-eligible Savings Plan spend from all accounts in the Support profile.</p>
    #   @return [String]
    # @!attribute support_charge_percentage
    #   <p>The percentage applied to the total Support-eligible spend to calculate the total Support charge across all accounts in the Support profile.</p>
    #   @return [String]
    # @!attribute support_effective_pricing_plan
    #   <p>The effective pricing plan used for the support charge calculation.</p>
    #   @return [Types::PricingPlan]
    class GetEnterpriseSupportChargeSummaryResponse < Struct.new(
      nil,
      :payer_account_id,
      :billing_month,
      :billing_period_start_date,
      :billing_period_end_date,
      :is_estimated,
      :bill_date,
      :support_charge,
      :total_support_charge,
      :support_discount,
      :total_support_eligible_spend,
      :total_support_eligible_usage_spend,
      :total_support_eligible_reserved_instance_spend,
      :total_support_eligible_savings_plan_spend,
      :support_charge_percentage,
      :support_effective_pricing_plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for GetEnterpriseSupportContractDetails.</p>
    # @!attribute billing_month
    #   <p>The billing month in YYYY-MM format. This must be a month in the past.</p>
    #   @return [String]
    class GetEnterpriseSupportContractDetailsRequest < Struct.new(
      nil,
      :billing_month,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response structure for GetEnterpriseSupportContractDetails.</p>
    # @!attribute is_contract_active
    #   <p>When true, the Enterprise Support contract is active. When false, the Enterprise Support Contract is inactive.</p>
    #   @return [Boolean]
    # @!attribute support_allocation_method
    #   <p>The method used to distribute the total Support charge amount across each account in the Support profile. Valid values: Proportional, Fixed_Percentage. Proportional means support charges are distributed to each account in proportion to its eligible Spend. Fixed_Percentage means support charges are distributed across accounts according to pre-configured percentages from the contract.</p>
    #   @return [String]
    # @!attribute support_reserved_instance_amortization_start_date
    #   <p>When supportReservedInstanceTreatmentMethod = AmortizedCustom, only amortized fees for Reserved Instances purchased on or after this date are included in the calculation. This field is Null for all other treatment methods.</p>
    #   @return [Time]
    # @!attribute support_reserved_instance_treatment_method
    #   <p>The method used to include Reserved Instance (RI) fees in the Enterprise Support charge calculation. Valid values: None (RI fees excluded from Support-eligible spend), Upfront (full upfront RI fees included in month of purchase), Amortized (RI fees spread over commitment term for RIs purchased on or after Support subscription start date), AmortizedCustom (same as Amortized but only for RIs purchased on or after a specified custom start date), AmortizedAll (RI fees amortized for all active RIs including those purchased before Support subscription started).</p>
    #   @return [String]
    # @!attribute support_savings_plans_amortization_start_date
    #   <p>This is applicable when supportSavingsPlansTreatmentMethod = Amortized and is Null for all other methods. It shows the start date from which Savings Plan fees are included in Support Eligible Spend.</p>
    #   @return [Time]
    # @!attribute support_savings_plans_treatment_method
    #   <p>The method used to include Savings Plans fees in Enterprise Support charge calculations. Valid values: None (Savings Plan fees excluded from Support-eligible spend), Upfront (full upfront Savings Plan fees included in month of purchase), Amortized (Savings Plan fees spread over commitment term for Savings Plans purchased on or after Support subscription start date), AmortizedCustom (same as Amortized but only for Savings Plans purchased on or after a specified custom start date), AmortizedAll (Savings Plan fees amortized for all active Savings Plans including those purchased before Support subscription started).</p>
    #   @return [String]
    # @!attribute support_prorate_start_date
    #   <p>The start date for accounts subscribed or unsubscribed to Support billing during the billing month.</p>
    #   @return [Time]
    # @!attribute contract_payer_account_ids
    #   <p>The list of accounts covered by the Enterprise Support contract.</p>
    #   @return [Array<Types::ContractAccount>]
    # @!attribute charged_payer_account_ids
    #   <p>The list of payer accounts and their charge allocation percentages.</p>
    #   @return [Array<Types::ChargeAccount>]
    # @!attribute additional_support_charge
    #   <p>Any Additional support charges applied to the contract.</p>
    #   @return [Array<Types::AdditionalCharge>]
    # @!attribute additional_support_eligible_usage_spend
    #   <p>Any Additional support-eligible usage spend charges.</p>
    #   @return [Array<Types::AdditionalCharge>]
    # @!attribute pricing_plans
    #   <p>The pricing plans associated with this Enterprise Support contract.</p>
    #   @return [Array<Types::PricingPlan>]
    class GetEnterpriseSupportContractDetailsResponse < Struct.new(
      nil,
      :is_contract_active,
      :support_allocation_method,
      :support_reserved_instance_amortization_start_date,
      :support_reserved_instance_treatment_method,
      :support_savings_plans_amortization_start_date,
      :support_savings_plans_treatment_method,
      :support_prorate_start_date,
      :contract_payer_account_ids,
      :charged_payer_account_ids,
      :additional_support_charge,
      :additional_support_eligible_usage_spend,
      :pricing_plans,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the billing view resource to which the policy is attached to. </p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the billing view resource to which the policy is attached to. </p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource-based policy document attached to the resource in <code>JSON</code> format. </p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      nil,
      :resource_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing failed because of an unknown error, exception, or failure. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Enterprise Support charges for a linked account.</p>
    # @!attribute account_id
    #   <p>The linked account ID.</p>
    #   @return [String]
    # @!attribute payer_account_id
    #   <p>The payer account ID that is authorized to view Enterprise Support data for all accounts in its Support profile.</p>
    #   @return [String]
    # @!attribute account_type
    #   <p>The type of account.</p>
    #   @return [String]
    # @!attribute billable_seconds
    #   <p>The number of billable seconds in the billing period based on when the account was subscribed to Enterprise Support.</p>
    #   @return [Integer]
    # @!attribute total_seconds
    #   <p>The total number of seconds in the billing period.</p>
    #   @return [Integer]
    # @!attribute total_support_eligible_spend
    #   <p>The total support-eligible spend for this account.</p>
    #   @return [String]
    # @!attribute prorated_total_support_eligible_spend
    #   <p>The prorated total support-eligible spend based on when the account was subscribed to Enterprise Support.</p>
    #   @return [String]
    # @!attribute linked_time_periods
    #   <p>The time periods during which this account was linked.</p>
    #   @return [Array<Types::EnterpriseSupportTimePeriod>]
    # @!attribute subscription_time_periods
    #   <p>The subscription time periods for this account.</p>
    #   @return [Array<Types::EnterpriseSupportTimePeriod>]
    # @!attribute total_support_eligible_reserved_instance_spend
    #   <p>The total support-eligible Reserved Instance spend for this account.</p>
    #   @return [String]
    # @!attribute total_support_eligible_savings_plan_spend
    #   <p>The total support-eligible Savings Plan spend for this account.</p>
    #   @return [String]
    # @!attribute support_eligible_spend_by_service
    #   <p>The support-eligible spend broken down by service.</p>
    #   @return [Array<Types::ServiceLevelAccountUsage>]
    class LinkedAccountCharge < Struct.new(
      nil,
      :account_id,
      :payer_account_id,
      :account_type,
      :billable_seconds,
      :total_seconds,
      :total_support_eligible_spend,
      :prorated_total_support_eligible_spend,
      :linked_time_periods,
      :subscription_time_periods,
      :total_support_eligible_reserved_instance_spend,
      :total_support_eligible_savings_plan_spend,
      :support_eligible_spend_by_service,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_range
    #   <p> The billing period to query. If you don't provide a time range, the current billing period, which is the calendar month in UTC, is used. </p>
    #   @return [Types::BillingViewSegmentTimeRange]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that uniquely identifies the billing view to query. If you don't provide an ARN, the caller's <code>PRIMARY</code> billing view is used. The ARN must reference a primary billing view. Custom billing views aren't supported. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The number of entries a paginated response contains. Valid values range from 1 to 100. The default is 100. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The pagination token that is used on subsequent calls to list billing view segments. </p>
    #   @return [String]
    class ListBillingViewSegmentsRequest < Struct.new(
      nil,
      :time_range,
      :arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p> A list of billing view segments. Each segment covers a portion of the requested time period. The response omits hidden segments, so the segments it returns might not cover the entire requested time period. </p>
    #   @return [Array<Types::BillingViewSegmentsListElement>]
    # @!attribute next_token
    #   <p> The pagination token that is used on subsequent calls to list billing view segments. </p>
    #   @return [String]
    class ListBillingViewSegmentsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute active_time_range
    #   <p> The time range for the billing views listed. <code>PRIMARY</code> billing view is always listed. <code>BILLING_GROUP</code> billing views are listed for time ranges when the associated billing group resource in Billing Conductor is active. The time range must be within one calendar month. </p>
    #   @return [Types::ActiveTimeRange]
    # @!attribute arns
    #   <p>The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [Array<String>]
    # @!attribute billing_view_types
    #   <p>The type of billing view.</p>
    #   @return [Array<String>]
    # @!attribute names
    #   <p> Filters the list of billing views by name. You can specify search criteria to match billing view names based on the search option provided. </p>
    #   @return [Array<Types::StringSearch>]
    # @!attribute owner_account_id
    #   <p> The list of owners of the billing view. </p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p> Filters the results to include only billing views that use the specified account as a source. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of billing views to retrieve. Default is 100. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that is used on subsequent calls to list billing views.</p>
    #   @return [String]
    class ListBillingViewsRequest < Struct.new(
      nil,
      :active_time_range,
      :arns,
      :billing_view_types,
      :names,
      :owner_account_id,
      :source_account_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_views
    #   <p>A list of <code>BillingViewListElement</code> retrieved.</p>
    #   @return [Array<Types::BillingViewListElement>]
    # @!attribute next_token
    #   <p>The pagination token to use on subsequent calls to list billing views. </p>
    #   @return [String]
    class ListBillingViewsResponse < Struct.new(
      nil,
      :billing_views,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the billing month and optional filters used to retrieve Business Support charges broken down by linked account.</p>
    # @!attribute billing_month
    #   <p>The billing month to retrieve Business Support charges for, in YYYY-MM format. You can request the current month (charges will be estimated) or a past month (charges will be finalized).</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The linked account ID to filter results to a specific account. If you don't specify a value, the response includes charges for all linked accounts.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. Default is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token for the next page of results.</p>
    #   @return [String]
    class ListBusinessSupportAccountChargesRequest < Struct.new(
      nil,
      :billing_month,
      :account_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the Business Support charges broken down by linked account for the specified billing month, along with account and spend totals.</p>
    # @!attribute billing_month
    #   <p>The billing month for the returned charges, in YYYY-MM format.</p>
    #   @return [String]
    # @!attribute is_estimated
    #   <p>Specifies whether the Support charge amount is estimated. When false, the charge amount is finalized.</p>
    #   @return [Boolean]
    # @!attribute total_support_charge
    #   <p>The total Business Support charge amount for all accounts in the billing month.</p>
    #   @return [String]
    # @!attribute total_support_eligible_spend
    #   <p>The total Support-eligible spend from all accounts in the billing month. This includes eligible spend from usage of Amazon Web Services.</p>
    #   @return [String]
    # @!attribute account_count
    #   <p>The total number of linked accounts with Business Support charges in the billing month.</p>
    #   @return [Integer]
    # @!attribute account_charges
    #   <p>The list of Business Support charges per linked account.</p>
    #   @return [Array<Types::BusinessSupportAccountCharge>]
    # @!attribute next_token
    #   <p>The pagination token for the next page of results.</p>
    #   @return [String]
    class ListBusinessSupportAccountChargesResponse < Struct.new(
      nil,
      :billing_month,
      :is_estimated,
      :total_support_charge,
      :total_support_eligible_spend,
      :account_count,
      :account_charges,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the optional filters used to retrieve the history of Business Support subscription contracts across accounts.</p>
    # @!attribute billing_month
    #   <p>The billing month to retrieve subscription contracts for, in YYYY-MM format. If you don't specify a value, defaults to the current month.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID to filter results to a specific account. If you don't specify a value, the response includes subscription history for all accounts.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The start date to filter subscription contracts from.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The end date to filter subscription contracts to.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. Default is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token for the next page of results.</p>
    #   @return [String]
    class ListBusinessSupportSubscriptionHistoryRequest < Struct.new(
      nil,
      :billing_month,
      :account_id,
      :start_date,
      :end_date,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the list of Business Support subscription contracts that match the request filters.</p>
    # @!attribute subscription_contracts
    #   <p>The list of Business Support subscription contracts.</p>
    #   @return [Array<Types::BusinessSupportSubscriptionContract>]
    # @!attribute next_token
    #   <p>The pagination token for the next page of results.</p>
    #   @return [String]
    class ListBusinessSupportSubscriptionHistoryResponse < Struct.new(
      nil,
      :subscription_contracts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for ListEnterpriseSupportLinkedAccountCharges.</p>
    # @!attribute billing_month
    #   <p>The billing month in YYYY-MM format. This must be a month in the past.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The linked account ID to filter results to a specific account. If you don't specify a value, the response includes charges for all linked accounts.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. Default is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token for the next page of results.</p>
    #   @return [String]
    class ListEnterpriseSupportLinkedAccountChargesRequest < Struct.new(
      nil,
      :billing_month,
      :account_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response structure for ListEnterpriseSupportLinkedAccountCharges.</p>
    # @!attribute linked_account
    #   <p>The list of Enterprise Support charges per linked account.</p>
    #   @return [Array<Types::LinkedAccountCharge>]
    # @!attribute next_token
    #   <p>The pagination token for the next page of results.</p>
    #   @return [String]
    class ListEnterpriseSupportLinkedAccountChargesResponse < Struct.new(
      nil,
      :linked_account,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The number of entries a paginated response contains. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The pagination token that is used on subsequent calls to list billing views. </p>
    #   @return [String]
    class ListSourceViewsForBillingViewRequest < Struct.new(
      nil,
      :arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_views
    #   <p>A list of billing views used as the data source for the custom billing view. </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> The pagination token that is used on subsequent calls to list billing views. </p>
    #   @return [String]
    class ListSourceViewsForBillingViewResponse < Struct.new(
      nil,
      :source_views,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_tags
    #   <p> A list of tag key value pairs that are associated with the resource. </p>
    #   @return [Array<Types::ResourceTag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pricing plan for Enterprise Support billing.</p>
    # @!attribute pricing_plan_id
    #   <p>The unique identifier for the pricing plan.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the pricing plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the pricing plan.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The start date of the pricing plan.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The end date of the pricing plan.</p>
    #   @return [Time]
    # @!attribute plan_discount_percent
    #   <p>The discount percentage applied by this pricing plan.</p>
    #   @return [String]
    # @!attribute discount_applies_to_minimum_charge
    #   <p>Whether the discount applies to the minimum Support charge.</p>
    #   @return [Boolean]
    # @!attribute minimum_charge
    #   <p>The minimum Support charge amount for this pricing plan.</p>
    #   @return [String]
    # @!attribute tiered
    #   <p>Whether the pricing plan uses tiered pricing.</p>
    #   @return [String]
    # @!attribute tiers
    #   <p>The pricing tiers within this plan.</p>
    #   @return [Array<Types::PricingPlanTier>]
    class PricingPlan < Struct.new(
      nil,
      :pricing_plan_id,
      :name,
      :description,
      :start_date,
      :end_date,
      :plan_discount_percent,
      :discount_applies_to_minimum_charge,
      :minimum_charge,
      :tiered,
      :tiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tier within an Enterprise Support pricing plan.</p>
    # @!attribute tier_minimum
    #   <p>The minimum spend threshold for this tier.</p>
    #   @return [String]
    # @!attribute tier_maximum
    #   <p>The maximum spend threshold for this tier.</p>
    #   @return [String]
    # @!attribute base_charge
    #   <p>The base charge for this tier.</p>
    #   @return [String]
    # @!attribute additional_percentage_of_aggregate_charges
    #   <p>The additional percentage applied to aggregate charges in this tier.</p>
    #   @return [String]
    # @!attribute aggregate_charges_adjustment
    #   <p>The adjustment applied to aggregate charges.</p>
    #   @return [String]
    # @!attribute incremental
    #   <p>Whether the tier charges are calculated incrementally.</p>
    #   @return [Boolean]
    # @!attribute increment
    #   <p>The increment amount for incremental tier calculations.</p>
    #   @return [String]
    # @!attribute increment_charge
    #   <p>The charge per increment.</p>
    #   @return [String]
    class PricingPlanTier < Struct.new(
      nil,
      :tier_minimum,
      :tier_maximum,
      :base_charge,
      :additional_percentage_of_aggregate_charges,
      :aggregate_charges_adjustment,
      :incremental,
      :increment,
      :increment_charge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute promo_code
    #   <p>The promotional credit code to redeem.</p>
    #   @return [String]
    class RedeemCreditsRequest < Struct.new(
      nil,
      :promo_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RedeemCreditsResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The specified ARN in the request doesn't exist. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> Value is a list of resource IDs that were not found. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> Value is the type of resource that was not found. </p>
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

    # <p> The tag structure that contains a tag key and value. </p>
    # @!attribute key
    #   <p> The key that's associated with the tag. </p>
    #   @return [String]
    # @!attribute value
    #   <p> The value that's associated with the tag. </p>
    #   @return [String]
    class ResourceTag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Service-level usage details by account.</p>
    # @!attribute service_code
    #   <p>The service code for which to return Support-eligible spend data.</p>
    #   @return [String]
    # @!attribute total_support_eligible_spend
    #   <p>The total support-eligible spend for the service.</p>
    #   @return [String]
    class ServiceLevelAccountUsage < Struct.new(
      nil,
      :service_code,
      :total_support_eligible_spend,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> You've reached the limit of resources you can create, or exceeded the size of an individual resource. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The ID of the resource. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of Amazon Web Services resource. </p>
    #   @return [String]
    # @!attribute service_code
    #   <p> The container for the <code>serviceCode</code>. </p>
    #   @return [String]
    # @!attribute quota_code
    #   <p> The container for the <code>quotaCode</code>. </p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A structure that defines how to search for string values. You can specify a search option and the value to search for. </p>
    # @!attribute search_option
    #   <p> The type of search operation to perform on the string value. Determines how the search value is matched against the target field. </p>
    #   @return [String]
    # @!attribute search_value
    #   <p> The string value to use in the search operation. This value is compared against the target field using the specified search option. </p>
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
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p> A list of tag key value pairs that are associated with the resource. </p>
    #   @return [Array<Types::ResourceTag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :resource_tags,
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

    # <p> The values that are available for a tag. </p>
    # @!attribute key
    #   <p> The key for the tag. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The specific value of the tag. </p>
    #   @return [Array<String>]
    class TagValues < Struct.new(
      nil,
      :key,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. </p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies a time range with inclusive begin and end dates. </p>
    # @!attribute begin_date_inclusive
    #   <p> The inclusive start date of the time range. </p>
    #   @return [Time]
    # @!attribute end_date_inclusive
    #   <p> The inclusive end date of the time range. </p>
    #   @return [Time]
    class TimeRange < Struct.new(
      nil,
      :begin_date_inclusive,
      :end_date_inclusive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    # @!attribute resource_tag_keys
    #   <p> A list of tag key value pairs that are associated with the resource. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
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

    # @!attribute feature
    #   <p>The feature to update. Valid values: <code>BILLING_ALERTS</code>, <code>RI_SHARING</code>, <code>CREDIT_SHARING</code>, <code>CREDIT_LEVEL_SHARING</code>, <code>CREDIT_PREFERENCE_OPTIONS</code>. The history features (<code>RI_SHARING_HISTORY</code> and <code>CREDIT_SHARING_HISTORY</code>) are read-only and cannot be updated.</p>
    #   @return [String]
    # @!attribute billing_preferences_per_key
    #   <p>Key/value pairs to apply. All keys in a single request must be valid for the specified <code>feature</code> and must not be duplicated. For <code>CREDIT_PREFERENCE_OPTIONS</code>, all keys must reference the same <code>creditId</code>.</p>
    #   @return [Array<Types::BillingPreferenceForKey>]
    class UpdateBillingPreferencesRequest < Struct.new(
      nil,
      :feature,
      :billing_preferences_per_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateBillingPreferencesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the billing view. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the billing view. </p>
    #   @return [String]
    # @!attribute data_filter_expression
    #   <p>See <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html">Expression</a>. Billing view only supports <code>LINKED_ACCOUNT</code>, <code>Tags</code>, and <code>CostCategories</code>. </p>
    #   @return [Types::Expression]
    class UpdateBillingViewRequest < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :data_filter_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute updated_at
    #   <p> The time when the billing view was last updated. </p>
    #   @return [Time]
    class UpdateBillingViewResponse < Struct.new(
      nil,
      :arn,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The field's information of a request that resulted in an exception. </p>
    # @!attribute name
    #   <p>The name of the field.</p>
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
