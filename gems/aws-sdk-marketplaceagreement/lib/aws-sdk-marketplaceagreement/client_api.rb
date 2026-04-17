# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MarketplaceAgreement
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccountId = Shapes::StringShape.new(name: 'AWSAccountId')
    AcceptedTerm = Shapes::UnionShape.new(name: 'AcceptedTerm')
    AcceptedTermList = Shapes::ListShape.new(name: 'AcceptedTermList')
    Acceptor = Shapes::StructureShape.new(name: 'Acceptor')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AgreementCancellationRequestCancellationReason = Shapes::StringShape.new(name: 'AgreementCancellationRequestCancellationReason')
    AgreementCancellationRequestDescription = Shapes::StringShape.new(name: 'AgreementCancellationRequestDescription')
    AgreementCancellationRequestId = Shapes::StringShape.new(name: 'AgreementCancellationRequestId')
    AgreementCancellationRequestReasonCode = Shapes::StringShape.new(name: 'AgreementCancellationRequestReasonCode')
    AgreementCancellationRequestStatus = Shapes::StringShape.new(name: 'AgreementCancellationRequestStatus')
    AgreementCancellationRequestStatusMessage = Shapes::StringShape.new(name: 'AgreementCancellationRequestStatusMessage')
    AgreementCancellationRequestSummary = Shapes::StructureShape.new(name: 'AgreementCancellationRequestSummary')
    AgreementCancellationRequestSummaryList = Shapes::ListShape.new(name: 'AgreementCancellationRequestSummaryList')
    AgreementId = Shapes::StringShape.new(name: 'AgreementId')
    AgreementInvoiceLineItemGroupSummaries = Shapes::ListShape.new(name: 'AgreementInvoiceLineItemGroupSummaries')
    AgreementInvoiceLineItemGroupSummary = Shapes::StructureShape.new(name: 'AgreementInvoiceLineItemGroupSummary')
    AgreementResourceType = Shapes::StringShape.new(name: 'AgreementResourceType')
    AgreementStatus = Shapes::StringShape.new(name: 'AgreementStatus')
    AgreementType = Shapes::StringShape.new(name: 'AgreementType')
    AgreementViewSummary = Shapes::StructureShape.new(name: 'AgreementViewSummary')
    AgreementViewSummaryList = Shapes::ListShape.new(name: 'AgreementViewSummaryList')
    BatchCreateBillingAdjustmentError = Shapes::StructureShape.new(name: 'BatchCreateBillingAdjustmentError')
    BatchCreateBillingAdjustmentErrorList = Shapes::ListShape.new(name: 'BatchCreateBillingAdjustmentErrorList')
    BatchCreateBillingAdjustmentItem = Shapes::StructureShape.new(name: 'BatchCreateBillingAdjustmentItem')
    BatchCreateBillingAdjustmentItemList = Shapes::ListShape.new(name: 'BatchCreateBillingAdjustmentItemList')
    BatchCreateBillingAdjustmentRequestEntry = Shapes::StructureShape.new(name: 'BatchCreateBillingAdjustmentRequestEntry')
    BatchCreateBillingAdjustmentRequestEntryList = Shapes::ListShape.new(name: 'BatchCreateBillingAdjustmentRequestEntryList')
    BatchCreateBillingAdjustmentRequestInput = Shapes::StructureShape.new(name: 'BatchCreateBillingAdjustmentRequestInput')
    BatchCreateBillingAdjustmentRequestOutput = Shapes::StructureShape.new(name: 'BatchCreateBillingAdjustmentRequestOutput')
    BillingAdjustmentDescription = Shapes::StringShape.new(name: 'BillingAdjustmentDescription')
    BillingAdjustmentErrorCode = Shapes::StringShape.new(name: 'BillingAdjustmentErrorCode')
    BillingAdjustmentReasonCode = Shapes::StringShape.new(name: 'BillingAdjustmentReasonCode')
    BillingAdjustmentRequestId = Shapes::StringShape.new(name: 'BillingAdjustmentRequestId')
    BillingAdjustmentStatus = Shapes::StringShape.new(name: 'BillingAdjustmentStatus')
    BillingAdjustmentStatusMessage = Shapes::StringShape.new(name: 'BillingAdjustmentStatusMessage')
    BillingAdjustmentSummary = Shapes::StructureShape.new(name: 'BillingAdjustmentSummary')
    BillingAdjustmentSummaryList = Shapes::ListShape.new(name: 'BillingAdjustmentSummaryList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoundedString = Shapes::StringShape.new(name: 'BoundedString')
    ByolPricingTerm = Shapes::StructureShape.new(name: 'ByolPricingTerm')
    CancelAgreementCancellationRequestInput = Shapes::StructureShape.new(name: 'CancelAgreementCancellationRequestInput')
    CancelAgreementCancellationRequestOutput = Shapes::StructureShape.new(name: 'CancelAgreementCancellationRequestOutput')
    CancelAgreementPaymentRequestInput = Shapes::StructureShape.new(name: 'CancelAgreementPaymentRequestInput')
    CancelAgreementPaymentRequestOutput = Shapes::StructureShape.new(name: 'CancelAgreementPaymentRequestOutput')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    ChargeId = Shapes::StringShape.new(name: 'ChargeId')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConfigurableUpfrontPricingTerm = Shapes::StructureShape.new(name: 'ConfigurableUpfrontPricingTerm')
    ConfigurableUpfrontPricingTermConfiguration = Shapes::StructureShape.new(name: 'ConfigurableUpfrontPricingTermConfiguration')
    ConfigurableUpfrontRateCardItem = Shapes::StructureShape.new(name: 'ConfigurableUpfrontRateCardItem')
    ConfigurableUpfrontRateCardList = Shapes::ListShape.new(name: 'ConfigurableUpfrontRateCardList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Constraints = Shapes::StructureShape.new(name: 'Constraints')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    DescribeAgreementInput = Shapes::StructureShape.new(name: 'DescribeAgreementInput')
    DescribeAgreementOutput = Shapes::StructureShape.new(name: 'DescribeAgreementOutput')
    Dimension = Shapes::StructureShape.new(name: 'Dimension')
    DimensionList = Shapes::ListShape.new(name: 'DimensionList')
    DocumentItem = Shapes::StructureShape.new(name: 'DocumentItem')
    DocumentList = Shapes::ListShape.new(name: 'DocumentList')
    EstimatedCharges = Shapes::StructureShape.new(name: 'EstimatedCharges')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    FixedUpfrontPricingTerm = Shapes::StructureShape.new(name: 'FixedUpfrontPricingTerm')
    FreeTrialPricingTerm = Shapes::StructureShape.new(name: 'FreeTrialPricingTerm')
    GetAgreementCancellationRequestInput = Shapes::StructureShape.new(name: 'GetAgreementCancellationRequestInput')
    GetAgreementCancellationRequestOutput = Shapes::StructureShape.new(name: 'GetAgreementCancellationRequestOutput')
    GetAgreementPaymentRequestInput = Shapes::StructureShape.new(name: 'GetAgreementPaymentRequestInput')
    GetAgreementPaymentRequestOutput = Shapes::StructureShape.new(name: 'GetAgreementPaymentRequestOutput')
    GetAgreementTermsInput = Shapes::StructureShape.new(name: 'GetAgreementTermsInput')
    GetAgreementTermsOutput = Shapes::StructureShape.new(name: 'GetAgreementTermsOutput')
    GetBillingAdjustmentRequestInput = Shapes::StructureShape.new(name: 'GetBillingAdjustmentRequestInput')
    GetBillingAdjustmentRequestOutput = Shapes::StructureShape.new(name: 'GetBillingAdjustmentRequestOutput')
    GrantItem = Shapes::StructureShape.new(name: 'GrantItem')
    GrantList = Shapes::ListShape.new(name: 'GrantList')
    ISO8601Duration = Shapes::StringShape.new(name: 'ISO8601Duration')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvoiceBillingPeriod = Shapes::StructureShape.new(name: 'InvoiceBillingPeriod')
    InvoiceBillingPeriodMonthInteger = Shapes::IntegerShape.new(name: 'InvoiceBillingPeriodMonthInteger')
    InvoiceBillingPeriodYearInteger = Shapes::IntegerShape.new(name: 'InvoiceBillingPeriodYearInteger')
    InvoiceId = Shapes::StringShape.new(name: 'InvoiceId')
    InvoiceType = Shapes::StringShape.new(name: 'InvoiceType')
    InvoicingEntity = Shapes::StructureShape.new(name: 'InvoicingEntity')
    LegalTerm = Shapes::StructureShape.new(name: 'LegalTerm')
    LineItemGroupBy = Shapes::StringShape.new(name: 'LineItemGroupBy')
    ListAgreementCancellationRequestsInput = Shapes::StructureShape.new(name: 'ListAgreementCancellationRequestsInput')
    ListAgreementCancellationRequestsOutput = Shapes::StructureShape.new(name: 'ListAgreementCancellationRequestsOutput')
    ListAgreementInvoiceLineItemsInput = Shapes::StructureShape.new(name: 'ListAgreementInvoiceLineItemsInput')
    ListAgreementInvoiceLineItemsOutput = Shapes::StructureShape.new(name: 'ListAgreementInvoiceLineItemsOutput')
    ListAgreementPaymentRequestsInput = Shapes::StructureShape.new(name: 'ListAgreementPaymentRequestsInput')
    ListAgreementPaymentRequestsOutput = Shapes::StructureShape.new(name: 'ListAgreementPaymentRequestsOutput')
    ListBillingAdjustmentRequestsInput = Shapes::StructureShape.new(name: 'ListBillingAdjustmentRequestsInput')
    ListBillingAdjustmentRequestsOutput = Shapes::StructureShape.new(name: 'ListBillingAdjustmentRequestsOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OfferId = Shapes::StringShape.new(name: 'OfferId')
    OfferSetId = Shapes::StringShape.new(name: 'OfferSetId')
    PartyType = Shapes::StringShape.new(name: 'PartyType')
    PaymentRequestApprovalStrategy = Shapes::StringShape.new(name: 'PaymentRequestApprovalStrategy')
    PaymentRequestDescription = Shapes::StringShape.new(name: 'PaymentRequestDescription')
    PaymentRequestId = Shapes::StringShape.new(name: 'PaymentRequestId')
    PaymentRequestName = Shapes::StringShape.new(name: 'PaymentRequestName')
    PaymentRequestStatus = Shapes::StringShape.new(name: 'PaymentRequestStatus')
    PaymentRequestStatusMessage = Shapes::StringShape.new(name: 'PaymentRequestStatusMessage')
    PaymentRequestSummary = Shapes::StructureShape.new(name: 'PaymentRequestSummary')
    PaymentRequestSummaryList = Shapes::ListShape.new(name: 'PaymentRequestSummaryList')
    PaymentScheduleTerm = Shapes::StructureShape.new(name: 'PaymentScheduleTerm')
    PositiveAmountUpto8Decimals = Shapes::StringShape.new(name: 'PositiveAmountUpto8Decimals')
    PositiveIntegerWithDefaultValueOne = Shapes::IntegerShape.new(name: 'PositiveIntegerWithDefaultValueOne')
    PricingCurrencyAmount = Shapes::StructureShape.new(name: 'PricingCurrencyAmount')
    ProposalSummary = Shapes::StructureShape.new(name: 'ProposalSummary')
    Proposer = Shapes::StructureShape.new(name: 'Proposer')
    RateCardItem = Shapes::StructureShape.new(name: 'RateCardItem')
    RateCardList = Shapes::ListShape.new(name: 'RateCardList')
    RecurringPaymentTerm = Shapes::StructureShape.new(name: 'RecurringPaymentTerm')
    RenewalTerm = Shapes::StructureShape.new(name: 'RenewalTerm')
    RenewalTermConfiguration = Shapes::StructureShape.new(name: 'RenewalTermConfiguration')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Resources = Shapes::ListShape.new(name: 'Resources')
    ScheduleItem = Shapes::StructureShape.new(name: 'ScheduleItem')
    ScheduleList = Shapes::ListShape.new(name: 'ScheduleList')
    SearchAgreementsInput = Shapes::StructureShape.new(name: 'SearchAgreementsInput')
    SearchAgreementsOutput = Shapes::StructureShape.new(name: 'SearchAgreementsOutput')
    Selector = Shapes::StructureShape.new(name: 'Selector')
    SendAgreementCancellationRequestInput = Shapes::StructureShape.new(name: 'SendAgreementCancellationRequestInput')
    SendAgreementCancellationRequestOutput = Shapes::StructureShape.new(name: 'SendAgreementCancellationRequestOutput')
    SendAgreementPaymentRequestInput = Shapes::StructureShape.new(name: 'SendAgreementPaymentRequestInput')
    SendAgreementPaymentRequestOutput = Shapes::StructureShape.new(name: 'SendAgreementPaymentRequestOutput')
    Sort = Shapes::StructureShape.new(name: 'Sort')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    String = Shapes::StringShape.new(name: 'String')
    SupportTerm = Shapes::StructureShape.new(name: 'SupportTerm')
    TermId = Shapes::StringShape.new(name: 'TermId')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnversionedTermType = Shapes::StringShape.new(name: 'UnversionedTermType')
    UsageBasedPricingTerm = Shapes::StructureShape.new(name: 'UsageBasedPricingTerm')
    UsageBasedRateCardItem = Shapes::StructureShape.new(name: 'UsageBasedRateCardItem')
    UsageBasedRateCardList = Shapes::ListShape.new(name: 'UsageBasedRateCardList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    ValidityTerm = Shapes::StructureShape.new(name: 'ValidityTerm')
    VariablePaymentTerm = Shapes::StructureShape.new(name: 'VariablePaymentTerm')
    VariablePaymentTermConfiguration = Shapes::StructureShape.new(name: 'VariablePaymentTermConfiguration')
    ZeroValueInteger = Shapes::IntegerShape.new(name: 'ZeroValueInteger')

    AcceptedTerm.add_member(:legal_term, Shapes::ShapeRef.new(shape: LegalTerm, location_name: "legalTerm"))
    AcceptedTerm.add_member(:support_term, Shapes::ShapeRef.new(shape: SupportTerm, location_name: "supportTerm"))
    AcceptedTerm.add_member(:renewal_term, Shapes::ShapeRef.new(shape: RenewalTerm, location_name: "renewalTerm"))
    AcceptedTerm.add_member(:usage_based_pricing_term, Shapes::ShapeRef.new(shape: UsageBasedPricingTerm, location_name: "usageBasedPricingTerm"))
    AcceptedTerm.add_member(:configurable_upfront_pricing_term, Shapes::ShapeRef.new(shape: ConfigurableUpfrontPricingTerm, location_name: "configurableUpfrontPricingTerm"))
    AcceptedTerm.add_member(:byol_pricing_term, Shapes::ShapeRef.new(shape: ByolPricingTerm, location_name: "byolPricingTerm"))
    AcceptedTerm.add_member(:recurring_payment_term, Shapes::ShapeRef.new(shape: RecurringPaymentTerm, location_name: "recurringPaymentTerm"))
    AcceptedTerm.add_member(:validity_term, Shapes::ShapeRef.new(shape: ValidityTerm, location_name: "validityTerm"))
    AcceptedTerm.add_member(:payment_schedule_term, Shapes::ShapeRef.new(shape: PaymentScheduleTerm, location_name: "paymentScheduleTerm"))
    AcceptedTerm.add_member(:free_trial_pricing_term, Shapes::ShapeRef.new(shape: FreeTrialPricingTerm, location_name: "freeTrialPricingTerm"))
    AcceptedTerm.add_member(:fixed_upfront_pricing_term, Shapes::ShapeRef.new(shape: FixedUpfrontPricingTerm, location_name: "fixedUpfrontPricingTerm"))
    AcceptedTerm.add_member(:variable_payment_term, Shapes::ShapeRef.new(shape: VariablePaymentTerm, location_name: "variablePaymentTerm"))
    AcceptedTerm.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AcceptedTerm.add_member_subclass(:legal_term, Types::AcceptedTerm::LegalTerm)
    AcceptedTerm.add_member_subclass(:support_term, Types::AcceptedTerm::SupportTerm)
    AcceptedTerm.add_member_subclass(:renewal_term, Types::AcceptedTerm::RenewalTerm)
    AcceptedTerm.add_member_subclass(:usage_based_pricing_term, Types::AcceptedTerm::UsageBasedPricingTerm)
    AcceptedTerm.add_member_subclass(:configurable_upfront_pricing_term, Types::AcceptedTerm::ConfigurableUpfrontPricingTerm)
    AcceptedTerm.add_member_subclass(:byol_pricing_term, Types::AcceptedTerm::ByolPricingTerm)
    AcceptedTerm.add_member_subclass(:recurring_payment_term, Types::AcceptedTerm::RecurringPaymentTerm)
    AcceptedTerm.add_member_subclass(:validity_term, Types::AcceptedTerm::ValidityTerm)
    AcceptedTerm.add_member_subclass(:payment_schedule_term, Types::AcceptedTerm::PaymentScheduleTerm)
    AcceptedTerm.add_member_subclass(:free_trial_pricing_term, Types::AcceptedTerm::FreeTrialPricingTerm)
    AcceptedTerm.add_member_subclass(:fixed_upfront_pricing_term, Types::AcceptedTerm::FixedUpfrontPricingTerm)
    AcceptedTerm.add_member_subclass(:variable_payment_term, Types::AcceptedTerm::VariablePaymentTerm)
    AcceptedTerm.add_member_subclass(:unknown, Types::AcceptedTerm::Unknown)
    AcceptedTerm.struct_class = Types::AcceptedTerm

    AcceptedTermList.member = Shapes::ShapeRef.new(shape: AcceptedTerm)

    Acceptor.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "accountId"))
    Acceptor.struct_class = Types::Acceptor

    AccessDeniedException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AgreementCancellationRequestSummary.add_member(:agreement_cancellation_request_id, Shapes::ShapeRef.new(shape: AgreementCancellationRequestId, location_name: "agreementCancellationRequestId"))
    AgreementCancellationRequestSummary.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, location_name: "agreementId"))
    AgreementCancellationRequestSummary.add_member(:status, Shapes::ShapeRef.new(shape: AgreementCancellationRequestStatus, location_name: "status"))
    AgreementCancellationRequestSummary.add_member(:reason_code, Shapes::ShapeRef.new(shape: AgreementCancellationRequestReasonCode, location_name: "reasonCode"))
    AgreementCancellationRequestSummary.add_member(:agreement_type, Shapes::ShapeRef.new(shape: AgreementType, location_name: "agreementType"))
    AgreementCancellationRequestSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, location_name: "catalog"))
    AgreementCancellationRequestSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    AgreementCancellationRequestSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    AgreementCancellationRequestSummary.struct_class = Types::AgreementCancellationRequestSummary

    AgreementCancellationRequestSummaryList.member = Shapes::ShapeRef.new(shape: AgreementCancellationRequestSummary)

    AgreementInvoiceLineItemGroupSummaries.member = Shapes::ShapeRef.new(shape: AgreementInvoiceLineItemGroupSummary)

    AgreementInvoiceLineItemGroupSummary.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "agreementId"))
    AgreementInvoiceLineItemGroupSummary.add_member(:invoice_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "invoiceId"))
    AgreementInvoiceLineItemGroupSummary.add_member(:pricing_currency_amount, Shapes::ShapeRef.new(shape: PricingCurrencyAmount, location_name: "pricingCurrencyAmount"))
    AgreementInvoiceLineItemGroupSummary.add_member(:invoice_billing_period, Shapes::ShapeRef.new(shape: InvoiceBillingPeriod, location_name: "invoiceBillingPeriod"))
    AgreementInvoiceLineItemGroupSummary.add_member(:issued_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "issuedTime"))
    AgreementInvoiceLineItemGroupSummary.add_member(:invoice_type, Shapes::ShapeRef.new(shape: InvoiceType, location_name: "invoiceType"))
    AgreementInvoiceLineItemGroupSummary.add_member(:invoicing_entity, Shapes::ShapeRef.new(shape: InvoicingEntity, location_name: "invoicingEntity"))
    AgreementInvoiceLineItemGroupSummary.struct_class = Types::AgreementInvoiceLineItemGroupSummary

    AgreementViewSummary.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "agreementId"))
    AgreementViewSummary.add_member(:acceptance_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "acceptanceTime"))
    AgreementViewSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    AgreementViewSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    AgreementViewSummary.add_member(:agreement_type, Shapes::ShapeRef.new(shape: AgreementType, location_name: "agreementType"))
    AgreementViewSummary.add_member(:acceptor, Shapes::ShapeRef.new(shape: Acceptor, location_name: "acceptor"))
    AgreementViewSummary.add_member(:proposer, Shapes::ShapeRef.new(shape: Proposer, location_name: "proposer"))
    AgreementViewSummary.add_member(:proposal_summary, Shapes::ShapeRef.new(shape: ProposalSummary, location_name: "proposalSummary"))
    AgreementViewSummary.add_member(:status, Shapes::ShapeRef.new(shape: AgreementStatus, location_name: "status"))
    AgreementViewSummary.struct_class = Types::AgreementViewSummary

    AgreementViewSummaryList.member = Shapes::ShapeRef.new(shape: AgreementViewSummary)

    BatchCreateBillingAdjustmentError.add_member(:code, Shapes::ShapeRef.new(shape: BillingAdjustmentErrorCode, required: true, location_name: "code"))
    BatchCreateBillingAdjustmentError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchCreateBillingAdjustmentError.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    BatchCreateBillingAdjustmentError.struct_class = Types::BatchCreateBillingAdjustmentError

    BatchCreateBillingAdjustmentErrorList.member = Shapes::ShapeRef.new(shape: BatchCreateBillingAdjustmentError)

    BatchCreateBillingAdjustmentItem.add_member(:billing_adjustment_request_id, Shapes::ShapeRef.new(shape: BillingAdjustmentRequestId, required: true, location_name: "billingAdjustmentRequestId"))
    BatchCreateBillingAdjustmentItem.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    BatchCreateBillingAdjustmentItem.struct_class = Types::BatchCreateBillingAdjustmentItem

    BatchCreateBillingAdjustmentItemList.member = Shapes::ShapeRef.new(shape: BatchCreateBillingAdjustmentItem)

    BatchCreateBillingAdjustmentRequestEntry.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, required: true, location_name: "agreementId"))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:original_invoice_id, Shapes::ShapeRef.new(shape: InvoiceId, required: true, location_name: "originalInvoiceId"))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:adjustment_amount, Shapes::ShapeRef.new(shape: PositiveAmountUpto8Decimals, required: true, location_name: "adjustmentAmount"))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currencyCode"))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:adjustment_reason_code, Shapes::ShapeRef.new(shape: BillingAdjustmentReasonCode, required: true, location_name: "adjustmentReasonCode"))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:description, Shapes::ShapeRef.new(shape: BillingAdjustmentDescription, location_name: "description"))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    BatchCreateBillingAdjustmentRequestEntry.struct_class = Types::BatchCreateBillingAdjustmentRequestEntry

    BatchCreateBillingAdjustmentRequestEntryList.member = Shapes::ShapeRef.new(shape: BatchCreateBillingAdjustmentRequestEntry)

    BatchCreateBillingAdjustmentRequestInput.add_member(:billing_adjustment_request_entries, Shapes::ShapeRef.new(shape: BatchCreateBillingAdjustmentRequestEntryList, required: true, location_name: "billingAdjustmentRequestEntries"))
    BatchCreateBillingAdjustmentRequestInput.struct_class = Types::BatchCreateBillingAdjustmentRequestInput

    BatchCreateBillingAdjustmentRequestOutput.add_member(:items, Shapes::ShapeRef.new(shape: BatchCreateBillingAdjustmentItemList, required: true, location_name: "items"))
    BatchCreateBillingAdjustmentRequestOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateBillingAdjustmentErrorList, required: true, location_name: "errors"))
    BatchCreateBillingAdjustmentRequestOutput.struct_class = Types::BatchCreateBillingAdjustmentRequestOutput

    BillingAdjustmentSummary.add_member(:billing_adjustment_request_id, Shapes::ShapeRef.new(shape: BillingAdjustmentRequestId, required: true, location_name: "billingAdjustmentRequestId"))
    BillingAdjustmentSummary.add_member(:original_invoice_id, Shapes::ShapeRef.new(shape: InvoiceId, required: true, location_name: "originalInvoiceId"))
    BillingAdjustmentSummary.add_member(:adjustment_amount, Shapes::ShapeRef.new(shape: PositiveAmountUpto8Decimals, required: true, location_name: "adjustmentAmount"))
    BillingAdjustmentSummary.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currencyCode"))
    BillingAdjustmentSummary.add_member(:status, Shapes::ShapeRef.new(shape: BillingAdjustmentStatus, required: true, location_name: "status"))
    BillingAdjustmentSummary.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, required: true, location_name: "agreementId"))
    BillingAdjustmentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    BillingAdjustmentSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    BillingAdjustmentSummary.add_member(:agreement_type, Shapes::ShapeRef.new(shape: AgreementType, required: true, location_name: "agreementType"))
    BillingAdjustmentSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    BillingAdjustmentSummary.struct_class = Types::BillingAdjustmentSummary

    BillingAdjustmentSummaryList.member = Shapes::ShapeRef.new(shape: BillingAdjustmentSummary)

    ByolPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    ByolPricingTerm.struct_class = Types::ByolPricingTerm

    CancelAgreementCancellationRequestInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, required: true, location_name: "agreementId"))
    CancelAgreementCancellationRequestInput.add_member(:agreement_cancellation_request_id, Shapes::ShapeRef.new(shape: AgreementCancellationRequestId, required: true, location_name: "agreementCancellationRequestId"))
    CancelAgreementCancellationRequestInput.add_member(:cancellation_reason, Shapes::ShapeRef.new(shape: AgreementCancellationRequestCancellationReason, required: true, location_name: "cancellationReason"))
    CancelAgreementCancellationRequestInput.struct_class = Types::CancelAgreementCancellationRequestInput

    CancelAgreementCancellationRequestOutput.add_member(:agreement_cancellation_request_id, Shapes::ShapeRef.new(shape: AgreementCancellationRequestId, location_name: "agreementCancellationRequestId"))
    CancelAgreementCancellationRequestOutput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, location_name: "agreementId"))
    CancelAgreementCancellationRequestOutput.add_member(:reason_code, Shapes::ShapeRef.new(shape: AgreementCancellationRequestReasonCode, location_name: "reasonCode"))
    CancelAgreementCancellationRequestOutput.add_member(:description, Shapes::ShapeRef.new(shape: AgreementCancellationRequestDescription, location_name: "description"))
    CancelAgreementCancellationRequestOutput.add_member(:status, Shapes::ShapeRef.new(shape: AgreementCancellationRequestStatus, location_name: "status"))
    CancelAgreementCancellationRequestOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: AgreementCancellationRequestStatusMessage, location_name: "statusMessage"))
    CancelAgreementCancellationRequestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    CancelAgreementCancellationRequestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    CancelAgreementCancellationRequestOutput.struct_class = Types::CancelAgreementCancellationRequestOutput

    CancelAgreementPaymentRequestInput.add_member(:payment_request_id, Shapes::ShapeRef.new(shape: PaymentRequestId, required: true, location_name: "paymentRequestId"))
    CancelAgreementPaymentRequestInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, required: true, location_name: "agreementId"))
    CancelAgreementPaymentRequestInput.struct_class = Types::CancelAgreementPaymentRequestInput

    CancelAgreementPaymentRequestOutput.add_member(:payment_request_id, Shapes::ShapeRef.new(shape: PaymentRequestId, location_name: "paymentRequestId"))
    CancelAgreementPaymentRequestOutput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, location_name: "agreementId"))
    CancelAgreementPaymentRequestOutput.add_member(:status, Shapes::ShapeRef.new(shape: PaymentRequestStatus, location_name: "status"))
    CancelAgreementPaymentRequestOutput.add_member(:name, Shapes::ShapeRef.new(shape: PaymentRequestName, location_name: "name"))
    CancelAgreementPaymentRequestOutput.add_member(:description, Shapes::ShapeRef.new(shape: PaymentRequestDescription, location_name: "description"))
    CancelAgreementPaymentRequestOutput.add_member(:charge_amount, Shapes::ShapeRef.new(shape: PositiveAmountUpto8Decimals, location_name: "chargeAmount"))
    CancelAgreementPaymentRequestOutput.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    CancelAgreementPaymentRequestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    CancelAgreementPaymentRequestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    CancelAgreementPaymentRequestOutput.struct_class = Types::CancelAgreementPaymentRequestOutput

    ConfigurableUpfrontPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    ConfigurableUpfrontPricingTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    ConfigurableUpfrontPricingTerm.add_member(:rate_cards, Shapes::ShapeRef.new(shape: ConfigurableUpfrontRateCardList, location_name: "rateCards"))
    ConfigurableUpfrontPricingTerm.add_member(:configuration, Shapes::ShapeRef.new(shape: ConfigurableUpfrontPricingTermConfiguration, location_name: "configuration"))
    ConfigurableUpfrontPricingTerm.struct_class = Types::ConfigurableUpfrontPricingTerm

    ConfigurableUpfrontPricingTermConfiguration.add_member(:selector_value, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "selectorValue"))
    ConfigurableUpfrontPricingTermConfiguration.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionList, required: true, location_name: "dimensions"))
    ConfigurableUpfrontPricingTermConfiguration.struct_class = Types::ConfigurableUpfrontPricingTermConfiguration

    ConfigurableUpfrontRateCardItem.add_member(:selector, Shapes::ShapeRef.new(shape: Selector, location_name: "selector"))
    ConfigurableUpfrontRateCardItem.add_member(:constraints, Shapes::ShapeRef.new(shape: Constraints, location_name: "constraints"))
    ConfigurableUpfrontRateCardItem.add_member(:rate_card, Shapes::ShapeRef.new(shape: RateCardList, location_name: "rateCard"))
    ConfigurableUpfrontRateCardItem.struct_class = Types::ConfigurableUpfrontRateCardItem

    ConfigurableUpfrontRateCardList.member = Shapes::ShapeRef.new(shape: ConfigurableUpfrontRateCardItem)

    ConflictException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    Constraints.add_member(:multiple_dimension_selection, Shapes::ShapeRef.new(shape: BoundedString, location_name: "multipleDimensionSelection"))
    Constraints.add_member(:quantity_configuration, Shapes::ShapeRef.new(shape: BoundedString, location_name: "quantityConfiguration"))
    Constraints.struct_class = Types::Constraints

    DescribeAgreementInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "agreementId"))
    DescribeAgreementInput.struct_class = Types::DescribeAgreementInput

    DescribeAgreementOutput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "agreementId"))
    DescribeAgreementOutput.add_member(:acceptor, Shapes::ShapeRef.new(shape: Acceptor, location_name: "acceptor"))
    DescribeAgreementOutput.add_member(:proposer, Shapes::ShapeRef.new(shape: Proposer, location_name: "proposer"))
    DescribeAgreementOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    DescribeAgreementOutput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    DescribeAgreementOutput.add_member(:acceptance_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "acceptanceTime"))
    DescribeAgreementOutput.add_member(:agreement_type, Shapes::ShapeRef.new(shape: AgreementType, location_name: "agreementType"))
    DescribeAgreementOutput.add_member(:estimated_charges, Shapes::ShapeRef.new(shape: EstimatedCharges, location_name: "estimatedCharges"))
    DescribeAgreementOutput.add_member(:proposal_summary, Shapes::ShapeRef.new(shape: ProposalSummary, location_name: "proposalSummary"))
    DescribeAgreementOutput.add_member(:status, Shapes::ShapeRef.new(shape: AgreementStatus, location_name: "status"))
    DescribeAgreementOutput.struct_class = Types::DescribeAgreementOutput

    Dimension.add_member(:dimension_key, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "dimensionKey"))
    Dimension.add_member(:dimension_value, Shapes::ShapeRef.new(shape: ZeroValueInteger, required: true, location_name: "dimensionValue"))
    Dimension.struct_class = Types::Dimension

    DimensionList.member = Shapes::ShapeRef.new(shape: Dimension)

    DocumentItem.add_member(:type, Shapes::ShapeRef.new(shape: BoundedString, location_name: "type"))
    DocumentItem.add_member(:url, Shapes::ShapeRef.new(shape: BoundedString, location_name: "url"))
    DocumentItem.add_member(:version, Shapes::ShapeRef.new(shape: BoundedString, location_name: "version"))
    DocumentItem.struct_class = Types::DocumentItem

    DocumentList.member = Shapes::ShapeRef.new(shape: DocumentItem)

    EstimatedCharges.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    EstimatedCharges.add_member(:agreement_value, Shapes::ShapeRef.new(shape: BoundedString, location_name: "agreementValue"))
    EstimatedCharges.struct_class = Types::EstimatedCharges

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, location_name: "values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValueList.member = Shapes::ShapeRef.new(shape: FilterValue)

    FixedUpfrontPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    FixedUpfrontPricingTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    FixedUpfrontPricingTerm.add_member(:duration, Shapes::ShapeRef.new(shape: BoundedString, location_name: "duration"))
    FixedUpfrontPricingTerm.add_member(:price, Shapes::ShapeRef.new(shape: BoundedString, location_name: "price"))
    FixedUpfrontPricingTerm.add_member(:grants, Shapes::ShapeRef.new(shape: GrantList, location_name: "grants"))
    FixedUpfrontPricingTerm.struct_class = Types::FixedUpfrontPricingTerm

    FreeTrialPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    FreeTrialPricingTerm.add_member(:duration, Shapes::ShapeRef.new(shape: BoundedString, location_name: "duration"))
    FreeTrialPricingTerm.add_member(:grants, Shapes::ShapeRef.new(shape: GrantList, location_name: "grants"))
    FreeTrialPricingTerm.struct_class = Types::FreeTrialPricingTerm

    GetAgreementCancellationRequestInput.add_member(:agreement_cancellation_request_id, Shapes::ShapeRef.new(shape: AgreementCancellationRequestId, required: true, location_name: "agreementCancellationRequestId"))
    GetAgreementCancellationRequestInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, required: true, location_name: "agreementId"))
    GetAgreementCancellationRequestInput.struct_class = Types::GetAgreementCancellationRequestInput

    GetAgreementCancellationRequestOutput.add_member(:agreement_cancellation_request_id, Shapes::ShapeRef.new(shape: AgreementCancellationRequestId, location_name: "agreementCancellationRequestId"))
    GetAgreementCancellationRequestOutput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, location_name: "agreementId"))
    GetAgreementCancellationRequestOutput.add_member(:reason_code, Shapes::ShapeRef.new(shape: AgreementCancellationRequestReasonCode, location_name: "reasonCode"))
    GetAgreementCancellationRequestOutput.add_member(:description, Shapes::ShapeRef.new(shape: AgreementCancellationRequestDescription, location_name: "description"))
    GetAgreementCancellationRequestOutput.add_member(:status, Shapes::ShapeRef.new(shape: AgreementCancellationRequestStatus, location_name: "status"))
    GetAgreementCancellationRequestOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: AgreementCancellationRequestStatusMessage, location_name: "statusMessage"))
    GetAgreementCancellationRequestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetAgreementCancellationRequestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetAgreementCancellationRequestOutput.struct_class = Types::GetAgreementCancellationRequestOutput

    GetAgreementPaymentRequestInput.add_member(:payment_request_id, Shapes::ShapeRef.new(shape: PaymentRequestId, required: true, location_name: "paymentRequestId"))
    GetAgreementPaymentRequestInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, required: true, location_name: "agreementId"))
    GetAgreementPaymentRequestInput.struct_class = Types::GetAgreementPaymentRequestInput

    GetAgreementPaymentRequestOutput.add_member(:payment_request_id, Shapes::ShapeRef.new(shape: PaymentRequestId, location_name: "paymentRequestId"))
    GetAgreementPaymentRequestOutput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, location_name: "agreementId"))
    GetAgreementPaymentRequestOutput.add_member(:status, Shapes::ShapeRef.new(shape: PaymentRequestStatus, location_name: "status"))
    GetAgreementPaymentRequestOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: PaymentRequestStatusMessage, location_name: "statusMessage"))
    GetAgreementPaymentRequestOutput.add_member(:name, Shapes::ShapeRef.new(shape: PaymentRequestName, location_name: "name"))
    GetAgreementPaymentRequestOutput.add_member(:description, Shapes::ShapeRef.new(shape: PaymentRequestDescription, location_name: "description"))
    GetAgreementPaymentRequestOutput.add_member(:charge_id, Shapes::ShapeRef.new(shape: ChargeId, location_name: "chargeId"))
    GetAgreementPaymentRequestOutput.add_member(:charge_amount, Shapes::ShapeRef.new(shape: PositiveAmountUpto8Decimals, location_name: "chargeAmount"))
    GetAgreementPaymentRequestOutput.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    GetAgreementPaymentRequestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetAgreementPaymentRequestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetAgreementPaymentRequestOutput.struct_class = Types::GetAgreementPaymentRequestOutput

    GetAgreementTermsInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "agreementId"))
    GetAgreementTermsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetAgreementTermsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAgreementTermsInput.struct_class = Types::GetAgreementTermsInput

    GetAgreementTermsOutput.add_member(:accepted_terms, Shapes::ShapeRef.new(shape: AcceptedTermList, location_name: "acceptedTerms"))
    GetAgreementTermsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAgreementTermsOutput.struct_class = Types::GetAgreementTermsOutput

    GetBillingAdjustmentRequestInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, required: true, location_name: "agreementId"))
    GetBillingAdjustmentRequestInput.add_member(:billing_adjustment_request_id, Shapes::ShapeRef.new(shape: BillingAdjustmentRequestId, required: true, location_name: "billingAdjustmentRequestId"))
    GetBillingAdjustmentRequestInput.struct_class = Types::GetBillingAdjustmentRequestInput

    GetBillingAdjustmentRequestOutput.add_member(:billing_adjustment_request_id, Shapes::ShapeRef.new(shape: BillingAdjustmentRequestId, required: true, location_name: "billingAdjustmentRequestId"))
    GetBillingAdjustmentRequestOutput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, required: true, location_name: "agreementId"))
    GetBillingAdjustmentRequestOutput.add_member(:adjustment_reason_code, Shapes::ShapeRef.new(shape: BillingAdjustmentReasonCode, required: true, location_name: "adjustmentReasonCode"))
    GetBillingAdjustmentRequestOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetBillingAdjustmentRequestOutput.add_member(:original_invoice_id, Shapes::ShapeRef.new(shape: InvoiceId, required: true, location_name: "originalInvoiceId"))
    GetBillingAdjustmentRequestOutput.add_member(:adjustment_amount, Shapes::ShapeRef.new(shape: PositiveAmountUpto8Decimals, required: true, location_name: "adjustmentAmount"))
    GetBillingAdjustmentRequestOutput.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currencyCode"))
    GetBillingAdjustmentRequestOutput.add_member(:status, Shapes::ShapeRef.new(shape: BillingAdjustmentStatus, required: true, location_name: "status"))
    GetBillingAdjustmentRequestOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: BillingAdjustmentStatusMessage, location_name: "statusMessage"))
    GetBillingAdjustmentRequestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetBillingAdjustmentRequestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetBillingAdjustmentRequestOutput.struct_class = Types::GetBillingAdjustmentRequestOutput

    GrantItem.add_member(:dimension_key, Shapes::ShapeRef.new(shape: BoundedString, location_name: "dimensionKey"))
    GrantItem.add_member(:max_quantity, Shapes::ShapeRef.new(shape: PositiveIntegerWithDefaultValueOne, location_name: "maxQuantity"))
    GrantItem.struct_class = Types::GrantItem

    GrantList.member = Shapes::ShapeRef.new(shape: GrantItem)

    InternalServerException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvoiceBillingPeriod.add_member(:month, Shapes::ShapeRef.new(shape: InvoiceBillingPeriodMonthInteger, required: true, location_name: "month"))
    InvoiceBillingPeriod.add_member(:year, Shapes::ShapeRef.new(shape: InvoiceBillingPeriodYearInteger, required: true, location_name: "year"))
    InvoiceBillingPeriod.struct_class = Types::InvoiceBillingPeriod

    InvoicingEntity.add_member(:legal_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "legalName"))
    InvoicingEntity.add_member(:branch_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "branchName"))
    InvoicingEntity.struct_class = Types::InvoicingEntity

    LegalTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    LegalTerm.add_member(:documents, Shapes::ShapeRef.new(shape: DocumentList, location_name: "documents"))
    LegalTerm.struct_class = Types::LegalTerm

    ListAgreementCancellationRequestsInput.add_member(:party_type, Shapes::ShapeRef.new(shape: PartyType, required: true, location_name: "partyType"))
    ListAgreementCancellationRequestsInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, location_name: "agreementId"))
    ListAgreementCancellationRequestsInput.add_member(:status, Shapes::ShapeRef.new(shape: AgreementCancellationRequestStatus, location_name: "status"))
    ListAgreementCancellationRequestsInput.add_member(:agreement_type, Shapes::ShapeRef.new(shape: AgreementType, location_name: "agreementType"))
    ListAgreementCancellationRequestsInput.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, location_name: "catalog"))
    ListAgreementCancellationRequestsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAgreementCancellationRequestsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgreementCancellationRequestsInput.struct_class = Types::ListAgreementCancellationRequestsInput

    ListAgreementCancellationRequestsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgreementCancellationRequestsOutput.add_member(:items, Shapes::ShapeRef.new(shape: AgreementCancellationRequestSummaryList, location_name: "items"))
    ListAgreementCancellationRequestsOutput.struct_class = Types::ListAgreementCancellationRequestsOutput

    ListAgreementInvoiceLineItemsInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "agreementId"))
    ListAgreementInvoiceLineItemsInput.add_member(:group_by, Shapes::ShapeRef.new(shape: LineItemGroupBy, required: true, location_name: "groupBy"))
    ListAgreementInvoiceLineItemsInput.add_member(:invoice_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "invoiceId"))
    ListAgreementInvoiceLineItemsInput.add_member(:invoice_type, Shapes::ShapeRef.new(shape: InvoiceType, location_name: "invoiceType"))
    ListAgreementInvoiceLineItemsInput.add_member(:invoice_billing_period, Shapes::ShapeRef.new(shape: InvoiceBillingPeriod, location_name: "invoiceBillingPeriod"))
    ListAgreementInvoiceLineItemsInput.add_member(:before_issued_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "beforeIssuedTime"))
    ListAgreementInvoiceLineItemsInput.add_member(:after_issued_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "afterIssuedTime"))
    ListAgreementInvoiceLineItemsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAgreementInvoiceLineItemsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgreementInvoiceLineItemsInput.struct_class = Types::ListAgreementInvoiceLineItemsInput

    ListAgreementInvoiceLineItemsOutput.add_member(:agreement_invoice_line_item_group_summaries, Shapes::ShapeRef.new(shape: AgreementInvoiceLineItemGroupSummaries, location_name: "agreementInvoiceLineItemGroupSummaries"))
    ListAgreementInvoiceLineItemsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgreementInvoiceLineItemsOutput.struct_class = Types::ListAgreementInvoiceLineItemsOutput

    ListAgreementPaymentRequestsInput.add_member(:party_type, Shapes::ShapeRef.new(shape: PartyType, required: true, location_name: "partyType"))
    ListAgreementPaymentRequestsInput.add_member(:agreement_type, Shapes::ShapeRef.new(shape: AgreementType, location_name: "agreementType"))
    ListAgreementPaymentRequestsInput.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, location_name: "catalog"))
    ListAgreementPaymentRequestsInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, location_name: "agreementId"))
    ListAgreementPaymentRequestsInput.add_member(:status, Shapes::ShapeRef.new(shape: PaymentRequestStatus, location_name: "status"))
    ListAgreementPaymentRequestsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAgreementPaymentRequestsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgreementPaymentRequestsInput.struct_class = Types::ListAgreementPaymentRequestsInput

    ListAgreementPaymentRequestsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgreementPaymentRequestsOutput.add_member(:items, Shapes::ShapeRef.new(shape: PaymentRequestSummaryList, required: true, location_name: "items"))
    ListAgreementPaymentRequestsOutput.struct_class = Types::ListAgreementPaymentRequestsOutput

    ListBillingAdjustmentRequestsInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, location_name: "agreementId"))
    ListBillingAdjustmentRequestsInput.add_member(:status, Shapes::ShapeRef.new(shape: BillingAdjustmentStatus, location_name: "status"))
    ListBillingAdjustmentRequestsInput.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAfter"))
    ListBillingAdjustmentRequestsInput.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdBefore"))
    ListBillingAdjustmentRequestsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillingAdjustmentRequestsInput.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, location_name: "catalog"))
    ListBillingAdjustmentRequestsInput.add_member(:agreement_type, Shapes::ShapeRef.new(shape: AgreementType, location_name: "agreementType"))
    ListBillingAdjustmentRequestsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBillingAdjustmentRequestsInput.struct_class = Types::ListBillingAdjustmentRequestsInput

    ListBillingAdjustmentRequestsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBillingAdjustmentRequestsOutput.add_member(:items, Shapes::ShapeRef.new(shape: BillingAdjustmentSummaryList, required: true, location_name: "items"))
    ListBillingAdjustmentRequestsOutput.struct_class = Types::ListBillingAdjustmentRequestsOutput

    PaymentRequestSummary.add_member(:payment_request_id, Shapes::ShapeRef.new(shape: PaymentRequestId, location_name: "paymentRequestId"))
    PaymentRequestSummary.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, location_name: "agreementId"))
    PaymentRequestSummary.add_member(:status, Shapes::ShapeRef.new(shape: PaymentRequestStatus, location_name: "status"))
    PaymentRequestSummary.add_member(:name, Shapes::ShapeRef.new(shape: PaymentRequestName, location_name: "name"))
    PaymentRequestSummary.add_member(:charge_id, Shapes::ShapeRef.new(shape: ChargeId, location_name: "chargeId"))
    PaymentRequestSummary.add_member(:charge_amount, Shapes::ShapeRef.new(shape: PositiveAmountUpto8Decimals, location_name: "chargeAmount"))
    PaymentRequestSummary.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    PaymentRequestSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    PaymentRequestSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    PaymentRequestSummary.struct_class = Types::PaymentRequestSummary

    PaymentRequestSummaryList.member = Shapes::ShapeRef.new(shape: PaymentRequestSummary)

    PaymentScheduleTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    PaymentScheduleTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    PaymentScheduleTerm.add_member(:schedule, Shapes::ShapeRef.new(shape: ScheduleList, location_name: "schedule"))
    PaymentScheduleTerm.struct_class = Types::PaymentScheduleTerm

    PricingCurrencyAmount.add_member(:amount, Shapes::ShapeRef.new(shape: BoundedString, location_name: "amount"))
    PricingCurrencyAmount.add_member(:max_adjustment_amount, Shapes::ShapeRef.new(shape: BoundedString, location_name: "maxAdjustmentAmount"))
    PricingCurrencyAmount.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    PricingCurrencyAmount.struct_class = Types::PricingCurrencyAmount

    ProposalSummary.add_member(:resources, Shapes::ShapeRef.new(shape: Resources, location_name: "resources"))
    ProposalSummary.add_member(:offer_id, Shapes::ShapeRef.new(shape: OfferId, location_name: "offerId"))
    ProposalSummary.add_member(:offer_set_id, Shapes::ShapeRef.new(shape: OfferSetId, location_name: "offerSetId"))
    ProposalSummary.struct_class = Types::ProposalSummary

    Proposer.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "accountId"))
    Proposer.struct_class = Types::Proposer

    RateCardItem.add_member(:dimension_key, Shapes::ShapeRef.new(shape: BoundedString, location_name: "dimensionKey"))
    RateCardItem.add_member(:price, Shapes::ShapeRef.new(shape: BoundedString, location_name: "price"))
    RateCardItem.struct_class = Types::RateCardItem

    RateCardList.member = Shapes::ShapeRef.new(shape: RateCardItem)

    RecurringPaymentTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    RecurringPaymentTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    RecurringPaymentTerm.add_member(:billing_period, Shapes::ShapeRef.new(shape: BoundedString, location_name: "billingPeriod"))
    RecurringPaymentTerm.add_member(:price, Shapes::ShapeRef.new(shape: BoundedString, location_name: "price"))
    RecurringPaymentTerm.struct_class = Types::RecurringPaymentTerm

    RenewalTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    RenewalTerm.add_member(:configuration, Shapes::ShapeRef.new(shape: RenewalTermConfiguration, location_name: "configuration"))
    RenewalTerm.struct_class = Types::RenewalTerm

    RenewalTermConfiguration.add_member(:enable_auto_renew, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enableAutoRenew"))
    RenewalTermConfiguration.struct_class = Types::RenewalTermConfiguration

    Resource.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    Resource.add_member(:type, Shapes::ShapeRef.new(shape: AgreementResourceType, location_name: "type"))
    Resource.struct_class = Types::Resource

    ResourceNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    ScheduleItem.add_member(:charge_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "chargeDate"))
    ScheduleItem.add_member(:charge_amount, Shapes::ShapeRef.new(shape: BoundedString, location_name: "chargeAmount"))
    ScheduleItem.struct_class = Types::ScheduleItem

    ScheduleList.member = Shapes::ShapeRef.new(shape: ScheduleItem)

    SearchAgreementsInput.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, location_name: "catalog"))
    SearchAgreementsInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    SearchAgreementsInput.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location_name: "sort"))
    SearchAgreementsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchAgreementsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchAgreementsInput.struct_class = Types::SearchAgreementsInput

    SearchAgreementsOutput.add_member(:agreement_view_summaries, Shapes::ShapeRef.new(shape: AgreementViewSummaryList, location_name: "agreementViewSummaries"))
    SearchAgreementsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchAgreementsOutput.struct_class = Types::SearchAgreementsOutput

    Selector.add_member(:type, Shapes::ShapeRef.new(shape: BoundedString, location_name: "type"))
    Selector.add_member(:value, Shapes::ShapeRef.new(shape: BoundedString, location_name: "value"))
    Selector.struct_class = Types::Selector

    SendAgreementCancellationRequestInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, required: true, location_name: "agreementId"))
    SendAgreementCancellationRequestInput.add_member(:reason_code, Shapes::ShapeRef.new(shape: AgreementCancellationRequestReasonCode, required: true, location_name: "reasonCode"))
    SendAgreementCancellationRequestInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    SendAgreementCancellationRequestInput.add_member(:description, Shapes::ShapeRef.new(shape: AgreementCancellationRequestDescription, location_name: "description"))
    SendAgreementCancellationRequestInput.struct_class = Types::SendAgreementCancellationRequestInput

    SendAgreementCancellationRequestOutput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, location_name: "agreementId"))
    SendAgreementCancellationRequestOutput.add_member(:agreement_cancellation_request_id, Shapes::ShapeRef.new(shape: AgreementCancellationRequestId, location_name: "agreementCancellationRequestId"))
    SendAgreementCancellationRequestOutput.add_member(:status, Shapes::ShapeRef.new(shape: AgreementCancellationRequestStatus, location_name: "status"))
    SendAgreementCancellationRequestOutput.add_member(:reason_code, Shapes::ShapeRef.new(shape: AgreementCancellationRequestReasonCode, location_name: "reasonCode"))
    SendAgreementCancellationRequestOutput.add_member(:description, Shapes::ShapeRef.new(shape: AgreementCancellationRequestDescription, location_name: "description"))
    SendAgreementCancellationRequestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SendAgreementCancellationRequestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    SendAgreementCancellationRequestOutput.struct_class = Types::SendAgreementCancellationRequestOutput

    SendAgreementPaymentRequestInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    SendAgreementPaymentRequestInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, required: true, location_name: "agreementId"))
    SendAgreementPaymentRequestInput.add_member(:term_id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "termId"))
    SendAgreementPaymentRequestInput.add_member(:name, Shapes::ShapeRef.new(shape: PaymentRequestName, required: true, location_name: "name"))
    SendAgreementPaymentRequestInput.add_member(:charge_amount, Shapes::ShapeRef.new(shape: PositiveAmountUpto8Decimals, required: true, location_name: "chargeAmount"))
    SendAgreementPaymentRequestInput.add_member(:description, Shapes::ShapeRef.new(shape: PaymentRequestDescription, location_name: "description"))
    SendAgreementPaymentRequestInput.struct_class = Types::SendAgreementPaymentRequestInput

    SendAgreementPaymentRequestOutput.add_member(:payment_request_id, Shapes::ShapeRef.new(shape: PaymentRequestId, location_name: "paymentRequestId"))
    SendAgreementPaymentRequestOutput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: AgreementId, location_name: "agreementId"))
    SendAgreementPaymentRequestOutput.add_member(:status, Shapes::ShapeRef.new(shape: PaymentRequestStatus, location_name: "status"))
    SendAgreementPaymentRequestOutput.add_member(:name, Shapes::ShapeRef.new(shape: PaymentRequestName, location_name: "name"))
    SendAgreementPaymentRequestOutput.add_member(:description, Shapes::ShapeRef.new(shape: PaymentRequestDescription, location_name: "description"))
    SendAgreementPaymentRequestOutput.add_member(:charge_amount, Shapes::ShapeRef.new(shape: PositiveAmountUpto8Decimals, location_name: "chargeAmount"))
    SendAgreementPaymentRequestOutput.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    SendAgreementPaymentRequestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SendAgreementPaymentRequestOutput.struct_class = Types::SendAgreementPaymentRequestOutput

    Sort.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "sortBy"))
    Sort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    Sort.struct_class = Types::Sort

    SupportTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    SupportTerm.add_member(:refund_policy, Shapes::ShapeRef.new(shape: BoundedString, location_name: "refundPolicy"))
    SupportTerm.struct_class = Types::SupportTerm

    ThrottlingException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UsageBasedPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    UsageBasedPricingTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    UsageBasedPricingTerm.add_member(:rate_cards, Shapes::ShapeRef.new(shape: UsageBasedRateCardList, location_name: "rateCards"))
    UsageBasedPricingTerm.struct_class = Types::UsageBasedPricingTerm

    UsageBasedRateCardItem.add_member(:rate_card, Shapes::ShapeRef.new(shape: RateCardList, location_name: "rateCard"))
    UsageBasedRateCardItem.struct_class = Types::UsageBasedRateCardItem

    UsageBasedRateCardList.member = Shapes::ShapeRef.new(shape: UsageBasedRateCardItem)

    ValidationException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    ValidityTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    ValidityTerm.add_member(:agreement_duration, Shapes::ShapeRef.new(shape: BoundedString, location_name: "agreementDuration"))
    ValidityTerm.add_member(:agreement_start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "agreementStartDate"))
    ValidityTerm.add_member(:agreement_end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "agreementEndDate"))
    ValidityTerm.struct_class = Types::ValidityTerm

    VariablePaymentTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    VariablePaymentTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    VariablePaymentTerm.add_member(:max_total_charge_amount, Shapes::ShapeRef.new(shape: BoundedString, location_name: "maxTotalChargeAmount"))
    VariablePaymentTerm.add_member(:configuration, Shapes::ShapeRef.new(shape: VariablePaymentTermConfiguration, location_name: "configuration"))
    VariablePaymentTerm.struct_class = Types::VariablePaymentTerm

    VariablePaymentTermConfiguration.add_member(:payment_request_approval_strategy, Shapes::ShapeRef.new(shape: PaymentRequestApprovalStrategy, required: true, location_name: "paymentRequestApprovalStrategy"))
    VariablePaymentTermConfiguration.add_member(:expiration_duration, Shapes::ShapeRef.new(shape: ISO8601Duration, location_name: "expirationDuration"))
    VariablePaymentTermConfiguration.struct_class = Types::VariablePaymentTermConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-03-01"

      api.metadata = {
        "apiVersion" => "2020-03-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "agreement-marketplace",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "Agreement Service",
        "serviceFullName" => "AWS Marketplace Agreement Service",
        "serviceId" => "Marketplace Agreement",
        "signatureVersion" => "v4",
        "signingName" => "aws-marketplace",
        "targetPrefix" => "AWSMPCommerceService_v20200301",
        "uid" => "marketplace-agreement-2020-03-01",
      }

      api.add_operation(:batch_create_billing_adjustment_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateBillingAdjustmentRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateBillingAdjustmentRequestInput)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateBillingAdjustmentRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:cancel_agreement_cancellation_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelAgreementCancellationRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelAgreementCancellationRequestInput)
        o.output = Shapes::ShapeRef.new(shape: CancelAgreementCancellationRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:cancel_agreement_payment_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelAgreementPaymentRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelAgreementPaymentRequestInput)
        o.output = Shapes::ShapeRef.new(shape: CancelAgreementPaymentRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_agreement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAgreement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAgreementInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAgreementOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_agreement_cancellation_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgreementCancellationRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAgreementCancellationRequestInput)
        o.output = Shapes::ShapeRef.new(shape: GetAgreementCancellationRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_agreement_payment_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgreementPaymentRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAgreementPaymentRequestInput)
        o.output = Shapes::ShapeRef.new(shape: GetAgreementPaymentRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_agreement_terms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgreementTerms"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAgreementTermsInput)
        o.output = Shapes::ShapeRef.new(shape: GetAgreementTermsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_billing_adjustment_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBillingAdjustmentRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBillingAdjustmentRequestInput)
        o.output = Shapes::ShapeRef.new(shape: GetBillingAdjustmentRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_agreement_cancellation_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgreementCancellationRequests"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAgreementCancellationRequestsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAgreementCancellationRequestsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_agreement_invoice_line_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgreementInvoiceLineItems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAgreementInvoiceLineItemsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAgreementInvoiceLineItemsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_agreement_payment_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgreementPaymentRequests"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAgreementPaymentRequestsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAgreementPaymentRequestsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_billing_adjustment_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillingAdjustmentRequests"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillingAdjustmentRequestsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBillingAdjustmentRequestsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_agreements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchAgreements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchAgreementsInput)
        o.output = Shapes::ShapeRef.new(shape: SearchAgreementsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:send_agreement_cancellation_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendAgreementCancellationRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendAgreementCancellationRequestInput)
        o.output = Shapes::ShapeRef.new(shape: SendAgreementCancellationRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:send_agreement_payment_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendAgreementPaymentRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendAgreementPaymentRequestInput)
        o.output = Shapes::ShapeRef.new(shape: SendAgreementPaymentRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
