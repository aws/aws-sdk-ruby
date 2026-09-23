# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceAgreement
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AWSAccountId", name: "AWSAccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[0-9]+$"})
    AcceptedTerm = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplaceagreement#AcceptedTerm", name: "AcceptedTerm")
    AcceptedTermList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#AcceptedTermList", name: "AcceptedTermList")
    Acceptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Acceptor", name: "Acceptor")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AgreementResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementResourceType", name: "AgreementResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    AgreementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#AgreementStatus", name: "AgreementStatus")
    AgreementType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementType", name: "AgreementType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z]+$"})
    AgreementViewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AgreementViewSummary", name: "AgreementViewSummary")
    AgreementViewSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#AgreementViewSummaryList", name: "AgreementViewSummaryList")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.marketplaceagreement#Boolean", name: "Boolean")
    BoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#BoundedString", name: "BoundedString", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^(.)+$"})
    ByolPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ByolPricingTerm", name: "ByolPricingTerm")
    Catalog = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#Catalog", name: "Catalog", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    ConfigurableUpfrontPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ConfigurableUpfrontPricingTerm", name: "ConfigurableUpfrontPricingTerm")
    ConfigurableUpfrontPricingTermConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ConfigurableUpfrontPricingTermConfiguration", name: "ConfigurableUpfrontPricingTermConfiguration")
    ConfigurableUpfrontRateCardItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ConfigurableUpfrontRateCardItem", name: "ConfigurableUpfrontRateCardItem")
    ConfigurableUpfrontRateCardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#ConfigurableUpfrontRateCardList", name: "ConfigurableUpfrontRateCardList")
    Constraints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Constraints", name: "Constraints")
    CurrencyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#CurrencyCode", name: "CurrencyCode", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^[A-Z]+$"})
    DescribeAgreementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#DescribeAgreementInput", name: "DescribeAgreementInput")
    DescribeAgreementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#DescribeAgreementOutput", name: "DescribeAgreementOutput")
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Dimension", name: "Dimension")
    DimensionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#DimensionList", name: "DimensionList", traits: {"smithy.api#length" => {"min" => 1}})
    DocumentItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#DocumentItem", name: "DocumentItem")
    DocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#DocumentList", name: "DocumentList")
    EstimatedCharges = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#EstimatedCharges", name: "EstimatedCharges")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#ExceptionMessage", name: "ExceptionMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#FilterList", name: "FilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#FilterName", name: "FilterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z_]+$"})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9+:_-]+$"})
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#FilterValueList", name: "FilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FixedUpfrontPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#FixedUpfrontPricingTerm", name: "FixedUpfrontPricingTerm")
    FreeTrialPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#FreeTrialPricingTerm", name: "FreeTrialPricingTerm")
    GetAgreementTermsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetAgreementTermsInput", name: "GetAgreementTermsInput")
    GetAgreementTermsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetAgreementTermsOutput", name: "GetAgreementTermsOutput")
    GrantItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GrantItem", name: "GrantItem")
    GrantList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#GrantList", name: "GrantList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LegalTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#LegalTerm", name: "LegalTerm")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplaceagreement#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=]+$"})
    OfferId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#OfferId", name: "OfferId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S{1,64}$"})
    PaymentScheduleTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#PaymentScheduleTerm", name: "PaymentScheduleTerm")
    PositiveIntegerWithDefaultValueOne = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplaceagreement#PositiveIntegerWithDefaultValueOne", name: "PositiveIntegerWithDefaultValueOne", traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 1}})
    ProposalSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ProposalSummary", name: "ProposalSummary")
    Proposer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Proposer", name: "Proposer")
    RateCardItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RateCardItem", name: "RateCardItem")
    RateCardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#RateCardList", name: "RateCardList")
    RecurringPaymentTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RecurringPaymentTerm", name: "RecurringPaymentTerm")
    RenewalTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RenewalTerm", name: "RenewalTerm")
    RenewalTermConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RenewalTermConfiguration", name: "RenewalTermConfiguration")
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#RequestId", name: "RequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Resource", name: "Resource")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_/-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#ResourceType", name: "ResourceType")
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#Resources", name: "Resources")
    ScheduleItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ScheduleItem", name: "ScheduleItem")
    ScheduleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#ScheduleList", name: "ScheduleList")
    SearchAgreementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#SearchAgreementsInput", name: "SearchAgreementsInput")
    SearchAgreementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#SearchAgreementsOutput", name: "SearchAgreementsOutput")
    Selector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Selector", name: "Selector")
    Sort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Sort", name: "Sort")
    SortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#SortBy", name: "SortBy", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z_]+$"})
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#SortOrder", name: "SortOrder")
    SupportTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#SupportTerm", name: "SupportTerm")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.marketplaceagreement#Timestamp", name: "Timestamp")
    UnversionedTermType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#UnversionedTermType", name: "UnversionedTermType", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[A-Za-z]+$"})
    UsageBasedPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#UsageBasedPricingTerm", name: "UsageBasedPricingTerm")
    UsageBasedRateCardItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#UsageBasedRateCardItem", name: "UsageBasedRateCardItem")
    UsageBasedRateCardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#UsageBasedRateCardList", name: "UsageBasedRateCardList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#ValidationExceptionReason", name: "ValidationExceptionReason")
    ValidityTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ValidityTerm", name: "ValidityTerm")
    ZeroValueInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplaceagreement#ZeroValueInteger", name: "ZeroValueInteger", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})

    AcceptedTerm.add_member(:legal_term, Types::AcceptedTerm::LegalTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalTerm, name: "legalTerm"))
    AcceptedTerm.add_member(:support_term, Types::AcceptedTerm::SupportTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportTerm, name: "supportTerm"))
    AcceptedTerm.add_member(:renewal_term, Types::AcceptedTerm::RenewalTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalTerm, name: "renewalTerm"))
    AcceptedTerm.add_member(:usage_based_pricing_term, Types::AcceptedTerm::UsageBasedPricingTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageBasedPricingTerm, name: "usageBasedPricingTerm"))
    AcceptedTerm.add_member(:configurable_upfront_pricing_term, Types::AcceptedTerm::ConfigurableUpfrontPricingTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurableUpfrontPricingTerm, name: "configurableUpfrontPricingTerm"))
    AcceptedTerm.add_member(:byol_pricing_term, Types::AcceptedTerm::ByolPricingTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: ByolPricingTerm, name: "byolPricingTerm"))
    AcceptedTerm.add_member(:recurring_payment_term, Types::AcceptedTerm::RecurringPaymentTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringPaymentTerm, name: "recurringPaymentTerm"))
    AcceptedTerm.add_member(:validity_term, Types::AcceptedTerm::ValidityTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidityTerm, name: "validityTerm"))
    AcceptedTerm.add_member(:payment_schedule_term, Types::AcceptedTerm::PaymentScheduleTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentScheduleTerm, name: "paymentScheduleTerm"))
    AcceptedTerm.add_member(:free_trial_pricing_term, Types::AcceptedTerm::FreeTrialPricingTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialPricingTerm, name: "freeTrialPricingTerm"))
    AcceptedTerm.add_member(:fixed_upfront_pricing_term, Types::AcceptedTerm::FixedUpfrontPricingTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedUpfrontPricingTerm, name: "fixedUpfrontPricingTerm"))
    AcceptedTerm.add_member(:unknown, Types::AcceptedTerm::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AcceptedTerm.type = Types::AcceptedTerm
    AcceptedTermList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptedTerm, name: "member"))
    Acceptor.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "accountId"))
    Acceptor.type = Types::Acceptor
    AccessDeniedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AgreementStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AgreementStatus.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    AgreementStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    AgreementStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    AgreementStatus.add_member(:renewed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RENEWED", traits: {"smithy.api#enumValue" => "RENEWED"}))
    AgreementStatus.add_member(:replaced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACED", traits: {"smithy.api#enumValue" => "REPLACED"}))
    AgreementStatus.add_member(:rolled_back, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLED_BACK", traits: {"smithy.api#enumValue" => "ROLLED_BACK"}))
    AgreementStatus.add_member(:superseded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPERSEDED", traits: {"smithy.api#enumValue" => "SUPERSEDED"}))
    AgreementStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    AgreementViewSummary.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId"))
    AgreementViewSummary.add_member(:acceptance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "acceptanceTime"))
    AgreementViewSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    AgreementViewSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    AgreementViewSummary.add_member(:agreement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementType, name: "agreementType"))
    AgreementViewSummary.add_member(:acceptor, ::Smithy::Schema::Shapes::MemberShape.new(target: Acceptor, name: "acceptor"))
    AgreementViewSummary.add_member(:proposer, ::Smithy::Schema::Shapes::MemberShape.new(target: Proposer, name: "proposer"))
    AgreementViewSummary.add_member(:proposal_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ProposalSummary, name: "proposalSummary"))
    AgreementViewSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementStatus, name: "status"))
    AgreementViewSummary.type = Types::AgreementViewSummary
    AgreementViewSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementViewSummary, name: "member"))
    ByolPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    ByolPricingTerm.type = Types::ByolPricingTerm
    ConfigurableUpfrontPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    ConfigurableUpfrontPricingTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    ConfigurableUpfrontPricingTerm.add_member(:rate_cards, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurableUpfrontRateCardList, name: "rateCards"))
    ConfigurableUpfrontPricingTerm.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurableUpfrontPricingTermConfiguration, name: "configuration"))
    ConfigurableUpfrontPricingTerm.type = Types::ConfigurableUpfrontPricingTerm
    ConfigurableUpfrontPricingTermConfiguration.add_member(:selector_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "selectorValue", traits: {"smithy.api#required" => {}}))
    ConfigurableUpfrontPricingTermConfiguration.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionList, name: "dimensions", traits: {"smithy.api#required" => {}}))
    ConfigurableUpfrontPricingTermConfiguration.type = Types::ConfigurableUpfrontPricingTermConfiguration
    ConfigurableUpfrontRateCardItem.add_member(:selector, ::Smithy::Schema::Shapes::MemberShape.new(target: Selector, name: "selector"))
    ConfigurableUpfrontRateCardItem.add_member(:constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: Constraints, name: "constraints"))
    ConfigurableUpfrontRateCardItem.add_member(:rate_card, ::Smithy::Schema::Shapes::MemberShape.new(target: RateCardList, name: "rateCard"))
    ConfigurableUpfrontRateCardItem.type = Types::ConfigurableUpfrontRateCardItem
    ConfigurableUpfrontRateCardList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurableUpfrontRateCardItem, name: "member"))
    Constraints.add_member(:multiple_dimension_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "multipleDimensionSelection"))
    Constraints.add_member(:quantity_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "quantityConfiguration"))
    Constraints.type = Types::Constraints
    DescribeAgreementInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    DescribeAgreementInput.type = Types::DescribeAgreementInput
    DescribeAgreementOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId"))
    DescribeAgreementOutput.add_member(:acceptor, ::Smithy::Schema::Shapes::MemberShape.new(target: Acceptor, name: "acceptor"))
    DescribeAgreementOutput.add_member(:proposer, ::Smithy::Schema::Shapes::MemberShape.new(target: Proposer, name: "proposer"))
    DescribeAgreementOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    DescribeAgreementOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    DescribeAgreementOutput.add_member(:acceptance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "acceptanceTime"))
    DescribeAgreementOutput.add_member(:agreement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementType, name: "agreementType"))
    DescribeAgreementOutput.add_member(:estimated_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedCharges, name: "estimatedCharges"))
    DescribeAgreementOutput.add_member(:proposal_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ProposalSummary, name: "proposalSummary"))
    DescribeAgreementOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementStatus, name: "status"))
    DescribeAgreementOutput.type = Types::DescribeAgreementOutput
    Dimension.add_member(:dimension_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "dimensionKey", traits: {"smithy.api#required" => {}}))
    Dimension.add_member(:dimension_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroValueInteger, name: "dimensionValue", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Dimension.type = Types::Dimension
    DimensionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "member"))
    DocumentItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "type"))
    DocumentItem.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "url"))
    DocumentItem.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "version"))
    DocumentItem.type = Types::DocumentItem
    DocumentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentItem, name: "member"))
    EstimatedCharges.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    EstimatedCharges.add_member(:agreement_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "agreementValue"))
    EstimatedCharges.type = Types::EstimatedCharges
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "values"))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    FixedUpfrontPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    FixedUpfrontPricingTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    FixedUpfrontPricingTerm.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "duration"))
    FixedUpfrontPricingTerm.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "price"))
    FixedUpfrontPricingTerm.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantList, name: "grants"))
    FixedUpfrontPricingTerm.type = Types::FixedUpfrontPricingTerm
    FreeTrialPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    FreeTrialPricingTerm.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "duration"))
    FreeTrialPricingTerm.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantList, name: "grants"))
    FreeTrialPricingTerm.type = Types::FreeTrialPricingTerm
    GetAgreementTermsInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    GetAgreementTermsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetAgreementTermsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetAgreementTermsInput.type = Types::GetAgreementTermsInput
    GetAgreementTermsOutput.add_member(:accepted_terms, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptedTermList, name: "acceptedTerms"))
    GetAgreementTermsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetAgreementTermsOutput.type = Types::GetAgreementTermsOutput
    GrantItem.add_member(:dimension_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "dimensionKey"))
    GrantItem.add_member(:max_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerWithDefaultValueOne, name: "maxQuantity", traits: {"smithy.api#default" => 1}))
    GrantItem.type = Types::GrantItem
    GrantList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantItem, name: "member"))
    InternalServerException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InternalServerException.type = Types::InternalServerException
    LegalTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    LegalTerm.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "documents"))
    LegalTerm.type = Types::LegalTerm
    PaymentScheduleTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    PaymentScheduleTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    PaymentScheduleTerm.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleList, name: "schedule"))
    PaymentScheduleTerm.type = Types::PaymentScheduleTerm
    ProposalSummary.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, name: "resources"))
    ProposalSummary.add_member(:offer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferId, name: "offerId"))
    ProposalSummary.type = Types::ProposalSummary
    Proposer.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "accountId"))
    Proposer.type = Types::Proposer
    RateCardItem.add_member(:dimension_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "dimensionKey"))
    RateCardItem.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "price"))
    RateCardItem.type = Types::RateCardItem
    RateCardList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RateCardItem, name: "member"))
    RecurringPaymentTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    RecurringPaymentTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    RecurringPaymentTerm.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "billingPeriod"))
    RecurringPaymentTerm.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "price"))
    RecurringPaymentTerm.type = Types::RecurringPaymentTerm
    RenewalTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    RenewalTerm.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalTermConfiguration, name: "configuration"))
    RenewalTerm.type = Types::RenewalTerm
    RenewalTermConfiguration.add_member(:enable_auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableAutoRenew", traits: {"smithy.api#required" => {}}))
    RenewalTermConfiguration.type = Types::RenewalTermConfiguration
    Resource.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id"))
    Resource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementResourceType, name: "type"))
    Resource.type = Types::Resource
    ResourceNotFoundException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:agreement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGREEMENT", traits: {"smithy.api#enumValue" => "Agreement"}))
    Resources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    ScheduleItem.add_member(:charge_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "chargeDate"))
    ScheduleItem.add_member(:charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "chargeAmount"))
    ScheduleItem.type = Types::ScheduleItem
    ScheduleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleItem, name: "member"))
    SearchAgreementsInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog"))
    SearchAgreementsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    SearchAgreementsInput.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: Sort, name: "sort"))
    SearchAgreementsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    SearchAgreementsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchAgreementsInput.type = Types::SearchAgreementsInput
    SearchAgreementsOutput.add_member(:agreement_view_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementViewSummaryList, name: "agreementViewSummaries"))
    SearchAgreementsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchAgreementsOutput.type = Types::SearchAgreementsOutput
    Selector.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "type"))
    Selector.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "value"))
    Selector.type = Types::Selector
    Sort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortBy, name: "sortBy"))
    Sort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    Sort.type = Types::Sort
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SupportTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    SupportTerm.add_member(:refund_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "refundPolicy"))
    SupportTerm.type = Types::SupportTerm
    ThrottlingException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UsageBasedPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    UsageBasedPricingTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    UsageBasedPricingTerm.add_member(:rate_cards, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageBasedRateCardList, name: "rateCards"))
    UsageBasedPricingTerm.type = Types::UsageBasedPricingTerm
    UsageBasedRateCardItem.add_member(:rate_card, ::Smithy::Schema::Shapes::MemberShape.new(target: RateCardList, name: "rateCard"))
    UsageBasedRateCardItem.type = Types::UsageBasedRateCardItem
    UsageBasedRateCardList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageBasedRateCardItem, name: "member"))
    ValidationException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:invalid_agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_AGREEMENT_ID", traits: {"smithy.api#enumValue" => "INVALID_AGREEMENT_ID"}))
    ValidationExceptionReason.add_member(:missing_agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_AGREEMENT_ID", traits: {"smithy.api#enumValue" => "MISSING_AGREEMENT_ID"}))
    ValidationExceptionReason.add_member(:invalid_catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_CATALOG", traits: {"smithy.api#enumValue" => "INVALID_CATALOG"}))
    ValidationExceptionReason.add_member(:invalid_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_FILTER_NAME", traits: {"smithy.api#enumValue" => "INVALID_FILTER_NAME"}))
    ValidationExceptionReason.add_member(:invalid_filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_FILTER_VALUES", traits: {"smithy.api#enumValue" => "INVALID_FILTER_VALUES"}))
    ValidationExceptionReason.add_member(:invalid_sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SORT_BY", traits: {"smithy.api#enumValue" => "INVALID_SORT_BY"}))
    ValidationExceptionReason.add_member(:invalid_sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SORT_ORDER", traits: {"smithy.api#enumValue" => "INVALID_SORT_ORDER"}))
    ValidationExceptionReason.add_member(:invalid_next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_NEXT_TOKEN", traits: {"smithy.api#enumValue" => "INVALID_NEXT_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_MAX_RESULTS", traits: {"smithy.api#enumValue" => "INVALID_MAX_RESULTS"}))
    ValidationExceptionReason.add_member(:unsupported_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_FILTERS", traits: {"smithy.api#enumValue" => "UNSUPPORTED_FILTERS"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    ValidityTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    ValidityTerm.add_member(:agreement_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "agreementDuration"))
    ValidityTerm.add_member(:agreement_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "agreementStartDate"))
    ValidityTerm.add_member(:agreement_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "agreementEndDate"))
    ValidityTerm.type = Types::ValidityTerm

    AWSMPCommerceServiceV20200301 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplaceagreement#AWSMPCommerceService_v20200301"
      service.name = "AWSMPCommerceServiceV20200301"
      service.version = "2020-03-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Agreement", "endpointPrefix" => "agreement-marketplace"}, "aws.auth#sigv4" => {"name" => "aws-marketplace"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Marketplace Agreement Service"}
      service.add_operation(:describe_agreement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#DescribeAgreement"
        operation.name = "DescribeAgreement"
        operation.input = DescribeAgreementInput
        operation.output = DescribeAgreementOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_agreement_terms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#GetAgreementTerms"
        operation.name = "GetAgreementTerms"
        operation.input = GetAgreementTermsInput
        operation.output = GetAgreementTermsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetAgreementTerms.new
      end)
      service.add_operation(:search_agreements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#SearchAgreements"
        operation.name = "SearchAgreements"
        operation.input = SearchAgreementsInput
        operation.output = SearchAgreementsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::SearchAgreements.new
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
