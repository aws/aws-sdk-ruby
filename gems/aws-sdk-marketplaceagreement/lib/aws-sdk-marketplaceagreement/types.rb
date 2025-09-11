# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceAgreement
  # This module contains the types returned by client operations.
  module Types

    # <p>A subset of terms proposed by the proposer, which have been accepted by the acceptor as part of agreement creation.</p>
    # @!attribute legal_term
    #   <p>Defines the list of text agreements proposed to the acceptors. An example is the end user license agreement (EULA).</p>
    #   @return [Types::LegalTerm]
    # @!attribute support_term
    #   <p>Defines the customer support available for the acceptors when they purchase the software.</p>
    #   @return [Types::SupportTerm]
    # @!attribute renewal_term
    #   <p>Defines that on graceful expiration of the agreement (when the agreement ends on its pre-defined end date), a new agreement will be created using the accepted terms on the existing agreement. In other words, the agreement will be renewed. Presence of <code>RenewalTerm</code> in the offer document means that auto-renewal is allowed. Buyers will have the option to accept or decline auto-renewal at the offer acceptance/agreement creation. Buyers can also change this flag from <code>True</code> to <code>False</code> or <code>False</code> to <code>True</code> at anytime during the agreement's lifecycle.</p>
    #   @return [Types::RenewalTerm]
    # @!attribute usage_based_pricing_term
    #   <p>Defines a usage-based pricing model (typically, pay-as-you-go pricing), where the customers are charged based on product usage.</p>
    #   @return [Types::UsageBasedPricingTerm]
    # @!attribute configurable_upfront_pricing_term
    #   <p>Defines a prepaid payment model that allows buyers to configure the entitlements they want to purchase and the duration.</p>
    #   @return [Types::ConfigurableUpfrontPricingTerm]
    # @!attribute byol_pricing_term
    #   <p>Enables you and your customers to move your existing agreements to AWS Marketplace. The customer won't be charged for product usage in AWS Marketplace because they already paid for the product outside of AWS Marketplace.</p>
    #   @return [Types::ByolPricingTerm]
    # @!attribute recurring_payment_term
    #   <p>Defines a pricing model where customers are charged a fixed recurring price at the end of each billing period.</p>
    #   @return [Types::RecurringPaymentTerm]
    # @!attribute validity_term
    #   <p>Defines the conditions that will keep an agreement created from this offer valid.</p>
    #   @return [Types::ValidityTerm]
    # @!attribute payment_schedule_term
    #   <p>Defines an installment-based pricing model where customers are charged a fixed price on different dates during the agreement validity period. This is used most commonly for flexible payment schedule pricing.</p>
    #   @return [Types::PaymentScheduleTerm]
    # @!attribute free_trial_pricing_term
    #   <p>Defines a short-term free pricing model where the buyers aren’t charged anything within a specified limit.</p>
    #   @return [Types::FreeTrialPricingTerm]
    # @!attribute fixed_upfront_pricing_term
    #   <p>Defines a pre-paid pricing model where the customers are charged a fixed upfront amount.</p>
    #   @return [Types::FixedUpfrontPricingTerm]
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
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      class Unknown < AcceptedTerm; end
    end

    # <p>The details of the party accepting the agreement terms. This is commonly the buyer for
    #             <code>PurchaseAgreement</code>.</p>
    # @!attribute account_id
    #   <p>The AWS account ID of the acceptor.</p>
    #   @return [String]
    class Acceptor < Struct.new(
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>User does not have sufficient access to perform this action.</p>
    # @!attribute request_id
    #   <p>The unique identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :request_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the agreement, including top-level attributes (for example, the agreement
    #          ID, version, proposer, and acceptor).</p>
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    # @!attribute acceptance_time
    #   <p>The date and time that the agreement was accepted.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>The date and time when the agreement starts.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time when the agreement ends. The field is <code>null</code> for
    #            pay-as-you-go agreements, which don’t have end dates.</p>
    #   @return [Time]
    # @!attribute agreement_type
    #   <p>The type of agreement. Values are <code>PurchaseAgreement</code> or
    #               <code>VendorInsightsAgreement</code>.</p>
    #   @return [String]
    # @!attribute acceptor
    #   <p>Details of the party accepting the agreement terms. This is commonly the buyer for
    #               <code>PurchaseAgreement.</code>
    #            </p>
    #   @return [Types::Acceptor]
    # @!attribute proposer
    #   <p>Details of the party proposing the agreement terms, most commonly the seller for
    #               <code>PurchaseAgreement</code>.</p>
    #   @return [Types::Proposer]
    # @!attribute proposal_summary
    #   <p>A summary of the proposal</p>
    #   @return [Types::ProposalSummary]
    # @!attribute status
    #   <p>The current status of the agreement. </p>
    #   @return [String]
    class AgreementViewSummary < Struct.new(
      :agreement_id,
      :acceptance_time,
      :start_time,
      :end_time,
      :agreement_type,
      :acceptor,
      :proposer,
      :proposal_summary,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Enables you and your customers to move your existing agreements to AWS Marketplace. The
    #          customer won't be charged for product usage in AWS Marketplace because they already paid
    #          for the product outside of AWS Marketplace.</p>
    # @!attribute type
    #   <p>Type of the term being updated.</p>
    #   @return [String]
    class ByolPricingTerm < Struct.new(
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a prepaid payment model that allows buyers to configure the entitlements they
    #          want to purchase and the duration.</p>
    # @!attribute type
    #   <p>Category of selector.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices mentioned in the term.</p>
    #   @return [String]
    # @!attribute rate_cards
    #   <p>A rate card defines the per unit rates for product dimensions.</p>
    #   @return [Array<Types::ConfigurableUpfrontRateCardItem>]
    # @!attribute configuration
    #   <p>Additional parameters specified by the acceptor while accepting the term.</p>
    #   @return [Types::ConfigurableUpfrontPricingTermConfiguration]
    class ConfigurableUpfrontPricingTerm < Struct.new(
      :type,
      :currency_code,
      :rate_cards,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a prepaid payment model that allows buyers to configure the entitlements they
    #          want to purchase and the duration.</p>
    # @!attribute selector_value
    #   <p>Defines the length of time for which the particular pricing/dimension is being purchased
    #            by the acceptor.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>Defines the dimensions that the acceptor has purchased from the overall set of
    #            dimensions presented in the rate card.</p>
    #   @return [Array<Types::Dimension>]
    class ConfigurableUpfrontPricingTermConfiguration < Struct.new(
      :selector_value,
      :dimensions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Within the prepaid payment model defined under <code>ConfigurableUpfrontPricingTerm</code>, the <code>RateCardItem</code> defines all the various rate cards (including pricing and dimensions) that have been proposed.</p>
    # @!attribute selector
    #   <p>Differentiates between the mutually exclusive rate cards in the same pricing term to be selected by the buyer.</p>
    #   @return [Types::Selector]
    # @!attribute constraints
    #   <p>Defines limits on how the term can be configured by acceptors.</p>
    #   @return [Types::Constraints]
    # @!attribute rate_card
    #   <p>Defines the per unit rates for product dimensions.</p>
    #   @return [Array<Types::RateCardItem>]
    class ConfigurableUpfrontRateCardItem < Struct.new(
      :selector,
      :constraints,
      :rate_card,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines limits on how the term can be configured by acceptors. </p>
    # @!attribute multiple_dimension_selection
    #   <p>Determines if buyers are allowed to select multiple dimensions in the rate card. The
    #            possible values are <code>Allowed</code> and <code>Disallowed</code>. The default value is
    #               <code>Allowed</code>.</p>
    #   @return [String]
    # @!attribute quantity_configuration
    #   <p>Determines if acceptors are allowed to configure quantity for each dimension in rate
    #            card. The possible values are <code>Allowed</code> and <code>Disallowed</code>. The default
    #            value is <code>Allowed</code>.</p>
    #   @return [String]
    class Constraints < Struct.new(
      :multiple_dimension_selection,
      :quantity_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    class DescribeAgreementInput < Struct.new(
      :agreement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    # @!attribute acceptor
    #   <p>The details of the party accepting the agreement terms. This is commonly the buyer for
    #               <code>PurchaseAgreement</code>.</p>
    #   @return [Types::Acceptor]
    # @!attribute proposer
    #   <p>The details of the party proposing the agreement terms. This is commonly the seller for
    #               <code>PurchaseAgreement</code>.</p>
    #   @return [Types::Proposer]
    # @!attribute start_time
    #   <p>The date and time when the agreement starts.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time when the agreement ends. The field is <code>null</code> for
    #            pay-as-you-go agreements, which don’t have end dates.</p>
    #   @return [Time]
    # @!attribute acceptance_time
    #   <p>The date and time the offer was accepted or the agreement was created.</p>
    #            <note>
    #               <p>
    #                  <code>AcceptanceTime</code> and <code>StartTime</code> can differ for future dated
    #               agreements (FDAs).</p>
    #            </note>
    #   @return [Time]
    # @!attribute agreement_type
    #   <p>The type of agreement. Values are <code>PurchaseAgreement</code> or
    #               <code>VendorInsightsAgreement</code>.</p>
    #   @return [String]
    # @!attribute estimated_charges
    #   <p>The estimated cost of the agreement.</p>
    #   @return [Types::EstimatedCharges]
    # @!attribute proposal_summary
    #   <p>A summary of the proposal received from the proposer.</p>
    #   @return [Types::ProposalSummary]
    # @!attribute status
    #   <p>The current status of the agreement.</p>
    #            <p>Statuses include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> – The terms of the agreement are active.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ARCHIVED</code> – The agreement ended without a specified reason.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> – The acceptor ended the agreement before the defined end
    #                  date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXPIRED</code> – The agreement ended on the defined end date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RENEWED</code> – The agreement was renewed into a new agreement (for
    #                  example, an auto-renewal).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REPLACED</code> – The agreement was replaced using an agreement replacement
    #                  offer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROLLED_BACK</code> (Only applicable to inactive agreement revisions) – The
    #                  agreement revision has been rolled back because of an error. An earlier revision is
    #                  now active.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUPERCEDED</code> (Only applicable to inactive agreement revisions) – The
    #                  agreement revision is no longer active and another agreement revision is now
    #                  active.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERMINATED</code> – The agreement ended before the defined end date because
    #                  of an AWS termination (for example, a payment failure).</p>
    #               </li>
    #            </ul>
    #   @return [String]
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
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the dimensions that the acceptor has purchased from the overall set of
    #          dimensions presented in the rate card.</p>
    # @!attribute dimension_key
    #   <p>The name of key value of the dimension.</p>
    #   @return [String]
    # @!attribute dimension_value
    #   <p>The number of units of the dimension the acceptor has purchased.</p>
    #            <note>
    #               <p>For Agreements with <code>ConfigurableUpfrontPricingTerm</code>, the
    #                  <code>RateCard</code> section will define the prices and dimensions defined by the
    #               seller (proposer), whereas the <code>Configuration</code> section will define the actual
    #               dimensions, prices, and units the buyer has chosen to accept.</p>
    #            </note>
    #   @return [Integer]
    class Dimension < Struct.new(
      :dimension_key,
      :dimension_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:dimension_value] = 0 unless options.key?(:dimension_value)
        super
      end
    end

    # <p>Includes the list of references to legal resources proposed by the proposer to the acceptor. Each <code>DocumentItem</code> refers to an individual reference.</p>
    # @!attribute type
    #   <p>Category of the document. Document types include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CustomEula</code> – A custom EULA provided by you as seller. A URL for a
    #                  EULA stored in an accessible Amazon S3 bucket is required for this document
    #                  type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CustomDsa</code> – A custom Data Subscription Agreement (DSA) provided by
    #                  you as seller. A URL for a DSA stored in an accessible Amazon S3 bucket is required
    #                  for this document type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StandardEula</code> – The Standard Contract for AWS Marketplace (SCMP). For
    #                  more information about SCMP, see the AWS Marketplace Seller Guide. You don’t provide
    #                  a URL for this type because it’s managed by AWS Marketplace.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StandardDsa</code> – DSA for AWS Marketplace. For more information about the
    #                  DSA, see the AWS Data Exchange User Guide. You don’t provide a URL for this type
    #                  because it’s managed by AWS Marketplace.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute url
    #   <p>A URL to the legal document for buyers to read. Required when <code>Type</code> is <code>CustomEula</code>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version of standard contracts provided by AWS Marketplace. Required when Type is <code>StandardEula</code> or <code>StandardDsa</code>. </p>
    #   @return [String]
    class DocumentItem < Struct.new(
      :type,
      :url,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Estimated cost of the agreement.</p>
    # @!attribute currency_code
    #   <p>Defines the currency code for the charge.</p>
    #   @return [String]
    # @!attribute agreement_value
    #   <p>The total known amount customer has to pay across the lifecycle of the agreement.</p>
    #            <note>
    #               <p>This is the total contract value if accepted terms contain
    #                  <code>ConfigurableUpfrontPricingTerm</code> or <code>FixedUpfrontPricingTerm</code>.
    #               In the case of pure contract pricing, this will be the total value of the contract. In
    #               the case of contracts with consumption pricing, this will only include the committed
    #               value and not include any overages that occur.</p>
    #               <p>If the accepted terms contain <code>PaymentScheduleTerm</code>, it will be the total
    #               payment schedule amount. This occurs when flexible payment schedule is used, and is the
    #               sum of all invoice charges in the payment schedule.</p>
    #               <p>In case a customer has amended an agreement, by purchasing more units of any
    #               dimension, this will include both the original cost as well as the added cost incurred
    #               due to addition of new units. </p>
    #               <p>This is <code>0</code> if the accepted terms contain
    #                  <code>UsageBasedPricingTerm</code> without
    #                  <code>ConfigurableUpfrontPricingTerm</code> or <code>RecurringPaymentTerm</code>.
    #               This occurs for usage-based pricing (such as SaaS metered or AMI/container hourly or
    #               monthly), because the exact usage is not known upfront.</p>
    #            </note>
    #   @return [String]
    class EstimatedCharges < Struct.new(
      :currency_code,
      :agreement_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter name and value pair that is used to return a more specific list of results.
    #          Filters can be used to match a set of resources by various criteria, such as
    #             <code>offerId</code> or <code>productId</code>.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The filter value.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a prepaid pricing model where the customers are charged a fixed upfront
    #          amount.</p>
    # @!attribute type
    #   <p>Category of the term being updated.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices mentioned in this term. </p>
    #   @return [String]
    # @!attribute duration
    #   <p>Contract duration for the terms.</p>
    #   @return [String]
    # @!attribute price
    #   <p>Fixed amount to be charged to the customer when this term is accepted.</p>
    #   @return [String]
    # @!attribute grants
    #   <p>Entitlements granted to the acceptor of fixed upfront as part of agreement
    #            execution.</p>
    #   @return [Array<Types::GrantItem>]
    class FixedUpfrontPricingTerm < Struct.new(
      :type,
      :currency_code,
      :duration,
      :price,
      :grants,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a short-term free pricing model where the buyers aren’t charged anything within
    #          a specified limit.</p>
    # @!attribute type
    #   <p>Category of the term.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>Duration of the free trial period (5–31 days). </p>
    #   @return [String]
    # @!attribute grants
    #   <p>Entitlements granted to the acceptor of a free trial as part of an agreement
    #            execution.</p>
    #   @return [Array<Types::GrantItem>]
    class FreeTrialPricingTerm < Struct.new(
      :type,
      :duration,
      :grants,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of agreements to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start pagination</p>
    #   @return [String]
    class GetAgreementTermsInput < Struct.new(
      :agreement_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accepted_terms
    #   <p>A subset of terms proposed by the proposer that have been accepted by the acceptor as
    #            part of the agreement creation.</p>
    #   @return [Array<Types::AcceptedTerm>]
    # @!attribute next_token
    #   <p>A token to specify where to start pagination</p>
    #   @return [String]
    class GetAgreementTermsOutput < Struct.new(
      :accepted_terms,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Entitlements granted to the acceptor of fixed upfront as part of agreement execution.</p>
    # @!attribute dimension_key
    #   <p>Unique dimension key defined in the product document. Dimensions represent categories of capacity in a product and are specified when the product is listed in AWS Marketplace. </p>
    #   @return [String]
    # @!attribute max_quantity
    #   <p>Maximum amount of capacity that the buyer can be entitled to the given dimension of the product. If <code>MaxQuantity</code> is not provided, the buyer will be able to use an unlimited amount of the given dimension. </p>
    #   @return [Integer]
    class GrantItem < Struct.new(
      :dimension_key,
      :max_quantity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_quantity] = 1 unless options.key?(:max_quantity)
        super
      end
    end

    # <p>Unexpected error during processing of request.</p>
    # @!attribute request_id
    #   <p>The unique identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :request_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the list of text agreements proposed to the acceptors. An example is the end
    #          user license agreement (EULA).</p>
    # @!attribute type
    #   <p>Category of the term being updated.</p>
    #   @return [String]
    # @!attribute documents
    #   <p>List of references to legal resources proposed to the buyers. An example is the
    #            EULA.</p>
    #   @return [Array<Types::DocumentItem>]
    class LegalTerm < Struct.new(
      :type,
      :documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an installment-based pricing model where customers are charged a fixed price on
    #          different dates during the agreement validity period. This is used most commonly for
    #          flexible payment schedule pricing.</p>
    # @!attribute type
    #   <p>Type of the term.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices mentioned in the term. </p>
    #   @return [String]
    # @!attribute schedule
    #   <p>List of the payment schedule where each element defines one installment of payment. It
    #            contains the information necessary for calculating the price.</p>
    #   @return [Array<Types::ScheduleItem>]
    class PaymentScheduleTerm < Struct.new(
      :type,
      :currency_code,
      :schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the proposal received from the proposer.</p>
    # @!attribute resources
    #   <p>The list of resources involved in the agreement.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute offer_id
    #   <p>The unique identifier of the offer in AWS Marketplace.</p>
    #   @return [String]
    class ProposalSummary < Struct.new(
      :resources,
      :offer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the party proposing the agreement terms,. This is commonly the seller for
    #             <code>PurchaseAgreement</code>. </p>
    # @!attribute account_id
    #   <p>The AWS account ID of the proposer.</p>
    #   @return [String]
    class Proposer < Struct.new(
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the per unit rates for each individual product dimension.</p>
    # @!attribute dimension_key
    #   <p>Dimension for which the given entitlement applies. Dimensions represent categories of capacity in a product and are specified when the product is listed in AWS Marketplace.</p>
    #   @return [String]
    # @!attribute price
    #   <p>Per unit price for the product dimension that’s used for calculating the amount to be charged.</p>
    #   @return [String]
    class RateCardItem < Struct.new(
      :dimension_key,
      :price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a pricing model where customers are charged a fixed recurring price at the end
    #          of each billing period.</p>
    # @!attribute type
    #   <p>Type of the term being updated.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices mentioned in this term. </p>
    #   @return [String]
    # @!attribute billing_period
    #   <p>Defines the recurrence at which buyers are charged.</p>
    #   @return [String]
    # @!attribute price
    #   <p>Amount charged to the buyer every billing period.</p>
    #   @return [String]
    class RecurringPaymentTerm < Struct.new(
      :type,
      :currency_code,
      :billing_period,
      :price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines that on graceful expiration of the agreement (when the agreement ends on its
    #          pre-defined end date), a new agreement will be created using the accepted terms on the
    #          existing agreement. In other words, the agreement will be renewed. The presence of
    #             <code>RenewalTerm</code> in the offer document means that auto-renewal is allowed.
    #          Buyers will have the option to accept or decline auto-renewal at the offer
    #          acceptance/agreement creation. Buyers can also change this flag from <code>True</code> to
    #             <code>False</code> or <code>False</code> to <code>True</code> at anytime during the
    #          agreement's lifecycle.</p>
    # @!attribute type
    #   <p>Category of the term being updated. </p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Additional parameters specified by the acceptor while accepting the term.</p>
    #   @return [Types::RenewalTermConfiguration]
    class RenewalTerm < Struct.new(
      :type,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional parameters specified by the acceptor while accepting the term.</p>
    # @!attribute enable_auto_renew
    #   <p>Defines whether the acceptor has chosen to auto-renew the agreement at the end of its
    #            lifecycle. Can be set to <code>True</code> or <code>False</code>.</p>
    #   @return [Boolean]
    class RenewalTermConfiguration < Struct.new(
      :enable_auto_renew,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of resources involved in the agreement.</p>
    # @!attribute id
    #   <p>The unique identifier of the resource.</p>
    #            <note>
    #               <p>We mention the term resource, which is most commonly a product, so a
    #                  <code>resourceId</code> is also a <code>productId</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the resource, which is the product. Values include <code>SaaSProduct</code> or
    #               <code>AmiProduct</code>.</p>
    #   @return [String]
    class Resource < Struct.new(
      :id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request references a resource which does not exist.</p>
    # @!attribute request_id
    #   <p>The unique identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :request_id,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An individual installment of the payment that includes the date and amount of the charge.</p>
    # @!attribute charge_date
    #   <p>The date that the customer would pay the price defined in this payment schedule term. Invoices are generated on the date provided.</p>
    #   @return [Time]
    # @!attribute charge_amount
    #   <p>The price that the customer would pay on the scheduled date (chargeDate).</p>
    #   @return [String]
    class ScheduleItem < Struct.new(
      :charge_date,
      :charge_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which the agreement was created.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filter name and value pair used to return a specific list of results.</p>
    #            <p>The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ResourceIdentifier</code> – The unique identifier of the resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> – Type of the resource, which is the product
    #                     (<code>AmiProduct</code>, <code>ContainerProduct</code>, or
    #                     <code>SaaSProduct</code>).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PartyType</code> – The party type (either <code>Acceptor</code> or
    #                     <code>Proposer</code>) of the caller. For agreements where the caller is the
    #                  proposer, use the <code>Proposer</code> filter. For agreements where the caller is
    #                  the acceptor, use the <code>Acceptor</code> filter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AcceptorAccountId</code> – The AWS account ID of the party accepting the
    #                  agreement terms.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OfferId</code> – The unique identifier of the offer in which the terms are
    #                  registered in the agreement token.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> – The current status of the agreement. Values include
    #                     <code>ACTIVE</code>, <code>ARCHIVED</code>, <code>CANCELLED</code>,
    #                     <code>EXPIRED</code>, <code>RENEWED</code>, <code>REPLACED</code>, and
    #                     <code>TERMINATED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BeforeEndTime</code> – A date used to filter agreements with a date before
    #                  the <code>endTime</code> of an agreement.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AfterEndTime</code> – A date used to filter agreements with a date after the
    #                     <code>endTime</code> of an agreement.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AgreementType</code> – The type of agreement. Values include
    #                     <code>PurchaseAgreement</code> or <code>VendorInsightsAgreement</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute sort
    #   <p>An object that contains the <code>SortBy</code> and <code>SortOrder</code>
    #            attributes.</p>
    #   @return [Types::Sort]
    # @!attribute max_results
    #   <p>The maximum number of agreements to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start pagination.</p>
    #   @return [String]
    class SearchAgreementsInput < Struct.new(
      :catalog,
      :filters,
      :sort,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_view_summaries
    #   <p>A summary of the agreement, including top-level attributes (for example, the agreement
    #            ID, version, proposer, and acceptor).</p>
    #   @return [Array<Types::AgreementViewSummary>]
    # @!attribute next_token
    #   <p>The token used for pagination. The field is <code>null</code> if there are no more
    #            results.</p>
    #   @return [String]
    class SearchAgreementsOutput < Struct.new(
      :agreement_view_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Differentiates between the mutually exclusive rate cards in the same pricing term to be
    #          selected by the buyer.</p>
    # @!attribute type
    #   <p>Category of selector.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Contract duration. This field supports the ISO 8601 format. </p>
    #   @return [String]
    class Selector < Struct.new(
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains the <code>SortBy</code> and <code>SortOrder</code>
    #          attributes.</p>
    # @!attribute sort_by
    #   <p>The attribute on which the data is grouped, which can be by <code>StartTime</code> and
    #               <code>EndTime</code>. The default value is <code>EndTime</code>.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sorting order, which can be <code>ASCENDING</code> or <code>DESCENDING</code>. The
    #            default value is <code>DESCENDING</code>.</p>
    #   @return [String]
    class Sort < Struct.new(
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the customer support available for the acceptors when they purchase the
    #          software.</p>
    # @!attribute type
    #   <p>Category of the term being updated.</p>
    #   @return [String]
    # @!attribute refund_policy
    #   <p>Free-text field about the refund policy description that will be shown to customers as
    #            is on the website and console.</p>
    #   @return [String]
    class SupportTerm < Struct.new(
      :type,
      :refund_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request was denied due to request throttling.</p>
    # @!attribute request_id
    #   <p>The unique identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :request_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a usage-based pricing model (typically, pay-as-you-go pricing), where the
    #          customers are charged based on product usage.</p>
    # @!attribute type
    #   <p>Category of the term.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices mentioned in the term. </p>
    #   @return [String]
    # @!attribute rate_cards
    #   <p>List of rate cards.</p>
    #   @return [Array<Types::UsageBasedRateCardItem>]
    class UsageBasedPricingTerm < Struct.new(
      :type,
      :currency_code,
      :rate_cards,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Within the pay-as-you-go model defined under <code>UsageBasedPricingTerm</code>, the <code>UsageBasedRateCardItem</code> defines an individual rate for a product dimension.</p>
    # @!attribute rate_card
    #   <p>Defines the per unit rates for product dimensions.</p>
    #   @return [Array<Types::RateCardItem>]
    class UsageBasedRateCardItem < Struct.new(
      :rate_card,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    # @!attribute request_id
    #   <p>The unique identifier associated with the error.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason associated with the error.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The fields associated with the error.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :request_id,
      :message,
      :reason,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    # @!attribute name
    #   <p>The name of the field associated with the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>See applicable actions.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the conditions that will keep an agreement created from this offer valid. </p>
    # @!attribute type
    #   <p>Category of the term being updated. </p>
    #   @return [String]
    # @!attribute agreement_duration
    #   <p>Defines the duration that the agreement remains active. If
    #               <code>AgreementStartDate</code> isn’t provided, the agreement duration is relative to
    #            the agreement signature time. The duration is represented in the ISO_8601 format.</p>
    #   @return [String]
    # @!attribute agreement_start_date
    #   <p>Defines the date when agreement starts. The agreement starts at 00:00:00.000 UTC on the
    #            date provided. If <code>AgreementStartDate</code> isn’t provided, the agreement start date
    #            is determined based on agreement signature time.</p>
    #   @return [Time]
    # @!attribute agreement_end_date
    #   <p>Defines the date when the agreement ends. The agreement ends at 23:59:59.999 UTC on the
    #            date provided. If <code>AgreementEndDate</code> isn’t provided, the agreement end date is
    #            determined by the validity of individual terms.</p>
    #   @return [Time]
    class ValidityTerm < Struct.new(
      :type,
      :agreement_duration,
      :agreement_start_date,
      :agreement_end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
