# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Payments
  module Types

    # The request is denied because you don't have sufficient access to
    # perform this operation. Verify that you have the required permissions
    # and try again. This error is also returned, instead of
    # `ResourceNotFoundException`, when you aren't authorized for the
    # resource, so the response doesn't reveal whether the resource exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that access was denied. The following values are valid:
    #
    #   * `NOT_AUTHORIZED` – Your IAM policies don't allow this action.
    #
    #   * `INVALID_ACCOUNT_STATE` – Your Amazon Web Services account isn't
    #     in a state that allows this action, for example because
    #     registration isn't complete or the account is suspended.
    #
    #   * `OTHER` – Access was denied for another reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An amount of the balance that `GetAccountBalance` returns: the total
    # for one merchant of record in one currency.
    #
    # @!attribute [rw] amount
    #   The amount, in the currency that the records making up this balance
    #   were issued in.
    #   @return [Types::CurrencyAmount]
    #
    # @!attribute [rw] merchant_of_record
    #   The merchant of record that issued the invoices or credit memos that
    #   make up this amount.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/AccountBalance AWS API Documentation
    #
    class AccountBalance < Struct.new(
      :amount,
      :merchant_of_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # How much of the record's `amount` is outstanding, processing,
    # settled, and canceled. The four balances add up to `amount`. Each
    # balance is in the currency of `amount`, and a balance with nothing in
    # it is 0.
    #
    # @!attribute [rw] outstanding
    #   The part of the amount that isn't settled and has no settlement in
    #   progress. For an invoice, this is what remains to pay. For a credit
    #   memo, this is the credit that isn't yet applied. This balance
    #   doesn't include `processing`.
    #   @return [Types::CurrencyAmount]
    #
    # @!attribute [rw] processing
    #   The part of the amount with a settlement in progress, for example a
    #   payment that's submitted but not yet confirmed. It moves to
    #   `settled` when the settlement completes, and back to `outstanding`
    #   when the settlement fails. This balance is more than 0 only when the
    #   `status` is `PROCESSING`.
    #   @return [Types::CurrencyAmount]
    #
    # @!attribute [rw] settled
    #   The part of the amount that is settled. For an invoice, this is the
    #   amount paid or covered by credit memos. For a credit memo, this is
    #   the amount applied to invoices. This balance is 0 when nothing is
    #   settled yet.
    #   @return [Types::CurrencyAmount]
    #
    # @!attribute [rw] canceled
    #   The part of the amount that was canceled and isn't settled, for
    #   example when an invoice is voided. When a partly settled record is
    #   canceled, it keeps its `settled` balance, and the rest of the amount
    #   moves to `canceled`. This balance is more than 0 only when the
    #   `status` is `CANCELED`.
    #   @return [Types::CurrencyAmount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/Balances AWS API Documentation
    #
    class Balances < Struct.new(
      :outstanding,
      :processing,
      :settled,
      :canceled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keys
    #   The keys of the financial records to retrieve. Each key is either
    #   the record's ID or its invoice ID.
    #   @return [Array<Types::FinancialRecordKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/BatchGetFinancialRecordRequest AWS API Documentation
    #
    class BatchGetFinancialRecordRequest < Struct.new(
      :keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] financial_records
    #   The financial records that the operation retrieved, in no particular
    #   order. This list contains fewer records than you requested when
    #   `errors` names one or more keys.
    #   @return [Array<Types::FinancialRecord>]
    #
    # @!attribute [rw] errors
    #   The errors for the records that the operation couldn't retrieve,
    #   one for each record, with the key as you requested it and the
    #   reason. This list is empty when the operation retrieved every
    #   record.
    #   @return [Array<Types::FinancialRecordError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/BatchGetFinancialRecordResponse AWS API Documentation
    #
    class BatchGetFinancialRecordResponse < Struct.new(
      :financial_records,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # A billing period, as a half-open date range: `startDate` is inclusive
    # and `endDate` is exclusive. Both members are calendar dates, carried
    # as the timestamp of 00:00:00 UTC on that day.
    #
    # @!attribute [rw] start_date
    #   The first day of the billing period, inclusive, as the timestamp of
    #   00:00:00 UTC on that day.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The day after the last day of the billing period, exclusive, as the
    #   timestamp of 00:00:00 UTC on that day. A calendar month runs from
    #   the first of the month to the first of the next month.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/BillingPeriod AWS API Documentation
    #
    class BillingPeriod < Struct.new(
      :start_date,
      :end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services business unit that issued a financial record.
    # A business unit has two parts: the merchant of record, which is the
    # Amazon Web Services entity that issued the record, and the line of
    # business within that entity.
    #
    # @!attribute [rw] merchant_of_record
    #   The Amazon Web Services entity that issued the invoice and collects
    #   payment for it, such as `Amazon Web Services, Inc.` or `Amazon Web
    #   Services EMEA SARL`. This is the invoicing entity shown in the
    #   Amazon Web Services Billing and Cost Management console. For Amazon
    #   Web Services Marketplace purchases, it can differ from the seller of
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] line_of_business
    #   The line of business within the merchant of record that issued the
    #   record. This member is absent when the line of business isn't known
    #   for the record. The following values are valid:
    #
    #   * `AWS_CLOUD_SERVICES` – Your usage of Amazon Web Services services.
    #
    #   * `PROSERVE_MARKETING_AND_TRAINING` – Amazon Web Services
    #     Professional Services, marketing, and training: consulting,
    #     events, and training that Amazon Web Services sells.
    #
    #   * `AWS_MARKETPLACE` – Products that you bought from sellers in
    #     Amazon Web Services Marketplace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/BusinessUnit AWS API Documentation
    #
    class BusinessUnit < Struct.new(
      :merchant_of_record,
      :line_of_business)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a card payment instrument.
    #
    # @!attribute [rw] brand
    #   The network the card runs on.
    #   @return [String]
    #
    # @!attribute [rw] last4
    #   The last four digits of the card number.
    #   @return [String]
    #
    # @!attribute [rw] expiration_month
    #   The calendar month that the card expires in.
    #   @return [Integer]
    #
    # @!attribute [rw] expiration_year
    #   The calendar year that the card expires in.
    #   @return [Integer]
    #
    # @!attribute [rw] card_type
    #   Whether the card is a credit card or a debit card.
    #   @return [String]
    #
    # @!attribute [rw] issuing_bank
    #   The bank that issued the card.
    #   @return [String]
    #
    # @!attribute [rw] issuer_country
    #   The country of the bank that issued the card.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/Card AWS API Documentation
    #
    class Card < Struct.new(
      :brand,
      :last4,
      :expiration_month,
      :expiration_year,
      :card_type,
      :issuing_bank,
      :issuer_country)
      SENSITIVE = [:last4, :expiration_month, :expiration_year]
      include Aws::Structure
    end

    # The details of a China bank redirect instrument. A retail instrument
    # is registered with one bank and carries that bank's code. A corporate
    # instrument isn't registered with a bank.
    #
    # @!attribute [rw] bank_code
    #   The code of the bank that the instrument is registered with. This
    #   member is present only for retail instruments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/CnBankRedirect AWS API Documentation
    #
    class CnBankRedirect < Struct.new(
      :bank_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a credit memo: the invoice ID that Amazon Web Services
    # Invoicing issued for it and the billing period that it applies to.
    #
    # @!attribute [rw] invoice_id
    #   The invoice ID that Amazon Web Services Invoicing issued for the
    #   credit memo: the document number printed on it, shown in the Amazon
    #   Web Services Billing and Cost Management console and returned by the
    #   Amazon Web Services Invoicing API as `InvoiceId`.
    #   `GetFinancialRecord` and `BatchGetFinancialRecord` also accept it,
    #   as `invoiceIdentifier`.
    #   @return [String]
    #
    # @!attribute [rw] billing_period
    #   The billing period the credit memo applies to: the period of the
    #   usage it credits.
    #   @return [Types::BillingPeriod]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/CreditMemoDetails AWS API Documentation
    #
    class CreditMemoDetails < Struct.new(
      :invoice_id,
      :billing_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # A monetary amount expressed as a decimal string in the currency's
    # standard unit.
    #
    # @!attribute [rw] value
    #   The amount, as a decimal string, such as `10.99`. The number of
    #   decimal places can differ between amounts, for example `0.0` and
    #   `1000.24`.
    #   @return [String]
    #
    # @!attribute [rw] currency
    #   The ISO 4217 currency code for the amount (for example, `USD`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/CurrencyAmount AWS API Documentation
    #
    class CurrencyAmount < Struct.new(
      :value,
      :currency)
      SENSITIVE = []
      include Aws::Structure
    end

    # An invoice or a credit memo on your account, with the details that are
    # specific to its type.
    #
    # @!attribute [rw] id
    #   The ID that Amazon Web Services Payments issued for the record, such
    #   as `INV-5364-6253-7364-1342`. To retrieve the record again, pass
    #   this value to `GetFinancialRecord` or `BatchGetFinancialRecord` as
    #   `identifier`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the financial record. The populated member of `details`
    #   matches this type. The following values are valid:
    #
    #   * `INVOICE` – An invoice: a bill from Amazon Web Services. Payments
    #     and credit memos applied to the invoice settle it.
    #
    #   * `CREDIT_MEMO` – A credit memo: a credit issued to your account,
    #     for example for a billing correction or a service credit. Applying
    #     it to one or more invoices settles it.
    #   @return [String]
    #
    # @!attribute [rw] business_unit
    #   The Amazon Web Services business unit that issued the record: its
    #   merchant of record and its line of business.
    #   @return [Types::BusinessUnit]
    #
    # @!attribute [rw] amount
    #   The total amount of the financial record, in the currency that the
    #   record was issued in. The amount doesn't change as the record is
    #   settled. `balances` shows how much of it is in each settlement
    #   state.
    #   @return [Types::CurrencyAmount]
    #
    # @!attribute [rw] balances
    #   How much of `amount` is outstanding, processing, settled, and
    #   canceled.
    #   @return [Types::Balances]
    #
    # @!attribute [rw] settlement_status
    #   Whether the record is open or closed. If you receive a `status`
    #   value that you don't recognize, use this member to tell open
    #   records from closed ones. The following values are valid:
    #
    #   * `OPEN` – Part of the amount is outstanding or processing. The
    #     `status` is `OUTSTANDING` or `PROCESSING`.
    #
    #   * `CLOSED` – The whole amount is settled or canceled. The `status`
    #     is `SETTLED` or `CANCELED`.
    #
    #   A `CLOSED` record becomes `OPEN` again if a payment or credit
    #   applied to it is reversed. Its `closedAt` is then absent until the
    #   record closes again.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The settlement stage of the record. The following values are valid:
    #
    #   * `OUTSTANDING` – Part of the amount isn't settled, and no
    #     settlement is in progress on the record. For an invoice,
    #     `dueStatus` shows whether it's due or past due. The
    #     `settlementStatus` is `OPEN`.
    #
    #   * `PROCESSING` – A settlement of part or all of the amount is in
    #     progress, for example a payment that's submitted but not yet
    #     confirmed. `PROCESSING` takes precedence over `OUTSTANDING`: while
    #     any part of the amount is processing, the status is `PROCESSING`,
    #     even if another part is still outstanding. The `settlementStatus`
    #     is `OPEN`.
    #
    #   * `SETTLED` – The whole amount is settled. The `settlementStatus` is
    #     `CLOSED`.
    #
    #   * `CANCELED` – The record is canceled. The part of the amount that
    #     wasn't settled isn't collected or applied. The
    #     `settlementStatus` is `CLOSED`.
    #   @return [String]
    #
    # @!attribute [rw] issued_at
    #   The date and time, in UTC, when this record was issued.
    #   @return [Time]
    #
    # @!attribute [rw] closed_at
    #   The date and time, in UTC, when the record was last closed, that is,
    #   when its `status` last became `SETTLED` or `CANCELED`. This member
    #   is absent while the `settlementStatus` is `OPEN`, including after a
    #   closed record reopens.
    #   @return [Time]
    #
    # @!attribute [rw] details
    #   The attributes that exist only for the record's type. The populated
    #   member matches `type`: `invoiceDetails` for an `INVOICE`,
    #   `creditMemoDetails` for a `CREDIT_MEMO`.
    #   @return [Types::FinancialRecordDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/FinancialRecord AWS API Documentation
    #
    class FinancialRecord < Struct.new(
      :id,
      :type,
      :business_unit,
      :amount,
      :balances,
      :settlement_status,
      :status,
      :issued_at,
      :closed_at,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attributes that exist only for one type of financial record. The
    # populated member matches the record's `type`.
    #
    # @note FinancialRecordDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FinancialRecordDetails corresponding to the set member.
    #
    # @!attribute [rw] invoice_details
    #   The details of an invoice. Populated when `type` is `INVOICE`.
    #   @return [Types::InvoiceDetails]
    #
    # @!attribute [rw] credit_memo_details
    #   The details of a credit memo. Populated when `type` is
    #   `CREDIT_MEMO`.
    #   @return [Types::CreditMemoDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/FinancialRecordDetails AWS API Documentation
    #
    class FinancialRecordDetails < Struct.new(
      :invoice_details,
      :credit_memo_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class InvoiceDetails < FinancialRecordDetails; end
      class CreditMemoDetails < FinancialRecordDetails; end
      class Unknown < FinancialRecordDetails; end
    end

    # The reason that one of the records requested from
    # `BatchGetFinancialRecord` couldn't be returned. The other records in
    # the request are unaffected.
    #
    # @!attribute [rw] key
    #   The key of the record that couldn't be retrieved, as you requested
    #   it.
    #   @return [Types::FinancialRecordKey]
    #
    # @!attribute [rw] code
    #   The error code that indicates why the retrieval failed. The
    #   following values are valid:
    #
    #   * `NOT_FOUND` – No financial record on your account matches the key.
    #
    #   * `INTERNAL_ERROR` – An internal error occurred while processing
    #     this record. The other records in the request are unaffected. You
    #     can retry this record.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of why the operation couldn't retrieve this record.
    #   The wording can change at any time and isn't localized, so don't
    #   parse this value. To handle the error in your code, use `code`
    #   instead.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/FinancialRecordError AWS API Documentation
    #
    class FinancialRecordError < Struct.new(
      :key,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A way to identify a financial record. Specify exactly one member: the
    # ID that Amazon Web Services Payments issued, in `identifier`, or the
    # invoice ID that Amazon Web Services Invoicing issued, in
    # `invoiceIdentifier`. If you specify both or neither, the request fails
    # with `ValidationException`.
    #
    # @note FinancialRecordKey is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FinancialRecordKey is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FinancialRecordKey corresponding to the set member.
    #
    # @!attribute [rw] identifier
    #   The ID that Amazon Web Services Payments issued for the record.
    #   @return [String]
    #
    # @!attribute [rw] invoice_identifier
    #   The invoice ID that Amazon Web Services Invoicing issued for an
    #   invoice or a credit memo.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/FinancialRecordKey AWS API Documentation
    #
    class FinancialRecordKey < Struct.new(
      :identifier,
      :invoice_identifier,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Identifier < FinancialRecordKey; end
      class InvoiceIdentifier < FinancialRecordKey; end
      class Unknown < FinancialRecordKey; end
    end

    # A financial record as `ListFinancialRecords` returns it, without the
    # details that are specific to its type. To get the full record, use
    # `GetFinancialRecord` or `BatchGetFinancialRecord`.
    #
    # @!attribute [rw] id
    #   The ID that Amazon Web Services Payments issued for the record. To
    #   retrieve the full record, pass this value to `GetFinancialRecord` or
    #   `BatchGetFinancialRecord` as `identifier`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the financial record. On the full record, the populated
    #   member of `details` matches this type. The following values are
    #   valid:
    #
    #   * `INVOICE` – An invoice: a bill from Amazon Web Services. Payments
    #     and credit memos applied to the invoice settle it.
    #
    #   * `CREDIT_MEMO` – A credit memo: a credit issued to your account,
    #     for example for a billing correction or a service credit. Applying
    #     it to one or more invoices settles it.
    #   @return [String]
    #
    # @!attribute [rw] business_unit
    #   The Amazon Web Services business unit that issued the record: its
    #   merchant of record and its line of business.
    #   @return [Types::BusinessUnit]
    #
    # @!attribute [rw] amount
    #   The total amount of the financial record, in the currency that the
    #   record was issued in. The amount doesn't change as the record is
    #   settled. `balances` shows how much of it is in each settlement
    #   state.
    #   @return [Types::CurrencyAmount]
    #
    # @!attribute [rw] balances
    #   How much of `amount` is outstanding, processing, settled, and
    #   canceled.
    #   @return [Types::Balances]
    #
    # @!attribute [rw] settlement_status
    #   Whether the record is open or closed. If you receive a `status`
    #   value that you don't recognize, use this member to tell open
    #   records from closed ones. The following values are valid:
    #
    #   * `OPEN` – Part of the amount is outstanding or processing. The
    #     `status` is `OUTSTANDING` or `PROCESSING`.
    #
    #   * `CLOSED` – The whole amount is settled or canceled. The `status`
    #     is `SETTLED` or `CANCELED`.
    #
    #   A `CLOSED` record becomes `OPEN` again if a payment or credit
    #   applied to it is reversed. Its `closedAt` is then absent until the
    #   record closes again.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The settlement stage of the record. The following values are valid:
    #
    #   * `OUTSTANDING` – Part of the amount isn't settled, and no
    #     settlement is in progress on the record. For an invoice,
    #     `dueStatus` shows whether it's due or past due. The
    #     `settlementStatus` is `OPEN`.
    #
    #   * `PROCESSING` – A settlement of part or all of the amount is in
    #     progress, for example a payment that's submitted but not yet
    #     confirmed. `PROCESSING` takes precedence over `OUTSTANDING`: while
    #     any part of the amount is processing, the status is `PROCESSING`,
    #     even if another part is still outstanding. The `settlementStatus`
    #     is `OPEN`.
    #
    #   * `SETTLED` – The whole amount is settled. The `settlementStatus` is
    #     `CLOSED`.
    #
    #   * `CANCELED` – The record is canceled. The part of the amount that
    #     wasn't settled isn't collected or applied. The
    #     `settlementStatus` is `CLOSED`.
    #   @return [String]
    #
    # @!attribute [rw] issued_at
    #   The date and time, in UTC, when this record was issued.
    #   @return [Time]
    #
    # @!attribute [rw] closed_at
    #   The date and time, in UTC, when the record was last closed, that is,
    #   when its `status` last became `SETTLED` or `CANCELED`. This member
    #   is absent while the `settlementStatus` is `OPEN`, including after a
    #   closed record reopens.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/FinancialRecordSummary AWS API Documentation
    #
    class FinancialRecordSummary < Struct.new(
      :id,
      :type,
      :business_unit,
      :amount,
      :balances,
      :settlement_status,
      :status,
      :issued_at,
      :closed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] balance_type
    #   The balance to retrieve. You can specify only one balance type in a
    #   single request. Each balance adds up the `outstanding` balance of
    #   the records that have the status `OUTSTANDING`. A record that is
    #   `PROCESSING`, `SETTLED`, or `CANCELED` isn't included, even when
    #   part of its amount is outstanding. The following values are valid:
    #
    #   * `INVOICES_DUE` – The outstanding balance of your `OUTSTANDING`
    #     invoices that aren't past their due date, where `dueStatus` is
    #     `DUE`.
    #
    #   * `INVOICES_PAST_DUE` – The outstanding balance of your
    #     `OUTSTANDING` invoices that are past their due date, where
    #     `dueStatus` is `PAST_DUE`.
    #
    #   * `OUTSTANDING_CREDIT_MEMOS` – The outstanding balance of your
    #     `OUTSTANDING` credit memos: the credit that isn't yet applied to
    #     an invoice.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the `nextToken` of the previous response.
    #   Omit it to get the first page. Tokens expire. If the token is
    #   malformed or expired, or doesn't match the original request, the
    #   request fails with `ValidationException` and the reason
    #   `INVALID_PAGINATION_TOKEN`. In that case, start again from the first
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one page. The default is
    #   100. A page can contain fewer results even when more remain. Use
    #   `nextToken` to find out whether more results are available.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/GetAccountBalanceRequest AWS API Documentation
    #
    class GetAccountBalanceRequest < Struct.new(
      :balance_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_balances
    #   The balance, as one amount for each merchant of record and currency.
    #   This list is empty when your account has nothing in the requested
    #   balance.
    #   @return [Array<Types::AccountBalance>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve. This value is absent when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/GetAccountBalanceResponse AWS API Documentation
    #
    class GetAccountBalanceResponse < Struct.new(
      :account_balances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The ID that Amazon Web Services Payments issued for the financial
    #   record, as returned in `id`.
    #   @return [String]
    #
    # @!attribute [rw] invoice_identifier
    #   The invoice ID that Amazon Web Services Invoicing issued for an
    #   invoice or a credit memo. The operation returns the record that has
    #   this invoice ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/GetFinancialRecordRequest AWS API Documentation
    #
    class GetFinancialRecordRequest < Struct.new(
      :identifier,
      :invoice_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] financial_record
    #   The requested financial record.
    #   @return [Types::FinancialRecord]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/GetFinancialRecordResponse AWS API Documentation
    #
    class GetFinancialRecordResponse < Struct.new(
      :financial_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The instrument to retrieve. Specify one of the following:
    #
    #   * The Amazon Resource Name (ARN) of the instrument, as
    #     `ListPaymentInstruments` returns in `arn`. The ARN must be for an
    #     instrument on your account.
    #
    #   * The ID of the instrument, as `ListPaymentInstruments` returns in
    #     `id`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/GetPaymentInstrumentRequest AWS API Documentation
    #
    class GetPaymentInstrumentRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_instrument
    #   The payment instrument, including the details that are specific to
    #   its payment method.
    #   @return [Types::PaymentInstrument]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/GetPaymentInstrumentResponse AWS API Documentation
    #
    class GetPaymentInstrumentResponse < Struct.new(
      :payment_instrument)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an India net banking instrument. The instrument is
    # registered with one bank.
    #
    # @!attribute [rw] bank_code
    #   The code of the bank that the instrument is registered with.
    #   @return [String]
    #
    # @!attribute [rw] bank_name
    #   The name of the bank that the instrument is registered with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/InNetBanking AWS API Documentation
    #
    class InNetBanking < Struct.new(
      :bank_code,
      :bank_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing failed because of an unknown error, exception,
    # or failure. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The suggested number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an invoice: the invoice ID that Amazon Web Services
    # Invoicing issued, the billing period that the invoice covers, its due
    # date and due status, its payment terms, and its frequency.
    #
    # @!attribute [rw] invoice_id
    #   The invoice ID that Amazon Web Services Invoicing issued for the
    #   invoice: the document number printed on it, shown in the Amazon Web
    #   Services Billing and Cost Management console and returned by the
    #   Amazon Web Services Invoicing API as `InvoiceId`.
    #   `GetFinancialRecord` and `BatchGetFinancialRecord` also accept it,
    #   as `invoiceIdentifier`.
    #   @return [String]
    #
    # @!attribute [rw] due_status
    #   Whether the invoice is due or past its due date. This member is
    #   present only while the invoice's `status` is `OUTSTANDING`. It's
    #   absent when the `status` is `PROCESSING`, `SETTLED`, or `CANCELED`.
    #   The following values are valid:
    #
    #   * `DUE` – The due date hasn't passed.
    #
    #   * `PAST_DUE` – The due date has passed, and the invoice is still
    #     outstanding.
    #   @return [String]
    #
    # @!attribute [rw] billing_period
    #   The billing period the invoice covers: the period of the usage it
    #   bills.
    #   @return [Types::BillingPeriod]
    #
    # @!attribute [rw] due_date
    #   The calendar date by which the invoice must be paid, as the
    #   timestamp of 00:00:00 UTC on that day. The invoice is past due from
    #   the following day.
    #   @return [Time]
    #
    # @!attribute [rw] payment_terms
    #   The payment terms for the invoice, as Amazon Web Services Invoicing
    #   issued them, such as `Net30`. The due date follows from these terms.
    #   This member is absent when Amazon Web Services Invoicing didn't
    #   issue payment terms for the invoice.
    #   @return [String]
    #
    # @!attribute [rw] invoice_frequency
    #   Whether the invoice was issued once or as part of a billing cycle.
    #   The following values are valid:
    #
    #   * `ONE_TIME` – A single invoice that isn't part of a billing cycle.
    #
    #   * `RECURRING` – One invoice of a billing cycle, such as your monthly
    #     invoice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/InvoiceDetails AWS API Documentation
    #
    class InvoiceDetails < Struct.new(
      :invoice_id,
      :due_status,
      :billing_period,
      :due_date,
      :payment_terms,
      :invoice_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] types
    #   The financial record types to return. The following values are
    #   valid:
    #
    #   * `INVOICE` – An invoice: a bill from Amazon Web Services. Payments
    #     and credit memos applied to the invoice settle it.
    #
    #   * `CREDIT_MEMO` – A credit memo: a credit issued to your account,
    #     for example for a billing correction or a service credit. Applying
    #     it to one or more invoices settles it.
    #   @return [Array<String>]
    #
    # @!attribute [rw] settlement_statuses
    #   The settlement statuses to filter by. `OPEN` returns records whose
    #   `status` is `OUTSTANDING` or `PROCESSING`. `CLOSED` returns records
    #   whose `status` is `SETTLED` or `CANCELED`. When you omit this
    #   member, the operation returns records with both settlement statuses.
    #   @return [Array<String>]
    #
    # @!attribute [rw] issued_after
    #   The earliest date and time to return records for, inclusive. The
    #   operation returns the records that were issued at or after this
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] issued_before
    #   The latest date and time to return records for, exclusive. The
    #   operation returns the records that were issued before this time.
    #   When you specify both `issuedAfter` and `issuedBefore`,
    #   `issuedBefore` must be later than `issuedAfter`.
    #   @return [Time]
    #
    # @!attribute [rw] sort_by
    #   The field to sort the results by. The default is `ISSUED_AT`, the
    #   date and time when the record was issued.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to sort the results in. The default is `DESCENDING`, which
    #   returns the newest records first. `ASCENDING` returns the oldest
    #   records first.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the `nextToken` of the previous response.
    #   Omit it to get the first page. Tokens expire. If the token is
    #   malformed or expired, or doesn't match the original request, the
    #   request fails with `ValidationException` and the reason
    #   `INVALID_PAGINATION_TOKEN`. In that case, start again from the first
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one page. The default is
    #   100. A page can contain fewer results even when more remain. Use
    #   `nextToken` to find out whether more results are available.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/ListFinancialRecordsRequest AWS API Documentation
    #
    class ListFinancialRecordsRequest < Struct.new(
      :types,
      :settlement_statuses,
      :issued_after,
      :issued_before,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] financial_record_summaries
    #   The financial record summaries that match your filters, in the
    #   requested order. This list is empty when no record matches.
    #   @return [Array<Types::FinancialRecordSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve. This value is absent when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/ListFinancialRecordsResponse AWS API Documentation
    #
    class ListFinancialRecordsResponse < Struct.new(
      :financial_record_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the `nextToken` of the previous response.
    #   Omit it to get the first page. Tokens expire. If the token is
    #   malformed or expired, or doesn't match the original request, the
    #   request fails with `ValidationException` and the reason
    #   `INVALID_PAGINATION_TOKEN`. In that case, start again from the first
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of payment instruments to return in one page. The
    #   default is 25. A page can contain fewer payment instruments even
    #   when more remain. Use `nextToken` to find out whether more payment
    #   instruments are available.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/ListPaymentInstrumentsRequest AWS API Documentation
    #
    class ListPaymentInstrumentsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_instrument_summaries
    #   The payment instruments on your account, one summary for each
    #   instrument. This list is empty when your account has no payment
    #   instruments.
    #   @return [Array<Types::PaymentInstrumentSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve. This value is absent when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/ListPaymentInstrumentsResponse AWS API Documentation
    #
    class ListPaymentInstrumentsResponse < Struct.new(
      :payment_instrument_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A payment instrument on your account, such as a card or a bank
    # account.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the instrument. To allow or deny
    #   `GetPaymentInstrument` for this instrument, use the ARN in the
    #   `Resource` element of an Amazon Web Services Identity and Access
    #   Management (IAM) policy.
    #   @return [String]
    #
    # @!attribute [rw] payment_method
    #   The payment method of the instrument. The following values are
    #   valid:
    #
    #   * `CARD` – A credit or debit card.
    #
    #   * `US_ACH_BANK_ACCOUNT` – A US bank account debited over Automated
    #     Clearing House (ACH).
    #
    #   * `SEPA_BANK_ACCOUNT` – A bank account debited over Single Euro
    #     Payments Area (SEPA) Direct Debit.
    #
    #   * `UK_BACS_BANK_ACCOUNT` – A UK bank account debited over Bacs
    #     Direct Debit.
    #
    #   * `IN_NET_BANKING` – India net banking. You authorize each payment
    #     on your bank's website.
    #
    #   * `CN_BANK_REDIRECT` – China bank redirect. You authorize each
    #     payment on your bank's website.
    #
    #   * `UPI` – Unified Payments Interface, the India real-time payment
    #     system.
    #
    #   * `PIX` – Pix, the Brazilian Central Bank instant payment system.
    #
    #   * `PAY_BY_INVOICE` – Pay by invoice. You pay each invoice yourself,
    #     for example by bank transfer, instead of Amazon Web Services
    #     collecting payment from a card or a bank account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the instrument. The following values are
    #   valid:
    #
    #   * `ACTIVE` – The instrument is set up, and Amazon Web Services can
    #     use it for payments. `ACTIVE` doesn't confirm that the instrument
    #     is verified or that a payment with it will succeed. You don't
    #     need to take action.
    #
    #   * `INVALID` – Amazon Web Services can't use the instrument for
    #     payments, for example because its Direct Debit or UPI mandate is
    #     no longer valid. This status is permanent. The instrument doesn't
    #     return to `ACTIVE`. To pay with this payment method again, add a
    #     new payment instrument.
    #
    #   * `PENDING_SETUP` – The instrument needs an action from you before
    #     Amazon Web Services can use it, such as resuming a paused UPI
    #     mandate in your UPI app. Amazon Web Services doesn't use the
    #     instrument for payments until you complete that action.
    #
    #   * `SETUP_IN_PROGRESS` – You completed the setup steps, and setup of
    #     the instrument is in progress, for example while a Direct Debit or
    #     UPI mandate waits for confirmation. Amazon Web Services doesn't
    #     use the instrument for payments until setup is complete. You
    #     don't need to take action.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The details that are specific to the instrument's payment method.
    #   This member is absent for a payment method that has no additional
    #   details.
    #   @return [Types::PaymentInstrumentDetails]
    #
    # @!attribute [rw] created_at
    #   The date and time, in UTC, when the instrument was registered.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time, in UTC, when the instrument was last changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/PaymentInstrument AWS API Documentation
    #
    class PaymentInstrument < Struct.new(
      :arn,
      :payment_method,
      :status,
      :details,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that are specific to a payment instrument's payment
    # method.
    #
    # @note PaymentInstrumentDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PaymentInstrumentDetails corresponding to the set member.
    #
    # @!attribute [rw] card
    #   The details of a card payment instrument.
    #   @return [Types::Card]
    #
    # @!attribute [rw] us_ach_bank_account
    #   The details of a bank account that is debited over Automated
    #   Clearing House (ACH).
    #   @return [Types::UsAchBankAccount]
    #
    # @!attribute [rw] sepa_bank_account
    #   The details of a bank account that is debited over Single Euro
    #   Payments Area (SEPA) Direct Debit.
    #   @return [Types::SepaBankAccount]
    #
    # @!attribute [rw] uk_bacs_bank_account
    #   The details of a bank account that is debited over Bacs Direct
    #   Debit.
    #   @return [Types::UkBacsBankAccount]
    #
    # @!attribute [rw] in_net_banking
    #   The details of an India net banking instrument.
    #   @return [Types::InNetBanking]
    #
    # @!attribute [rw] cn_bank_redirect
    #   The details of a China bank redirect instrument.
    #   @return [Types::CnBankRedirect]
    #
    # @!attribute [rw] upi
    #   The details of a Unified Payments Interface (UPI) instrument.
    #   @return [Types::Upi]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/PaymentInstrumentDetails AWS API Documentation
    #
    class PaymentInstrumentDetails < Struct.new(
      :card,
      :us_ach_bank_account,
      :sepa_bank_account,
      :uk_bacs_bank_account,
      :in_net_banking,
      :cn_bank_redirect,
      :upi,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Card < PaymentInstrumentDetails; end
      class UsAchBankAccount < PaymentInstrumentDetails; end
      class SepaBankAccount < PaymentInstrumentDetails; end
      class UkBacsBankAccount < PaymentInstrumentDetails; end
      class InNetBanking < PaymentInstrumentDetails; end
      class CnBankRedirect < PaymentInstrumentDetails; end
      class Upi < PaymentInstrumentDetails; end
      class Unknown < PaymentInstrumentDetails; end
    end

    # A payment instrument as it appears in `ListPaymentInstruments`. Call
    # `GetPaymentInstrument` for the full instrument, including the details
    # specific to its payment method such as a card's last four digits and
    # expiration.
    #
    # @!attribute [rw] id
    #   The ID of the instrument, unique within your account. It's the last
    #   segment of the instrument's ARN.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the instrument. To allow or deny
    #   `GetPaymentInstrument` for this instrument, use the ARN in the
    #   `Resource` element of an Amazon Web Services Identity and Access
    #   Management (IAM) policy.
    #   @return [String]
    #
    # @!attribute [rw] payment_method
    #   The payment method of the instrument. The following values are
    #   valid:
    #
    #   * `CARD` – A credit or debit card.
    #
    #   * `US_ACH_BANK_ACCOUNT` – A US bank account debited over Automated
    #     Clearing House (ACH).
    #
    #   * `SEPA_BANK_ACCOUNT` – A bank account debited over Single Euro
    #     Payments Area (SEPA) Direct Debit.
    #
    #   * `UK_BACS_BANK_ACCOUNT` – A UK bank account debited over Bacs
    #     Direct Debit.
    #
    #   * `IN_NET_BANKING` – India net banking. You authorize each payment
    #     on your bank's website.
    #
    #   * `CN_BANK_REDIRECT` – China bank redirect. You authorize each
    #     payment on your bank's website.
    #
    #   * `UPI` – Unified Payments Interface, the India real-time payment
    #     system.
    #
    #   * `PIX` – Pix, the Brazilian Central Bank instant payment system.
    #
    #   * `PAY_BY_INVOICE` – Pay by invoice. You pay each invoice yourself,
    #     for example by bank transfer, instead of Amazon Web Services
    #     collecting payment from a card or a bank account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the instrument. The following values are
    #   valid:
    #
    #   * `ACTIVE` – The instrument is set up, and Amazon Web Services can
    #     use it for payments. `ACTIVE` doesn't confirm that the instrument
    #     is verified or that a payment with it will succeed. You don't
    #     need to take action.
    #
    #   * `INVALID` – Amazon Web Services can't use the instrument for
    #     payments, for example because its Direct Debit or UPI mandate is
    #     no longer valid. This status is permanent. The instrument doesn't
    #     return to `ACTIVE`. To pay with this payment method again, add a
    #     new payment instrument.
    #
    #   * `PENDING_SETUP` – The instrument needs an action from you before
    #     Amazon Web Services can use it, such as resuming a paused UPI
    #     mandate in your UPI app. Amazon Web Services doesn't use the
    #     instrument for payments until you complete that action.
    #
    #   * `SETUP_IN_PROGRESS` – You completed the setup steps, and setup of
    #     the instrument is in progress, for example while a Direct Debit or
    #     UPI mandate waits for confirmation. Amazon Web Services doesn't
    #     use the instrument for payments until setup is complete. You
    #     don't need to take action.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time, in UTC, when the instrument was registered.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time, in UTC, when the instrument was last changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/PaymentInstrumentSummary AWS API Documentation
    #
    class PaymentInstrumentSummary < Struct.new(
      :id,
      :arn,
      :payment_method,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource couldn't be found. Verify that the resource ID
    # is correct. This error is returned only when you're authorized for
    # the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that wasn't found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that wasn't found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a bank account that is debited over Single Euro
    # Payments Area (SEPA) Direct Debit.
    #
    # @!attribute [rw] account_number_tail
    #   The last one to four characters of the account number. This member
    #   is absent until your bank provides the account details, for example
    #   before you complete authentication with your bank.
    #   @return [String]
    #
    # @!attribute [rw] account_holder_name
    #   The name on the account.
    #   @return [String]
    #
    # @!attribute [rw] bank_name
    #   The bank holding the account.
    #   @return [String]
    #
    # @!attribute [rw] account_type
    #   Whether the account is a checking account or a savings account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/SepaBankAccount AWS API Documentation
    #
    class SepaBankAccount < Struct.new(
      :account_number_tail,
      :account_holder_name,
      :bank_name,
      :account_type)
      SENSITIVE = [:account_number_tail, :account_holder_name]
      include Aws::Structure
    end

    # The request was denied due to request throttling. Reduce the frequency
    # of your requests and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The suggested number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a bank account that is debited over Bacs Direct Debit.
    #
    # @!attribute [rw] account_number_tail
    #   The last one to four characters of the account number. This member
    #   is absent until your bank provides the account details, for example
    #   before you complete authentication with your bank.
    #   @return [String]
    #
    # @!attribute [rw] account_holder_name
    #   The name on the account.
    #   @return [String]
    #
    # @!attribute [rw] bank_name
    #   The bank holding the account.
    #   @return [String]
    #
    # @!attribute [rw] account_type
    #   Whether the account is a checking account or a savings account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/UkBacsBankAccount AWS API Documentation
    #
    class UkBacsBankAccount < Struct.new(
      :account_number_tail,
      :account_holder_name,
      :bank_name,
      :account_type)
      SENSITIVE = [:account_number_tail, :account_holder_name]
      include Aws::Structure
    end

    # The details of a Unified Payments Interface (UPI) instrument.
    #
    # @!attribute [rw] app_name
    #   The name of the UPI app that the instrument is registered with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/Upi AWS API Documentation
    #
    class Upi < Struct.new(
      :app_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a bank account that is debited over Automated Clearing
    # House (ACH).
    #
    # @!attribute [rw] account_number_tail
    #   The last one to four characters of the account number. This member
    #   is absent until your bank provides the account details, for example
    #   before you complete authentication with your bank.
    #   @return [String]
    #
    # @!attribute [rw] account_holder_name
    #   The name on the account.
    #   @return [String]
    #
    # @!attribute [rw] bank_name
    #   The bank holding the account.
    #   @return [String]
    #
    # @!attribute [rw] account_type
    #   Whether the account is a checking account or a savings account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/UsAchBankAccount AWS API Documentation
    #
    class UsAchBankAccount < Struct.new(
      :account_number_tail,
      :account_holder_name,
      :bank_name,
      :account_type)
      SENSITIVE = [:account_number_tail, :account_holder_name]
      include Aws::Structure
    end

    # The request isn't valid. Check `reason` and `fieldList` for the
    # cause, correct the request, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that validation failed. The following values are valid:
    #
    #   * `CANNOT_PARSE` – The request body couldn't be parsed, or a value
    #     isn't of the expected type.
    #
    #   * `FIELD_VALIDATION_FAILED` – One or more members failed validation.
    #     `fieldList` names them.
    #
    #   * `INVALID_PAGINATION_TOKEN` – The `nextToken` is malformed or
    #     expired, or doesn't match the original request. Start again from
    #     the first page.
    #
    #   * `UNSUPPORTED_ACTION` – The request is well formed, but the action
    #     isn't supported for your account, Region, or resource.
    #
    #   * `OTHER` – The request isn't valid for another reason.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The request members that failed validation. This member is populated
    #   when `reason` is `FIELD_VALIDATION_FAILED`.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request member that failed validation.
    #
    # @!attribute [rw] name
    #   The name of the request member that failed validation. For a member
    #   nested inside another member, the name is a path from the request
    #   root, with the segments separated by periods.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of why this member failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

