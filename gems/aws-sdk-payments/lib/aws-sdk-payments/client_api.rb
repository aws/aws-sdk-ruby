# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Payments
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionReason = Shapes::StringShape.new(name: 'AccessDeniedExceptionReason')
    AccountBalance = Shapes::StructureShape.new(name: 'AccountBalance')
    AccountBalanceList = Shapes::ListShape.new(name: 'AccountBalanceList')
    AccountHolderName = Shapes::StringShape.new(name: 'AccountHolderName')
    BalanceType = Shapes::StringShape.new(name: 'BalanceType')
    Balances = Shapes::StructureShape.new(name: 'Balances')
    BankAccountNumberTail = Shapes::StringShape.new(name: 'BankAccountNumberTail')
    BankAccountType = Shapes::StringShape.new(name: 'BankAccountType')
    BankCode = Shapes::StringShape.new(name: 'BankCode')
    BankName = Shapes::StringShape.new(name: 'BankName')
    BatchErrorCode = Shapes::StringShape.new(name: 'BatchErrorCode')
    BatchGetFinancialRecordRequest = Shapes::StructureShape.new(name: 'BatchGetFinancialRecordRequest')
    BatchGetFinancialRecordResponse = Shapes::StructureShape.new(name: 'BatchGetFinancialRecordResponse')
    BillingPeriod = Shapes::StructureShape.new(name: 'BillingPeriod')
    BusinessUnit = Shapes::StructureShape.new(name: 'BusinessUnit')
    Card = Shapes::StructureShape.new(name: 'Card')
    CardBrand = Shapes::StringShape.new(name: 'CardBrand')
    CardType = Shapes::StringShape.new(name: 'CardType')
    CnBankRedirect = Shapes::StructureShape.new(name: 'CnBankRedirect')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CreditMemoDetails = Shapes::StructureShape.new(name: 'CreditMemoDetails')
    CurrencyAmount = Shapes::StructureShape.new(name: 'CurrencyAmount')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    DecimalString = Shapes::StringShape.new(name: 'DecimalString')
    DisplayLabel = Shapes::StringShape.new(name: 'DisplayLabel')
    DueStatus = Shapes::StringShape.new(name: 'DueStatus')
    ExpirationMonth = Shapes::IntegerShape.new(name: 'ExpirationMonth')
    ExpirationYear = Shapes::IntegerShape.new(name: 'ExpirationYear')
    FinancialRecord = Shapes::StructureShape.new(name: 'FinancialRecord')
    FinancialRecordDetails = Shapes::UnionShape.new(name: 'FinancialRecordDetails')
    FinancialRecordError = Shapes::StructureShape.new(name: 'FinancialRecordError')
    FinancialRecordErrorList = Shapes::ListShape.new(name: 'FinancialRecordErrorList')
    FinancialRecordId = Shapes::StringShape.new(name: 'FinancialRecordId')
    FinancialRecordIdentifier = Shapes::StringShape.new(name: 'FinancialRecordIdentifier')
    FinancialRecordKey = Shapes::UnionShape.new(name: 'FinancialRecordKey')
    FinancialRecordKeyList = Shapes::ListShape.new(name: 'FinancialRecordKeyList')
    FinancialRecordList = Shapes::ListShape.new(name: 'FinancialRecordList')
    FinancialRecordSortField = Shapes::StringShape.new(name: 'FinancialRecordSortField')
    FinancialRecordStatus = Shapes::StringShape.new(name: 'FinancialRecordStatus')
    FinancialRecordSummary = Shapes::StructureShape.new(name: 'FinancialRecordSummary')
    FinancialRecordSummaryList = Shapes::ListShape.new(name: 'FinancialRecordSummaryList')
    FinancialRecordType = Shapes::StringShape.new(name: 'FinancialRecordType')
    FinancialRecordTypeList = Shapes::ListShape.new(name: 'FinancialRecordTypeList')
    GetAccountBalanceRequest = Shapes::StructureShape.new(name: 'GetAccountBalanceRequest')
    GetAccountBalanceRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetAccountBalanceRequestMaxResultsInteger')
    GetAccountBalanceResponse = Shapes::StructureShape.new(name: 'GetAccountBalanceResponse')
    GetFinancialRecordRequest = Shapes::StructureShape.new(name: 'GetFinancialRecordRequest')
    GetFinancialRecordResponse = Shapes::StructureShape.new(name: 'GetFinancialRecordResponse')
    GetPaymentInstrumentRequest = Shapes::StructureShape.new(name: 'GetPaymentInstrumentRequest')
    GetPaymentInstrumentResponse = Shapes::StructureShape.new(name: 'GetPaymentInstrumentResponse')
    InNetBanking = Shapes::StructureShape.new(name: 'InNetBanking')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvoiceDetails = Shapes::StructureShape.new(name: 'InvoiceDetails')
    InvoiceFrequency = Shapes::StringShape.new(name: 'InvoiceFrequency')
    InvoiceId = Shapes::StringShape.new(name: 'InvoiceId')
    Last4 = Shapes::StringShape.new(name: 'Last4')
    LineOfBusiness = Shapes::StringShape.new(name: 'LineOfBusiness')
    ListFinancialRecordsRequest = Shapes::StructureShape.new(name: 'ListFinancialRecordsRequest')
    ListFinancialRecordsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListFinancialRecordsRequestMaxResultsInteger')
    ListFinancialRecordsResponse = Shapes::StructureShape.new(name: 'ListFinancialRecordsResponse')
    ListPaymentInstrumentsRequest = Shapes::StructureShape.new(name: 'ListPaymentInstrumentsRequest')
    ListPaymentInstrumentsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListPaymentInstrumentsRequestMaxResultsInteger')
    ListPaymentInstrumentsResponse = Shapes::StructureShape.new(name: 'ListPaymentInstrumentsResponse')
    MerchantOfRecord = Shapes::StringShape.new(name: 'MerchantOfRecord')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PaymentInstrument = Shapes::StructureShape.new(name: 'PaymentInstrument')
    PaymentInstrumentArn = Shapes::StringShape.new(name: 'PaymentInstrumentArn')
    PaymentInstrumentDetails = Shapes::UnionShape.new(name: 'PaymentInstrumentDetails')
    PaymentInstrumentId = Shapes::StringShape.new(name: 'PaymentInstrumentId')
    PaymentInstrumentIdentifier = Shapes::StringShape.new(name: 'PaymentInstrumentIdentifier')
    PaymentInstrumentStatus = Shapes::StringShape.new(name: 'PaymentInstrumentStatus')
    PaymentInstrumentSummary = Shapes::StructureShape.new(name: 'PaymentInstrumentSummary')
    PaymentInstrumentSummaryList = Shapes::ListShape.new(name: 'PaymentInstrumentSummaryList')
    PaymentMethod = Shapes::StringShape.new(name: 'PaymentMethod')
    PaymentTerms = Shapes::StringShape.new(name: 'PaymentTerms')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SepaBankAccount = Shapes::StructureShape.new(name: 'SepaBankAccount')
    SettlementStatus = Shapes::StringShape.new(name: 'SettlementStatus')
    SettlementStatusList = Shapes::ListShape.new(name: 'SettlementStatusList')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UkBacsBankAccount = Shapes::StructureShape.new(name: 'UkBacsBankAccount')
    Upi = Shapes::StructureShape.new(name: 'Upi')
    UsAchBankAccount = Shapes::StructureShape.new(name: 'UsAchBankAccount')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionFieldName = Shapes::StringShape.new(name: 'ValidationExceptionFieldName')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.add_member(:reason, Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, location_name: "reason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountBalance.add_member(:amount, Shapes::ShapeRef.new(shape: CurrencyAmount, required: true, location_name: "amount"))
    AccountBalance.add_member(:merchant_of_record, Shapes::ShapeRef.new(shape: MerchantOfRecord, required: true, location_name: "merchantOfRecord"))
    AccountBalance.struct_class = Types::AccountBalance

    AccountBalanceList.member = Shapes::ShapeRef.new(shape: AccountBalance)

    Balances.add_member(:outstanding, Shapes::ShapeRef.new(shape: CurrencyAmount, required: true, location_name: "outstanding"))
    Balances.add_member(:processing, Shapes::ShapeRef.new(shape: CurrencyAmount, required: true, location_name: "processing"))
    Balances.add_member(:settled, Shapes::ShapeRef.new(shape: CurrencyAmount, required: true, location_name: "settled"))
    Balances.add_member(:canceled, Shapes::ShapeRef.new(shape: CurrencyAmount, required: true, location_name: "canceled"))
    Balances.struct_class = Types::Balances

    BatchGetFinancialRecordRequest.add_member(:keys, Shapes::ShapeRef.new(shape: FinancialRecordKeyList, required: true, location_name: "keys"))
    BatchGetFinancialRecordRequest.struct_class = Types::BatchGetFinancialRecordRequest

    BatchGetFinancialRecordResponse.add_member(:financial_records, Shapes::ShapeRef.new(shape: FinancialRecordList, required: true, location_name: "financialRecords"))
    BatchGetFinancialRecordResponse.add_member(:errors, Shapes::ShapeRef.new(shape: FinancialRecordErrorList, required: true, location_name: "errors"))
    BatchGetFinancialRecordResponse.struct_class = Types::BatchGetFinancialRecordResponse

    BillingPeriod.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    BillingPeriod.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endDate"))
    BillingPeriod.struct_class = Types::BillingPeriod

    BusinessUnit.add_member(:merchant_of_record, Shapes::ShapeRef.new(shape: MerchantOfRecord, required: true, location_name: "merchantOfRecord"))
    BusinessUnit.add_member(:line_of_business, Shapes::ShapeRef.new(shape: LineOfBusiness, location_name: "lineOfBusiness"))
    BusinessUnit.struct_class = Types::BusinessUnit

    Card.add_member(:brand, Shapes::ShapeRef.new(shape: CardBrand, location_name: "brand"))
    Card.add_member(:last4, Shapes::ShapeRef.new(shape: Last4, required: true, location_name: "last4"))
    Card.add_member(:expiration_month, Shapes::ShapeRef.new(shape: ExpirationMonth, location_name: "expirationMonth"))
    Card.add_member(:expiration_year, Shapes::ShapeRef.new(shape: ExpirationYear, location_name: "expirationYear"))
    Card.add_member(:card_type, Shapes::ShapeRef.new(shape: CardType, location_name: "cardType"))
    Card.add_member(:issuing_bank, Shapes::ShapeRef.new(shape: BankName, location_name: "issuingBank"))
    Card.add_member(:issuer_country, Shapes::ShapeRef.new(shape: CountryCode, location_name: "issuerCountry"))
    Card.struct_class = Types::Card

    CnBankRedirect.add_member(:bank_code, Shapes::ShapeRef.new(shape: BankCode, location_name: "bankCode"))
    CnBankRedirect.struct_class = Types::CnBankRedirect

    CreditMemoDetails.add_member(:invoice_id, Shapes::ShapeRef.new(shape: InvoiceId, required: true, location_name: "invoiceId"))
    CreditMemoDetails.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, required: true, location_name: "billingPeriod"))
    CreditMemoDetails.struct_class = Types::CreditMemoDetails

    CurrencyAmount.add_member(:value, Shapes::ShapeRef.new(shape: DecimalString, required: true, location_name: "value"))
    CurrencyAmount.add_member(:currency, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currency"))
    CurrencyAmount.struct_class = Types::CurrencyAmount

    FinancialRecord.add_member(:id, Shapes::ShapeRef.new(shape: FinancialRecordId, required: true, location_name: "id"))
    FinancialRecord.add_member(:type, Shapes::ShapeRef.new(shape: FinancialRecordType, required: true, location_name: "type"))
    FinancialRecord.add_member(:business_unit, Shapes::ShapeRef.new(shape: BusinessUnit, required: true, location_name: "businessUnit"))
    FinancialRecord.add_member(:amount, Shapes::ShapeRef.new(shape: CurrencyAmount, required: true, location_name: "amount"))
    FinancialRecord.add_member(:balances, Shapes::ShapeRef.new(shape: Balances, required: true, location_name: "balances"))
    FinancialRecord.add_member(:settlement_status, Shapes::ShapeRef.new(shape: SettlementStatus, required: true, location_name: "settlementStatus"))
    FinancialRecord.add_member(:status, Shapes::ShapeRef.new(shape: FinancialRecordStatus, required: true, location_name: "status"))
    FinancialRecord.add_member(:issued_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "issuedAt"))
    FinancialRecord.add_member(:closed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "closedAt"))
    FinancialRecord.add_member(:details, Shapes::ShapeRef.new(shape: FinancialRecordDetails, required: true, location_name: "details"))
    FinancialRecord.struct_class = Types::FinancialRecord

    FinancialRecordDetails.add_member(:invoice_details, Shapes::ShapeRef.new(shape: InvoiceDetails, location_name: "invoiceDetails"))
    FinancialRecordDetails.add_member(:credit_memo_details, Shapes::ShapeRef.new(shape: CreditMemoDetails, location_name: "creditMemoDetails"))
    FinancialRecordDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FinancialRecordDetails.add_member_subclass(:invoice_details, Types::FinancialRecordDetails::InvoiceDetails)
    FinancialRecordDetails.add_member_subclass(:credit_memo_details, Types::FinancialRecordDetails::CreditMemoDetails)
    FinancialRecordDetails.add_member_subclass(:unknown, Types::FinancialRecordDetails::Unknown)
    FinancialRecordDetails.struct_class = Types::FinancialRecordDetails

    FinancialRecordError.add_member(:key, Shapes::ShapeRef.new(shape: FinancialRecordKey, required: true, location_name: "key"))
    FinancialRecordError.add_member(:code, Shapes::ShapeRef.new(shape: BatchErrorCode, required: true, location_name: "code"))
    FinancialRecordError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    FinancialRecordError.struct_class = Types::FinancialRecordError

    FinancialRecordErrorList.member = Shapes::ShapeRef.new(shape: FinancialRecordError)

    FinancialRecordKey.add_member(:identifier, Shapes::ShapeRef.new(shape: FinancialRecordIdentifier, location_name: "identifier"))
    FinancialRecordKey.add_member(:invoice_identifier, Shapes::ShapeRef.new(shape: InvoiceId, location_name: "invoiceIdentifier"))
    FinancialRecordKey.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FinancialRecordKey.add_member_subclass(:identifier, Types::FinancialRecordKey::Identifier)
    FinancialRecordKey.add_member_subclass(:invoice_identifier, Types::FinancialRecordKey::InvoiceIdentifier)
    FinancialRecordKey.add_member_subclass(:unknown, Types::FinancialRecordKey::Unknown)
    FinancialRecordKey.struct_class = Types::FinancialRecordKey

    FinancialRecordKeyList.member = Shapes::ShapeRef.new(shape: FinancialRecordKey)

    FinancialRecordList.member = Shapes::ShapeRef.new(shape: FinancialRecord)

    FinancialRecordSummary.add_member(:id, Shapes::ShapeRef.new(shape: FinancialRecordId, required: true, location_name: "id"))
    FinancialRecordSummary.add_member(:type, Shapes::ShapeRef.new(shape: FinancialRecordType, required: true, location_name: "type"))
    FinancialRecordSummary.add_member(:business_unit, Shapes::ShapeRef.new(shape: BusinessUnit, required: true, location_name: "businessUnit"))
    FinancialRecordSummary.add_member(:amount, Shapes::ShapeRef.new(shape: CurrencyAmount, required: true, location_name: "amount"))
    FinancialRecordSummary.add_member(:balances, Shapes::ShapeRef.new(shape: Balances, required: true, location_name: "balances"))
    FinancialRecordSummary.add_member(:settlement_status, Shapes::ShapeRef.new(shape: SettlementStatus, required: true, location_name: "settlementStatus"))
    FinancialRecordSummary.add_member(:status, Shapes::ShapeRef.new(shape: FinancialRecordStatus, required: true, location_name: "status"))
    FinancialRecordSummary.add_member(:issued_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "issuedAt"))
    FinancialRecordSummary.add_member(:closed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "closedAt"))
    FinancialRecordSummary.struct_class = Types::FinancialRecordSummary

    FinancialRecordSummaryList.member = Shapes::ShapeRef.new(shape: FinancialRecordSummary)

    FinancialRecordTypeList.member = Shapes::ShapeRef.new(shape: FinancialRecordType)

    GetAccountBalanceRequest.add_member(:balance_type, Shapes::ShapeRef.new(shape: BalanceType, required: true, location_name: "balanceType"))
    GetAccountBalanceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    GetAccountBalanceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetAccountBalanceRequestMaxResultsInteger, location_name: "maxResults"))
    GetAccountBalanceRequest.struct_class = Types::GetAccountBalanceRequest

    GetAccountBalanceResponse.add_member(:account_balances, Shapes::ShapeRef.new(shape: AccountBalanceList, required: true, location_name: "accountBalances"))
    GetAccountBalanceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    GetAccountBalanceResponse.struct_class = Types::GetAccountBalanceResponse

    GetFinancialRecordRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: FinancialRecordIdentifier, location_name: "identifier"))
    GetFinancialRecordRequest.add_member(:invoice_identifier, Shapes::ShapeRef.new(shape: InvoiceId, location_name: "invoiceIdentifier"))
    GetFinancialRecordRequest.struct_class = Types::GetFinancialRecordRequest

    GetFinancialRecordResponse.add_member(:financial_record, Shapes::ShapeRef.new(shape: FinancialRecord, required: true, location_name: "financialRecord"))
    GetFinancialRecordResponse.struct_class = Types::GetFinancialRecordResponse

    GetPaymentInstrumentRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: PaymentInstrumentIdentifier, required: true, location_name: "identifier"))
    GetPaymentInstrumentRequest.struct_class = Types::GetPaymentInstrumentRequest

    GetPaymentInstrumentResponse.add_member(:payment_instrument, Shapes::ShapeRef.new(shape: PaymentInstrument, required: true, location_name: "paymentInstrument"))
    GetPaymentInstrumentResponse.struct_class = Types::GetPaymentInstrumentResponse

    InNetBanking.add_member(:bank_code, Shapes::ShapeRef.new(shape: BankCode, required: true, location_name: "bankCode"))
    InNetBanking.add_member(:bank_name, Shapes::ShapeRef.new(shape: BankName, location_name: "bankName"))
    InNetBanking.struct_class = Types::InNetBanking

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    InvoiceDetails.add_member(:invoice_id, Shapes::ShapeRef.new(shape: InvoiceId, required: true, location_name: "invoiceId"))
    InvoiceDetails.add_member(:due_status, Shapes::ShapeRef.new(shape: DueStatus, location_name: "dueStatus"))
    InvoiceDetails.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, required: true, location_name: "billingPeriod"))
    InvoiceDetails.add_member(:due_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "dueDate"))
    InvoiceDetails.add_member(:payment_terms, Shapes::ShapeRef.new(shape: PaymentTerms, location_name: "paymentTerms"))
    InvoiceDetails.add_member(:invoice_frequency, Shapes::ShapeRef.new(shape: InvoiceFrequency, required: true, location_name: "invoiceFrequency"))
    InvoiceDetails.struct_class = Types::InvoiceDetails

    ListFinancialRecordsRequest.add_member(:types, Shapes::ShapeRef.new(shape: FinancialRecordTypeList, required: true, location_name: "types"))
    ListFinancialRecordsRequest.add_member(:settlement_statuses, Shapes::ShapeRef.new(shape: SettlementStatusList, location_name: "settlementStatuses"))
    ListFinancialRecordsRequest.add_member(:issued_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "issuedAfter"))
    ListFinancialRecordsRequest.add_member(:issued_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "issuedBefore"))
    ListFinancialRecordsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: FinancialRecordSortField, location_name: "sortBy"))
    ListFinancialRecordsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListFinancialRecordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListFinancialRecordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFinancialRecordsRequestMaxResultsInteger, location_name: "maxResults"))
    ListFinancialRecordsRequest.struct_class = Types::ListFinancialRecordsRequest

    ListFinancialRecordsResponse.add_member(:financial_record_summaries, Shapes::ShapeRef.new(shape: FinancialRecordSummaryList, required: true, location_name: "financialRecordSummaries"))
    ListFinancialRecordsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListFinancialRecordsResponse.struct_class = Types::ListFinancialRecordsResponse

    ListPaymentInstrumentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPaymentInstrumentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPaymentInstrumentsRequestMaxResultsInteger, location_name: "maxResults"))
    ListPaymentInstrumentsRequest.struct_class = Types::ListPaymentInstrumentsRequest

    ListPaymentInstrumentsResponse.add_member(:payment_instrument_summaries, Shapes::ShapeRef.new(shape: PaymentInstrumentSummaryList, required: true, location_name: "paymentInstrumentSummaries"))
    ListPaymentInstrumentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPaymentInstrumentsResponse.struct_class = Types::ListPaymentInstrumentsResponse

    PaymentInstrument.add_member(:arn, Shapes::ShapeRef.new(shape: PaymentInstrumentArn, required: true, location_name: "arn"))
    PaymentInstrument.add_member(:payment_method, Shapes::ShapeRef.new(shape: PaymentMethod, required: true, location_name: "paymentMethod"))
    PaymentInstrument.add_member(:status, Shapes::ShapeRef.new(shape: PaymentInstrumentStatus, required: true, location_name: "status"))
    PaymentInstrument.add_member(:details, Shapes::ShapeRef.new(shape: PaymentInstrumentDetails, location_name: "details"))
    PaymentInstrument.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    PaymentInstrument.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    PaymentInstrument.struct_class = Types::PaymentInstrument

    PaymentInstrumentDetails.add_member(:card, Shapes::ShapeRef.new(shape: Card, location_name: "card"))
    PaymentInstrumentDetails.add_member(:us_ach_bank_account, Shapes::ShapeRef.new(shape: UsAchBankAccount, location_name: "usAchBankAccount"))
    PaymentInstrumentDetails.add_member(:sepa_bank_account, Shapes::ShapeRef.new(shape: SepaBankAccount, location_name: "sepaBankAccount"))
    PaymentInstrumentDetails.add_member(:uk_bacs_bank_account, Shapes::ShapeRef.new(shape: UkBacsBankAccount, location_name: "ukBacsBankAccount"))
    PaymentInstrumentDetails.add_member(:in_net_banking, Shapes::ShapeRef.new(shape: InNetBanking, location_name: "inNetBanking"))
    PaymentInstrumentDetails.add_member(:cn_bank_redirect, Shapes::ShapeRef.new(shape: CnBankRedirect, location_name: "cnBankRedirect"))
    PaymentInstrumentDetails.add_member(:upi, Shapes::ShapeRef.new(shape: Upi, location_name: "upi"))
    PaymentInstrumentDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PaymentInstrumentDetails.add_member_subclass(:card, Types::PaymentInstrumentDetails::Card)
    PaymentInstrumentDetails.add_member_subclass(:us_ach_bank_account, Types::PaymentInstrumentDetails::UsAchBankAccount)
    PaymentInstrumentDetails.add_member_subclass(:sepa_bank_account, Types::PaymentInstrumentDetails::SepaBankAccount)
    PaymentInstrumentDetails.add_member_subclass(:uk_bacs_bank_account, Types::PaymentInstrumentDetails::UkBacsBankAccount)
    PaymentInstrumentDetails.add_member_subclass(:in_net_banking, Types::PaymentInstrumentDetails::InNetBanking)
    PaymentInstrumentDetails.add_member_subclass(:cn_bank_redirect, Types::PaymentInstrumentDetails::CnBankRedirect)
    PaymentInstrumentDetails.add_member_subclass(:upi, Types::PaymentInstrumentDetails::Upi)
    PaymentInstrumentDetails.add_member_subclass(:unknown, Types::PaymentInstrumentDetails::Unknown)
    PaymentInstrumentDetails.struct_class = Types::PaymentInstrumentDetails

    PaymentInstrumentSummary.add_member(:id, Shapes::ShapeRef.new(shape: PaymentInstrumentId, required: true, location_name: "id"))
    PaymentInstrumentSummary.add_member(:arn, Shapes::ShapeRef.new(shape: PaymentInstrumentArn, required: true, location_name: "arn"))
    PaymentInstrumentSummary.add_member(:payment_method, Shapes::ShapeRef.new(shape: PaymentMethod, required: true, location_name: "paymentMethod"))
    PaymentInstrumentSummary.add_member(:status, Shapes::ShapeRef.new(shape: PaymentInstrumentStatus, required: true, location_name: "status"))
    PaymentInstrumentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    PaymentInstrumentSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    PaymentInstrumentSummary.struct_class = Types::PaymentInstrumentSummary

    PaymentInstrumentSummaryList.member = Shapes::ShapeRef.new(shape: PaymentInstrumentSummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SepaBankAccount.add_member(:account_number_tail, Shapes::ShapeRef.new(shape: BankAccountNumberTail, location_name: "accountNumberTail"))
    SepaBankAccount.add_member(:account_holder_name, Shapes::ShapeRef.new(shape: AccountHolderName, location_name: "accountHolderName"))
    SepaBankAccount.add_member(:bank_name, Shapes::ShapeRef.new(shape: BankName, location_name: "bankName"))
    SepaBankAccount.add_member(:account_type, Shapes::ShapeRef.new(shape: BankAccountType, location_name: "accountType"))
    SepaBankAccount.struct_class = Types::SepaBankAccount

    SettlementStatusList.member = Shapes::ShapeRef.new(shape: SettlementStatus)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UkBacsBankAccount.add_member(:account_number_tail, Shapes::ShapeRef.new(shape: BankAccountNumberTail, location_name: "accountNumberTail"))
    UkBacsBankAccount.add_member(:account_holder_name, Shapes::ShapeRef.new(shape: AccountHolderName, location_name: "accountHolderName"))
    UkBacsBankAccount.add_member(:bank_name, Shapes::ShapeRef.new(shape: BankName, location_name: "bankName"))
    UkBacsBankAccount.add_member(:account_type, Shapes::ShapeRef.new(shape: BankAccountType, location_name: "accountType"))
    UkBacsBankAccount.struct_class = Types::UkBacsBankAccount

    Upi.add_member(:app_name, Shapes::ShapeRef.new(shape: DisplayLabel, location_name: "appName"))
    Upi.struct_class = Types::Upi

    UsAchBankAccount.add_member(:account_number_tail, Shapes::ShapeRef.new(shape: BankAccountNumberTail, location_name: "accountNumberTail"))
    UsAchBankAccount.add_member(:account_holder_name, Shapes::ShapeRef.new(shape: AccountHolderName, location_name: "accountHolderName"))
    UsAchBankAccount.add_member(:bank_name, Shapes::ShapeRef.new(shape: BankName, location_name: "bankName"))
    UsAchBankAccount.add_member(:account_type, Shapes::ShapeRef.new(shape: BankAccountType, location_name: "accountType"))
    UsAchBankAccount.struct_class = Types::UsAchBankAccount

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: ValidationExceptionFieldName, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-09-23"

      api.metadata = {
        "apiVersion" => "2026-09-23",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "payments",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Payments",
        "serviceId" => "Payments",
        "signatureVersion" => "v4",
        "signingName" => "payments",
        "targetPrefix" => "AWSPayments",
        "uid" => "payments-2026-09-23",
      }

      api.add_operation(:batch_get_financial_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetFinancialRecord"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetFinancialRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetFinancialRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_account_balance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountBalance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccountBalanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountBalanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_financial_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFinancialRecord"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFinancialRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFinancialRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_payment_instrument, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPaymentInstrument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPaymentInstrumentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPaymentInstrumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_financial_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFinancialRecords"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFinancialRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFinancialRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_payment_instruments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPaymentInstruments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPaymentInstrumentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPaymentInstrumentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
