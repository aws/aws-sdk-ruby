# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceAgreement
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#AWSAccountId', name: 'AWSAccountId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[0-9]+$"})
    AcceptedTerm = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.marketplaceagreement#AcceptedTerm', name: 'AcceptedTerm')
    AcceptedTermList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#AcceptedTermList', name: 'AcceptedTermList')
    Acceptor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#Acceptor', name: 'Acceptor')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AgreementResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#AgreementResourceType', name: 'AgreementResourceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    AgreementStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplaceagreement#AgreementStatus', name: 'AgreementStatus')
    AgreementType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#AgreementType', name: 'AgreementType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z]+$"})
    AgreementViewSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#AgreementViewSummary', name: 'AgreementViewSummary')
    AgreementViewSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#AgreementViewSummaryList', name: 'AgreementViewSummaryList')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.marketplaceagreement#Boolean', name: 'Boolean')
    BoundedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#BoundedString', name: 'BoundedString', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^(.)+$"})
    ByolPricingTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#ByolPricingTerm', name: 'ByolPricingTerm')
    Catalog = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#Catalog', name: 'Catalog', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    ConfigurableUpfrontPricingTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#ConfigurableUpfrontPricingTerm', name: 'ConfigurableUpfrontPricingTerm')
    ConfigurableUpfrontPricingTermConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#ConfigurableUpfrontPricingTermConfiguration', name: 'ConfigurableUpfrontPricingTermConfiguration')
    ConfigurableUpfrontRateCardItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#ConfigurableUpfrontRateCardItem', name: 'ConfigurableUpfrontRateCardItem')
    ConfigurableUpfrontRateCardList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#ConfigurableUpfrontRateCardList', name: 'ConfigurableUpfrontRateCardList')
    Constraints = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#Constraints', name: 'Constraints')
    CurrencyCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#CurrencyCode', name: 'CurrencyCode', traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^[A-Z]+$"})
    DescribeAgreementInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#DescribeAgreementInput', name: 'DescribeAgreementInput')
    DescribeAgreementOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#DescribeAgreementOutput', name: 'DescribeAgreementOutput')
    Dimension = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#Dimension', name: 'Dimension')
    DimensionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#DimensionList', name: 'DimensionList', traits: {"smithy.api#length" => {"min" => 1}})
    DocumentItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#DocumentItem', name: 'DocumentItem')
    DocumentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#DocumentList', name: 'DocumentList')
    EstimatedCharges = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#EstimatedCharges', name: 'EstimatedCharges')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#ExceptionMessage', name: 'ExceptionMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#Filter', name: 'Filter')
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#FilterList', name: 'FilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#FilterName', name: 'FilterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z_]+$"})
    FilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#FilterValue', name: 'FilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9+:_-]+$"})
    FilterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#FilterValueList', name: 'FilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FixedUpfrontPricingTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#FixedUpfrontPricingTerm', name: 'FixedUpfrontPricingTerm')
    FreeTrialPricingTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#FreeTrialPricingTerm', name: 'FreeTrialPricingTerm')
    GetAgreementTermsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#GetAgreementTermsInput', name: 'GetAgreementTermsInput')
    GetAgreementTermsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#GetAgreementTermsOutput', name: 'GetAgreementTermsOutput')
    GrantItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#GrantItem', name: 'GrantItem')
    GrantList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#GrantList', name: 'GrantList')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LegalTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#LegalTerm', name: 'LegalTerm')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.marketplaceagreement#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=]+$"})
    OfferId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#OfferId', name: 'OfferId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S{1,64}$"})
    PaymentScheduleTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#PaymentScheduleTerm', name: 'PaymentScheduleTerm')
    PositiveIntegerWithDefaultValueOne = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.marketplaceagreement#PositiveIntegerWithDefaultValueOne', name: 'PositiveIntegerWithDefaultValueOne', traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 1}})
    ProposalSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#ProposalSummary', name: 'ProposalSummary')
    Proposer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#Proposer', name: 'Proposer')
    RateCardItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#RateCardItem', name: 'RateCardItem')
    RateCardList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#RateCardList', name: 'RateCardList')
    RecurringPaymentTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#RecurringPaymentTerm', name: 'RecurringPaymentTerm')
    RenewalTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#RenewalTerm', name: 'RenewalTerm')
    RenewalTermConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#RenewalTermConfiguration', name: 'RenewalTermConfiguration')
    RequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#RequestId', name: 'RequestId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#Resource', name: 'Resource')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_/-]+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplaceagreement#ResourceType', name: 'ResourceType')
    Resources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#Resources', name: 'Resources')
    ScheduleItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#ScheduleItem', name: 'ScheduleItem')
    ScheduleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#ScheduleList', name: 'ScheduleList')
    SearchAgreementsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#SearchAgreementsInput', name: 'SearchAgreementsInput')
    SearchAgreementsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#SearchAgreementsOutput', name: 'SearchAgreementsOutput')
    Selector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#Selector', name: 'Selector')
    Sort = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#Sort', name: 'Sort')
    SortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#SortBy', name: 'SortBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z_]+$"})
    SortOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplaceagreement#SortOrder', name: 'SortOrder')
    SupportTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#SupportTerm', name: 'SupportTerm')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.marketplaceagreement#Timestamp', name: 'Timestamp')
    UnversionedTermType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceagreement#UnversionedTermType', name: 'UnversionedTermType', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[A-Za-z]+$"})
    UsageBasedPricingTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#UsageBasedPricingTerm', name: 'UsageBasedPricingTerm')
    UsageBasedRateCardItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#UsageBasedRateCardItem', name: 'UsageBasedRateCardItem')
    UsageBasedRateCardList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#UsageBasedRateCardList', name: 'UsageBasedRateCardList')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceagreement#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplaceagreement#ValidationExceptionReason', name: 'ValidationExceptionReason')
    ValidityTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceagreement#ValidityTerm', name: 'ValidityTerm')
    ZeroValueInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.marketplaceagreement#ZeroValueInteger', name: 'ZeroValueInteger', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})

    AcceptedTerm.add_member(:legal_term, Types::AcceptedTerm::LegalTerm, Smithy::Schema::Shapes::ShapeRef.new(shape: LegalTerm, location_name: 'legalTerm', traits: {"smithy.api#documentation" => "<p>Defines the list of text agreements proposed to the acceptors. An example is the end user license agreement (EULA).</p>"}))
    AcceptedTerm.add_member(:support_term, Types::AcceptedTerm::SupportTerm, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportTerm, location_name: 'supportTerm', traits: {"smithy.api#documentation" => "<p>Defines the customer support available for the acceptors when they purchase the software.</p>"}))
    AcceptedTerm.add_member(:renewal_term, Types::AcceptedTerm::RenewalTerm, Smithy::Schema::Shapes::ShapeRef.new(shape: RenewalTerm, location_name: 'renewalTerm', traits: {"smithy.api#documentation" => "<p>Defines that on graceful expiration of the agreement (when the agreement ends on its pre-defined end date), a new agreement will be created using the accepted terms on the existing agreement. In other words, the agreement will be renewed. Presence of <code>RenewalTerm</code> in the offer document means that auto-renewal is allowed. Buyers will have the option to accept or decline auto-renewal at the offer acceptance/agreement creation. Buyers can also change this flag from <code>True</code> to <code>False</code> or <code>False</code> to <code>True</code> at anytime during the agreement's lifecycle.</p>"}))
    AcceptedTerm.add_member(:usage_based_pricing_term, Types::AcceptedTerm::UsageBasedPricingTerm, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageBasedPricingTerm, location_name: 'usageBasedPricingTerm', traits: {"smithy.api#documentation" => "<p>Defines a usage-based pricing model (typically, pay-as-you-go pricing), where the customers are charged based on product usage.</p>"}))
    AcceptedTerm.add_member(:configurable_upfront_pricing_term, Types::AcceptedTerm::ConfigurableUpfrontPricingTerm, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurableUpfrontPricingTerm, location_name: 'configurableUpfrontPricingTerm', traits: {"smithy.api#documentation" => "<p>Defines a prepaid payment model that allows buyers to configure the entitlements they want to purchase and the duration.</p>"}))
    AcceptedTerm.add_member(:byol_pricing_term, Types::AcceptedTerm::ByolPricingTerm, Smithy::Schema::Shapes::ShapeRef.new(shape: ByolPricingTerm, location_name: 'byolPricingTerm', traits: {"smithy.api#documentation" => "<p>Enables you and your customers to move your existing agreements to AWS Marketplace. The customer won't be charged for product usage in AWS Marketplace because they already paid for the product outside of AWS Marketplace.</p>"}))
    AcceptedTerm.add_member(:recurring_payment_term, Types::AcceptedTerm::RecurringPaymentTerm, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringPaymentTerm, location_name: 'recurringPaymentTerm', traits: {"smithy.api#documentation" => "<p>Defines a pricing model where customers are charged a fixed recurring price at the end of each billing period.</p>"}))
    AcceptedTerm.add_member(:validity_term, Types::AcceptedTerm::ValidityTerm, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidityTerm, location_name: 'validityTerm', traits: {"smithy.api#documentation" => "<p>Defines the conditions that will keep an agreement created from this offer valid.</p>"}))
    AcceptedTerm.add_member(:payment_schedule_term, Types::AcceptedTerm::PaymentScheduleTerm, Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentScheduleTerm, location_name: 'paymentScheduleTerm', traits: {"smithy.api#documentation" => "<p>Defines an installment-based pricing model where customers are charged a fixed price on different dates during the agreement validity period. This is used most commonly for flexible payment schedule pricing.</p>"}))
    AcceptedTerm.add_member(:free_trial_pricing_term, Types::AcceptedTerm::FreeTrialPricingTerm, Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTrialPricingTerm, location_name: 'freeTrialPricingTerm', traits: {"smithy.api#documentation" => "<p>Defines a short-term free pricing model where the buyers aren’t charged anything within a specified limit.</p>"}))
    AcceptedTerm.add_member(:fixed_upfront_pricing_term, Types::AcceptedTerm::FixedUpfrontPricingTerm, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedUpfrontPricingTerm, location_name: 'fixedUpfrontPricingTerm', traits: {"smithy.api#documentation" => "<p>Defines a pre-paid pricing model where the customers are charged a fixed upfront amount.</p>"}))
    AcceptedTerm.add_member(:unknown, Types::AcceptedTerm::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AcceptedTerm.type = Types::AcceptedTerm
    AcceptedTermList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptedTerm)
    Acceptor.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The AWS account ID of the acceptor.</p>"}))
    Acceptor.type = Types::Acceptor
    AccessDeniedException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the error.</p>"}))
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AgreementStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AgreementStatus.add_member(:archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHIVED', traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    AgreementStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    AgreementStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    AgreementStatus.add_member(:renewed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RENEWED', traits: {"smithy.api#enumValue" => "RENEWED"}))
    AgreementStatus.add_member(:replaced, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACED', traits: {"smithy.api#enumValue" => "REPLACED"}))
    AgreementStatus.add_member(:rolled_back, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLED_BACK', traits: {"smithy.api#enumValue" => "ROLLED_BACK"}))
    AgreementStatus.add_member(:superseded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPERSEDED', traits: {"smithy.api#enumValue" => "SUPERSEDED"}))
    AgreementStatus.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    AgreementViewSummary.add_member(:agreement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'agreementId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agreement.</p>"}))
    AgreementViewSummary.add_member(:acceptance_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'acceptanceTime', traits: {"smithy.api#documentation" => "<p>The date and time that the agreement was accepted.</p>"}))
    AgreementViewSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The date and time when the agreement starts.</p>"}))
    AgreementViewSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The date and time when the agreement ends. The field is <code>null</code> for\n         pay-as-you-go agreements, which don’t have end dates.</p>"}))
    AgreementViewSummary.add_member(:agreement_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementType, location_name: 'agreementType', traits: {"smithy.api#documentation" => "<p>The type of agreement. Values are <code>PurchaseAgreement</code> or\n            <code>VendorInsightsAgreement</code>.</p>"}))
    AgreementViewSummary.add_member(:acceptor, Smithy::Schema::Shapes::ShapeRef.new(shape: Acceptor, location_name: 'acceptor', traits: {"smithy.api#documentation" => "<p>Details of the party accepting the agreement terms. This is commonly the buyer for\n            <code>PurchaseAgreement.</code>\n         </p>"}))
    AgreementViewSummary.add_member(:proposer, Smithy::Schema::Shapes::ShapeRef.new(shape: Proposer, location_name: 'proposer', traits: {"smithy.api#documentation" => "<p>Details of the party proposing the agreement terms, most commonly the seller for\n            <code>PurchaseAgreement</code>.</p>"}))
    AgreementViewSummary.add_member(:proposal_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalSummary, location_name: 'proposalSummary', traits: {"smithy.api#documentation" => "<p>A summary of the proposal</p>"}))
    AgreementViewSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the agreement. </p>"}))
    AgreementViewSummary.type = Types::AgreementViewSummary
    AgreementViewSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementViewSummary)
    ByolPricingTerm.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Type of the term being updated.</p>"}))
    ByolPricingTerm.type = Types::ByolPricingTerm
    ConfigurableUpfrontPricingTerm.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Category of selector.</p>"}))
    ConfigurableUpfrontPricingTerm.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'currencyCode', traits: {"smithy.api#documentation" => "<p>Defines the currency for the prices mentioned in the term.</p>"}))
    ConfigurableUpfrontPricingTerm.add_member(:rate_cards, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurableUpfrontRateCardList, location_name: 'rateCards', traits: {"smithy.api#documentation" => "<p>A rate card defines the per unit rates for product dimensions.</p>"}))
    ConfigurableUpfrontPricingTerm.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurableUpfrontPricingTermConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>Additional parameters specified by the acceptor while accepting the term.</p>"}))
    ConfigurableUpfrontPricingTerm.type = Types::ConfigurableUpfrontPricingTerm
    ConfigurableUpfrontPricingTermConfiguration.add_member(:selector_value, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'selectorValue', traits: {"smithy.api#documentation" => "<p>Defines the length of time for which the particular pricing/dimension is being purchased\n         by the acceptor.</p>", "smithy.api#required" => {}}))
    ConfigurableUpfrontPricingTermConfiguration.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionList, location_name: 'dimensions', traits: {"smithy.api#documentation" => "<p>Defines the dimensions that the acceptor has purchased from the overall set of\n         dimensions presented in the rate card.</p>", "smithy.api#required" => {}}))
    ConfigurableUpfrontPricingTermConfiguration.type = Types::ConfigurableUpfrontPricingTermConfiguration
    ConfigurableUpfrontRateCardItem.add_member(:selector, Smithy::Schema::Shapes::ShapeRef.new(shape: Selector, location_name: 'selector', traits: {"smithy.api#documentation" => "<p>Differentiates between the mutually exclusive rate cards in the same pricing term to be selected by the buyer.</p>"}))
    ConfigurableUpfrontRateCardItem.add_member(:constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: Constraints, location_name: 'constraints', traits: {"smithy.api#documentation" => "<p>Defines limits on how the term can be configured by acceptors.</p>"}))
    ConfigurableUpfrontRateCardItem.add_member(:rate_card, Smithy::Schema::Shapes::ShapeRef.new(shape: RateCardList, location_name: 'rateCard', traits: {"smithy.api#documentation" => "<p>Defines the per unit rates for product dimensions.</p>"}))
    ConfigurableUpfrontRateCardItem.type = Types::ConfigurableUpfrontRateCardItem
    ConfigurableUpfrontRateCardList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurableUpfrontRateCardItem)
    Constraints.add_member(:multiple_dimension_selection, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'multipleDimensionSelection', traits: {"smithy.api#documentation" => "<p>Determines if buyers are allowed to select multiple dimensions in the rate card. The\n         possible values are <code>Allowed</code> and <code>Disallowed</code>. The default value is\n            <code>Allowed</code>.</p>"}))
    Constraints.add_member(:quantity_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'quantityConfiguration', traits: {"smithy.api#documentation" => "<p>Determines if acceptors are allowed to configure quantity for each dimension in rate\n         card. The possible values are <code>Allowed</code> and <code>Disallowed</code>. The default\n         value is <code>Allowed</code>.</p>"}))
    Constraints.type = Types::Constraints
    DescribeAgreementInput.add_member(:agreement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'agreementId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agreement.</p>", "smithy.api#required" => {}}))
    DescribeAgreementInput.type = Types::DescribeAgreementInput
    DescribeAgreementOutput.add_member(:agreement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'agreementId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agreement.</p>"}))
    DescribeAgreementOutput.add_member(:acceptor, Smithy::Schema::Shapes::ShapeRef.new(shape: Acceptor, location_name: 'acceptor', traits: {"smithy.api#documentation" => "<p>The details of the party accepting the agreement terms. This is commonly the buyer for\n            <code>PurchaseAgreement</code>.</p>"}))
    DescribeAgreementOutput.add_member(:proposer, Smithy::Schema::Shapes::ShapeRef.new(shape: Proposer, location_name: 'proposer', traits: {"smithy.api#documentation" => "<p>The details of the party proposing the agreement terms. This is commonly the seller for\n            <code>PurchaseAgreement</code>.</p>"}))
    DescribeAgreementOutput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The date and time when the agreement starts.</p>"}))
    DescribeAgreementOutput.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The date and time when the agreement ends. The field is <code>null</code> for\n         pay-as-you-go agreements, which don’t have end dates.</p>"}))
    DescribeAgreementOutput.add_member(:acceptance_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'acceptanceTime', traits: {"smithy.api#documentation" => "<p>The date and time the offer was accepted or the agreement was created.</p>\n         <note>\n            <p>\n               <code>AcceptanceTime</code> and <code>StartTime</code> can differ for future dated\n            agreements (FDAs).</p>\n         </note>"}))
    DescribeAgreementOutput.add_member(:agreement_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementType, location_name: 'agreementType', traits: {"smithy.api#documentation" => "<p>The type of agreement. Values are <code>PurchaseAgreement</code> or\n            <code>VendorInsightsAgreement</code>.</p>"}))
    DescribeAgreementOutput.add_member(:estimated_charges, Smithy::Schema::Shapes::ShapeRef.new(shape: EstimatedCharges, location_name: 'estimatedCharges', traits: {"smithy.api#documentation" => "<p>The estimated cost of the agreement.</p>"}))
    DescribeAgreementOutput.add_member(:proposal_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalSummary, location_name: 'proposalSummary', traits: {"smithy.api#documentation" => "<p>A summary of the proposal received from the proposer.</p>"}))
    DescribeAgreementOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the agreement.</p>\n         <p>Statuses include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code> – The terms of the agreement are active.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ARCHIVED</code> – The agreement ended without a specified reason.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELLED</code> – The acceptor ended the agreement before the defined end\n               date.</p>\n            </li>\n            <li>\n               <p>\n                  <code>EXPIRED</code> – The agreement ended on the defined end date.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RENEWED</code> – The agreement was renewed into a new agreement (for\n               example, an auto-renewal).</p>\n            </li>\n            <li>\n               <p>\n                  <code>REPLACED</code> – The agreement was replaced using an agreement replacement\n               offer.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ROLLED_BACK</code> (Only applicable to inactive agreement revisions) – The\n               agreement revision has been rolled back because of an error. An earlier revision is\n               now active.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUPERCEDED</code> (Only applicable to inactive agreement revisions) – The\n               agreement revision is no longer active and another agreement revision is now\n               active.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TERMINATED</code> – The agreement ended before the defined end date because\n               of an AWS termination (for example, a payment failure).</p>\n            </li>\n         </ul>"}))
    DescribeAgreementOutput.type = Types::DescribeAgreementOutput
    Dimension.add_member(:dimension_key, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'dimensionKey', traits: {"smithy.api#documentation" => "<p>The name of key value of the dimension.</p>", "smithy.api#required" => {}}))
    Dimension.add_member(:dimension_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroValueInteger, location_name: 'dimensionValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of units of the dimension the acceptor has purchased.</p>\n         <note>\n            <p>For Agreements with <code>ConfigurableUpfrontPricingTerm</code>, the\n               <code>RateCard</code> section will define the prices and dimensions defined by the\n            seller (proposer), whereas the <code>Configuration</code> section will define the actual\n            dimensions, prices, and units the buyer has chosen to accept.</p>\n         </note>", "smithy.api#required" => {}}))
    Dimension.type = Types::Dimension
    DimensionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension)
    DocumentItem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Category of the document. Document types include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CustomEula</code> – A custom EULA provided by you as seller. A URL for a\n               EULA stored in an accessible Amazon S3 bucket is required for this document\n               type.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CustomDsa</code> – A custom Data Subscription Agreement (DSA) provided by\n               you as seller. A URL for a DSA stored in an accessible Amazon S3 bucket is required\n               for this document type.</p>\n            </li>\n            <li>\n               <p>\n                  <code>StandardEula</code> – The Standard Contract for AWS Marketplace (SCMP). For\n               more information about SCMP, see the AWS Marketplace Seller Guide. You don’t provide\n               a URL for this type because it’s managed by AWS Marketplace.</p>\n            </li>\n            <li>\n               <p>\n                  <code>StandardDsa</code> – DSA for AWS Marketplace. For more information about the\n               DSA, see the AWS Data Exchange User Guide. You don’t provide a URL for this type\n               because it’s managed by AWS Marketplace.</p>\n            </li>\n         </ul>"}))
    DocumentItem.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'url', traits: {"smithy.api#documentation" => "<p>A URL to the legal document for buyers to read. Required when <code>Type</code> is <code>CustomEula</code>.</p>"}))
    DocumentItem.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'version', traits: {"smithy.api#documentation" => "<p>Version of standard contracts provided by AWS Marketplace. Required when Type is <code>StandardEula</code> or <code>StandardDsa</code>. </p>"}))
    DocumentItem.type = Types::DocumentItem
    DocumentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentItem)
    EstimatedCharges.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'currencyCode', traits: {"smithy.api#documentation" => "<p>Defines the currency code for the charge.</p>"}))
    EstimatedCharges.add_member(:agreement_value, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'agreementValue', traits: {"smithy.api#documentation" => "<p>The total known amount customer has to pay across the lifecycle of the agreement.</p>\n         <note>\n            <p>This is the total contract value if accepted terms contain\n               <code>ConfigurableUpfrontPricingTerm</code> or <code>FixedUpfrontPricingTerm</code>.\n            In the case of pure contract pricing, this will be the total value of the contract. In\n            the case of contracts with consumption pricing, this will only include the committed\n            value and not include any overages that occur.</p>\n            <p>If the accepted terms contain <code>PaymentScheduleTerm</code>, it will be the total\n            payment schedule amount. This occurs when flexible payment schedule is used, and is the\n            sum of all invoice charges in the payment schedule.</p>\n            <p>In case a customer has amended an agreement, by purchasing more units of any\n            dimension, this will include both the original cost as well as the added cost incurred\n            due to addition of new units. </p>\n            <p>This is <code>0</code> if the accepted terms contain\n               <code>UsageBasedPricingTerm</code> without\n               <code>ConfigurableUpfrontPricingTerm</code> or <code>RecurringPaymentTerm</code>.\n            This occurs for usage-based pricing (such as SaaS metered or AMI/container hourly or\n            monthly), because the exact usage is not known upfront.</p>\n         </note>"}))
    EstimatedCharges.type = Types::EstimatedCharges
    Filter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the filter.</p>"}))
    Filter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The filter value.</p>"}))
    Filter.type = Types::Filter
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FilterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    FixedUpfrontPricingTerm.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Category of the term being updated.</p>"}))
    FixedUpfrontPricingTerm.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'currencyCode', traits: {"smithy.api#documentation" => "<p>Defines the currency for the prices mentioned in this term. </p>"}))
    FixedUpfrontPricingTerm.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'duration', traits: {"smithy.api#documentation" => "<p>Contract duration for the terms.</p>"}))
    FixedUpfrontPricingTerm.add_member(:price, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'price', traits: {"smithy.api#documentation" => "<p>Fixed amount to be charged to the customer when this term is accepted.</p>"}))
    FixedUpfrontPricingTerm.add_member(:grants, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantList, location_name: 'grants', traits: {"smithy.api#documentation" => "<p>Entitlements granted to the acceptor of fixed upfront as part of agreement\n         execution.</p>"}))
    FixedUpfrontPricingTerm.type = Types::FixedUpfrontPricingTerm
    FreeTrialPricingTerm.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Category of the term.</p>"}))
    FreeTrialPricingTerm.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'duration', traits: {"smithy.api#documentation" => "<p>Duration of the free trial period (5–31 days). </p>"}))
    FreeTrialPricingTerm.add_member(:grants, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantList, location_name: 'grants', traits: {"smithy.api#documentation" => "<p>Entitlements granted to the acceptor of a free trial as part of an agreement\n         execution.</p>"}))
    FreeTrialPricingTerm.type = Types::FreeTrialPricingTerm
    GetAgreementTermsInput.add_member(:agreement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'agreementId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agreement.</p>", "smithy.api#required" => {}}))
    GetAgreementTermsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of agreements to return in the response.</p>"}))
    GetAgreementTermsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start pagination</p>"}))
    GetAgreementTermsInput.type = Types::GetAgreementTermsInput
    GetAgreementTermsOutput.add_member(:accepted_terms, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptedTermList, location_name: 'acceptedTerms', traits: {"smithy.api#documentation" => "<p>A subset of terms proposed by the proposer that have been accepted by the acceptor as\n         part of the agreement creation.</p>"}))
    GetAgreementTermsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start pagination</p>"}))
    GetAgreementTermsOutput.type = Types::GetAgreementTermsOutput
    GrantItem.add_member(:dimension_key, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'dimensionKey', traits: {"smithy.api#documentation" => "<p>Unique dimension key defined in the product document. Dimensions represent categories of capacity in a product and are specified when the product is listed in AWS Marketplace. </p>"}))
    GrantItem.add_member(:max_quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntegerWithDefaultValueOne, location_name: 'maxQuantity', traits: {"smithy.api#default" => 1, "smithy.api#documentation" => "<p>Maximum amount of capacity that the buyer can be entitled to the given dimension of the product. If <code>MaxQuantity</code> is not provided, the buyer will be able to use an unlimited amount of the given dimension. </p>"}))
    GrantItem.type = Types::GrantItem
    GrantList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GrantItem)
    InternalServerException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the error.</p>"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    LegalTerm.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Category of the term being updated.</p>"}))
    LegalTerm.add_member(:documents, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentList, location_name: 'documents', traits: {"smithy.api#documentation" => "<p>List of references to legal resources proposed to the buyers. An example is the\n         EULA.</p>"}))
    LegalTerm.type = Types::LegalTerm
    PaymentScheduleTerm.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Type of the term.</p>"}))
    PaymentScheduleTerm.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'currencyCode', traits: {"smithy.api#documentation" => "<p>Defines the currency for the prices mentioned in the term. </p>"}))
    PaymentScheduleTerm.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleList, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>List of the payment schedule where each element defines one installment of payment. It\n         contains the information necessary for calculating the price.</p>"}))
    PaymentScheduleTerm.type = Types::PaymentScheduleTerm
    ProposalSummary.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'resources', traits: {"smithy.api#documentation" => "<p>The list of resources involved in the agreement.</p>"}))
    ProposalSummary.add_member(:offer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferId, location_name: 'offerId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the offer in AWS Marketplace.</p>"}))
    ProposalSummary.type = Types::ProposalSummary
    Proposer.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The AWS account ID of the proposer.</p>"}))
    Proposer.type = Types::Proposer
    RateCardItem.add_member(:dimension_key, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'dimensionKey', traits: {"smithy.api#documentation" => "<p>Dimension for which the given entitlement applies. Dimensions represent categories of capacity in a product and are specified when the product is listed in AWS Marketplace.</p>"}))
    RateCardItem.add_member(:price, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'price', traits: {"smithy.api#documentation" => "<p>Per unit price for the product dimension that’s used for calculating the amount to be charged.</p>"}))
    RateCardItem.type = Types::RateCardItem
    RateCardList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RateCardItem)
    RecurringPaymentTerm.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Type of the term being updated.</p>"}))
    RecurringPaymentTerm.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'currencyCode', traits: {"smithy.api#documentation" => "<p>Defines the currency for the prices mentioned in this term. </p>"}))
    RecurringPaymentTerm.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'billingPeriod', traits: {"smithy.api#documentation" => "<p>Defines the recurrence at which buyers are charged.</p>"}))
    RecurringPaymentTerm.add_member(:price, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'price', traits: {"smithy.api#documentation" => "<p>Amount charged to the buyer every billing period.</p>"}))
    RecurringPaymentTerm.type = Types::RecurringPaymentTerm
    RenewalTerm.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Category of the term being updated. </p>"}))
    RenewalTerm.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RenewalTermConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>Additional parameters specified by the acceptor while accepting the term.</p>"}))
    RenewalTerm.type = Types::RenewalTerm
    RenewalTermConfiguration.add_member(:enable_auto_renew, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableAutoRenew', traits: {"smithy.api#documentation" => "<p>Defines whether the acceptor has chosen to auto-renew the agreement at the end of its\n         lifecycle. Can be set to <code>True</code> or <code>False</code>.</p>", "smithy.api#required" => {}}))
    RenewalTermConfiguration.type = Types::RenewalTermConfiguration
    Resource.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource.</p>\n         <note>\n            <p>We mention the term resource, which is most commonly a product, so a\n               <code>resourceId</code> is also a <code>productId</code>.</p>\n         </note>"}))
    Resource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementResourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Type of the resource, which is the product. Values include <code>SaaSProduct</code> or\n            <code>AmiProduct</code>.</p>"}))
    Resource.type = Types::Resource
    ResourceNotFoundException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the error.</p>"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the resource.</p>"}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:agreement, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGREEMENT', traits: {"smithy.api#enumValue" => "Agreement"}))
    Resources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ScheduleItem.add_member(:charge_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'chargeDate', traits: {"smithy.api#documentation" => "<p>The date that the customer would pay the price defined in this payment schedule term. Invoices are generated on the date provided.</p>"}))
    ScheduleItem.add_member(:charge_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'chargeAmount', traits: {"smithy.api#documentation" => "<p>The price that the customer would pay on the scheduled date (chargeDate).</p>"}))
    ScheduleItem.type = Types::ScheduleItem
    ScheduleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleItem)
    SearchAgreementsInput.add_member(:catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: Catalog, location_name: 'catalog', traits: {"smithy.api#documentation" => "<p>The catalog in which the agreement was created.</p>"}))
    SearchAgreementsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The filter name and value pair used to return a specific list of results.</p>\n         <p>The following filters are supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ResourceIdentifier</code> – The unique identifier of the resource.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ResourceType</code> – Type of the resource, which is the product\n                  (<code>AmiProduct</code>, <code>ContainerProduct</code>, or\n                  <code>SaaSProduct</code>).</p>\n            </li>\n            <li>\n               <p>\n                  <code>PartyType</code> – The party type (either <code>Acceptor</code> or\n                  <code>Proposer</code>) of the caller. For agreements where the caller is the\n               proposer, use the <code>Proposer</code> filter. For agreements where the caller is\n               the acceptor, use the <code>Acceptor</code> filter.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AcceptorAccountId</code> – The AWS account ID of the party accepting the\n               agreement terms.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OfferId</code> – The unique identifier of the offer in which the terms are\n               registered in the agreement token.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Status</code> – The current status of the agreement. Values include\n                  <code>ACTIVE</code>, <code>ARCHIVED</code>, <code>CANCELLED</code>,\n                  <code>EXPIRED</code>, <code>RENEWED</code>, <code>REPLACED</code>, and\n                  <code>TERMINATED</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BeforeEndTime</code> – A date used to filter agreements with a date before\n               the <code>endTime</code> of an agreement.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AfterEndTime</code> – A date used to filter agreements with a date after the\n                  <code>endTime</code> of an agreement.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AgreementType</code> – The type of agreement. Values include\n                  <code>PurchaseAgreement</code> or <code>VendorInsightsAgreement</code>.</p>\n            </li>\n         </ul>"}))
    SearchAgreementsInput.add_member(:sort, Smithy::Schema::Shapes::ShapeRef.new(shape: Sort, location_name: 'sort', traits: {"smithy.api#documentation" => "<p>An object that contains the <code>SortBy</code> and <code>SortOrder</code>\n         attributes.</p>"}))
    SearchAgreementsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of agreements to return in the response.</p>"}))
    SearchAgreementsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start pagination.</p>"}))
    SearchAgreementsInput.type = Types::SearchAgreementsInput
    SearchAgreementsOutput.add_member(:agreement_view_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementViewSummaryList, location_name: 'agreementViewSummaries', traits: {"smithy.api#documentation" => "<p>A summary of the agreement, including top-level attributes (for example, the agreement\n         ID, version, proposer, and acceptor).</p>"}))
    SearchAgreementsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token used for pagination. The field is <code>null</code> if there are no more\n         results.</p>"}))
    SearchAgreementsOutput.type = Types::SearchAgreementsOutput
    Selector.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Category of selector.</p>"}))
    Selector.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Contract duration. This field supports the ISO 8601 format. </p>"}))
    Selector.type = Types::Selector
    Sort.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: SortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The attribute on which the data is grouped, which can be by <code>StartTime</code> and\n            <code>EndTime</code>. The default value is <code>EndTime</code>.</p>"}))
    Sort.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The sorting order, which can be <code>ASCENDING</code> or <code>DESCENDING</code>. The\n         default value is <code>DESCENDING</code>.</p>"}))
    Sort.type = Types::Sort
    SortOrder.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SupportTerm.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Category of the term being updated.</p>"}))
    SupportTerm.add_member(:refund_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'refundPolicy', traits: {"smithy.api#documentation" => "<p>Free-text field about the refund policy description that will be shown to customers as\n         is on the website and console.</p>"}))
    SupportTerm.type = Types::SupportTerm
    ThrottlingException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the error.</p>"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UsageBasedPricingTerm.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Category of the term.</p>"}))
    UsageBasedPricingTerm.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'currencyCode', traits: {"smithy.api#documentation" => "<p>Defines the currency for the prices mentioned in the term. </p>"}))
    UsageBasedPricingTerm.add_member(:rate_cards, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageBasedRateCardList, location_name: 'rateCards', traits: {"smithy.api#documentation" => "<p>List of rate cards.</p>"}))
    UsageBasedPricingTerm.type = Types::UsageBasedPricingTerm
    UsageBasedRateCardItem.add_member(:rate_card, Smithy::Schema::Shapes::ShapeRef.new(shape: RateCardList, location_name: 'rateCard', traits: {"smithy.api#documentation" => "<p>Defines the per unit rates for product dimensions.</p>"}))
    UsageBasedRateCardItem.type = Types::UsageBasedRateCardItem
    UsageBasedRateCardList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageBasedRateCardItem)
    ValidationException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The unique identifier associated with the error.</p>"}))
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason associated with the error.</p>"}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The fields associated with the error.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the field associated with the error.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'message', traits: {"smithy.api#documentation" => "<p>See applicable actions.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:invalid_agreement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_AGREEMENT_ID', traits: {"smithy.api#enumValue" => "INVALID_AGREEMENT_ID"}))
    ValidationExceptionReason.add_member(:missing_agreement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_AGREEMENT_ID', traits: {"smithy.api#enumValue" => "MISSING_AGREEMENT_ID"}))
    ValidationExceptionReason.add_member(:invalid_catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CATALOG', traits: {"smithy.api#enumValue" => "INVALID_CATALOG"}))
    ValidationExceptionReason.add_member(:invalid_filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_FILTER_NAME', traits: {"smithy.api#enumValue" => "INVALID_FILTER_NAME"}))
    ValidationExceptionReason.add_member(:invalid_filter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_FILTER_VALUES', traits: {"smithy.api#enumValue" => "INVALID_FILTER_VALUES"}))
    ValidationExceptionReason.add_member(:invalid_sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SORT_BY', traits: {"smithy.api#enumValue" => "INVALID_SORT_BY"}))
    ValidationExceptionReason.add_member(:invalid_sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SORT_ORDER', traits: {"smithy.api#enumValue" => "INVALID_SORT_ORDER"}))
    ValidationExceptionReason.add_member(:invalid_next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NEXT_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_NEXT_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_MAX_RESULTS', traits: {"smithy.api#enumValue" => "INVALID_MAX_RESULTS"}))
    ValidationExceptionReason.add_member(:unsupported_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_FILTERS', traits: {"smithy.api#enumValue" => "UNSUPPORTED_FILTERS"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    ValidityTerm.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UnversionedTermType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Category of the term being updated. </p>"}))
    ValidityTerm.add_member(:agreement_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'agreementDuration', traits: {"smithy.api#documentation" => "<p>Defines the duration that the agreement remains active. If\n            <code>AgreementStartDate</code> isn’t provided, the agreement duration is relative to\n         the agreement signature time. The duration is represented in the ISO_8601 format.</p>"}))
    ValidityTerm.add_member(:agreement_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'agreementStartDate', traits: {"smithy.api#documentation" => "<p>Defines the date when agreement starts. The agreement starts at 00:00:00.000 UTC on the\n         date provided. If <code>AgreementStartDate</code> isn’t provided, the agreement start date\n         is determined based on agreement signature time.</p>"}))
    ValidityTerm.add_member(:agreement_end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'agreementEndDate', traits: {"smithy.api#documentation" => "<p>Defines the date when the agreement ends. The agreement ends at 23:59:59.999 UTC on the\n         date provided. If <code>AgreementEndDate</code> isn’t provided, the agreement end date is\n         determined by the validity of individual terms.</p>"}))
    ValidityTerm.type = Types::ValidityTerm

    AWSMPCommerceServiceV20200301 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplaceagreement#AWSMPCommerceService_v20200301"
      service.name = "AWSMPCommerceServiceV20200301"
      service.version = "2020-03-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Agreement", "endpointPrefix" => "agreement-marketplace"}, "aws.auth#sigv4" => {"name" => "aws-marketplace"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Marketplace Agreement Service"}
      service.add_operation(:describe_agreement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#DescribeAgreement"
        operation.name = "DescribeAgreement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgreementInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgreementOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_agreement_terms, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#GetAgreementTerms"
        operation.name = "GetAgreementTerms"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgreementTermsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgreementTermsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetAgreementTerms.new
      end)
      service.add_operation(:search_agreements, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#SearchAgreements"
        operation.name = "SearchAgreements"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchAgreementsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchAgreementsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::SearchAgreements.new
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
