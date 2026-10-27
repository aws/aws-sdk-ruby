# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Billing
  module Types

    # You don't have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time range with a start and end time.
    #
    # @!attribute [rw] active_after_inclusive
    #   The inclusive time range start date.
    #   @return [Time]
    #
    # @!attribute [rw] active_before_inclusive
    #   The inclusive time range end date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ActiveTimeRange AWS API Documentation
    #
    class ActiveTimeRange < Struct.new(
      :active_after_inclusive,
      :active_before_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # An additional charge applied to an Enterprise Support contract.
    #
    # @!attribute [rw] description
    #   A description of the additional charge.
    #   @return [String]
    #
    # @!attribute [rw] amount
    #   The charge amount.
    #   @return [String]
    #
    # @!attribute [rw] charge_type
    #   The type of additional charge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/AdditionalCharge AWS API Documentation
    #
    class AdditionalCharge < Struct.new(
      :description,
      :amount,
      :charge_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A recipient copied as a viewer on the executive approval request, in
    # addition to the approver.
    #
    # @!attribute [rw] email
    #   The email address of the recipient. This value is 3–256 characters
    #   and must be a valid email address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/AdditionalRecipient AWS API Documentation
    #
    class AdditionalRecipient < Struct.new(
      :email)
      SENSITIVE = [:email]
      include Aws::Structure
    end

    # A monetary amount with a currency code. Used throughout the Billing
    # API to represent credit balances, allocations, and adjustments.
    #
    # @!attribute [rw] currency_code
    #   The ISO 4217 currency code for the amount (for example, `USD`).
    #   @return [String]
    #
    # @!attribute [rw] currency_amount
    #   The amount as a decimal string (for example, `"743.21"`). Negative
    #   values represent credits that reduce a bill.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/Amount AWS API Documentation
    #
    class Amount < Struct.new(
      :currency_code,
      :currency_amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the executive approver who signs off on an
    # investment attestation.
    #
    # @!attribute [rw] name
    #   The name of the approver as it appears on the contract. This value
    #   can be up to 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the approver, such as `Chief Financial Officer`. This
    #   value can be up to 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the approver. This value is 3–256 characters
    #   and must be a valid email address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ApproverDetails AWS API Documentation
    #
    class ApproverDetails < Struct.new(
      :name,
      :title,
      :email)
      SENSITIVE = [:name, :title, :email]
      include Aws::Structure
    end

    # @!attribute [rw] contract_arn
    #   The Amazon Resource Name (ARN) of the contract to associate with
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] contract_document_id
    #   The contract ID from the contract document. It can be found in the
    #   top right corner of your contract's pages. This value confirms that
    #   you have access to the contract you are associating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/AssociateContractRequest AWS API Documentation
    #
    class AssociateContractRequest < Struct.new(
      :contract_arn,
      :contract_document_id)
      SENSITIVE = [:contract_document_id]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/AssociateContractResponse AWS API Documentation
    #
    class AssociateContractResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the billing view to associate
    #   source views with.
    #   @return [String]
    #
    # @!attribute [rw] source_views
    #   A list of ARNs of the source billing views to associate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/AssociateSourceViewsRequest AWS API Documentation
    #
    class AssociateSourceViewsRequest < Struct.new(
      :arn,
      :source_views)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the billing view that the source views were associated
    #   with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/AssociateSourceViewsResponse AWS API Documentation
    #
    class AssociateSourceViewsResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an investment attestation submission, including the
    # value being attested and how the resulting investment is distributed.
    #
    # @!attribute [rw] attestation_value
    #   The value being attested, expressed as either a monetary amount or
    #   one or more quantities. Exactly one form is set.
    #   @return [Types::AttestationValue]
    #
    # @!attribute [rw] investment_distributions
    #   The distribution of the resulting investment across the eligible
    #   investment accounts on the contract. If you omit this value, the
    #   full investment is allocated to the single eligible investment
    #   account on the contract. This value is required when multiple
    #   investment accounts are eligible. When you provide this value, the
    #   sum of all distributions must equal the resulting monetary
    #   investment value (the attested amount, or the value computed from
    #   the attested quantities using the investment multipliers). The list
    #   contains at most 200 distributions.
    #   @return [Array<Types::InvestmentDistribution>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/AttestationDetails AWS API Documentation
    #
    class AttestationDetails < Struct.new(
      :attestation_value,
      :investment_distributions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A quantity-based attestation value, such as a count of workloads
    # migrated.
    #
    # @!attribute [rw] attestation_volume
    #   The number of units being attested, expressed as a decimal string to
    #   preserve precision. The value is digits with an optional decimal
    #   point and is 1–1000 characters.
    #   @return [String]
    #
    # @!attribute [rw] attestation_unit
    #   The unit of the attestation, such as `workloads migrated`. This
    #   value is 1–1000 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/AttestationQuantity AWS API Documentation
    #
    class AttestationQuantity < Struct.new(
      :attestation_volume,
      :attestation_unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value being attested. This is a union in which exactly one member
    # is set. Set `attestationAmount` to attest a monetary amount directly,
    # or set `attestationQuantities` to attest one or more quantities that
    # are converted to a value using the investment's multipliers.
    #
    # @note AttestationValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] attestation_amount
    #   The value attested as a monetary amount. This form is valid only
    #   when the investment has no multiplier.
    #   @return [Types::Amount]
    #
    # @!attribute [rw] attestation_quantities
    #   The value attested as one or more quantities, each with its own
    #   unit. The list contains at most 50 quantities.
    #   @return [Array<Types::AttestationQuantity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/AttestationValue AWS API Documentation
    #
    class AttestationValue < Struct.new(
      :attestation_amount,
      :attestation_quantities,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AttestationAmount < AttestationValue; end
      class AttestationQuantities < AttestationValue; end
      class Unknown < AttestationValue; end
    end

    # A filter that narrows the set of preferences returned by
    # `GetBillingPreferences`.
    #
    # @!attribute [rw] name
    #   The filter name. Currently the only supported value is
    #   `PREFERENCE_KEY`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter values to match. For `PREFERENCE_KEY`, supply 1 to 10
    #   preference key values to match.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BillingFeatureFilter AWS API Documentation
    #
    class BillingFeatureFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specific billing period identified by year and month.
    #
    # @!attribute [rw] year
    #   The four-digit year of the billing period.
    #   @return [Integer]
    #
    # @!attribute [rw] month
    #   The month of the billing period as an integer between 1 and 12.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BillingPeriod AWS API Documentation
    #
    class BillingPeriod < Struct.new(
      :year,
      :month)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single key/value entry used to update a billing preference.
    #
    # @!attribute [rw] key
    #   The preference key. Format depends on the feature being updated.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The preference value. Valid values: `ENABLED` or `DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BillingPreferenceForKey AWS API Documentation
    #
    class BillingPreferenceForKey < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single billing preference entry returned by `GetBillingPreferences`.
    #
    # @!attribute [rw] feature
    #   The feature this preference belongs to.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The preference key. Format depends on the feature.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The preference value. Valid values: `ENABLED` or `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] account_name
    #   The display name of the account. Populated together with
    #   `accountId`; `null` otherwise.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The associated Amazon Web Services account ID. Populated for
    #   account-list keys; `null` otherwise.
    #   @return [String]
    #
    # @!attribute [rw] billing_period
    #   The billing period associated with the preference change. Populated
    #   only for the history features `RI_SHARING_HISTORY` and
    #   `CREDIT_SHARING_HISTORY`.
    #   @return [Types::BillingPeriod]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BillingPreferenceSummary AWS API Documentation
    #
    class BillingPreferenceSummary < Struct.new(
      :feature,
      :key,
      :value,
      :account_name,
      :account_id,
      :billing_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata associated to the billing view.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The account name of the billing view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the billing view.
    #   @return [String]
    #
    # @!attribute [rw] billing_view_type
    #   The type of billing group.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The account owner of the billing view.
    #   @return [String]
    #
    # @!attribute [rw] source_account_id
    #   The Amazon Web Services account ID that owns the source billing
    #   view, if this is a derived billing view.
    #   @return [String]
    #
    # @!attribute [rw] data_filter_expression
    #   See [Expression][1]. Billing view only supports `LINKED_ACCOUNT`,
    #   `Tags`, and `CostCategories`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] created_at
    #   The time when the billing view was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the billing view was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] derived_view_count
    #   The number of billing views that use this billing view as a source.
    #   @return [Integer]
    #
    # @!attribute [rw] source_view_count
    #   The number of source views associated with this billing view.
    #   @return [Integer]
    #
    # @!attribute [rw] view_definition_last_updated_at
    #   The timestamp of when the billing view definition was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] health_status
    #   The current health status of the billing view.
    #   @return [Types::BillingViewHealthStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BillingViewElement AWS API Documentation
    #
    class BillingViewElement < Struct.new(
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
      :health_status)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # Represents the health status of a billing view, including a status
    # code and optional reasons for the status.
    #
    # @!attribute [rw] status_code
    #   The current health status code of the billing view.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   A list of reasons explaining the current health status, if
    #   applicable.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BillingViewHealthStatus AWS API Documentation
    #
    class BillingViewHealthStatus < Struct.new(
      :status_code,
      :status_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown when a billing view's health status prevents an
    # operation from being performed. This may occur if the billing view is
    # in a state other than `HEALTHY`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BillingViewHealthStatusException AWS API Documentation
    #
    class BillingViewHealthStatusException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of a billing view.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A list of names of the Billing view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the billing view.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The list of owners of the Billing view.
    #   @return [String]
    #
    # @!attribute [rw] source_account_id
    #   The Amazon Web Services account ID that owns the source billing
    #   view, if this is a derived billing view.
    #   @return [String]
    #
    # @!attribute [rw] billing_view_type
    #   The type of billing view.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The current health status of the billing view.
    #   @return [Types::BillingViewHealthStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BillingViewListElement AWS API Documentation
    #
    class BillingViewListElement < Struct.new(
      :arn,
      :name,
      :description,
      :owner_account_id,
      :source_account_id,
      :billing_view_type,
      :health_status)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # Specifies a time range with an inclusive begin date and an exclusive
    # end date.
    #
    # @!attribute [rw] begin_date_inclusive
    #   The inclusive start of the time range. This value can't be in the
    #   future.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_exclusive
    #   The exclusive end of the time range. This value must be after
    #   `beginDateInclusive`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BillingViewSegmentTimeRange AWS API Documentation
    #
    class BillingViewSegmentTimeRange < Struct.new(
      :begin_date_inclusive,
      :end_date_exclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # A billing view segment. A segment represents a time range during which
    # the billing domain and account relationships for a billing view
    # remained unchanged.
    #
    # @!attribute [rw] domain
    #   The billing domain for this segment. The following values are valid:
    #
    #   * `PRO_FORMA` - Data shaped by Billing Conductor that doesn't
    #     reflect the final charges owed to Amazon Web Services.
    #
    #   * `BILLABLE` - Data that represents the final charges owed to Amazon
    #     Web Services.
    #   @return [String]
    #
    # @!attribute [rw] time_range
    #   The time range during which this segment is effective.
    #   @return [Types::BillingViewSegmentTimeRange]
    #
    # @!attribute [rw] billing_transfer_account_id
    #   The billing transfer account ID. The response includes this field
    #   only when the caller is a billing transfer source account. The
    #   response omits this field for billing group billing views.
    #   @return [String]
    #
    # @!attribute [rw] management_account_id
    #   The management account ID of the organization. The response includes
    #   this field for organization member accounts.
    #   @return [String]
    #
    # @!attribute [rw] billing_group_primary_account_id
    #   The billing group primary account ID. The response includes this
    #   field for billing group members. Compare this value to your own
    #   account ID to determine whether you are the primary account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BillingViewSegmentsListElement AWS API Documentation
    #
    class BillingViewSegmentsListElement < Struct.new(
      :domain,
      :time_range,
      :billing_transfer_account_id,
      :management_account_id,
      :billing_group_primary_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Business Support charges for a linked account.
    #
    # @!attribute [rw] account_id
    #   The linked account ID.
    #   @return [String]
    #
    # @!attribute [rw] support_plan_name
    #   The Support plan name for this account. Valid values:
    #   `AWSSupportBusiness` (Business Support plan), `AWSSupportDeveloper`
    #   (Developer Support plan), `AWSSupportEssential` (Basic Support
    #   plan).
    #   @return [String]
    #
    # @!attribute [rw] total_charge
    #   The total Business Support charge amount for this account in the
    #   billing month.
    #   @return [String]
    #
    # @!attribute [rw] total_usage_basis
    #   The total Support-eligible spend used as the basis for calculating
    #   the Business Support charge for this account.
    #   @return [String]
    #
    # @!attribute [rw] tier_charges
    #   The tier-level charges that make up the total Business Support
    #   charge for this account. Each tier represents a spend range with its
    #   own rate.
    #   @return [Array<Types::BusinessSupportTierCharge>]
    #
    # @!attribute [rw] support_discount
    #   The discount applied to the Business Support charge for this
    #   account, if any. This field is absent when no discount applies.
    #   @return [Types::BusinessSupportDiscount]
    #
    # @!attribute [rw] support_eligible_spend_by_service
    #   The Support-eligible spend broken down by contributing service for
    #   this account.
    #   @return [Array<Types::BusinessSupportServiceSpend>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BusinessSupportAccountCharge AWS API Documentation
    #
    class BusinessSupportAccountCharge < Struct.new(
      :account_id,
      :support_plan_name,
      :total_charge,
      :total_usage_basis,
      :tier_charges,
      :support_discount,
      :support_eligible_spend_by_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # A discount applied to a Business Support account charge, including the
    # discount amount, percentage, type, and source.
    #
    # @!attribute [rw] discount_amount
    #   The discount amount applied to the Business Support charge. This
    #   value is negative, representing a reduction in the charge.
    #   @return [String]
    #
    # @!attribute [rw] discount_percentage
    #   The discount percentage applied to the Business Support charge,
    #   expressed as a decimal (for example, `0.12` for a 12% discount).
    #   @return [String]
    #
    # @!attribute [rw] discount_type
    #   The type of discount applied. Valid values: `Distributor_Discount`
    #   (a discount applied through a distributor arrangement),
    #   `SPP_Discount` (a discount applied through the Solution Provider
    #   Program).
    #   @return [String]
    #
    # @!attribute [rw] discount_source
    #   The source or program through which the discount was applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BusinessSupportDiscount AWS API Documentation
    #
    class BusinessSupportDiscount < Struct.new(
      :discount_amount,
      :discount_percentage,
      :discount_type,
      :discount_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service-level spend entry contributing to Business Support eligible
    # spend.
    #
    # @!attribute [rw] contributing_service
    #   The name of the Amazon Web Services service contributing to the
    #   Support-eligible spend.
    #   @return [String]
    #
    # @!attribute [rw] item_type
    #   The type of the line item. Valid values: `Usage`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the service spend entry.
    #   @return [String]
    #
    # @!attribute [rw] charge_amount
    #   The Support-eligible spend amount for this service.
    #   @return [String]
    #
    # @!attribute [rw] currency
    #   The ISO 4217 currency code for the charge amount (for example,
    #   `USD`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BusinessSupportServiceSpend AWS API Documentation
    #
    class BusinessSupportServiceSpend < Struct.new(
      :contributing_service,
      :item_type,
      :description,
      :charge_amount,
      :currency)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Business Support subscription contract for an account.
    #
    # @!attribute [rw] account_id
    #   The account ID associated with this subscription contract.
    #   @return [String]
    #
    # @!attribute [rw] plan_name
    #   The name of the Support plan for this subscription contract. Valid
    #   values: `AWSSupportBusiness` (Business Support plan),
    #   `AWSSupportDeveloper` (Developer Support plan),
    #   `AWSSupportEssential` (Basic Support plan).
    #   @return [String]
    #
    # @!attribute [rw] contract_start_date
    #   The start date of the subscription contract.
    #   @return [Time]
    #
    # @!attribute [rw] contract_end_date
    #   The end date of the subscription contract.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BusinessSupportSubscriptionContract AWS API Documentation
    #
    class BusinessSupportSubscriptionContract < Struct.new(
      :account_id,
      :plan_name,
      :contract_start_date,
      :contract_end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tier-level charge within a Business Support pricing plan. Business
    # Support uses tiered pricing where different percentage rates apply to
    # different ranges of Support-eligible spend.
    #
    # @!attribute [rw] tier_description
    #   A human-readable description of the pricing tier, including the
    #   spend range and percentage rate applied.
    #   @return [String]
    #
    # @!attribute [rw] tier_rate
    #   The percentage rate applied to Support-eligible spend within this
    #   pricing tier.
    #   @return [String]
    #
    # @!attribute [rw] usage_slice
    #   The amount of Support-eligible spend that falls within this pricing
    #   tier.
    #   @return [String]
    #
    # @!attribute [rw] tier_charge
    #   The Business Support charge amount calculated for this pricing tier.
    #   @return [String]
    #
    # @!attribute [rw] charge_period_start_date
    #   The start date of the charge period for this tier charge.
    #   @return [Time]
    #
    # @!attribute [rw] charge_period_end_date
    #   The end date of the charge period for this tier charge.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/BusinessSupportTierCharge AWS API Documentation
    #
    class BusinessSupportTierCharge < Struct.new(
      :tier_description,
      :tier_rate,
      :usage_slice,
      :tier_charge,
      :charge_period_start_date,
      :charge_period_end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attestation_id
    #   The identifier of the investment attestation to cancel.
    #   @return [String]
    #
    # @!attribute [rw] contract_arn
    #   The Amazon Resource Name (ARN) of the contract that contains the
    #   attested investment.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the cancellation. This value can be 1 to 80
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/CancelContractualInvestmentAttestationRequest AWS API Documentation
    #
    class CancelContractualInvestmentAttestationRequest < Struct.new(
      :attestation_id,
      :contract_arn,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/CancelContractualInvestmentAttestationResponse AWS API Documentation
    #
    class CancelContractualInvestmentAttestationResponse < Aws::EmptyStructure; end

    # An account that is charged all or a portion of the total Support
    # charge and the percentage of the charge allocated to it.
    #
    # @!attribute [rw] account_id
    #   The account ID.
    #   @return [String]
    #
    # @!attribute [rw] charge_percentage
    #   The percentage of the total Support charge allocated to this
    #   account. This is 0.0 when supportAllocationMethod = Proportional.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ChargeAccount AWS API Documentation
    #
    class ChargeAccount < Struct.new(
      :account_id,
      :charge_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would cause a conflict with the current state
    # of a service resource associated with the request. Resolve the
    # conflict before retrying this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier for the service resource associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource associated with the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An account that is covered by the Enterprise Support contract.
    #
    # @!attribute [rw] account_id
    #   The account ID.
    #   @return [String]
    #
    # @!attribute [rw] is_gdn
    #   When true, Support charges are calculated on charges before private
    #   discounts. When false, they are calculated after private discounts.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ContractAccount AWS API Documentation
    #
    class ContractAccount < Struct.new(
      :account_id,
      :is_gdn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a contract returned by `GetContractInformation`. This
    # is a union in which exactly one member is set, corresponding to the
    # contract type. For a private pricing addendum, the
    # `privatePricingAddendum` member is set. Check which member is present
    # to determine the contract type.
    #
    # @note ContractDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ContractDetails corresponding to the set member.
    #
    # @!attribute [rw] private_pricing_addendum
    #   The details of a private pricing addendum contract. This member is
    #   set when the contract is a private pricing addendum.
    #   @return [Types::PrivatePricingAddendum]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ContractDetails AWS API Documentation
    #
    class ContractDetails < Struct.new(
      :private_pricing_addendum,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PrivatePricingAddendum < ContractDetails; end
      class Unknown < ContractDetails; end
    end

    # A summary of a private pricing contract visible to your account.
    # `ListContracts` returns these summaries.
    #
    # @!attribute [rw] contract_arn
    #   The Amazon Resource Name (ARN) of the contract. Pass this value to
    #   operations such as `GetContractInformation`,
    #   `ListContractualInvestmentSummaries`, and `AssociateContract`.
    #   @return [String]
    #
    # @!attribute [rw] contract_term
    #   The contract term period of the contract, expressed as an interval
    #   with an inclusive start date and an inclusive end date.
    #   @return [Types::Interval]
    #
    # @!attribute [rw] contract_type
    #   The classification of the contract. Valid values are
    #   `Cross-Service`, `Service-Specific`, and `Other`. `Cross-Service`
    #   applies across multiple Amazon Web Services services.
    #   `Service-Specific` applies to a specific Amazon Web Services
    #   service. `Other` applies to other arrangements.
    #   @return [String]
    #
    # @!attribute [rw] association_status
    #   Indicates whether the contract is currently associated with your
    #   account. Valid values are `ASSOCIATED` and `NOT_ASSOCIATED`.
    #   `ASSOCIATED` means the contract is associated with your account.
    #   `NOT_ASSOCIATED` means the contract is not associated with your
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The time when the contract was last associated with your account.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ContractSummary AWS API Documentation
    #
    class ContractSummary < Struct.new(
      :contract_arn,
      :contract_term,
      :contract_type,
      :association_status,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Cost Categories values used for filtering the costs.
    #
    # @!attribute [rw] key
    #   The unique name of the Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The specific value of the Cost Category.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/CostCategoryValues AWS API Documentation
    #
    class CostCategoryValues < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the billing view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the billing view.
    #   @return [String]
    #
    # @!attribute [rw] source_views
    #   A list of billing views used as the data source for the custom
    #   billing view.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_filter_expression
    #   See [Expression][1]. Billing view only supports `LINKED_ACCOUNT`,
    #   `Tags`, and `CostCategories`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you specify to ensure
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes no more than one time. If the original request completes
    #   successfully, any subsequent retries complete successfully without
    #   performing any further actions with an idempotent request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   A list of key value map specifying tags associated to the billing
    #   view being created.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/CreateBillingViewRequest AWS API Documentation
    #
    class CreateBillingViewRequest < Struct.new(
      :name,
      :description,
      :source_views,
      :data_filter_expression,
      :client_token,
      :resource_tags)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the billing view was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/CreateBillingViewResponse AWS API Documentation
    #
    class CreateBillingViewResponse < Struct.new(
      :arn,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contract_arn
    #   The Amazon Resource Name (ARN) of the contract that contains the
    #   investment being attested.
    #   @return [String]
    #
    # @!attribute [rw] investment_summary_id
    #   The identifier of the investment summary being attested. This is the
    #   parent to the investmentId.
    #   @return [String]
    #
    # @!attribute [rw] investment_id
    #   The identifier of the investment (outcome) being attested.
    #   @return [String]
    #
    # @!attribute [rw] contract_document_id
    #   The contract ID from the contract document, located in the top-right
    #   corner of the private pricing contract pages. This value confirms
    #   that you have access to the contract.
    #   @return [String]
    #
    # @!attribute [rw] approver_details
    #   The details of the executive who authorized the attestation, under
    #   the terms of the private pricing contract. The executive receives a
    #   click-to-accept email to confirm the attestation.
    #   @return [Types::ApproverDetails]
    #
    # @!attribute [rw] investment_disbursed_at
    #   The date on which the investment is disbursed to the investment
    #   accounts. The disbursement date is subject to review timelines.
    #   @return [Time]
    #
    # @!attribute [rw] attestation_details
    #   The details of the attestation, including the value being claimed
    #   and how the resulting investment is distributed across investment
    #   accounts.
    #   @return [Types::AttestationDetails]
    #
    # @!attribute [rw] additional_recipients
    #   The email addresses to copy as viewers on the executive approval
    #   request.
    #   @return [Array<Types::AdditionalRecipient>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   completes without performing any further actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/CreateContractualInvestmentAttestationRequest AWS API Documentation
    #
    class CreateContractualInvestmentAttestationRequest < Struct.new(
      :contract_arn,
      :investment_summary_id,
      :investment_id,
      :contract_document_id,
      :approver_details,
      :investment_disbursed_at,
      :attestation_details,
      :additional_recipients,
      :client_token)
      SENSITIVE = [:contract_document_id]
      include Aws::Structure
    end

    # @!attribute [rw] attestation_id
    #   The identifier of the submitted attestation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/CreateContractualInvestmentAttestationResponse AWS API Documentation
    #
    class CreateContractualInvestmentAttestationResponse < Struct.new(
      :attestation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single entry in the credit allocation history, representing how a
    # credit was applied to a specific service during a billing month.
    #
    # @!attribute [rw] credit_id
    #   The identifier of the credit that was applied.
    #   @return [String]
    #
    # @!attribute [rw] credit_amount
    #   The amount of credit applied. Negative values represent credits that
    #   reduced the bill.
    #   @return [Types::Amount]
    #
    # @!attribute [rw] description
    #   A human-readable description of the credit allocation.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account the credit was applied to.
    #   @return [String]
    #
    # @!attribute [rw] applied_service_name
    #   The Amazon Web Services service the credit was applied to.
    #   @return [String]
    #
    # @!attribute [rw] billing_month
    #   The billing month of the application in `YYYY-MM` format.
    #   @return [String]
    #
    # @!attribute [rw] is_estimated_bill
    #   `true` when the entry was applied to an in-flight bill that has not
    #   yet been finalized.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/CreditAllocationHistoryEntry AWS API Documentation
    #
    class CreditAllocationHistoryEntry < Struct.new(
      :credit_id,
      :credit_amount,
      :description,
      :account_id,
      :applied_service_name,
      :billing_month,
      :is_estimated_bill)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an Amazon Web Services credit, including
    # its identifier, type, monetary amounts, applicable products, sharing
    # configuration, and current enabled status.
    #
    # @!attribute [rw] credit_id
    #   The unique identifier for the credit.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID that owns the credit.
    #   @return [String]
    #
    # @!attribute [rw] credit_type
    #   The type of credit. Examples: `Promotion`, `Refund`, `TrueUp`.
    #   @return [String]
    #
    # @!attribute [rw] initial_amount
    #   The initial amount of the credit when it was issued.
    #   @return [Types::Amount]
    #
    # @!attribute [rw] remaining_amount
    #   The unused balance of the credit.
    #   @return [Types::Amount]
    #
    # @!attribute [rw] estimated_amount
    #   The estimated remaining balance, including in-flight (open) bills
    #   that have not yet been finalized.
    #   @return [Types::Amount]
    #
    # @!attribute [rw] applicable_product_names
    #   The names of Amazon Web Services services this credit applies to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A human-readable description of the credit.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date the credit becomes valid, as Unix epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The date the credit expires, as Unix epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] exhaust_date
    #   The date the credit balance reached zero, as Unix epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] application_type
    #   When the credit is applied during bill computation. Valid values:
    #   `BEFORE_CROSS_SERVICE_DISCOUNTS`, `AFTER_DISCOUNTS`.
    #   @return [String]
    #
    # @!attribute [rw] shareable_accounts
    #   The Amazon Web Services account IDs entitled to apply this credit.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_has_credit_sharing_enabled
    #   Whether the owning account has account-level credit sharing turned
    #   on.
    #   @return [Boolean]
    #
    # @!attribute [rw] credit_console_visibility
    #   The display configuration for the credit in the Amazon Web Services
    #   Billing console.
    #   @return [String]
    #
    # @!attribute [rw] credit_sharing_type
    #   The sharing configuration for the credit. Valid values: `DEFAULT`,
    #   `DISABLED`, `CUSTOM`, `COST_CATEGORY_RULE`.
    #   @return [String]
    #
    # @!attribute [rw] cost_category_arn
    #   The Amazon Resource Name (ARN) of the Cost Category controlling the
    #   credit's sharing scope. Present only when `creditSharingType` is
    #   `COST_CATEGORY_RULE`.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The rule name within the Cost Category. Present only when
    #   `creditSharingType` is `COST_CATEGORY_RULE`.
    #   @return [String]
    #
    # @!attribute [rw] credit_status
    #   Whether the credit participates in billing runs. Valid values:
    #   `ENABLED`, `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] purchase_type_applications
    #   Restricts which purchase types this credit applies to. When `null`
    #   or omitted, the credit applies to all purchase types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/CreditData AWS API Documentation
    #
    class CreditData < Struct.new(
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
      :purchase_type_applications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   If set to true, forces deletion of the billing view even if it has
    #   derived resources (e.g. other billing views or budgets). Use with
    #   caution as this may break dependent resources.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/DeleteBillingViewRequest AWS API Documentation
    #
    class DeleteBillingViewRequest < Struct.new(
      :arn,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/DeleteBillingViewResponse AWS API Documentation
    #
    class DeleteBillingViewResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata that you can use to filter and group your results.
    #
    # @!attribute [rw] key
    #   The names of the metadata types that you can use to filter and group
    #   your results.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The metadata values that you can use to filter and group your
    #   results.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/DimensionValues AWS API Documentation
    #
    class DimensionValues < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contract_arn
    #   The Amazon Resource Name (ARN) of the contract to disassociate from
    #   your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/DisassociateContractRequest AWS API Documentation
    #
    class DisassociateContractRequest < Struct.new(
      :contract_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/DisassociateContractResponse AWS API Documentation
    #
    class DisassociateContractResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the billing view to disassociate
    #   source views from.
    #   @return [String]
    #
    # @!attribute [rw] source_views
    #   A list of ARNs of the source billing views to disassociate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/DisassociateSourceViewsRequest AWS API Documentation
    #
    class DisassociateSourceViewsRequest < Struct.new(
      :arn,
      :source_views)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the billing view that the source views were disassociated
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/DisassociateSourceViewsResponse AWS API Documentation
    #
    class DisassociateSourceViewsResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time period for Enterprise Support billing.
    #
    # @!attribute [rw] begin_date
    #   The begin date of the time period.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The end date of the time period.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/EnterpriseSupportTimePeriod AWS API Documentation
    #
    class EnterpriseSupportTimePeriod < Struct.new(
      :begin_date,
      :end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # See [Expression][1]. Billing view only supports `LINKED_ACCOUNT`,
    # `Tags`, and `CostCategories`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html
    #
    # @!attribute [rw] dimensions
    #   The specific `Dimension` to use for `Expression`.
    #   @return [Types::DimensionValues]
    #
    # @!attribute [rw] tags
    #   The specific `Tag` to use for `Expression`.
    #   @return [Types::TagValues]
    #
    # @!attribute [rw] cost_categories
    #   The filter that's based on `CostCategory` values.
    #   @return [Types::CostCategoryValues]
    #
    # @!attribute [rw] time_range
    #   Specifies a time range filter for the billing view data.
    #   @return [Types::TimeRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/Expression AWS API Documentation
    #
    class Expression < Struct.new(
      :dimensions,
      :tags,
      :cost_categories,
      :time_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token from a previous response. Pass the value returned
    #   in `nextToken` to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to return per page. Range: 1 to 50.
    #   Default: 50.
    #   @return [Integer]
    #
    # @!attribute [rw] features
    #   The feature to retrieve. Specify exactly one value. Valid values:
    #   `BILLING_ALERTS`, `RI_SHARING`, `RI_SHARING_HISTORY`,
    #   `CREDIT_SHARING`, `CREDIT_SHARING_HISTORY`, `CREDIT_LEVEL_SHARING`,
    #   `CREDIT_PREFERENCE_OPTIONS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Filters to narrow results. Specify exactly one filter when supplied.
    #   The supported filter name is `PREFERENCE_KEY`, which accepts 1 to 10
    #   values to match preference keys.
    #   @return [Array<Types::BillingFeatureFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetBillingPreferencesRequest AWS API Documentation
    #
    class GetBillingPreferencesRequest < Struct.new(
      :next_token,
      :max_results,
      :features,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_preferences
    #   The list of preference entries matching the request.
    #   @return [Array<Types::BillingPreferenceSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Present when more pages are available; `null` when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetBillingPreferencesResponse AWS API Documentation
    #
    class GetBillingPreferencesResponse < Struct.new(
      :billing_preferences,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetBillingViewRequest AWS API Documentation
    #
    class GetBillingViewRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_view
    #   The billing view element associated with the specified ARN.
    #   @return [Types::BillingViewElement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetBillingViewResponse AWS API Documentation
    #
    class GetBillingViewResponse < Struct.new(
      :billing_view)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contract_arn
    #   The Amazon Resource Name (ARN) of the contract to retrieve
    #   information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetContractInformationRequest AWS API Documentation
    #
    class GetContractInformationRequest < Struct.new(
      :contract_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contract
    #   The contract details such as term (duration), eligible payer
    #   accounts, investment accounts, and legal entities.
    #   @return [Types::ContractDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetContractInformationResponse AWS API Documentation
    #
    class GetContractInformationResponse < Struct.new(
      :contract)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID whose allocation history to
    #   retrieve. Must be a 12-digit numeric string.
    #   @return [String]
    #
    # @!attribute [rw] credit_id
    #   Filters the result to a single credit. When omitted, returns
    #   allocation entries for all credits.
    #   @return [Integer]
    #
    # @!attribute [rw] start_date
    #   Inclusive start date as Unix epoch seconds. Must be on or before
    #   `endDate`. The range from `startDate` to `endDate` cannot exceed 24
    #   billing months.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   Inclusive end date as Unix epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   Pagination token from a previous response. Pass the value returned
    #   in `nextToken` to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to return per page. Range: 1 to 1000.
    #   Default: 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetCreditAllocationHistoryRequest AWS API Documentation
    #
    class GetCreditAllocationHistoryRequest < Struct.new(
      :account_id,
      :credit_id,
      :start_date,
      :end_date,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credit_allocation_history_list
    #   Allocation entries sorted by `billingMonth` in descending order.
    #   @return [Array<Types::CreditAllocationHistoryEntry>]
    #
    # @!attribute [rw] partial_results
    #   `true` when data could not be retrieved for one or more billing
    #   months. The `failedMonths` field lists which months are missing.
    #   @return [Boolean]
    #
    # @!attribute [rw] failed_months
    #   Billing months in `YYYY-MM` format that failed to return data.
    #   Non-empty only when `partialResults` is `true`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Present when more pages are available; `null` when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetCreditAllocationHistoryResponse AWS API Documentation
    #
    class GetCreditAllocationHistoryResponse < Struct.new(
      :credit_allocation_history_list,
      :partial_results,
      :failed_months,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID. Must be a 12-digit numeric
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The start date for the credit period as Unix epoch seconds. Must be
    #   a past date that is not more than one year before the current date.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The end date for the credit period as Unix epoch seconds. Must not
    #   be a future date and must be on or after `startDate`. Defaults to
    #   the current date when omitted.
    #   @return [Time]
    #
    # @!attribute [rw] payer_account_flag
    #   When `true` and the caller is the management account, the response
    #   aggregates credits across the entire consolidated billing family.
    #   When `false` or omitted, returns only credits for the specified
    #   `accountId`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetCreditsRequest AWS API Documentation
    #
    class GetCreditsRequest < Struct.new(
      :account_id,
      :start_date,
      :end_date,
      :payer_account_flag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credits
    #   The list of credits matching the request. Returns an empty list when
    #   no credits exist.
    #   @return [Array<Types::CreditData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetCreditsResponse AWS API Documentation
    #
    class GetCreditsResponse < Struct.new(
      :credits)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for GetEnterpriseSupportChargeSummary.
    #
    # @!attribute [rw] billing_month
    #   The billing month in YYYY-MM format. This must be a month in the
    #   past.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetEnterpriseSupportChargeSummaryRequest AWS API Documentation
    #
    class GetEnterpriseSupportChargeSummaryRequest < Struct.new(
      :billing_month)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response structure for GetEnterpriseSupportChargeSummary.
    #
    # @!attribute [rw] payer_account_id
    #   The payer account ID that is authorized to view Enterprise Support
    #   data for all accounts in its Support profile.
    #   @return [String]
    #
    # @!attribute [rw] billing_month
    #   The billing month in YYYY-MM format. This must be a month in the
    #   past.
    #   @return [String]
    #
    # @!attribute [rw] billing_period_start_date
    #   The start date of the billing period.
    #   @return [Time]
    #
    # @!attribute [rw] billing_period_end_date
    #   The end date of the billing period.
    #   @return [Time]
    #
    # @!attribute [rw] is_estimated
    #   Specifies whether the Support charge amount is estimated. When
    #   false, the charge amount is finalized.
    #   @return [Boolean]
    #
    # @!attribute [rw] bill_date
    #   The date the bill was generated.
    #   @return [Time]
    #
    # @!attribute [rw] support_charge
    #   The Support charge amount for the account.
    #   @return [String]
    #
    # @!attribute [rw] total_support_charge
    #   The total Support charge amount for all accounts in the Support
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] support_discount
    #   The support discount amount.
    #   @return [String]
    #
    # @!attribute [rw] total_support_eligible_spend
    #   The total Support-eligible Spend from all accounts in the Support
    #   profile. This includes eligible spend from usage of Amazon Web
    #   Services, Reserved Instances, and Savings Plans.
    #   @return [String]
    #
    # @!attribute [rw] total_support_eligible_usage_spend
    #   The total Support-eligible spend from usage of Amazon Web Services
    #   from all accounts in the Support profile.
    #   @return [String]
    #
    # @!attribute [rw] total_support_eligible_reserved_instance_spend
    #   The total Support-eligible Reserved Instance spend from all accounts
    #   in the Support profile.
    #   @return [String]
    #
    # @!attribute [rw] total_support_eligible_savings_plan_spend
    #   The total Support-eligible Savings Plan spend from all accounts in
    #   the Support profile.
    #   @return [String]
    #
    # @!attribute [rw] support_charge_percentage
    #   The percentage applied to the total Support-eligible spend to
    #   calculate the total Support charge across all accounts in the
    #   Support profile.
    #   @return [String]
    #
    # @!attribute [rw] support_effective_pricing_plan
    #   The effective pricing plan used for the support charge calculation.
    #   @return [Types::PricingPlan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetEnterpriseSupportChargeSummaryResponse AWS API Documentation
    #
    class GetEnterpriseSupportChargeSummaryResponse < Struct.new(
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
      :support_effective_pricing_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for GetEnterpriseSupportContractDetails.
    #
    # @!attribute [rw] billing_month
    #   The billing month in YYYY-MM format. This must be a month in the
    #   past.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetEnterpriseSupportContractDetailsRequest AWS API Documentation
    #
    class GetEnterpriseSupportContractDetailsRequest < Struct.new(
      :billing_month)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response structure for GetEnterpriseSupportContractDetails.
    #
    # @!attribute [rw] is_contract_active
    #   When true, the Enterprise Support contract is active. When false,
    #   the Enterprise Support Contract is inactive.
    #   @return [Boolean]
    #
    # @!attribute [rw] support_allocation_method
    #   The method used to distribute the total Support charge amount across
    #   each account in the Support profile. Valid values: Proportional,
    #   Fixed\_Percentage. Proportional means support charges are
    #   distributed to each account in proportion to its eligible Spend.
    #   Fixed\_Percentage means support charges are distributed across
    #   accounts according to pre-configured percentages from the contract.
    #   @return [String]
    #
    # @!attribute [rw] support_reserved_instance_amortization_start_date
    #   When supportReservedInstanceTreatmentMethod = AmortizedCustom, only
    #   amortized fees for Reserved Instances purchased on or after this
    #   date are included in the calculation. This field is Null for all
    #   other treatment methods.
    #   @return [Time]
    #
    # @!attribute [rw] support_reserved_instance_treatment_method
    #   The method used to include Reserved Instance (RI) fees in the
    #   Enterprise Support charge calculation. Valid values: None (RI fees
    #   excluded from Support-eligible spend), Upfront (full upfront RI fees
    #   included in month of purchase), Amortized (RI fees spread over
    #   commitment term for RIs purchased on or after Support subscription
    #   start date), AmortizedCustom (same as Amortized but only for RIs
    #   purchased on or after a specified custom start date), AmortizedAll
    #   (RI fees amortized for all active RIs including those purchased
    #   before Support subscription started).
    #   @return [String]
    #
    # @!attribute [rw] support_savings_plans_amortization_start_date
    #   This is applicable when supportSavingsPlansTreatmentMethod =
    #   Amortized and is Null for all other methods. It shows the start date
    #   from which Savings Plan fees are included in Support Eligible Spend.
    #   @return [Time]
    #
    # @!attribute [rw] support_savings_plans_treatment_method
    #   The method used to include Savings Plans fees in Enterprise Support
    #   charge calculations. Valid values: None (Savings Plan fees excluded
    #   from Support-eligible spend), Upfront (full upfront Savings Plan
    #   fees included in month of purchase), Amortized (Savings Plan fees
    #   spread over commitment term for Savings Plans purchased on or after
    #   Support subscription start date), AmortizedCustom (same as Amortized
    #   but only for Savings Plans purchased on or after a specified custom
    #   start date), AmortizedAll (Savings Plan fees amortized for all
    #   active Savings Plans including those purchased before Support
    #   subscription started).
    #   @return [String]
    #
    # @!attribute [rw] support_prorate_start_date
    #   The start date for accounts subscribed or unsubscribed to Support
    #   billing during the billing month.
    #   @return [Time]
    #
    # @!attribute [rw] contract_payer_account_ids
    #   The list of accounts covered by the Enterprise Support contract.
    #   @return [Array<Types::ContractAccount>]
    #
    # @!attribute [rw] charged_payer_account_ids
    #   The list of payer accounts and their charge allocation percentages.
    #   @return [Array<Types::ChargeAccount>]
    #
    # @!attribute [rw] additional_support_charge
    #   Any Additional support charges applied to the contract.
    #   @return [Array<Types::AdditionalCharge>]
    #
    # @!attribute [rw] additional_support_eligible_usage_spend
    #   Any Additional support-eligible usage spend charges.
    #   @return [Array<Types::AdditionalCharge>]
    #
    # @!attribute [rw] pricing_plans
    #   The pricing plans associated with this Enterprise Support contract.
    #   @return [Array<Types::PricingPlan>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetEnterpriseSupportContractDetailsResponse AWS API Documentation
    #
    class GetEnterpriseSupportContractDetailsResponse < Struct.new(
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
      :pricing_plans)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the billing view resource to which
    #   the policy is attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the billing view resource to which
    #   the policy is attached to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy document attached to the resource in
    #   `JSON` format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing failed because of an unknown error, exception,
    # or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time period bounded by an inclusive start date and an inclusive end
    # date.
    #
    # @!attribute [rw] start_date_inclusive
    #   The start date of the interval. This date is included in the
    #   interval.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_inclusive
    #   The end date of the interval. This date is included in the interval.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/Interval AWS API Documentation
    #
    class Interval < Struct.new(
      :start_date_inclusive,
      :end_date_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # An investment within an investment summary. This is a union in which
    # exactly one member is set. The `milestoneBasedInvestment` member
    # represents a fixed, scheduled investment. The `outcomeBasedInvestment`
    # member represents an attestable investment awarded upon completion of
    # a defined outcome. Check which member is present to determine the
    # investment type.
    #
    # @note Investment is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Investment corresponding to the set member.
    #
    # @!attribute [rw] milestone_based_investment
    #   An investment with a fixed value that is disbursed on a schedule.
    #   This member is set for a milestone-based investment and corresponds
    #   to the `MILESTONE_BASED` investment type.
    #   @return [Types::MilestoneBasedInvestment]
    #
    # @!attribute [rw] outcome_based_investment
    #   An investment that is awarded upon completion of a defined outcome.
    #   This member is set for an outcome-based (attestable) investment and
    #   corresponds to the `OUTCOME_BASED` investment type.
    #   @return [Types::OutcomeBasedInvestment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/Investment AWS API Documentation
    #
    class Investment < Struct.new(
      :milestone_based_investment,
      :outcome_based_investment,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MilestoneBasedInvestment < Investment; end
      class OutcomeBasedInvestment < Investment; end
      class Unknown < Investment; end
    end

    # A summary of a submitted investment attestation, as returned by
    # `ListContractualInvestmentAttestations`.
    #
    # @!attribute [rw] attestation_id
    #   The identifier of the attestation. This value is returned by
    #   `CreateContractualInvestmentAttestation` and is used to cancel the
    #   attestation with `CancelContractualInvestmentAttestation`. This
    #   value is 1–36 characters.
    #   @return [String]
    #
    # @!attribute [rw] investment_name
    #   The name of the investment summary that contains the attested
    #   outcome. This value is 1–400 characters.
    #   @return [String]
    #
    # @!attribute [rw] outcome_description
    #   The description of the attested outcome. This value is 1–2048
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] investment_summary_id
    #   The identifier of the investment summary that was attested, as
    #   returned by `ListContractualInvestmentSummaries`.
    #   @return [String]
    #
    # @!attribute [rw] investment_id
    #   The identifier of the investment that was attested, as returned by
    #   `ListContractualInvestments`.
    #   @return [String]
    #
    # @!attribute [rw] attested_at
    #   The date on which the attestation was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date on which the attestation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] attestation_status
    #   The current status of the attestation. Valid values are
    #   `PENDING_REVIEW`, `PENDING_C_LEVEL_APPROVAL`,
    #   `PENDING_CANCELLATION`, `REJECTED`, `CANCELLED`, and `DISBURSED`.
    #   The values `DISBURSED`, `REJECTED`, and `CANCELLED` are terminal.
    #   The other values indicate the attestation is still in progress.
    #   @return [String]
    #
    # @!attribute [rw] investment_disbursed_at
    #   The start date on which the investment is disbursed to the
    #   investment accounts. This is not the same as the time of
    #   disbursement, but reflects the date you submitted with the
    #   attestation.
    #   @return [Time]
    #
    # @!attribute [rw] attested_value
    #   The monetary value attested.
    #   @return [Types::Amount]
    #
    # @!attribute [rw] investment_distributions
    #   The distribution of the attested investment across the eligible
    #   investment accounts. The list contains at most 200 distributions.
    #   @return [Array<Types::InvestmentDistribution>]
    #
    # @!attribute [rw] rejection_reasons
    #   The reasons the attestation was rejected. This value is present only
    #   when `attestationStatus` is `REJECTED`. The list contains at most 30
    #   reasons.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_cancellable
    #   Indicates whether the attestation can be canceled with
    #   `CancelContractualInvestmentAttestation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/InvestmentAttestation AWS API Documentation
    #
    class InvestmentAttestation < Struct.new(
      :attestation_id,
      :investment_name,
      :outcome_description,
      :investment_summary_id,
      :investment_id,
      :attested_at,
      :updated_at,
      :attestation_status,
      :investment_disbursed_at,
      :attested_value,
      :investment_distributions,
      :rejection_reasons,
      :is_cancellable)
      SENSITIVE = []
      include Aws::Structure
    end

    # An allocation of an investment disbursement to a specific recipient
    # account. The account is the target account that receives the
    # investment, not your account.
    #
    # @!attribute [rw] account_id
    #   The recipient Amazon Web Services account ID that receives this
    #   portion of the investment. This must be one of the eligible
    #   investment accounts on the contract.
    #   @return [String]
    #
    # @!attribute [rw] investment_amount
    #   The monetary value allocated to the recipient account.
    #   @return [Types::Amount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/InvestmentDistribution AWS API Documentation
    #
    class InvestmentDistribution < Struct.new(
      :account_id,
      :investment_amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # A multiplier used to convert attestation input into an investment
    # value.
    #
    # @!attribute [rw] value
    #   The multiplier value, expressed as a decimal string to preserve
    #   precision. The value is digits with an optional decimal point and is
    #   1–1000 characters. The terms of the contract define this value.
    #   @return [String]
    #
    # @!attribute [rw] investment_attestation_input_unit
    #   The unit of the attestation input that the multiplier applies to,
    #   such as `workloads migrated`. This value is 1–1000 characters. The
    #   terms of the contract define this value.
    #   @return [String]
    #
    # @!attribute [rw] multiplier_type
    #   The type of the multiplier. A value of `PERCENTAGE` applies a
    #   percentage of a value. A value of `CURRENCY_AMOUNT` applies a
    #   currency amount per unit of attestation input. The terms of the
    #   contract define this value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/InvestmentMultiplier AWS API Documentation
    #
    class InvestmentMultiplier < Struct.new(
      :value,
      :investment_attestation_input_unit,
      :multiplier_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A restriction that caps the value that can be disbursed for an
    # investment. The cap applies for each attestation window.
    #
    # @!attribute [rw] amount
    #   The maximum monetary amount allowed under the restriction.
    #   @return [Types::Amount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/InvestmentRestriction AWS API Documentation
    #
    class InvestmentRestriction < Struct.new(
      :amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an investment summary within a contract or
    # a private pricing addendum.
    #
    # @!attribute [rw] investment_summary_id
    #   The identifier of the investment summary. Pass this value to
    #   `ListContractualInvestments` to list the investments within the
    #   summary, and to `CreateContractualInvestmentAttestation` to attest
    #   an investment. This value is 1–36 characters.
    #   @return [String]
    #
    # @!attribute [rw] investment_name
    #   The name of the investment summary, used to reference the investment
    #   against a term in the physical contract. This value is 1–400
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] investment_type
    #   The type of the investment summary. Valid values are
    #   `MILESTONE_BASED` and `OUTCOME_BASED`. `OUTCOME_BASED` investments
    #   can be attested to, upon completion of outcomes. `MILESTONE_BASED`
    #   are automatically triggered by Amazon Web Services, based on the
    #   time schedule in the contract.
    #   @return [String]
    #
    # @!attribute [rw] max_allowed_investment_disbursement_value
    #   The maximum monetary value that can be disbursed against the
    #   investment summary, inclusive of all outcomes combined under the
    #   summary.
    #   @return [Types::Amount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/InvestmentSummary AWS API Documentation
    #
    class InvestmentSummary < Struct.new(
      :investment_summary_id,
      :investment_name,
      :investment_type,
      :max_allowed_investment_disbursement_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A legal entity on a private pricing contract. It can be found on your
    # contract's signature page.
    #
    # @!attribute [rw] legal_entity_name
    #   The name of the legal entity as it appears on the contract document.
    #   This value can be up to 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/LegalEntity AWS API Documentation
    #
    class LegalEntity < Struct.new(
      :legal_entity_name)
      SENSITIVE = [:legal_entity_name]
      include Aws::Structure
    end

    # Enterprise Support charges for a linked account.
    #
    # @!attribute [rw] account_id
    #   The linked account ID.
    #   @return [String]
    #
    # @!attribute [rw] payer_account_id
    #   The payer account ID that is authorized to view Enterprise Support
    #   data for all accounts in its Support profile.
    #   @return [String]
    #
    # @!attribute [rw] account_type
    #   The type of account.
    #   @return [String]
    #
    # @!attribute [rw] billable_seconds
    #   The number of billable seconds in the billing period based on when
    #   the account was subscribed to Enterprise Support.
    #   @return [Integer]
    #
    # @!attribute [rw] total_seconds
    #   The total number of seconds in the billing period.
    #   @return [Integer]
    #
    # @!attribute [rw] total_support_eligible_spend
    #   The total support-eligible spend for this account.
    #   @return [String]
    #
    # @!attribute [rw] prorated_total_support_eligible_spend
    #   The prorated total support-eligible spend based on when the account
    #   was subscribed to Enterprise Support.
    #   @return [String]
    #
    # @!attribute [rw] linked_time_periods
    #   The time periods during which this account was linked.
    #   @return [Array<Types::EnterpriseSupportTimePeriod>]
    #
    # @!attribute [rw] subscription_time_periods
    #   The subscription time periods for this account.
    #   @return [Array<Types::EnterpriseSupportTimePeriod>]
    #
    # @!attribute [rw] total_support_eligible_reserved_instance_spend
    #   The total support-eligible Reserved Instance spend for this account.
    #   @return [String]
    #
    # @!attribute [rw] total_support_eligible_savings_plan_spend
    #   The total support-eligible Savings Plan spend for this account.
    #   @return [String]
    #
    # @!attribute [rw] support_eligible_spend_by_service
    #   The support-eligible spend broken down by service.
    #   @return [Array<Types::ServiceLevelAccountUsage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/LinkedAccountCharge AWS API Documentation
    #
    class LinkedAccountCharge < Struct.new(
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
      :support_eligible_spend_by_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_range
    #   The billing period to query. If you don't provide a time range, the
    #   current billing period, which is the calendar month in UTC, is used.
    #   @return [Types::BillingViewSegmentTimeRange]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the billing
    #   view to query. If you don't provide an ARN, the caller's `PRIMARY`
    #   billing view is used. The ARN must reference a primary billing view.
    #   Custom billing views aren't supported.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of entries a paginated response contains. Valid values
    #   range from 1 to 100. The default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that is used on subsequent calls to list
    #   billing view segments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListBillingViewSegmentsRequest AWS API Documentation
    #
    class ListBillingViewSegmentsRequest < Struct.new(
      :time_range,
      :arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of billing view segments. Each segment covers a portion of
    #   the requested time period. The response omits hidden segments, so
    #   the segments it returns might not cover the entire requested time
    #   period.
    #   @return [Array<Types::BillingViewSegmentsListElement>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that is used on subsequent calls to list
    #   billing view segments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListBillingViewSegmentsResponse AWS API Documentation
    #
    class ListBillingViewSegmentsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] active_time_range
    #   The time range for the billing views listed. `PRIMARY` billing view
    #   is always listed. `BILLING_GROUP` billing views are listed for time
    #   ranges when the associated billing group resource in Billing
    #   Conductor is active. The time range must be within one calendar
    #   month.
    #   @return [Types::ActiveTimeRange]
    #
    # @!attribute [rw] arns
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #   @return [Array<String>]
    #
    # @!attribute [rw] billing_view_types
    #   The type of billing view.
    #   @return [Array<String>]
    #
    # @!attribute [rw] names
    #   Filters the list of billing views by name. You can specify search
    #   criteria to match billing view names based on the search option
    #   provided.
    #   @return [Array<Types::StringSearch>]
    #
    # @!attribute [rw] owner_account_id
    #   The list of owners of the billing view.
    #   @return [String]
    #
    # @!attribute [rw] source_account_id
    #   Filters the results to include only billing views that use the
    #   specified account as a source.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of billing views to retrieve. Default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that is used on subsequent calls to list
    #   billing views.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListBillingViewsRequest AWS API Documentation
    #
    class ListBillingViewsRequest < Struct.new(
      :active_time_range,
      :arns,
      :billing_view_types,
      :names,
      :owner_account_id,
      :source_account_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_views
    #   A list of `BillingViewListElement` retrieved.
    #   @return [Array<Types::BillingViewListElement>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use on subsequent calls to list billing
    #   views.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListBillingViewsResponse AWS API Documentation
    #
    class ListBillingViewsResponse < Struct.new(
      :billing_views,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the billing month and optional filters used to retrieve
    # Business Support charges broken down by linked account.
    #
    # @!attribute [rw] billing_month
    #   The billing month to retrieve Business Support charges for, in
    #   YYYY-MM format. You can request the current month (charges will be
    #   estimated) or a past month (charges will be finalized).
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The linked account ID to filter results to a specific account. If
    #   you don't specify a value, the response includes charges for all
    #   linked accounts.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page. Default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListBusinessSupportAccountChargesRequest AWS API Documentation
    #
    class ListBusinessSupportAccountChargesRequest < Struct.new(
      :billing_month,
      :account_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the Business Support charges broken down by linked account
    # for the specified billing month, along with account and spend totals.
    #
    # @!attribute [rw] billing_month
    #   The billing month for the returned charges, in YYYY-MM format.
    #   @return [String]
    #
    # @!attribute [rw] is_estimated
    #   Specifies whether the Support charge amount is estimated. When
    #   false, the charge amount is finalized.
    #   @return [Boolean]
    #
    # @!attribute [rw] total_support_charge
    #   The total Business Support charge amount for all accounts in the
    #   billing month.
    #   @return [String]
    #
    # @!attribute [rw] total_support_eligible_spend
    #   The total Support-eligible spend from all accounts in the billing
    #   month. This includes eligible spend from usage of Amazon Web
    #   Services.
    #   @return [String]
    #
    # @!attribute [rw] account_count
    #   The total number of linked accounts with Business Support charges in
    #   the billing month.
    #   @return [Integer]
    #
    # @!attribute [rw] account_charges
    #   The list of Business Support charges per linked account.
    #   @return [Array<Types::BusinessSupportAccountCharge>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListBusinessSupportAccountChargesResponse AWS API Documentation
    #
    class ListBusinessSupportAccountChargesResponse < Struct.new(
      :billing_month,
      :is_estimated,
      :total_support_charge,
      :total_support_eligible_spend,
      :account_count,
      :account_charges,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the optional filters used to retrieve the history of Business
    # Support subscription contracts across accounts.
    #
    # @!attribute [rw] billing_month
    #   The billing month to retrieve subscription contracts for, in YYYY-MM
    #   format. If you don't specify a value, defaults to the current
    #   month.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID to filter results to a specific account. If you
    #   don't specify a value, the response includes subscription history
    #   for all accounts.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The start date to filter subscription contracts from.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The end date to filter subscription contracts to.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page. Default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListBusinessSupportSubscriptionHistoryRequest AWS API Documentation
    #
    class ListBusinessSupportSubscriptionHistoryRequest < Struct.new(
      :billing_month,
      :account_id,
      :start_date,
      :end_date,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of Business Support subscription contracts that
    # match the request filters.
    #
    # @!attribute [rw] subscription_contracts
    #   The list of Business Support subscription contracts.
    #   @return [Array<Types::BusinessSupportSubscriptionContract>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListBusinessSupportSubscriptionHistoryResponse AWS API Documentation
    #
    class ListBusinessSupportSubscriptionHistoryResponse < Struct.new(
      :subscription_contracts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of contracts to return in a single call. Minimum
    #   value of 1, maximum value of 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListContractsRequest AWS API Documentation
    #
    class ListContractsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of contracts that your Amazon Web Services account is an
    #   eligible payer account of.
    #   @return [Array<Types::ContractSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use on subsequent calls to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListContractsResponse AWS API Documentation
    #
    class ListContractsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contract_arn
    #   The Amazon Resource Name (ARN) of the contract whose attestations
    #   you want to list.
    #   @return [String]
    #
    # @!attribute [rw] investment_summary_id
    #   The identifier of a specific investment summary to filter the
    #   attestations by. If omitted, attestations for all investment
    #   summaries in the contract are returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of attestations to return in a single call.
    #   Minimum value of 1, maximum value of 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListContractualInvestmentAttestationsRequest AWS API Documentation
    #
    class ListContractualInvestmentAttestationsRequest < Struct.new(
      :contract_arn,
      :investment_summary_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of investment attestations submitted under the contract.
    #   @return [Array<Types::InvestmentAttestation>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use on subsequent calls to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListContractualInvestmentAttestationsResponse AWS API Documentation
    #
    class ListContractualInvestmentAttestationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contract_arn
    #   The Amazon Resource Name (ARN) of the contract whose investment
    #   summaries you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of investment summaries to return in a single
    #   call. Minimum value of 1, maximum value of 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListContractualInvestmentSummariesRequest AWS API Documentation
    #
    class ListContractualInvestmentSummariesRequest < Struct.new(
      :contract_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of investment summaries under the contract. It includes the
    #   investment name, maximum investment amount, and investment type. It
    #   does not provide investment details. Use this to know if the
    #   contract has investment terms and what type.
    #   @return [Array<Types::InvestmentSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use on subsequent calls to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListContractualInvestmentSummariesResponse AWS API Documentation
    #
    class ListContractualInvestmentSummariesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contract_arn
    #   The Amazon Resource Name (ARN) of the contract that contains the
    #   investment summary.
    #   @return [String]
    #
    # @!attribute [rw] investment_summary_id
    #   The identifier of the investment summary whose investments you want
    #   to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of investments to return in a single call.
    #   Minimum value of 1, maximum value of 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListContractualInvestmentsRequest AWS API Documentation
    #
    class ListContractualInvestmentsRequest < Struct.new(
      :contract_arn,
      :investment_summary_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of investments for the investment summary.
    #   @return [Array<Types::Investment>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use on subsequent calls to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListContractualInvestmentsResponse AWS API Documentation
    #
    class ListContractualInvestmentsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for ListEnterpriseSupportLinkedAccountCharges.
    #
    # @!attribute [rw] billing_month
    #   The billing month in YYYY-MM format. This must be a month in the
    #   past.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The linked account ID to filter results to a specific account. If
    #   you don't specify a value, the response includes charges for all
    #   linked accounts.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page. Default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListEnterpriseSupportLinkedAccountChargesRequest AWS API Documentation
    #
    class ListEnterpriseSupportLinkedAccountChargesRequest < Struct.new(
      :billing_month,
      :account_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response structure for ListEnterpriseSupportLinkedAccountCharges.
    #
    # @!attribute [rw] linked_account
    #   The list of Enterprise Support charges per linked account.
    #   @return [Array<Types::LinkedAccountCharge>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListEnterpriseSupportLinkedAccountChargesResponse AWS API Documentation
    #
    class ListEnterpriseSupportLinkedAccountChargesResponse < Struct.new(
      :linked_account,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of entries a paginated response contains.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that is used on subsequent calls to list
    #   billing views.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListSourceViewsForBillingViewRequest AWS API Documentation
    #
    class ListSourceViewsForBillingViewRequest < Struct.new(
      :arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_views
    #   A list of billing views used as the data source for the custom
    #   billing view.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that is used on subsequent calls to list
    #   billing views.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListSourceViewsForBillingViewResponse AWS API Documentation
    #
    class ListSourceViewsForBillingViewResponse < Struct.new(
      :source_views,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_tags
    #   A list of tag key value pairs that are associated with the resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An investment with a fixed value that is disbursed on a schedule. This
    # corresponds to the `MILESTONE_BASED` investment type.
    #
    # @!attribute [rw] investment_id
    #   The identifier of the investment, as returned by
    #   `ListContractualInvestments`. This value is 1–36 characters.
    #   @return [String]
    #
    # @!attribute [rw] investment_value
    #   The total value of the investment, including its currency and
    #   amount.
    #   @return [Types::Amount]
    #
    # @!attribute [rw] investment_disbursed_at
    #   The date on which the investment is disbursed to the investment
    #   accounts.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/MilestoneBasedInvestment AWS API Documentation
    #
    class MilestoneBasedInvestment < Struct.new(
      :investment_id,
      :investment_value,
      :investment_disbursed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An investment that is awarded upon completion of a defined outcome.
    # This corresponds to the `OUTCOME_BASED` investment type and is claimed
    # through `CreateContractualInvestmentAttestation`.
    #
    # @!attribute [rw] investment_id
    #   The identifier of the investment, as returned by
    #   `ListContractualInvestments`. This value is 1–36 characters.
    #   @return [String]
    #
    # @!attribute [rw] outcome_description
    #   The description of what must be completed to attest the outcome.
    #   This value is 1–2048 characters.
    #   @return [String]
    #
    # @!attribute [rw] attestation_window
    #   The time window, expressed as an interval with inclusive start and
    #   end dates, during which outcomes can be attested to.
    #   @return [Types::Interval]
    #
    # @!attribute [rw] investment_restrictions
    #   The restrictions that cap the value that can be disbursed for the
    #   investment. The list contains at most 10 restrictions.
    #   @return [Array<Types::InvestmentRestriction>]
    #
    # @!attribute [rw] investment_multipliers
    #   The multipliers used to compute the investment value from the
    #   attestation input. The list contains at most 200 multipliers.
    #   Multipliers are derived from the terms of the private pricing
    #   contract.
    #   @return [Array<Types::InvestmentMultiplier>]
    #
    # @!attribute [rw] disbursed_value
    #   The total value already disbursed against the investment. This value
    #   can be distributed among the investment accounts distribution.
    #   @return [Types::Amount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/OutcomeBasedInvestment AWS API Documentation
    #
    class OutcomeBasedInvestment < Struct.new(
      :investment_id,
      :outcome_description,
      :attestation_window,
      :investment_restrictions,
      :investment_multipliers,
      :disbursed_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pricing plan for Enterprise Support billing.
    #
    # @!attribute [rw] pricing_plan_id
    #   The unique identifier for the pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The start date of the pricing plan.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The end date of the pricing plan.
    #   @return [Time]
    #
    # @!attribute [rw] plan_discount_percent
    #   The discount percentage applied by this pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] discount_applies_to_minimum_charge
    #   Whether the discount applies to the minimum Support charge.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_charge
    #   The minimum Support charge amount for this pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] tiered
    #   Whether the pricing plan uses tiered pricing.
    #   @return [String]
    #
    # @!attribute [rw] tiers
    #   The pricing tiers within this plan.
    #   @return [Array<Types::PricingPlanTier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/PricingPlan AWS API Documentation
    #
    class PricingPlan < Struct.new(
      :pricing_plan_id,
      :name,
      :description,
      :start_date,
      :end_date,
      :plan_discount_percent,
      :discount_applies_to_minimum_charge,
      :minimum_charge,
      :tiered,
      :tiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tier within an Enterprise Support pricing plan.
    #
    # @!attribute [rw] tier_minimum
    #   The minimum spend threshold for this tier.
    #   @return [String]
    #
    # @!attribute [rw] tier_maximum
    #   The maximum spend threshold for this tier.
    #   @return [String]
    #
    # @!attribute [rw] base_charge
    #   The base charge for this tier.
    #   @return [String]
    #
    # @!attribute [rw] additional_percentage_of_aggregate_charges
    #   The additional percentage applied to aggregate charges in this tier.
    #   @return [String]
    #
    # @!attribute [rw] aggregate_charges_adjustment
    #   The adjustment applied to aggregate charges.
    #   @return [String]
    #
    # @!attribute [rw] incremental
    #   Whether the tier charges are calculated incrementally.
    #   @return [Boolean]
    #
    # @!attribute [rw] increment
    #   The increment amount for incremental tier calculations.
    #   @return [String]
    #
    # @!attribute [rw] increment_charge
    #   The charge per increment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/PricingPlanTier AWS API Documentation
    #
    class PricingPlanTier < Struct.new(
      :tier_minimum,
      :tier_maximum,
      :base_charge,
      :additional_percentage_of_aggregate_charges,
      :aggregate_charges_adjustment,
      :incremental,
      :increment,
      :increment_charge)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a private pricing addendum contract.
    #
    # @!attribute [rw] contract_arn
    #   The Amazon Resource Name (ARN) of the private pricing addendum.
    #   @return [String]
    #
    # @!attribute [rw] contract_term
    #   The contract term period of the private pricing addendum, expressed
    #   as an interval with an inclusive start date and an inclusive end
    #   date.
    #   @return [Types::Interval]
    #
    # @!attribute [rw] eligible_payer_accounts
    #   The payer accounts that are eligible under the private pricing
    #   addendum. The list contains at most 100 account IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] investment_accounts
    #   The accounts that are eligible to receive investments under the
    #   private pricing addendum. An `InvestmentDistribution` must target
    #   one of these accounts. The list contains at most 100 account IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] legal_entities
    #   The legal entities on the private pricing addendum. The list
    #   contains at most 10 legal entities.
    #   @return [Array<Types::LegalEntity>]
    #
    # @!attribute [rw] contract_restrictions
    #   The restrictions that limit the self-service actions you can take on
    #   the private pricing addendum. An empty or absent value indicates
    #   that no restrictions apply. The list contains at most 10
    #   restrictions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/PrivatePricingAddendum AWS API Documentation
    #
    class PrivatePricingAddendum < Struct.new(
      :contract_arn,
      :contract_term,
      :eligible_payer_accounts,
      :investment_accounts,
      :legal_entities,
      :contract_restrictions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] promo_code
    #   The promotional credit code to redeem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/RedeemCreditsRequest AWS API Documentation
    #
    class RedeemCreditsRequest < Struct.new(
      :promo_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/RedeemCreditsResponse AWS API Documentation
    #
    class RedeemCreditsResponse < Aws::EmptyStructure; end

    # The specified ARN in the request doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Value is a list of resource IDs that were not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Value is the type of resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag structure that contains a tag key and value.
    #
    # @!attribute [rw] key
    #   The key that's associated with the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that's associated with the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Service-level usage details by account.
    #
    # @!attribute [rw] service_code
    #   The service code for which to return Support-eligible spend data.
    #   @return [String]
    #
    # @!attribute [rw] total_support_eligible_spend
    #   The total support-eligible spend for the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ServiceLevelAccountUsage AWS API Documentation
    #
    class ServiceLevelAccountUsage < Struct.new(
      :service_code,
      :total_support_eligible_spend)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've reached the limit of resources you can create, or exceeded the
    # size of an individual resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The container for the `serviceCode`.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The container for the `quotaCode`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines how to search for string values. You can
    # specify a search option and the value to search for.
    #
    # @!attribute [rw] search_option
    #   The type of search operation to perform on the string value.
    #   Determines how the search value is matched against the target field.
    #   @return [String]
    #
    # @!attribute [rw] search_value
    #   The string value to use in the search operation. This value is
    #   compared against the target field using the specified search option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/StringSearch AWS API Documentation
    #
    class StringSearch < Struct.new(
      :search_option,
      :search_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   A list of tag key value pairs that are associated with the resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The values that are available for a tag.
    #
    # @!attribute [rw] key
    #   The key for the tag.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The specific value of the tag.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/TagValues AWS API Documentation
    #
    class TagValues < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a time range with inclusive begin and end dates.
    #
    # @!attribute [rw] begin_date_inclusive
    #   The inclusive start date of the time range.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_inclusive
    #   The inclusive end date of the time range.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/TimeRange AWS API Documentation
    #
    class TimeRange < Struct.new(
      :begin_date_inclusive,
      :end_date_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_tag_keys
    #   A list of tag key value pairs that are associated with the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] feature
    #   The feature to update. Valid values: `BILLING_ALERTS`, `RI_SHARING`,
    #   `CREDIT_SHARING`, `CREDIT_LEVEL_SHARING`,
    #   `CREDIT_PREFERENCE_OPTIONS`. The history features
    #   (`RI_SHARING_HISTORY` and `CREDIT_SHARING_HISTORY`) are read-only
    #   and cannot be updated.
    #   @return [String]
    #
    # @!attribute [rw] billing_preferences_per_key
    #   Key/value pairs to apply. All keys in a single request must be valid
    #   for the specified `feature` and must not be duplicated. For
    #   `CREDIT_PREFERENCE_OPTIONS`, all keys must reference the same
    #   `creditId`.
    #   @return [Array<Types::BillingPreferenceForKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/UpdateBillingPreferencesRequest AWS API Documentation
    #
    class UpdateBillingPreferencesRequest < Struct.new(
      :feature,
      :billing_preferences_per_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/UpdateBillingPreferencesResponse AWS API Documentation
    #
    class UpdateBillingPreferencesResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the billing view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the billing view.
    #   @return [String]
    #
    # @!attribute [rw] data_filter_expression
    #   See [Expression][1]. Billing view only supports `LINKED_ACCOUNT`,
    #   `Tags`, and `CostCategories`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html
    #   @return [Types::Expression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/UpdateBillingViewRequest AWS API Documentation
    #
    class UpdateBillingViewRequest < Struct.new(
      :arn,
      :name,
      :description,
      :data_filter_expression)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time when the billing view was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/UpdateBillingViewResponse AWS API Documentation
    #
    class UpdateBillingViewResponse < Struct.new(
      :arn,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field's information of a request that resulted in an exception.
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message describing why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

