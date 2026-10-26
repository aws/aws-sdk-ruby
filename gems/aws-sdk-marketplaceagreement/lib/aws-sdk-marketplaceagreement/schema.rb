# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceAgreement
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AWSAccountId", name: "AWSAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    AcceptAgreementCancellationRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AcceptAgreementCancellationRequestInput", name: "AcceptAgreementCancellationRequestInput")
    AcceptAgreementCancellationRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AcceptAgreementCancellationRequestOutput", name: "AcceptAgreementCancellationRequestOutput")
    AcceptAgreementPaymentRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AcceptAgreementPaymentRequestInput", name: "AcceptAgreementPaymentRequestInput")
    AcceptAgreementPaymentRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AcceptAgreementPaymentRequestOutput", name: "AcceptAgreementPaymentRequestOutput")
    AcceptAgreementRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AcceptAgreementRequestInput", name: "AcceptAgreementRequestInput")
    AcceptAgreementRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AcceptAgreementRequestOutput", name: "AcceptAgreementRequestOutput")
    AcceptedTerm = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplaceagreement#AcceptedTerm", name: "AcceptedTerm")
    AcceptedTermList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#AcceptedTermList", name: "AcceptedTermList")
    Acceptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Acceptor", name: "Acceptor")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#AccessDeniedExceptionReason", name: "AccessDeniedExceptionReason")
    AgreementCancellationRequestCancellationReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementCancellationRequestCancellationReason", name: "AgreementCancellationRequestCancellationReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#sensitive" => {}})
    AgreementCancellationRequestDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementCancellationRequestDescription", name: "AgreementCancellationRequestDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#sensitive" => {}})
    AgreementCancellationRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementCancellationRequestId", name: "AgreementCancellationRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^acr-[a-zA-Z0-9]+$"})
    AgreementCancellationRequestReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#AgreementCancellationRequestReasonCode", name: "AgreementCancellationRequestReasonCode")
    AgreementCancellationRequestRejectionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementCancellationRequestRejectionReason", name: "AgreementCancellationRequestRejectionReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#sensitive" => {}})
    AgreementCancellationRequestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#AgreementCancellationRequestStatus", name: "AgreementCancellationRequestStatus")
    AgreementCancellationRequestStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementCancellationRequestStatusMessage", name: "AgreementCancellationRequestStatusMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    AgreementCancellationRequestSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AgreementCancellationRequestSummary", name: "AgreementCancellationRequestSummary")
    AgreementCancellationRequestSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#AgreementCancellationRequestSummaryList", name: "AgreementCancellationRequestSummaryList")
    AgreementEntitlement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AgreementEntitlement", name: "AgreementEntitlement")
    AgreementEntitlementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#AgreementEntitlementList", name: "AgreementEntitlementList")
    AgreementEntitlementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#AgreementEntitlementStatus", name: "AgreementEntitlementStatus")
    AgreementEntitlementStatusReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#AgreementEntitlementStatusReasonCode", name: "AgreementEntitlementStatusReasonCode")
    AgreementId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementId", name: "AgreementId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_/-]+$"})
    AgreementInvoiceLineItemGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#AgreementInvoiceLineItemGroupSummaries", name: "AgreementInvoiceLineItemGroupSummaries")
    AgreementInvoiceLineItemGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AgreementInvoiceLineItemGroupSummary", name: "AgreementInvoiceLineItemGroupSummary")
    AgreementProposalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementProposalId", name: "AgreementProposalId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(at-|ap-)[A-Za-z0-9]+$"})
    AgreementRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementRequestId", name: "AgreementRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^ar-[A-Za-z0-9]+$"})
    AgreementResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementResourceType", name: "AgreementResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    AgreementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#AgreementStatus", name: "AgreementStatus")
    AgreementType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AgreementType", name: "AgreementType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z]+$"})
    AgreementViewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#AgreementViewSummary", name: "AgreementViewSummary")
    AgreementViewSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#AgreementViewSummaryList", name: "AgreementViewSummaryList")
    AwsArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#AwsArn", name: "AwsArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    BatchCreateBillingAdjustmentError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#BatchCreateBillingAdjustmentError", name: "BatchCreateBillingAdjustmentError")
    BatchCreateBillingAdjustmentErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#BatchCreateBillingAdjustmentErrorList", name: "BatchCreateBillingAdjustmentErrorList")
    BatchCreateBillingAdjustmentItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#BatchCreateBillingAdjustmentItem", name: "BatchCreateBillingAdjustmentItem")
    BatchCreateBillingAdjustmentItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#BatchCreateBillingAdjustmentItemList", name: "BatchCreateBillingAdjustmentItemList")
    BatchCreateBillingAdjustmentRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#BatchCreateBillingAdjustmentRequestEntry", name: "BatchCreateBillingAdjustmentRequestEntry")
    BatchCreateBillingAdjustmentRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#BatchCreateBillingAdjustmentRequestEntryList", name: "BatchCreateBillingAdjustmentRequestEntryList")
    BatchCreateBillingAdjustmentRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#BatchCreateBillingAdjustmentRequestInput", name: "BatchCreateBillingAdjustmentRequestInput")
    BatchCreateBillingAdjustmentRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#BatchCreateBillingAdjustmentRequestOutput", name: "BatchCreateBillingAdjustmentRequestOutput")
    BillingAdjustmentDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#BillingAdjustmentDescription", name: "BillingAdjustmentDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#sensitive" => {}})
    BillingAdjustmentErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#BillingAdjustmentErrorCode", name: "BillingAdjustmentErrorCode")
    BillingAdjustmentReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#BillingAdjustmentReasonCode", name: "BillingAdjustmentReasonCode")
    BillingAdjustmentRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#BillingAdjustmentRequestId", name: "BillingAdjustmentRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^ba-[a-zA-Z0-9]+$"})
    BillingAdjustmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#BillingAdjustmentStatus", name: "BillingAdjustmentStatus")
    BillingAdjustmentStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#BillingAdjustmentStatusMessage", name: "BillingAdjustmentStatusMessage", traits: {"smithy.api#length" => {"max" => 500}})
    BillingAdjustmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#BillingAdjustmentSummary", name: "BillingAdjustmentSummary")
    BillingAdjustmentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#BillingAdjustmentSummaryList", name: "BillingAdjustmentSummaryList")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.marketplaceagreement#Boolean", name: "Boolean")
    BoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#BoundedString", name: "BoundedString", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^(.)+$"})
    ByolPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ByolPricingTerm", name: "ByolPricingTerm")
    CancelAgreementCancellationRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#CancelAgreementCancellationRequestInput", name: "CancelAgreementCancellationRequestInput")
    CancelAgreementCancellationRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#CancelAgreementCancellationRequestOutput", name: "CancelAgreementCancellationRequestOutput")
    CancelAgreementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#CancelAgreementInput", name: "CancelAgreementInput")
    CancelAgreementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#CancelAgreementOutput", name: "CancelAgreementOutput")
    CancelAgreementPaymentRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#CancelAgreementPaymentRequestInput", name: "CancelAgreementPaymentRequestInput")
    CancelAgreementPaymentRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#CancelAgreementPaymentRequestOutput", name: "CancelAgreementPaymentRequestOutput")
    Catalog = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#Catalog", name: "Catalog", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9.-]+$"})
    Charge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Charge", name: "Charge")
    ChargeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#ChargeId", name: "ChargeId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^ch-[a-zA-Z0-9]+$"})
    ChargePercentage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#ChargePercentage", name: "ChargePercentage", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#pattern" => "^(100(\\.0{1,2})?|[1-9]\\d?(\\.\\d{1,2})?|0\\.(0[1-9]|[1-9]\\d?))$"})
    ChargeRevision = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplaceagreement#ChargeRevision", name: "ChargeRevision", traits: {"smithy.api#range" => {"min" => 1}})
    ChargeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ChargeSummary", name: "ChargeSummary")
    Charges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#Charges", name: "Charges")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ConfigurableUpfrontPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ConfigurableUpfrontPricingTerm", name: "ConfigurableUpfrontPricingTerm")
    ConfigurableUpfrontPricingTermConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ConfigurableUpfrontPricingTermConfiguration", name: "ConfigurableUpfrontPricingTermConfiguration")
    ConfigurableUpfrontRateCardItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ConfigurableUpfrontRateCardItem", name: "ConfigurableUpfrontRateCardItem")
    ConfigurableUpfrontRateCardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#ConfigurableUpfrontRateCardList", name: "ConfigurableUpfrontRateCardList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Constraints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Constraints", name: "Constraints")
    CreateAgreementRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#CreateAgreementRequestInput", name: "CreateAgreementRequestInput")
    CreateAgreementRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#CreateAgreementRequestOutput", name: "CreateAgreementRequestOutput")
    CurrencyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#CurrencyCode", name: "CurrencyCode", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^[A-Z]+$"})
    DayDuration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#DayDuration", name: "DayDuration", traits: {"smithy.api#length" => {"min" => 3, "max" => 9}, "smithy.api#pattern" => "^P([1-9]\\d{0,6}D)$"})
    DescribeAgreementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#DescribeAgreementInput", name: "DescribeAgreementInput")
    DescribeAgreementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#DescribeAgreementOutput", name: "DescribeAgreementOutput")
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Dimension", name: "Dimension")
    DimensionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#DimensionList", name: "DimensionList", traits: {"smithy.api#length" => {"min" => 1}})
    DocumentItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#DocumentItem", name: "DocumentItem")
    DocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#DocumentList", name: "DocumentList")
    EndTimeBehavior = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#EndTimeBehavior", name: "EndTimeBehavior")
    EndTimeBehaviorReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#EndTimeBehaviorReasonCode", name: "EndTimeBehaviorReasonCode")
    EndTimeBehaviorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#EndTimeBehaviorType", name: "EndTimeBehaviorType")
    Entitlement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Entitlement", name: "Entitlement")
    EntitlementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#EntitlementList", name: "EntitlementList")
    EntitlementType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#EntitlementType", name: "EntitlementType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z:]+$"})
    EstimatedCharges = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#EstimatedCharges", name: "EstimatedCharges")
    EstimatedTaxes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#EstimatedTaxes", name: "EstimatedTaxes")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#ExceptionMessage", name: "ExceptionMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ExpectedCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ExpectedCharge", name: "ExpectedCharge")
    ExpectedChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#ExpectedChargeList", name: "ExpectedChargeList")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#FilterList", name: "FilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#FilterName", name: "FilterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z_]+$"})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9.,+:/_-]+$"})
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#FilterValueList", name: "FilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FixedPercentage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#FixedPercentage", name: "FixedPercentage")
    FixedUpfrontPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#FixedUpfrontPricingTerm", name: "FixedUpfrontPricingTerm")
    FreeTrialPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#FreeTrialPricingTerm", name: "FreeTrialPricingTerm")
    GetAgreementCancellationRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetAgreementCancellationRequestInput", name: "GetAgreementCancellationRequestInput")
    GetAgreementCancellationRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetAgreementCancellationRequestOutput", name: "GetAgreementCancellationRequestOutput")
    GetAgreementEntitlementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetAgreementEntitlementsInput", name: "GetAgreementEntitlementsInput")
    GetAgreementEntitlementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetAgreementEntitlementsOutput", name: "GetAgreementEntitlementsOutput")
    GetAgreementPaymentRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetAgreementPaymentRequestInput", name: "GetAgreementPaymentRequestInput")
    GetAgreementPaymentRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetAgreementPaymentRequestOutput", name: "GetAgreementPaymentRequestOutput")
    GetAgreementTermsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetAgreementTermsInput", name: "GetAgreementTermsInput")
    GetAgreementTermsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetAgreementTermsOutput", name: "GetAgreementTermsOutput")
    GetBillingAdjustmentRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetBillingAdjustmentRequestInput", name: "GetBillingAdjustmentRequestInput")
    GetBillingAdjustmentRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GetBillingAdjustmentRequestOutput", name: "GetBillingAdjustmentRequestOutput")
    GrantItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#GrantItem", name: "GrantItem")
    GrantList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#GrantList", name: "GrantList")
    ISO8601Duration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#ISO8601Duration", name: "ISO8601Duration", traits: {"smithy.api#pattern" => "^([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?$"})
    Intent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#Intent", name: "Intent")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvoiceBillingPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#InvoiceBillingPeriod", name: "InvoiceBillingPeriod")
    InvoiceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#InvoiceId", name: "InvoiceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    InvoiceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#InvoiceType", name: "InvoiceType")
    InvoicingEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#InvoicingEntity", name: "InvoicingEntity")
    ItemizedCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ItemizedCharge", name: "ItemizedCharge")
    ItemizedChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#ItemizedChargeList", name: "ItemizedChargeList")
    LegalTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#LegalTerm", name: "LegalTerm")
    LineItemGroupBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#LineItemGroupBy", name: "LineItemGroupBy")
    ListAgreementCancellationRequestsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ListAgreementCancellationRequestsInput", name: "ListAgreementCancellationRequestsInput")
    ListAgreementCancellationRequestsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ListAgreementCancellationRequestsOutput", name: "ListAgreementCancellationRequestsOutput")
    ListAgreementChargesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ListAgreementChargesInput", name: "ListAgreementChargesInput")
    ListAgreementChargesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ListAgreementChargesOutput", name: "ListAgreementChargesOutput")
    ListAgreementInvoiceLineItemsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ListAgreementInvoiceLineItemsInput", name: "ListAgreementInvoiceLineItemsInput")
    ListAgreementInvoiceLineItemsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ListAgreementInvoiceLineItemsOutput", name: "ListAgreementInvoiceLineItemsOutput")
    ListAgreementPaymentRequestsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ListAgreementPaymentRequestsInput", name: "ListAgreementPaymentRequestsInput")
    ListAgreementPaymentRequestsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ListAgreementPaymentRequestsOutput", name: "ListAgreementPaymentRequestsOutput")
    ListBillingAdjustmentRequestsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ListBillingAdjustmentRequestsInput", name: "ListBillingAdjustmentRequestsInput")
    ListBillingAdjustmentRequestsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ListBillingAdjustmentRequestsOutput", name: "ListBillingAdjustmentRequestsOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplaceagreement#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    NetPaymentTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#NetPaymentTerm", name: "NetPaymentTerm")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"max" => 8192}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=_-]+$"})
    OfferId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#OfferId", name: "OfferId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S{1,64}$"})
    OfferSetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#OfferSetId", name: "OfferSetId", traits: {"smithy.api#pattern" => "^\\S{1,50}$"})
    OffsetDuration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#OffsetDuration", name: "OffsetDuration", traits: {"smithy.api#length" => {"min" => 3, "max" => 6}, "smithy.api#pattern" => "^P(\\d{1,4}M|\\d{1,4}D)$"})
    PartyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#PartyType", name: "PartyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z]+$"})
    PaymentRequestApprovalStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#PaymentRequestApprovalStrategy", name: "PaymentRequestApprovalStrategy")
    PaymentRequestDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#PaymentRequestDescription", name: "PaymentRequestDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#sensitive" => {}})
    PaymentRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#PaymentRequestId", name: "PaymentRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^pr-[a-zA-Z0-9]+$"})
    PaymentRequestName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#PaymentRequestName", name: "PaymentRequestName", traits: {"smithy.api#length" => {"min" => 5, "max" => 64}, "smithy.api#pattern" => "^.+$"})
    PaymentRequestRejectionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#PaymentRequestRejectionReason", name: "PaymentRequestRejectionReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    PaymentRequestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#PaymentRequestStatus", name: "PaymentRequestStatus")
    PaymentRequestStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#PaymentRequestStatusMessage", name: "PaymentRequestStatusMessage")
    PaymentRequestSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#PaymentRequestSummary", name: "PaymentRequestSummary")
    PaymentRequestSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#PaymentRequestSummaryList", name: "PaymentRequestSummaryList")
    PaymentScheduleEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#PaymentScheduleEntry", name: "PaymentScheduleEntry")
    PaymentScheduleEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#PaymentScheduleEntryList", name: "PaymentScheduleEntryList")
    PaymentScheduleTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#PaymentScheduleTerm", name: "PaymentScheduleTerm")
    PaymentScheduleTermTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#PaymentScheduleTermTemplate", name: "PaymentScheduleTermTemplate")
    PercentageRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#PercentageRange", name: "PercentageRange")
    PositiveAmountUpto8Decimals = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#PositiveAmountUpto8Decimals", name: "PositiveAmountUpto8Decimals", traits: {"smithy.api#pattern" => "^[0-9]*(\\.[0-9]{0,8})?$"})
    PositiveIntegerWithDefaultValueOne = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplaceagreement#PositiveIntegerWithDefaultValueOne", name: "PositiveIntegerWithDefaultValueOne", traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 1}})
    PriceIncrease = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplaceagreement#PriceIncrease", name: "PriceIncrease")
    PriceIncreasePercentage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#PriceIncreasePercentage", name: "PriceIncreasePercentage", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#pattern" => "^(100(\\.0{1,2})?|[1-9]\\d?(\\.\\d{1,2})?|0(\\.\\d{1,2})?)$"})
    PricingCurrencyAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#PricingCurrencyAmount", name: "PricingCurrencyAmount")
    ProposalSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ProposalSummary", name: "ProposalSummary")
    Proposer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Proposer", name: "Proposer")
    PurchaseOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#PurchaseOrder", name: "PurchaseOrder")
    PurchaseOrderReference = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#PurchaseOrderReference", name: "PurchaseOrderReference", traits: {"smithy.api#length" => {"min" => 1}})
    PurchaseOrders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#PurchaseOrders", name: "PurchaseOrders", traits: {"smithy.api#length" => {"min" => 1, "max" => 86}})
    RateCardItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RateCardItem", name: "RateCardItem")
    RateCardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#RateCardList", name: "RateCardList")
    RecurringPaymentTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RecurringPaymentTerm", name: "RecurringPaymentTerm")
    RegistrationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#RegistrationToken", name: "RegistrationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[A-Za-z0-9+/=.:_-]+$"})
    RejectAgreementCancellationRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RejectAgreementCancellationRequestInput", name: "RejectAgreementCancellationRequestInput")
    RejectAgreementCancellationRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RejectAgreementCancellationRequestOutput", name: "RejectAgreementCancellationRequestOutput")
    RejectAgreementPaymentRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RejectAgreementPaymentRequestInput", name: "RejectAgreementPaymentRequestInput")
    RejectAgreementPaymentRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RejectAgreementPaymentRequestOutput", name: "RejectAgreementPaymentRequestOutput")
    RenewalSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RenewalSummary", name: "RenewalSummary")
    RenewalTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RenewalTerm", name: "RenewalTerm")
    RenewalTermConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RenewalTermConfiguration", name: "RenewalTermConfiguration")
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#RequestId", name: "RequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    RequestedTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#RequestedTerm", name: "RequestedTerm")
    RequestedTermConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplaceagreement#RequestedTermConfiguration", name: "RequestedTermConfiguration")
    RequestedTermList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#RequestedTermList", name: "RequestedTermList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
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
    SendAgreementCancellationRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#SendAgreementCancellationRequestInput", name: "SendAgreementCancellationRequestInput")
    SendAgreementCancellationRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#SendAgreementCancellationRequestOutput", name: "SendAgreementCancellationRequestOutput")
    SendAgreementPaymentRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#SendAgreementPaymentRequestInput", name: "SendAgreementPaymentRequestInput")
    SendAgreementPaymentRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#SendAgreementPaymentRequestOutput", name: "SendAgreementPaymentRequestOutput")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Sort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#Sort", name: "Sort")
    SortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#SortBy", name: "SortBy", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z_]+$"})
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#SortOrder", name: "SortOrder")
    SupportTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#SupportTerm", name: "SupportTerm")
    TaxBreakdown = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#TaxBreakdown", name: "TaxBreakdown")
    TaxBreakdownItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#TaxBreakdownItem", name: "TaxBreakdownItem")
    TaxConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#TaxConfiguration", name: "TaxConfiguration")
    TaxEstimation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#TaxEstimation", name: "TaxEstimation")
    TermId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#TermId", name: "TermId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9+=;,.@\\-_]+$"})
    TermTemplate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplaceagreement#TermTemplate", name: "TermTemplate")
    TermTemplateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#TermTemplateList", name: "TermTemplateList")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.marketplaceagreement#Timestamp", name: "Timestamp")
    Timing = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#Timing", name: "Timing")
    UnversionedTermType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplaceagreement#UnversionedTermType", name: "UnversionedTermType", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[A-Za-z]+$"})
    UpdatePurchaseOrdersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#UpdatePurchaseOrdersInput", name: "UpdatePurchaseOrdersInput")
    UpdatePurchaseOrdersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#UpdatePurchaseOrdersOutput", name: "UpdatePurchaseOrdersOutput")
    UsageBasedPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#UsageBasedPricingTerm", name: "UsageBasedPricingTerm")
    UsageBasedRateCardItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#UsageBasedRateCardItem", name: "UsageBasedRateCardItem")
    UsageBasedRateCardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#UsageBasedRateCardList", name: "UsageBasedRateCardList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplaceagreement#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplaceagreement#ValidationExceptionReason", name: "ValidationExceptionReason")
    ValidityTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#ValidityTerm", name: "ValidityTerm")
    VariablePaymentTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#VariablePaymentTerm", name: "VariablePaymentTerm")
    VariablePaymentTermConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplaceagreement#VariablePaymentTermConfiguration", name: "VariablePaymentTermConfiguration")
    ZeroValueInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplaceagreement#ZeroValueInteger", name: "ZeroValueInteger", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})

    AcceptAgreementCancellationRequestInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    AcceptAgreementCancellationRequestInput.add_member(:agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestId, name: "agreementCancellationRequestId", traits: {"smithy.api#required" => {}}))
    AcceptAgreementCancellationRequestInput.type = Types::AcceptAgreementCancellationRequestInput
    AcceptAgreementCancellationRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    AcceptAgreementCancellationRequestOutput.add_member(:agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestId, name: "agreementCancellationRequestId"))
    AcceptAgreementCancellationRequestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestStatus, name: "status"))
    AcceptAgreementCancellationRequestOutput.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestReasonCode, name: "reasonCode"))
    AcceptAgreementCancellationRequestOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestDescription, name: "description"))
    AcceptAgreementCancellationRequestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    AcceptAgreementCancellationRequestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    AcceptAgreementCancellationRequestOutput.type = Types::AcceptAgreementCancellationRequestOutput
    AcceptAgreementPaymentRequestInput.add_member(:payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestId, name: "paymentRequestId", traits: {"smithy.api#required" => {}}))
    AcceptAgreementPaymentRequestInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    AcceptAgreementPaymentRequestInput.add_member(:purchase_order_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOrderReference, name: "purchaseOrderReference"))
    AcceptAgreementPaymentRequestInput.type = Types::AcceptAgreementPaymentRequestInput
    AcceptAgreementPaymentRequestOutput.add_member(:payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestId, name: "paymentRequestId"))
    AcceptAgreementPaymentRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    AcceptAgreementPaymentRequestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestStatus, name: "status"))
    AcceptAgreementPaymentRequestOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestName, name: "name"))
    AcceptAgreementPaymentRequestOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestDescription, name: "description"))
    AcceptAgreementPaymentRequestOutput.add_member(:charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveAmountUpto8Decimals, name: "chargeAmount"))
    AcceptAgreementPaymentRequestOutput.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    AcceptAgreementPaymentRequestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    AcceptAgreementPaymentRequestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    AcceptAgreementPaymentRequestOutput.type = Types::AcceptAgreementPaymentRequestOutput
    AcceptAgreementRequestInput.add_member(:agreement_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementRequestId, name: "agreementRequestId", traits: {"smithy.api#required" => {}}))
    AcceptAgreementRequestInput.add_member(:purchase_orders, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOrders, name: "purchaseOrders"))
    AcceptAgreementRequestInput.type = Types::AcceptAgreementRequestInput
    AcceptAgreementRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId"))
    AcceptAgreementRequestOutput.type = Types::AcceptAgreementRequestOutput
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
    AcceptedTerm.add_member(:variable_payment_term, Types::AcceptedTerm::VariablePaymentTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: VariablePaymentTerm, name: "variablePaymentTerm"))
    AcceptedTerm.add_member(:net_payment_term, Types::AcceptedTerm::NetPaymentTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: NetPaymentTerm, name: "netPaymentTerm"))
    AcceptedTerm.add_member(:unknown, Types::AcceptedTerm::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AcceptedTerm.type = Types::AcceptedTerm
    AcceptedTermList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptedTerm, name: "member"))
    Acceptor.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "accountId"))
    Acceptor.type = Types::Acceptor
    AccessDeniedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AccessDeniedException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedExceptionReason, name: "reason"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedExceptionReason.add_member(:invalid_account_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ACCOUNT_STATE", traits: {"smithy.api#enumValue" => "INVALID_ACCOUNT_STATE"}))
    AccessDeniedExceptionReason.add_member(:denied_by_private_marketplace_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENIED_BY_PRIVATE_MARKETPLACE_POLICY", traits: {"smithy.api#enumValue" => "DENIED_BY_PRIVATE_MARKETPLACE_POLICY"}))
    AccessDeniedExceptionReason.add_member(:failed_kyc_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_KYC_COMPLIANCE", traits: {"smithy.api#enumValue" => "FAILED_KYC_COMPLIANCE"}))
    AccessDeniedExceptionReason.add_member(:missing_mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_MFA", traits: {"smithy.api#enumValue" => "MISSING_MFA"}))
    AccessDeniedExceptionReason.add_member(:invalid_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ACCESS", traits: {"smithy.api#enumValue" => "INVALID_ACCESS"}))
    AgreementCancellationRequestReasonCode.add_member(:incorrect_terms_accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCORRECT_TERMS_ACCEPTED", traits: {"smithy.api#enumValue" => "INCORRECT_TERMS_ACCEPTED"}))
    AgreementCancellationRequestReasonCode.add_member(:replacing_agreement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACING_AGREEMENT", traits: {"smithy.api#enumValue" => "REPLACING_AGREEMENT"}))
    AgreementCancellationRequestReasonCode.add_member(:test_agreement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST_AGREEMENT", traits: {"smithy.api#enumValue" => "TEST_AGREEMENT"}))
    AgreementCancellationRequestReasonCode.add_member(:alternative_procurement_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALTERNATIVE_PROCUREMENT_CHANNEL", traits: {"smithy.api#enumValue" => "ALTERNATIVE_PROCUREMENT_CHANNEL"}))
    AgreementCancellationRequestReasonCode.add_member(:product_discontinued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCT_DISCONTINUED", traits: {"smithy.api#enumValue" => "PRODUCT_DISCONTINUED"}))
    AgreementCancellationRequestReasonCode.add_member(:unintended_renewal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNINTENDED_RENEWAL", traits: {"smithy.api#enumValue" => "UNINTENDED_RENEWAL"}))
    AgreementCancellationRequestReasonCode.add_member(:buyer_dissatisfaction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUYER_DISSATISFACTION", traits: {"smithy.api#enumValue" => "BUYER_DISSATISFACTION"}))
    AgreementCancellationRequestReasonCode.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    AgreementCancellationRequestStatus.add_member(:pending_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_APPROVAL", traits: {"smithy.api#enumValue" => "PENDING_APPROVAL"}))
    AgreementCancellationRequestStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    AgreementCancellationRequestStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    AgreementCancellationRequestStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    AgreementCancellationRequestStatus.add_member(:validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    AgreementCancellationRequestSummary.add_member(:agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestId, name: "agreementCancellationRequestId"))
    AgreementCancellationRequestSummary.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    AgreementCancellationRequestSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestStatus, name: "status"))
    AgreementCancellationRequestSummary.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestReasonCode, name: "reasonCode"))
    AgreementCancellationRequestSummary.add_member(:agreement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementType, name: "agreementType"))
    AgreementCancellationRequestSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog"))
    AgreementCancellationRequestSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    AgreementCancellationRequestSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    AgreementCancellationRequestSummary.type = Types::AgreementCancellationRequestSummary
    AgreementCancellationRequestSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestSummary, name: "member"))
    AgreementEntitlement.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "resource"))
    AgreementEntitlement.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementType, name: "type"))
    AgreementEntitlement.add_member(:registration_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationToken, name: "registrationToken"))
    AgreementEntitlement.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementEntitlementStatus, name: "status"))
    AgreementEntitlement.add_member(:status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementEntitlementStatusReasonCode, name: "statusReasonCode"))
    AgreementEntitlement.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsArn, name: "licenseArn"))
    AgreementEntitlement.type = Types::AgreementEntitlement
    AgreementEntitlementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementEntitlement, name: "member"))
    AgreementEntitlementStatus.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONED", traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    AgreementEntitlementStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    AgreementEntitlementStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    AgreementEntitlementStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AgreementEntitlementStatus.add_member(:deprovisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPROVISIONED", traits: {"smithy.api#enumValue" => "DEPROVISIONED"}))
    AgreementEntitlementStatusReasonCode.add_member(:provisioning_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING_IN_PROGRESS", traits: {"smithy.api#enumValue" => "PROVISIONING_IN_PROGRESS"}))
    AgreementEntitlementStatusReasonCode.add_member(:future_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FUTURE_START_DATE", traits: {"smithy.api#enumValue" => "FUTURE_START_DATE"}))
    AgreementEntitlementStatusReasonCode.add_member(:invalid_payment_instrument, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PAYMENT_INSTRUMENT", traits: {"smithy.api#enumValue" => "INVALID_PAYMENT_INSTRUMENT"}))
    AgreementEntitlementStatusReasonCode.add_member(:incompatible_currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_CURRENCY", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_CURRENCY"}))
    AgreementEntitlementStatusReasonCode.add_member(:account_suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_SUSPENDED", traits: {"smithy.api#enumValue" => "ACCOUNT_SUSPENDED"}))
    AgreementEntitlementStatusReasonCode.add_member(:unsupported_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_OPERATION", traits: {"smithy.api#enumValue" => "UNSUPPORTED_OPERATION"}))
    AgreementEntitlementStatusReasonCode.add_member(:agreement_inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGREEMENT_INACTIVE", traits: {"smithy.api#enumValue" => "AGREEMENT_INACTIVE"}))
    AgreementEntitlementStatusReasonCode.add_member(:agreement_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGREEMENT_ACTIVE", traits: {"smithy.api#enumValue" => "AGREEMENT_ACTIVE"}))
    AgreementEntitlementStatusReasonCode.add_member(:product_restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCT_RESTRICTED", traits: {"smithy.api#enumValue" => "PRODUCT_RESTRICTED"}))
    AgreementInvoiceLineItemGroupSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementInvoiceLineItemGroupSummary, name: "member"))
    AgreementInvoiceLineItemGroupSummary.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId"))
    AgreementInvoiceLineItemGroupSummary.add_member(:invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "invoiceId"))
    AgreementInvoiceLineItemGroupSummary.add_member(:pricing_currency_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingCurrencyAmount, name: "pricingCurrencyAmount"))
    AgreementInvoiceLineItemGroupSummary.add_member(:invoice_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceBillingPeriod, name: "invoiceBillingPeriod"))
    AgreementInvoiceLineItemGroupSummary.add_member(:issued_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "issuedTime"))
    AgreementInvoiceLineItemGroupSummary.add_member(:invoice_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceType, name: "invoiceType"))
    AgreementInvoiceLineItemGroupSummary.add_member(:invoicing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoicingEntity, name: "invoicingEntity"))
    AgreementInvoiceLineItemGroupSummary.type = Types::AgreementInvoiceLineItemGroupSummary
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
    AgreementViewSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    AgreementViewSummary.add_member(:agreement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementType, name: "agreementType"))
    AgreementViewSummary.add_member(:acceptor, ::Smithy::Schema::Shapes::MemberShape.new(target: Acceptor, name: "acceptor"))
    AgreementViewSummary.add_member(:proposer, ::Smithy::Schema::Shapes::MemberShape.new(target: Proposer, name: "proposer"))
    AgreementViewSummary.add_member(:proposal_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ProposalSummary, name: "proposalSummary"))
    AgreementViewSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementStatus, name: "status"))
    AgreementViewSummary.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementList, name: "entitlements"))
    AgreementViewSummary.add_member(:initial_agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "initialAgreementId"))
    AgreementViewSummary.add_member(:end_time_behavior_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTimeBehaviorType, name: "endTimeBehaviorType"))
    AgreementViewSummary.add_member(:end_time_behavior_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTimeBehaviorReasonCode, name: "endTimeBehaviorReasonCode"))
    AgreementViewSummary.type = Types::AgreementViewSummary
    AgreementViewSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementViewSummary, name: "member"))
    BatchCreateBillingAdjustmentError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentError.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentError.type = Types::BatchCreateBillingAdjustmentError
    BatchCreateBillingAdjustmentErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateBillingAdjustmentError, name: "member"))
    BatchCreateBillingAdjustmentItem.add_member(:billing_adjustment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentRequestId, name: "billingAdjustmentRequestId", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentItem.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentItem.type = Types::BatchCreateBillingAdjustmentItem
    BatchCreateBillingAdjustmentItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateBillingAdjustmentItem, name: "member"))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:original_invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceId, name: "originalInvoiceId", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:adjustment_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveAmountUpto8Decimals, name: "adjustmentAmount", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:adjustment_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentReasonCode, name: "adjustmentReasonCode", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentDescription, name: "description"))
    BatchCreateBillingAdjustmentRequestEntry.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentRequestEntry.type = Types::BatchCreateBillingAdjustmentRequestEntry
    BatchCreateBillingAdjustmentRequestEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateBillingAdjustmentRequestEntry, name: "member"))
    BatchCreateBillingAdjustmentRequestInput.add_member(:billing_adjustment_request_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateBillingAdjustmentRequestEntryList, name: "billingAdjustmentRequestEntries", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentRequestInput.type = Types::BatchCreateBillingAdjustmentRequestInput
    BatchCreateBillingAdjustmentRequestOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateBillingAdjustmentItemList, name: "items", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentRequestOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateBillingAdjustmentErrorList, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchCreateBillingAdjustmentRequestOutput.type = Types::BatchCreateBillingAdjustmentRequestOutput
    BillingAdjustmentErrorCode.add_member(:conflict_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFLICT_EXCEPTION", traits: {"smithy.api#enumValue" => "CONFLICT_EXCEPTION"}))
    BillingAdjustmentErrorCode.add_member(:validation_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_EXCEPTION", traits: {"smithy.api#enumValue" => "VALIDATION_EXCEPTION"}))
    BillingAdjustmentErrorCode.add_member(:resource_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND_EXCEPTION", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND_EXCEPTION"}))
    BillingAdjustmentErrorCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    BillingAdjustmentReasonCode.add_member(:incorrect_terms_accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCORRECT_TERMS_ACCEPTED", traits: {"smithy.api#enumValue" => "INCORRECT_TERMS_ACCEPTED"}))
    BillingAdjustmentReasonCode.add_member(:incorrect_metering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCORRECT_METERING", traits: {"smithy.api#enumValue" => "INCORRECT_METERING"}))
    BillingAdjustmentReasonCode.add_member(:test_environment_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST_ENVIRONMENT_CHARGES", traits: {"smithy.api#enumValue" => "TEST_ENVIRONMENT_CHARGES"}))
    BillingAdjustmentReasonCode.add_member(:alternative_procurement_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALTERNATIVE_PROCUREMENT_CHANNEL", traits: {"smithy.api#enumValue" => "ALTERNATIVE_PROCUREMENT_CHANNEL"}))
    BillingAdjustmentReasonCode.add_member(:unintended_renewal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNINTENDED_RENEWAL", traits: {"smithy.api#enumValue" => "UNINTENDED_RENEWAL"}))
    BillingAdjustmentReasonCode.add_member(:buyer_dissatisfaction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUYER_DISSATISFACTION", traits: {"smithy.api#enumValue" => "BUYER_DISSATISFACTION"}))
    BillingAdjustmentReasonCode.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    BillingAdjustmentStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    BillingAdjustmentStatus.add_member(:validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    BillingAdjustmentStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    BillingAdjustmentSummary.add_member(:billing_adjustment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentRequestId, name: "billingAdjustmentRequestId", traits: {"smithy.api#required" => {}}))
    BillingAdjustmentSummary.add_member(:original_invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceId, name: "originalInvoiceId", traits: {"smithy.api#required" => {}}))
    BillingAdjustmentSummary.add_member(:adjustment_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveAmountUpto8Decimals, name: "adjustmentAmount", traits: {"smithy.api#required" => {}}))
    BillingAdjustmentSummary.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode", traits: {"smithy.api#required" => {}}))
    BillingAdjustmentSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    BillingAdjustmentSummary.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    BillingAdjustmentSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    BillingAdjustmentSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    BillingAdjustmentSummary.add_member(:agreement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementType, name: "agreementType", traits: {"smithy.api#required" => {}}))
    BillingAdjustmentSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    BillingAdjustmentSummary.type = Types::BillingAdjustmentSummary
    BillingAdjustmentSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentSummary, name: "member"))
    ByolPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    ByolPricingTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
    ByolPricingTerm.type = Types::ByolPricingTerm
    CancelAgreementCancellationRequestInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    CancelAgreementCancellationRequestInput.add_member(:agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestId, name: "agreementCancellationRequestId", traits: {"smithy.api#required" => {}}))
    CancelAgreementCancellationRequestInput.add_member(:cancellation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestCancellationReason, name: "cancellationReason", traits: {"smithy.api#required" => {}}))
    CancelAgreementCancellationRequestInput.type = Types::CancelAgreementCancellationRequestInput
    CancelAgreementCancellationRequestOutput.add_member(:agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestId, name: "agreementCancellationRequestId"))
    CancelAgreementCancellationRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    CancelAgreementCancellationRequestOutput.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestReasonCode, name: "reasonCode"))
    CancelAgreementCancellationRequestOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestDescription, name: "description"))
    CancelAgreementCancellationRequestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestStatus, name: "status"))
    CancelAgreementCancellationRequestOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestStatusMessage, name: "statusMessage"))
    CancelAgreementCancellationRequestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    CancelAgreementCancellationRequestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    CancelAgreementCancellationRequestOutput.type = Types::CancelAgreementCancellationRequestOutput
    CancelAgreementInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    CancelAgreementInput.type = Types::CancelAgreementInput
    CancelAgreementOutput.type = Types::CancelAgreementOutput
    CancelAgreementPaymentRequestInput.add_member(:payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestId, name: "paymentRequestId", traits: {"smithy.api#required" => {}}))
    CancelAgreementPaymentRequestInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    CancelAgreementPaymentRequestInput.type = Types::CancelAgreementPaymentRequestInput
    CancelAgreementPaymentRequestOutput.add_member(:payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestId, name: "paymentRequestId"))
    CancelAgreementPaymentRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    CancelAgreementPaymentRequestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestStatus, name: "status"))
    CancelAgreementPaymentRequestOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestName, name: "name"))
    CancelAgreementPaymentRequestOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestDescription, name: "description"))
    CancelAgreementPaymentRequestOutput.add_member(:charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveAmountUpto8Decimals, name: "chargeAmount"))
    CancelAgreementPaymentRequestOutput.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    CancelAgreementPaymentRequestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    CancelAgreementPaymentRequestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    CancelAgreementPaymentRequestOutput.type = Types::CancelAgreementPaymentRequestOutput
    Charge.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id"))
    Charge.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ChargeRevision, name: "revision"))
    Charge.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId"))
    Charge.add_member(:agreement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementType, name: "agreementType"))
    Charge.add_member(:purchase_order_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOrderReference, name: "purchaseOrderReference"))
    Charge.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    Charge.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "amount"))
    Charge.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "time"))
    Charge.type = Types::Charge
    ChargeSummary.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    ChargeSummary.add_member(:new_agreement_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "newAgreementValue"))
    ChargeSummary.add_member(:new_agreement_value_after_tax, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "newAgreementValueAfterTax"))
    ChargeSummary.add_member(:expected_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedChargeList, name: "expectedCharges"))
    ChargeSummary.add_member(:estimated_taxes, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedTaxes, name: "estimatedTaxes"))
    ChargeSummary.add_member(:itemized_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemizedChargeList, name: "itemizedCharges"))
    ChargeSummary.add_member(:invoicing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoicingEntity, name: "invoicingEntity"))
    ChargeSummary.type = Types::ChargeSummary
    Charges.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Charge, name: "member"))
    ConfigurableUpfrontPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    ConfigurableUpfrontPricingTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
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
    ConflictException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    Constraints.add_member(:multiple_dimension_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "multipleDimensionSelection"))
    Constraints.add_member(:quantity_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "quantityConfiguration"))
    Constraints.type = Types::Constraints
    CreateAgreementRequestInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAgreementRequestInput.add_member(:intent, ::Smithy::Schema::Shapes::MemberShape.new(target: Intent, name: "intent", traits: {"smithy.api#required" => {}}))
    CreateAgreementRequestInput.add_member(:requested_terms, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedTermList, name: "requestedTerms", traits: {"smithy.api#required" => {}}))
    CreateAgreementRequestInput.add_member(:source_agreement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "sourceAgreementIdentifier"))
    CreateAgreementRequestInput.add_member(:agreement_proposal_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementProposalId, name: "agreementProposalIdentifier"))
    CreateAgreementRequestInput.add_member(:tax_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxConfiguration, name: "taxConfiguration"))
    CreateAgreementRequestInput.type = Types::CreateAgreementRequestInput
    CreateAgreementRequestOutput.add_member(:agreement_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementRequestId, name: "agreementRequestId"))
    CreateAgreementRequestOutput.add_member(:charge_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ChargeSummary, name: "chargeSummary"))
    CreateAgreementRequestOutput.type = Types::CreateAgreementRequestOutput
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
    DescribeAgreementOutput.add_member(:initial_agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "initialAgreementId"))
    DescribeAgreementOutput.add_member(:end_time_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTimeBehavior, name: "endTimeBehavior"))
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
    EndTimeBehavior.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTimeBehaviorType, name: "type", traits: {"smithy.api#required" => {}}))
    EndTimeBehavior.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTimeBehaviorReasonCode, name: "reasonCode"))
    EndTimeBehavior.add_member(:renewal_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalSummary, name: "renewalSummary"))
    EndTimeBehavior.type = Types::EndTimeBehavior
    EndTimeBehaviorReasonCode.add_member(:proposer_renew_opted_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROPOSER_RENEW_OPTED_OUT", traits: {"smithy.api#enumValue" => "PROPOSER_RENEW_OPTED_OUT"}))
    EndTimeBehaviorReasonCode.add_member(:acceptor_renew_opted_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTOR_RENEW_OPTED_OUT", traits: {"smithy.api#enumValue" => "ACCEPTOR_RENEW_OPTED_OUT"}))
    EndTimeBehaviorReasonCode.add_member(:no_renewal_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_RENEWAL_TERM", traits: {"smithy.api#enumValue" => "NO_RENEWAL_TERM"}))
    EndTimeBehaviorReasonCode.add_member(:renewal_limit_exhausted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RENEWAL_LIMIT_EXHAUSTED", traits: {"smithy.api#enumValue" => "RENEWAL_LIMIT_EXHAUSTED"}))
    EndTimeBehaviorType.add_member(:renew, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RENEW", traits: {"smithy.api#enumValue" => "RENEW"}))
    EndTimeBehaviorType.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    EndTimeBehaviorType.add_member(:expire, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRE", traits: {"smithy.api#enumValue" => "EXPIRE"}))
    Entitlement.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "licenseArn"))
    Entitlement.type = Types::Entitlement
    EntitlementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Entitlement, name: "member"))
    EstimatedCharges.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    EstimatedCharges.add_member(:agreement_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "agreementValue"))
    EstimatedCharges.type = Types::EstimatedCharges
    EstimatedTaxes.add_member(:breakdown, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxBreakdown, name: "breakdown"))
    EstimatedTaxes.add_member(:total_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "totalAmount"))
    EstimatedTaxes.type = Types::EstimatedTaxes
    ExpectedCharge.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id"))
    ExpectedCharge.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "time"))
    ExpectedCharge.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "amount"))
    ExpectedCharge.add_member(:amount_after_tax, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "amountAfterTax"))
    ExpectedCharge.add_member(:timing, ::Smithy::Schema::Shapes::MemberShape.new(target: Timing, name: "timing"))
    ExpectedCharge.add_member(:estimated_taxes, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedTaxes, name: "estimatedTaxes"))
    ExpectedCharge.type = Types::ExpectedCharge
    ExpectedChargeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedCharge, name: "member"))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "values"))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    FixedPercentage.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceIncreasePercentage, name: "value"))
    FixedPercentage.type = Types::FixedPercentage
    FixedUpfrontPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    FixedUpfrontPricingTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
    FixedUpfrontPricingTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    FixedUpfrontPricingTerm.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "duration"))
    FixedUpfrontPricingTerm.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "price"))
    FixedUpfrontPricingTerm.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantList, name: "grants"))
    FixedUpfrontPricingTerm.type = Types::FixedUpfrontPricingTerm
    FreeTrialPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    FreeTrialPricingTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
    FreeTrialPricingTerm.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "duration"))
    FreeTrialPricingTerm.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantList, name: "grants"))
    FreeTrialPricingTerm.type = Types::FreeTrialPricingTerm
    GetAgreementCancellationRequestInput.add_member(:agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestId, name: "agreementCancellationRequestId", traits: {"smithy.api#required" => {}}))
    GetAgreementCancellationRequestInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    GetAgreementCancellationRequestInput.type = Types::GetAgreementCancellationRequestInput
    GetAgreementCancellationRequestOutput.add_member(:agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestId, name: "agreementCancellationRequestId"))
    GetAgreementCancellationRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    GetAgreementCancellationRequestOutput.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestReasonCode, name: "reasonCode"))
    GetAgreementCancellationRequestOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestDescription, name: "description"))
    GetAgreementCancellationRequestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestStatus, name: "status"))
    GetAgreementCancellationRequestOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestStatusMessage, name: "statusMessage"))
    GetAgreementCancellationRequestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetAgreementCancellationRequestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    GetAgreementCancellationRequestOutput.type = Types::GetAgreementCancellationRequestOutput
    GetAgreementEntitlementsInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    GetAgreementEntitlementsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetAgreementEntitlementsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetAgreementEntitlementsInput.type = Types::GetAgreementEntitlementsInput
    GetAgreementEntitlementsOutput.add_member(:agreement_entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementEntitlementList, name: "agreementEntitlements"))
    GetAgreementEntitlementsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetAgreementEntitlementsOutput.type = Types::GetAgreementEntitlementsOutput
    GetAgreementPaymentRequestInput.add_member(:payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestId, name: "paymentRequestId", traits: {"smithy.api#required" => {}}))
    GetAgreementPaymentRequestInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    GetAgreementPaymentRequestInput.type = Types::GetAgreementPaymentRequestInput
    GetAgreementPaymentRequestOutput.add_member(:payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestId, name: "paymentRequestId"))
    GetAgreementPaymentRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    GetAgreementPaymentRequestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestStatus, name: "status"))
    GetAgreementPaymentRequestOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestStatusMessage, name: "statusMessage"))
    GetAgreementPaymentRequestOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestName, name: "name"))
    GetAgreementPaymentRequestOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestDescription, name: "description"))
    GetAgreementPaymentRequestOutput.add_member(:charge_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChargeId, name: "chargeId"))
    GetAgreementPaymentRequestOutput.add_member(:charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveAmountUpto8Decimals, name: "chargeAmount"))
    GetAgreementPaymentRequestOutput.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    GetAgreementPaymentRequestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    GetAgreementPaymentRequestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    GetAgreementPaymentRequestOutput.type = Types::GetAgreementPaymentRequestOutput
    GetAgreementTermsInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    GetAgreementTermsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetAgreementTermsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetAgreementTermsInput.type = Types::GetAgreementTermsInput
    GetAgreementTermsOutput.add_member(:accepted_terms, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptedTermList, name: "acceptedTerms"))
    GetAgreementTermsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetAgreementTermsOutput.type = Types::GetAgreementTermsOutput
    GetBillingAdjustmentRequestInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    GetBillingAdjustmentRequestInput.add_member(:billing_adjustment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentRequestId, name: "billingAdjustmentRequestId", traits: {"smithy.api#required" => {}}))
    GetBillingAdjustmentRequestInput.type = Types::GetBillingAdjustmentRequestInput
    GetBillingAdjustmentRequestOutput.add_member(:billing_adjustment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentRequestId, name: "billingAdjustmentRequestId", traits: {"smithy.api#required" => {}}))
    GetBillingAdjustmentRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    GetBillingAdjustmentRequestOutput.add_member(:adjustment_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentReasonCode, name: "adjustmentReasonCode", traits: {"smithy.api#required" => {}}))
    GetBillingAdjustmentRequestOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetBillingAdjustmentRequestOutput.add_member(:original_invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceId, name: "originalInvoiceId", traits: {"smithy.api#required" => {}}))
    GetBillingAdjustmentRequestOutput.add_member(:adjustment_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveAmountUpto8Decimals, name: "adjustmentAmount", traits: {"smithy.api#required" => {}}))
    GetBillingAdjustmentRequestOutput.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode", traits: {"smithy.api#required" => {}}))
    GetBillingAdjustmentRequestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetBillingAdjustmentRequestOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentStatusMessage, name: "statusMessage"))
    GetBillingAdjustmentRequestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetBillingAdjustmentRequestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetBillingAdjustmentRequestOutput.type = Types::GetBillingAdjustmentRequestOutput
    GrantItem.add_member(:dimension_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "dimensionKey"))
    GrantItem.add_member(:max_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerWithDefaultValueOne, name: "maxQuantity", traits: {"smithy.api#default" => 1}))
    GrantItem.type = Types::GrantItem
    GrantList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantItem, name: "member"))
    Intent.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    Intent.add_member(:amend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMEND", traits: {"smithy.api#enumValue" => "AMEND"}))
    Intent.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    InternalServerException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvoiceBillingPeriod.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "month", traits: {"smithy.api#range" => {"min" => 1, "max" => 12}, "smithy.api#required" => {}}))
    InvoiceBillingPeriod.add_member(:year, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "year", traits: {"smithy.api#range" => {"min" => 2023, "max" => 2050}, "smithy.api#required" => {}}))
    InvoiceBillingPeriod.type = Types::InvoiceBillingPeriod
    InvoiceType.add_member(:invoice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVOICE", traits: {"smithy.api#enumValue" => "INVOICE"}))
    InvoiceType.add_member(:credit_memo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_MEMO", traits: {"smithy.api#enumValue" => "CREDIT_MEMO"}))
    InvoicingEntity.add_member(:legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "legalName"))
    InvoicingEntity.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "branchName"))
    InvoicingEntity.type = Types::InvoicingEntity
    ItemizedCharge.add_member(:dimension_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "dimensionKey"))
    ItemizedCharge.add_member(:new_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "newQuantity"))
    ItemizedCharge.add_member(:old_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "oldQuantity"))
    ItemizedCharge.add_member(:charge_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "chargeReference"))
    ItemizedCharge.add_member(:incremental_charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "incrementalChargeAmount"))
    ItemizedCharge.type = Types::ItemizedCharge
    ItemizedChargeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemizedCharge, name: "member"))
    LegalTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    LegalTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
    LegalTerm.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "documents"))
    LegalTerm.type = Types::LegalTerm
    LineItemGroupBy.add_member(:invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVOICE_ID", traits: {"smithy.api#enumValue" => "INVOICE_ID"}))
    ListAgreementCancellationRequestsInput.add_member(:party_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PartyType, name: "partyType", traits: {"smithy.api#required" => {}}))
    ListAgreementCancellationRequestsInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    ListAgreementCancellationRequestsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestStatus, name: "status"))
    ListAgreementCancellationRequestsInput.add_member(:agreement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementType, name: "agreementType"))
    ListAgreementCancellationRequestsInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog"))
    ListAgreementCancellationRequestsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAgreementCancellationRequestsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAgreementCancellationRequestsInput.type = Types::ListAgreementCancellationRequestsInput
    ListAgreementCancellationRequestsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAgreementCancellationRequestsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestSummaryList, name: "items"))
    ListAgreementCancellationRequestsOutput.type = Types::ListAgreementCancellationRequestsOutput
    ListAgreementChargesInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog"))
    ListAgreementChargesInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId"))
    ListAgreementChargesInput.add_member(:agreement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementType, name: "agreementType"))
    ListAgreementChargesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAgreementChargesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAgreementChargesInput.type = Types::ListAgreementChargesInput
    ListAgreementChargesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Charges, name: "items"))
    ListAgreementChargesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAgreementChargesOutput.type = Types::ListAgreementChargesOutput
    ListAgreementInvoiceLineItemsInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    ListAgreementInvoiceLineItemsInput.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemGroupBy, name: "groupBy", traits: {"smithy.api#required" => {}}))
    ListAgreementInvoiceLineItemsInput.add_member(:invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "invoiceId"))
    ListAgreementInvoiceLineItemsInput.add_member(:invoice_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceType, name: "invoiceType"))
    ListAgreementInvoiceLineItemsInput.add_member(:invoice_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceBillingPeriod, name: "invoiceBillingPeriod"))
    ListAgreementInvoiceLineItemsInput.add_member(:before_issued_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "beforeIssuedTime"))
    ListAgreementInvoiceLineItemsInput.add_member(:after_issued_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "afterIssuedTime"))
    ListAgreementInvoiceLineItemsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAgreementInvoiceLineItemsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAgreementInvoiceLineItemsInput.type = Types::ListAgreementInvoiceLineItemsInput
    ListAgreementInvoiceLineItemsOutput.add_member(:agreement_invoice_line_item_group_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementInvoiceLineItemGroupSummaries, name: "agreementInvoiceLineItemGroupSummaries"))
    ListAgreementInvoiceLineItemsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAgreementInvoiceLineItemsOutput.type = Types::ListAgreementInvoiceLineItemsOutput
    ListAgreementPaymentRequestsInput.add_member(:party_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PartyType, name: "partyType", traits: {"smithy.api#required" => {}}))
    ListAgreementPaymentRequestsInput.add_member(:agreement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementType, name: "agreementType"))
    ListAgreementPaymentRequestsInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog"))
    ListAgreementPaymentRequestsInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    ListAgreementPaymentRequestsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestStatus, name: "status"))
    ListAgreementPaymentRequestsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAgreementPaymentRequestsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAgreementPaymentRequestsInput.type = Types::ListAgreementPaymentRequestsInput
    ListAgreementPaymentRequestsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAgreementPaymentRequestsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListAgreementPaymentRequestsOutput.type = Types::ListAgreementPaymentRequestsOutput
    ListBillingAdjustmentRequestsInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    ListBillingAdjustmentRequestsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentStatus, name: "status"))
    ListBillingAdjustmentRequestsInput.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAfter"))
    ListBillingAdjustmentRequestsInput.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdBefore"))
    ListBillingAdjustmentRequestsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListBillingAdjustmentRequestsInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog"))
    ListBillingAdjustmentRequestsInput.add_member(:agreement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementType, name: "agreementType"))
    ListBillingAdjustmentRequestsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBillingAdjustmentRequestsInput.type = Types::ListBillingAdjustmentRequestsInput
    ListBillingAdjustmentRequestsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBillingAdjustmentRequestsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingAdjustmentSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListBillingAdjustmentRequestsOutput.type = Types::ListBillingAdjustmentRequestsOutput
    NetPaymentTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    NetPaymentTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
    NetPaymentTerm.add_member(:payment_due_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "paymentDuePeriod"))
    NetPaymentTerm.type = Types::NetPaymentTerm
    PaymentRequestApprovalStrategy.add_member(:auto_approve_on_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_APPROVE_ON_EXPIRATION", traits: {"smithy.api#enumValue" => "AUTO_APPROVE_ON_EXPIRATION"}))
    PaymentRequestApprovalStrategy.add_member(:wait_for_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAIT_FOR_APPROVAL", traits: {"smithy.api#enumValue" => "WAIT_FOR_APPROVAL"}))
    PaymentRequestStatus.add_member(:validating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATING", traits: {"smithy.api#enumValue" => "VALIDATING"}))
    PaymentRequestStatus.add_member(:validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    PaymentRequestStatus.add_member(:pending_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_APPROVAL", traits: {"smithy.api#enumValue" => "PENDING_APPROVAL"}))
    PaymentRequestStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    PaymentRequestStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    PaymentRequestStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    PaymentRequestSummary.add_member(:payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestId, name: "paymentRequestId"))
    PaymentRequestSummary.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    PaymentRequestSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestStatus, name: "status"))
    PaymentRequestSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestName, name: "name"))
    PaymentRequestSummary.add_member(:charge_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChargeId, name: "chargeId"))
    PaymentRequestSummary.add_member(:charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveAmountUpto8Decimals, name: "chargeAmount"))
    PaymentRequestSummary.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    PaymentRequestSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    PaymentRequestSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    PaymentRequestSummary.type = Types::PaymentRequestSummary
    PaymentRequestSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestSummary, name: "member"))
    PaymentScheduleEntry.add_member(:charge_date_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: OffsetDuration, name: "chargeDateOffset"))
    PaymentScheduleEntry.add_member(:charge_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ChargePercentage, name: "chargePercentage"))
    PaymentScheduleEntry.add_member(:day_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dayOfMonth", traits: {"smithy.api#range" => {"min" => 1, "max" => 31}}))
    PaymentScheduleEntry.type = Types::PaymentScheduleEntry
    PaymentScheduleEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentScheduleEntry, name: "member"))
    PaymentScheduleTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    PaymentScheduleTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
    PaymentScheduleTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    PaymentScheduleTerm.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleList, name: "schedule"))
    PaymentScheduleTerm.type = Types::PaymentScheduleTerm
    PaymentScheduleTermTemplate.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentScheduleEntryList, name: "schedule", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}}))
    PaymentScheduleTermTemplate.type = Types::PaymentScheduleTermTemplate
    PercentageRange.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceIncreasePercentage, name: "minValue"))
    PercentageRange.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceIncreasePercentage, name: "maxValue"))
    PercentageRange.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceIncreasePercentage, name: "defaultValue"))
    PercentageRange.type = Types::PercentageRange
    PriceIncrease.add_member(:fixed_percentage, Types::PriceIncrease::FixedPercentage, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedPercentage, name: "fixedPercentage"))
    PriceIncrease.add_member(:percentage_range, Types::PriceIncrease::PercentageRange, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentageRange, name: "percentageRange"))
    PriceIncrease.add_member(:unknown, Types::PriceIncrease::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PriceIncrease.type = Types::PriceIncrease
    PricingCurrencyAmount.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "amount"))
    PricingCurrencyAmount.add_member(:max_adjustment_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "maxAdjustmentAmount"))
    PricingCurrencyAmount.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    PricingCurrencyAmount.type = Types::PricingCurrencyAmount
    ProposalSummary.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, name: "resources"))
    ProposalSummary.add_member(:offer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferId, name: "offerId"))
    ProposalSummary.add_member(:offer_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferSetId, name: "offerSetId"))
    ProposalSummary.type = Types::ProposalSummary
    Proposer.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "accountId"))
    Proposer.type = Types::Proposer
    PurchaseOrder.add_member(:charge_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "chargeId", traits: {"smithy.api#required" => {}}))
    PurchaseOrder.add_member(:charge_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ChargeRevision, name: "chargeRevision"))
    PurchaseOrder.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "agreementId"))
    PurchaseOrder.add_member(:purchase_order_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOrderReference, name: "purchaseOrderReference"))
    PurchaseOrder.type = Types::PurchaseOrder
    PurchaseOrders.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOrder, name: "member"))
    RateCardItem.add_member(:dimension_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "dimensionKey"))
    RateCardItem.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "price"))
    RateCardItem.type = Types::RateCardItem
    RateCardList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RateCardItem, name: "member"))
    RecurringPaymentTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    RecurringPaymentTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
    RecurringPaymentTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    RecurringPaymentTerm.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "billingPeriod"))
    RecurringPaymentTerm.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "price"))
    RecurringPaymentTerm.type = Types::RecurringPaymentTerm
    RejectAgreementCancellationRequestInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    RejectAgreementCancellationRequestInput.add_member(:agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestId, name: "agreementCancellationRequestId", traits: {"smithy.api#required" => {}}))
    RejectAgreementCancellationRequestInput.add_member(:rejection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestRejectionReason, name: "rejectionReason", traits: {"smithy.api#required" => {}}))
    RejectAgreementCancellationRequestInput.type = Types::RejectAgreementCancellationRequestInput
    RejectAgreementCancellationRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    RejectAgreementCancellationRequestOutput.add_member(:agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestId, name: "agreementCancellationRequestId"))
    RejectAgreementCancellationRequestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestStatus, name: "status"))
    RejectAgreementCancellationRequestOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestStatusMessage, name: "statusMessage"))
    RejectAgreementCancellationRequestOutput.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestReasonCode, name: "reasonCode"))
    RejectAgreementCancellationRequestOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestDescription, name: "description"))
    RejectAgreementCancellationRequestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    RejectAgreementCancellationRequestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    RejectAgreementCancellationRequestOutput.type = Types::RejectAgreementCancellationRequestOutput
    RejectAgreementPaymentRequestInput.add_member(:payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestId, name: "paymentRequestId", traits: {"smithy.api#required" => {}}))
    RejectAgreementPaymentRequestInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    RejectAgreementPaymentRequestInput.add_member(:rejection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestRejectionReason, name: "rejectionReason"))
    RejectAgreementPaymentRequestInput.type = Types::RejectAgreementPaymentRequestInput
    RejectAgreementPaymentRequestOutput.add_member(:payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestId, name: "paymentRequestId"))
    RejectAgreementPaymentRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    RejectAgreementPaymentRequestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestStatus, name: "status"))
    RejectAgreementPaymentRequestOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestStatusMessage, name: "statusMessage"))
    RejectAgreementPaymentRequestOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestName, name: "name"))
    RejectAgreementPaymentRequestOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestDescription, name: "description"))
    RejectAgreementPaymentRequestOutput.add_member(:charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveAmountUpto8Decimals, name: "chargeAmount"))
    RejectAgreementPaymentRequestOutput.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    RejectAgreementPaymentRequestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    RejectAgreementPaymentRequestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    RejectAgreementPaymentRequestOutput.type = Types::RejectAgreementPaymentRequestOutput
    RenewalSummary.add_member(:offer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferId, name: "offerId"))
    RenewalSummary.type = Types::RenewalSummary
    RenewalTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    RenewalTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
    RenewalTerm.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalTermConfiguration, name: "configuration"))
    RenewalTerm.add_member(:lockout_period, ::Smithy::Schema::Shapes::MemberShape.new(target: DayDuration, name: "lockoutPeriod"))
    RenewalTerm.add_member(:max_renewals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxRenewals", traits: {"smithy.api#range" => {"min" => 1}}))
    RenewalTerm.add_member(:adjustment_deadline, ::Smithy::Schema::Shapes::MemberShape.new(target: DayDuration, name: "adjustmentDeadline"))
    RenewalTerm.add_member(:price_increase, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceIncrease, name: "priceIncrease"))
    RenewalTerm.add_member(:term_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TermTemplateList, name: "termTemplates", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}}))
    RenewalTerm.type = Types::RenewalTerm
    RenewalTermConfiguration.add_member(:enable_auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableAutoRenew", traits: {"smithy.api#required" => {}}))
    RenewalTermConfiguration.type = Types::RenewalTermConfiguration
    RequestedTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    RequestedTerm.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedTermConfiguration, name: "configuration"))
    RequestedTerm.type = Types::RequestedTerm
    RequestedTermConfiguration.add_member(:configurable_upfront_pricing_term_configuration, Types::RequestedTermConfiguration::ConfigurableUpfrontPricingTermConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurableUpfrontPricingTermConfiguration, name: "configurableUpfrontPricingTermConfiguration"))
    RequestedTermConfiguration.add_member(:renewal_term_configuration, Types::RequestedTermConfiguration::RenewalTermConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalTermConfiguration, name: "renewalTermConfiguration"))
    RequestedTermConfiguration.add_member(:variable_payment_term_configuration, Types::RequestedTermConfiguration::VariablePaymentTermConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: VariablePaymentTermConfiguration, name: "variablePaymentTermConfiguration"))
    RequestedTermConfiguration.add_member(:unknown, Types::RequestedTermConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RequestedTermConfiguration.type = Types::RequestedTermConfiguration
    RequestedTermList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedTerm, name: "member"))
    Resource.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id"))
    Resource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementResourceType, name: "type"))
    Resource.type = Types::Resource
    ResourceNotFoundException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:agreement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGREEMENT", traits: {"smithy.api#enumValue" => "Agreement"}))
    ResourceType.add_member(:agreement_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGREEMENT_REQUEST", traits: {"smithy.api#enumValue" => "AgreementRequest"}))
    ResourceType.add_member(:agreement_proposal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGREEMENT_PROPOSAL", traits: {"smithy.api#enumValue" => "AgreementProposal"}))
    ResourceType.add_member(:charge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHARGE", traits: {"smithy.api#enumValue" => "Charge"}))
    ResourceType.add_member(:payment_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAYMENT_REQUEST", traits: {"smithy.api#enumValue" => "PaymentRequest"}))
    ResourceType.add_member(:invoice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVOICE", traits: {"smithy.api#enumValue" => "Invoice"}))
    ResourceType.add_member(:agreement_cancellation_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGREEMENT_CANCELLATION_REQUEST", traits: {"smithy.api#enumValue" => "AgreementCancellationRequest"}))
    ResourceType.add_member(:billing_adjustment_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_ADJUSTMENT_REQUEST", traits: {"smithy.api#enumValue" => "BillingAdjustmentRequest"}))
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
    SendAgreementCancellationRequestInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    SendAgreementCancellationRequestInput.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestReasonCode, name: "reasonCode", traits: {"smithy.api#required" => {}}))
    SendAgreementCancellationRequestInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SendAgreementCancellationRequestInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestDescription, name: "description"))
    SendAgreementCancellationRequestInput.type = Types::SendAgreementCancellationRequestInput
    SendAgreementCancellationRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    SendAgreementCancellationRequestOutput.add_member(:agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestId, name: "agreementCancellationRequestId"))
    SendAgreementCancellationRequestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestStatus, name: "status"))
    SendAgreementCancellationRequestOutput.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestReasonCode, name: "reasonCode"))
    SendAgreementCancellationRequestOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementCancellationRequestDescription, name: "description"))
    SendAgreementCancellationRequestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    SendAgreementCancellationRequestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    SendAgreementCancellationRequestOutput.type = Types::SendAgreementCancellationRequestOutput
    SendAgreementPaymentRequestInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SendAgreementPaymentRequestInput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId", traits: {"smithy.api#required" => {}}))
    SendAgreementPaymentRequestInput.add_member(:term_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "termId", traits: {"smithy.api#required" => {}}))
    SendAgreementPaymentRequestInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestName, name: "name", traits: {"smithy.api#required" => {}}))
    SendAgreementPaymentRequestInput.add_member(:charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveAmountUpto8Decimals, name: "chargeAmount", traits: {"smithy.api#required" => {}}))
    SendAgreementPaymentRequestInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestDescription, name: "description"))
    SendAgreementPaymentRequestInput.type = Types::SendAgreementPaymentRequestInput
    SendAgreementPaymentRequestOutput.add_member(:payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestId, name: "paymentRequestId"))
    SendAgreementPaymentRequestOutput.add_member(:agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementId, name: "agreementId"))
    SendAgreementPaymentRequestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestStatus, name: "status"))
    SendAgreementPaymentRequestOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestName, name: "name"))
    SendAgreementPaymentRequestOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestDescription, name: "description"))
    SendAgreementPaymentRequestOutput.add_member(:charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveAmountUpto8Decimals, name: "chargeAmount"))
    SendAgreementPaymentRequestOutput.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    SendAgreementPaymentRequestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    SendAgreementPaymentRequestOutput.type = Types::SendAgreementPaymentRequestOutput
    ServiceQuotaExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "resourceType"))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Sort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortBy, name: "sortBy"))
    Sort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    Sort.type = Types::Sort
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SupportTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    SupportTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
    SupportTerm.add_member(:refund_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "refundPolicy"))
    SupportTerm.type = Types::SupportTerm
    TaxBreakdown.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxBreakdownItem, name: "member"))
    TaxBreakdownItem.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "amount"))
    TaxBreakdownItem.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "rate"))
    TaxBreakdownItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "type"))
    TaxBreakdownItem.type = Types::TaxBreakdownItem
    TaxConfiguration.add_member(:tax_estimation, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxEstimation, name: "taxEstimation", traits: {"smithy.api#default" => "DISABLED"}))
    TaxConfiguration.type = Types::TaxConfiguration
    TaxEstimation.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    TaxEstimation.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    TermTemplate.add_member(:payment_schedule_term_template, Types::TermTemplate::PaymentScheduleTermTemplate, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentScheduleTermTemplate, name: "paymentScheduleTermTemplate"))
    TermTemplate.add_member(:unknown, Types::TermTemplate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TermTemplate.type = Types::TermTemplate
    TermTemplateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TermTemplate, name: "member"))
    ThrottlingException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    Timing.add_member(:on_acceptance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_ACCEPTANCE", traits: {"smithy.api#enumValue" => "ON_ACCEPTANCE"}))
    Timing.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    Timing.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_PERIOD", traits: {"smithy.api#enumValue" => "BILLING_PERIOD"}))
    UpdatePurchaseOrdersInput.add_member(:purchase_orders, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOrders, name: "purchaseOrders", traits: {"smithy.api#required" => {}}))
    UpdatePurchaseOrdersInput.type = Types::UpdatePurchaseOrdersInput
    UpdatePurchaseOrdersOutput.type = Types::UpdatePurchaseOrdersOutput
    UsageBasedPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    UsageBasedPricingTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
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
    ValidationExceptionReason.add_member(:missing_billing_adjustments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_BILLING_ADJUSTMENTS", traits: {"smithy.api#enumValue" => "MISSING_BILLING_ADJUSTMENTS"}))
    ValidationExceptionReason.add_member(:billing_adjustments_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_ADJUSTMENTS_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "BILLING_ADJUSTMENTS_LIMIT_EXCEEDED"}))
    ValidationExceptionReason.add_member(:missing_invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_INVOICE_ID", traits: {"smithy.api#enumValue" => "MISSING_INVOICE_ID"}))
    ValidationExceptionReason.add_member(:invalid_adjustment_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ADJUSTMENT_AMOUNT", traits: {"smithy.api#enumValue" => "INVALID_ADJUSTMENT_AMOUNT"}))
    ValidationExceptionReason.add_member(:missing_adjustment_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_ADJUSTMENT_AMOUNT", traits: {"smithy.api#enumValue" => "MISSING_ADJUSTMENT_AMOUNT"}))
    ValidationExceptionReason.add_member(:invalid_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_REASON_CODE", traits: {"smithy.api#enumValue" => "INVALID_REASON_CODE"}))
    ValidationExceptionReason.add_member(:missing_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_REASON_CODE", traits: {"smithy.api#enumValue" => "MISSING_REASON_CODE"}))
    ValidationExceptionReason.add_member(:missing_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_DESCRIPTION", traits: {"smithy.api#enumValue" => "MISSING_DESCRIPTION"}))
    ValidationExceptionReason.add_member(:invalid_invoice_adjustment_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_INVOICE_ADJUSTMENT_PERIOD", traits: {"smithy.api#enumValue" => "INVALID_INVOICE_ADJUSTMENT_PERIOD"}))
    ValidationExceptionReason.add_member(:invalid_currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_CURRENCY_CODE", traits: {"smithy.api#enumValue" => "INVALID_CURRENCY_CODE"}))
    ValidationExceptionReason.add_member(:missing_currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_CURRENCY_CODE", traits: {"smithy.api#enumValue" => "MISSING_CURRENCY_CODE"}))
    ValidationExceptionReason.add_member(:exceeded_maximum_adjustment_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCEEDED_MAXIMUM_ADJUSTMENT_AMOUNT", traits: {"smithy.api#enumValue" => "EXCEEDED_MAXIMUM_ADJUSTMENT_AMOUNT"}))
    ValidationExceptionReason.add_member(:missing_billing_adjustment_request_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_BILLING_ADJUSTMENT_REQUEST_ENTRY", traits: {"smithy.api#enumValue" => "MISSING_BILLING_ADJUSTMENT_REQUEST_ENTRY"}))
    ValidationExceptionReason.add_member(:multiple_agreement_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIPLE_AGREEMENT_IDS", traits: {"smithy.api#enumValue" => "MULTIPLE_AGREEMENT_IDS"}))
    ValidationExceptionReason.add_member(:invalid_agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_AGREEMENT_CANCELLATION_REQUEST_ID", traits: {"smithy.api#enumValue" => "INVALID_AGREEMENT_CANCELLATION_REQUEST_ID"}))
    ValidationExceptionReason.add_member(:missing_agreement_cancellation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_AGREEMENT_CANCELLATION_REQUEST_ID", traits: {"smithy.api#enumValue" => "MISSING_AGREEMENT_CANCELLATION_REQUEST_ID"}))
    ValidationExceptionReason.add_member(:missing_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_REASON", traits: {"smithy.api#enumValue" => "MISSING_REASON"}))
    ValidationExceptionReason.add_member(:invalid_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_REASON", traits: {"smithy.api#enumValue" => "INVALID_REASON"}))
    ValidationExceptionReason.add_member(:invalid_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_STATUS", traits: {"smithy.api#enumValue" => "INVALID_STATUS"}))
    ValidationExceptionReason.add_member(:invalid_agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_AGREEMENT_ID", traits: {"smithy.api#enumValue" => "INVALID_AGREEMENT_ID"}))
    ValidationExceptionReason.add_member(:missing_agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_AGREEMENT_ID", traits: {"smithy.api#enumValue" => "MISSING_AGREEMENT_ID"}))
    ValidationExceptionReason.add_member(:invalid_catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_CATALOG", traits: {"smithy.api#enumValue" => "INVALID_CATALOG"}))
    ValidationExceptionReason.add_member(:invalid_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_FILTERS", traits: {"smithy.api#enumValue" => "INVALID_FILTERS"}))
    ValidationExceptionReason.add_member(:invalid_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_FILTER_NAME", traits: {"smithy.api#enumValue" => "INVALID_FILTER_NAME"}))
    ValidationExceptionReason.add_member(:missing_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_FILTER_NAME", traits: {"smithy.api#enumValue" => "MISSING_FILTER_NAME"}))
    ValidationExceptionReason.add_member(:invalid_filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_FILTER_VALUES", traits: {"smithy.api#enumValue" => "INVALID_FILTER_VALUES"}))
    ValidationExceptionReason.add_member(:missing_filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_FILTER_VALUES", traits: {"smithy.api#enumValue" => "MISSING_FILTER_VALUES"}))
    ValidationExceptionReason.add_member(:invalid_sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SORT_BY", traits: {"smithy.api#enumValue" => "INVALID_SORT_BY"}))
    ValidationExceptionReason.add_member(:invalid_sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SORT_ORDER", traits: {"smithy.api#enumValue" => "INVALID_SORT_ORDER"}))
    ValidationExceptionReason.add_member(:invalid_next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_NEXT_TOKEN", traits: {"smithy.api#enumValue" => "INVALID_NEXT_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_MAX_RESULTS", traits: {"smithy.api#enumValue" => "INVALID_MAX_RESULTS"}))
    ValidationExceptionReason.add_member(:invalid_term_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_TERM_ID", traits: {"smithy.api#enumValue" => "INVALID_TERM_ID"}))
    ValidationExceptionReason.add_member(:missing_term_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_TERM_ID", traits: {"smithy.api#enumValue" => "MISSING_TERM_ID"}))
    ValidationExceptionReason.add_member(:missing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_NAME", traits: {"smithy.api#enumValue" => "MISSING_NAME"}))
    ValidationExceptionReason.add_member(:invalid_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_NAME", traits: {"smithy.api#enumValue" => "INVALID_NAME"}))
    ValidationExceptionReason.add_member(:invalid_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_DESCRIPTION", traits: {"smithy.api#enumValue" => "INVALID_DESCRIPTION"}))
    ValidationExceptionReason.add_member(:missing_charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_CHARGE_AMOUNT", traits: {"smithy.api#enumValue" => "MISSING_CHARGE_AMOUNT"}))
    ValidationExceptionReason.add_member(:invalid_charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_CHARGE_AMOUNT", traits: {"smithy.api#enumValue" => "INVALID_CHARGE_AMOUNT"}))
    ValidationExceptionReason.add_member(:missing_payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_PAYMENT_REQUEST_ID", traits: {"smithy.api#enumValue" => "MISSING_PAYMENT_REQUEST_ID"}))
    ValidationExceptionReason.add_member(:invalid_payment_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PAYMENT_REQUEST_ID", traits: {"smithy.api#enumValue" => "INVALID_PAYMENT_REQUEST_ID"}))
    ValidationExceptionReason.add_member(:missing_party_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_PARTY_TYPE", traits: {"smithy.api#enumValue" => "MISSING_PARTY_TYPE"}))
    ValidationExceptionReason.add_member(:invalid_party_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PARTY_TYPE", traits: {"smithy.api#enumValue" => "INVALID_PARTY_TYPE"}))
    ValidationExceptionReason.add_member(:unsupported_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_FILTERS", traits: {"smithy.api#enumValue" => "UNSUPPORTED_FILTERS"}))
    ValidationExceptionReason.add_member(:invalid_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_CLIENT_TOKEN", traits: {"smithy.api#enumValue" => "INVALID_CLIENT_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_INTENT", traits: {"smithy.api#enumValue" => "INVALID_INTENT"}))
    ValidationExceptionReason.add_member(:missing_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_INTENT", traits: {"smithy.api#enumValue" => "MISSING_INTENT"}))
    ValidationExceptionReason.add_member(:invalid_source_agreement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SOURCE_AGREEMENT_IDENTIFIER", traits: {"smithy.api#enumValue" => "INVALID_SOURCE_AGREEMENT_IDENTIFIER"}))
    ValidationExceptionReason.add_member(:missing_source_agreement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_SOURCE_AGREEMENT_IDENTIFIER", traits: {"smithy.api#enumValue" => "MISSING_SOURCE_AGREEMENT_IDENTIFIER"}))
    ValidationExceptionReason.add_member(:invalid_agreement_proposal_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_AGREEMENT_PROPOSAL_IDENTIFIER", traits: {"smithy.api#enumValue" => "INVALID_AGREEMENT_PROPOSAL_IDENTIFIER"}))
    ValidationExceptionReason.add_member(:missing_agreement_proposal_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_AGREEMENT_PROPOSAL_IDENTIFIER", traits: {"smithy.api#enumValue" => "MISSING_AGREEMENT_PROPOSAL_IDENTIFIER"}))
    ValidationExceptionReason.add_member(:invalid_requested_terms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_REQUESTED_TERMS", traits: {"smithy.api#enumValue" => "INVALID_REQUESTED_TERMS"}))
    ValidationExceptionReason.add_member(:missing_requested_terms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_REQUESTED_TERMS", traits: {"smithy.api#enumValue" => "MISSING_REQUESTED_TERMS"}))
    ValidationExceptionReason.add_member(:invalid_requested_term_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_REQUESTED_TERM_ID", traits: {"smithy.api#enumValue" => "INVALID_REQUESTED_TERM_ID"}))
    ValidationExceptionReason.add_member(:missing_requested_term_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_REQUESTED_TERM_ID", traits: {"smithy.api#enumValue" => "MISSING_REQUESTED_TERM_ID"}))
    ValidationExceptionReason.add_member(:invalid_requested_term_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_REQUESTED_TERM_CONFIGURATION", traits: {"smithy.api#enumValue" => "INVALID_REQUESTED_TERM_CONFIGURATION"}))
    ValidationExceptionReason.add_member(:missing_requested_term_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_REQUESTED_TERM_CONFIGURATION", traits: {"smithy.api#enumValue" => "MISSING_REQUESTED_TERM_CONFIGURATION"}))
    ValidationExceptionReason.add_member(:invalid_agreement_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_AGREEMENT_REQUEST_ID", traits: {"smithy.api#enumValue" => "INVALID_AGREEMENT_REQUEST_ID"}))
    ValidationExceptionReason.add_member(:missing_agreement_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_AGREEMENT_REQUEST_ID", traits: {"smithy.api#enumValue" => "MISSING_AGREEMENT_REQUEST_ID"}))
    ValidationExceptionReason.add_member(:invalid_purchase_orders, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PURCHASE_ORDERS", traits: {"smithy.api#enumValue" => "INVALID_PURCHASE_ORDERS"}))
    ValidationExceptionReason.add_member(:missing_purchase_orders, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_PURCHASE_ORDERS", traits: {"smithy.api#enumValue" => "MISSING_PURCHASE_ORDERS"}))
    ValidationExceptionReason.add_member(:invalid_charge_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_CHARGE_ID", traits: {"smithy.api#enumValue" => "INVALID_CHARGE_ID"}))
    ValidationExceptionReason.add_member(:missing_charge_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_CHARGE_ID", traits: {"smithy.api#enumValue" => "MISSING_CHARGE_ID"}))
    ValidationExceptionReason.add_member(:invalid_charge_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_CHARGE_REVISION", traits: {"smithy.api#enumValue" => "INVALID_CHARGE_REVISION"}))
    ValidationExceptionReason.add_member(:missing_charge_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_CHARGE_REVISION", traits: {"smithy.api#enumValue" => "MISSING_CHARGE_REVISION"}))
    ValidationExceptionReason.add_member(:invalid_agreement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_AGREEMENT_TYPE", traits: {"smithy.api#enumValue" => "INVALID_AGREEMENT_TYPE"}))
    ValidationExceptionReason.add_member(:invalid_purchase_order_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PURCHASE_ORDER_REFERENCE", traits: {"smithy.api#enumValue" => "INVALID_PURCHASE_ORDER_REFERENCE"}))
    ValidationExceptionReason.add_member(:inactive_agreement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE_AGREEMENT", traits: {"smithy.api#enumValue" => "INACTIVE_AGREEMENT"}))
    ValidationExceptionReason.add_member(:superseded_agreement_proposal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPERSEDED_AGREEMENT_PROPOSAL", traits: {"smithy.api#enumValue" => "SUPERSEDED_AGREEMENT_PROPOSAL"}))
    ValidationExceptionReason.add_member(:expired_agreement_proposal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED_AGREEMENT_PROPOSAL", traits: {"smithy.api#enumValue" => "EXPIRED_AGREEMENT_PROPOSAL"}))
    ValidationExceptionReason.add_member(:missing_mandatory_terms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_MANDATORY_TERMS", traits: {"smithy.api#enumValue" => "MISSING_MANDATORY_TERMS"}))
    ValidationExceptionReason.add_member(:incompatible_terms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_TERMS", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_TERMS"}))
    ValidationExceptionReason.add_member(:missing_usage_agreement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_USAGE_AGREEMENT", traits: {"smithy.api#enumValue" => "MISSING_USAGE_AGREEMENT"}))
    ValidationExceptionReason.add_member(:invalid_incremental_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_INCREMENTAL_CHARGE", traits: {"smithy.api#enumValue" => "INVALID_INCREMENTAL_CHARGE"}))
    ValidationExceptionReason.add_member(:missing_account_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_ACCOUNT_ADDRESS", traits: {"smithy.api#enumValue" => "MISSING_ACCOUNT_ADDRESS"}))
    ValidationExceptionReason.add_member(:unsupported_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_ACTION", traits: {"smithy.api#enumValue" => "UNSUPPORTED_ACTION"}))
    ValidationExceptionReason.add_member(:invalid_rejection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_REJECTION_REASON", traits: {"smithy.api#enumValue" => "INVALID_REJECTION_REASON"}))
    ValidationExceptionReason.add_member(:invalid_payment_request_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PAYMENT_REQUEST_STATUS", traits: {"smithy.api#enumValue" => "INVALID_PAYMENT_REQUEST_STATUS"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    ValidationExceptionReason.add_member(:duplicate_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_CHARGES", traits: {"smithy.api#enumValue" => "DUPLICATE_CHARGES"}))
    ValidationExceptionReason.add_member(:unsupported_account_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_ACCOUNT_PLAN", traits: {"smithy.api#enumValue" => "UNSUPPORTED_ACCOUNT_PLAN"}))
    ValidationExceptionReason.add_member(:duplicate_agreement_in_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_AGREEMENT_IN_ORGANIZATION", traits: {"smithy.api#enumValue" => "DUPLICATE_AGREEMENT_IN_ORGANIZATION"}))
    ValidationExceptionReason.add_member(:missing_purchase_order_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_PURCHASE_ORDER_REFERENCE", traits: {"smithy.api#enumValue" => "MISSING_PURCHASE_ORDER_REFERENCE"}))
    ValidityTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    ValidityTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
    ValidityTerm.add_member(:agreement_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "agreementDuration"))
    ValidityTerm.add_member(:agreement_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "agreementStartDate"))
    ValidityTerm.add_member(:agreement_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "agreementEndDate"))
    ValidityTerm.type = Types::ValidityTerm
    VariablePaymentTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UnversionedTermType, name: "type"))
    VariablePaymentTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id"))
    VariablePaymentTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    VariablePaymentTerm.add_member(:max_total_charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "maxTotalChargeAmount"))
    VariablePaymentTerm.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VariablePaymentTermConfiguration, name: "configuration"))
    VariablePaymentTerm.type = Types::VariablePaymentTerm
    VariablePaymentTermConfiguration.add_member(:payment_request_approval_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestApprovalStrategy, name: "paymentRequestApprovalStrategy", traits: {"smithy.api#required" => {}}))
    VariablePaymentTermConfiguration.add_member(:expiration_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Duration, name: "expirationDuration"))
    VariablePaymentTermConfiguration.type = Types::VariablePaymentTermConfiguration

    AWSMPCommerceServiceV20200301 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplaceagreement#AWSMPCommerceService_v20200301"
      service.name = "AWSMPCommerceServiceV20200301"
      service.version = "2020-03-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Agreement", "endpointPrefix" => "agreement-marketplace"}, "aws.auth#sigv4" => {"name" => "aws-marketplace"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Marketplace Agreement Service", "smithy.protocols#rpcv2Cbor" => {}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://agreement-marketplace-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://agreement-marketplace-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://agreement-marketplace.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://agreement-marketplace.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:accept_agreement_cancellation_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#AcceptAgreementCancellationRequest"
        operation.name = "AcceptAgreementCancellationRequest"
        operation.input = AcceptAgreementCancellationRequestInput
        operation.output = AcceptAgreementCancellationRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:accept_agreement_payment_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#AcceptAgreementPaymentRequest"
        operation.name = "AcceptAgreementPaymentRequest"
        operation.input = AcceptAgreementPaymentRequestInput
        operation.output = AcceptAgreementPaymentRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:accept_agreement_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#AcceptAgreementRequest"
        operation.name = "AcceptAgreementRequest"
        operation.input = AcceptAgreementRequestInput
        operation.output = AcceptAgreementRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:batch_create_billing_adjustment_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#BatchCreateBillingAdjustmentRequest"
        operation.name = "BatchCreateBillingAdjustmentRequest"
        operation.input = BatchCreateBillingAdjustmentRequestInput
        operation.output = BatchCreateBillingAdjustmentRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:cancel_agreement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#CancelAgreement"
        operation.name = "CancelAgreement"
        operation.input = CancelAgreementInput
        operation.output = CancelAgreementOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:cancel_agreement_cancellation_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#CancelAgreementCancellationRequest"
        operation.name = "CancelAgreementCancellationRequest"
        operation.input = CancelAgreementCancellationRequestInput
        operation.output = CancelAgreementCancellationRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:cancel_agreement_payment_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#CancelAgreementPaymentRequest"
        operation.name = "CancelAgreementPaymentRequest"
        operation.input = CancelAgreementPaymentRequestInput
        operation.output = CancelAgreementPaymentRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_agreement_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#CreateAgreementRequest"
        operation.name = "CreateAgreementRequest"
        operation.input = CreateAgreementRequestInput
        operation.output = CreateAgreementRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
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
      service.add_operation(:get_agreement_cancellation_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#GetAgreementCancellationRequest"
        operation.name = "GetAgreementCancellationRequest"
        operation.input = GetAgreementCancellationRequestInput
        operation.output = GetAgreementCancellationRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_agreement_entitlements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#GetAgreementEntitlements"
        operation.name = "GetAgreementEntitlements"
        operation.input = GetAgreementEntitlementsInput
        operation.output = GetAgreementEntitlementsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetAgreementEntitlements.new
      end)
      service.add_operation(:get_agreement_payment_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#GetAgreementPaymentRequest"
        operation.name = "GetAgreementPaymentRequest"
        operation.input = GetAgreementPaymentRequestInput
        operation.output = GetAgreementPaymentRequestOutput
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
      service.add_operation(:get_billing_adjustment_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#GetBillingAdjustmentRequest"
        operation.name = "GetBillingAdjustmentRequest"
        operation.input = GetBillingAdjustmentRequestInput
        operation.output = GetBillingAdjustmentRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_agreement_cancellation_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#ListAgreementCancellationRequests"
        operation.name = "ListAgreementCancellationRequests"
        operation.input = ListAgreementCancellationRequestsInput
        operation.output = ListAgreementCancellationRequestsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAgreementCancellationRequests.new
      end)
      service.add_operation(:list_agreement_charges, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#ListAgreementCharges"
        operation.name = "ListAgreementCharges"
        operation.input = ListAgreementChargesInput
        operation.output = ListAgreementChargesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAgreementCharges.new
      end)
      service.add_operation(:list_agreement_invoice_line_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#ListAgreementInvoiceLineItems"
        operation.name = "ListAgreementInvoiceLineItems"
        operation.input = ListAgreementInvoiceLineItemsInput
        operation.output = ListAgreementInvoiceLineItemsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAgreementInvoiceLineItems.new
      end)
      service.add_operation(:list_agreement_payment_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#ListAgreementPaymentRequests"
        operation.name = "ListAgreementPaymentRequests"
        operation.input = ListAgreementPaymentRequestsInput
        operation.output = ListAgreementPaymentRequestsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAgreementPaymentRequests.new
      end)
      service.add_operation(:list_billing_adjustment_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#ListBillingAdjustmentRequests"
        operation.name = "ListBillingAdjustmentRequests"
        operation.input = ListBillingAdjustmentRequestsInput
        operation.output = ListBillingAdjustmentRequestsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListBillingAdjustmentRequests.new
      end)
      service.add_operation(:reject_agreement_cancellation_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#RejectAgreementCancellationRequest"
        operation.name = "RejectAgreementCancellationRequest"
        operation.input = RejectAgreementCancellationRequestInput
        operation.output = RejectAgreementCancellationRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:reject_agreement_payment_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#RejectAgreementPaymentRequest"
        operation.name = "RejectAgreementPaymentRequest"
        operation.input = RejectAgreementPaymentRequestInput
        operation.output = RejectAgreementPaymentRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
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
      service.add_operation(:send_agreement_cancellation_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#SendAgreementCancellationRequest"
        operation.name = "SendAgreementCancellationRequest"
        operation.input = SendAgreementCancellationRequestInput
        operation.output = SendAgreementCancellationRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:send_agreement_payment_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#SendAgreementPaymentRequest"
        operation.name = "SendAgreementPaymentRequest"
        operation.input = SendAgreementPaymentRequestInput
        operation.output = SendAgreementPaymentRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_purchase_orders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceagreement#UpdatePurchaseOrders"
        operation.name = "UpdatePurchaseOrders"
        operation.input = UpdatePurchaseOrdersInput
        operation.output = UpdatePurchaseOrdersOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
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
