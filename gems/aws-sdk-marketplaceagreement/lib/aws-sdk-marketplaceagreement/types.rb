# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceAgreement
  module Types

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with the
    #   cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_cancellation_request_id
    #   The unique identifier of the cancellation request to accept.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AcceptAgreementCancellationRequestInput AWS API Documentation
    #
    class AcceptAgreementCancellationRequestInput < Struct.new(
      :agreement_id,
      :agreement_cancellation_request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this
    #   cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_cancellation_request_id
    #   The unique identifier of the accepted cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The updated status of the cancellation request, which is `APPROVED`.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   The original reason code provided when the cancellation request was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the cancellation reason, if provided.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the cancellation request was originally
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the cancellation request was accepted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AcceptAgreementCancellationRequestOutput AWS API Documentation
    #
    class AcceptAgreementCancellationRequestOutput < Struct.new(
      :agreement_id,
      :agreement_cancellation_request_id,
      :status,
      :reason_code,
      :description,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] payment_request_id
    #   The unique identifier of the payment request to accept.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with the payment
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_reference
    #   An optional purchase order reference that buyers can provide to
    #   associate the payment request with their internal purchase order
    #   system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AcceptAgreementPaymentRequestInput AWS API Documentation
    #
    class AcceptAgreementPaymentRequestInput < Struct.new(
      :payment_request_id,
      :agreement_id,
      :purchase_order_reference)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_request_id
    #   The unique identifier of the accepted payment request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this payment
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The updated status of the payment request, which is `APPROVED`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the payment request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the payment request, if provided.
    #   @return [String]
    #
    # @!attribute [rw] charge_amount
    #   The amount that was approved to be charged.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the charge amount.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the payment request was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the payment request was accepted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AcceptAgreementPaymentRequestOutput AWS API Documentation
    #
    class AcceptAgreementPaymentRequestOutput < Struct.new(
      :payment_request_id,
      :agreement_id,
      :status,
      :name,
      :description,
      :charge_amount,
      :currency_code,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] agreement_request_id
    #   The unique identifier of the agreement request.
    #   @return [String]
    #
    # @!attribute [rw] purchase_orders
    #   A list of purchase orders associated with accepting a marketplace
    #   agreement request.
    #   @return [Array<Types::PurchaseOrder>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AcceptAgreementRequestInput AWS API Documentation
    #
    class AcceptAgreementRequestInput < Struct.new(
      :agreement_request_id,
      :purchase_orders)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement created or modified by
    #   accepting the agreement request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AcceptAgreementRequestOutput AWS API Documentation
    #
    class AcceptAgreementRequestOutput < Struct.new(
      :agreement_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   the offer document means that auto-renewal is allowed. The acceptor
    #   will have the option to accept or decline auto-renewal at the offer
    #   acceptance/agreement creation. The acceptor can also change this
    #   flag from `True` to `False` or `False` to `True`, within the limits
    #   set by `LockoutPeriod` and `MaxRenewals`. Setting the flag to `True`
    #   doesn't by itself guarantee that the agreement renews, because the
    #   proposer can also opt out.
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
    # @!attribute [rw] net_payment_term
    #   Defines the net payment due period for the agreement, specifying
    #   when payment is due after an invoice is issued.
    #   @return [Types::NetPaymentTerm]
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
      :net_payment_term,
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
      class NetPaymentTerm < AcceptedTerm; end
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
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the access denied exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :request_id,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary view of an agreement cancellation request.
    #
    # @!attribute [rw] agreement_cancellation_request_id
    #   The unique identifier of the cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this
    #   cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the cancellation request. Possible values
    #   include `PENDING_APPROVAL`, `APPROVED`, `REJECTED`, `CANCELLED`, and
    #   `VALIDATION_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   The reason code provided for the cancellation.
    #   @return [String]
    #
    # @!attribute [rw] agreement_type
    #   The type of agreement.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog in which the agreement was created.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the cancellation request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the cancellation request was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AgreementCancellationRequestSummary AWS API Documentation
    #
    class AgreementCancellationRequestSummary < Struct.new(
      :agreement_cancellation_request_id,
      :agreement_id,
      :status,
      :reason_code,
      :agreement_type,
      :catalog,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an entitlement associated with an agreement, including the
    # provisioning status, resource, and type.
    #
    # @!attribute [rw] resource
    #   The resource that the entitlement is provisioned to, such as a
    #   product.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] type
    #   The type of entitlement.
    #   @return [String]
    #
    # @!attribute [rw] registration_token
    #   A short-lived token required by acceptors to register their account
    #   with the product provider. The token is only valid for 30 minutes
    #   after creation and is only applicable for purchase agreements.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of an entitlement.
    #   @return [String]
    #
    # @!attribute [rw] status_reason_code
    #   Provides more information about the status of an entitlement.
    #   @return [String]
    #
    # @!attribute [rw] license_arn
    #   The Amazon Resource Name (ARN) of the AWS License Manager license
    #   associated with the entitlement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AgreementEntitlement AWS API Documentation
    #
    class AgreementEntitlement < Struct.new(
      :resource,
      :type,
      :registration_token,
      :status,
      :status_reason_code,
      :license_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of grouped billing data for an agreement invoice line item.
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] invoice_id
    #   The identifier of the invoice for this group.
    #   @return [String]
    #
    # @!attribute [rw] pricing_currency_amount
    #   Monetary amounts for this invoice group.
    #   @return [Types::PricingCurrencyAmount]
    #
    # @!attribute [rw] invoice_billing_period
    #   The billing period associated with this group.
    #   @return [Types::InvoiceBillingPeriod]
    #
    # @!attribute [rw] issued_time
    #   The timestamp when the invoice containing this group was created.
    #   @return [Time]
    #
    # @!attribute [rw] invoice_type
    #   The type of invoice. Valid values are `INVOICE` and `CREDIT_MEMO`.
    #   @return [String]
    #
    # @!attribute [rw] invoicing_entity
    #   The entity that issues the invoice.
    #   @return [Types::InvoicingEntity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AgreementInvoiceLineItemGroupSummary AWS API Documentation
    #
    class AgreementInvoiceLineItemGroupSummary < Struct.new(
      :agreement_id,
      :invoice_id,
      :pricing_currency_amount,
      :invoice_billing_period,
      :issued_time,
      :invoice_type,
      :invoicing_entity)
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
    # @!attribute [rw] last_update_time
    #   The date and time when the agreement was last updated. An agreement
    #   is updated when any of its attributes or accepted terms change.
    #   Amendments, renewals, and a party changing whether the agreement
    #   renews are all examples.
    #
    #   Use the `BeforeLastUpdateTime` and `AfterLastUpdateTime` filters to
    #   search on this value, and `LastUpdateTime` as the `SortBy` value to
    #   sort by it. Sorting by `LastUpdateTime` is supported only when
    #   `PartyType` is `Proposer`.
    #   @return [Time]
    #
    # @!attribute [rw] agreement_type
    #   The type of agreement.
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
    # @!attribute [rw] entitlements
    #   A list of entitlements associated with the agreement.
    #   @return [Array<Types::Entitlement>]
    #
    # @!attribute [rw] initial_agreement_id
    #   The unique identifier of the very first agreement in a chain of
    #   related agreements, such as renewals or replacements. It stays the
    #   same across all agreements in that chain, which lets you trace an
    #   agreement back to the original. You can also use it as the
    #   `InitialAgreementId` filter value to return every agreement in the
    #   same chain.
    #   @return [String]
    #
    # @!attribute [rw] end_time_behavior_type
    #   The behavior of the agreement when it reaches its end date. The
    #   field is `null` for agreements that have no end date, because those
    #   agreements never reach an end time.
    #
    #   Types include:
    #
    #   * `RENEW` – A new agreement is created from the accepted terms of
    #     this agreement.
    #
    #   * `REPLACE` – A new agreement is created from a different offer than
    #     the one this agreement was created from. This happens, for
    #     example, when a private offer reaches its end date and the
    #     acceptor transitions to the public offer for the product.
    #
    #   * `EXPIRE` – The agreement ends and isn't renewed or replaced.
    #   @return [String]
    #
    # @!attribute [rw] end_time_behavior_reason_code
    #   The reason why the agreement doesn't renew at its end date. The
    #   field is `null` when the agreement renews.
    #
    #   More than one reason can apply to the same agreement. When that
    #   happens, the operation returns only one reason code, and
    #   `PROPOSER_RENEW_OPTED_OUT` takes precedence over all others.
    #
    #   The `EnableAutoRenew` field reflects only the acceptor's
    #   preference, and doesn't reflect the other reasons an agreement
    #   might not renew.
    #
    #   Reason codes include:
    #
    #   * `PROPOSER_RENEW_OPTED_OUT` – The proposer opted out of renewing
    #     the agreement.
    #
    #   * `ACCEPTOR_RENEW_OPTED_OUT` – The acceptor opted out of renewing
    #     the agreement.
    #
    #   * `NO_RENEWAL_TERM` – The accepted terms of the agreement don't
    #     include a renewal term, which is required for an agreement to
    #     renew.
    #
    #   * `RENEWAL_LIMIT_EXHAUSTED` – The agreement reached the maximum
    #     number of renewals allowed by its renewal term.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AgreementViewSummary AWS API Documentation
    #
    class AgreementViewSummary < Struct.new(
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
      :end_time_behavior_reason_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error for a billing adjustment request entry that failed
    # validation.
    #
    # @!attribute [rw] code
    #   The error code indicating the reason for failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A human-readable message describing the error.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token of the request entry that failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/BatchCreateBillingAdjustmentError AWS API Documentation
    #
    class BatchCreateBillingAdjustmentError < Struct.new(
      :code,
      :message,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A successfully created billing adjustment request item.
    #
    # @!attribute [rw] billing_adjustment_request_id
    #   The unique identifier of the created billing adjustment request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token provided in the corresponding request entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/BatchCreateBillingAdjustmentItem AWS API Documentation
    #
    class BatchCreateBillingAdjustmentItem < Struct.new(
      :billing_adjustment_request_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An individual entry in a batch billing adjustment request, specifying
    # the invoice and adjustment details.
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with the invoice.
    #   @return [String]
    #
    # @!attribute [rw] original_invoice_id
    #   The identifier of the original invoice to adjust.
    #   @return [String]
    #
    # @!attribute [rw] adjustment_amount
    #   The adjustment amount as a string representation of a decimal number
    #   in the currency of the invoice.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The 3-letter ISO 4217 currency code for the adjustment amount. Must
    #   match the currency code of the offer associated with the agreement
    #   (e.g., `USD`).
    #   @return [String]
    #
    # @!attribute [rw] adjustment_reason_code
    #   The reason code for the billing adjustment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional detailed description of the adjustment reason.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/BatchCreateBillingAdjustmentRequestEntry AWS API Documentation
    #
    class BatchCreateBillingAdjustmentRequestEntry < Struct.new(
      :agreement_id,
      :original_invoice_id,
      :adjustment_amount,
      :currency_code,
      :adjustment_reason_code,
      :description,
      :client_token)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] billing_adjustment_request_entries
    #   A list of billing adjustment request entries. Each entry specifies
    #   the invoice and adjustment details.
    #   @return [Array<Types::BatchCreateBillingAdjustmentRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/BatchCreateBillingAdjustmentRequestInput AWS API Documentation
    #
    class BatchCreateBillingAdjustmentRequestInput < Struct.new(
      :billing_adjustment_request_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of successfully created billing adjustment items, each
    #   containing the `billingAdjustmentRequestId` and `clientToken`.
    #   @return [Array<Types::BatchCreateBillingAdjustmentItem>]
    #
    # @!attribute [rw] errors
    #   A list of errors for entries that failed validation, each containing
    #   the `clientToken`, error `code`, and `message`.
    #   @return [Array<Types::BatchCreateBillingAdjustmentError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/BatchCreateBillingAdjustmentRequestOutput AWS API Documentation
    #
    class BatchCreateBillingAdjustmentRequestOutput < Struct.new(
      :items,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary view of a billing adjustment request.
    #
    # @!attribute [rw] billing_adjustment_request_id
    #   The unique identifier of the billing adjustment request.
    #   @return [String]
    #
    # @!attribute [rw] original_invoice_id
    #   The identifier of the original invoice being adjusted.
    #   @return [String]
    #
    # @!attribute [rw] adjustment_amount
    #   The adjustment amount as a string representation of a decimal
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the adjustment amount.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the billing adjustment request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this billing
    #   adjustment request.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the billing adjustment request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the billing adjustment request was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] agreement_type
    #   The type of agreement.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog in which the agreement was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/BillingAdjustmentSummary AWS API Documentation
    #
    class BillingAdjustmentSummary < Struct.new(
      :billing_adjustment_request_id,
      :original_invoice_id,
      :adjustment_amount,
      :currency_code,
      :status,
      :agreement_id,
      :created_at,
      :updated_at,
      :agreement_type,
      :catalog)
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
    # @!attribute [rw] id
    #   The unique identifier for the term.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ByolPricingTerm AWS API Documentation
    #
    class ByolPricingTerm < Struct.new(
      :type,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with the
    #   cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_cancellation_request_id
    #   The unique identifier of the cancellation request to cancel.
    #   @return [String]
    #
    # @!attribute [rw] cancellation_reason
    #   A required message explaining why the cancellation request is being
    #   withdrawn (1-2000 characters).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CancelAgreementCancellationRequestInput AWS API Documentation
    #
    class CancelAgreementCancellationRequestInput < Struct.new(
      :agreement_id,
      :agreement_cancellation_request_id,
      :cancellation_reason)
      SENSITIVE = [:cancellation_reason]
      include Aws::Structure
    end

    # @!attribute [rw] agreement_cancellation_request_id
    #   The unique identifier of the cancelled cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this
    #   cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   The original reason code provided when the cancellation request was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the original cancellation reason, if
    #   provided.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The updated status of the cancellation request, which is
    #   `CANCELLED`.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message providing additional context about the cancellation
    #   request status.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the cancellation request was originally
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the cancellation request was cancelled.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CancelAgreementCancellationRequestOutput AWS API Documentation
    #
    class CancelAgreementCancellationRequestOutput < Struct.new(
      :agreement_cancellation_request_id,
      :agreement_id,
      :reason_code,
      :description,
      :status,
      :status_message,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CancelAgreementInput AWS API Documentation
    #
    class CancelAgreementInput < Struct.new(
      :agreement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CancelAgreementOutput AWS API Documentation
    #
    class CancelAgreementOutput < Aws::EmptyStructure; end

    # @!attribute [rw] payment_request_id
    #   The unique identifier of the payment request to cancel.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with the payment
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CancelAgreementPaymentRequestInput AWS API Documentation
    #
    class CancelAgreementPaymentRequestInput < Struct.new(
      :payment_request_id,
      :agreement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_request_id
    #   The unique identifier of the cancelled payment request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this payment
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The updated status of the payment request, which is `CANCELLED`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the payment request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the payment request, if provided.
    #   @return [String]
    #
    # @!attribute [rw] charge_amount
    #   The amount that was requested to be charged.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the charge amount.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the payment request was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the payment request was cancelled.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CancelAgreementPaymentRequestOutput AWS API Documentation
    #
    class CancelAgreementPaymentRequestOutput < Struct.new(
      :payment_request_id,
      :agreement_id,
      :status,
      :name,
      :description,
      :charge_amount,
      :currency_code,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Represents a charge associated with an agreement, including amount,
    # timing, and purchase order details.
    #
    # @!attribute [rw] id
    #   The unique identifier of the charge.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision number of the charge.
    #   @return [Integer]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement that resulted in this charge.
    #   @return [String]
    #
    # @!attribute [rw] agreement_type
    #   The type of agreement that resulted in this charge (for example,
    #   `PurchaseAgreement`).
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_reference
    #   The purchase order reference associated with the charge, if any.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the charge amount.
    #   @return [String]
    #
    # @!attribute [rw] amount
    #   The amount of the charge.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The date and time when the charge will be incurred. This is
    #   available only when the charge date is known.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/Charge AWS API Documentation
    #
    class Charge < Struct.new(
      :id,
      :revision,
      :agreement_id,
      :agreement_type,
      :purchase_order_reference,
      :currency_code,
      :amount,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `ChargeSummary` provides a detailed breakdown of charges that are
    # associated with an agreement request. This is applicable only when a
    # request is created for a `PurchaseAgreement`.
    #
    # <note markdown="1"> Tax and invoicing fields (such as `estimatedTaxes`, `amountAfterTax`,
    # `newAgreementValueAfterTax`, and `invoicingEntity`) are returned on a
    # best-effort basis and do not cause the request to fail if unavailable.
    #
    #  A `null` tax amount can have two meanings:
    #
    #  * Tax estimation was unavailable at the time of the request.
    #
    # * The charge timing is `BILLING_PERIOD`, so the charge amount is not
    #   determined at request time. In this case, the tax breakdown may
    #   still include the tax `rate` and `type`.
    #
    #  </note>
    #
    # @!attribute [rw] currency_code
    #   The three-letter currency code for all charges (e.g., USD).
    #   @return [String]
    #
    # @!attribute [rw] new_agreement_value
    #   The total value of the agreement, which includes any amendments.
    #   @return [String]
    #
    # @!attribute [rw] new_agreement_value_after_tax
    #   Expected new agreement value after estimated taxes are applied.
    #   @return [String]
    #
    # @!attribute [rw] expected_charges
    #   A list of expected charges for the agreement request.
    #   @return [Array<Types::ExpectedCharge>]
    #
    # @!attribute [rw] estimated_taxes
    #   Provides an aggregated view of estimated tax information for the
    #   agreement.
    #   @return [Types::EstimatedTaxes]
    #
    # @!attribute [rw] itemized_charges
    #   An itemized list of charges for the agreement request.
    #   @return [Array<Types::ItemizedCharge>]
    #
    # @!attribute [rw] invoicing_entity
    #   The entity responsible for issuing the invoice.
    #   @return [Types::InvoicingEntity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ChargeSummary AWS API Documentation
    #
    class ChargeSummary < Struct.new(
      :currency_code,
      :new_agreement_value,
      :new_agreement_value_after_tax,
      :expected_charges,
      :estimated_taxes,
      :itemized_charges,
      :invoicing_entity)
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
    # @!attribute [rw] id
    #   The unique identifier of the term.
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
      :id,
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

    # Request was denied due to a resource conflict.
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource involved in the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource involved in the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :request_id,
      :message,
      :resource_id,
      :resource_type)
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

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] intent
    #   The purpose and desired outcome of the agreement request. This is a
    #   required parameter that determines how the agreement request is
    #   processed.
    #
    #   * `NEW` – Creates a new agreement for terms in the request.
    #
    #   * `AMEND` – Modifies an existing agreement with terms that are
    #     accepted in the request.
    #
    #   * `REPLACE` – Creates a new agreement with accepted terms and
    #     replaces the existing agreement.
    #   @return [String]
    #
    # @!attribute [rw] requested_terms
    #   A list of terms that define what is being accepted as part of the
    #   agreement. Some terms require configuration.
    #   @return [Array<Types::RequestedTerm>]
    #
    # @!attribute [rw] source_agreement_identifier
    #   The agreement's identifier that the request acts upon.
    #
    #   This parameter is required for all non-`NEW` intents (i.e., `AMEND`
    #   or `REPLACE`). Don't provide this parameter if the intent is `NEW`.
    #   @return [String]
    #
    # @!attribute [rw] agreement_proposal_identifier
    #   The agreement proposal signed by the proposer. The proposal includes
    #   the requested resources and the terms that outline an agreement
    #   outcome.
    #
    #   This parameter is required if the intent is not `AMEND`.
    #   @return [String]
    #
    # @!attribute [rw] tax_configuration
    #   Configuration for tax estimation in the agreement request response.
    #   @return [Types::TaxConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CreateAgreementRequestInput AWS API Documentation
    #
    class CreateAgreementRequestInput < Struct.new(
      :client_token,
      :intent,
      :requested_terms,
      :source_agreement_identifier,
      :agreement_proposal_identifier,
      :tax_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_request_id
    #   The unique identifier of the agreement request created. Use this
    #   identifier with `AcceptAgreementRequest` to accept the agreement.
    #   @return [String]
    #
    # @!attribute [rw] charge_summary
    #   Provides details of the charges associated with the agreement
    #   request. This is only applicable when a request is created for
    #   `PurchaseAgreement`.
    #   @return [Types::ChargeSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CreateAgreementRequestOutput AWS API Documentation
    #
    class CreateAgreementRequestOutput < Struct.new(
      :agreement_request_id,
      :charge_summary)
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
    # @!attribute [rw] initial_agreement_id
    #   The unique identifier of the very first agreement in a chain of
    #   related agreements, such as renewals or replacements. It stays the
    #   same across all agreements in that chain, which lets you trace an
    #   agreement back to the original. When an agreement isn't derived
    #   from another agreement, its `InitialAgreementId` is its own
    #   `AgreementId`.
    #   @return [String]
    #
    # @!attribute [rw] end_time_behavior
    #   The behavior of the agreement when it reaches its end date. For
    #   example, whether the agreement renews, and if it doesn't, the
    #   reason why.
    #
    #   This field is present for every active agreement that has an end
    #   date. It is not present for an agreement that has no end date,
    #   because such an agreement never reaches an end time. Pay-as-you-go
    #   agreements are the most common example. It is also not present for
    #   an agreement that is no longer active.
    #   @return [Types::EndTimeBehavior]
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
      :status,
      :initial_agreement_id,
      :end_time_behavior)
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

    # The behavior of an agreement when it reaches its end date. For
    # example, whether the agreement renews, and if it doesn't, the reason
    # why.
    #
    # @!attribute [rw] type
    #   The behavior of the agreement when it reaches its end date.
    #
    #   Types include:
    #
    #   * `RENEW` – A new agreement is created from the accepted terms of
    #     this agreement.
    #
    #   * `REPLACE` – A new agreement is created from a different offer than
    #     the one this agreement was created from. This happens, for
    #     example, when a private offer reaches its end date and the
    #     acceptor transitions to the public offer for the product.
    #
    #   * `EXPIRE` – The agreement ends and isn't renewed or replaced.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   The reason why the agreement doesn't renew at its end date. The
    #   field is `null` when the agreement renews.
    #
    #   More than one reason can apply to the same agreement. When that
    #   happens, the operation returns only one reason code, and
    #   `PROPOSER_RENEW_OPTED_OUT` takes precedence over all others.
    #
    #   The `EnableAutoRenew` field reflects only the acceptor's
    #   preference, and doesn't reflect the other reasons an agreement
    #   might not renew.
    #
    #   Reason codes include:
    #
    #   * `PROPOSER_RENEW_OPTED_OUT` – The proposer opted out of renewing
    #     the agreement.
    #
    #   * `ACCEPTOR_RENEW_OPTED_OUT` – The acceptor opted out of renewing
    #     the agreement.
    #
    #   * `NO_RENEWAL_TERM` – The accepted terms of the agreement don't
    #     include a renewal term, which is required for an agreement to
    #     renew.
    #
    #   * `RENEWAL_LIMIT_EXHAUSTED` – The agreement reached the maximum
    #     number of renewals allowed by its renewal term.
    #   @return [String]
    #
    # @!attribute [rw] renewal_summary
    #   The details of the renewal that applies at the end date of the
    #   agreement. This field is present when `Type` is `RENEW`. It is also
    #   present when `ReasonCode` is `PROPOSER_RENEW_OPTED_OUT` or
    #   `ACCEPTOR_RENEW_OPTED_OUT`. In those cases, it identifies the offer
    #   that the agreement would otherwise have renewed from. The field is
    #   `null` in all other cases.
    #   @return [Types::RenewalSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/EndTimeBehavior AWS API Documentation
    #
    class EndTimeBehavior < Struct.new(
      :type,
      :reason_code,
      :renewal_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an entitlement associated with an agreement.
    #
    # @!attribute [rw] license_arn
    #   The Amazon Resource Name (ARN) of the AWS License Manager license
    #   associated with the entitlement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/Entitlement AWS API Documentation
    #
    class Entitlement < Struct.new(
      :license_arn)
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

    # Provides an aggregated view of estimated tax information.
    #
    # @!attribute [rw] breakdown
    #   A list of tax breakdown information.
    #   @return [Array<Types::TaxBreakdownItem>]
    #
    # @!attribute [rw] total_amount
    #   The total amount of tax aggregated from the tax breakdown.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/EstimatedTaxes AWS API Documentation
    #
    class EstimatedTaxes < Struct.new(
      :breakdown,
      :total_amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # Estimated charge for the request.
    #
    # @!attribute [rw] id
    #   Unique identifier of the charge for a given agreement.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The date and time when the charge is due to be invoiced. This is
    #   available only when the charge date is known.
    #   @return [Time]
    #
    # @!attribute [rw] amount
    #   The tax-exclusive amount of the charge. Only available when the
    #   charge amount is known.
    #   @return [String]
    #
    # @!attribute [rw] amount_after_tax
    #   The tax-inclusive amount the acceptor has to pay. The amount is only
    #   present for fixed charges.
    #   @return [String]
    #
    # @!attribute [rw] timing
    #   Indicates when the charge amount will be incurred. Values include
    #   `ON_ACCEPTANCE` (charged immediately when the agreement request is
    #   accepted), `BILLING_PERIOD` (charged on each billing period), and
    #   `SCHEDULED` (charged at a predetermined future date).
    #   @return [String]
    #
    # @!attribute [rw] estimated_taxes
    #   Provides an aggregated view of estimated tax information for this
    #   specific charge.
    #   @return [Types::EstimatedTaxes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ExpectedCharge AWS API Documentation
    #
    class ExpectedCharge < Struct.new(
      :id,
      :time,
      :amount,
      :amount_after_tax,
      :timing,
      :estimated_taxes)
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

    # A fixed price increase that is applied each time the agreement renews.
    #
    # @!attribute [rw] value
    #   The percentage by which the price increases at each renewal, from
    #   `0.00` to `100.00` with up to two decimal places. A value of `0.00`
    #   means that the agreement renews at the same price.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/FixedPercentage AWS API Documentation
    #
    class FixedPercentage < Struct.new(
      :value)
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
    # @!attribute [rw] id
    #   The unique identifier for the term.
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
      :id,
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
    # @!attribute [rw] id
    #   The unique identifier for the terms.
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
      :id,
      :duration,
      :grants)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_cancellation_request_id
    #   The unique identifier of the cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with the
    #   cancellation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementCancellationRequestInput AWS API Documentation
    #
    class GetAgreementCancellationRequestInput < Struct.new(
      :agreement_cancellation_request_id,
      :agreement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_cancellation_request_id
    #   The unique identifier of the cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this
    #   cancellation request. Use `DescribeAgreement` to retrieve full
    #   agreement details.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   The reason code provided for the cancellation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the cancellation reason, if provided.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message providing additional context about the cancellation
    #   request status.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the cancellation request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the cancellation request was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementCancellationRequestOutput AWS API Documentation
    #
    class GetAgreementCancellationRequestOutput < Struct.new(
      :agreement_cancellation_request_id,
      :agreement_id,
      :reason_code,
      :description,
      :status,
      :status_message,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of agreement entitlements to return in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementEntitlementsInput AWS API Documentation
    #
    class GetAgreementEntitlementsInput < Struct.new(
      :agreement_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_entitlements
    #   A list of agreement entitlements which are part of the latest
    #   agreement.
    #   @return [Array<Types::AgreementEntitlement>]
    #
    # @!attribute [rw] next_token
    #   The token used for pagination. The field is `null` if there are no
    #   more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementEntitlementsOutput AWS API Documentation
    #
    class GetAgreementEntitlementsOutput < Struct.new(
      :agreement_entitlements,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_request_id
    #   The identifier of the payment request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with the payment
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementPaymentRequestInput AWS API Documentation
    #
    class GetAgreementPaymentRequestInput < Struct.new(
      :payment_request_id,
      :agreement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_request_id
    #   The unique identifier of the payment request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this payment
    #   request. Use `DescribeAgreement` to retrieve full agreement details.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the payment request. Possible values include:
    #
    #   * `VALIDATING` – The payment request is being validated against
    #     agreement terms.
    #
    #   * `VALIDATION_FAILED` – The payment request failed validation.
    #
    #   * `PENDING_APPROVAL` – The payment request is awaiting buyer action.
    #
    #   * `APPROVED` – The buyer has approved the payment request.
    #
    #   * `REJECTED` – The buyer has rejected the payment request.
    #
    #   * `CANCELLED` – The seller has cancelled the payment request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   An optional message providing additional context about the payment
    #   request status, such as a rejection reason or validation failure
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the payment request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the payment request, if provided.
    #   @return [String]
    #
    # @!attribute [rw] charge_id
    #   The unique identifier of the charge created after the payment
    #   request is approved. This field is only present for approved payment
    #   requests and follows the pattern `ch-[a-zA-Z0-9]+`.
    #   @return [String]
    #
    # @!attribute [rw] charge_amount
    #   The amount charged or to be charged to the buyer.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the charge amount.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the payment request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the payment request was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementPaymentRequestOutput AWS API Documentation
    #
    class GetAgreementPaymentRequestOutput < Struct.new(
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
      :updated_at)
      SENSITIVE = [:description]
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
    #   A token to specify where to start pagination.
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
    #   The token used for pagination. The field is `null` if there are no
    #   more results.
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

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with the billing
    #   adjustment request.
    #   @return [String]
    #
    # @!attribute [rw] billing_adjustment_request_id
    #   The unique identifier of the billing adjustment request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetBillingAdjustmentRequestInput AWS API Documentation
    #
    class GetBillingAdjustmentRequestInput < Struct.new(
      :agreement_id,
      :billing_adjustment_request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] billing_adjustment_request_id
    #   The unique identifier of the billing adjustment request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this billing
    #   adjustment request.
    #   @return [String]
    #
    # @!attribute [rw] adjustment_reason_code
    #   The reason code for the billing adjustment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the billing adjustment reason, if
    #   provided.
    #   @return [String]
    #
    # @!attribute [rw] original_invoice_id
    #   The identifier of the original invoice being adjusted.
    #   @return [String]
    #
    # @!attribute [rw] adjustment_amount
    #   The adjustment amount as a string representation of a decimal
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the adjustment amount (e.g., `USD`).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the billing adjustment request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message providing additional context about the billing adjustment
    #   request status. This field is populated only when the status is
    #   `VALIDATION_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the billing adjustment request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the billing adjustment request was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetBillingAdjustmentRequestOutput AWS API Documentation
    #
    class GetBillingAdjustmentRequestOutput < Struct.new(
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
      :updated_at)
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
    #   Description of the error.
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

    # The billing period for an invoice, specified by month and year.
    #
    # @!attribute [rw] month
    #   The billing period month. Valid range: 1-12.
    #   @return [Integer]
    #
    # @!attribute [rw] year
    #   The billing period year.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/InvoiceBillingPeriod AWS API Documentation
    #
    class InvoiceBillingPeriod < Struct.new(
      :month,
      :year)
      SENSITIVE = []
      include Aws::Structure
    end

    # The entity responsible for issuing the invoice.
    #
    # @!attribute [rw] legal_name
    #   Legal name of the entity issuing the invoice.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The branch where the issuing entity is operating from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/InvoicingEntity AWS API Documentation
    #
    class InvoicingEntity < Struct.new(
      :legal_name,
      :branch_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A breakdown of individual charges or line items within a billing or
    # pricing context.
    #
    # @!attribute [rw] dimension_key
    #   The dimension key as specified in the accepted term.
    #   @return [String]
    #
    # @!attribute [rw] new_quantity
    #   The requested quantity for this dimension.
    #   @return [Integer]
    #
    # @!attribute [rw] old_quantity
    #   The existing quantity for this dimension from the source agreement.
    #   This value is `0` for NEW intent.
    #   @return [Integer]
    #
    # @!attribute [rw] charge_reference
    #   The identifier of the expected charge that this itemized charge
    #   contributes to.
    #   @return [String]
    #
    # @!attribute [rw] incremental_charge_amount
    #   The total incremental charge amount for this dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ItemizedCharge AWS API Documentation
    #
    class ItemizedCharge < Struct.new(
      :dimension_key,
      :new_quantity,
      :old_quantity,
      :charge_reference,
      :incremental_charge_amount)
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
    # @!attribute [rw] id
    #   The unique identifer for the term.
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
      :id,
      :documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] party_type
    #   The party type for the cancellation requests. Required parameter.
    #   Use `Proposer` to list cancellation requests where you are the
    #   seller, or `Acceptor` to list cancellation requests where you are
    #   the buyer.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   An optional parameter to filter cancellation requests for a specific
    #   agreement.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   An optional parameter to filter cancellation requests by status.
    #   @return [String]
    #
    # @!attribute [rw] agreement_type
    #   An optional parameter to filter cancellation requests by agreement
    #   type (e.g., `PurchaseAgreement`).
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   An optional parameter to filter cancellation requests by catalog
    #   (e.g., `AWSMarketplace`).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of cancellation requests to return in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementCancellationRequestsInput AWS API Documentation
    #
    class ListAgreementCancellationRequestsInput < Struct.new(
      :party_type,
      :agreement_id,
      :status,
      :agreement_type,
      :catalog,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used for pagination. The field is `null` if there are no
    #   more results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   An array of `AgreementCancellationRequestSummary` objects containing
    #   summary information about each cancellation request.
    #   @return [Array<Types::AgreementCancellationRequestSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementCancellationRequestsOutput AWS API Documentation
    #
    class ListAgreementCancellationRequestsOutput < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog in which the charges were created.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] agreement_type
    #   Filter to retrieve charges of a specific agreement type (for
    #   example, `PurchaseAgreement`).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of charges to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementChargesInput AWS API Documentation
    #
    class ListAgreementChargesInput < Struct.new(
      :catalog,
      :agreement_id,
      :agreement_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of agreement charges.
    #   @return [Array<Types::Charge>]
    #
    # @!attribute [rw] next_token
    #   The token used for pagination. The field is `null` if there are no
    #   more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementChargesOutput AWS API Documentation
    #
    class ListAgreementChargesOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] group_by
    #   Specifies a grouping strategy for line items. Currently supports
    #   `INVOICE_ID`.
    #   @return [String]
    #
    # @!attribute [rw] invoice_id
    #   An optional filter to retrieve invoice information for a specific
    #   invoice.
    #   @return [String]
    #
    # @!attribute [rw] invoice_type
    #   An optional filter for the type of invoice. Valid values are
    #   `INVOICE` and `CREDIT_MEMO`.
    #   @return [String]
    #
    # @!attribute [rw] invoice_billing_period
    #   An optional filter for the billing period associated with the
    #   invoice.
    #   @return [Types::InvoiceBillingPeriod]
    #
    # @!attribute [rw] before_issued_time
    #   An optional filter for invoices issued before the specified
    #   timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] after_issued_time
    #   An optional filter for invoices issued after the specified
    #   timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementInvoiceLineItemsInput AWS API Documentation
    #
    class ListAgreementInvoiceLineItemsInput < Struct.new(
      :agreement_id,
      :group_by,
      :invoice_id,
      :invoice_type,
      :invoice_billing_period,
      :before_issued_time,
      :after_issued_time,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_invoice_line_item_group_summaries
    #   A list of grouped billing data objects.
    #   @return [Array<Types::AgreementInvoiceLineItemGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used for pagination. The field is `null` if there are no
    #   more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementInvoiceLineItemsOutput AWS API Documentation
    #
    class ListAgreementInvoiceLineItemsOutput < Struct.new(
      :agreement_invoice_line_item_group_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] party_type
    #   The party type for the payment requests. Required parameter. Use
    #   `Proposer` to list payment requests where you are the seller, or
    #   `Acceptor` to list payment requests where you are the buyer.
    #   @return [String]
    #
    # @!attribute [rw] agreement_type
    #   An optional parameter to list payment requests by agreement type
    #   (e.g., `PurchaseAgreement`).
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   An optional parameter to list payment requests by catalog (e.g.,
    #   `AWSMarketplace`).
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   An optional parameter to list payment requests for a specific
    #   agreement.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   An optional parameter to list payment requests by status. Valid
    #   values include `VALIDATING`, `VALIDATION_FAILED`,
    #   `PENDING_APPROVAL`, `APPROVED`, `REJECTED`, and `CANCELLED`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of payment requests to return in a single
    #   response (1-50). Default is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementPaymentRequestsInput AWS API Documentation
    #
    class ListAgreementPaymentRequestsInput < Struct.new(
      :party_type,
      :agreement_type,
      :catalog,
      :agreement_id,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used for pagination. The field is `null` if there are no
    #   more results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   An array of `PaymentRequestSummary` objects containing summary
    #   information about each payment request.
    #   @return [Array<Types::PaymentRequestSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementPaymentRequestsOutput AWS API Documentation
    #
    class ListAgreementPaymentRequestsOutput < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement to list billing adjustment
    #   requests for.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   An optional filter to return billing adjustment requests with the
    #   specified status.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   An optional filter to return billing adjustment requests created
    #   after the specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   An optional filter to return billing adjustment requests created
    #   before the specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of billing adjustment requests to return in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] catalog
    #   An optional filter to return billing adjustment requests by catalog
    #   (e.g., `AWSMarketplace`).
    #   @return [String]
    #
    # @!attribute [rw] agreement_type
    #   An optional filter to return billing adjustment requests by
    #   agreement type (e.g., `PurchaseAgreement`).
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListBillingAdjustmentRequestsInput AWS API Documentation
    #
    class ListBillingAdjustmentRequestsInput < Struct.new(
      :agreement_id,
      :status,
      :created_after,
      :created_before,
      :max_results,
      :catalog,
      :agreement_type,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used for pagination. The field is `null` if there are no
    #   more results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   An array of `BillingAdjustmentSummary` objects containing summary
    #   information about each billing adjustment request.
    #   @return [Array<Types::BillingAdjustmentSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListBillingAdjustmentRequestsOutput AWS API Documentation
    #
    class ListBillingAdjustmentRequestsOutput < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the net payment due period for the agreement, specifying when
    # payment is due after an invoice is issued.
    #
    # @!attribute [rw] type
    #   Type of the term being updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the term.
    #   @return [String]
    #
    # @!attribute [rw] payment_due_period
    #   The duration after an invoice is issued within which the payment is
    #   due. The duration is represented in the ISO 8601 format (for
    #   example, `P30D` for 30 days or `P60D` for 60 days).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/NetPaymentTerm AWS API Documentation
    #
    class NetPaymentTerm < Struct.new(
      :type,
      :id,
      :payment_due_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary view of a payment request.
    #
    # @!attribute [rw] payment_request_id
    #   The unique identifier of the payment request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this payment
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the payment request. Possible values include
    #   `VALIDATING`, `VALIDATION_FAILED`, `PENDING_APPROVAL`, `APPROVED`,
    #   `REJECTED`, and `CANCELLED`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the payment request.
    #   @return [String]
    #
    # @!attribute [rw] charge_id
    #   The unique identifier of the charge created after the payment
    #   request is approved. This field is only present for approved payment
    #   requests.
    #   @return [String]
    #
    # @!attribute [rw] charge_amount
    #   The amount charged or to be charged to the buyer.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the charge amount.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the payment request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the payment request was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/PaymentRequestSummary AWS API Documentation
    #
    class PaymentRequestSummary < Struct.new(
      :payment_request_id,
      :agreement_id,
      :status,
      :name,
      :charge_id,
      :charge_amount,
      :currency_code,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single installment in a payment schedule template. Because the start
    # date of the renewed agreement isn't known when the offer is created,
    # the charge date of each installment is expressed as an offset from
    # that start date rather than as an absolute date.
    #
    # @!attribute [rw] charge_date_offset
    #   The time between the start date of the renewed agreement and the
    #   date this installment is charged. The duration is represented in the
    #   ISO 8601 format in either whole months or whole days (for example,
    #   `P1M` for 1 month or `P30D` for 30 days). All installments in a
    #   schedule use the same unit.
    #   @return [String]
    #
    # @!attribute [rw] charge_percentage
    #   The percentage of the total contract value of the renewed agreement
    #   that is charged in this installment. Valid values range from `0.01`
    #   to `100.00`, with up to two decimal places.
    #   @return [String]
    #
    # @!attribute [rw] day_of_month
    #   The day of the month on which this installment is charged, from `1`
    #   to `31`. Use this field to anchor the charge to a specific calendar
    #   day within the month identified by `ChargeDateOffset`. This field is
    #   supported only when `ChargeDateOffset` is expressed in months.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/PaymentScheduleEntry AWS API Documentation
    #
    class PaymentScheduleEntry < Struct.new(
      :charge_date_offset,
      :charge_percentage,
      :day_of_month)
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
    # @!attribute [rw] id
    #   The unique identifier for the term.
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
      :id,
      :currency_code,
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the payment schedule that is applied to the renewed agreement.
    #
    # @!attribute [rw] schedule
    #   The installments that make up the payment schedule of the renewed
    #   agreement. The `ChargePercentage` values of all installments add up
    #   to `100`.
    #   @return [Array<Types::PaymentScheduleEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/PaymentScheduleTermTemplate AWS API Documentation
    #
    class PaymentScheduleTermTemplate < Struct.new(
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of price increase percentages that the proposer can choose
    # from before the adjustment deadline of the agreement.
    #
    # `MinValue` will be less than `MaxValue`, and `DefaultValue` will fall
    # within the range. When the proposer authorizes a single percentage
    # instead of a range, `PriceIncrease` is a `FixedPercentage` rather than
    # a `PercentageRange`.
    #
    # @!attribute [rw] min_value
    #   The lowest percentage that the proposer can choose, from `0.00` to
    #   `100.00` with up to two decimal places.
    #   @return [String]
    #
    # @!attribute [rw] max_value
    #   The highest percentage that the proposer can choose, from `0.00` to
    #   `100.00` with up to two decimal places.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The percentage that is applied if the proposer doesn't choose a
    #   value before the adjustment deadline. Valid values range from `0.00`
    #   to `100.00`, with up to two decimal places.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/PercentageRange AWS API Documentation
    #
    class PercentageRange < Struct.new(
      :min_value,
      :max_value,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The price increase that is applied each time the agreement renews.
    # Exactly one of the following fields is set.
    #
    # @note PriceIncrease is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PriceIncrease corresponding to the set member.
    #
    # @!attribute [rw] fixed_percentage
    #   A fixed price increase percentage that is applied at each renewal.
    #   @return [Types::FixedPercentage]
    #
    # @!attribute [rw] percentage_range
    #   A range of price increase percentages that the proposer can choose
    #   from before the adjustment deadline of the agreement.
    #   @return [Types::PercentageRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/PriceIncrease AWS API Documentation
    #
    class PriceIncrease < Struct.new(
      :fixed_percentage,
      :percentage_range,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class FixedPercentage < PriceIncrease; end
      class PercentageRange < PriceIncrease; end
      class Unknown < PriceIncrease; end
    end

    # Monetary amounts associated with an invoice line item group.
    #
    # @!attribute [rw] amount
    #   The monetary amount before tax.
    #   @return [String]
    #
    # @!attribute [rw] max_adjustment_amount
    #   The maximum refundable amount as a string representation of a
    #   decimal number.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The 3-letter ISO 4217 currency code (e.g., `USD`, `EUR`, `JPY`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/PricingCurrencyAmount AWS API Documentation
    #
    class PricingCurrencyAmount < Struct.new(
      :amount,
      :max_adjustment_amount,
      :currency_code)
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

    # Contains information about a purchase order association to a charge
    # within an agreement.
    #
    # @!attribute [rw] charge_id
    #   The unique identifier of the charge to associate the purchase order
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] charge_revision
    #   The revision of the charge.
    #   @return [Integer]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this charge.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_reference
    #   The purchase order reference to associate with the charge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/PurchaseOrder AWS API Documentation
    #
    class PurchaseOrder < Struct.new(
      :charge_id,
      :charge_revision,
      :agreement_id,
      :purchase_order_reference)
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
    # @!attribute [rw] id
    #   The unique identifier for the term.
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
      :id,
      :currency_code,
      :billing_period,
      :price)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with the
    #   cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_cancellation_request_id
    #   The unique identifier of the cancellation request to reject.
    #   @return [String]
    #
    # @!attribute [rw] rejection_reason
    #   The reason for rejecting the cancellation request (1-2000
    #   characters). This message is visible to the seller.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RejectAgreementCancellationRequestInput AWS API Documentation
    #
    class RejectAgreementCancellationRequestInput < Struct.new(
      :agreement_id,
      :agreement_cancellation_request_id,
      :rejection_reason)
      SENSITIVE = [:rejection_reason]
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this
    #   cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_cancellation_request_id
    #   The unique identifier of the rejected cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The updated status of the cancellation request, which is `REJECTED`.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The rejection reason provided by the buyer.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   The original reason code provided when the cancellation request was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the cancellation reason, if provided.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the cancellation request was originally
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the cancellation request was rejected.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RejectAgreementCancellationRequestOutput AWS API Documentation
    #
    class RejectAgreementCancellationRequestOutput < Struct.new(
      :agreement_id,
      :agreement_cancellation_request_id,
      :status,
      :status_message,
      :reason_code,
      :description,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] payment_request_id
    #   The unique identifier of the payment request to reject.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with the payment
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] rejection_reason
    #   An optional reason for rejecting the payment request (1-250
    #   characters). This message is visible to the seller.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RejectAgreementPaymentRequestInput AWS API Documentation
    #
    class RejectAgreementPaymentRequestInput < Struct.new(
      :payment_request_id,
      :agreement_id,
      :rejection_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_request_id
    #   The unique identifier of the rejected payment request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement associated with this payment
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The updated status of the payment request, which is `REJECTED`.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The rejection reason provided by the buyer, if any.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the payment request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the payment request, if provided.
    #   @return [String]
    #
    # @!attribute [rw] charge_amount
    #   The amount that was requested to be charged.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the charge amount.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the payment request was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the payment request was rejected.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RejectAgreementPaymentRequestOutput AWS API Documentation
    #
    class RejectAgreementPaymentRequestOutput < Struct.new(
      :payment_request_id,
      :agreement_id,
      :status,
      :status_message,
      :name,
      :description,
      :charge_amount,
      :currency_code,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The details of the renewal that applies at the end date of an
    # agreement.
    #
    # @!attribute [rw] offer_id
    #   The unique identifier of the offer that provides the terms for the
    #   next renewal cycle. For most renewals, this is the same offer that
    #   the agreement was created from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RenewalSummary AWS API Documentation
    #
    class RenewalSummary < Struct.new(
      :offer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines that on graceful expiration of the agreement (when the
    # agreement ends on its pre-defined end date), a new agreement will be
    # created using the accepted terms on the existing agreement. In other
    # words, the agreement will be renewed. Presence of `RenewalTerm` in the
    # offer document means that auto-renewal is allowed. The acceptor will
    # have the option to accept or decline auto-renewal at the offer
    # acceptance/agreement creation. The acceptor can also change this flag
    # from `True` to `False` or `False` to `True`, within the limits set by
    # `LockoutPeriod` and `MaxRenewals`. Setting the flag to `True` doesn't
    # by itself guarantee that the agreement renews, because the proposer
    # can also opt out.
    #
    # @!attribute [rw] type
    #   Category of the term being updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the term.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Additional parameters specified by the acceptor while accepting the
    #   term.
    #   @return [Types::RenewalTermConfiguration]
    #
    # @!attribute [rw] lockout_period
    #   The renewal decision deadline, measured back from the end date of
    #   the agreement. This is the last day either party can opt in to or
    #   opt out of the renewal. The duration is represented in the ISO 8601
    #   format in whole days (for example, `P30D` for 30 days or `P60D` for
    #   60 days).
    #
    #   The field is `null` when no renewal decision deadline is set. In
    #   that case, either party can change the auto-renewal decision up to
    #   the end date of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] max_renewals
    #   The maximum number of times the agreement can be renewed. The field
    #   is `null` when the number of renewals is unlimited.
    #
    #   After the agreement reaches this limit, it expires on its end date
    #   instead of renewing.
    #   @return [Integer]
    #
    # @!attribute [rw] adjustment_deadline
    #   The date by which the proposer must finalize the price increase for
    #   the next renewal, measured back from the end date of the agreement.
    #   The duration is represented in the ISO 8601 format in whole days
    #   (for example, `P30D` for 30 days or `P60D` for 60 days).
    #
    #   This field applies only when `PriceIncrease` is a `PercentageRange`.
    #   The field is `null` when `PriceIncrease` is a `FixedPercentage`,
    #   because the price increase is already fixed and there is nothing for
    #   the proposer to finalize. If the proposer doesn't finalize a value
    #   by the adjustment deadline, the `DefaultValue` of the range applies.
    #
    #   `AdjustmentDeadline` must be greater than `LockoutPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] price_increase
    #   The price increase that is applied each time the agreement renews.
    #   The field is `null` when the price doesn't change at renewal.
    #   @return [Types::PriceIncrease]
    #
    # @!attribute [rw] term_templates
    #   Defines how specific terms change each time the agreement renews.
    #   The field is `null` when no terms change at renewal.
    #   @return [Array<Types::TermTemplate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RenewalTerm AWS API Documentation
    #
    class RenewalTerm < Struct.new(
      :type,
      :id,
      :configuration,
      :lockout_period,
      :max_renewals,
      :adjustment_deadline,
      :price_increase,
      :term_templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional parameters specified by the acceptor while accepting the
    # term.
    #
    # @!attribute [rw] enable_auto_renew
    #   Defines whether the acceptor has chosen to auto-renew the agreement
    #   when it reaches its end date. Can be set to `True` or `False`. The
    #   acceptor can change this value within the limits set by
    #   `LockoutPeriod` and `MaxRenewals`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RenewalTermConfiguration AWS API Documentation
    #
    class RenewalTermConfiguration < Struct.new(
      :enable_auto_renew)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines what is being accepted as part of the agreement creation or
    # update request, and it includes their configurations.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term in the agreement proposal.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Additional configuration for the requested terms. This configuration
    #   is applicable only to the terms that accept a customer-provided
    #   configuration, such as `ConfigurableUpfrontPricingTerm`.
    #   @return [Types::RequestedTermConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RequestedTerm AWS API Documentation
    #
    class RequestedTerm < Struct.new(
      :id,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tagged union that represents the term configuration provided by the
    # acceptor. Only one configuration is accepted per term.
    #
    # @note RequestedTermConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] configurable_upfront_pricing_term_configuration
    #   Defines a prepaid payment model that allows buyers to configure the
    #   entitlements they want to purchase and the duration.
    #   @return [Types::ConfigurableUpfrontPricingTermConfiguration]
    #
    # @!attribute [rw] renewal_term_configuration
    #   Additional parameters specified by the acceptor while accepting the
    #   term.
    #   @return [Types::RenewalTermConfiguration]
    #
    # @!attribute [rw] variable_payment_term_configuration
    #   Additional parameters specified by the acceptor while accepting the
    #   variable payment term.
    #   @return [Types::VariablePaymentTermConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RequestedTermConfiguration AWS API Documentation
    #
    class RequestedTermConfiguration < Struct.new(
      :configurable_upfront_pricing_term_configuration,
      :renewal_term_configuration,
      :variable_payment_term_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ConfigurableUpfrontPricingTermConfiguration < RequestedTermConfiguration; end
      class RenewalTermConfiguration < RequestedTermConfiguration; end
      class VariablePaymentTermConfiguration < RequestedTermConfiguration; end
      class Unknown < RequestedTermConfiguration; end
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
    #   Type of the resource, which is the product (for example,
    #   `SaaSProduct`, `AmiProduct`, `ContainerProduct`).
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
    #   Description of the error.
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
    #   * `PartyType` – The party type of the caller. Use `Proposer` or
    #     `Acceptor`.
    #
    #   * `AcceptorAccountId` – The AWS account ID of the party accepting
    #     the agreement terms.
    #
    #   * `OfferId` – The unique identifier of the offer in which the terms
    #     are registered in the agreement token.
    #
    #   * `Status` – The current status of the agreement. Values include
    #     `ACTIVE`, `CANCELLED`, `EXPIRED`, `RENEWED`, `REPLACED`, and
    #     `TERMINATED`.
    #
    #   * `BeforeEndTime` – A date used to filter agreements with a date
    #     before the `endTime` of an agreement.
    #
    #   * `AfterEndTime` – A date used to filter agreements with a date
    #     after the `endTime` of an agreement.
    #
    #   * `BeforeStartTime` – A date used to filter agreements with a date
    #     before the `startTime` of an agreement.
    #
    #   * `AfterStartTime` – A date used to filter agreements with a date
    #     after the `startTime` of an agreement.
    #
    #   * `BeforeLastUpdateTime` – A date used to filter agreements with a
    #     date before the `lastUpdateTime` of an agreement.
    #
    #   * `AfterLastUpdateTime` – A date used to filter agreements with a
    #     date after the `lastUpdateTime` of an agreement.
    #
    #   * `AgreementType` – The type of agreement. Supported value includes
    #     `PurchaseAgreement`.
    #
    #   * `OfferSetId` – A unique identifier for the offer set containing
    #     this offer. All agreements created from offers in this set include
    #     this identifier as context.
    #
    #   * `EndTimeBehaviorType` – What happens to the agreement when it
    #     reaches its end date. Values include `RENEW`, `REPLACE`, and
    #     `EXPIRE`.
    #
    #   * `EndTimeBehaviorReasonCode` – The reason why the agreement
    #     doesn't renew at its end date. Values include
    #     `PROPOSER_RENEW_OPTED_OUT`, `ACCEPTOR_RENEW_OPTED_OUT`,
    #     `NO_RENEWAL_TERM`, and `RENEWAL_LIMIT_EXHAUSTED`.
    #
    #   * `InitialAgreementId` – The unique identifier of the very first
    #     agreement in a chain of related agreements. Use this filter to
    #     return every agreement in the same chain.
    #
    #   * `LicenseArn` – The Amazon Resource Name (ARN) of the AWS License
    #     Manager license associated with an entitlement granted by the
    #     agreement.
    #
    #   A proposer can use any combination of the preceding filters along
    #   with `AgreementType`, which is required.
    #
    #   The following filter combinations are supported when the `PartyType`
    #   is `Acceptor`:
    #
    #   * `AgreementType`
    #
    #   * `AgreementType` + `Status`
    #
    #   * `AgreementType` + `EndTime`
    #
    #   * `AgreementType` + `Status` + `EndTime`
    #
    #   * `AgreementType` + `ResourceIdentifier`
    #
    #   * `AgreementType` + `ResourceIdentifier` + `EndTime`
    #
    #   * `AgreementType` + `ResourceIdentifier` + `Status`
    #
    #   * `AgreementType` + `ResourceIdentifier` + `Status` + `EndTime`
    #
    #   * `AgreementType` + `ResourceType`
    #
    #   * `AgreementType` + `ResourceType` + `EndTime`
    #
    #   * `AgreementType` + `OfferId`
    #
    #   * `AgreementType` + `OfferId` + `EndTime`
    #
    #   * `AgreementType` + `OfferId` + `Status`
    #
    #   * `AgreementType` + `OfferId` + `Status` + `EndTime`
    #
    #   * `AgreementType` + `OfferSetId`
    #
    #   * `AgreementType` + `OfferSetId` + `EndTime`
    #
    #   * `AgreementType` + `OfferSetId` + `Status`
    #
    #   * `AgreementType` + `OfferSetId` + `Status` + `EndTime`
    #
    #   <note markdown="1"> To filter by `EndTime`, you can use `BeforeEndTime`, `AfterEndTime`,
    #   or both.
    #
    #    </note>
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort
    #   An object that contains the `SortBy` and `SortOrder` attributes. For
    #   `SearchAgreements`, `SortBy` supports `EndTime` for both party
    #   types, and `StartTime` and `LastUpdateTime` only when `PartyType` is
    #   `Proposer`. The default `SortBy` value is `EndTime`.
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

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement for which the cancellation
    #   request is being submitted.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   The reason code for the cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional detailed description of the cancellation reason (1-2000
    #   characters).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/SendAgreementCancellationRequestInput AWS API Documentation
    #
    class SendAgreementCancellationRequestInput < Struct.new(
      :agreement_id,
      :reason_code,
      :client_token,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] agreement_cancellation_request_id
    #   The unique identifier for the created cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the cancellation request. The initial status
    #   is `PENDING_APPROVAL`.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   The reason code provided for the cancellation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the cancellation reason, if provided.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the cancellation request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the cancellation request was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/SendAgreementCancellationRequestOutput AWS API Documentation
    #
    class SendAgreementCancellationRequestOutput < Struct.new(
      :agreement_id,
      :agreement_cancellation_request_id,
      :status,
      :reason_code,
      :description,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement for which the payment request
    #   is being submitted. Use `GetAgreementTerms` to retrieve agreement
    #   term details.
    #   @return [String]
    #
    # @!attribute [rw] term_id
    #   The unique identifier of the `VariablePaymentTerm` for the agreement
    #   that the payment request is being sent for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the payment request (5-64 characters).
    #   @return [String]
    #
    # @!attribute [rw] charge_amount
    #   The amount requested to be charged to the buyer, positive decimal
    #   value in the currency of the accepted term.
    #
    #   <note markdown="1"> A `ValidationException` is returned if the `chargeAmount` exceeds
    #   the available balance, if the agreement doesn't have an active
    #   `VariablePaymentTerm`, or if the `termId` is invalid.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional detailed description of the payment request (1-2000
    #   characters).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/SendAgreementPaymentRequestInput AWS API Documentation
    #
    class SendAgreementPaymentRequestInput < Struct.new(
      :client_token,
      :agreement_id,
      :term_id,
      :name,
      :charge_amount,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] payment_request_id
    #   The unique identifier for the sent payment request.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The agreement identifier for this payment request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the payment request. The initial status is
    #   `PENDING_APPROVAL`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the payment request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the payment request, if provided.
    #   @return [String]
    #
    # @!attribute [rw] charge_amount
    #   The amount being charged to the buyer.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the charge amount (e.g., `USD`).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the payment request was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/SendAgreementPaymentRequestOutput AWS API Documentation
    #
    class SendAgreementPaymentRequestOutput < Struct.new(
      :payment_request_id,
      :agreement_id,
      :status,
      :name,
      :description,
      :charge_amount,
      :currency_code,
      :created_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Request exceeded the maximum allowed limit (quota) for a specific
    # resource or API operation.
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code of the quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code of the service whose quota was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that exceeded the quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource that exceeded the quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :request_id,
      :message,
      :quota_code,
      :service_code,
      :resource_type,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the `SortBy` and `SortOrder` attributes.
    #
    # @!attribute [rw] sort_by
    #   The attribute on which the data is grouped, which can be `EndTime`,
    #   `StartTime`, or `LastUpdateTime`. `StartTime` and `LastUpdateTime`
    #   are supported only when `PartyType` is `Proposer`. The default value
    #   is `EndTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sorting order, which can be `ASCENDING` or `DESCENDING`. The
    #   default value is `ASCENDING`.
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
    # @!attribute [rw] id
    #   The unique identifier for the term.
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
      :id,
      :refund_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single tax breakdown entry with amount, rate, and type.
    #
    # @!attribute [rw] amount
    #   The estimated tax amount.
    #   @return [String]
    #
    # @!attribute [rw] rate
    #   The tax rate, in decimals.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of tax (for example, VAT, ST, or GST).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/TaxBreakdownItem AWS API Documentation
    #
    class TaxBreakdownItem < Struct.new(
      :amount,
      :rate,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration controls for tax estimation in the agreement request.
    #
    # @!attribute [rw] tax_estimation
    #   Toggle to estimate tax as part of the response. Values include
    #   `ENABLED` and `DISABLED`. Default is `DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/TaxConfiguration AWS API Documentation
    #
    class TaxConfiguration < Struct.new(
      :tax_estimation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how a specific type of term changes each time the agreement
    # renews. Exactly one of the following fields is set.
    #
    # @note TermTemplate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TermTemplate corresponding to the set member.
    #
    # @!attribute [rw] payment_schedule_term_template
    #   Defines the payment schedule that is applied to the renewed
    #   agreement.
    #   @return [Types::PaymentScheduleTermTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/TermTemplate AWS API Documentation
    #
    class TermTemplate < Struct.new(
      :payment_schedule_term_template,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PaymentScheduleTermTemplate < TermTemplate; end
      class Unknown < TermTemplate; end
    end

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error.
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

    # @!attribute [rw] purchase_orders
    #   Contains information about purchase order associations.
    #   @return [Array<Types::PurchaseOrder>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/UpdatePurchaseOrdersInput AWS API Documentation
    #
    class UpdatePurchaseOrdersInput < Struct.new(
      :purchase_orders)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/UpdatePurchaseOrdersOutput AWS API Documentation
    #
    class UpdatePurchaseOrdersOutput < Aws::EmptyStructure; end

    # Defines a usage-based pricing model (typically, pay-as-you-go
    # pricing), where the customers are charged based on product usage.
    #
    # @!attribute [rw] type
    #   Category of the term.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the term.
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
      :id,
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
    #   Description of the error.
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
    # @!attribute [rw] id
    #   The unique identifier for the term.
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
      :id,
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
    # @!attribute [rw] id
    #   The unique identifier for the term.
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
      :id,
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

