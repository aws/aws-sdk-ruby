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
    AgreementResourceType = Shapes::StringShape.new(name: 'AgreementResourceType')
    AgreementStatus = Shapes::StringShape.new(name: 'AgreementStatus')
    AgreementType = Shapes::StringShape.new(name: 'AgreementType')
    AgreementViewSummary = Shapes::StructureShape.new(name: 'AgreementViewSummary')
    AgreementViewSummaryList = Shapes::ListShape.new(name: 'AgreementViewSummaryList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoundedString = Shapes::StringShape.new(name: 'BoundedString')
    ByolPricingTerm = Shapes::StructureShape.new(name: 'ByolPricingTerm')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    ConfigurableUpfrontPricingTerm = Shapes::StructureShape.new(name: 'ConfigurableUpfrontPricingTerm')
    ConfigurableUpfrontPricingTermConfiguration = Shapes::StructureShape.new(name: 'ConfigurableUpfrontPricingTermConfiguration')
    ConfigurableUpfrontRateCardItem = Shapes::StructureShape.new(name: 'ConfigurableUpfrontRateCardItem')
    ConfigurableUpfrontRateCardList = Shapes::ListShape.new(name: 'ConfigurableUpfrontRateCardList')
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
    GetAgreementTermsInput = Shapes::StructureShape.new(name: 'GetAgreementTermsInput')
    GetAgreementTermsOutput = Shapes::StructureShape.new(name: 'GetAgreementTermsOutput')
    GrantItem = Shapes::StructureShape.new(name: 'GrantItem')
    GrantList = Shapes::ListShape.new(name: 'GrantList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LegalTerm = Shapes::StructureShape.new(name: 'LegalTerm')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OfferId = Shapes::StringShape.new(name: 'OfferId')
    PaymentScheduleTerm = Shapes::StructureShape.new(name: 'PaymentScheduleTerm')
    PositiveIntegerWithDefaultValueOne = Shapes::IntegerShape.new(name: 'PositiveIntegerWithDefaultValueOne')
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
    Sort = Shapes::StructureShape.new(name: 'Sort')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SupportTerm = Shapes::StructureShape.new(name: 'SupportTerm')
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
    ZeroValueInteger = Shapes::IntegerShape.new(name: 'ZeroValueInteger')

    AcceptedTerm.add_member(:byol_pricing_term, Shapes::ShapeRef.new(shape: ByolPricingTerm, location_name: "byolPricingTerm"))
    AcceptedTerm.add_member(:configurable_upfront_pricing_term, Shapes::ShapeRef.new(shape: ConfigurableUpfrontPricingTerm, location_name: "configurableUpfrontPricingTerm"))
    AcceptedTerm.add_member(:fixed_upfront_pricing_term, Shapes::ShapeRef.new(shape: FixedUpfrontPricingTerm, location_name: "fixedUpfrontPricingTerm"))
    AcceptedTerm.add_member(:free_trial_pricing_term, Shapes::ShapeRef.new(shape: FreeTrialPricingTerm, location_name: "freeTrialPricingTerm"))
    AcceptedTerm.add_member(:legal_term, Shapes::ShapeRef.new(shape: LegalTerm, location_name: "legalTerm"))
    AcceptedTerm.add_member(:payment_schedule_term, Shapes::ShapeRef.new(shape: PaymentScheduleTerm, location_name: "paymentScheduleTerm"))
    AcceptedTerm.add_member(:recurring_payment_term, Shapes::ShapeRef.new(shape: RecurringPaymentTerm, location_name: "recurringPaymentTerm"))
    AcceptedTerm.add_member(:renewal_term, Shapes::ShapeRef.new(shape: RenewalTerm, location_name: "renewalTerm"))
    AcceptedTerm.add_member(:support_term, Shapes::ShapeRef.new(shape: SupportTerm, location_name: "supportTerm"))
    AcceptedTerm.add_member(:usage_based_pricing_term, Shapes::ShapeRef.new(shape: UsageBasedPricingTerm, location_name: "usageBasedPricingTerm"))
    AcceptedTerm.add_member(:validity_term, Shapes::ShapeRef.new(shape: ValidityTerm, location_name: "validityTerm"))
    AcceptedTerm.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AcceptedTerm.add_member_subclass(:byol_pricing_term, Types::AcceptedTerm::ByolPricingTerm)
    AcceptedTerm.add_member_subclass(:configurable_upfront_pricing_term, Types::AcceptedTerm::ConfigurableUpfrontPricingTerm)
    AcceptedTerm.add_member_subclass(:fixed_upfront_pricing_term, Types::AcceptedTerm::FixedUpfrontPricingTerm)
    AcceptedTerm.add_member_subclass(:free_trial_pricing_term, Types::AcceptedTerm::FreeTrialPricingTerm)
    AcceptedTerm.add_member_subclass(:legal_term, Types::AcceptedTerm::LegalTerm)
    AcceptedTerm.add_member_subclass(:payment_schedule_term, Types::AcceptedTerm::PaymentScheduleTerm)
    AcceptedTerm.add_member_subclass(:recurring_payment_term, Types::AcceptedTerm::RecurringPaymentTerm)
    AcceptedTerm.add_member_subclass(:renewal_term, Types::AcceptedTerm::RenewalTerm)
    AcceptedTerm.add_member_subclass(:support_term, Types::AcceptedTerm::SupportTerm)
    AcceptedTerm.add_member_subclass(:usage_based_pricing_term, Types::AcceptedTerm::UsageBasedPricingTerm)
    AcceptedTerm.add_member_subclass(:validity_term, Types::AcceptedTerm::ValidityTerm)
    AcceptedTerm.add_member_subclass(:unknown, Types::AcceptedTerm::Unknown)
    AcceptedTerm.struct_class = Types::AcceptedTerm

    AcceptedTermList.member = Shapes::ShapeRef.new(shape: AcceptedTerm)

    Acceptor.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "accountId"))
    Acceptor.struct_class = Types::Acceptor

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    AccessDeniedException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AgreementViewSummary.add_member(:acceptance_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "acceptanceTime"))
    AgreementViewSummary.add_member(:acceptor, Shapes::ShapeRef.new(shape: Acceptor, location_name: "acceptor"))
    AgreementViewSummary.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "agreementId"))
    AgreementViewSummary.add_member(:agreement_type, Shapes::ShapeRef.new(shape: AgreementType, location_name: "agreementType"))
    AgreementViewSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    AgreementViewSummary.add_member(:proposal_summary, Shapes::ShapeRef.new(shape: ProposalSummary, location_name: "proposalSummary"))
    AgreementViewSummary.add_member(:proposer, Shapes::ShapeRef.new(shape: Proposer, location_name: "proposer"))
    AgreementViewSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    AgreementViewSummary.add_member(:status, Shapes::ShapeRef.new(shape: AgreementStatus, location_name: "status"))
    AgreementViewSummary.struct_class = Types::AgreementViewSummary

    AgreementViewSummaryList.member = Shapes::ShapeRef.new(shape: AgreementViewSummary)

    ByolPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    ByolPricingTerm.struct_class = Types::ByolPricingTerm

    ConfigurableUpfrontPricingTerm.add_member(:configuration, Shapes::ShapeRef.new(shape: ConfigurableUpfrontPricingTermConfiguration, location_name: "configuration"))
    ConfigurableUpfrontPricingTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    ConfigurableUpfrontPricingTerm.add_member(:rate_cards, Shapes::ShapeRef.new(shape: ConfigurableUpfrontRateCardList, location_name: "rateCards"))
    ConfigurableUpfrontPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    ConfigurableUpfrontPricingTerm.struct_class = Types::ConfigurableUpfrontPricingTerm

    ConfigurableUpfrontPricingTermConfiguration.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionList, required: true, location_name: "dimensions"))
    ConfigurableUpfrontPricingTermConfiguration.add_member(:selector_value, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "selectorValue"))
    ConfigurableUpfrontPricingTermConfiguration.struct_class = Types::ConfigurableUpfrontPricingTermConfiguration

    ConfigurableUpfrontRateCardItem.add_member(:constraints, Shapes::ShapeRef.new(shape: Constraints, location_name: "constraints"))
    ConfigurableUpfrontRateCardItem.add_member(:rate_card, Shapes::ShapeRef.new(shape: RateCardList, location_name: "rateCard"))
    ConfigurableUpfrontRateCardItem.add_member(:selector, Shapes::ShapeRef.new(shape: Selector, location_name: "selector"))
    ConfigurableUpfrontRateCardItem.struct_class = Types::ConfigurableUpfrontRateCardItem

    ConfigurableUpfrontRateCardList.member = Shapes::ShapeRef.new(shape: ConfigurableUpfrontRateCardItem)

    Constraints.add_member(:multiple_dimension_selection, Shapes::ShapeRef.new(shape: BoundedString, location_name: "multipleDimensionSelection"))
    Constraints.add_member(:quantity_configuration, Shapes::ShapeRef.new(shape: BoundedString, location_name: "quantityConfiguration"))
    Constraints.struct_class = Types::Constraints

    DescribeAgreementInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "agreementId"))
    DescribeAgreementInput.struct_class = Types::DescribeAgreementInput

    DescribeAgreementOutput.add_member(:acceptance_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "acceptanceTime"))
    DescribeAgreementOutput.add_member(:acceptor, Shapes::ShapeRef.new(shape: Acceptor, location_name: "acceptor"))
    DescribeAgreementOutput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "agreementId"))
    DescribeAgreementOutput.add_member(:agreement_type, Shapes::ShapeRef.new(shape: AgreementType, location_name: "agreementType"))
    DescribeAgreementOutput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    DescribeAgreementOutput.add_member(:estimated_charges, Shapes::ShapeRef.new(shape: EstimatedCharges, location_name: "estimatedCharges"))
    DescribeAgreementOutput.add_member(:proposal_summary, Shapes::ShapeRef.new(shape: ProposalSummary, location_name: "proposalSummary"))
    DescribeAgreementOutput.add_member(:proposer, Shapes::ShapeRef.new(shape: Proposer, location_name: "proposer"))
    DescribeAgreementOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
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

    EstimatedCharges.add_member(:agreement_value, Shapes::ShapeRef.new(shape: BoundedString, location_name: "agreementValue"))
    EstimatedCharges.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    EstimatedCharges.struct_class = Types::EstimatedCharges

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, location_name: "values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValueList.member = Shapes::ShapeRef.new(shape: FilterValue)

    FixedUpfrontPricingTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    FixedUpfrontPricingTerm.add_member(:duration, Shapes::ShapeRef.new(shape: BoundedString, location_name: "duration"))
    FixedUpfrontPricingTerm.add_member(:grants, Shapes::ShapeRef.new(shape: GrantList, location_name: "grants"))
    FixedUpfrontPricingTerm.add_member(:price, Shapes::ShapeRef.new(shape: BoundedString, location_name: "price"))
    FixedUpfrontPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    FixedUpfrontPricingTerm.struct_class = Types::FixedUpfrontPricingTerm

    FreeTrialPricingTerm.add_member(:duration, Shapes::ShapeRef.new(shape: BoundedString, location_name: "duration"))
    FreeTrialPricingTerm.add_member(:grants, Shapes::ShapeRef.new(shape: GrantList, location_name: "grants"))
    FreeTrialPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    FreeTrialPricingTerm.struct_class = Types::FreeTrialPricingTerm

    GetAgreementTermsInput.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "agreementId"))
    GetAgreementTermsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetAgreementTermsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAgreementTermsInput.struct_class = Types::GetAgreementTermsInput

    GetAgreementTermsOutput.add_member(:accepted_terms, Shapes::ShapeRef.new(shape: AcceptedTermList, location_name: "acceptedTerms"))
    GetAgreementTermsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAgreementTermsOutput.struct_class = Types::GetAgreementTermsOutput

    GrantItem.add_member(:dimension_key, Shapes::ShapeRef.new(shape: BoundedString, location_name: "dimensionKey"))
    GrantItem.add_member(:max_quantity, Shapes::ShapeRef.new(shape: PositiveIntegerWithDefaultValueOne, location_name: "maxQuantity"))
    GrantItem.struct_class = Types::GrantItem

    GrantList.member = Shapes::ShapeRef.new(shape: GrantItem)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InternalServerException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    InternalServerException.struct_class = Types::InternalServerException

    LegalTerm.add_member(:documents, Shapes::ShapeRef.new(shape: DocumentList, location_name: "documents"))
    LegalTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    LegalTerm.struct_class = Types::LegalTerm

    PaymentScheduleTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    PaymentScheduleTerm.add_member(:schedule, Shapes::ShapeRef.new(shape: ScheduleList, location_name: "schedule"))
    PaymentScheduleTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    PaymentScheduleTerm.struct_class = Types::PaymentScheduleTerm

    ProposalSummary.add_member(:offer_id, Shapes::ShapeRef.new(shape: OfferId, location_name: "offerId"))
    ProposalSummary.add_member(:resources, Shapes::ShapeRef.new(shape: Resources, location_name: "resources"))
    ProposalSummary.struct_class = Types::ProposalSummary

    Proposer.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "accountId"))
    Proposer.struct_class = Types::Proposer

    RateCardItem.add_member(:dimension_key, Shapes::ShapeRef.new(shape: BoundedString, location_name: "dimensionKey"))
    RateCardItem.add_member(:price, Shapes::ShapeRef.new(shape: BoundedString, location_name: "price"))
    RateCardItem.struct_class = Types::RateCardItem

    RateCardList.member = Shapes::ShapeRef.new(shape: RateCardItem)

    RecurringPaymentTerm.add_member(:billing_period, Shapes::ShapeRef.new(shape: BoundedString, location_name: "billingPeriod"))
    RecurringPaymentTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    RecurringPaymentTerm.add_member(:price, Shapes::ShapeRef.new(shape: BoundedString, location_name: "price"))
    RecurringPaymentTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    RecurringPaymentTerm.struct_class = Types::RecurringPaymentTerm

    RenewalTerm.add_member(:configuration, Shapes::ShapeRef.new(shape: RenewalTermConfiguration, location_name: "configuration"))
    RenewalTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    RenewalTerm.struct_class = Types::RenewalTerm

    RenewalTermConfiguration.add_member(:enable_auto_renew, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enableAutoRenew"))
    RenewalTermConfiguration.struct_class = Types::RenewalTermConfiguration

    Resource.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    Resource.add_member(:type, Shapes::ShapeRef.new(shape: AgreementResourceType, location_name: "type"))
    Resource.struct_class = Types::Resource

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    ScheduleItem.add_member(:charge_amount, Shapes::ShapeRef.new(shape: BoundedString, location_name: "chargeAmount"))
    ScheduleItem.add_member(:charge_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "chargeDate"))
    ScheduleItem.struct_class = Types::ScheduleItem

    ScheduleList.member = Shapes::ShapeRef.new(shape: ScheduleItem)

    SearchAgreementsInput.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, location_name: "catalog"))
    SearchAgreementsInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    SearchAgreementsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchAgreementsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchAgreementsInput.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location_name: "sort"))
    SearchAgreementsInput.struct_class = Types::SearchAgreementsInput

    SearchAgreementsOutput.add_member(:agreement_view_summaries, Shapes::ShapeRef.new(shape: AgreementViewSummaryList, location_name: "agreementViewSummaries"))
    SearchAgreementsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchAgreementsOutput.struct_class = Types::SearchAgreementsOutput

    Selector.add_member(:type, Shapes::ShapeRef.new(shape: BoundedString, location_name: "type"))
    Selector.add_member(:value, Shapes::ShapeRef.new(shape: BoundedString, location_name: "value"))
    Selector.struct_class = Types::Selector

    Sort.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "sortBy"))
    Sort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    Sort.struct_class = Types::Sort

    SupportTerm.add_member(:refund_policy, Shapes::ShapeRef.new(shape: BoundedString, location_name: "refundPolicy"))
    SupportTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    SupportTerm.struct_class = Types::SupportTerm

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ThrottlingException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UsageBasedPricingTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
    UsageBasedPricingTerm.add_member(:rate_cards, Shapes::ShapeRef.new(shape: UsageBasedRateCardList, location_name: "rateCards"))
    UsageBasedPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    UsageBasedPricingTerm.struct_class = Types::UsageBasedPricingTerm

    UsageBasedRateCardItem.add_member(:rate_card, Shapes::ShapeRef.new(shape: RateCardList, location_name: "rateCard"))
    UsageBasedRateCardItem.struct_class = Types::UsageBasedRateCardItem

    UsageBasedRateCardList.member = Shapes::ShapeRef.new(shape: UsageBasedRateCardItem)

    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fields"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    ValidityTerm.add_member(:agreement_duration, Shapes::ShapeRef.new(shape: BoundedString, location_name: "agreementDuration"))
    ValidityTerm.add_member(:agreement_end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "agreementEndDate"))
    ValidityTerm.add_member(:agreement_start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "agreementStartDate"))
    ValidityTerm.add_member(:type, Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: "type"))
    ValidityTerm.struct_class = Types::ValidityTerm


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-03-01"

      api.metadata = {
        "apiVersion" => "2020-03-01",
        "endpointPrefix" => "agreement-marketplace",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "Agreement Service",
        "serviceFullName" => "AWS Marketplace Agreement Service",
        "serviceId" => "Marketplace Agreement",
        "signatureVersion" => "v4",
        "signingName" => "aws-marketplace",
        "targetPrefix" => "AWSMPCommerceService_v20200301",
        "uid" => "marketplace-agreement-2020-03-01",
      }

      api.add_operation(:describe_agreement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAgreement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAgreementInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAgreementOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
    end

  end
end
