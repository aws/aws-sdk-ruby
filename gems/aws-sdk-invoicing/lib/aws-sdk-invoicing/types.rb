# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Invoicing
  module Types

    # You don't have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   You don't have sufficient access to perform this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about how the total amount was calculated and categorized.
    #
    # @!attribute [rw] sub_total_amount
    #   The total of a set of the breakdown.
    #   @return [String]
    #
    # @!attribute [rw] discounts
    #   The discounted amount.
    #   @return [Types::DiscountsBreakdown]
    #
    # @!attribute [rw] taxes
    #   The tax amount.
    #   @return [Types::TaxesBreakdown]
    #
    # @!attribute [rw] fees
    #   The fee amount.
    #   @return [Types::FeesBreakdown]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/AmountBreakdown AWS API Documentation
    #
    class AmountBreakdown < Struct.new(
      :sub_total_amount,
      :discounts,
      :taxes,
      :fees)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   Retrieves the corresponding invoice profile data for these account
    #   IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/BatchGetInvoiceProfileRequest AWS API Documentation
    #
    class BatchGetInvoiceProfileRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profiles
    #   A list of invoice profiles corresponding to the requested accounts.
    #   @return [Array<Types::InvoiceProfile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/BatchGetInvoiceProfileResponse AWS API Documentation
    #
    class BatchGetInvoiceProfileResponse < Struct.new(
      :profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # The billing period for which you want to retrieve invoice-related
    # documents.
    #
    # @!attribute [rw] month
    #   The billing period month.
    #   @return [Integer]
    #
    # @!attribute [rw] year
    #   The billing period year.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/BillingPeriod AWS API Documentation
    #
    class BillingPeriod < Struct.new(
      :month,
      :year)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict with the current
    # state of the resource. This exception occurs when a concurrent
    # modification is detected during an update operation, or when
    # attempting to create a resource that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that caused the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that caused the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents contact information for a person or role associated with
    # the procurement portal preference.
    #
    # @!attribute [rw] name
    #   The name of the contact person or role.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the contact person or role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/Contact AWS API Documentation
    #
    class Contact < Struct.new(
      :name,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique name of the invoice unit that is shown on the generated
    #   invoice. This can't be changed once it is set. To change this name,
    #   you must delete the invoice unit recreate.
    #   @return [String]
    #
    # @!attribute [rw] invoice_receiver
    #   The Amazon Web Services account ID chosen to be the receiver of an
    #   invoice unit. All invoices generated for that invoice unit will be
    #   sent to this account ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The invoice unit's description. This can be changed at a later
    #   time.
    #   @return [String]
    #
    # @!attribute [rw] tax_inheritance_disabled
    #   Whether the invoice unit based tax inheritance is/ should be enabled
    #   or disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule
    #   The `InvoiceUnitRule` object used to create invoice units.
    #   @return [Types::InvoiceUnitRule]
    #
    # @!attribute [rw] resource_tags
    #   The tag structure that contains a tag key and value.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/CreateInvoiceUnitRequest AWS API Documentation
    #
    class CreateInvoiceUnitRequest < Struct.new(
      :name,
      :invoice_receiver,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/CreateInvoiceUnitResponse AWS API Documentation
    #
    class CreateInvoiceUnitResponse < Struct.new(
      :invoice_unit_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] procurement_portal_name
    #   The name of the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] buyer_domain
    #   The domain identifier for the buyer in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] buyer_identifier
    #   The unique identifier for the buyer in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] supplier_domain
    #   The domain identifier for the supplier in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] supplier_identifier
    #   The unique identifier for the supplier in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] selector
    #   Specifies criteria for selecting which invoices should be processed
    #   using a particular procurement portal preference.
    #   @return [Types::ProcurementPortalPreferenceSelector]
    #
    # @!attribute [rw] procurement_portal_shared_secret
    #   The shared secret or authentication credential used to establish
    #   secure communication with the procurement portal. This value must be
    #   encrypted at rest.
    #   @return [String]
    #
    # @!attribute [rw] procurement_portal_instance_endpoint
    #   The endpoint URL where e-invoices will be delivered to the
    #   procurement portal. Must be a valid HTTPS URL.
    #   @return [String]
    #
    # @!attribute [rw] test_env_preference
    #   Configuration settings for the test environment of the procurement
    #   portal. Includes test credentials and endpoints that are used for
    #   validation before production deployment.
    #   @return [Types::TestEnvPreferenceInput]
    #
    # @!attribute [rw] einvoice_delivery_enabled
    #   Indicates whether e-invoice delivery is enabled for this procurement
    #   portal preference. Set to true to enable e-invoice delivery, false
    #   to disable.
    #   @return [Boolean]
    #
    # @!attribute [rw] einvoice_delivery_preference
    #   Specifies the e-invoice delivery configuration including document
    #   types, attachment types, and customization settings for the portal.
    #   @return [Types::EinvoiceDeliveryPreference]
    #
    # @!attribute [rw] purchase_order_retrieval_enabled
    #   Indicates whether purchase order retrieval is enabled for this
    #   procurement portal preference. Set to true to enable PO retrieval,
    #   false to disable.
    #   @return [Boolean]
    #
    # @!attribute [rw] contacts
    #   List of contact information for portal administrators and technical
    #   contacts responsible for the e-invoice integration.
    #   @return [Array<Types::Contact>]
    #
    # @!attribute [rw] resource_tags
    #   The tags to apply to this procurement portal preference resource.
    #   Each tag consists of a key and an optional value.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/CreateProcurementPortalPreferenceRequest AWS API Documentation
    #
    class CreateProcurementPortalPreferenceRequest < Struct.new(
      :procurement_portal_name,
      :buyer_domain,
      :buyer_identifier,
      :supplier_domain,
      :supplier_identifier,
      :selector,
      :procurement_portal_shared_secret,
      :procurement_portal_instance_endpoint,
      :test_env_preference,
      :einvoice_delivery_enabled,
      :einvoice_delivery_preference,
      :purchase_order_retrieval_enabled,
      :contacts,
      :resource_tags,
      :client_token)
      SENSITIVE = [:procurement_portal_shared_secret, :contacts]
      include Aws::Structure
    end

    # @!attribute [rw] procurement_portal_preference_arn
    #   The Amazon Resource Name (ARN) of the created procurement portal
    #   preference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/CreateProcurementPortalPreferenceResponse AWS API Documentation
    #
    class CreateProcurementPortalPreferenceResponse < Struct.new(
      :procurement_portal_preference_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of currency exchange.
    #
    # @!attribute [rw] source_currency_code
    #   The exchange source currency.
    #   @return [String]
    #
    # @!attribute [rw] target_currency_code
    #   The exchange target currency.
    #   @return [String]
    #
    # @!attribute [rw] rate
    #   The currency exchange rate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/CurrencyExchangeDetails AWS API Documentation
    #
    class CurrencyExchangeDetails < Struct.new(
      :source_currency_code,
      :target_currency_code,
      :rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time period that you want invoice-related documents for.
    #
    # @!attribute [rw] start_date
    #   The beginning of the time period that you want invoice-related
    #   documents for. The start date is inclusive. For example, if `start`
    #   is `2019-01-01`, AWS retrieves invoices starting at `2019-01-01` up
    #   to the end date.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The end of the time period that you want invoice-related documents
    #   for. The end date is exclusive. For example, if `end` is
    #   `2019-01-10`, Amazon Web Services retrieves invoice-related
    #   documents from the start date up to, but not including,
    #   `2018-01-10`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/DateInterval AWS API Documentation
    #
    class DateInterval < Struct.new(
      :start_date,
      :end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/DeleteInvoiceUnitRequest AWS API Documentation
    #
    class DeleteInvoiceUnitRequest < Struct.new(
      :invoice_unit_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/DeleteInvoiceUnitResponse AWS API Documentation
    #
    class DeleteInvoiceUnitResponse < Struct.new(
      :invoice_unit_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] procurement_portal_preference_arn
    #   The Amazon Resource Name (ARN) of the procurement portal preference
    #   to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/DeleteProcurementPortalPreferenceRequest AWS API Documentation
    #
    class DeleteProcurementPortalPreferenceRequest < Struct.new(
      :procurement_portal_preference_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] procurement_portal_preference_arn
    #   The Amazon Resource Name (ARN) of the deleted procurement portal
    #   preference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/DeleteProcurementPortalPreferenceResponse AWS API Documentation
    #
    class DeleteProcurementPortalPreferenceResponse < Struct.new(
      :procurement_portal_preference_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The discounts details.
    #
    # @!attribute [rw] breakdown
    #   The list of discounts information.
    #   @return [Array<Types::DiscountsBreakdownAmount>]
    #
    # @!attribute [rw] total_amount
    #   The discount's total amount.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/DiscountsBreakdown AWS API Documentation
    #
    class DiscountsBreakdown < Struct.new(
      :breakdown,
      :total_amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # The discounted amount.
    #
    # @!attribute [rw] description
    #   The list of discounts information.
    #   @return [String]
    #
    # @!attribute [rw] amount
    #   The discounted amount.
    #   @return [String]
    #
    # @!attribute [rw] rate
    #   The details for the discount rate..
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/DiscountsBreakdownAmount AWS API Documentation
    #
    class DiscountsBreakdownAmount < Struct.new(
      :description,
      :amount,
      :rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the preferences for e-invoice delivery, including document
    # types, attachment types, and customization settings.
    #
    # @!attribute [rw] einvoice_delivery_document_types
    #   The types of e-invoice documents to be delivered.
    #   @return [Array<String>]
    #
    # @!attribute [rw] einvoice_delivery_attachment_types
    #   The types of attachments to include with the e-invoice delivery.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protocol
    #   The communication protocol to use for e-invoice delivery.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_data_sources
    #   The sources of purchase order data to use for e-invoice generation
    #   and delivery.
    #   @return [Array<Types::PurchaseOrderDataSource>]
    #
    # @!attribute [rw] connection_testing_method
    #   The method to use for testing the connection to the procurement
    #   portal.
    #   @return [String]
    #
    # @!attribute [rw] einvoice_delivery_activation_date
    #   The date when e-invoice delivery should be activated for this
    #   preference.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/EinvoiceDeliveryPreference AWS API Documentation
    #
    class EinvoiceDeliveryPreference < Struct.new(
      :einvoice_delivery_document_types,
      :einvoice_delivery_attachment_types,
      :protocol,
      :purchase_order_data_sources,
      :connection_testing_method,
      :einvoice_delivery_activation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The organization name providing Amazon Web Services services.
    #
    # @!attribute [rw] invoicing_entity
    #   The name of the entity that issues the Amazon Web Services invoice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :invoicing_entity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of fees.
    #
    # @!attribute [rw] breakdown
    #   The list of fees information.
    #   @return [Array<Types::FeesBreakdownAmount>]
    #
    # @!attribute [rw] total_amount
    #   The total amount of fees.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/FeesBreakdown AWS API Documentation
    #
    class FeesBreakdown < Struct.new(
      :breakdown,
      :total_amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # The fee amount.
    #
    # @!attribute [rw] description
    #   The list of fees information.
    #   @return [String]
    #
    # @!attribute [rw] amount
    #   The fee amount.
    #   @return [String]
    #
    # @!attribute [rw] rate
    #   Details about the rate amount.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/FeesBreakdownAmount AWS API Documentation
    #
    class FeesBreakdownAmount < Struct.new(
      :description,
      :amount,
      :rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # An optional input to the list API. If multiple filters are specified,
    # the returned list will be a configuration that match all of the
    # provided filters. Supported filter types are `InvoiceReceivers`,
    # `Names`, and `Accounts`.
    #
    # @!attribute [rw] names
    #   An optional input to the list API. You can specify a list of invoice
    #   unit names inside filters to return invoice units that match only
    #   the specified invoice unit names. If multiple names are provided,
    #   the result is an `OR` condition (match any) of the specified invoice
    #   unit names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] invoice_receivers
    #   You can specify a list of Amazon Web Services account IDs inside
    #   filters to return invoice units that match only the specified
    #   accounts. If multiple accounts are provided, the result is an `OR`
    #   condition (match any) of the specified accounts. This filter only
    #   matches the specified accounts on the invoice receivers of the
    #   invoice units.
    #   @return [Array<String>]
    #
    # @!attribute [rw] accounts
    #   You can specify a list of Amazon Web Services account IDs inside
    #   filters to return invoice units that match only the specified
    #   accounts. If multiple accounts are provided, the result is an `OR`
    #   condition (match any) of the specified accounts. The specified
    #   account IDs are matched with either the receiver or the linked
    #   accounts in the rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] bill_source_accounts
    #   A list of Amazon Web Services account account IDs used to filter
    #   invoice units. These are payer accounts from other Organizations
    #   that have delegated their billing responsibility to the receiver
    #   account through the billing transfer feature.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/Filters AWS API Documentation
    #
    class Filters < Struct.new(
      :names,
      :invoice_receivers,
      :accounts,
      :bill_source_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_id
    #   Your unique invoice ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/GetInvoicePDFRequest AWS API Documentation
    #
    class GetInvoicePDFRequest < Struct.new(
      :invoice_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_pdf
    #   The invoice document and supplemental documents associated with the
    #   invoice.
    #   @return [Types::InvoicePDF]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/GetInvoicePDFResponse AWS API Documentation
    #
    class GetInvoicePDFResponse < Struct.new(
      :invoice_pdf)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @!attribute [rw] as_of
    #   The state of an invoice unit at a specified time. You can see legacy
    #   invoice units that are currently deleted if the `AsOf` time is set
    #   to before it was deleted. If an `AsOf` is not provided, the default
    #   value is the current time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/GetInvoiceUnitRequest AWS API Documentation
    #
    class GetInvoiceUnitRequest < Struct.new(
      :invoice_unit_arn,
      :as_of)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @!attribute [rw] invoice_receiver
    #   The Amazon Web Services account ID chosen to be the receiver of an
    #   invoice unit. All invoices generated for that invoice unit will be
    #   sent to this account ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name of the invoice unit that is shown on the generated
    #   invoice.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The assigned description for an invoice unit.
    #   @return [String]
    #
    # @!attribute [rw] tax_inheritance_disabled
    #   Whether the invoice unit based tax inheritance is/ should be enabled
    #   or disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule
    #   This is used to categorize the invoice unit. Values are Amazon Web
    #   Services account IDs. Currently, the only supported rule is
    #   `LINKED_ACCOUNT`.
    #   @return [Types::InvoiceUnitRule]
    #
    # @!attribute [rw] last_modified
    #   The most recent date the invoice unit response was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/GetInvoiceUnitResponse AWS API Documentation
    #
    class GetInvoiceUnitResponse < Struct.new(
      :invoice_unit_arn,
      :invoice_receiver,
      :name,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] procurement_portal_preference_arn
    #   The Amazon Resource Name (ARN) of the procurement portal preference
    #   to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/GetProcurementPortalPreferenceRequest AWS API Documentation
    #
    class GetProcurementPortalPreferenceRequest < Struct.new(
      :procurement_portal_preference_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] procurement_portal_preference
    #   The detailed configuration of the requested procurement portal
    #   preference.
    #   @return [Types::ProcurementPortalPreference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/GetProcurementPortalPreferenceResponse AWS API Documentation
    #
    class GetProcurementPortalPreferenceResponse < Struct.new(
      :procurement_portal_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # The processing request failed because of an unknown error, exception,
    # or failure.
    #
    # @!attribute [rw] retry_after_seconds
    #   The processing request failed because of an unknown error,
    #   exception, or failure.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :retry_after_seconds,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The amount charged after taxes, in the preferred currency.
    #
    # @!attribute [rw] total_amount
    #   The invoice currency amount.
    #   @return [String]
    #
    # @!attribute [rw] total_amount_before_tax
    #   Details about the invoice total amount before tax.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency dominion of the invoice document.
    #   @return [String]
    #
    # @!attribute [rw] amount_breakdown
    #   Details about the invoice currency amount.
    #   @return [Types::AmountBreakdown]
    #
    # @!attribute [rw] currency_exchange_details
    #   The details of currency exchange.
    #   @return [Types::CurrencyExchangeDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InvoiceCurrencyAmount AWS API Documentation
    #
    class InvoiceCurrencyAmount < Struct.new(
      :total_amount,
      :total_amount_before_tax,
      :currency_code,
      :amount_breakdown,
      :currency_exchange_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Invoice document data.
    #
    # @!attribute [rw] invoice_id
    #   Your unique invoice ID.
    #   @return [String]
    #
    # @!attribute [rw] document_url
    #   The pre-signed URL to download the invoice document.
    #   @return [String]
    #
    # @!attribute [rw] document_url_expiration_date
    #   The pre-signed URL expiration date of the invoice document.
    #   @return [Time]
    #
    # @!attribute [rw] supplemental_documents
    #   List of supplemental documents associated with the invoice.
    #   @return [Array<Types::SupplementalDocument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InvoicePDF AWS API Documentation
    #
    class InvoicePDF < Struct.new(
      :invoice_id,
      :document_url,
      :document_url_expiration_date,
      :supplemental_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains high-level information about the invoice receiver.
    #
    # @!attribute [rw] account_id
    #   The account ID the invoice profile is generated for.
    #   @return [String]
    #
    # @!attribute [rw] receiver_name
    #   The name of the person receiving the invoice profile.
    #   @return [String]
    #
    # @!attribute [rw] receiver_address
    #   The address of the receiver that will be printed on the invoice.
    #   @return [Types::ReceiverAddress]
    #
    # @!attribute [rw] receiver_email
    #   The email address for the invoice profile receiver.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   This specifies the issuing entity of the invoice.
    #   @return [String]
    #
    # @!attribute [rw] tax_registration_number
    #   Your Tax Registration Number (TRN) information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InvoiceProfile AWS API Documentation
    #
    class InvoiceProfile < Struct.new(
      :account_id,
      :receiver_name,
      :receiver_address,
      :receiver_email,
      :issuer,
      :tax_registration_number)
      SENSITIVE = [:receiver_address, :receiver_email, :tax_registration_number]
      include Aws::Structure
    end

    # Filters for your invoice summaries.
    #
    # @!attribute [rw] time_interval
    #   The date range for invoice summary retrieval.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] billing_period
    #   The billing period associated with the invoice documents.
    #   @return [Types::BillingPeriod]
    #
    # @!attribute [rw] invoicing_entity
    #   The name of the entity that issues the Amazon Web Services invoice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InvoiceSummariesFilter AWS API Documentation
    #
    class InvoiceSummariesFilter < Struct.new(
      :time_interval,
      :billing_period,
      :invoicing_entity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the invoice summary.
    #
    # @!attribute [rw] resource_type
    #   The query identifier type (`INVOICE_ID` or `ACCOUNT_ID`).
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the query identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InvoiceSummariesSelector AWS API Documentation
    #
    class InvoiceSummariesSelector < Struct.new(
      :resource_type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The invoice that the API retrieved.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] invoice_id
    #   The invoice ID.
    #   @return [String]
    #
    # @!attribute [rw] issued_date
    #   The issued date of the invoice.
    #   @return [Time]
    #
    # @!attribute [rw] due_date
    #   The invoice due date.
    #   @return [Time]
    #
    # @!attribute [rw] entity
    #   The organization name providing Amazon Web Services services.
    #   @return [Types::Entity]
    #
    # @!attribute [rw] billing_period
    #   The billing period of the invoice-related document.
    #   @return [Types::BillingPeriod]
    #
    # @!attribute [rw] invoice_type
    #   The type of invoice.
    #   @return [String]
    #
    # @!attribute [rw] original_invoice_id
    #   The initial or original invoice ID.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_number
    #   The purchase order number associated to the invoice.
    #   @return [String]
    #
    # @!attribute [rw] base_currency_amount
    #   The summary with the product and service currency.
    #   @return [Types::InvoiceCurrencyAmount]
    #
    # @!attribute [rw] tax_currency_amount
    #   The summary with the tax currency.
    #   @return [Types::InvoiceCurrencyAmount]
    #
    # @!attribute [rw] payment_currency_amount
    #   The summary with the customer configured currency.
    #   @return [Types::InvoiceCurrencyAmount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InvoiceSummary AWS API Documentation
    #
    class InvoiceSummary < Struct.new(
      :account_id,
      :invoice_id,
      :issued_date,
      :due_date,
      :entity,
      :billing_period,
      :invoice_type,
      :original_invoice_id,
      :purchase_order_number,
      :base_currency_amount,
      :tax_currency_amount,
      :payment_currency_amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # An invoice unit is a set of mutually exclusive accounts that
    # correspond to your business entity. Invoice units allow you separate
    # Amazon Web Services account costs and configures your invoice for each
    # business entity going forward.
    #
    # @!attribute [rw] invoice_unit_arn
    #   ARN to identify an invoice unit. This information can't be modified
    #   or deleted.
    #   @return [String]
    #
    # @!attribute [rw] invoice_receiver
    #   The account that receives invoices related to the invoice unit.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A unique name that is distinctive within your Amazon Web Services.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The assigned description for an invoice unit. This information
    #   can't be modified or deleted.
    #   @return [String]
    #
    # @!attribute [rw] tax_inheritance_disabled
    #   Whether the invoice unit based tax inheritance is/ should be enabled
    #   or disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule
    #   An `InvoiceUnitRule` object used the categorize invoice units.
    #   @return [Types::InvoiceUnitRule]
    #
    # @!attribute [rw] last_modified
    #   The last time the invoice unit was updated. This is important to
    #   determine the version of invoice unit configuration used to create
    #   the invoices. Any invoice created after this modified time will use
    #   this invoice unit configuration.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InvoiceUnit AWS API Documentation
    #
    class InvoiceUnit < Struct.new(
      :invoice_unit_arn,
      :invoice_receiver,
      :name,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is used to categorize the invoice unit. Values are Amazon Web
    # Services account IDs. Currently, the only supported rule is
    # `LINKED_ACCOUNT`.
    #
    # @!attribute [rw] linked_accounts
    #   The list of `LINKED_ACCOUNT` IDs where charges are included within
    #   the invoice unit.
    #   @return [Array<String>]
    #
    # @!attribute [rw] bill_source_accounts
    #   A list of Amazon Web Services account account IDs that have
    #   delegated their billing responsibility to the receiver account
    #   through transfer billing. Unlike linked accounts, these bill source
    #   accounts can be payer accounts from other organizations that have
    #   authorized billing transfer to this account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InvoiceUnitRule AWS API Documentation
    #
    class InvoiceUnitRule < Struct.new(
      :linked_accounts,
      :bill_source_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] selector
    #   The option to retrieve details for a specific invoice by providing
    #   its unique ID. Alternatively, access information for all invoices
    #   linked to the account by providing an account ID.
    #   @return [Types::InvoiceSummariesSelector]
    #
    # @!attribute [rw] filter
    #   Filters you can use to customize your invoice summary.
    #   @return [Types::InvoiceSummariesFilter]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of invoice summaries a paginated response can
    #   contain.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListInvoiceSummariesRequest AWS API Documentation
    #
    class ListInvoiceSummariesRequest < Struct.new(
      :selector,
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_summaries
    #   List of key (summary level) invoice details without line item
    #   details.
    #   @return [Array<Types::InvoiceSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListInvoiceSummariesResponse AWS API Documentation
    #
    class ListInvoiceSummariesResponse < Struct.new(
      :invoice_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   An optional input to the list API. If multiple filters are
    #   specified, the returned list will be a configuration that match all
    #   of the provided filters. Supported filter types are
    #   `InvoiceReceivers`, `Names`, and `Accounts`.
    #   @return [Types::Filters]
    #
    # @!attribute [rw] next_token
    #   The next token used to indicate where the returned list should start
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of invoice units that can be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] as_of
    #   The state of an invoice unit at a specified time. You can see legacy
    #   invoice units that are currently deleted if the `AsOf` time is set
    #   to before it was deleted. If an `AsOf` is not provided, the default
    #   value is the current time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListInvoiceUnitsRequest AWS API Documentation
    #
    class ListInvoiceUnitsRequest < Struct.new(
      :filters,
      :next_token,
      :max_results,
      :as_of)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_units
    #   An invoice unit is a set of mutually exclusive accounts that
    #   correspond to your business entity.
    #   @return [Array<Types::InvoiceUnit>]
    #
    # @!attribute [rw] next_token
    #   The next token used to indicate where the returned list should start
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListInvoiceUnitsResponse AWS API Documentation
    #
    class ListInvoiceUnitsResponse < Struct.new(
      :invoice_units,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. (You received this token from
    #   a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   NextToken value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListProcurementPortalPreferencesRequest AWS API Documentation
    #
    class ListProcurementPortalPreferencesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] procurement_portal_preferences
    #   The list of procurement portal preferences associated with the
    #   Amazon Web Services account.
    #   @return [Array<Types::ProcurementPortalPreferenceSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListProcurementPortalPreferencesResponse AWS API Documentation
    #
    class ListProcurementPortalPreferencesResponse < Struct.new(
      :procurement_portal_preferences,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of tags to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_tags
    #   Adds a tag to a resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the full configuration of a procurement portal preference,
    # including settings for e-invoice delivery and purchase order
    # retrieval.
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID associated with this procurement
    #   portal preference.
    #   @return [String]
    #
    # @!attribute [rw] procurement_portal_preference_arn
    #   The Amazon Resource Name (ARN) of the procurement portal preference.
    #   @return [String]
    #
    # @!attribute [rw] procurement_portal_name
    #   The name of the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] buyer_domain
    #   The domain identifier for the buyer in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] buyer_identifier
    #   The unique identifier for the buyer in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] supplier_domain
    #   The domain identifier for the supplier in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] supplier_identifier
    #   The unique identifier for the supplier in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] selector
    #   Specifies criteria for selecting which invoices should be processed
    #   using a particular procurement portal preference.
    #   @return [Types::ProcurementPortalPreferenceSelector]
    #
    # @!attribute [rw] procurement_portal_shared_secret
    #   The shared secret or authentication credential used for secure
    #   communication with the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] procurement_portal_instance_endpoint
    #   The endpoint URL where e-invoices are delivered to the procurement
    #   portal.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_retrieval_endpoint
    #   The endpoint URL used for retrieving purchase orders from the
    #   procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] test_env_preference
    #   Configuration on settings for the test environment of the
    #   procurement portal.
    #   @return [Types::TestEnvPreference]
    #
    # @!attribute [rw] einvoice_delivery_enabled
    #   Indicates whether e-invoice delivery is enabled for this procurement
    #   portal preference.
    #   @return [Boolean]
    #
    # @!attribute [rw] einvoice_delivery_preference
    #   The configuration settings that specify how e-invoices are delivered
    #   to the procurement portal.
    #   @return [Types::EinvoiceDeliveryPreference]
    #
    # @!attribute [rw] purchase_order_retrieval_enabled
    #   Indicates whether purchase order retrieval is enabled for this
    #   procurement portal preference.
    #   @return [Boolean]
    #
    # @!attribute [rw] contacts
    #   List of contact information for portal administrators and technical
    #   contacts.
    #   @return [Array<Types::Contact>]
    #
    # @!attribute [rw] einvoice_delivery_preference_status
    #   The current status of the e-invoice delivery preference.
    #   @return [String]
    #
    # @!attribute [rw] einvoice_delivery_preference_status_reason
    #   The reason for the current e-invoice delivery preference status.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_retrieval_preference_status
    #   The current status of the purchase order retrieval preference.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_retrieval_preference_status_reason
    #   The reason for the current purchase order retrieval preference
    #   status.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the procurement portal preference
    #   configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] create_date
    #   The date and time when the procurement portal preference was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date and time when the procurement portal preference was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ProcurementPortalPreference AWS API Documentation
    #
    class ProcurementPortalPreference < Struct.new(
      :aws_account_id,
      :procurement_portal_preference_arn,
      :procurement_portal_name,
      :buyer_domain,
      :buyer_identifier,
      :supplier_domain,
      :supplier_identifier,
      :selector,
      :procurement_portal_shared_secret,
      :procurement_portal_instance_endpoint,
      :purchase_order_retrieval_endpoint,
      :test_env_preference,
      :einvoice_delivery_enabled,
      :einvoice_delivery_preference,
      :purchase_order_retrieval_enabled,
      :contacts,
      :einvoice_delivery_preference_status,
      :einvoice_delivery_preference_status_reason,
      :purchase_order_retrieval_preference_status,
      :purchase_order_retrieval_preference_status_reason,
      :version,
      :create_date,
      :last_update_date)
      SENSITIVE = [:contacts]
      include Aws::Structure
    end

    # Specifies criteria for selecting which invoices should be processed
    # using a particular procurement portal preference.
    #
    # @!attribute [rw] invoice_unit_arns
    #   The Amazon Resource Name (ARN) of invoice unit identifiers to which
    #   this preference applies.
    #   @return [Array<String>]
    #
    # @!attribute [rw] seller_of_records
    #   The list of seller of record IDs to which this preference applies.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ProcurementPortalPreferenceSelector AWS API Documentation
    #
    class ProcurementPortalPreferenceSelector < Struct.new(
      :invoice_unit_arns,
      :seller_of_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a procurement portal preference, including key
    # identifiers and status information.
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID associated with this procurement
    #   portal preference summary.
    #   @return [String]
    #
    # @!attribute [rw] procurement_portal_preference_arn
    #   The Amazon Resource Name (ARN) of the procurement portal preference.
    #   @return [String]
    #
    # @!attribute [rw] procurement_portal_name
    #   The name of the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] buyer_domain
    #   The domain identifier for the buyer in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] buyer_identifier
    #   The unique identifier for the buyer in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] supplier_domain
    #   The domain identifier for the supplier in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] supplier_identifier
    #   The unique identifier for the supplier in the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] selector
    #   Specifies criteria for selecting which invoices should be processed
    #   using a particular procurement portal preference.
    #   @return [Types::ProcurementPortalPreferenceSelector]
    #
    # @!attribute [rw] einvoice_delivery_enabled
    #   Indicates whether e-invoice delivery is enabled for this procurement
    #   portal preference.
    #   @return [Boolean]
    #
    # @!attribute [rw] purchase_order_retrieval_enabled
    #   Indicates whether purchase order retrieval is enabled for this
    #   procurement portal preference.
    #   @return [Boolean]
    #
    # @!attribute [rw] einvoice_delivery_preference_status
    #   The current status of the e-invoice delivery preference in this
    #   summary.
    #   @return [String]
    #
    # @!attribute [rw] einvoice_delivery_preference_status_reason
    #   The reason for the current e-invoice delivery preference status in
    #   this summary.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_retrieval_preference_status
    #   The current status of the purchase order retrieval preference in
    #   this summary.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_retrieval_preference_status_reason
    #   The reason for the current purchase order retrieval preference
    #   status in this summary.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the procurement portal preference
    #   configuration in this summary.
    #   @return [Integer]
    #
    # @!attribute [rw] create_date
    #   The date and time when the procurement portal preference was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_date
    #   The date and time when the procurement portal preference was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ProcurementPortalPreferenceSummary AWS API Documentation
    #
    class ProcurementPortalPreferenceSummary < Struct.new(
      :aws_account_id,
      :procurement_portal_preference_arn,
      :procurement_portal_name,
      :buyer_domain,
      :buyer_identifier,
      :supplier_domain,
      :supplier_identifier,
      :selector,
      :einvoice_delivery_enabled,
      :purchase_order_retrieval_enabled,
      :einvoice_delivery_preference_status,
      :einvoice_delivery_preference_status_reason,
      :purchase_order_retrieval_preference_status,
      :purchase_order_retrieval_preference_status_reason,
      :version,
      :create_date,
      :last_update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the source configuration for retrieving purchase order data.
    #
    # @!attribute [rw] einvoice_delivery_document_type
    #   The type of e-invoice document that requires purchase order data.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_data_source_type
    #   The type of source for purchase order data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/PurchaseOrderDataSource AWS API Documentation
    #
    class PurchaseOrderDataSource < Struct.new(
      :einvoice_delivery_document_type,
      :purchase_order_data_source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] procurement_portal_preference_arn
    #   The Amazon Resource Name (ARN) of the procurement portal preference
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] selector
    #   Specifies criteria for selecting which invoices should be processed
    #   using a particular procurement portal preference.
    #   @return [Types::ProcurementPortalPreferenceSelector]
    #
    # @!attribute [rw] procurement_portal_shared_secret
    #   The updated shared secret or authentication credential for the
    #   procurement portal. This value must be encrypted at rest.
    #   @return [String]
    #
    # @!attribute [rw] procurement_portal_instance_endpoint
    #   The updated endpoint URL where e-invoices will be delivered to the
    #   procurement portal. Must be a valid HTTPS URL.
    #   @return [String]
    #
    # @!attribute [rw] test_env_preference
    #   Updated configuration settings for the test environment of the
    #   procurement portal.
    #   @return [Types::TestEnvPreferenceInput]
    #
    # @!attribute [rw] einvoice_delivery_enabled
    #   Updated flag indicating whether e-invoice delivery is enabled for
    #   this procurement portal preference.
    #   @return [Boolean]
    #
    # @!attribute [rw] einvoice_delivery_preference
    #   Updated e-invoice delivery configuration including document types,
    #   attachment types, and customization settings for the portal.
    #   @return [Types::EinvoiceDeliveryPreference]
    #
    # @!attribute [rw] purchase_order_retrieval_enabled
    #   Updated flag indicating whether purchase order retrieval is enabled
    #   for this procurement portal preference.
    #   @return [Boolean]
    #
    # @!attribute [rw] contacts
    #   Updated list of contact information for portal administrators and
    #   technical contacts.
    #   @return [Array<Types::Contact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/PutProcurementPortalPreferenceRequest AWS API Documentation
    #
    class PutProcurementPortalPreferenceRequest < Struct.new(
      :procurement_portal_preference_arn,
      :selector,
      :procurement_portal_shared_secret,
      :procurement_portal_instance_endpoint,
      :test_env_preference,
      :einvoice_delivery_enabled,
      :einvoice_delivery_preference,
      :purchase_order_retrieval_enabled,
      :contacts)
      SENSITIVE = [:procurement_portal_shared_secret, :contacts]
      include Aws::Structure
    end

    # @!attribute [rw] procurement_portal_preference_arn
    #   The Amazon Resource Name (ARN) of the updated procurement portal
    #   preference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/PutProcurementPortalPreferenceResponse AWS API Documentation
    #
    class PutProcurementPortalPreferenceResponse < Struct.new(
      :procurement_portal_preference_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the address associated with the receiver.
    #
    # @!attribute [rw] address_line_1
    #   The first line of the address.
    #   @return [String]
    #
    # @!attribute [rw] address_line_2
    #   The second line of the address, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] address_line_3
    #   The third line of the address, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] district_or_county
    #   The district or country the address is located in.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city that the address is in.
    #   @return [String]
    #
    # @!attribute [rw] state_or_region
    #   The state, region, or province the address is located.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   The country code for the country the address is in.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   A unique company name.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code associated with the address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ReceiverAddress AWS API Documentation
    #
    class ReceiverAddress < Struct.new(
      :address_line_1,
      :address_line_2,
      :address_line_3,
      :district_or_county,
      :city,
      :state_or_region,
      :country_code,
      :company_name,
      :postal_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The resource could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag structure that contains a tag key and value.
    #
    # @!attribute [rw] key
    #   The object key of your of your resource tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The specific value of the resource tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it attempted to create resources
    # beyond the current Amazon Web Services account limits. The error
    # message describes the limit exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Supplemental document associated with the invoice.
    #
    # @!attribute [rw] document_url
    #   The pre-signed URL to download invoice supplemental document.
    #   @return [String]
    #
    # @!attribute [rw] document_url_expiration_date
    #   The pre-signed URL expiration date of invoice supplemental document.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/SupplementalDocument AWS API Documentation
    #
    class SupplementalDocument < Struct.new(
      :document_url,
      :document_url_expiration_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the tags.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   Adds a tag to a resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The details of the taxes.
    #
    # @!attribute [rw] breakdown
    #   A list of tax information.
    #   @return [Array<Types::TaxesBreakdownAmount>]
    #
    # @!attribute [rw] total_amount
    #   The total amount for your taxes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/TaxesBreakdown AWS API Documentation
    #
    class TaxesBreakdown < Struct.new(
      :breakdown,
      :total_amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tax amount.
    #
    # @!attribute [rw] description
    #   The details of the taxes.
    #   @return [String]
    #
    # @!attribute [rw] amount
    #   The tax amount.
    #   @return [String]
    #
    # @!attribute [rw] rate
    #   The details of the tax rate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/TaxesBreakdownAmount AWS API Documentation
    #
    class TaxesBreakdownAmount < Struct.new(
      :description,
      :amount,
      :rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration settings for testing the procurement portal
    # integration in a non-production environment.
    #
    # @!attribute [rw] buyer_domain
    #   The domain identifier for the buyer in the test environment of the
    #   procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] buyer_identifier
    #   The unique identifier for the buyer in the test environment of the
    #   procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] supplier_domain
    #   The domain identifier for the supplier in the test environment of
    #   the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] supplier_identifier
    #   The unique identifier for the supplier in the test environment of
    #   the procurement portal.
    #   @return [String]
    #
    # @!attribute [rw] procurement_portal_shared_secret
    #   The shared secret or authentication credential used for secure
    #   communication with the test environment.
    #   @return [String]
    #
    # @!attribute [rw] procurement_portal_instance_endpoint
    #   The endpoint URL where e-invoices are delivered in the test
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_retrieval_endpoint
    #   The endpoint URL used for retrieving purchase orders in the test
    #   environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/TestEnvPreference AWS API Documentation
    #
    class TestEnvPreference < Struct.new(
      :buyer_domain,
      :buyer_identifier,
      :supplier_domain,
      :supplier_identifier,
      :procurement_portal_shared_secret,
      :procurement_portal_instance_endpoint,
      :purchase_order_retrieval_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input parameters for configuring test environment preferences for a
    # procurement portal.
    #
    # @!attribute [rw] buyer_domain
    #   The domain identifier to use for the buyer in the test environment.
    #   @return [String]
    #
    # @!attribute [rw] buyer_identifier
    #   The unique identifier to use for the buyer in the test environment.
    #   @return [String]
    #
    # @!attribute [rw] supplier_domain
    #   The domain identifier to use for the supplier in the test
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] supplier_identifier
    #   The unique identifier to use for the supplier in the test
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] procurement_portal_shared_secret
    #   The shared secret or authentication credential to use for secure
    #   communication in the test environment.
    #   @return [String]
    #
    # @!attribute [rw] procurement_portal_instance_endpoint
    #   The endpoint URL where e-invoices will be delivered in the test
    #   environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/TestEnvPreferenceInput AWS API Documentation
    #
    class TestEnvPreferenceInput < Struct.new(
      :buyer_domain,
      :buyer_identifier,
      :supplier_domain,
      :supplier_identifier,
      :procurement_portal_shared_secret,
      :procurement_portal_instance_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) to untag.
    #   @return [String]
    #
    # @!attribute [rw] resource_tag_keys
    #   Keys for the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The assigned description for an invoice unit. This information
    #   can't be modified or deleted.
    #   @return [String]
    #
    # @!attribute [rw] tax_inheritance_disabled
    #   Whether the invoice unit based tax inheritance is/ should be enabled
    #   or disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule
    #   The `InvoiceUnitRule` object used to update invoice units.
    #   @return [Types::InvoiceUnitRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UpdateInvoiceUnitRequest AWS API Documentation
    #
    class UpdateInvoiceUnitRequest < Struct.new(
      :invoice_unit_arn,
      :description,
      :tax_inheritance_disabled,
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UpdateInvoiceUnitResponse AWS API Documentation
    #
    class UpdateInvoiceUnitResponse < Struct.new(
      :invoice_unit_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] procurement_portal_preference_arn
    #   The Amazon Resource Name (ARN) of the procurement portal preference
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] einvoice_delivery_preference_status
    #   The updated status of the e-invoice delivery preference.
    #   @return [String]
    #
    # @!attribute [rw] einvoice_delivery_preference_status_reason
    #   The reason for the e-invoice delivery preference status update,
    #   providing context for the change.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_retrieval_preference_status
    #   The updated status of the purchase order retrieval preference.
    #   @return [String]
    #
    # @!attribute [rw] purchase_order_retrieval_preference_status_reason
    #   The reason for the purchase order retrieval preference status
    #   update, providing context for the change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UpdateProcurementPortalPreferenceStatusRequest AWS API Documentation
    #
    class UpdateProcurementPortalPreferenceStatusRequest < Struct.new(
      :procurement_portal_preference_arn,
      :einvoice_delivery_preference_status,
      :einvoice_delivery_preference_status_reason,
      :purchase_order_retrieval_preference_status,
      :purchase_order_retrieval_preference_status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] procurement_portal_preference_arn
    #   The Amazon Resource Name (ARN) of the procurement portal preference
    #   with updated status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UpdateProcurementPortalPreferenceStatusResponse AWS API Documentation
    #
    class UpdateProcurementPortalPreferenceStatusResponse < Struct.new(
      :procurement_portal_preference_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   You don't have sufficient access to perform this action.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   You don't have sufficient access to perform this action.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :resource_name,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] name
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

