# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceAgreement
  module Types

    # A subset of terms proposed by the proposer, which have been accepted
    # by the acceptor as part of agreement creation.
    #
    # @note AcceptedTerm is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AcceptedTerm corresponding to the set member.
    #
    # @!attribute [rw] legal_term
    #   Defines the list of text agreements proposed to the acceptors. An
    #   example is the end user license agreement (EULA).
    #   @return [Types::LegalTerm]
    #
    # @!attribute [rw] support_term
    #   Defines the customer support available for the acceptors when they
    #   purchase the software.
    #   @return [Types::SupportTerm]
    #
    # @!attribute [rw] renewal_term
    #   Defines that on graceful expiration of the agreement (when the
    #   agreement ends on its pre-defined end date), a new agreement will be
    #   created using the accepted terms on the existing agreement. In other
    #   words, the agreement will be renewed. Presence of `RenewalTerm` in
    #   the offer document means that auto-renewal is allowed. Buyers will
    #   have the option to accept or decline auto-renewal at the offer
    #   acceptance/agreement creation. Buyers can also change this flag from
    #   `True` to `False` or `False` to `True` at anytime during the
    #   agreement's lifecycle.
    #   @return [Types::RenewalTerm]
    #
    # @!attribute [rw] usage_based_pricing_term
    #   Defines a usage-based pricing model (typically, pay-as-you-go
    #   pricing), where the customers are charged based on product usage.
    #   @return [Types::UsageBasedPricingTerm]
    #
    # @!attribute [rw] configurable_upfront_pricing_term
    #   Defines a prepaid payment model that allows buyers to configure the
    #   entitlements they want to purchase and the duration.
    #   @return [Types::ConfigurableUpfrontPricingTerm]
    #
    # @!attribute [rw] byol_pricing_term
    #   Enables you and your customers to move your existing agreements to
    #   AWS Marketplace. The customer won't be charged for product usage in
    #   AWS Marketplace because they already paid for the product outside of
    #   AWS Marketplace.
    #   @return [Types::ByolPricingTerm]
    #
    # @!attribute [rw] recurring_payment_term
    #   Defines a pricing model where customers are charged a fixed
    #   recurring price at the end of each billing period.
    #   @return [Types::RecurringPaymentTerm]
    #
    # @!attribute [rw] validity_term
    #   Defines the conditions that will keep an agreement created from this
    #   offer valid.
    #   @return [Types::ValidityTerm]
    #
    # @!attribute [rw] payment_schedule_term
    #   Defines an installment-based pricing model where customers are
    #   charged a fixed price on different dates during the agreement
    #   validity period. This is used most commonly for flexible payment
    #   schedule pricing.
    #   @return [Types::PaymentScheduleTerm]
    #
    # @!attribute [rw] free_trial_pricing_term
    #   Defines a short-term free pricing model where the buyers aren’t
    #   charged anything within a specified limit.
    #   @return [Types::FreeTrialPricingTerm]
    #
    # @!attribute [rw] fixed_upfront_pricing_term
    #   Defines a pre-paid pricing model where the customers are charged a
    #   fixed upfront amount.
    #   @return [Types::FixedUpfrontPricingTerm]
    #
    # @!attribute [rw] variable_payment_term
    #   Defines a payment model where sellers can submit variable payment
    #   requests up to a maximum charge amount, with configurable approval
    #   strategies and expiration timelines.
    #   @return [Types::VariablePaymentTerm]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AcceptedTerm AWS API Documentation
    #
    class AcceptedTerm < Struct.new(
      :legal_term,
      :support_term,
      :renewal_term,
      :usage_based_pricing_term,
      :configurable_upfront_pricing_term,
      :byol_pricing_term,
      :recurring_payment_term,
      :validity_term,
      :payment_schedule_term,
      :free_trial_pricing_term,
      :fixed_upfront_pricing_term,
      :variable_payment_term,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class LegalTerm < AcceptedTerm; end
      class SupportTerm < AcceptedTerm; end
      class RenewalTerm < AcceptedTerm; end
      class UsageBasedPricingTerm < AcceptedTerm; end
      class ConfigurableUpfrontPricingTerm < AcceptedTerm; end
      class ByolPricingTerm < AcceptedTerm; end
      class RecurringPaymentTerm < AcceptedTerm; end
      class ValidityTerm < AcceptedTerm; end
      class PaymentScheduleTerm < AcceptedTerm; end
      class FreeTrialPricingTerm < AcceptedTerm; end
      class FixedUpfrontPricingTerm < AcceptedTerm; end
      class VariablePaymentTerm < AcceptedTerm; end
      class Unknown < AcceptedTerm; end
    end

    # The details of the party accepting the agreement terms. This is
    # commonly the buyer for `PurchaseAgreement`.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the acceptor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/Acceptor AWS API Documentation
    #
    class Acceptor < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # User does not have sufficient access to perform this action.
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :request_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the agreement, including top-level attributes (for
    # example, the agreement ID, proposer, and acceptor).
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] acceptance_time
    #   The date and time that the agreement was accepted.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The date and time when the agreement starts.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time when the agreement ends. The field is `null` for
    #   pay-as-you-go agreements, which don’t have end dates.
    #   @return [Time]
    #
    # @!attribute [rw] agreement_type
    #   The type of agreement. Value is `PurchaseAgreement`.
    #   @return [String]
    #
    # @!attribute [rw] acceptor
    #   Details of the party accepting the agreement terms. This is commonly
    #   the buyer for `PurchaseAgreement.`
    #   @return [Types::Acceptor]
    #
    # @!attribute [rw] proposer
    #   Details of the party proposing the agreement terms, most commonly
    #   the seller for `PurchaseAgreement`.
    #   @return [Types::Proposer]
    #
    # @!attribute [rw] proposal_summary
    #   A summary of the proposal
    #   @return [Types::ProposalSummary]
    #
    # @!attribute [rw] status
    #   The current status of the agreement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AgreementViewSummary AWS API Documentation
    #
    class AgreementViewSummary < Struct.new(
      :agreement_id,
      :acceptance_time,
      :start_time,
      :end_time,
      :agreement_type,
      :acceptor,
      :proposer,
      :proposal_summary,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Enables you and your customers to move your existing agreements to AWS
    # Marketplace. The customer won't be charged for product usage in AWS
    # Marketplace because they already paid for the product outside of AWS
    # Marketplace.
    #
    # @!attribute [rw] type
    #   Type of the term being updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ByolPricingTerm AWS API Documentation
    #
    class ByolPricingTerm < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a prepaid payment model that allows buyers to configure the
    # entitlements they want to purchase and the duration.
    #
    # @!attribute [rw] type
    #   Category of selector.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices mentioned in the term.
    #   @return [String]
    #
    # @!attribute [rw] rate_cards
    #   A rate card defines the per unit rates for product dimensions.
    #   @return [Array<Types::ConfigurableUpfrontRateCardItem>]
    #
    # @!attribute [rw] configuration
    #   Additional parameters specified by the acceptor while accepting the
    #   term.
    #   @return [Types::ConfigurableUpfrontPricingTermConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ConfigurableUpfrontPricingTerm AWS API Documentation
    #
    class ConfigurableUpfrontPricingTerm < Struct.new(
      :type,
      :currency_code,
      :rate_cards,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a prepaid payment model that allows buyers to configure the
    # entitlements they want to purchase and the duration.
    #
    # @!attribute [rw] selector_value
    #   Defines the length of time for which the particular
    #   pricing/dimension is being purchased by the acceptor.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   Defines the dimensions that the acceptor has purchased from the
    #   overall set of dimensions presented in the rate card.
    #   @return [Array<Types::Dimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ConfigurableUpfrontPricingTermConfiguration AWS API Documentation
    #
    class ConfigurableUpfrontPricingTermConfiguration < Struct.new(
      :selector_value,
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Within the prepaid payment model defined under
    # `ConfigurableUpfrontPricingTerm`, the `RateCardItem` defines all the
    # various rate cards (including pricing and dimensions) that have been
    # proposed.
    #
    # @!attribute [rw] selector
    #   Differentiates between the mutually exclusive rate cards in the same
    #   pricing term to be selected by the buyer.
    #   @return [Types::Selector]
    #
    # @!attribute [rw] constraints
    #   Defines limits on how the term can be configured by acceptors.
    #   @return [Types::Constraints]
    #
    # @!attribute [rw] rate_card
    #   Defines the per unit rates for product dimensions.
    #   @return [Array<Types::RateCardItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ConfigurableUpfrontRateCardItem AWS API Documentation
    #
    class ConfigurableUpfrontRateCardItem < Struct.new(
      :selector,
      :constraints,
      :rate_card)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines limits on how the term can be configured by acceptors.
    #
    # @!attribute [rw] multiple_dimension_selection
    #   Determines if buyers are allowed to select multiple dimensions in
    #   the rate card. The possible values are `Allowed` and `Disallowed`.
    #   The default value is `Allowed`.
    #   @return [String]
    #
    # @!attribute [rw] quantity_configuration
    #   Determines if acceptors are allowed to configure quantity for each
    #   dimension in rate card. The possible values are `Allowed` and
    #   `Disallowed`. The default value is `Allowed`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/Constraints AWS API Documentation
    #
    class Constraints < Struct.new(
      :multiple_dimension_selection,
      :quantity_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/DescribeAgreementInput AWS API Documentation
    #
    class DescribeAgreementInput < Struct.new(
      :agreement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] acceptor
    #   The details of the party accepting the agreement terms. This is
    #   commonly the buyer for `PurchaseAgreement`.
    #   @return [Types::Acceptor]
    #
    # @!attribute [rw] proposer
    #   The details of the party proposing the agreement terms. This is
    #   commonly the seller for `PurchaseAgreement`.
    #   @return [Types::Proposer]
    #
    # @!attribute [rw] start_time
    #   The date and time when the agreement starts.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time when the agreement ends. The field is `null` for
    #   pay-as-you-go agreements, which don’t have end dates.
    #   @return [Time]
    #
    # @!attribute [rw] acceptance_time
    #   The date and time the offer was accepted or the agreement was
    #   created.
    #
    #   <note markdown="1"> `AcceptanceTime` and `StartTime` can differ for future dated
    #   agreements (FDAs).
    #
    #    </note>
    #   @return [Time]
    #
    # @!attribute [rw] agreement_type
    #   The type of agreement. Values are `PurchaseAgreement` or
    #   `VendorInsightsAgreement`.
    #   @return [String]
    #
    # @!attribute [rw] estimated_charges
    #   The estimated cost of the agreement.
    #   @return [Types::EstimatedCharges]
    #
    # @!attribute [rw] proposal_summary
    #   A summary of the proposal received from the proposer.
    #   @return [Types::ProposalSummary]
    #
    # @!attribute [rw] status
    #   The current status of the agreement.
    #
    #   Statuses include:
    #
    #   * `ACTIVE` – The terms of the agreement are active.
    #
    #   * `ARCHIVED` – The agreement ended without a specified reason.
    #
    #   * `CANCELLED` – The acceptor ended the agreement before the defined
    #     end date.
    #
    #   * `EXPIRED` – The agreement ended on the defined end date.
    #
    #   * `RENEWED` – The agreement was renewed into a new agreement (for
    #     example, an auto-renewal).
    #
    #   * `REPLACED` – The agreement was replaced using an agreement
    #     replacement offer.
    #
    #   * `TERMINATED` – The agreement ended before the defined end date
    #     because of an AWS termination (for example, a payment failure).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/DescribeAgreementOutput AWS API Documentation
    #
    class DescribeAgreementOutput < Struct.new(
      :agreement_id,
      :acceptor,
      :proposer,
      :start_time,
      :end_time,
      :acceptance_time,
      :agreement_type,
      :estimated_charges,
      :proposal_summary,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the dimensions that the acceptor has purchased from the
    # overall set of dimensions presented in the rate card.
    #
    # @!attribute [rw] dimension_key
    #   The name of key value of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] dimension_value
    #   The number of units of the dimension the acceptor has purchased.
    #
    #   <note markdown="1"> For Agreements with `ConfigurableUpfrontPricingTerm`, the `RateCard`
    #   section will define the prices and dimensions defined by the seller
    #   (proposer), whereas the `Configuration` section will define the
    #   actual dimensions, prices, and units the buyer has chosen to accept.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/Dimension AWS API Documentation
    #
    class Dimension < Struct.new(
      :dimension_key,
      :dimension_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Includes the list of references to legal resources proposed by the
    # proposer to the acceptor. Each `DocumentItem` refers to an individual
    # reference.
    #
    # @!attribute [rw] type
    #   Category of the document. Document types include:
    #
    #   * `CustomEula` – A custom EULA provided by you as seller. A URL for
    #     a EULA stored in an accessible Amazon S3 bucket is required for
    #     this document type.
    #
    #   * `CustomDsa` – A custom Data Subscription Agreement (DSA) provided
    #     by you as seller. A URL for a DSA stored in an accessible Amazon
    #     S3 bucket is required for this document type.
    #
    #   * `StandardEula` – The Standard Contract for AWS Marketplace (SCMP).
    #     For more information about SCMP, see the AWS Marketplace Seller
    #     Guide. You don’t provide a URL for this type because it’s managed
    #     by AWS Marketplace.
    #
    #   * `StandardDsa` – DSA for AWS Marketplace. For more information
    #     about the DSA, see the AWS Data Exchange User Guide. You don’t
    #     provide a URL for this type because it’s managed by AWS
    #     Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   A URL to the legal document for buyers to read. Required when `Type`
    #   is `CustomEula`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of standard contracts provided by AWS Marketplace. Required
    #   when Type is `StandardEula` or `StandardDsa`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/DocumentItem AWS API Documentation
    #
    class DocumentItem < Struct.new(
      :type,
      :url,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Estimated cost of the agreement.
    #
    # @!attribute [rw] currency_code
    #   Defines the currency code for the charge.
    #   @return [String]
    #
    # @!attribute [rw] agreement_value
    #   The total known amount customer has to pay across the lifecycle of
    #   the agreement.
    #
    #   <note markdown="1"> This is the total contract value if accepted terms contain
    #   `ConfigurableUpfrontPricingTerm` or `FixedUpfrontPricingTerm`. In
    #   the case of pure contract pricing, this will be the total value of
    #   the contract. In the case of contracts with consumption pricing,
    #   this will only include the committed value and not include any
    #   overages that occur.
    #
    #    If the accepted terms contain `PaymentScheduleTerm`, it will be the
    #   total payment schedule amount. This occurs when flexible payment
    #   schedule is used, and is the sum of all invoice charges in the
    #   payment schedule.
    #
    #    In case a customer has amended an agreement, by purchasing more
    #   units of any dimension, this will include both the original cost as
    #   well as the added cost incurred due to addition of new units.
    #
    #    This is `0` if the accepted terms contain `UsageBasedPricingTerm`
    #   without `ConfigurableUpfrontPricingTerm` or `RecurringPaymentTerm`.
    #   This occurs for usage-based pricing (such as SaaS metered or
    #   AMI/container hourly or monthly), because the exact usage is not
    #   known upfront.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/EstimatedCharges AWS API Documentation
    #
    class EstimatedCharges < Struct.new(
      :currency_code,
      :agreement_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter name and value pair that is used to return a more specific
    # list of results. Filters can be used to match a set of resources by
    # various criteria, such as `offerId` or `productId`.
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a prepaid pricing model where the customers are charged a
    # fixed upfront amount.
    #
    # @!attribute [rw] type
    #   Category of the term being updated.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices mentioned in this term.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   Contract duration for the terms.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   Fixed amount to be charged to the customer when this term is
    #   accepted.
    #   @return [String]
    #
    # @!attribute [rw] grants
    #   Entitlements granted to the acceptor of fixed upfront as part of
    #   agreement execution.
    #   @return [Array<Types::GrantItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/FixedUpfrontPricingTerm AWS API Documentation
    #
    class FixedUpfrontPricingTerm < Struct.new(
      :type,
      :currency_code,
      :duration,
      :price,
      :grants)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a short-term free pricing model where the buyers aren’t
    # charged anything within a specified limit.
    #
    # @!attribute [rw] type
    #   Category of the term.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   Duration of the free trial period (5–31 days).
    #   @return [String]
    #
    # @!attribute [rw] grants
    #   Entitlements granted to the acceptor of a free trial as part of an
    #   agreement execution.
    #   @return [Array<Types::GrantItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/FreeTrialPricingTerm AWS API Documentation
    #
    class FreeTrialPricingTerm < Struct.new(
      :type,
      :duration,
      :grants)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of agreements to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start pagination
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementTermsInput AWS API Documentation
    #
    class GetAgreementTermsInput < Struct.new(
      :agreement_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accepted_terms
    #   A subset of terms proposed by the proposer that have been accepted
    #   by the acceptor as part of the agreement creation.
    #   @return [Array<Types::AcceptedTerm>]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start pagination
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementTermsOutput AWS API Documentation
    #
    class GetAgreementTermsOutput < Struct.new(
      :accepted_terms,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Entitlements granted to the acceptor of fixed upfront as part of
    # agreement execution.
    #
    # @!attribute [rw] dimension_key
    #   Unique dimension key defined in the product document. Dimensions
    #   represent categories of capacity in a product and are specified when
    #   the product is listed in AWS Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] max_quantity
    #   Maximum amount of capacity that the buyer can be entitled to the
    #   given dimension of the product. If `MaxQuantity` is not provided,
    #   the buyer will be able to use an unlimited amount of the given
    #   dimension.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GrantItem AWS API Documentation
    #
    class GrantItem < Struct.new(
      :dimension_key,
      :max_quantity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected error during processing of request.
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :request_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the list of text agreements proposed to the acceptors. An
    # example is the end user license agreement (EULA).
    #
    # @!attribute [rw] type
    #   Category of the term being updated.
    #   @return [String]
    #
    # @!attribute [rw] documents
    #   List of references to legal resources proposed to the buyers. An
    #   example is the EULA.
    #   @return [Array<Types::DocumentItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/LegalTerm AWS API Documentation
    #
    class LegalTerm < Struct.new(
      :type,
      :documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an installment-based pricing model where customers are charged
    # a fixed price on different dates during the agreement validity period.
    # This is used most commonly for flexible payment schedule pricing.
    #
    # @!attribute [rw] type
    #   Type of the term.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices mentioned in the term.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   List of the payment schedule where each element defines one
    #   installment of payment. It contains the information necessary for
    #   calculating the price.
    #   @return [Array<Types::ScheduleItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/PaymentScheduleTerm AWS API Documentation
    #
    class PaymentScheduleTerm < Struct.new(
      :type,
      :currency_code,
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the proposal received from the proposer.
    #
    # @!attribute [rw] resources
    #   The list of resources involved in the agreement.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] offer_id
    #   The unique identifier of the offer in AWS Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] offer_set_id
    #   A unique identifier for the offer set containing this offer. All
    #   agreements created from offers in this set include this identifier
    #   as context.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ProposalSummary AWS API Documentation
    #
    class ProposalSummary < Struct.new(
      :resources,
      :offer_id,
      :offer_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the party proposing the agreement terms,. This is commonly
    # the seller for `PurchaseAgreement`.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the proposer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/Proposer AWS API Documentation
    #
    class Proposer < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the per unit rates for each individual product dimension.
    #
    # @!attribute [rw] dimension_key
    #   Dimension for which the given entitlement applies. Dimensions
    #   represent categories of capacity in a product and are specified when
    #   the product is listed in AWS Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   Per unit price for the product dimension that’s used for calculating
    #   the amount to be charged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RateCardItem AWS API Documentation
    #
    class RateCardItem < Struct.new(
      :dimension_key,
      :price)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a pricing model where customers are charged a fixed recurring
    # price at the end of each billing period.
    #
    # @!attribute [rw] type
    #   Type of the term being updated.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices mentioned in this term.
    #   @return [String]
    #
    # @!attribute [rw] billing_period
    #   Defines the recurrence at which buyers are charged.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   Amount charged to the buyer every billing period.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RecurringPaymentTerm AWS API Documentation
    #
    class RecurringPaymentTerm < Struct.new(
      :type,
      :currency_code,
      :billing_period,
      :price)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines that on graceful expiration of the agreement (when the
    # agreement ends on its pre-defined end date), a new agreement will be
    # created using the accepted terms on the existing agreement. In other
    # words, the agreement will be renewed. The presence of `RenewalTerm` in
    # the offer document means that auto-renewal is allowed. Buyers will
    # have the option to accept or decline auto-renewal at the offer
    # acceptance/agreement creation. Buyers can also change this flag from
    # `True` to `False` or `False` to `True` at anytime during the
    # agreement's lifecycle.
    #
    # @!attribute [rw] type
    #   Category of the term being updated.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Additional parameters specified by the acceptor while accepting the
    #   term.
    #   @return [Types::RenewalTermConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RenewalTerm AWS API Documentation
    #
    class RenewalTerm < Struct.new(
      :type,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional parameters specified by the acceptor while accepting the
    # term.
    #
    # @!attribute [rw] enable_auto_renew
    #   Defines whether the acceptor has chosen to auto-renew the agreement
    #   at the end of its lifecycle. Can be set to `True` or `False`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RenewalTermConfiguration AWS API Documentation
    #
    class RenewalTermConfiguration < Struct.new(
      :enable_auto_renew)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of resources involved in the agreement.
    #
    # @!attribute [rw] id
    #   The unique identifier of the resource.
    #
    #   <note markdown="1"> We mention the term resource, which is most commonly a product, so a
    #   `resourceId` is also a `productId`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of the resource, which is the product. Values include
    #   `SaaSProduct` or `AmiProduct`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request references a resource which does not exist.
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :request_id,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An individual installment of the payment that includes the date and
    # amount of the charge.
    #
    # @!attribute [rw] charge_date
    #   The date that the customer would pay the price defined in this
    #   payment schedule term. Invoices are generated on the date provided.
    #   @return [Time]
    #
    # @!attribute [rw] charge_amount
    #   The price that the customer would pay on the scheduled date
    #   (chargeDate).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ScheduleItem AWS API Documentation
    #
    class ScheduleItem < Struct.new(
      :charge_date,
      :charge_amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog in which the agreement was created.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filter name and value pair used to return a specific list of
    #   results.
    #
    #   The following filters are supported:
    #
    #   * `ResourceIdentifier` – The unique identifier of the resource.
    #
    #   * `ResourceType` – Type of the resource, which is the product
    #     (`AmiProduct`, `ContainerProduct`, `SaaSProduct`,
    #     `ProfessionalServicesProduct`, or `MachineLearningProduct`).
    #
    #   * `PartyType` – The party type of the caller. For agreements where
    #     the caller is the proposer, use the `Proposer` filter.
    #
    #   * `AcceptorAccountId` – The AWS account ID of the party accepting
    #     the agreement terms.
    #
    #   * `OfferId` – The unique identifier of the offer in which the terms
    #     are registered in the agreement token.
    #
    #   * `Status` – The current status of the agreement. Values include
    #     `ACTIVE`, `ARCHIVED`, `CANCELLED`, `EXPIRED`, `RENEWED`,
    #     `REPLACED`, and `TERMINATED`.
    #
    #   * `BeforeEndTime` – A date used to filter agreements with a date
    #     before the `endTime` of an agreement.
    #
    #   * `AfterEndTime` – A date used to filter agreements with a date
    #     after the `endTime` of an agreement.
    #
    #   * `AgreementType` – The type of agreement. Supported value includes
    #     `PurchaseAgreement`.
    #
    #   * `OfferSetId` – A unique identifier for the offer set containing
    #     this offer. All agreements created from offers in this set include
    #     this identifier as context.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort
    #   An object that contains the `SortBy` and `SortOrder` attributes.
    #   Only `EndTime` is supported for `SearchAgreements`. The default sort
    #   is `EndTime` descending.
    #   @return [Types::Sort]
    #
    # @!attribute [rw] max_results
    #   The maximum number of agreements to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/SearchAgreementsInput AWS API Documentation
    #
    class SearchAgreementsInput < Struct.new(
      :catalog,
      :filters,
      :sort,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_view_summaries
    #   A summary of the agreement, including top-level attributes (for
    #   example, the agreement ID, proposer, and acceptor).
    #   @return [Array<Types::AgreementViewSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used for pagination. The field is `null` if there are no
    #   more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/SearchAgreementsOutput AWS API Documentation
    #
    class SearchAgreementsOutput < Struct.new(
      :agreement_view_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Differentiates between the mutually exclusive rate cards in the same
    # pricing term to be selected by the buyer.
    #
    # @!attribute [rw] type
    #   Category of selector.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Contract duration. This field supports the ISO 8601 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/Selector AWS API Documentation
    #
    class Selector < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the `SortBy` and `SortOrder` attributes.
    #
    # @!attribute [rw] sort_by
    #   The attribute on which the data is grouped, which can be by
    #   `StartTime` and `EndTime`. The default value is `EndTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sorting order, which can be `ASCENDING` or `DESCENDING`. The
    #   default value is `DESCENDING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/Sort AWS API Documentation
    #
    class Sort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the customer support available for the acceptors when they
    # purchase the software.
    #
    # @!attribute [rw] type
    #   Category of the term being updated.
    #   @return [String]
    #
    # @!attribute [rw] refund_policy
    #   Free-text field about the refund policy description that will be
    #   shown to customers as is on the website and console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/SupportTerm AWS API Documentation
    #
    class SupportTerm < Struct.new(
      :type,
      :refund_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :request_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a usage-based pricing model (typically, pay-as-you-go
    # pricing), where the customers are charged based on product usage.
    #
    # @!attribute [rw] type
    #   Category of the term.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices mentioned in the term.
    #   @return [String]
    #
    # @!attribute [rw] rate_cards
    #   List of rate cards.
    #   @return [Array<Types::UsageBasedRateCardItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/UsageBasedPricingTerm AWS API Documentation
    #
    class UsageBasedPricingTerm < Struct.new(
      :type,
      :currency_code,
      :rate_cards)
      SENSITIVE = []
      include Aws::Structure
    end

    # Within the pay-as-you-go model defined under `UsageBasedPricingTerm`,
    # the `UsageBasedRateCardItem` defines an individual rate for a product
    # dimension.
    #
    # @!attribute [rw] rate_card
    #   Defines the per unit rates for product dimensions.
    #   @return [Array<Types::RateCardItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/UsageBasedRateCardItem AWS API Documentation
    #
    class UsageBasedRateCardItem < Struct.new(
      :rate_card)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the service.
    #
    # @!attribute [rw] request_id
    #   The unique identifier associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The fields associated with the error.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :request_id,
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the service.
    #
    # @!attribute [rw] name
    #   The name of the field associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   See applicable actions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the conditions that will keep an agreement created from this
    # offer valid.
    #
    # @!attribute [rw] type
    #   Category of the term being updated.
    #   @return [String]
    #
    # @!attribute [rw] agreement_duration
    #   Defines the duration that the agreement remains active. If
    #   `AgreementStartDate` isn’t provided, the agreement duration is
    #   relative to the agreement signature time. The duration is
    #   represented in the ISO\_8601 format.
    #   @return [String]
    #
    # @!attribute [rw] agreement_start_date
    #   Defines the date when agreement starts. The agreement starts at
    #   00:00:00.000 UTC on the date provided. If `AgreementStartDate` isn’t
    #   provided, the agreement start date is determined based on agreement
    #   signature time.
    #   @return [Time]
    #
    # @!attribute [rw] agreement_end_date
    #   Defines the date when the agreement ends. The agreement ends at
    #   23:59:59.999 UTC on the date provided. If `AgreementEndDate` isn’t
    #   provided, the agreement end date is determined by the validity of
    #   individual terms.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ValidityTerm AWS API Documentation
    #
    class ValidityTerm < Struct.new(
      :type,
      :agreement_duration,
      :agreement_start_date,
      :agreement_end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a payment model where sellers can submit variable payment
    # requests up to a maximum charge amount, with configurable approval
    # strategies and expiration timelines.
    #
    # @!attribute [rw] type
    #   Type of the term.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices mentioned in the term.
    #   @return [String]
    #
    # @!attribute [rw] max_total_charge_amount
    #   The maximum total amount that can be charged to the customer through
    #   variable payment requests under this term.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Additional parameters specified by the acceptor while accepting the
    #   term.
    #   @return [Types::VariablePaymentTermConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/VariablePaymentTerm AWS API Documentation
    #
    class VariablePaymentTerm < Struct.new(
      :type,
      :currency_code,
      :max_total_charge_amount,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional parameters specified by the acceptor while accepting the
    # variable payment term.
    #
    # @!attribute [rw] payment_request_approval_strategy
    #   Defines the strategy for approving payment requests. Values include
    #   `AUTO_APPROVE_ON_EXPIRATION` and `WAIT_FOR_APPROVAL`
    #   @return [String]
    #
    # @!attribute [rw] expiration_duration
    #   Defines the duration after which a payment request is automatically
    #   approved if no further action is taken. This only applies when the
    #   payment request approval strategy is set to
    #   `AUTO_APPROVE_ON_EXPIRATION`. The duration is represented in the
    #   ISO\_8601 format (e.g., P10D for 10 days).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/VariablePaymentTermConfiguration AWS API Documentation
    #
    class VariablePaymentTermConfiguration < Struct.new(
      :payment_request_approval_strategy,
      :expiration_duration)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

