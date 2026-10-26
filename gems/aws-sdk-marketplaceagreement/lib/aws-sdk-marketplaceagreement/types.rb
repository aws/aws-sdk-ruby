# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceAgreement
  # This module contains the types returned by client operations.
  module Types

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with the cancellation request.</p>
    #   @return [String]
    # @!attribute agreement_cancellation_request_id
    #   <p>The unique identifier of the cancellation request to accept.</p>
    #   @return [String]
    class AcceptAgreementCancellationRequestInput < Struct.new(
      nil,
      :agreement_id,
      :agreement_cancellation_request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this cancellation request.</p>
    #   @return [String]
    # @!attribute agreement_cancellation_request_id
    #   <p>The unique identifier of the accepted cancellation request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The updated status of the cancellation request, which is <code>APPROVED</code>.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The original reason code provided when the cancellation request was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detailed description of the cancellation reason, if provided.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the cancellation request was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the cancellation request was accepted.</p>
    #   @return [Time]
    class AcceptAgreementCancellationRequestOutput < Struct.new(
      nil,
      :agreement_id,
      :agreement_cancellation_request_id,
      :status,
      :reason_code,
      :description,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_request_id
    #   <p>The unique identifier of the payment request to accept.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with the payment request.</p>
    #   @return [String]
    # @!attribute purchase_order_reference
    #   <p>An optional purchase order reference that buyers can provide to associate the payment request with their internal purchase order system.</p>
    #   @return [String]
    class AcceptAgreementPaymentRequestInput < Struct.new(
      nil,
      :payment_request_id,
      :agreement_id,
      :purchase_order_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_request_id
    #   <p>The unique identifier of the accepted payment request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this payment request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The updated status of the payment request, which is <code>APPROVED</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the payment request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detailed description of the payment request, if provided.</p>
    #   @return [String]
    # @!attribute charge_amount
    #   <p>The amount that was approved to be charged.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code for the charge amount.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the payment request was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the payment request was accepted.</p>
    #   @return [Time]
    class AcceptAgreementPaymentRequestOutput < Struct.new(
      nil,
      :payment_request_id,
      :agreement_id,
      :status,
      :name,
      :description,
      :charge_amount,
      :currency_code,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_request_id
    #   <p>The unique identifier of the agreement request.</p>
    #   @return [String]
    # @!attribute purchase_orders
    #   <p>A list of purchase orders associated with accepting a marketplace agreement request.</p>
    #   @return [Array<Types::PurchaseOrder>]
    class AcceptAgreementRequestInput < Struct.new(
      nil,
      :agreement_request_id,
      :purchase_orders,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement created or modified by accepting the agreement request.</p>
    #   @return [String]
    class AcceptAgreementRequestOutput < Struct.new(
      nil,
      :agreement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A subset of terms proposed by the proposer, which have been accepted by the acceptor as part of agreement creation.</p>
    # @!attribute legal_term
    #   <p>Defines the list of text agreements proposed to the acceptors. An example is the end user license agreement (EULA).</p>
    #   @return [Types::LegalTerm]
    # @!attribute support_term
    #   <p>Defines the customer support available for the acceptors when they purchase the software.</p>
    #   @return [Types::SupportTerm]
    # @!attribute renewal_term
    #   <p>Defines that on graceful expiration of the agreement (when the agreement ends on its pre-defined end date), a new agreement will be created using the accepted terms on the existing agreement. In other words, the agreement will be renewed. Presence of <code>RenewalTerm</code> in the offer document means that auto-renewal is allowed. The acceptor will have the option to accept or decline auto-renewal at the offer acceptance/agreement creation. The acceptor can also change this flag from <code>True</code> to <code>False</code> or <code>False</code> to <code>True</code>, within the limits set by <code>LockoutPeriod</code> and <code>MaxRenewals</code>. Setting the flag to <code>True</code> doesn't by itself guarantee that the agreement renews, because the proposer can also opt out.</p>
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
    # @!attribute variable_payment_term
    #   <p>Defines a payment model where sellers can submit variable payment requests up to a maximum charge amount, with configurable approval strategies and expiration timelines.</p>
    #   @return [Types::VariablePaymentTerm]
    # @!attribute net_payment_term
    #   <p>Defines the net payment due period for the agreement, specifying when payment is due after an invoice is issued.</p>
    #   @return [Types::NetPaymentTerm]
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
      :net_payment_term,
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
      class VariablePaymentTerm < AcceptedTerm; end
      class NetPaymentTerm < AcceptedTerm; end
      class Unknown < AcceptedTerm; end
    end

    # <p>The details of the party accepting the agreement terms. This is commonly the buyer for <code>PurchaseAgreement</code>.</p>
    # @!attribute account_id
    #   <p>The AWS account ID of the acceptor.</p>
    #   @return [String]
    class Acceptor < Struct.new(
      nil,
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
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the access denied exception.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :request_id,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary view of an agreement cancellation request.</p>
    # @!attribute agreement_cancellation_request_id
    #   <p>The unique identifier of the cancellation request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this cancellation request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the cancellation request. Possible values include <code>PENDING_APPROVAL</code>, <code>APPROVED</code>, <code>REJECTED</code>, <code>CANCELLED</code>, and <code>VALIDATION_FAILED</code>.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The reason code provided for the cancellation.</p>
    #   @return [String]
    # @!attribute agreement_type
    #   <p>The type of agreement.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog in which the agreement was created.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the cancellation request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the cancellation request was last updated.</p>
    #   @return [Time]
    class AgreementCancellationRequestSummary < Struct.new(
      nil,
      :agreement_cancellation_request_id,
      :agreement_id,
      :status,
      :reason_code,
      :agreement_type,
      :catalog,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an entitlement associated with an agreement, including the provisioning status, resource, and type.</p>
    # @!attribute resource
    #   <p>The resource that the entitlement is provisioned to, such as a product.</p>
    #   @return [Types::Resource]
    # @!attribute type
    #   <p>The type of entitlement.</p>
    #   @return [String]
    # @!attribute registration_token
    #   <p>A short-lived token required by acceptors to register their account with the product provider. The token is only valid for 30 minutes after creation and is only applicable for purchase agreements.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of an entitlement.</p>
    #   @return [String]
    # @!attribute status_reason_code
    #   <p>Provides more information about the status of an entitlement.</p>
    #   @return [String]
    # @!attribute license_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS License Manager license associated with the entitlement.</p>
    #   @return [String]
    class AgreementEntitlement < Struct.new(
      nil,
      :resource,
      :type,
      :registration_token,
      :status,
      :status_reason_code,
      :license_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of grouped billing data for an agreement invoice line item.</p>
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    # @!attribute invoice_id
    #   <p>The identifier of the invoice for this group.</p>
    #   @return [String]
    # @!attribute pricing_currency_amount
    #   <p>Monetary amounts for this invoice group.</p>
    #   @return [Types::PricingCurrencyAmount]
    # @!attribute invoice_billing_period
    #   <p>The billing period associated with this group.</p>
    #   @return [Types::InvoiceBillingPeriod]
    # @!attribute issued_time
    #   <p>The timestamp when the invoice containing this group was created.</p>
    #   @return [Time]
    # @!attribute invoice_type
    #   <p>The type of invoice. Valid values are <code>INVOICE</code> and <code>CREDIT_MEMO</code>.</p>
    #   @return [String]
    # @!attribute invoicing_entity
    #   <p>The entity that issues the invoice.</p>
    #   @return [Types::InvoicingEntity]
    class AgreementInvoiceLineItemGroupSummary < Struct.new(
      nil,
      :agreement_id,
      :invoice_id,
      :pricing_currency_amount,
      :invoice_billing_period,
      :issued_time,
      :invoice_type,
      :invoicing_entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the agreement, including top-level attributes (for example, the agreement ID, proposer, and acceptor).</p>
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
    #   <p>The date and time when the agreement ends. The field is <code>null</code> for pay-as-you-go agreements, which don’t have end dates.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The date and time when the agreement was last updated. An agreement is updated when any of its attributes or accepted terms change. Amendments, renewals, and a party changing whether the agreement renews are all examples.</p> <p>Use the <code>BeforeLastUpdateTime</code> and <code>AfterLastUpdateTime</code> filters to search on this value, and <code>LastUpdateTime</code> as the <code>SortBy</code> value to sort by it. Sorting by <code>LastUpdateTime</code> is supported only when <code>PartyType</code> is <code>Proposer</code>.</p>
    #   @return [Time]
    # @!attribute agreement_type
    #   <p>The type of agreement.</p>
    #   @return [String]
    # @!attribute acceptor
    #   <p>Details of the party accepting the agreement terms. This is commonly the buyer for <code>PurchaseAgreement.</code> </p>
    #   @return [Types::Acceptor]
    # @!attribute proposer
    #   <p>Details of the party proposing the agreement terms, most commonly the seller for <code>PurchaseAgreement</code>.</p>
    #   @return [Types::Proposer]
    # @!attribute proposal_summary
    #   <p>A summary of the proposal</p>
    #   @return [Types::ProposalSummary]
    # @!attribute status
    #   <p>The current status of the agreement. </p>
    #   @return [String]
    # @!attribute entitlements
    #   <p>A list of entitlements associated with the agreement.</p>
    #   @return [Array<Types::Entitlement>]
    # @!attribute initial_agreement_id
    #   <p>The unique identifier of the very first agreement in a chain of related agreements, such as renewals or replacements. It stays the same across all agreements in that chain, which lets you trace an agreement back to the original. You can also use it as the <code>InitialAgreementId</code> filter value to return every agreement in the same chain.</p>
    #   @return [String]
    # @!attribute end_time_behavior_type
    #   <p>The behavior of the agreement when it reaches its end date. The field is <code>null</code> for agreements that have no end date, because those agreements never reach an end time.</p> <p>Types include:</p> <ul> <li> <p> <code>RENEW</code> – A new agreement is created from the accepted terms of this agreement.</p> </li> <li> <p> <code>REPLACE</code> – A new agreement is created from a different offer than the one this agreement was created from. This happens, for example, when a private offer reaches its end date and the acceptor transitions to the public offer for the product.</p> </li> <li> <p> <code>EXPIRE</code> – The agreement ends and isn't renewed or replaced.</p> </li> </ul>
    #   @return [String]
    # @!attribute end_time_behavior_reason_code
    #   <p>The reason why the agreement doesn't renew at its end date. The field is <code>null</code> when the agreement renews.</p> <p>More than one reason can apply to the same agreement. When that happens, the operation returns only one reason code, and <code>PROPOSER_RENEW_OPTED_OUT</code> takes precedence over all others.</p> <p>The <code>EnableAutoRenew</code> field reflects only the acceptor's preference, and doesn't reflect the other reasons an agreement might not renew.</p> <p>Reason codes include:</p> <ul> <li> <p> <code>PROPOSER_RENEW_OPTED_OUT</code> – The proposer opted out of renewing the agreement.</p> </li> <li> <p> <code>ACCEPTOR_RENEW_OPTED_OUT</code> – The acceptor opted out of renewing the agreement.</p> </li> <li> <p> <code>NO_RENEWAL_TERM</code> – The accepted terms of the agreement don't include a renewal term, which is required for an agreement to renew.</p> </li> <li> <p> <code>RENEWAL_LIMIT_EXHAUSTED</code> – The agreement reached the maximum number of renewals allowed by its renewal term.</p> </li> </ul>
    #   @return [String]
    class AgreementViewSummary < Struct.new(
      nil,
      :agreement_id,
      :acceptance_time,
      :start_time,
      :end_time,
      :last_update_time,
      :agreement_type,
      :acceptor,
      :proposer,
      :proposal_summary,
      :status,
      :entitlements,
      :initial_agreement_id,
      :end_time_behavior_type,
      :end_time_behavior_reason_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error for a billing adjustment request entry that failed validation.</p>
    # @!attribute code
    #   <p>The error code indicating the reason for failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable message describing the error.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token of the request entry that failed.</p>
    #   @return [String]
    class BatchCreateBillingAdjustmentError < Struct.new(
      nil,
      :code,
      :message,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A successfully created billing adjustment request item.</p>
    # @!attribute billing_adjustment_request_id
    #   <p>The unique identifier of the created billing adjustment request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token provided in the corresponding request entry.</p>
    #   @return [String]
    class BatchCreateBillingAdjustmentItem < Struct.new(
      nil,
      :billing_adjustment_request_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An individual entry in a batch billing adjustment request, specifying the invoice and adjustment details.</p>
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with the invoice.</p>
    #   @return [String]
    # @!attribute original_invoice_id
    #   <p>The identifier of the original invoice to adjust.</p>
    #   @return [String]
    # @!attribute adjustment_amount
    #   <p>The adjustment amount as a string representation of a decimal number in the currency of the invoice.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The 3-letter ISO 4217 currency code for the adjustment amount. Must match the currency code of the offer associated with the agreement (e.g., <code>USD</code>).</p>
    #   @return [String]
    # @!attribute adjustment_reason_code
    #   <p>The reason code for the billing adjustment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional detailed description of the adjustment reason.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class BatchCreateBillingAdjustmentRequestEntry < Struct.new(
      nil,
      :agreement_id,
      :original_invoice_id,
      :adjustment_amount,
      :currency_code,
      :adjustment_reason_code,
      :description,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_adjustment_request_entries
    #   <p>A list of billing adjustment request entries. Each entry specifies the invoice and adjustment details.</p>
    #   @return [Array<Types::BatchCreateBillingAdjustmentRequestEntry>]
    class BatchCreateBillingAdjustmentRequestInput < Struct.new(
      nil,
      :billing_adjustment_request_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of successfully created billing adjustment items, each containing the <code>billingAdjustmentRequestId</code> and <code>clientToken</code>.</p>
    #   @return [Array<Types::BatchCreateBillingAdjustmentItem>]
    # @!attribute errors
    #   <p>A list of errors for entries that failed validation, each containing the <code>clientToken</code>, error <code>code</code>, and <code>message</code>.</p>
    #   @return [Array<Types::BatchCreateBillingAdjustmentError>]
    class BatchCreateBillingAdjustmentRequestOutput < Struct.new(
      nil,
      :items,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary view of a billing adjustment request.</p>
    # @!attribute billing_adjustment_request_id
    #   <p>The unique identifier of the billing adjustment request.</p>
    #   @return [String]
    # @!attribute original_invoice_id
    #   <p>The identifier of the original invoice being adjusted.</p>
    #   @return [String]
    # @!attribute adjustment_amount
    #   <p>The adjustment amount as a string representation of a decimal number.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code for the adjustment amount.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the billing adjustment request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this billing adjustment request.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the billing adjustment request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the billing adjustment request was last updated.</p>
    #   @return [Time]
    # @!attribute agreement_type
    #   <p>The type of agreement.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog in which the agreement was created.</p>
    #   @return [String]
    class BillingAdjustmentSummary < Struct.new(
      nil,
      :billing_adjustment_request_id,
      :original_invoice_id,
      :adjustment_amount,
      :currency_code,
      :status,
      :agreement_id,
      :created_at,
      :updated_at,
      :agreement_type,
      :catalog,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Enables you and your customers to move your existing agreements to AWS Marketplace. The customer won't be charged for product usage in AWS Marketplace because they already paid for the product outside of AWS Marketplace.</p>
    # @!attribute type
    #   <p>Type of the term being updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the term.</p>
    #   @return [String]
    class ByolPricingTerm < Struct.new(
      nil,
      :type,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with the cancellation request.</p>
    #   @return [String]
    # @!attribute agreement_cancellation_request_id
    #   <p>The unique identifier of the cancellation request to cancel.</p>
    #   @return [String]
    # @!attribute cancellation_reason
    #   <p>A required message explaining why the cancellation request is being withdrawn (1-2000 characters).</p>
    #   @return [String]
    class CancelAgreementCancellationRequestInput < Struct.new(
      nil,
      :agreement_id,
      :agreement_cancellation_request_id,
      :cancellation_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_cancellation_request_id
    #   <p>The unique identifier of the cancelled cancellation request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this cancellation request.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The original reason code provided when the cancellation request was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detailed description of the original cancellation reason, if provided.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The updated status of the cancellation request, which is <code>CANCELLED</code>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message providing additional context about the cancellation request status.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the cancellation request was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the cancellation request was cancelled.</p>
    #   @return [Time]
    class CancelAgreementCancellationRequestOutput < Struct.new(
      nil,
      :agreement_cancellation_request_id,
      :agreement_id,
      :reason_code,
      :description,
      :status,
      :status_message,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    class CancelAgreementInput < Struct.new(
      nil,
      :agreement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelAgreementOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_request_id
    #   <p>The unique identifier of the payment request to cancel.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with the payment request.</p>
    #   @return [String]
    class CancelAgreementPaymentRequestInput < Struct.new(
      nil,
      :payment_request_id,
      :agreement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_request_id
    #   <p>The unique identifier of the cancelled payment request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this payment request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The updated status of the payment request, which is <code>CANCELLED</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the payment request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detailed description of the payment request, if provided.</p>
    #   @return [String]
    # @!attribute charge_amount
    #   <p>The amount that was requested to be charged.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code for the charge amount.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the payment request was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the payment request was cancelled.</p>
    #   @return [Time]
    class CancelAgreementPaymentRequestOutput < Struct.new(
      nil,
      :payment_request_id,
      :agreement_id,
      :status,
      :name,
      :description,
      :charge_amount,
      :currency_code,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a charge associated with an agreement, including amount, timing, and purchase order details.</p>
    # @!attribute id
    #   <p>The unique identifier of the charge.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision number of the charge.</p>
    #   @return [Integer]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement that resulted in this charge.</p>
    #   @return [String]
    # @!attribute agreement_type
    #   <p>The type of agreement that resulted in this charge (for example, <code>PurchaseAgreement</code>).</p>
    #   @return [String]
    # @!attribute purchase_order_reference
    #   <p>The purchase order reference associated with the charge, if any.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code for the charge amount.</p>
    #   @return [String]
    # @!attribute amount
    #   <p>The amount of the charge.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The date and time when the charge will be incurred. This is available only when the charge date is known.</p>
    #   @return [Time]
    class Charge < Struct.new(
      nil,
      :id,
      :revision,
      :agreement_id,
      :agreement_type,
      :purchase_order_reference,
      :currency_code,
      :amount,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>ChargeSummary</code> provides a detailed breakdown of charges that are associated with an agreement request. This is applicable only when a request is created for a <code>PurchaseAgreement</code>.</p> <note> <p>Tax and invoicing fields (such as <code>estimatedTaxes</code>, <code>amountAfterTax</code>, <code>newAgreementValueAfterTax</code>, and <code>invoicingEntity</code>) are returned on a best-effort basis and do not cause the request to fail if unavailable.</p> <p>A <code>null</code> tax amount can have two meanings:</p> <ul> <li> <p>Tax estimation was unavailable at the time of the request.</p> </li> <li> <p>The charge timing is <code>BILLING_PERIOD</code>, so the charge amount is not determined at request time. In this case, the tax breakdown may still include the tax <code>rate</code> and <code>type</code>.</p> </li> </ul> </note>
    # @!attribute currency_code
    #   <p>The three-letter currency code for all charges (e.g., USD).</p>
    #   @return [String]
    # @!attribute new_agreement_value
    #   <p>The total value of the agreement, which includes any amendments.</p>
    #   @return [String]
    # @!attribute new_agreement_value_after_tax
    #   <p>Expected new agreement value after estimated taxes are applied.</p>
    #   @return [String]
    # @!attribute expected_charges
    #   <p>A list of expected charges for the agreement request.</p>
    #   @return [Array<Types::ExpectedCharge>]
    # @!attribute estimated_taxes
    #   <p>Provides an aggregated view of estimated tax information for the agreement.</p>
    #   @return [Types::EstimatedTaxes]
    # @!attribute itemized_charges
    #   <p>An itemized list of charges for the agreement request.</p>
    #   @return [Array<Types::ItemizedCharge>]
    # @!attribute invoicing_entity
    #   <p>The entity responsible for issuing the invoice.</p>
    #   @return [Types::InvoicingEntity]
    class ChargeSummary < Struct.new(
      nil,
      :currency_code,
      :new_agreement_value,
      :new_agreement_value_after_tax,
      :expected_charges,
      :estimated_taxes,
      :itemized_charges,
      :invoicing_entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a prepaid payment model that allows buyers to configure the entitlements they want to purchase and the duration.</p>
    # @!attribute type
    #   <p>Category of selector.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
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
      nil,
      :type,
      :id,
      :currency_code,
      :rate_cards,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a prepaid payment model that allows buyers to configure the entitlements they want to purchase and the duration.</p>
    # @!attribute selector_value
    #   <p>Defines the length of time for which the particular pricing/dimension is being purchased by the acceptor.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>Defines the dimensions that the acceptor has purchased from the overall set of dimensions presented in the rate card.</p>
    #   @return [Array<Types::Dimension>]
    class ConfigurableUpfrontPricingTermConfiguration < Struct.new(
      nil,
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
      nil,
      :selector,
      :constraints,
      :rate_card,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request was denied due to a resource conflict.</p>
    # @!attribute request_id
    #   <p>The unique identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource involved in the conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource involved in the conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :request_id,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines limits on how the term can be configured by acceptors. </p>
    # @!attribute multiple_dimension_selection
    #   <p>Determines if buyers are allowed to select multiple dimensions in the rate card. The possible values are <code>Allowed</code> and <code>Disallowed</code>. The default value is <code>Allowed</code>.</p>
    #   @return [String]
    # @!attribute quantity_configuration
    #   <p>Determines if acceptors are allowed to configure quantity for each dimension in rate card. The possible values are <code>Allowed</code> and <code>Disallowed</code>. The default value is <code>Allowed</code>.</p>
    #   @return [String]
    class Constraints < Struct.new(
      nil,
      :multiple_dimension_selection,
      :quantity_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute intent
    #   <p>The purpose and desired outcome of the agreement request. This is a required parameter that determines how the agreement request is processed.</p> <ul> <li> <p> <code>NEW</code> – Creates a new agreement for terms in the request.</p> </li> <li> <p> <code>AMEND</code> – Modifies an existing agreement with terms that are accepted in the request.</p> </li> <li> <p> <code>REPLACE</code> – Creates a new agreement with accepted terms and replaces the existing agreement.</p> </li> </ul>
    #   @return [String]
    # @!attribute requested_terms
    #   <p>A list of terms that define what is being accepted as part of the agreement. Some terms require configuration.</p>
    #   @return [Array<Types::RequestedTerm>]
    # @!attribute source_agreement_identifier
    #   <p>The agreement's identifier that the request acts upon.</p> <important> <p> This parameter is required for all non-<code>NEW</code> intents (i.e., <code>AMEND</code> or <code>REPLACE</code>). Don't provide this parameter if the intent is <code>NEW</code>. </p> </important>
    #   @return [String]
    # @!attribute agreement_proposal_identifier
    #   <p>The agreement proposal signed by the proposer. The proposal includes the requested resources and the terms that outline an agreement outcome.</p> <important> <p> This parameter is required if the intent is not <code>AMEND</code>.</p> </important>
    #   @return [String]
    # @!attribute tax_configuration
    #   <p>Configuration for tax estimation in the agreement request response.</p>
    #   @return [Types::TaxConfiguration]
    class CreateAgreementRequestInput < Struct.new(
      nil,
      :client_token,
      :intent,
      :requested_terms,
      :source_agreement_identifier,
      :agreement_proposal_identifier,
      :tax_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_request_id
    #   <p>The unique identifier of the agreement request created. Use this identifier with <code>AcceptAgreementRequest</code> to accept the agreement.</p>
    #   @return [String]
    # @!attribute charge_summary
    #   <p>Provides details of the charges associated with the agreement request. This is only applicable when a request is created for <code>PurchaseAgreement</code>.</p>
    #   @return [Types::ChargeSummary]
    class CreateAgreementRequestOutput < Struct.new(
      nil,
      :agreement_request_id,
      :charge_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    class DescribeAgreementInput < Struct.new(
      nil,
      :agreement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    # @!attribute acceptor
    #   <p>The details of the party accepting the agreement terms. This is commonly the buyer for <code>PurchaseAgreement</code>.</p>
    #   @return [Types::Acceptor]
    # @!attribute proposer
    #   <p>The details of the party proposing the agreement terms. This is commonly the seller for <code>PurchaseAgreement</code>.</p>
    #   @return [Types::Proposer]
    # @!attribute start_time
    #   <p>The date and time when the agreement starts.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time when the agreement ends. The field is <code>null</code> for pay-as-you-go agreements, which don’t have end dates.</p>
    #   @return [Time]
    # @!attribute acceptance_time
    #   <p>The date and time the offer was accepted or the agreement was created.</p> <note> <p> <code>AcceptanceTime</code> and <code>StartTime</code> can differ for future dated agreements (FDAs).</p> </note>
    #   @return [Time]
    # @!attribute agreement_type
    #   <p>The type of agreement. Values are <code>PurchaseAgreement</code> or <code>VendorInsightsAgreement</code>.</p>
    #   @return [String]
    # @!attribute estimated_charges
    #   <p>The estimated cost of the agreement.</p>
    #   @return [Types::EstimatedCharges]
    # @!attribute proposal_summary
    #   <p>A summary of the proposal received from the proposer.</p>
    #   @return [Types::ProposalSummary]
    # @!attribute status
    #   <p>The current status of the agreement.</p> <p>Statuses include:</p> <ul> <li> <p> <code>ACTIVE</code> – The terms of the agreement are active.</p> </li> <li> <p> <code>CANCELLED</code> – The acceptor ended the agreement before the defined end date.</p> </li> <li> <p> <code>EXPIRED</code> – The agreement ended on the defined end date.</p> </li> <li> <p> <code>RENEWED</code> – The agreement was renewed into a new agreement (for example, an auto-renewal).</p> </li> <li> <p> <code>REPLACED</code> – The agreement was replaced using an agreement replacement offer.</p> </li> <li> <p> <code>TERMINATED</code> – The agreement ended before the defined end date because of an AWS termination (for example, a payment failure).</p> </li> </ul>
    #   @return [String]
    # @!attribute initial_agreement_id
    #   <p>The unique identifier of the very first agreement in a chain of related agreements, such as renewals or replacements. It stays the same across all agreements in that chain, which lets you trace an agreement back to the original. When an agreement isn't derived from another agreement, its <code>InitialAgreementId</code> is its own <code>AgreementId</code>.</p>
    #   @return [String]
    # @!attribute end_time_behavior
    #   <p>The behavior of the agreement when it reaches its end date. For example, whether the agreement renews, and if it doesn't, the reason why.</p> <p>This field is present for every active agreement that has an end date. It is not present for an agreement that has no end date, because such an agreement never reaches an end time. Pay-as-you-go agreements are the most common example. It is also not present for an agreement that is no longer active.</p>
    #   @return [Types::EndTimeBehavior]
    class DescribeAgreementOutput < Struct.new(
      nil,
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
      :initial_agreement_id,
      :end_time_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the dimensions that the acceptor has purchased from the overall set of dimensions presented in the rate card.</p>
    # @!attribute dimension_key
    #   <p>The name of key value of the dimension.</p>
    #   @return [String]
    # @!attribute dimension_value
    #   <p>The number of units of the dimension the acceptor has purchased.</p> <note> <p>For Agreements with <code>ConfigurableUpfrontPricingTerm</code>, the <code>RateCard</code> section will define the prices and dimensions defined by the seller (proposer), whereas the <code>Configuration</code> section will define the actual dimensions, prices, and units the buyer has chosen to accept.</p> </note>
    #   @return [Integer]
    class Dimension < Struct.new(
      nil,
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
    #   <p>Category of the document. Document types include:</p> <ul> <li> <p> <code>CustomEula</code> – A custom EULA provided by you as seller. A URL for a EULA stored in an accessible Amazon S3 bucket is required for this document type.</p> </li> <li> <p> <code>CustomDsa</code> – A custom Data Subscription Agreement (DSA) provided by you as seller. A URL for a DSA stored in an accessible Amazon S3 bucket is required for this document type.</p> </li> <li> <p> <code>StandardEula</code> – The Standard Contract for AWS Marketplace (SCMP). For more information about SCMP, see the AWS Marketplace Seller Guide. You don’t provide a URL for this type because it’s managed by AWS Marketplace.</p> </li> <li> <p> <code>StandardDsa</code> – DSA for AWS Marketplace. For more information about the DSA, see the AWS Data Exchange User Guide. You don’t provide a URL for this type because it’s managed by AWS Marketplace.</p> </li> </ul>
    #   @return [String]
    # @!attribute url
    #   <p>A URL to the legal document for buyers to read. Required when <code>Type</code> is <code>CustomEula</code>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version of standard contracts provided by AWS Marketplace. Required when Type is <code>StandardEula</code> or <code>StandardDsa</code>. </p>
    #   @return [String]
    class DocumentItem < Struct.new(
      nil,
      :type,
      :url,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The behavior of an agreement when it reaches its end date. For example, whether the agreement renews, and if it doesn't, the reason why.</p>
    # @!attribute type
    #   <p>The behavior of the agreement when it reaches its end date.</p> <p>Types include:</p> <ul> <li> <p> <code>RENEW</code> – A new agreement is created from the accepted terms of this agreement.</p> </li> <li> <p> <code>REPLACE</code> – A new agreement is created from a different offer than the one this agreement was created from. This happens, for example, when a private offer reaches its end date and the acceptor transitions to the public offer for the product.</p> </li> <li> <p> <code>EXPIRE</code> – The agreement ends and isn't renewed or replaced.</p> </li> </ul>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The reason why the agreement doesn't renew at its end date. The field is <code>null</code> when the agreement renews.</p> <p>More than one reason can apply to the same agreement. When that happens, the operation returns only one reason code, and <code>PROPOSER_RENEW_OPTED_OUT</code> takes precedence over all others.</p> <p>The <code>EnableAutoRenew</code> field reflects only the acceptor's preference, and doesn't reflect the other reasons an agreement might not renew.</p> <p>Reason codes include:</p> <ul> <li> <p> <code>PROPOSER_RENEW_OPTED_OUT</code> – The proposer opted out of renewing the agreement.</p> </li> <li> <p> <code>ACCEPTOR_RENEW_OPTED_OUT</code> – The acceptor opted out of renewing the agreement.</p> </li> <li> <p> <code>NO_RENEWAL_TERM</code> – The accepted terms of the agreement don't include a renewal term, which is required for an agreement to renew.</p> </li> <li> <p> <code>RENEWAL_LIMIT_EXHAUSTED</code> – The agreement reached the maximum number of renewals allowed by its renewal term.</p> </li> </ul>
    #   @return [String]
    # @!attribute renewal_summary
    #   <p>The details of the renewal that applies at the end date of the agreement. This field is present when <code>Type</code> is <code>RENEW</code>. It is also present when <code>ReasonCode</code> is <code>PROPOSER_RENEW_OPTED_OUT</code> or <code>ACCEPTOR_RENEW_OPTED_OUT</code>. In those cases, it identifies the offer that the agreement would otherwise have renewed from. The field is <code>null</code> in all other cases.</p>
    #   @return [Types::RenewalSummary]
    class EndTimeBehavior < Struct.new(
      nil,
      :type,
      :reason_code,
      :renewal_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an entitlement associated with an agreement.</p>
    # @!attribute license_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS License Manager license associated with the entitlement.</p>
    #   @return [String]
    class Entitlement < Struct.new(
      nil,
      :license_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Estimated cost of the agreement.</p>
    # @!attribute currency_code
    #   <p>Defines the currency code for the charge.</p>
    #   @return [String]
    # @!attribute agreement_value
    #   <p>The total known amount customer has to pay across the lifecycle of the agreement.</p> <note> <p>This is the total contract value if accepted terms contain <code>ConfigurableUpfrontPricingTerm</code> or <code>FixedUpfrontPricingTerm</code>. In the case of pure contract pricing, this will be the total value of the contract. In the case of contracts with consumption pricing, this will only include the committed value and not include any overages that occur.</p> <p>If the accepted terms contain <code>PaymentScheduleTerm</code>, it will be the total payment schedule amount. This occurs when flexible payment schedule is used, and is the sum of all invoice charges in the payment schedule.</p> <p>In case a customer has amended an agreement, by purchasing more units of any dimension, this will include both the original cost as well as the added cost incurred due to addition of new units. </p> <p>This is <code>0</code> if the accepted terms contain <code>UsageBasedPricingTerm</code> without <code>ConfigurableUpfrontPricingTerm</code> or <code>RecurringPaymentTerm</code>. This occurs for usage-based pricing (such as SaaS metered or AMI/container hourly or monthly), because the exact usage is not known upfront.</p> </note>
    #   @return [String]
    class EstimatedCharges < Struct.new(
      nil,
      :currency_code,
      :agreement_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides an aggregated view of estimated tax information.</p>
    # @!attribute breakdown
    #   <p>A list of tax breakdown information.</p>
    #   @return [Array<Types::TaxBreakdownItem>]
    # @!attribute total_amount
    #   <p>The total amount of tax aggregated from the tax breakdown.</p>
    #   @return [String]
    class EstimatedTaxes < Struct.new(
      nil,
      :breakdown,
      :total_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Estimated charge for the request.</p>
    # @!attribute id
    #   <p>Unique identifier of the charge for a given agreement.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The date and time when the charge is due to be invoiced. This is available only when the charge date is known.</p>
    #   @return [Time]
    # @!attribute amount
    #   <p>The tax-exclusive amount of the charge. Only available when the charge amount is known.</p>
    #   @return [String]
    # @!attribute amount_after_tax
    #   <p>The tax-inclusive amount the acceptor has to pay. The amount is only present for fixed charges.</p>
    #   @return [String]
    # @!attribute timing
    #   <p>Indicates when the charge amount will be incurred. Values include <code>ON_ACCEPTANCE</code> (charged immediately when the agreement request is accepted), <code>BILLING_PERIOD</code> (charged on each billing period), and <code>SCHEDULED</code> (charged at a predetermined future date).</p>
    #   @return [String]
    # @!attribute estimated_taxes
    #   <p>Provides an aggregated view of estimated tax information for this specific charge.</p>
    #   @return [Types::EstimatedTaxes]
    class ExpectedCharge < Struct.new(
      nil,
      :id,
      :time,
      :amount,
      :amount_after_tax,
      :timing,
      :estimated_taxes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter name and value pair that is used to return a more specific list of results. Filters can be used to match a set of resources by various criteria, such as <code>offerId</code> or <code>productId</code>.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The filter value.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A fixed price increase that is applied each time the agreement renews.</p>
    # @!attribute value
    #   <p>The percentage by which the price increases at each renewal, from <code>0.00</code> to <code>100.00</code> with up to two decimal places. A value of <code>0.00</code> means that the agreement renews at the same price.</p>
    #   @return [String]
    class FixedPercentage < Struct.new(
      nil,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a prepaid pricing model where the customers are charged a fixed upfront amount.</p>
    # @!attribute type
    #   <p>Category of the term being updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the term.</p>
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
    #   <p>Entitlements granted to the acceptor of fixed upfront as part of agreement execution.</p>
    #   @return [Array<Types::GrantItem>]
    class FixedUpfrontPricingTerm < Struct.new(
      nil,
      :type,
      :id,
      :currency_code,
      :duration,
      :price,
      :grants,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a short-term free pricing model where the buyers aren’t charged anything within a specified limit.</p>
    # @!attribute type
    #   <p>Category of the term.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the terms.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>Duration of the free trial period (5–31 days). </p>
    #   @return [String]
    # @!attribute grants
    #   <p>Entitlements granted to the acceptor of a free trial as part of an agreement execution.</p>
    #   @return [Array<Types::GrantItem>]
    class FreeTrialPricingTerm < Struct.new(
      nil,
      :type,
      :id,
      :duration,
      :grants,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_cancellation_request_id
    #   <p>The unique identifier of the cancellation request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with the cancellation request.</p>
    #   @return [String]
    class GetAgreementCancellationRequestInput < Struct.new(
      nil,
      :agreement_cancellation_request_id,
      :agreement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_cancellation_request_id
    #   <p>The unique identifier of the cancellation request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this cancellation request. Use <code>DescribeAgreement</code> to retrieve full agreement details.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The reason code provided for the cancellation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detailed description of the cancellation reason, if provided.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the cancellation request.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message providing additional context about the cancellation request status.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the cancellation request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the cancellation request was last updated.</p>
    #   @return [Time]
    class GetAgreementCancellationRequestOutput < Struct.new(
      nil,
      :agreement_cancellation_request_id,
      :agreement_id,
      :reason_code,
      :description,
      :status,
      :status_message,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of agreement entitlements to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start pagination.</p>
    #   @return [String]
    class GetAgreementEntitlementsInput < Struct.new(
      nil,
      :agreement_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_entitlements
    #   <p>A list of agreement entitlements which are part of the latest agreement.</p>
    #   @return [Array<Types::AgreementEntitlement>]
    # @!attribute next_token
    #   <p>The token used for pagination. The field is <code>null</code> if there are no more results.</p>
    #   @return [String]
    class GetAgreementEntitlementsOutput < Struct.new(
      nil,
      :agreement_entitlements,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_request_id
    #   <p>The identifier of the payment request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with the payment request.</p>
    #   @return [String]
    class GetAgreementPaymentRequestInput < Struct.new(
      nil,
      :payment_request_id,
      :agreement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_request_id
    #   <p>The unique identifier of the payment request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this payment request. Use <code>DescribeAgreement</code> to retrieve full agreement details.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the payment request. Possible values include:</p> <ul> <li> <p> <code>VALIDATING</code> – The payment request is being validated against agreement terms.</p> </li> <li> <p> <code>VALIDATION_FAILED</code> – The payment request failed validation.</p> </li> <li> <p> <code>PENDING_APPROVAL</code> – The payment request is awaiting buyer action.</p> </li> <li> <p> <code>APPROVED</code> – The buyer has approved the payment request.</p> </li> <li> <p> <code>REJECTED</code> – The buyer has rejected the payment request.</p> </li> <li> <p> <code>CANCELLED</code> – The seller has cancelled the payment request.</p> </li> </ul>
    #   @return [String]
    # @!attribute status_message
    #   <p>An optional message providing additional context about the payment request status, such as a rejection reason or validation failure details.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the payment request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detailed description of the payment request, if provided.</p>
    #   @return [String]
    # @!attribute charge_id
    #   <p>The unique identifier of the charge created after the payment request is approved. This field is only present for approved payment requests and follows the pattern <code>ch-[a-zA-Z0-9]+</code>.</p>
    #   @return [String]
    # @!attribute charge_amount
    #   <p>The amount charged or to be charged to the buyer.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code for the charge amount.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the payment request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the payment request was last updated.</p>
    #   @return [Time]
    class GetAgreementPaymentRequestOutput < Struct.new(
      nil,
      :payment_request_id,
      :agreement_id,
      :status,
      :status_message,
      :name,
      :description,
      :charge_id,
      :charge_amount,
      :currency_code,
      :created_at,
      :updated_at,
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
    #   <p>A token to specify where to start pagination.</p>
    #   @return [String]
    class GetAgreementTermsInput < Struct.new(
      nil,
      :agreement_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accepted_terms
    #   <p>A subset of terms proposed by the proposer that have been accepted by the acceptor as part of the agreement creation.</p>
    #   @return [Array<Types::AcceptedTerm>]
    # @!attribute next_token
    #   <p>The token used for pagination. The field is <code>null</code> if there are no more results.</p>
    #   @return [String]
    class GetAgreementTermsOutput < Struct.new(
      nil,
      :accepted_terms,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with the billing adjustment request.</p>
    #   @return [String]
    # @!attribute billing_adjustment_request_id
    #   <p>The unique identifier of the billing adjustment request.</p>
    #   @return [String]
    class GetBillingAdjustmentRequestInput < Struct.new(
      nil,
      :agreement_id,
      :billing_adjustment_request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_adjustment_request_id
    #   <p>The unique identifier of the billing adjustment request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this billing adjustment request.</p>
    #   @return [String]
    # @!attribute adjustment_reason_code
    #   <p>The reason code for the billing adjustment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detailed description of the billing adjustment reason, if provided.</p>
    #   @return [String]
    # @!attribute original_invoice_id
    #   <p>The identifier of the original invoice being adjusted.</p>
    #   @return [String]
    # @!attribute adjustment_amount
    #   <p>The adjustment amount as a string representation of a decimal number.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code for the adjustment amount (e.g., <code>USD</code>).</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the billing adjustment request.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message providing additional context about the billing adjustment request status. This field is populated only when the status is <code>VALIDATION_FAILED</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the billing adjustment request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the billing adjustment request was last updated.</p>
    #   @return [Time]
    class GetBillingAdjustmentRequestOutput < Struct.new(
      nil,
      :billing_adjustment_request_id,
      :agreement_id,
      :adjustment_reason_code,
      :description,
      :original_invoice_id,
      :adjustment_amount,
      :currency_code,
      :status,
      :status_message,
      :created_at,
      :updated_at,
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
      nil,
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
    #   <p>Description of the error.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :request_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The billing period for an invoice, specified by month and year.</p>
    # @!attribute month
    #   <p>The billing period month. Valid range: 1-12.</p>
    #   @return [Integer]
    # @!attribute year
    #   <p>The billing period year.</p>
    #   @return [Integer]
    class InvoiceBillingPeriod < Struct.new(
      nil,
      :month,
      :year,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The entity responsible for issuing the invoice.</p>
    # @!attribute legal_name
    #   <p>Legal name of the entity issuing the invoice.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The branch where the issuing entity is operating from.</p>
    #   @return [String]
    class InvoicingEntity < Struct.new(
      nil,
      :legal_name,
      :branch_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A breakdown of individual charges or line items within a billing or pricing context.</p>
    # @!attribute dimension_key
    #   <p>The dimension key as specified in the accepted term.</p>
    #   @return [String]
    # @!attribute new_quantity
    #   <p>The requested quantity for this dimension.</p>
    #   @return [Integer]
    # @!attribute old_quantity
    #   <p>The existing quantity for this dimension from the source agreement. This value is <code>0</code> for NEW intent.</p>
    #   @return [Integer]
    # @!attribute charge_reference
    #   <p>The identifier of the expected charge that this itemized charge contributes to.</p>
    #   @return [String]
    # @!attribute incremental_charge_amount
    #   <p>The total incremental charge amount for this dimension.</p>
    #   @return [String]
    class ItemizedCharge < Struct.new(
      nil,
      :dimension_key,
      :new_quantity,
      :old_quantity,
      :charge_reference,
      :incremental_charge_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the list of text agreements proposed to the acceptors. An example is the end user license agreement (EULA).</p>
    # @!attribute type
    #   <p>Category of the term being updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifer for the term.</p>
    #   @return [String]
    # @!attribute documents
    #   <p>List of references to legal resources proposed to the buyers. An example is the EULA.</p>
    #   @return [Array<Types::DocumentItem>]
    class LegalTerm < Struct.new(
      nil,
      :type,
      :id,
      :documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute party_type
    #   <p>The party type for the cancellation requests. Required parameter. Use <code>Proposer</code> to list cancellation requests where you are the seller, or <code>Acceptor</code> to list cancellation requests where you are the buyer.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>An optional parameter to filter cancellation requests for a specific agreement.</p>
    #   @return [String]
    # @!attribute status
    #   <p>An optional parameter to filter cancellation requests by status.</p>
    #   @return [String]
    # @!attribute agreement_type
    #   <p>An optional parameter to filter cancellation requests by agreement type (e.g., <code>PurchaseAgreement</code>).</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>An optional parameter to filter cancellation requests by catalog (e.g., <code>AWSMarketplace</code>).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of cancellation requests to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start pagination.</p>
    #   @return [String]
    class ListAgreementCancellationRequestsInput < Struct.new(
      nil,
      :party_type,
      :agreement_id,
      :status,
      :agreement_type,
      :catalog,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used for pagination. The field is <code>null</code> if there are no more results.</p>
    #   @return [String]
    # @!attribute items
    #   <p>An array of <code>AgreementCancellationRequestSummary</code> objects containing summary information about each cancellation request.</p>
    #   @return [Array<Types::AgreementCancellationRequestSummary>]
    class ListAgreementCancellationRequestsOutput < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which the charges were created.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    # @!attribute agreement_type
    #   <p>Filter to retrieve charges of a specific agreement type (for example, <code>PurchaseAgreement</code>).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of charges to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start pagination.</p>
    #   @return [String]
    class ListAgreementChargesInput < Struct.new(
      nil,
      :catalog,
      :agreement_id,
      :agreement_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of agreement charges.</p>
    #   @return [Array<Types::Charge>]
    # @!attribute next_token
    #   <p>The token used for pagination. The field is <code>null</code> if there are no more results.</p>
    #   @return [String]
    class ListAgreementChargesOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    # @!attribute group_by
    #   <p>Specifies a grouping strategy for line items. Currently supports <code>INVOICE_ID</code>.</p>
    #   @return [String]
    # @!attribute invoice_id
    #   <p>An optional filter to retrieve invoice information for a specific invoice.</p>
    #   @return [String]
    # @!attribute invoice_type
    #   <p>An optional filter for the type of invoice. Valid values are <code>INVOICE</code> and <code>CREDIT_MEMO</code>.</p>
    #   @return [String]
    # @!attribute invoice_billing_period
    #   <p>An optional filter for the billing period associated with the invoice.</p>
    #   @return [Types::InvoiceBillingPeriod]
    # @!attribute before_issued_time
    #   <p>An optional filter for invoices issued before the specified timestamp.</p>
    #   @return [Time]
    # @!attribute after_issued_time
    #   <p>An optional filter for invoices issued after the specified timestamp.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start pagination.</p>
    #   @return [String]
    class ListAgreementInvoiceLineItemsInput < Struct.new(
      nil,
      :agreement_id,
      :group_by,
      :invoice_id,
      :invoice_type,
      :invoice_billing_period,
      :before_issued_time,
      :after_issued_time,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_invoice_line_item_group_summaries
    #   <p>A list of grouped billing data objects.</p>
    #   @return [Array<Types::AgreementInvoiceLineItemGroupSummary>]
    # @!attribute next_token
    #   <p>The token used for pagination. The field is <code>null</code> if there are no more results.</p>
    #   @return [String]
    class ListAgreementInvoiceLineItemsOutput < Struct.new(
      nil,
      :agreement_invoice_line_item_group_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute party_type
    #   <p>The party type for the payment requests. Required parameter. Use <code>Proposer</code> to list payment requests where you are the seller, or <code>Acceptor</code> to list payment requests where you are the buyer.</p>
    #   @return [String]
    # @!attribute agreement_type
    #   <p>An optional parameter to list payment requests by agreement type (e.g., <code>PurchaseAgreement</code>).</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>An optional parameter to list payment requests by catalog (e.g., <code>AWSMarketplace</code>).</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>An optional parameter to list payment requests for a specific agreement.</p>
    #   @return [String]
    # @!attribute status
    #   <p>An optional parameter to list payment requests by status. Valid values include <code>VALIDATING</code>, <code>VALIDATION_FAILED</code>, <code>PENDING_APPROVAL</code>, <code>APPROVED</code>, <code>REJECTED</code>, and <code>CANCELLED</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of payment requests to return in a single response (1-50). Default is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start pagination.</p>
    #   @return [String]
    class ListAgreementPaymentRequestsInput < Struct.new(
      nil,
      :party_type,
      :agreement_type,
      :catalog,
      :agreement_id,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used for pagination. The field is <code>null</code> if there are no more results.</p>
    #   @return [String]
    # @!attribute items
    #   <p>An array of <code>PaymentRequestSummary</code> objects containing summary information about each payment request.</p>
    #   @return [Array<Types::PaymentRequestSummary>]
    class ListAgreementPaymentRequestsOutput < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement to list billing adjustment requests for.</p>
    #   @return [String]
    # @!attribute status
    #   <p>An optional filter to return billing adjustment requests with the specified status.</p>
    #   @return [String]
    # @!attribute created_after
    #   <p>An optional filter to return billing adjustment requests created after the specified timestamp.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>An optional filter to return billing adjustment requests created before the specified timestamp.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of billing adjustment requests to return in the response.</p>
    #   @return [Integer]
    # @!attribute catalog
    #   <p>An optional filter to return billing adjustment requests by catalog (e.g., <code>AWSMarketplace</code>).</p>
    #   @return [String]
    # @!attribute agreement_type
    #   <p>An optional filter to return billing adjustment requests by agreement type (e.g., <code>PurchaseAgreement</code>).</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to specify where to start pagination.</p>
    #   @return [String]
    class ListBillingAdjustmentRequestsInput < Struct.new(
      nil,
      :agreement_id,
      :status,
      :created_after,
      :created_before,
      :max_results,
      :catalog,
      :agreement_type,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used for pagination. The field is <code>null</code> if there are no more results.</p>
    #   @return [String]
    # @!attribute items
    #   <p>An array of <code>BillingAdjustmentSummary</code> objects containing summary information about each billing adjustment request.</p>
    #   @return [Array<Types::BillingAdjustmentSummary>]
    class ListBillingAdjustmentRequestsOutput < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the net payment due period for the agreement, specifying when payment is due after an invoice is issued.</p>
    # @!attribute type
    #   <p>Type of the term being updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the term.</p>
    #   @return [String]
    # @!attribute payment_due_period
    #   <p>The duration after an invoice is issued within which the payment is due. The duration is represented in the ISO 8601 format (for example, <code>P30D</code> for 30 days or <code>P60D</code> for 60 days).</p>
    #   @return [String]
    class NetPaymentTerm < Struct.new(
      nil,
      :type,
      :id,
      :payment_due_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary view of a payment request.</p>
    # @!attribute payment_request_id
    #   <p>The unique identifier of the payment request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this payment request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the payment request. Possible values include <code>VALIDATING</code>, <code>VALIDATION_FAILED</code>, <code>PENDING_APPROVAL</code>, <code>APPROVED</code>, <code>REJECTED</code>, and <code>CANCELLED</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the payment request.</p>
    #   @return [String]
    # @!attribute charge_id
    #   <p>The unique identifier of the charge created after the payment request is approved. This field is only present for approved payment requests.</p>
    #   @return [String]
    # @!attribute charge_amount
    #   <p>The amount charged or to be charged to the buyer.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code for the charge amount.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the payment request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the payment request was last updated.</p>
    #   @return [Time]
    class PaymentRequestSummary < Struct.new(
      nil,
      :payment_request_id,
      :agreement_id,
      :status,
      :name,
      :charge_id,
      :charge_amount,
      :currency_code,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single installment in a payment schedule template. Because the start date of the renewed agreement isn't known when the offer is created, the charge date of each installment is expressed as an offset from that start date rather than as an absolute date.</p>
    # @!attribute charge_date_offset
    #   <p>The time between the start date of the renewed agreement and the date this installment is charged. The duration is represented in the ISO 8601 format in either whole months or whole days (for example, <code>P1M</code> for 1 month or <code>P30D</code> for 30 days). All installments in a schedule use the same unit.</p>
    #   @return [String]
    # @!attribute charge_percentage
    #   <p>The percentage of the total contract value of the renewed agreement that is charged in this installment. Valid values range from <code>0.01</code> to <code>100.00</code>, with up to two decimal places.</p>
    #   @return [String]
    # @!attribute day_of_month
    #   <p>The day of the month on which this installment is charged, from <code>1</code> to <code>31</code>. Use this field to anchor the charge to a specific calendar day within the month identified by <code>ChargeDateOffset</code>. This field is supported only when <code>ChargeDateOffset</code> is expressed in months.</p>
    #   @return [Integer]
    class PaymentScheduleEntry < Struct.new(
      nil,
      :charge_date_offset,
      :charge_percentage,
      :day_of_month,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an installment-based pricing model where customers are charged a fixed price on different dates during the agreement validity period. This is used most commonly for flexible payment schedule pricing.</p>
    # @!attribute type
    #   <p>Type of the term.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the term.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices mentioned in the term. </p>
    #   @return [String]
    # @!attribute schedule
    #   <p>List of the payment schedule where each element defines one installment of payment. It contains the information necessary for calculating the price.</p>
    #   @return [Array<Types::ScheduleItem>]
    class PaymentScheduleTerm < Struct.new(
      nil,
      :type,
      :id,
      :currency_code,
      :schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the payment schedule that is applied to the renewed agreement.</p>
    # @!attribute schedule
    #   <p>The installments that make up the payment schedule of the renewed agreement. The <code>ChargePercentage</code> values of all installments add up to <code>100</code>.</p>
    #   @return [Array<Types::PaymentScheduleEntry>]
    class PaymentScheduleTermTemplate < Struct.new(
      nil,
      :schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A range of price increase percentages that the proposer can choose from before the adjustment deadline of the agreement.</p> <p> <code>MinValue</code> will be less than <code>MaxValue</code>, and <code>DefaultValue</code> will fall within the range. When the proposer authorizes a single percentage instead of a range, <code>PriceIncrease</code> is a <code>FixedPercentage</code> rather than a <code>PercentageRange</code>.</p>
    # @!attribute min_value
    #   <p>The lowest percentage that the proposer can choose, from <code>0.00</code> to <code>100.00</code> with up to two decimal places.</p>
    #   @return [String]
    # @!attribute max_value
    #   <p>The highest percentage that the proposer can choose, from <code>0.00</code> to <code>100.00</code> with up to two decimal places.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The percentage that is applied if the proposer doesn't choose a value before the adjustment deadline. Valid values range from <code>0.00</code> to <code>100.00</code>, with up to two decimal places.</p>
    #   @return [String]
    class PercentageRange < Struct.new(
      nil,
      :min_value,
      :max_value,
      :default_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The price increase that is applied each time the agreement renews. Exactly one of the following fields is set.</p>
    # @!attribute fixed_percentage
    #   <p>A fixed price increase percentage that is applied at each renewal.</p>
    #   @return [Types::FixedPercentage]
    # @!attribute percentage_range
    #   <p>A range of price increase percentages that the proposer can choose from before the adjustment deadline of the agreement.</p>
    #   @return [Types::PercentageRange]
    class PriceIncrease < Struct.new(
      :fixed_percentage,
      :percentage_range,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FixedPercentage < PriceIncrease; end
      class PercentageRange < PriceIncrease; end
      class Unknown < PriceIncrease; end
    end

    # <p>Monetary amounts associated with an invoice line item group.</p>
    # @!attribute amount
    #   <p>The monetary amount before tax.</p>
    #   @return [String]
    # @!attribute max_adjustment_amount
    #   <p>The maximum refundable amount as a string representation of a decimal number.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The 3-letter ISO 4217 currency code (e.g., <code>USD</code>, <code>EUR</code>, <code>JPY</code>).</p>
    #   @return [String]
    class PricingCurrencyAmount < Struct.new(
      nil,
      :amount,
      :max_adjustment_amount,
      :currency_code,
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
    # @!attribute offer_set_id
    #   <p>A unique identifier for the offer set containing this offer. All agreements created from offers in this set include this identifier as context.</p>
    #   @return [String]
    class ProposalSummary < Struct.new(
      nil,
      :resources,
      :offer_id,
      :offer_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the party proposing the agreement terms,. This is commonly the seller for <code>PurchaseAgreement</code>. </p>
    # @!attribute account_id
    #   <p>The AWS account ID of the proposer.</p>
    #   @return [String]
    class Proposer < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a purchase order association to a charge within an agreement.</p>
    # @!attribute charge_id
    #   <p>The unique identifier of the charge to associate the purchase order with.</p>
    #   @return [String]
    # @!attribute charge_revision
    #   <p>The revision of the charge.</p>
    #   @return [Integer]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this charge.</p>
    #   @return [String]
    # @!attribute purchase_order_reference
    #   <p>The purchase order reference to associate with the charge.</p>
    #   @return [String]
    class PurchaseOrder < Struct.new(
      nil,
      :charge_id,
      :charge_revision,
      :agreement_id,
      :purchase_order_reference,
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
      nil,
      :dimension_key,
      :price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a pricing model where customers are charged a fixed recurring price at the end of each billing period.</p>
    # @!attribute type
    #   <p>Type of the term being updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the term.</p>
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
      nil,
      :type,
      :id,
      :currency_code,
      :billing_period,
      :price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with the cancellation request.</p>
    #   @return [String]
    # @!attribute agreement_cancellation_request_id
    #   <p>The unique identifier of the cancellation request to reject.</p>
    #   @return [String]
    # @!attribute rejection_reason
    #   <p>The reason for rejecting the cancellation request (1-2000 characters). This message is visible to the seller.</p>
    #   @return [String]
    class RejectAgreementCancellationRequestInput < Struct.new(
      nil,
      :agreement_id,
      :agreement_cancellation_request_id,
      :rejection_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this cancellation request.</p>
    #   @return [String]
    # @!attribute agreement_cancellation_request_id
    #   <p>The unique identifier of the rejected cancellation request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The updated status of the cancellation request, which is <code>REJECTED</code>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The rejection reason provided by the buyer.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The original reason code provided when the cancellation request was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detailed description of the cancellation reason, if provided.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the cancellation request was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the cancellation request was rejected.</p>
    #   @return [Time]
    class RejectAgreementCancellationRequestOutput < Struct.new(
      nil,
      :agreement_id,
      :agreement_cancellation_request_id,
      :status,
      :status_message,
      :reason_code,
      :description,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_request_id
    #   <p>The unique identifier of the payment request to reject.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with the payment request.</p>
    #   @return [String]
    # @!attribute rejection_reason
    #   <p>An optional reason for rejecting the payment request (1-250 characters). This message is visible to the seller.</p>
    #   @return [String]
    class RejectAgreementPaymentRequestInput < Struct.new(
      nil,
      :payment_request_id,
      :agreement_id,
      :rejection_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_request_id
    #   <p>The unique identifier of the rejected payment request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement associated with this payment request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The updated status of the payment request, which is <code>REJECTED</code>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The rejection reason provided by the buyer, if any.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the payment request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detailed description of the payment request, if provided.</p>
    #   @return [String]
    # @!attribute charge_amount
    #   <p>The amount that was requested to be charged.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code for the charge amount.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the payment request was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the payment request was rejected.</p>
    #   @return [Time]
    class RejectAgreementPaymentRequestOutput < Struct.new(
      nil,
      :payment_request_id,
      :agreement_id,
      :status,
      :status_message,
      :name,
      :description,
      :charge_amount,
      :currency_code,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the renewal that applies at the end date of an agreement.</p>
    # @!attribute offer_id
    #   <p>The unique identifier of the offer that provides the terms for the next renewal cycle. For most renewals, this is the same offer that the agreement was created from.</p>
    #   @return [String]
    class RenewalSummary < Struct.new(
      nil,
      :offer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines that on graceful expiration of the agreement (when the agreement ends on its pre-defined end date), a new agreement will be created using the accepted terms on the existing agreement. In other words, the agreement will be renewed. Presence of <code>RenewalTerm</code> in the offer document means that auto-renewal is allowed. The acceptor will have the option to accept or decline auto-renewal at the offer acceptance/agreement creation. The acceptor can also change this flag from <code>True</code> to <code>False</code> or <code>False</code> to <code>True</code>, within the limits set by <code>LockoutPeriod</code> and <code>MaxRenewals</code>. Setting the flag to <code>True</code> doesn't by itself guarantee that the agreement renews, because the proposer can also opt out.</p>
    # @!attribute type
    #   <p>Category of the term being updated. </p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the term.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Additional parameters specified by the acceptor while accepting the term.</p>
    #   @return [Types::RenewalTermConfiguration]
    # @!attribute lockout_period
    #   <p>The renewal decision deadline, measured back from the end date of the agreement. This is the last day either party can opt in to or opt out of the renewal. The duration is represented in the ISO 8601 format in whole days (for example, <code>P30D</code> for 30 days or <code>P60D</code> for 60 days).</p> <p>The field is <code>null</code> when no renewal decision deadline is set. In that case, either party can change the auto-renewal decision up to the end date of the agreement.</p>
    #   @return [String]
    # @!attribute max_renewals
    #   <p>The maximum number of times the agreement can be renewed. The field is <code>null</code> when the number of renewals is unlimited.</p> <p>After the agreement reaches this limit, it expires on its end date instead of renewing.</p>
    #   @return [Integer]
    # @!attribute adjustment_deadline
    #   <p>The date by which the proposer must finalize the price increase for the next renewal, measured back from the end date of the agreement. The duration is represented in the ISO 8601 format in whole days (for example, <code>P30D</code> for 30 days or <code>P60D</code> for 60 days).</p> <p>This field applies only when <code>PriceIncrease</code> is a <code>PercentageRange</code>. The field is <code>null</code> when <code>PriceIncrease</code> is a <code>FixedPercentage</code>, because the price increase is already fixed and there is nothing for the proposer to finalize. If the proposer doesn't finalize a value by the adjustment deadline, the <code>DefaultValue</code> of the range applies.</p> <p> <code>AdjustmentDeadline</code> must be greater than <code>LockoutPeriod</code>.</p>
    #   @return [String]
    # @!attribute price_increase
    #   <p>The price increase that is applied each time the agreement renews. The field is <code>null</code> when the price doesn't change at renewal.</p>
    #   @return [Types::PriceIncrease]
    # @!attribute term_templates
    #   <p>Defines how specific terms change each time the agreement renews. The field is <code>null</code> when no terms change at renewal.</p>
    #   @return [Array<Types::TermTemplate>]
    class RenewalTerm < Struct.new(
      nil,
      :type,
      :id,
      :configuration,
      :lockout_period,
      :max_renewals,
      :adjustment_deadline,
      :price_increase,
      :term_templates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional parameters specified by the acceptor while accepting the term.</p>
    # @!attribute enable_auto_renew
    #   <p>Defines whether the acceptor has chosen to auto-renew the agreement when it reaches its end date. Can be set to <code>True</code> or <code>False</code>. The acceptor can change this value within the limits set by <code>LockoutPeriod</code> and <code>MaxRenewals</code>.</p>
    #   @return [Boolean]
    class RenewalTermConfiguration < Struct.new(
      nil,
      :enable_auto_renew,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines what is being accepted as part of the agreement creation or update request, and it includes their configurations.</p>
    # @!attribute id
    #   <p>The unique identifier of the term in the agreement proposal.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Additional configuration for the requested terms. This configuration is applicable only to the terms that accept a customer-provided configuration, such as <code>ConfigurableUpfrontPricingTerm</code>.</p>
    #   @return [Types::RequestedTermConfiguration]
    class RequestedTerm < Struct.new(
      nil,
      :id,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tagged union that represents the term configuration provided by the acceptor. Only one configuration is accepted per term.</p>
    # @!attribute configurable_upfront_pricing_term_configuration
    #   <p>Defines a prepaid payment model that allows buyers to configure the entitlements they want to purchase and the duration.</p>
    #   @return [Types::ConfigurableUpfrontPricingTermConfiguration]
    # @!attribute renewal_term_configuration
    #   <p>Additional parameters specified by the acceptor while accepting the term.</p>
    #   @return [Types::RenewalTermConfiguration]
    # @!attribute variable_payment_term_configuration
    #   <p>Additional parameters specified by the acceptor while accepting the variable payment term.</p>
    #   @return [Types::VariablePaymentTermConfiguration]
    class RequestedTermConfiguration < Struct.new(
      :configurable_upfront_pricing_term_configuration,
      :renewal_term_configuration,
      :variable_payment_term_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ConfigurableUpfrontPricingTermConfiguration < RequestedTermConfiguration; end
      class RenewalTermConfiguration < RequestedTermConfiguration; end
      class VariablePaymentTermConfiguration < RequestedTermConfiguration; end
      class Unknown < RequestedTermConfiguration; end
    end

    # <p>The list of resources involved in the agreement.</p>
    # @!attribute id
    #   <p>The unique identifier of the resource.</p> <note> <p>We mention the term resource, which is most commonly a product, so a <code>resourceId</code> is also a <code>productId</code>.</p> </note>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the resource, which is the product (for example, <code>SaaSProduct</code>, <code>AmiProduct</code>, <code>ContainerProduct</code>).</p>
    #   @return [String]
    class Resource < Struct.new(
      nil,
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
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
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
      nil,
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
    #   <p>The filter name and value pair used to return a specific list of results.</p> <p>The following filters are supported:</p> <ul> <li> <p> <code>ResourceIdentifier</code> – The unique identifier of the resource.</p> </li> <li> <p> <code>ResourceType</code> – Type of the resource, which is the product (<code>AmiProduct</code>, <code>ContainerProduct</code>, <code>SaaSProduct</code>, <code>ProfessionalServicesProduct</code>, or <code>MachineLearningProduct</code>).</p> </li> <li> <p> <code>PartyType</code> – The party type of the caller. Use <code>Proposer</code> or <code>Acceptor</code>.</p> </li> <li> <p> <code>AcceptorAccountId</code> – The AWS account ID of the party accepting the agreement terms.</p> </li> <li> <p> <code>OfferId</code> – The unique identifier of the offer in which the terms are registered in the agreement token.</p> </li> <li> <p> <code>Status</code> – The current status of the agreement. Values include <code>ACTIVE</code>, <code>CANCELLED</code>, <code>EXPIRED</code>, <code>RENEWED</code>, <code>REPLACED</code>, and <code>TERMINATED</code>.</p> </li> <li> <p> <code>BeforeEndTime</code> – A date used to filter agreements with a date before the <code>endTime</code> of an agreement.</p> </li> <li> <p> <code>AfterEndTime</code> – A date used to filter agreements with a date after the <code>endTime</code> of an agreement.</p> </li> <li> <p> <code>BeforeStartTime</code> – A date used to filter agreements with a date before the <code>startTime</code> of an agreement.</p> </li> <li> <p> <code>AfterStartTime</code> – A date used to filter agreements with a date after the <code>startTime</code> of an agreement.</p> </li> <li> <p> <code>BeforeLastUpdateTime</code> – A date used to filter agreements with a date before the <code>lastUpdateTime</code> of an agreement.</p> </li> <li> <p> <code>AfterLastUpdateTime</code> – A date used to filter agreements with a date after the <code>lastUpdateTime</code> of an agreement.</p> </li> <li> <p> <code>AgreementType</code> – The type of agreement. Supported value includes <code>PurchaseAgreement</code>.</p> </li> <li> <p> <code>OfferSetId</code> – A unique identifier for the offer set containing this offer. All agreements created from offers in this set include this identifier as context.</p> </li> <li> <p> <code>EndTimeBehaviorType</code> – What happens to the agreement when it reaches its end date. Values include <code>RENEW</code>, <code>REPLACE</code>, and <code>EXPIRE</code>.</p> </li> <li> <p> <code>EndTimeBehaviorReasonCode</code> – The reason why the agreement doesn't renew at its end date. Values include <code>PROPOSER_RENEW_OPTED_OUT</code>, <code>ACCEPTOR_RENEW_OPTED_OUT</code>, <code>NO_RENEWAL_TERM</code>, and <code>RENEWAL_LIMIT_EXHAUSTED</code>.</p> </li> <li> <p> <code>InitialAgreementId</code> – The unique identifier of the very first agreement in a chain of related agreements. Use this filter to return every agreement in the same chain.</p> </li> <li> <p> <code>LicenseArn</code> – The Amazon Resource Name (ARN) of the AWS License Manager license associated with an entitlement granted by the agreement.</p> </li> </ul> <p>A proposer can use any combination of the preceding filters along with <code>AgreementType</code>, which is required.</p> <p>The following filter combinations are supported when the <code>PartyType</code> is <code>Acceptor</code>:</p> <ul> <li> <p> <code>AgreementType</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>Status</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>Status</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceIdentifier</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceIdentifier</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceIdentifier</code> + <code>Status</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceIdentifier</code> + <code>Status</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceType</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceType</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferId</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferId</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferId</code> + <code>Status</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferId</code> + <code>Status</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferSetId</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferSetId</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferSetId</code> + <code>Status</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferSetId</code> + <code>Status</code> + <code>EndTime</code> </p> </li> </ul> <note> <p>To filter by <code>EndTime</code>, you can use <code>BeforeEndTime</code>, <code>AfterEndTime</code>, or both.</p> </note>
    #   @return [Array<Types::Filter>]
    # @!attribute sort
    #   <p>An object that contains the <code>SortBy</code> and <code>SortOrder</code> attributes. For <code>SearchAgreements</code>, <code>SortBy</code> supports <code>EndTime</code> for both party types, and <code>StartTime</code> and <code>LastUpdateTime</code> only when <code>PartyType</code> is <code>Proposer</code>. The default <code>SortBy</code> value is <code>EndTime</code>.</p>
    #   @return [Types::Sort]
    # @!attribute max_results
    #   <p>The maximum number of agreements to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start pagination.</p>
    #   @return [String]
    class SearchAgreementsInput < Struct.new(
      nil,
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
    #   <p>A summary of the agreement, including top-level attributes (for example, the agreement ID, proposer, and acceptor).</p>
    #   @return [Array<Types::AgreementViewSummary>]
    # @!attribute next_token
    #   <p>The token used for pagination. The field is <code>null</code> if there are no more results.</p>
    #   @return [String]
    class SearchAgreementsOutput < Struct.new(
      nil,
      :agreement_view_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Differentiates between the mutually exclusive rate cards in the same pricing term to be selected by the buyer.</p>
    # @!attribute type
    #   <p>Category of selector.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Contract duration. This field supports the ISO 8601 format. </p>
    #   @return [String]
    class Selector < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement for which the cancellation request is being submitted.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The reason code for the cancellation request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional detailed description of the cancellation reason (1-2000 characters).</p>
    #   @return [String]
    class SendAgreementCancellationRequestInput < Struct.new(
      nil,
      :agreement_id,
      :reason_code,
      :client_token,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    # @!attribute agreement_cancellation_request_id
    #   <p>The unique identifier for the created cancellation request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the cancellation request. The initial status is <code>PENDING_APPROVAL</code>.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The reason code provided for the cancellation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detailed description of the cancellation reason, if provided.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the cancellation request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the cancellation request was last updated.</p>
    #   @return [Time]
    class SendAgreementCancellationRequestOutput < Struct.new(
      nil,
      :agreement_id,
      :agreement_cancellation_request_id,
      :status,
      :reason_code,
      :description,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement for which the payment request is being submitted. Use <code>GetAgreementTerms</code> to retrieve agreement term details.</p>
    #   @return [String]
    # @!attribute term_id
    #   <p>The unique identifier of the <code>VariablePaymentTerm</code> for the agreement that the payment request is being sent for.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive name for the payment request (5-64 characters).</p>
    #   @return [String]
    # @!attribute charge_amount
    #   <p>The amount requested to be charged to the buyer, positive decimal value in the currency of the accepted term.</p> <note> <p>A <code>ValidationException</code> is returned if the <code>chargeAmount</code> exceeds the available balance, if the agreement doesn't have an active <code>VariablePaymentTerm</code>, or if the <code>termId</code> is invalid.</p> </note>
    #   @return [String]
    # @!attribute description
    #   <p>An optional detailed description of the payment request (1-2000 characters).</p>
    #   @return [String]
    class SendAgreementPaymentRequestInput < Struct.new(
      nil,
      :client_token,
      :agreement_id,
      :term_id,
      :name,
      :charge_amount,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_request_id
    #   <p>The unique identifier for the sent payment request.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The agreement identifier for this payment request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the payment request. The initial status is <code>PENDING_APPROVAL</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the payment request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detailed description of the payment request, if provided.</p>
    #   @return [String]
    # @!attribute charge_amount
    #   <p>The amount being charged to the buyer.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code for the charge amount (e.g., <code>USD</code>).</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the payment request was created.</p>
    #   @return [Time]
    class SendAgreementPaymentRequestOutput < Struct.new(
      nil,
      :payment_request_id,
      :agreement_id,
      :status,
      :name,
      :description,
      :charge_amount,
      :currency_code,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request exceeded the maximum allowed limit (quota) for a specific resource or API operation.</p>
    # @!attribute request_id
    #   <p>The unique identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code of the quota that was exceeded.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code of the service whose quota was exceeded.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that exceeded the quota.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource that exceeded the quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :request_id,
      :message,
      :quota_code,
      :service_code,
      :resource_type,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains the <code>SortBy</code> and <code>SortOrder</code> attributes.</p>
    # @!attribute sort_by
    #   <p>The attribute on which the data is grouped, which can be <code>EndTime</code>, <code>StartTime</code>, or <code>LastUpdateTime</code>. <code>StartTime</code> and <code>LastUpdateTime</code> are supported only when <code>PartyType</code> is <code>Proposer</code>. The default value is <code>EndTime</code>.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sorting order, which can be <code>ASCENDING</code> or <code>DESCENDING</code>. The default value is <code>ASCENDING</code>.</p>
    #   @return [String]
    class Sort < Struct.new(
      nil,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the customer support available for the acceptors when they purchase the software.</p>
    # @!attribute type
    #   <p>Category of the term being updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the term.</p>
    #   @return [String]
    # @!attribute refund_policy
    #   <p>Free-text field about the refund policy description that will be shown to customers as is on the website and console.</p>
    #   @return [String]
    class SupportTerm < Struct.new(
      nil,
      :type,
      :id,
      :refund_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single tax breakdown entry with amount, rate, and type.</p>
    # @!attribute amount
    #   <p>The estimated tax amount.</p>
    #   @return [String]
    # @!attribute rate
    #   <p>The tax rate, in decimals.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of tax (for example, VAT, ST, or GST).</p>
    #   @return [String]
    class TaxBreakdownItem < Struct.new(
      nil,
      :amount,
      :rate,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration controls for tax estimation in the agreement request.</p>
    # @!attribute tax_estimation
    #   <p>Toggle to estimate tax as part of the response. Values include <code>ENABLED</code> and <code>DISABLED</code>. Default is <code>DISABLED</code>.</p>
    #   @return [String]
    class TaxConfiguration < Struct.new(
      nil,
      :tax_estimation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:tax_estimation] = 'DISABLED' unless options.key?(:tax_estimation)
        super
      end
    end

    # <p>Defines how a specific type of term changes each time the agreement renews. Exactly one of the following fields is set.</p>
    # @!attribute payment_schedule_term_template
    #   <p>Defines the payment schedule that is applied to the renewed agreement.</p>
    #   @return [Types::PaymentScheduleTermTemplate]
    class TermTemplate < Struct.new(
      :payment_schedule_term_template,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PaymentScheduleTermTemplate < TermTemplate; end
      class Unknown < TermTemplate; end
    end

    # <p>Request was denied due to request throttling.</p>
    # @!attribute request_id
    #   <p>The unique identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :request_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute purchase_orders
    #   <p>Contains information about purchase order associations.</p>
    #   @return [Array<Types::PurchaseOrder>]
    class UpdatePurchaseOrdersInput < Struct.new(
      nil,
      :purchase_orders,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdatePurchaseOrdersOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a usage-based pricing model (typically, pay-as-you-go pricing), where the customers are charged based on product usage.</p>
    # @!attribute type
    #   <p>Category of the term.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the term.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices mentioned in the term. </p>
    #   @return [String]
    # @!attribute rate_cards
    #   <p>List of rate cards.</p>
    #   @return [Array<Types::UsageBasedRateCardItem>]
    class UsageBasedPricingTerm < Struct.new(
      nil,
      :type,
      :id,
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
      nil,
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
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason associated with the error.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The fields associated with the error.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
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
      nil,
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
    # @!attribute id
    #   <p>The unique identifier for the term.</p>
    #   @return [String]
    # @!attribute agreement_duration
    #   <p>Defines the duration that the agreement remains active. If <code>AgreementStartDate</code> isn’t provided, the agreement duration is relative to the agreement signature time. The duration is represented in the ISO_8601 format.</p>
    #   @return [String]
    # @!attribute agreement_start_date
    #   <p>Defines the date when agreement starts. The agreement starts at 00:00:00.000 UTC on the date provided. If <code>AgreementStartDate</code> isn’t provided, the agreement start date is determined based on agreement signature time.</p>
    #   @return [Time]
    # @!attribute agreement_end_date
    #   <p>Defines the date when the agreement ends. The agreement ends at 23:59:59.999 UTC on the date provided. If <code>AgreementEndDate</code> isn’t provided, the agreement end date is determined by the validity of individual terms.</p>
    #   @return [Time]
    class ValidityTerm < Struct.new(
      nil,
      :type,
      :id,
      :agreement_duration,
      :agreement_start_date,
      :agreement_end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a payment model where sellers can submit variable payment requests up to a maximum charge amount, with configurable approval strategies and expiration timelines.</p>
    # @!attribute type
    #   <p>Type of the term.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the term.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices mentioned in the term.</p>
    #   @return [String]
    # @!attribute max_total_charge_amount
    #   <p>The maximum total amount that can be charged to the customer through variable payment requests under this term.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Additional parameters specified by the acceptor while accepting the term.</p>
    #   @return [Types::VariablePaymentTermConfiguration]
    class VariablePaymentTerm < Struct.new(
      nil,
      :type,
      :id,
      :currency_code,
      :max_total_charge_amount,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional parameters specified by the acceptor while accepting the variable payment term.</p>
    # @!attribute payment_request_approval_strategy
    #   <p>Defines the strategy for approving payment requests. Values include <code>AUTO_APPROVE_ON_EXPIRATION</code> and <code>WAIT_FOR_APPROVAL</code> </p>
    #   @return [String]
    # @!attribute expiration_duration
    #   <p>Defines the duration after which a payment request is automatically approved if no further action is taken. This only applies when the payment request approval strategy is set to <code>AUTO_APPROVE_ON_EXPIRATION</code>. The duration is represented in the ISO_8601 format (e.g., P10D for 10 days).</p>
    #   @return [String]
    class VariablePaymentTermConfiguration < Struct.new(
      nil,
      :payment_request_approval_strategy,
      :expiration_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
