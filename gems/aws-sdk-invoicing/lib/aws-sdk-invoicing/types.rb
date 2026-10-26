# frozen_string_literal: true

# This is generated code!

module Aws::Invoicing
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>You don't have sufficient access to perform this action. </p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about how the total amount was calculated and categorized. </p>
    # @!attribute sub_total_amount
    #   <p> The total of a set of the breakdown. </p>
    #   @return [String]
    # @!attribute discounts
    #   <p> The discounted amount. </p>
    #   @return [Types::DiscountsBreakdown]
    # @!attribute taxes
    #   <p> The tax amount. </p>
    #   @return [Types::TaxesBreakdown]
    # @!attribute fees
    #   <p> The fee amount. </p>
    #   @return [Types::FeesBreakdown]
    class AmountBreakdown < Struct.new(
      nil,
      :sub_total_amount,
      :discounts,
      :taxes,
      :fees,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>Retrieves the corresponding invoice profile data for these account IDs. </p>
    #   @return [Array<String>]
    class BatchGetInvoiceProfileRequest < Struct.new(
      nil,
      :account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profiles
    #   <p> A list of invoice profiles corresponding to the requested accounts. </p>
    #   @return [Array<Types::InvoiceProfile>]
    class BatchGetInvoiceProfileResponse < Struct.new(
      nil,
      :profiles,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The billing period for which you want to retrieve invoice-related documents. </p>
    # @!attribute month
    #   <p> The billing period month. </p>
    #   @return [Integer]
    # @!attribute year
    #   <p> The billing period year. </p>
    #   @return [Integer]
    class BillingPeriod < Struct.new(
      nil,
      :month,
      :year,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource. This exception occurs when a concurrent modification is detected during an update operation, or when attempting to create a resource that already exists.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that caused the conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that caused the conflict.</p>
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

    # <p>Represents contact information for a person or role associated with the procurement portal preference.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name of the contact person or role.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the contact person or role.</p>
    #   @return [String]
    class Contact < Struct.new(
      nil,
      :name,
      :email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The unique name of the invoice unit that is shown on the generated invoice. This can't be changed once it is set. To change this name, you must delete the invoice unit recreate. </p>
    #   @return [String]
    # @!attribute invoice_receiver
    #   <p> The Amazon Web Services account ID chosen to be the receiver of an invoice unit. All invoices generated for that invoice unit will be sent to this account ID. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The invoice unit's description. This can be changed at a later time. </p>
    #   @return [String]
    # @!attribute tax_inheritance_disabled
    #   <p>Whether the invoice unit based tax inheritance is/ should be enabled or disabled. </p>
    #   @return [Boolean]
    # @!attribute rule
    #   <p>The <code>InvoiceUnitRule</code> object used to create invoice units. </p>
    #   @return [Types::InvoiceUnitRule]
    # @!attribute resource_tags
    #   <p> The tag structure that contains a tag key and value. </p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure idempotency of the request. </p>
    #   @return [String]
    class CreateInvoiceUnitRequest < Struct.new(
      nil,
      :name,
      :invoice_receiver,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :resource_tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    class CreateInvoiceUnitResponse < Struct.new(
      nil,
      :invoice_unit_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_name
    #   <p>The name of the procurement portal.</p>
    #   @return [String]
    # @!attribute buyer_domain
    #   <p>The domain identifier for the buyer in the procurement portal.</p>
    #   @return [String]
    # @!attribute buyer_identifier
    #   <p>The unique identifier for the buyer in the procurement portal. </p>
    #   @return [String]
    # @!attribute supplier_domain
    #   <p>The domain identifier for the supplier in the procurement portal.</p>
    #   @return [String]
    # @!attribute supplier_identifier
    #   <p>The unique identifier for the supplier in the procurement portal.</p>
    #   @return [String]
    # @!attribute selector
    #   <p>Specifies criteria for selecting which invoices should be processed using a particular procurement portal preference.</p>
    #   @return [Types::ProcurementPortalPreferenceSelector]
    # @!attribute procurement_portal_shared_secret
    #   <p>The shared secret or authentication credential used to establish secure communication with the procurement portal. This value must be encrypted at rest.</p>
    #   @return [String]
    # @!attribute procurement_portal_instance_endpoint
    #   <p>The endpoint URL where e-invoices will be delivered to the procurement portal. Must be a valid HTTPS URL.</p>
    #   @return [String]
    # @!attribute test_env_preference
    #   <p>Configuration settings for the test environment of the procurement portal. Includes test credentials and endpoints that are used for validation before production deployment.</p>
    #   @return [Types::TestEnvPreferenceInput]
    # @!attribute einvoice_delivery_enabled
    #   <p>Indicates whether e-invoice delivery is enabled for this procurement portal preference. Set to true to enable e-invoice delivery, false to disable.</p>
    #   @return [Boolean]
    # @!attribute einvoice_delivery_preference
    #   <p>Specifies the e-invoice delivery configuration including document types, attachment types, and customization settings for the portal.</p>
    #   @return [Types::EinvoiceDeliveryPreference]
    # @!attribute purchase_order_retrieval_enabled
    #   <p>Indicates whether purchase order retrieval is enabled for this procurement portal preference. Set to true to enable PO retrieval, false to disable.</p>
    #   @return [Boolean]
    # @!attribute marketplace_punch_out_enabled
    #   Defaults to false if not provided.
    #   @return [Boolean]
    # @!attribute marketplace_punch_out_preference
    #   Required for Coupa when MarketplacePunchOutEnabled is true.
    #   @return [Types::MarketplacePunchOutPreference]
    # @!attribute contacts
    #   <p>List of contact information for portal administrators and technical contacts responsible for the e-invoice integration.</p>
    #   @return [Array<Types::Contact>]
    # @!attribute resource_tags
    #   <p>The tags to apply to this procurement portal preference resource. Each tag consists of a key and an optional value.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    #   @return [String]
    class CreateProcurementPortalPreferenceRequest < Struct.new(
      nil,
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
      :marketplace_punch_out_enabled,
      :marketplace_punch_out_preference,
      :contacts,
      :resource_tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the created procurement portal preference.</p>
    #   @return [String]
    class CreateProcurementPortalPreferenceResponse < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of currency exchange. </p>
    # @!attribute source_currency_code
    #   <p>The exchange source currency. </p>
    #   @return [String]
    # @!attribute target_currency_code
    #   <p>The exchange target currency. </p>
    #   @return [String]
    # @!attribute rate
    #   <p>The currency exchange rate. </p>
    #   @return [String]
    class CurrencyExchangeDetails < Struct.new(
      nil,
      :source_currency_code,
      :target_currency_code,
      :rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The time period that you want invoice-related documents for. </p>
    # @!attribute start_date
    #   <p> The beginning of the time period that you want invoice-related documents for. The start date is inclusive. For example, if <code>start</code> is <code>2019-01-01</code>, AWS retrieves invoices starting at <code>2019-01-01</code> up to the end date. </p>
    #   @return [Time]
    # @!attribute end_date
    #   <p> The end of the time period that you want invoice-related documents for. The end date is exclusive. For example, if <code>end</code> is <code>2019-01-10</code>, Amazon Web Services retrieves invoice-related documents from the start date up to, but not including, <code>2018-01-10</code>. </p>
    #   @return [Time]
    class DateInterval < Struct.new(
      nil,
      :start_date,
      :end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure idempotency of the request. </p>
    #   @return [String]
    class DeleteInvoiceUnitRequest < Struct.new(
      nil,
      :invoice_unit_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    class DeleteInvoiceUnitResponse < Struct.new(
      nil,
      :invoice_unit_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteProcurementPortalPreferenceRequest < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted procurement portal preference.</p>
    #   @return [String]
    class DeleteProcurementPortalPreferenceResponse < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The discounts details. </p>
    # @!attribute breakdown
    #   <p>The list of discounts information. </p>
    #   @return [Array<Types::DiscountsBreakdownAmount>]
    # @!attribute total_amount
    #   <p> The discount's total amount. </p>
    #   @return [String]
    class DiscountsBreakdown < Struct.new(
      nil,
      :breakdown,
      :total_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The discounted amount. </p>
    # @!attribute description
    #   <p> The list of discounts information. </p>
    #   @return [String]
    # @!attribute amount
    #   <p>The discounted amount. </p>
    #   @return [String]
    # @!attribute rate
    #   <p> The details for the discount rate.. </p>
    #   @return [String]
    class DiscountsBreakdownAmount < Struct.new(
      nil,
      :description,
      :amount,
      :rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the preferences for e-invoice delivery, including document types, attachment types, and customization settings.</p>
    # @!attribute einvoice_delivery_document_types
    #   <p>The types of e-invoice documents to be delivered.</p>
    #   @return [Array<String>]
    # @!attribute einvoice_delivery_attachment_types
    #   <p>The types of attachments to include with the e-invoice delivery.</p>
    #   @return [Array<String>]
    # @!attribute protocol
    #   <p>The communication protocol to use for e-invoice delivery.</p>
    #   @return [String]
    # @!attribute purchase_order_data_sources
    #   <p>The sources of purchase order data to use for e-invoice generation and delivery.</p>
    #   @return [Array<Types::PurchaseOrderDataSource>]
    # @!attribute connection_testing_method
    #   <p>The method to use for testing the connection to the procurement portal.</p>
    #   @return [String]
    # @!attribute einvoice_delivery_activation_date
    #   <p>The date when e-invoice delivery should be activated for this preference.</p>
    #   @return [Time]
    class EinvoiceDeliveryPreference < Struct.new(
      nil,
      :einvoice_delivery_document_types,
      :einvoice_delivery_attachment_types,
      :protocol,
      :purchase_order_data_sources,
      :connection_testing_method,
      :einvoice_delivery_activation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The organization name providing Amazon Web Services services.</p>
    # @!attribute invoicing_entity
    #   <p>The name of the entity that issues the Amazon Web Services invoice.</p>
    #   @return [String]
    # @!attribute billing_entity
    #   <p>Helps you identify whether your invoices are for Amazon Web Services Marketplace or for purchases of other Amazon Web Services services.</p>
    #   @return [String]
    class Entity < Struct.new(
      nil,
      :invoicing_entity,
      :billing_entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the default feature configuration settings for a procurement portal.</p>
    # @!attribute invoice_configuration
    #   <p>The invoice configuration settings for the procurement portal.</p>
    #   @return [Types::InvoiceConfiguration]
    class FeatureConfigurations < Struct.new(
      nil,
      :invoice_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The details of fees. </p>
    # @!attribute breakdown
    #   <p>The list of fees information. </p>
    #   @return [Array<Types::FeesBreakdownAmount>]
    # @!attribute total_amount
    #   <p> The total amount of fees. </p>
    #   @return [String]
    class FeesBreakdown < Struct.new(
      nil,
      :breakdown,
      :total_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The fee amount. </p>
    # @!attribute description
    #   <p> The list of fees information. </p>
    #   @return [String]
    # @!attribute amount
    #   <p> The fee amount. </p>
    #   @return [String]
    # @!attribute rate
    #   <p> Details about the rate amount. </p>
    #   @return [String]
    class FeesBreakdownAmount < Struct.new(
      nil,
      :description,
      :amount,
      :rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An optional input to the list API. If multiple filters are specified, the returned list will be a configuration that match all of the provided filters. Supported filter types are <code>InvoiceReceivers</code>, <code>Names</code>, and <code>Accounts</code>. </p>
    # @!attribute names
    #   <p> An optional input to the list API. You can specify a list of invoice unit names inside filters to return invoice units that match only the specified invoice unit names. If multiple names are provided, the result is an <code>OR</code> condition (match any) of the specified invoice unit names. </p>
    #   @return [Array<String>]
    # @!attribute invoice_receivers
    #   <p> You can specify a list of Amazon Web Services account IDs inside filters to return invoice units that match only the specified accounts. If multiple accounts are provided, the result is an <code>OR</code> condition (match any) of the specified accounts. This filter only matches the specified accounts on the invoice receivers of the invoice units. </p>
    #   @return [Array<String>]
    # @!attribute accounts
    #   <p> You can specify a list of Amazon Web Services account IDs inside filters to return invoice units that match only the specified accounts. If multiple accounts are provided, the result is an <code>OR</code> condition (match any) of the specified accounts. The specified account IDs are matched with either the receiver or the linked accounts in the rules. </p>
    #   @return [Array<String>]
    # @!attribute bill_source_accounts
    #   <p> A list of Amazon Web Services account IDs used to filter invoice units. These are payer accounts from other Organizations that have delegated their billing responsibility to the receiver account through the billing transfer feature. </p>
    #   @return [Array<String>]
    class Filters < Struct.new(
      nil,
      :names,
      :invoice_receivers,
      :accounts,
      :bill_source_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_id
    #   <p> Your unique invoice ID. </p>
    #   @return [String]
    class GetInvoicePDFRequest < Struct.new(
      nil,
      :invoice_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_pdf
    #   <p> The invoice document and supplemental documents associated with the invoice. </p>
    #   @return [Types::InvoicePDF]
    class GetInvoicePDFResponse < Struct.new(
      nil,
      :invoice_pdf,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    # @!attribute as_of
    #   <p> The state of an invoice unit at a specified time. You can see legacy invoice units that are currently deleted if the <code>AsOf</code> time is set to before it was deleted. If an <code>AsOf</code> is not provided, the default value is the current time. </p>
    #   @return [Time]
    class GetInvoiceUnitRequest < Struct.new(
      nil,
      :invoice_unit_arn,
      :as_of,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    # @!attribute invoice_receiver
    #   <p> The Amazon Web Services account ID chosen to be the receiver of an invoice unit. All invoices generated for that invoice unit will be sent to this account ID. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The unique name of the invoice unit that is shown on the generated invoice. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The assigned description for an invoice unit. </p>
    #   @return [String]
    # @!attribute tax_inheritance_disabled
    #   <p> Whether the invoice unit based tax inheritance is/ should be enabled or disabled. </p>
    #   @return [Boolean]
    # @!attribute rule
    #   <p> This is used to categorize the invoice unit. Values are Amazon Web Services account IDs. Currently, the only supported rule is <code>LINKED_ACCOUNT</code>. </p>
    #   @return [Types::InvoiceUnitRule]
    # @!attribute last_modified
    #   <p> The most recent date the invoice unit response was updated. </p>
    #   @return [Time]
    class GetInvoiceUnitResponse < Struct.new(
      nil,
      :invoice_unit_arn,
      :invoice_receiver,
      :name,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:tax_inheritance_disabled] = nil unless options.key?(:tax_inheritance_disabled)
        super
      end
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to retrieve.</p>
    #   @return [String]
    class GetProcurementPortalPreferenceRequest < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference
    #   <p>The detailed configuration of the requested procurement portal preference.</p>
    #   @return [Types::ProcurementPortalPreference]
    class GetProcurementPortalPreferenceResponse < Struct.new(
      nil,
      :procurement_portal_preference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The processing request failed because of an unknown error, exception, or failure. </p>
    # @!attribute retry_after_seconds
    #   <p>The processing request failed because of an unknown error, exception, or failure.</p>
    #   @return [Integer]
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :retry_after_seconds,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the supported document types and attachment types for invoice delivery to a procurement portal.</p>
    # @!attribute document_types
    #   <p>The e-invoice document types supported by the procurement portal.</p>
    #   @return [Array<String>]
    # @!attribute attachment_types
    #   <p>The attachment types supported by the procurement portal for e-invoice delivery.</p>
    #   @return [Array<String>]
    class InvoiceConfiguration < Struct.new(
      nil,
      :document_types,
      :attachment_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The amount charged after taxes, in the preferred currency. </p>
    # @!attribute total_amount
    #   <p> The invoice currency amount. </p>
    #   @return [String]
    # @!attribute total_amount_before_tax
    #   <p> Details about the invoice total amount before tax. </p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency dominion of the invoice document.</p>
    #   @return [String]
    # @!attribute amount_breakdown
    #   <p> Details about the invoice currency amount. </p>
    #   @return [Types::AmountBreakdown]
    # @!attribute currency_exchange_details
    #   <p> The details of currency exchange. </p>
    #   @return [Types::CurrencyExchangeDetails]
    class InvoiceCurrencyAmount < Struct.new(
      nil,
      :total_amount,
      :total_amount_before_tax,
      :currency_code,
      :amount_breakdown,
      :currency_exchange_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Invoice document data. </p>
    # @!attribute invoice_id
    #   <p> Your unique invoice ID. </p>
    #   @return [String]
    # @!attribute document_url
    #   <p>The pre-signed URL to download the invoice document. </p>
    #   @return [String]
    # @!attribute document_url_expiration_date
    #   <p>The pre-signed URL expiration date of the invoice document.</p>
    #   @return [Time]
    # @!attribute supplemental_documents
    #   <p>List of supplemental documents associated with the invoice.</p>
    #   @return [Array<Types::SupplementalDocument>]
    class InvoicePDF < Struct.new(
      nil,
      :invoice_id,
      :document_url,
      :document_url_expiration_date,
      :supplemental_documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains high-level information about the invoice receiver. </p>
    # @!attribute account_id
    #   <p> The account ID the invoice profile is generated for. </p>
    #   @return [String]
    # @!attribute receiver_name
    #   <p> The name of the person receiving the invoice profile. </p>
    #   @return [String]
    # @!attribute receiver_address
    #   <p>The address of the receiver that will be printed on the invoice. </p>
    #   @return [Types::ReceiverAddress]
    # @!attribute receiver_email
    #   <p>The email address for the invoice profile receiver. </p>
    #   @return [String]
    # @!attribute issuer
    #   <p> This specifies the issuing entity of the invoice. </p>
    #   @return [String]
    # @!attribute tax_registration_number
    #   <p> Your Tax Registration Number (TRN) information. </p>
    #   @return [String]
    class InvoiceProfile < Struct.new(
      nil,
      :account_id,
      :receiver_name,
      :receiver_address,
      :receiver_email,
      :issuer,
      :tax_registration_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Filters for your invoice summaries. </p>
    # @!attribute time_interval
    #   <p>The date range for invoice summary retrieval. </p>
    #   @return [Types::DateInterval]
    # @!attribute billing_period
    #   <p>The billing period associated with the invoice documents. </p>
    #   @return [Types::BillingPeriod]
    # @!attribute invoicing_entity
    #   <p>The name of the entity that issues the Amazon Web Services invoice.</p>
    #   @return [String]
    # @!attribute receiver_role
    #   <p>The role of the invoice receiver to filter by.</p> <note> <p>When <code>ReceiverRole</code> is specified:</p> <ul> <li> <p>Data is available starting <code>2025-06-01</code>. Queries for periods before <code>2025-06-01</code> return a validation error.</p> </li> <li> <p> <code>TimeInterval</code> supports a time interval of up to 5 years. Without <code>ReceiverRole</code>, <code>TimeInterval</code> is limited to one month.</p> </li> </ul> </note>
    #   @return [String]
    class InvoiceSummariesFilter < Struct.new(
      nil,
      :time_interval,
      :billing_period,
      :invoicing_entity,
      :receiver_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the invoice summary.</p>
    # @!attribute resource_type
    #   <p>The query identifier type (<code>INVOICE_ID</code> or <code>ACCOUNT_ID</code>).</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the query identifier.</p>
    #   @return [String]
    class InvoiceSummariesSelector < Struct.new(
      nil,
      :resource_type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The invoice that the API retrieved. </p>
    # @!attribute account_id
    #   <p> The Amazon Web Services account ID. </p>
    #   @return [String]
    # @!attribute invoice_id
    #   <p> The invoice ID. </p>
    #   @return [String]
    # @!attribute issued_date
    #   <p> The issued date of the invoice. </p>
    #   @return [Time]
    # @!attribute due_date
    #   <p> The invoice due date. </p>
    #   @return [Time]
    # @!attribute bill_source_accounts
    #   <p> The list of Amazon Web Services account IDs that are the bill source of the invoice. Currently, only a single bill source account is returned.</p>
    #   @return [Array<String>]
    # @!attribute bill_source_accounts_total_count
    #   <p> The total number of accounts that are the bill source of the invoice. </p>
    #   @return [Integer]
    # @!attribute receiver_role
    #   <p>The role of the invoice receiver.</p>
    #   @return [String]
    # @!attribute entity
    #   <p>The organization name providing Amazon Web Services services.</p>
    #   @return [Types::Entity]
    # @!attribute billing_period
    #   <p> The billing period of the invoice-related document. </p>
    #   @return [Types::BillingPeriod]
    # @!attribute invoice_frequency
    #   <p> The frequency of the invoice. </p>
    #   @return [String]
    # @!attribute bill_type
    #   <p> The type of the bill. </p>
    #   @return [String]
    # @!attribute invoice_type
    #   <p> The type of invoice. </p>
    #   @return [String]
    # @!attribute commercial_invoice_id
    #   <p> The commercial invoice ID. This is only applicable for tax invoices and identifies the associated commercial invoice. </p>
    #   @return [String]
    # @!attribute original_invoice_id
    #   <p>The initial or original invoice ID. </p>
    #   @return [String]
    # @!attribute purchase_order_number
    #   <p> The purchase order number associated to the invoice.</p>
    #   @return [String]
    # @!attribute einvoice_delivery_status
    #   <p> The e-invoice delivery status. </p>
    #   @return [String]
    # @!attribute tax_authority_status
    #   <p> The current status of an invoice as reported to the tax authority. This captures scenarios where an invoice may be cancelled after issuance. </p>
    #   @return [String]
    # @!attribute base_currency_amount
    #   <p> The summary with the product and service currency. </p>
    #   @return [Types::InvoiceCurrencyAmount]
    # @!attribute tax_currency_amount
    #   <p> The summary with the tax currency. </p>
    #   @return [Types::InvoiceCurrencyAmount]
    # @!attribute payment_currency_amount
    #   <p> The summary with the customer configured currency. </p>
    #   @return [Types::InvoiceCurrencyAmount]
    class InvoiceSummary < Struct.new(
      nil,
      :account_id,
      :invoice_id,
      :issued_date,
      :due_date,
      :bill_source_accounts,
      :bill_source_accounts_total_count,
      :receiver_role,
      :entity,
      :billing_period,
      :invoice_frequency,
      :bill_type,
      :invoice_type,
      :commercial_invoice_id,
      :original_invoice_id,
      :purchase_order_number,
      :einvoice_delivery_status,
      :tax_authority_status,
      :base_currency_amount,
      :tax_currency_amount,
      :payment_currency_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An invoice unit is a set of mutually exclusive accounts that correspond to your business entity. Invoice units allow you separate Amazon Web Services account costs and configures your invoice for each business entity going forward. </p>
    # @!attribute invoice_unit_arn
    #   <p>ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    # @!attribute invoice_receiver
    #   <p>The account that receives invoices related to the invoice unit. </p>
    #   @return [String]
    # @!attribute name
    #   <p> A unique name that is distinctive within your Amazon Web Services. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The assigned description for an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    # @!attribute tax_inheritance_disabled
    #   <p>Whether the invoice unit based tax inheritance is/ should be enabled or disabled. </p>
    #   @return [Boolean]
    # @!attribute rule
    #   <p> An <code>InvoiceUnitRule</code> object used the categorize invoice units. </p>
    #   @return [Types::InvoiceUnitRule]
    # @!attribute last_modified
    #   <p> The last time the invoice unit was updated. This is important to determine the version of invoice unit configuration used to create the invoices. Any invoice created after this modified time will use this invoice unit configuration. </p>
    #   @return [Time]
    class InvoiceUnit < Struct.new(
      nil,
      :invoice_unit_arn,
      :invoice_receiver,
      :name,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:tax_inheritance_disabled] = nil unless options.key?(:tax_inheritance_disabled)
        super
      end
    end

    # <p> This is used to categorize the invoice unit. Values are Amazon Web Services account IDs. Currently, the only supported rule is <code>LINKED_ACCOUNT</code>. </p>
    # @!attribute linked_accounts
    #   <p>The list of <code>LINKED_ACCOUNT</code> IDs where charges are included within the invoice unit. </p>
    #   @return [Array<String>]
    # @!attribute bill_source_accounts
    #   <p> A list of Amazon Web Services account IDs that have delegated their billing responsibility to the receiver account through transfer billing. Unlike linked accounts, these bill source accounts can be payer accounts from other organizations that have authorized billing transfer to this account. </p>
    #   @return [Array<String>]
    class InvoiceUnitRule < Struct.new(
      nil,
      :linked_accounts,
      :bill_source_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute selector
    #   <p>The option to retrieve details for a specific invoice by providing its unique ID. Alternatively, access information for all invoices linked to the account by providing an account ID.</p>
    #   @return [Types::InvoiceSummariesSelector]
    # @!attribute filter
    #   <p>Filters you can use to customize your invoice summary.</p>
    #   @return [Types::InvoiceSummariesFilter]
    # @!attribute next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of invoice summaries a paginated response can contain.</p>
    #   @return [Integer]
    class ListInvoiceSummariesRequest < Struct.new(
      nil,
      :selector,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_summaries
    #   <p>List of key (summary level) invoice details without line item details.</p>
    #   @return [Array<Types::InvoiceSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListInvoiceSummariesResponse < Struct.new(
      nil,
      :invoice_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> An optional input to the list API. If multiple filters are specified, the returned list will be a configuration that match all of the provided filters. Supported filter types are <code>InvoiceReceivers</code>, <code>Names</code>, and <code>Accounts</code>. </p>
    #   @return [Types::Filters]
    # @!attribute next_token
    #   <p>The next token used to indicate where the returned list should start from. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of invoice units that can be returned. </p>
    #   @return [Integer]
    # @!attribute as_of
    #   <p> The state of an invoice unit at a specified time. You can see legacy invoice units that are currently deleted if the <code>AsOf</code> time is set to before it was deleted. If an <code>AsOf</code> is not provided, the default value is the current time. </p>
    #   @return [Time]
    class ListInvoiceUnitsRequest < Struct.new(
      nil,
      :filters,
      :next_token,
      :max_results,
      :as_of,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_units
    #   <p> An invoice unit is a set of mutually exclusive accounts that correspond to your business entity. </p>
    #   @return [Array<Types::InvoiceUnit>]
    # @!attribute next_token
    #   <p>The next token used to indicate where the returned list should start from. </p>
    #   @return [String]
    class ListInvoiceUnitsResponse < Struct.new(
      nil,
      :invoice_units,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.</p>
    #   @return [Integer]
    class ListProcurementPortalPreferencesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preferences
    #   <p>The list of procurement portal preferences associated with the Amazon Web Services account.</p>
    #   @return [Array<Types::ProcurementPortalPreferenceSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListProcurementPortalPreferencesResponse < Struct.new(
      nil,
      :procurement_portal_preferences,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_identifier
    #   <p>The unique identifier of the procurement portal for which to list suppliers. Use the <code>PortalIdentifier</code> value returned by <code>ListProcurementPortals</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. You received this token from a previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. Default is 100.</p>
    #   @return [Integer]
    class ListProcurementPortalSuppliersRequest < Struct.new(
      nil,
      :portal_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_suppliers
    #   <p>The list of suppliers configured for the specified procurement portal.</p>
    #   @return [Array<Types::ProcurementPortalSupplier>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListProcurementPortalSuppliersResponse < Struct.new(
      nil,
      :procurement_portal_suppliers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. You received this token from a previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. Default is 100.</p>
    #   @return [Integer]
    class ListProcurementPortalsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portals
    #   <p>The list of procurement portals available for configuration.</p>
    #   @return [Array<Types::ProcurementPortal>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListProcurementPortalsResponse < Struct.new(
      nil,
      :procurement_portals,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of tags to list. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_tags
    #   <p> Adds a tag to a resource. </p>
    #   @return [Array<Types::ResourceTag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the Marketplace PunchOut configuration for a procurement portal preference.</p>
    # @!attribute approval_request_redirect_url
    #   <p>The URL that buyers are redirected to for approval requests in the procurement portal. This is only supported for Coupa. When provided together with the procurement portal instance endpoint, its host must match the host of that endpoint.</p>
    #   @return [String]
    class MarketplacePunchOutPreference < Struct.new(
      nil,
      :approval_request_redirect_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata for a procurement portal, including the portal identifier, name, and default feature configurations.</p>
    # @!attribute portal_identifier
    #   <p>The unique identifier of the procurement portal.</p>
    #   @return [String]
    # @!attribute portal_name
    #   <p>The name of the procurement portal.</p>
    #   @return [String]
    # @!attribute portal_display_name
    #   <p>The display name of the procurement portal.</p>
    #   @return [String]
    # @!attribute default_feature_configurations
    #   <p>The default feature configurations for the procurement portal.</p>
    #   @return [Types::FeatureConfigurations]
    class ProcurementPortal < Struct.new(
      nil,
      :portal_identifier,
      :portal_name,
      :portal_display_name,
      :default_feature_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the full configuration of a procurement portal preference, including settings for e-invoice delivery and purchase order retrieval.</p>
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID associated with this procurement portal preference.</p>
    #   @return [String]
    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference.</p>
    #   @return [String]
    # @!attribute procurement_portal_name
    #   <p>The name of the procurement portal.</p>
    #   @return [String]
    # @!attribute buyer_domain
    #   <p>The domain identifier for the buyer in the procurement portal.</p>
    #   @return [String]
    # @!attribute buyer_identifier
    #   <p>The unique identifier for the buyer in the procurement portal.</p>
    #   @return [String]
    # @!attribute supplier_domain
    #   <p>The domain identifier for the supplier in the procurement portal.</p>
    #   @return [String]
    # @!attribute supplier_identifier
    #   <p>The unique identifier for the supplier in the procurement portal.</p>
    #   @return [String]
    # @!attribute selector
    #   <p>Specifies criteria for selecting which invoices should be processed using a particular procurement portal preference.</p>
    #   @return [Types::ProcurementPortalPreferenceSelector]
    # @!attribute procurement_portal_shared_secret
    #   <p>The shared secret or authentication credential used for secure communication with the procurement portal.</p>
    #   @return [String]
    # @!attribute procurement_portal_instance_endpoint
    #   <p>The endpoint URL where e-invoices are delivered to the procurement portal.</p>
    #   @return [String]
    # @!attribute purchase_order_retrieval_endpoint
    #   <p>The endpoint URL used for retrieving purchase orders from the procurement portal.</p>
    #   @return [String]
    # @!attribute test_env_preference
    #   <p>Configuration on settings for the test environment of the procurement portal.</p>
    #   @return [Types::TestEnvPreference]
    # @!attribute einvoice_delivery_enabled
    #   <p>Indicates whether e-invoice delivery is enabled for this procurement portal preference.</p>
    #   @return [Boolean]
    # @!attribute einvoice_delivery_preference
    #   <p>The e-invoice delivery configuration including document types, attachment types, and customization settings.</p>
    #   @return [Types::EinvoiceDeliveryPreference]
    # @!attribute purchase_order_retrieval_enabled
    #   <p>Indicates whether purchase order retrieval is enabled for this procurement portal preference.</p>
    #   @return [Boolean]
    # @!attribute marketplace_punch_out_enabled
    #   <p>Indicates whether Marketplace PunchOut is enabled for this procurement portal preference. Defaults to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute marketplace_punch_out_preference
    #   <p>The Marketplace PunchOut configuration for this procurement portal preference. This is present when <code>MarketplacePunchOutEnabled</code> is <code>true</code>.</p>
    #   @return [Types::MarketplacePunchOutPreference]
    # @!attribute contacts
    #   <p>List of contact information for portal administrators and technical contacts.</p>
    #   @return [Array<Types::Contact>]
    # @!attribute einvoice_delivery_preference_status
    #   <p>The current status of the e-invoice delivery preference.</p>
    #   @return [String]
    # @!attribute einvoice_delivery_preference_status_reason
    #   <p>The reason for the current e-invoice delivery preference status.</p>
    #   @return [String]
    # @!attribute purchase_order_retrieval_preference_status
    #   <p>The current status of the purchase order retrieval preference.</p>
    #   @return [String]
    # @!attribute purchase_order_retrieval_preference_status_reason
    #   <p>The reason for the current purchase order retrieval preference status.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the procurement portal preference configuration.</p>
    #   @return [Integer]
    # @!attribute create_date
    #   <p>The date and time when the procurement portal preference was created.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date and time when the procurement portal preference was last updated.</p>
    #   @return [Time]
    class ProcurementPortalPreference < Struct.new(
      nil,
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
      :marketplace_punch_out_enabled,
      :marketplace_punch_out_preference,
      :contacts,
      :einvoice_delivery_preference_status,
      :einvoice_delivery_preference_status_reason,
      :purchase_order_retrieval_preference_status,
      :purchase_order_retrieval_preference_status_reason,
      :version,
      :create_date,
      :last_update_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies criteria for selecting which invoices should be processed using a particular procurement portal preference.</p>
    # @!attribute invoice_unit_arns
    #   <p> The Amazon Resource Name (ARN) of invoice unit identifiers to which this preference applies. </p>
    #   @return [Array<String>]
    # @!attribute seller_of_records
    #   <p> The list of seller of record IDs to which this preference applies. </p>
    #   @return [Array<String>]
    class ProcurementPortalPreferenceSelector < Struct.new(
      nil,
      :invoice_unit_arns,
      :seller_of_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of a procurement portal preference, including key identifiers and status information.</p>
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID associated with this procurement portal preference summary.</p>
    #   @return [String]
    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference.</p>
    #   @return [String]
    # @!attribute procurement_portal_name
    #   <p>The name of the procurement portal.</p>
    #   @return [String]
    # @!attribute buyer_domain
    #   <p>The domain identifier for the buyer in the procurement portal.</p>
    #   @return [String]
    # @!attribute buyer_identifier
    #   <p>The unique identifier for the buyer in the procurement portal.</p>
    #   @return [String]
    # @!attribute supplier_domain
    #   <p>The domain identifier for the supplier in the procurement portal.</p>
    #   @return [String]
    # @!attribute supplier_identifier
    #   <p>The unique identifier for the supplier in the procurement portal.</p>
    #   @return [String]
    # @!attribute selector
    #   <p>Specifies criteria for selecting which invoices should be processed using a particular procurement portal preference.</p>
    #   @return [Types::ProcurementPortalPreferenceSelector]
    # @!attribute einvoice_delivery_enabled
    #   <p>Indicates whether e-invoice delivery is enabled for this procurement portal preference.</p>
    #   @return [Boolean]
    # @!attribute purchase_order_retrieval_enabled
    #   <p>Indicates whether purchase order retrieval is enabled for this procurement portal preference.</p>
    #   @return [Boolean]
    # @!attribute marketplace_punch_out_enabled
    #   <p>Indicates whether Marketplace PunchOut is enabled for this procurement portal preference. Defaults to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute einvoice_delivery_preference_status
    #   <p>The current status of the e-invoice delivery preference in this summary.</p>
    #   @return [String]
    # @!attribute einvoice_delivery_preference_status_reason
    #   <p>The reason for the current e-invoice delivery preference status in this summary.</p>
    #   @return [String]
    # @!attribute purchase_order_retrieval_preference_status
    #   <p>The current status of the purchase order retrieval preference in this summary.</p>
    #   @return [String]
    # @!attribute purchase_order_retrieval_preference_status_reason
    #   <p>The reason for the current purchase order retrieval preference status in this summary.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the procurement portal preference configuration in this summary.</p>
    #   @return [Integer]
    # @!attribute create_date
    #   <p>The date and time when the procurement portal preference was created.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date and time when the procurement portal preference was last updated.</p>
    #   @return [Time]
    class ProcurementPortalPreferenceSummary < Struct.new(
      nil,
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
      :marketplace_punch_out_enabled,
      :einvoice_delivery_preference_status,
      :einvoice_delivery_preference_status_reason,
      :purchase_order_retrieval_preference_status,
      :purchase_order_retrieval_preference_status_reason,
      :version,
      :create_date,
      :last_update_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata for a supplier configured within a procurement portal.</p>
    # @!attribute supplier_identifier
    #   <p>The unique identifier of the supplier within the procurement portal.</p>
    #   @return [String]
    # @!attribute seller_of_record
    #   <p>The Amazon Web Services seller of record associated with the supplier—the Amazon Web Services legal entity that issues invoices for the account (for example, <code>AWS_INC</code> or <code>AWS_EUROPE</code>).</p>
    #   @return [String]
    # @!attribute country_code
    #   <p>The two-letter ISO 3166-1 alpha-2 country code associated with the supplier.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment identifier for the supplier in the procurement portal. PROD for production env, or TEST for sandbox/test env.</p>
    #   @return [String]
    class ProcurementPortalSupplier < Struct.new(
      nil,
      :supplier_identifier,
      :seller_of_record,
      :country_code,
      :environment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the source configuration for retrieving purchase order data.</p>
    # @!attribute einvoice_delivery_document_type
    #   <p>The type of e-invoice document that requires purchase order data.</p>
    #   @return [String]
    # @!attribute purchase_order_data_source_type
    #   <p>The type of source for purchase order data.</p>
    #   @return [String]
    class PurchaseOrderDataSource < Struct.new(
      nil,
      :einvoice_delivery_document_type,
      :purchase_order_data_source_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to update.</p>
    #   @return [String]
    # @!attribute selector
    #   <p>Specifies criteria for selecting which invoices should be processed using a particular procurement portal preference.</p>
    #   @return [Types::ProcurementPortalPreferenceSelector]
    # @!attribute procurement_portal_shared_secret
    #   <p>The updated shared secret or authentication credential for the procurement portal. This value must be encrypted at rest.</p>
    #   @return [String]
    # @!attribute procurement_portal_instance_endpoint
    #   <p>The updated endpoint URL where e-invoices will be delivered to the procurement portal. Must be a valid HTTPS URL.</p>
    #   @return [String]
    # @!attribute test_env_preference
    #   <p>Updated configuration settings for the test environment of the procurement portal.</p>
    #   @return [Types::TestEnvPreferenceInput]
    # @!attribute einvoice_delivery_enabled
    #   <p>Updated flag indicating whether e-invoice delivery is enabled for this procurement portal preference.</p>
    #   @return [Boolean]
    # @!attribute einvoice_delivery_preference
    #   <p>Updated e-invoice delivery configuration including document types, attachment types, and customization settings for the portal.</p>
    #   @return [Types::EinvoiceDeliveryPreference]
    # @!attribute purchase_order_retrieval_enabled
    #   <p>Updated flag indicating whether purchase order retrieval is enabled for this procurement portal preference.</p>
    #   @return [Boolean]
    # @!attribute marketplace_punch_out_enabled
    #   Whether Marketplace PunchOut is enabled for this connection. Defaults to false if not provided.
    #   @return [Boolean]
    # @!attribute marketplace_punch_out_preference
    #   Configuration for Marketplace PunchOut. Required when MarketplacePunchOutEnabled is true.
    #   @return [Types::MarketplacePunchOutPreference]
    # @!attribute contacts
    #   <p>Updated list of contact information for portal administrators and technical contacts.</p>
    #   @return [Array<Types::Contact>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    #   @return [String]
    class PutProcurementPortalPreferenceRequest < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      :selector,
      :procurement_portal_shared_secret,
      :procurement_portal_instance_endpoint,
      :test_env_preference,
      :einvoice_delivery_enabled,
      :einvoice_delivery_preference,
      :purchase_order_retrieval_enabled,
      :marketplace_punch_out_enabled,
      :marketplace_punch_out_preference,
      :contacts,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the updated procurement portal preference.</p>
    #   @return [String]
    class PutProcurementPortalPreferenceResponse < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The details of the address associated with the receiver. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute address_line1
    #   <p> The first line of the address. </p>
    #   @return [String]
    # @!attribute address_line2
    #   <p> The second line of the address, if applicable. </p>
    #   @return [String]
    # @!attribute address_line3
    #   <p> The third line of the address, if applicable. </p>
    #   @return [String]
    # @!attribute district_or_county
    #   <p> The district or country the address is located in. </p>
    #   @return [String]
    # @!attribute city
    #   <p> The city that the address is in. </p>
    #   @return [String]
    # @!attribute state_or_region
    #   <p> The state, region, or province the address is located. </p>
    #   @return [String]
    # @!attribute country_code
    #   <p> The country code for the country the address is in. </p>
    #   @return [String]
    # @!attribute company_name
    #   <p> A unique company name. </p>
    #   @return [String]
    # @!attribute postal_code
    #   <p> The postal code associated with the address. </p>
    #   @return [String]
    class ReceiverAddress < Struct.new(
      nil,
      :address_line1,
      :address_line2,
      :address_line3,
      :district_or_county,
      :city,
      :state_or_region,
      :country_code,
      :company_name,
      :postal_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource could not be found. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The resource could not be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag structure that contains a tag key and value. </p>
    # @!attribute key
    #   <p>The object key of your of your resource tag. </p>
    #   @return [String]
    # @!attribute value
    #   <p> The specific value of the resource tag. </p>
    #   @return [String]
    class ResourceTag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to validate.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    #   @return [String]
    class SendProcurementPortalValidationRequest < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference for which the validation request was sent.</p>
    #   @return [String]
    class SendProcurementPortalValidationResponse < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because it attempted to create resources beyond the current Amazon Web Services account limits. The error message describes the limit exceeded. </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Supplemental document associated with the invoice.</p>
    # @!attribute document_type
    #   <p>The type of supplemental document.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the supplemental document.</p>
    #   @return [String]
    # @!attribute document_url
    #   <p>The pre-signed URL to download invoice supplemental document.</p>
    #   @return [String]
    # @!attribute document_url_expiration_date
    #   <p>The pre-signed URL expiration date of invoice supplemental document.</p>
    #   @return [Time]
    class SupplementalDocument < Struct.new(
      nil,
      :document_type,
      :document_id,
      :document_url,
      :document_url_expiration_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tags. </p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p> Adds a tag to a resource. </p>
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

    # <p> The details of the taxes. </p>
    # @!attribute breakdown
    #   <p> A list of tax information. </p>
    #   @return [Array<Types::TaxesBreakdownAmount>]
    # @!attribute total_amount
    #   <p> The total amount for your taxes. </p>
    #   @return [String]
    class TaxesBreakdown < Struct.new(
      nil,
      :breakdown,
      :total_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The tax amount. </p>
    # @!attribute description
    #   <p> The details of the taxes. </p>
    #   @return [String]
    # @!attribute amount
    #   <p> The tax amount. </p>
    #   @return [String]
    # @!attribute rate
    #   <p> The details of the tax rate. </p>
    #   @return [String]
    class TaxesBreakdownAmount < Struct.new(
      nil,
      :description,
      :amount,
      :rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration settings for testing the procurement portal integration in a non-production environment.</p>
    # @!attribute buyer_domain
    #   <p>The domain identifier for the buyer in the test environment of the procurement portal.</p>
    #   @return [String]
    # @!attribute buyer_identifier
    #   <p>The unique identifier for the buyer in the test environment of the procurement portal.</p>
    #   @return [String]
    # @!attribute supplier_domain
    #   <p>The domain identifier for the supplier in the test environment of the procurement portal.</p>
    #   @return [String]
    # @!attribute supplier_identifier
    #   <p>The unique identifier for the supplier in the test environment of the procurement portal.</p>
    #   @return [String]
    # @!attribute procurement_portal_shared_secret
    #   <p>The shared secret or authentication credential used for secure communication with the test environment.</p>
    #   @return [String]
    # @!attribute procurement_portal_instance_endpoint
    #   <p>The endpoint URL where e-invoices are delivered in the test environment.</p>
    #   @return [String]
    # @!attribute purchase_order_retrieval_endpoint
    #   <p>The endpoint URL used for retrieving purchase orders in the test environment.</p>
    #   @return [String]
    class TestEnvPreference < Struct.new(
      nil,
      :buyer_domain,
      :buyer_identifier,
      :supplier_domain,
      :supplier_identifier,
      :procurement_portal_shared_secret,
      :procurement_portal_instance_endpoint,
      :purchase_order_retrieval_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input parameters for configuring test environment preferences for a procurement portal.</p>
    # @!attribute buyer_domain
    #   <p>The domain identifier to use for the buyer in the test environment.</p>
    #   @return [String]
    # @!attribute buyer_identifier
    #   <p>The unique identifier to use for the buyer in the test environment.</p>
    #   @return [String]
    # @!attribute supplier_domain
    #   <p>The domain identifier to use for the supplier in the test environment.</p>
    #   @return [String]
    # @!attribute supplier_identifier
    #   <p>The unique identifier to use for the supplier in the test environment.</p>
    #   @return [String]
    # @!attribute procurement_portal_shared_secret
    #   <p>The shared secret or authentication credential to use for secure communication in the test environment.</p>
    #   @return [String]
    # @!attribute procurement_portal_instance_endpoint
    #   <p>The endpoint URL where e-invoices will be delivered in the test environment.</p>
    #   @return [String]
    class TestEnvPreferenceInput < Struct.new(
      nil,
      :buyer_domain,
      :buyer_identifier,
      :supplier_domain,
      :supplier_identifier,
      :procurement_portal_shared_secret,
      :procurement_portal_instance_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) to untag. </p>
    #   @return [String]
    # @!attribute resource_tag_keys
    #   <p> Keys for the tags to be removed. </p>
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

    # @!attribute invoice_unit_arn
    #   <p>The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The assigned description for an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    # @!attribute tax_inheritance_disabled
    #   <p>Whether the invoice unit based tax inheritance is/ should be enabled or disabled. </p>
    #   @return [Boolean]
    # @!attribute rule
    #   <p>The <code>InvoiceUnitRule</code> object used to update invoice units. </p>
    #   @return [Types::InvoiceUnitRule]
    # @!attribute client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure idempotency of the request. </p>
    #   @return [String]
    class UpdateInvoiceUnitRequest < Struct.new(
      nil,
      :invoice_unit_arn,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    class UpdateInvoiceUnitResponse < Struct.new(
      nil,
      :invoice_unit_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to update.</p>
    #   @return [String]
    # @!attribute einvoice_delivery_preference_status
    #   <p>The updated status of the e-invoice delivery preference.</p>
    #   @return [String]
    # @!attribute einvoice_delivery_preference_status_reason
    #   <p>The reason for the e-invoice delivery preference status update, providing context for the change.</p>
    #   @return [String]
    # @!attribute purchase_order_retrieval_preference_status
    #   <p>The updated status of the purchase order retrieval preference.</p>
    #   @return [String]
    # @!attribute purchase_order_retrieval_preference_status_reason
    #   <p>The reason for the purchase order retrieval preference status update, providing context for the change.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    #   @return [String]
    class UpdateProcurementPortalPreferenceStatusRequest < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      :einvoice_delivery_preference_status,
      :einvoice_delivery_preference_status_reason,
      :purchase_order_retrieval_preference_status,
      :purchase_order_retrieval_preference_status_reason,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference with updated status.</p>
    #   @return [String]
    class UpdateProcurementPortalPreferenceStatusResponse < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The input fails to satisfy the constraints specified by an Amazon Web Services service. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>You don't have sufficient access to perform this action. </p>
    #   @return [String]
    # @!attribute reason
    #   <p>You don't have sufficient access to perform this action. </p>
    #   @return [String]
    # @!attribute field_list
    #   <p> The input fails to satisfy the constraints specified by an Amazon Web Services service. </p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :resource_name,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The input fails to satisfy the constraints specified by an Amazon Web Services service. </p>
    # @!attribute name
    #   <p> The input fails to satisfy the constraints specified by an Amazon Web Services service. </p>
    #   @return [String]
    # @!attribute message
    #   <p> The input fails to satisfy the constraints specified by an Amazon Web Services service. </p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to validate.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The validation code received from the procurement portal in response to a previous <code>SendProcurementPortalValidation</code> request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    #   @return [String]
    class VerifyProcurementPortalValidationRequest < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      :code,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference for which validation was completed.</p>
    #   @return [String]
    class VerifyProcurementPortalValidationResponse < Struct.new(
      nil,
      :procurement_portal_preference_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
