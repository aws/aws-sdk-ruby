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
      :message,
      :resource_name,
      keyword_init: true)
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
      :sub_total_amount,
      :discounts,
      :taxes,
      :fees,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>Retrieves the corresponding invoice profile data for these account IDs. </p>
    #   @return [Array<String>]
    class BatchGetInvoiceProfileRequest < Struct.new(
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profiles
    #   <p> A list of invoice profiles corresponding to the requested accounts. </p>
    #   @return [Array<Types::InvoiceProfile>]
    class BatchGetInvoiceProfileResponse < Struct.new(
      :profiles,
      keyword_init: true)
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
      :month,
      :year,
      keyword_init: true)
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
    class CreateInvoiceUnitRequest < Struct.new(
      :name,
      :invoice_receiver,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :resource_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    class CreateInvoiceUnitResponse < Struct.new(
      :invoice_unit_arn,
      keyword_init: true)
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
      :source_currency_code,
      :target_currency_code,
      :rate,
      keyword_init: true)
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
      :start_date,
      :end_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    class DeleteInvoiceUnitRequest < Struct.new(
      :invoice_unit_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    class DeleteInvoiceUnitResponse < Struct.new(
      :invoice_unit_arn,
      keyword_init: true)
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
      :breakdown,
      :total_amount,
      keyword_init: true)
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
      :description,
      :amount,
      :rate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The organization name providing Amazon Web Services services.</p>
    # @!attribute invoicing_entity
    #   <p>The name of the entity that issues the Amazon Web Services invoice.</p>
    #   @return [String]
    class Entity < Struct.new(
      :invoicing_entity,
      keyword_init: true)
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
      :breakdown,
      :total_amount,
      keyword_init: true)
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
      :description,
      :amount,
      :rate,
      keyword_init: true)
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
    class Filters < Struct.new(
      :names,
      :invoice_receivers,
      :accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    # @!attribute as_of
    #   <p> The state of an invoice unit at a specified time. You can see legacy invoice units that are currently deleted if the <code>AsOf</code> time is set to before it was deleted. If an <code>AsOf</code> is not provided, the default value is the current time. </p>
    #   @return [Time]
    class GetInvoiceUnitRequest < Struct.new(
      :invoice_unit_arn,
      :as_of,
      keyword_init: true)
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
      :invoice_unit_arn,
      :invoice_receiver,
      :name,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :last_modified,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:tax_inheritance_disabled] = nil unless options.key?(:tax_inheritance_disabled)
        super
      end
    end

    # <p>The processing request failed because of an unknown error, exception, or failure. </p>
    # @!attribute retry_after_seconds
    #   <p>The processing request failed because of an unknown error, exception, or failure.</p>
    #   @return [Integer]
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :retry_after_seconds,
      :message,
      keyword_init: true)
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
      :total_amount,
      :total_amount_before_tax,
      :currency_code,
      :amount_breakdown,
      :currency_exchange_details,
      keyword_init: true)
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
      :account_id,
      :receiver_name,
      :receiver_address,
      :receiver_email,
      :issuer,
      :tax_registration_number,
      keyword_init: true)
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
    class InvoiceSummariesFilter < Struct.new(
      :time_interval,
      :billing_period,
      :invoicing_entity,
      keyword_init: true)
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
      :resource_type,
      :value,
      keyword_init: true)
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
    # @!attribute entity
    #   <p>The organization name providing Amazon Web Services services.</p>
    #   @return [Types::Entity]
    # @!attribute billing_period
    #   <p> The billing period of the invoice-related document. </p>
    #   @return [Types::BillingPeriod]
    # @!attribute invoice_type
    #   <p> The type of invoice. </p>
    #   @return [String]
    # @!attribute original_invoice_id
    #   <p>The initial or original invoice ID. </p>
    #   @return [String]
    # @!attribute purchase_order_number
    #   <p> The purchase order number associated to the invoice.</p>
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
      :payment_currency_amount,
      keyword_init: true)
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
      :invoice_unit_arn,
      :invoice_receiver,
      :name,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :last_modified,
      keyword_init: true)
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
    class InvoiceUnitRule < Struct.new(
      :linked_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute selector
    #   <p>The option to retrieve details for a specific invoice by providing its unique ID. Alternatively, access information for all invoices linked to the account by providing an account ID.</p>
    #   @return [Types::InvoiceSummariesSelector]
    # @!attribute filter
    #   <p>Filters you can use to customize your invoice summary.</p>
    #   @return [Types::InvoiceSummariesFilter]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of invoice summaries a paginated response can contain.</p>
    #   @return [Integer]
    class ListInvoiceSummariesRequest < Struct.new(
      :selector,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_summaries
    #   <p>List of key (summary level) invoice details without line item details.</p>
    #   @return [Array<Types::InvoiceSummary>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    class ListInvoiceSummariesResponse < Struct.new(
      :invoice_summaries,
      :next_token,
      keyword_init: true)
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
      :filters,
      :next_token,
      :max_results,
      :as_of,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_units
    #   <p> An invoice unit is a set of mutually exclusive accounts that correspond to your business entity. </p>
    #   @return [Array<Types::InvoiceUnit>]
    # @!attribute next_token
    #   <p>The next token used to indicate where the returned list should start from. </p>
    #   @return [String]
    class ListInvoiceUnitsResponse < Struct.new(
      :invoice_units,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of tags to list. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_tags
    #   <p> Adds a tag to a resource. </p>
    #   @return [Array<Types::ResourceTag>]
    class ListTagsForResourceResponse < Struct.new(
      :resource_tags,
      keyword_init: true)
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
      :address_line1,
      :address_line2,
      :address_line3,
      :district_or_county,
      :city,
      :state_or_region,
      :country_code,
      :company_name,
      :postal_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource could not be found. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The resource could not be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
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
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because it attempted to create resources beyond the current Amazon Web Services account limits. The error message describes the limit exceeded. </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tags. </p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p> Adds a tag to a resource. </p>
    #   @return [Array<Types::ResourceTag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
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
      :breakdown,
      :total_amount,
      keyword_init: true)
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
      :description,
      :amount,
      :rate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) to untag. </p>
    #   @return [String]
    # @!attribute resource_tag_keys
    #   <p> Keys for the tags to be removed. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
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
    class UpdateInvoiceUnitRequest < Struct.new(
      :invoice_unit_arn,
      :description,
      :tax_inheritance_disabled,
      :rule,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    #   @return [String]
    class UpdateInvoiceUnitResponse < Struct.new(
      :invoice_unit_arn,
      keyword_init: true)
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
      :message,
      :resource_name,
      :reason,
      :field_list,
      keyword_init: true)
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
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
