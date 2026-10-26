# frozen_string_literal: true

# This is generated code!

module Aws::Billing
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingAccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#AccountName", name: "AccountName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ActiveTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ActiveTimeRange", name: "ActiveTimeRange")
    AdditionalCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#AdditionalCharge", name: "AdditionalCharge")
    AdditionalChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#AdditionalChargeList", name: "AdditionalChargeList", traits: {"smithy.api#length" => {"max" => 50}})
    Amount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#Amount", name: "Amount")
    ApplicationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#ApplicationType", name: "ApplicationType")
    AssociateSourceViewsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#AssociateSourceViewsRequest", name: "AssociateSourceViewsRequest")
    AssociateSourceViewsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#AssociateSourceViewsResponse", name: "AssociateSourceViewsResponse")
    BillingDomain = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#BillingDomain", name: "BillingDomain")
    BillingFeature = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#BillingFeature", name: "BillingFeature")
    BillingFeatureFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingFeatureFilter", name: "BillingFeatureFilter")
    BillingFeatureFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#BillingFeatureFilterName", name: "BillingFeatureFilterName")
    BillingFeatureFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#BillingFeatureFilterValue", name: "BillingFeatureFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-/]+$"})
    BillingFeatureFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingFeatureFilterValues", name: "BillingFeatureFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BillingFeatureFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingFeatureFilters", name: "BillingFeatureFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    BillingFeatures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingFeatures", name: "BillingFeatures")
    BillingMonth = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#BillingMonth", name: "BillingMonth", traits: {"smithy.api#length" => {"min" => 1, "max" => 7}})
    BillingPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingPeriod", name: "BillingPeriod")
    BillingPreferenceForKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingPreferenceForKey", name: "BillingPreferenceForKey")
    BillingPreferenceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingPreferenceSummary", name: "BillingPreferenceSummary")
    BillingPreferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingPreferences", name: "BillingPreferences")
    BillingPreferencesPerKey = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingPreferencesPerKey", name: "BillingPreferencesPerKey", traits: {"smithy.api#length" => {"min" => 1}})
    BillingViewArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#BillingViewArn", name: "BillingViewArn", traits: {"smithy.api#pattern" => "^arn:aws[a-z-]*:(billing)::[0-9]{12}:billingview/[a-zA-Z0-9/:_\\+=\\.\\-@]{0,75}[a-zA-Z0-9]$"})
    BillingViewArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingViewArnList", name: "BillingViewArnList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BillingViewDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#BillingViewDescription", name: "BillingViewDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^([ a-zA-Z0-9_\\+=\\.\\-@]+)?$", "smithy.api#sensitive" => {}})
    BillingViewElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingViewElement", name: "BillingViewElement")
    BillingViewHealthStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingViewHealthStatus", name: "BillingViewHealthStatus")
    BillingViewHealthStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingViewHealthStatusException", name: "BillingViewHealthStatusException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BillingViewList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingViewList", name: "BillingViewList")
    BillingViewListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingViewListElement", name: "BillingViewListElement")
    BillingViewName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#BillingViewName", name: "BillingViewName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    BillingViewSegmentTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingViewSegmentTimeRange", name: "BillingViewSegmentTimeRange")
    BillingViewSegmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingViewSegmentsList", name: "BillingViewSegmentsList")
    BillingViewSegmentsListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingViewSegmentsListElement", name: "BillingViewSegmentsListElement")
    BillingViewSourceViewsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingViewSourceViewsList", name: "BillingViewSourceViewsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BillingViewStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#BillingViewStatus", name: "BillingViewStatus")
    BillingViewStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#BillingViewStatusReason", name: "BillingViewStatusReason")
    BillingViewStatusReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingViewStatusReasons", name: "BillingViewStatusReasons")
    BillingViewType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#BillingViewType", name: "BillingViewType")
    BillingViewTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingViewTypeList", name: "BillingViewTypeList")
    BillingViewsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billing#BillingViewsMaxResults", name: "BillingViewsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    BillingYear = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billing#BillingYear", name: "BillingYear", traits: {"smithy.api#range" => {"min" => 2005, "max" => 2120}})
    BusinessSupportAccountCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BusinessSupportAccountCharge", name: "BusinessSupportAccountCharge")
    BusinessSupportAccountChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BusinessSupportAccountChargeList", name: "BusinessSupportAccountChargeList", traits: {"smithy.api#length" => {"max" => 100}})
    BusinessSupportBillingMonth = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#BusinessSupportBillingMonth", name: "BusinessSupportBillingMonth", traits: {"smithy.api#pattern" => "^\\d{4}-(0[1-9]|1[0-2])$"})
    BusinessSupportDiscount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BusinessSupportDiscount", name: "BusinessSupportDiscount")
    BusinessSupportServiceSpend = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BusinessSupportServiceSpend", name: "BusinessSupportServiceSpend")
    BusinessSupportServiceSpendList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BusinessSupportServiceSpendList", name: "BusinessSupportServiceSpendList", traits: {"smithy.api#length" => {"max" => 50}})
    BusinessSupportSubscriptionContract = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BusinessSupportSubscriptionContract", name: "BusinessSupportSubscriptionContract")
    BusinessSupportSubscriptionContractList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BusinessSupportSubscriptionContractList", name: "BusinessSupportSubscriptionContractList", traits: {"smithy.api#length" => {"max" => 1000}})
    BusinessSupportTierCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BusinessSupportTierCharge", name: "BusinessSupportTierCharge")
    BusinessSupportTierChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BusinessSupportTierChargeList", name: "BusinessSupportTierChargeList", traits: {"smithy.api#length" => {"max" => 20}})
    ChargeAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ChargeAccount", name: "ChargeAccount")
    ChargeAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#ChargeAccountList", name: "ChargeAccountList", traits: {"smithy.api#length" => {"max" => 1000}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ClientToken", name: "ClientToken", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ConflictException", name: "ConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingConflict", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContractAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ContractAccount", name: "ContractAccount")
    ContractAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#ContractAccountList", name: "ContractAccountList", traits: {"smithy.api#length" => {"max" => 2000}})
    CostCategoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#CostCategoryName", name: "CostCategoryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?! )[\\p{L}\\p{N}\\p{Z}-_]*(?<! )$"})
    CostCategoryValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#CostCategoryValues", name: "CostCategoryValues")
    CreateBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#CreateBillingViewRequest", name: "CreateBillingViewRequest")
    CreateBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#CreateBillingViewResponse", name: "CreateBillingViewResponse")
    CreditAllocationHistoryEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#CreditAllocationHistoryEntry", name: "CreditAllocationHistoryEntry")
    CreditAllocationHistoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#CreditAllocationHistoryList", name: "CreditAllocationHistoryList")
    CreditData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#CreditData", name: "CreditData")
    CreditDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#CreditDataList", name: "CreditDataList")
    CreditId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#CreditId", name: "CreditId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[0-9]+$"})
    CreditSharingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#CreditSharingType", name: "CreditSharingType")
    CreditStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#CreditStatus", name: "CreditStatus")
    CurrencyAmount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#CurrencyAmount", name: "CurrencyAmount", traits: {"smithy.api#pattern" => "^[0-9]+(.[0-9]+)$"})
    CurrencyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#CurrencyCode", name: "CurrencyCode", traits: {"smithy.api#pattern" => "^[A-Z]{3}$"})
    DeleteBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#DeleteBillingViewRequest", name: "DeleteBillingViewRequest")
    DeleteBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#DeleteBillingViewResponse", name: "DeleteBillingViewResponse")
    Dimension = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#Dimension", name: "Dimension")
    DimensionValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#DimensionValues", name: "DimensionValues")
    DisassociateSourceViewsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#DisassociateSourceViewsRequest", name: "DisassociateSourceViewsRequest")
    DisassociateSourceViewsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#DisassociateSourceViewsResponse", name: "DisassociateSourceViewsResponse")
    EnterpriseSupportBillingMonth = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#EnterpriseSupportBillingMonth", name: "EnterpriseSupportBillingMonth", traits: {"smithy.api#pattern" => "^\\d{4}-(0[1-9]|1[0-2])$"})
    EnterpriseSupportTimePeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#EnterpriseSupportTimePeriod", name: "EnterpriseSupportTimePeriod")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"max" => 1024}})
    Expression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#Expression", name: "Expression")
    FailedMonthsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#FailedMonthsList", name: "FailedMonthsList")
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#FieldName", name: "FieldName", traits: {"smithy.api#length" => {"max" => 100}})
    GetBillingPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetBillingPreferencesRequest", name: "GetBillingPreferencesRequest")
    GetBillingPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetBillingPreferencesResponse", name: "GetBillingPreferencesResponse")
    GetBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetBillingViewRequest", name: "GetBillingViewRequest")
    GetBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetBillingViewResponse", name: "GetBillingViewResponse")
    GetCreditAllocationHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetCreditAllocationHistoryRequest", name: "GetCreditAllocationHistoryRequest")
    GetCreditAllocationHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetCreditAllocationHistoryResponse", name: "GetCreditAllocationHistoryResponse")
    GetCreditsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetCreditsRequest", name: "GetCreditsRequest")
    GetCreditsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetCreditsResponse", name: "GetCreditsResponse")
    GetEnterpriseSupportChargeSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetEnterpriseSupportChargeSummaryRequest", name: "GetEnterpriseSupportChargeSummaryRequest")
    GetEnterpriseSupportChargeSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetEnterpriseSupportChargeSummaryResponse", name: "GetEnterpriseSupportChargeSummaryResponse")
    GetEnterpriseSupportContractDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetEnterpriseSupportContractDetailsRequest", name: "GetEnterpriseSupportContractDetailsRequest")
    GetEnterpriseSupportContractDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetEnterpriseSupportContractDetailsResponse", name: "GetEnterpriseSupportContractDetailsResponse")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#InternalServerException", name: "InternalServerException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingInternalServer", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LinkedAccountCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#LinkedAccountCharge", name: "LinkedAccountCharge")
    LinkedAccountChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#LinkedAccountChargeList", name: "LinkedAccountChargeList", traits: {"smithy.api#length" => {"max" => 100}})
    ListBillingViewSegmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListBillingViewSegmentsRequest", name: "ListBillingViewSegmentsRequest")
    ListBillingViewSegmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListBillingViewSegmentsResponse", name: "ListBillingViewSegmentsResponse")
    ListBillingViewsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListBillingViewsRequest", name: "ListBillingViewsRequest")
    ListBillingViewsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListBillingViewsResponse", name: "ListBillingViewsResponse")
    ListBusinessSupportAccountChargesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListBusinessSupportAccountChargesRequest", name: "ListBusinessSupportAccountChargesRequest")
    ListBusinessSupportAccountChargesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListBusinessSupportAccountChargesResponse", name: "ListBusinessSupportAccountChargesResponse")
    ListBusinessSupportSubscriptionHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListBusinessSupportSubscriptionHistoryRequest", name: "ListBusinessSupportSubscriptionHistoryRequest")
    ListBusinessSupportSubscriptionHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListBusinessSupportSubscriptionHistoryResponse", name: "ListBusinessSupportSubscriptionHistoryResponse")
    ListEnterpriseSupportLinkedAccountChargesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListEnterpriseSupportLinkedAccountChargesRequest", name: "ListEnterpriseSupportLinkedAccountChargesRequest")
    ListEnterpriseSupportLinkedAccountChargesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListEnterpriseSupportLinkedAccountChargesResponse", name: "ListEnterpriseSupportLinkedAccountChargesResponse")
    ListSourceViewsForBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListSourceViewsForBillingViewRequest", name: "ListSourceViewsForBillingViewRequest")
    ListSourceViewsForBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListSourceViewsForBillingViewResponse", name: "ListSourceViewsForBillingViewResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Month = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billing#Month", name: "Month", traits: {"smithy.api#range" => {"min" => 1, "max" => 12}})
    PageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#PageToken", name: "PageToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4095}, "smithy.api#pattern" => "^[-a-zA-Z0-9+=/_]+$"})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#PolicyDocument", name: "PolicyDocument")
    PreferenceKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#PreferenceKey", name: "PreferenceKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2148}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\/\\*: ]+$"})
    PreferenceValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#PreferenceValue", name: "PreferenceValue")
    PricingPlan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#PricingPlan", name: "PricingPlan")
    PricingPlanList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#PricingPlanList", name: "PricingPlanList", traits: {"smithy.api#length" => {"max" => 10}})
    PricingPlanTier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#PricingPlanTier", name: "PricingPlanTier")
    PricingPlanTierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#PricingPlanTierList", name: "PricingPlanTierList", traits: {"smithy.api#length" => {"max" => 20}})
    ProductName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ProductName", name: "ProductName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ProductNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#ProductNames", name: "ProductNames", traits: {"smithy.api#length" => {"max" => 1000}})
    PromoCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#PromoCode", name: "PromoCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "[^<>\"&\\%|'\n\t]*"})
    PurchaseType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#PurchaseType", name: "PurchaseType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PurchaseTypeApplications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#PurchaseTypeApplications", name: "PurchaseTypeApplications", traits: {"smithy.api#length" => {"max" => 50}})
    QuotaCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#QuotaCode", name: "QuotaCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    RedeemCreditsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#RedeemCreditsRequest", name: "RedeemCreditsRequest")
    RedeemCreditsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#RedeemCreditsResponse", name: "RedeemCreditsResponse")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^arn:aws[a-z-]*:(billing)::[0-9]{12}:[a-zA-Z0-9/:_\\+=\\.\\@-]{0,70}[a-zA-Z0-9]$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingResourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ResourceTag", name: "ResourceTag")
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ResourceTagKey", name: "ResourceTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResourceTagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#ResourceTagKeyList", name: "ResourceTagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#ResourceTagList", name: "ResourceTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ResourceTagValue", name: "ResourceTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ResourceType", name: "ResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    SearchOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#SearchOption", name: "SearchOption")
    SearchValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#SearchValue", name: "SearchValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\+=\\.\\-@ ]+$"})
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ServiceCode", name: "ServiceCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceLevelAccountUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ServiceLevelAccountUsage", name: "ServiceLevelAccountUsage")
    ServiceLevelAccountUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#ServiceLevelAccountUsageList", name: "ServiceLevelAccountUsageList", traits: {"smithy.api#length" => {"max" => 200}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingServiceQuotaExceeded", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShareableAccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#ShareableAccountIds", name: "ShareableAccountIds")
    StringSearch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#StringSearch", name: "StringSearch")
    StringSearches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#StringSearches", name: "StringSearches", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#TagResourceResponse", name: "TagResourceResponse")
    TagValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#TagValues", name: "TagValues")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingThrottling", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimePeriodList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#TimePeriodList", name: "TimePeriodList", traits: {"smithy.api#length" => {"max" => 500}})
    TimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#TimeRange", name: "TimeRange")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateBillingPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#UpdateBillingPreferencesRequest", name: "UpdateBillingPreferencesRequest")
    UpdateBillingPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#UpdateBillingPreferencesResponse", name: "UpdateBillingPreferencesResponse")
    UpdateBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#UpdateBillingViewRequest", name: "UpdateBillingViewRequest")
    UpdateBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#UpdateBillingViewResponse", name: "UpdateBillingViewResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingValidation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#ValidationExceptionReason", name: "ValidationExceptionReason")
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#Value", name: "Value", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#Values", name: "Values", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActiveTimeRange.add_member(:active_after_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "activeAfterInclusive", traits: {"smithy.api#required" => {}}))
    ActiveTimeRange.add_member(:active_before_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "activeBeforeInclusive", traits: {"smithy.api#required" => {}}))
    ActiveTimeRange.type = Types::ActiveTimeRange
    AdditionalCharge.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    AdditionalCharge.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amount"))
    AdditionalCharge.add_member(:charge_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "chargeType"))
    AdditionalCharge.type = Types::AdditionalCharge
    AdditionalChargeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalCharge, name: "member"))
    Amount.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode", traits: {"smithy.api#required" => {}}))
    Amount.add_member(:currency_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyAmount, name: "currencyAmount", traits: {"smithy.api#required" => {}}))
    Amount.type = Types::Amount
    ApplicationType.add_member(:before_cross_service_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE_CROSS_SERVICE_DISCOUNTS", traits: {"smithy.api#enumValue" => "BEFORE_CROSS_SERVICE_DISCOUNTS"}))
    ApplicationType.add_member(:after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "AFTER_DISCOUNTS"}))
    AssociateSourceViewsRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AssociateSourceViewsRequest.add_member(:source_views, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSourceViewsList, name: "sourceViews", traits: {"smithy.api#required" => {}}))
    AssociateSourceViewsRequest.type = Types::AssociateSourceViewsRequest
    AssociateSourceViewsResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AssociateSourceViewsResponse.type = Types::AssociateSourceViewsResponse
    BillingDomain.add_member(:billable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLABLE", traits: {"smithy.api#enumValue" => "BILLABLE"}))
    BillingDomain.add_member(:pro_forma, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRO_FORMA", traits: {"smithy.api#enumValue" => "PRO_FORMA"}))
    BillingFeature.add_member(:ri_sharing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RI_SHARING", traits: {"smithy.api#enumValue" => "RI_SHARING"}))
    BillingFeature.add_member(:ri_sharing_history, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RI_SHARING_HISTORY", traits: {"smithy.api#enumValue" => "RI_SHARING_HISTORY"}))
    BillingFeature.add_member(:credit_sharing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_SHARING", traits: {"smithy.api#enumValue" => "CREDIT_SHARING"}))
    BillingFeature.add_member(:credit_sharing_history, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_SHARING_HISTORY", traits: {"smithy.api#enumValue" => "CREDIT_SHARING_HISTORY"}))
    BillingFeature.add_member(:credit_level_sharing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_LEVEL_SHARING", traits: {"smithy.api#enumValue" => "CREDIT_LEVEL_SHARING"}))
    BillingFeature.add_member(:billing_alerts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_ALERTS", traits: {"smithy.api#enumValue" => "BILLING_ALERTS"}))
    BillingFeature.add_member(:credit_preference_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_PREFERENCE_OPTIONS", traits: {"smithy.api#enumValue" => "CREDIT_PREFERENCE_OPTIONS"}))
    BillingFeatureFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingFeatureFilterName, name: "name"))
    BillingFeatureFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingFeatureFilterValues, name: "value"))
    BillingFeatureFilter.type = Types::BillingFeatureFilter
    BillingFeatureFilterName.add_member(:preference_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFERENCE_KEY", traits: {"smithy.api#enumValue" => "PREFERENCE_KEY"}))
    BillingFeatureFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingFeatureFilterValue, name: "member"))
    BillingFeatureFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingFeatureFilter, name: "member"))
    BillingFeatures.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingFeature, name: "member"))
    BillingPeriod.add_member(:year, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingYear, name: "year", traits: {"smithy.api#required" => {}}))
    BillingPeriod.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: Month, name: "month", traits: {"smithy.api#required" => {}}))
    BillingPeriod.type = Types::BillingPeriod
    BillingPreferenceForKey.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferenceKey, name: "key", traits: {"smithy.api#required" => {}}))
    BillingPreferenceForKey.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferenceValue, name: "value", traits: {"smithy.api#required" => {}}))
    BillingPreferenceForKey.type = Types::BillingPreferenceForKey
    BillingPreferenceSummary.add_member(:feature, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingFeature, name: "feature", traits: {"smithy.api#required" => {}}))
    BillingPreferenceSummary.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferenceKey, name: "key", traits: {"smithy.api#required" => {}}))
    BillingPreferenceSummary.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferenceValue, name: "value", traits: {"smithy.api#required" => {}}))
    BillingPreferenceSummary.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountName, name: "accountName"))
    BillingPreferenceSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    BillingPreferenceSummary.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "billingPeriod"))
    BillingPreferenceSummary.type = Types::BillingPreferenceSummary
    BillingPreferences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPreferenceSummary, name: "member"))
    BillingPreferencesPerKey.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPreferenceForKey, name: "member"))
    BillingViewArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "member"))
    BillingViewElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn"))
    BillingViewElement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewName, name: "name"))
    BillingViewElement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewDescription, name: "description"))
    BillingViewElement.add_member(:billing_view_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewType, name: "billingViewType"))
    BillingViewElement.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId"))
    BillingViewElement.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "sourceAccountId"))
    BillingViewElement.add_member(:data_filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "dataFilterExpression"))
    BillingViewElement.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    BillingViewElement.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    BillingViewElement.add_member(:derived_view_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "derivedViewCount"))
    BillingViewElement.add_member(:source_view_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sourceViewCount"))
    BillingViewElement.add_member(:view_definition_last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "viewDefinitionLastUpdatedAt"))
    BillingViewElement.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewHealthStatus, name: "healthStatus"))
    BillingViewElement.type = Types::BillingViewElement
    BillingViewHealthStatus.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewStatus, name: "statusCode"))
    BillingViewHealthStatus.add_member(:status_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewStatusReasons, name: "statusReasons"))
    BillingViewHealthStatus.type = Types::BillingViewHealthStatus
    BillingViewHealthStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    BillingViewHealthStatusException.type = Types::BillingViewHealthStatusException
    BillingViewList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewListElement, name: "member"))
    BillingViewListElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn"))
    BillingViewListElement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewName, name: "name"))
    BillingViewListElement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewDescription, name: "description"))
    BillingViewListElement.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId"))
    BillingViewListElement.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "sourceAccountId"))
    BillingViewListElement.add_member(:billing_view_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewType, name: "billingViewType"))
    BillingViewListElement.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewHealthStatus, name: "healthStatus"))
    BillingViewListElement.type = Types::BillingViewListElement
    BillingViewSegmentTimeRange.add_member(:begin_date_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "beginDateInclusive"))
    BillingViewSegmentTimeRange.add_member(:end_date_exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endDateExclusive"))
    BillingViewSegmentTimeRange.type = Types::BillingViewSegmentTimeRange
    BillingViewSegmentsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSegmentsListElement, name: "member"))
    BillingViewSegmentsListElement.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingDomain, name: "domain"))
    BillingViewSegmentsListElement.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSegmentTimeRange, name: "timeRange"))
    BillingViewSegmentsListElement.add_member(:billing_transfer_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "billingTransferAccountId"))
    BillingViewSegmentsListElement.add_member(:management_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "managementAccountId"))
    BillingViewSegmentsListElement.add_member(:billing_group_primary_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "billingGroupPrimaryAccountId"))
    BillingViewSegmentsListElement.type = Types::BillingViewSegmentsListElement
    BillingViewSourceViewsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "member"))
    BillingViewStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    BillingViewStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    BillingViewStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    BillingViewStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    BillingViewStatusReason.add_member(:source_view_unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_VIEW_UNHEALTHY", traits: {"smithy.api#enumValue" => "SOURCE_VIEW_UNHEALTHY"}))
    BillingViewStatusReason.add_member(:source_view_updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_VIEW_UPDATING", traits: {"smithy.api#enumValue" => "SOURCE_VIEW_UPDATING"}))
    BillingViewStatusReason.add_member(:source_view_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_VIEW_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "SOURCE_VIEW_ACCESS_DENIED"}))
    BillingViewStatusReason.add_member(:source_view_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_VIEW_NOT_FOUND", traits: {"smithy.api#enumValue" => "SOURCE_VIEW_NOT_FOUND"}))
    BillingViewStatusReason.add_member(:cyclic_dependency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CYCLIC_DEPENDENCY", traits: {"smithy.api#enumValue" => "CYCLIC_DEPENDENCY"}))
    BillingViewStatusReason.add_member(:source_view_depth_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_VIEW_DEPTH_EXCEEDED", traits: {"smithy.api#enumValue" => "SOURCE_VIEW_DEPTH_EXCEEDED"}))
    BillingViewStatusReason.add_member(:aggregate_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGGREGATE_SOURCE", traits: {"smithy.api#enumValue" => "AGGREGATE_SOURCE"}))
    BillingViewStatusReason.add_member(:view_owner_not_management_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIEW_OWNER_NOT_MANAGEMENT_ACCOUNT", traits: {"smithy.api#enumValue" => "VIEW_OWNER_NOT_MANAGEMENT_ACCOUNT"}))
    BillingViewStatusReasons.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewStatusReason, name: "member"))
    BillingViewType.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY", traits: {"smithy.api#enumValue" => "PRIMARY"}))
    BillingViewType.add_member(:billing_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_GROUP", traits: {"smithy.api#enumValue" => "BILLING_GROUP"}))
    BillingViewType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    BillingViewType.add_member(:billing_transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_TRANSFER", traits: {"smithy.api#enumValue" => "BILLING_TRANSFER"}))
    BillingViewType.add_member(:billing_transfer_showback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_TRANSFER_SHOWBACK", traits: {"smithy.api#enumValue" => "BILLING_TRANSFER_SHOWBACK"}))
    BillingViewTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewType, name: "member"))
    BusinessSupportAccountCharge.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    BusinessSupportAccountCharge.add_member(:support_plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "supportPlanName", traits: {"smithy.api#required" => {}}))
    BusinessSupportAccountCharge.add_member(:total_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalCharge", traits: {"smithy.api#required" => {}}))
    BusinessSupportAccountCharge.add_member(:total_usage_basis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalUsageBasis", traits: {"smithy.api#required" => {}}))
    BusinessSupportAccountCharge.add_member(:tier_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportTierChargeList, name: "tierCharges"))
    BusinessSupportAccountCharge.add_member(:support_discount, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportDiscount, name: "supportDiscount"))
    BusinessSupportAccountCharge.add_member(:support_eligible_spend_by_service, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportServiceSpendList, name: "supportEligibleSpendByService"))
    BusinessSupportAccountCharge.type = Types::BusinessSupportAccountCharge
    BusinessSupportAccountChargeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportAccountCharge, name: "member"))
    BusinessSupportDiscount.add_member(:discount_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "discountAmount"))
    BusinessSupportDiscount.add_member(:discount_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "discountPercentage"))
    BusinessSupportDiscount.add_member(:discount_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "discountType"))
    BusinessSupportDiscount.add_member(:discount_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "discountSource"))
    BusinessSupportDiscount.type = Types::BusinessSupportDiscount
    BusinessSupportServiceSpend.add_member(:contributing_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contributingService", traits: {"smithy.api#required" => {}}))
    BusinessSupportServiceSpend.add_member(:item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "itemType", traits: {"smithy.api#required" => {}}))
    BusinessSupportServiceSpend.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    BusinessSupportServiceSpend.add_member(:charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "chargeAmount", traits: {"smithy.api#required" => {}}))
    BusinessSupportServiceSpend.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currency", traits: {"smithy.api#required" => {}}))
    BusinessSupportServiceSpend.type = Types::BusinessSupportServiceSpend
    BusinessSupportServiceSpendList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportServiceSpend, name: "member"))
    BusinessSupportSubscriptionContract.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    BusinessSupportSubscriptionContract.add_member(:plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "planName", traits: {"smithy.api#required" => {}}))
    BusinessSupportSubscriptionContract.add_member(:contract_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "contractStartDate", traits: {"smithy.api#required" => {}}))
    BusinessSupportSubscriptionContract.add_member(:contract_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "contractEndDate", traits: {"smithy.api#required" => {}}))
    BusinessSupportSubscriptionContract.type = Types::BusinessSupportSubscriptionContract
    BusinessSupportSubscriptionContractList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportSubscriptionContract, name: "member"))
    BusinessSupportTierCharge.add_member(:tier_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tierDescription", traits: {"smithy.api#required" => {}}))
    BusinessSupportTierCharge.add_member(:tier_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tierRate", traits: {"smithy.api#required" => {}}))
    BusinessSupportTierCharge.add_member(:usage_slice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageSlice", traits: {"smithy.api#required" => {}}))
    BusinessSupportTierCharge.add_member(:tier_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tierCharge", traits: {"smithy.api#required" => {}}))
    BusinessSupportTierCharge.add_member(:charge_period_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "chargePeriodStartDate"))
    BusinessSupportTierCharge.add_member(:charge_period_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "chargePeriodEndDate"))
    BusinessSupportTierCharge.type = Types::BusinessSupportTierCharge
    BusinessSupportTierChargeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportTierCharge, name: "member"))
    ChargeAccount.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    ChargeAccount.add_member(:charge_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "chargePercentage", traits: {"smithy.api#required" => {}}))
    ChargeAccount.type = Types::ChargeAccount
    ChargeAccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChargeAccount, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ContractAccount.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    ContractAccount.add_member(:is_gdn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isGdn", traits: {"smithy.api#required" => {}}))
    ContractAccount.type = Types::ContractAccount
    ContractAccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContractAccount, name: "member"))
    CostCategoryValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CostCategoryName, name: "key", traits: {"smithy.api#required" => {}}))
    CostCategoryValues.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "values", traits: {"smithy.api#required" => {}}))
    CostCategoryValues.type = Types::CostCategoryValues
    CreateBillingViewRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateBillingViewRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewDescription, name: "description"))
    CreateBillingViewRequest.add_member(:source_views, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSourceViewsList, name: "sourceViews", traits: {"smithy.api#required" => {}}))
    CreateBillingViewRequest.add_member(:data_filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "dataFilterExpression"))
    CreateBillingViewRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateBillingViewRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags"))
    CreateBillingViewRequest.type = Types::CreateBillingViewRequest
    CreateBillingViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateBillingViewResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    CreateBillingViewResponse.type = Types::CreateBillingViewResponse
    CreditAllocationHistoryEntry.add_member(:credit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditId, name: "creditId", traits: {"smithy.api#required" => {}}))
    CreditAllocationHistoryEntry.add_member(:credit_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Amount, name: "creditAmount", traits: {"smithy.api#required" => {}}))
    CreditAllocationHistoryEntry.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreditAllocationHistoryEntry.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    CreditAllocationHistoryEntry.add_member(:applied_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appliedServiceName", traits: {"smithy.api#required" => {}}))
    CreditAllocationHistoryEntry.add_member(:billing_month, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMonth, name: "billingMonth", traits: {"smithy.api#required" => {}}))
    CreditAllocationHistoryEntry.add_member(:is_estimated_bill, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isEstimatedBill", traits: {"smithy.api#required" => {}}))
    CreditAllocationHistoryEntry.type = Types::CreditAllocationHistoryEntry
    CreditAllocationHistoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditAllocationHistoryEntry, name: "member"))
    CreditData.add_member(:credit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditId, name: "creditId", traits: {"smithy.api#required" => {}}))
    CreditData.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    CreditData.add_member(:credit_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "creditType", traits: {"smithy.api#required" => {}}))
    CreditData.add_member(:initial_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Amount, name: "initialAmount", traits: {"smithy.api#required" => {}}))
    CreditData.add_member(:remaining_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Amount, name: "remainingAmount", traits: {"smithy.api#required" => {}}))
    CreditData.add_member(:estimated_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Amount, name: "estimatedAmount"))
    CreditData.add_member(:applicable_product_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductNames, name: "applicableProductNames"))
    CreditData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    CreditData.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startDate", traits: {"smithy.api#required" => {}}))
    CreditData.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endDate"))
    CreditData.add_member(:exhaust_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "exhaustDate"))
    CreditData.add_member(:application_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationType, name: "applicationType"))
    CreditData.add_member(:shareable_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareableAccountIds, name: "shareableAccounts"))
    CreditData.add_member(:account_has_credit_sharing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "accountHasCreditSharingEnabled"))
    CreditData.add_member(:credit_console_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "creditConsoleVisibility"))
    CreditData.add_member(:credit_sharing_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditSharingType, name: "creditSharingType"))
    CreditData.add_member(:cost_category_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "costCategoryArn"))
    CreditData.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ruleName"))
    CreditData.add_member(:credit_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditStatus, name: "creditStatus"))
    CreditData.add_member(:purchase_type_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseTypeApplications, name: "purchaseTypeApplications"))
    CreditData.type = Types::CreditData
    CreditDataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditData, name: "member"))
    CreditSharingType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    CreditSharingType.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CreditSharingType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    CreditSharingType.add_member(:cost_category_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_CATEGORY_RULE", traits: {"smithy.api#enumValue" => "COST_CATEGORY_RULE"}))
    CreditStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    CreditStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DeleteBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteBillingViewRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "force", traits: {"smithy.api#default" => false}))
    DeleteBillingViewRequest.type = Types::DeleteBillingViewRequest
    DeleteBillingViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteBillingViewResponse.type = Types::DeleteBillingViewResponse
    Dimension.add_member(:linked_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINKED_ACCOUNT", traits: {"smithy.api#enumValue" => "LINKED_ACCOUNT"}))
    DimensionValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "key", traits: {"smithy.api#required" => {}}))
    DimensionValues.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "values", traits: {"smithy.api#required" => {}}))
    DimensionValues.type = Types::DimensionValues
    DisassociateSourceViewsRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DisassociateSourceViewsRequest.add_member(:source_views, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSourceViewsList, name: "sourceViews", traits: {"smithy.api#required" => {}}))
    DisassociateSourceViewsRequest.type = Types::DisassociateSourceViewsRequest
    DisassociateSourceViewsResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DisassociateSourceViewsResponse.type = Types::DisassociateSourceViewsResponse
    EnterpriseSupportTimePeriod.add_member(:begin_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "beginDate", traits: {"smithy.api#required" => {}}))
    EnterpriseSupportTimePeriod.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endDate"))
    EnterpriseSupportTimePeriod.type = Types::EnterpriseSupportTimePeriod
    Expression.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValues, name: "dimensions"))
    Expression.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValues, name: "tags"))
    Expression.add_member(:cost_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CostCategoryValues, name: "costCategories"))
    Expression.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRange, name: "timeRange"))
    Expression.type = Types::Expression
    FailedMonthsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMonth, name: "member"))
    GetBillingPreferencesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    GetBillingPreferencesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}}))
    GetBillingPreferencesRequest.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingFeatures, name: "features", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    GetBillingPreferencesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingFeatureFilters, name: "filters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}}))
    GetBillingPreferencesRequest.type = Types::GetBillingPreferencesRequest
    GetBillingPreferencesResponse.add_member(:billing_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPreferences, name: "billingPreferences", traits: {"smithy.api#required" => {}}))
    GetBillingPreferencesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    GetBillingPreferencesResponse.type = Types::GetBillingPreferencesResponse
    GetBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetBillingViewRequest.type = Types::GetBillingViewRequest
    GetBillingViewResponse.add_member(:billing_view, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewElement, name: "billingView", traits: {"smithy.api#required" => {}}))
    GetBillingViewResponse.type = Types::GetBillingViewResponse
    GetCreditAllocationHistoryRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    GetCreditAllocationHistoryRequest.add_member(:credit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "creditId"))
    GetCreditAllocationHistoryRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startDate", traits: {"smithy.api#required" => {}}))
    GetCreditAllocationHistoryRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endDate", traits: {"smithy.api#required" => {}}))
    GetCreditAllocationHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    GetCreditAllocationHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    GetCreditAllocationHistoryRequest.type = Types::GetCreditAllocationHistoryRequest
    GetCreditAllocationHistoryResponse.add_member(:credit_allocation_history_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditAllocationHistoryList, name: "creditAllocationHistoryList"))
    GetCreditAllocationHistoryResponse.add_member(:partial_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "partialResults", traits: {"smithy.api#required" => {}}))
    GetCreditAllocationHistoryResponse.add_member(:failed_months, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedMonthsList, name: "failedMonths"))
    GetCreditAllocationHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    GetCreditAllocationHistoryResponse.type = Types::GetCreditAllocationHistoryResponse
    GetCreditsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#required" => {}}))
    GetCreditsRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startDate", traits: {"smithy.api#required" => {}}))
    GetCreditsRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endDate"))
    GetCreditsRequest.add_member(:payer_account_flag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "payerAccountFlag"))
    GetCreditsRequest.type = Types::GetCreditsRequest
    GetCreditsResponse.add_member(:credits, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditDataList, name: "credits"))
    GetCreditsResponse.type = Types::GetCreditsResponse
    GetEnterpriseSupportChargeSummaryRequest.add_member(:billing_month, ::Smithy::Schema::Shapes::MemberShape.new(target: EnterpriseSupportBillingMonth, name: "billingMonth", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryRequest.type = Types::GetEnterpriseSupportChargeSummaryRequest
    GetEnterpriseSupportChargeSummaryResponse.add_member(:payer_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "payerAccountId", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:billing_month, ::Smithy::Schema::Shapes::MemberShape.new(target: EnterpriseSupportBillingMonth, name: "billingMonth", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:billing_period_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "billingPeriodStartDate", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:billing_period_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "billingPeriodEndDate", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:is_estimated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isEstimated", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:bill_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "billDate", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:support_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "supportCharge", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:total_support_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalSupportCharge", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:support_discount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "supportDiscount", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:total_support_eligible_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalSupportEligibleSpend", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:total_support_eligible_usage_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalSupportEligibleUsageSpend", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:total_support_eligible_reserved_instance_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalSupportEligibleReservedInstanceSpend", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:total_support_eligible_savings_plan_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalSupportEligibleSavingsPlanSpend", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:support_charge_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "supportChargePercentage", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.add_member(:support_effective_pricing_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlan, name: "supportEffectivePricingPlan", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportChargeSummaryResponse.type = Types::GetEnterpriseSupportChargeSummaryResponse
    GetEnterpriseSupportContractDetailsRequest.add_member(:billing_month, ::Smithy::Schema::Shapes::MemberShape.new(target: EnterpriseSupportBillingMonth, name: "billingMonth", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportContractDetailsRequest.type = Types::GetEnterpriseSupportContractDetailsRequest
    GetEnterpriseSupportContractDetailsResponse.add_member(:is_contract_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isContractActive"))
    GetEnterpriseSupportContractDetailsResponse.add_member(:support_allocation_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "supportAllocationMethod", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportContractDetailsResponse.add_member(:support_reserved_instance_amortization_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "supportReservedInstanceAmortizationStartDate"))
    GetEnterpriseSupportContractDetailsResponse.add_member(:support_reserved_instance_treatment_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "supportReservedInstanceTreatmentMethod"))
    GetEnterpriseSupportContractDetailsResponse.add_member(:support_savings_plans_amortization_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "supportSavingsPlansAmortizationStartDate"))
    GetEnterpriseSupportContractDetailsResponse.add_member(:support_savings_plans_treatment_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "supportSavingsPlansTreatmentMethod"))
    GetEnterpriseSupportContractDetailsResponse.add_member(:support_prorate_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "supportProrateStartDate"))
    GetEnterpriseSupportContractDetailsResponse.add_member(:contract_payer_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ContractAccountList, name: "contractPayerAccountIds", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportContractDetailsResponse.add_member(:charged_payer_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ChargeAccountList, name: "chargedPayerAccountIds", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportContractDetailsResponse.add_member(:additional_support_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalChargeList, name: "additionalSupportCharge"))
    GetEnterpriseSupportContractDetailsResponse.add_member(:additional_support_eligible_usage_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalChargeList, name: "additionalSupportEligibleUsageSpend"))
    GetEnterpriseSupportContractDetailsResponse.add_member(:pricing_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanList, name: "pricingPlans", traits: {"smithy.api#required" => {}}))
    GetEnterpriseSupportContractDetailsResponse.type = Types::GetEnterpriseSupportContractDetailsResponse
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy"))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LinkedAccountCharge.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    LinkedAccountCharge.add_member(:payer_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "payerAccountId", traits: {"smithy.api#required" => {}}))
    LinkedAccountCharge.add_member(:account_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountType"))
    LinkedAccountCharge.add_member(:billable_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "billableSeconds", traits: {"smithy.api#required" => {}}))
    LinkedAccountCharge.add_member(:total_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "totalSeconds", traits: {"smithy.api#required" => {}}))
    LinkedAccountCharge.add_member(:total_support_eligible_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalSupportEligibleSpend", traits: {"smithy.api#required" => {}}))
    LinkedAccountCharge.add_member(:prorated_total_support_eligible_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "proratedTotalSupportEligibleSpend", traits: {"smithy.api#required" => {}}))
    LinkedAccountCharge.add_member(:linked_time_periods, ::Smithy::Schema::Shapes::MemberShape.new(target: TimePeriodList, name: "linkedTimePeriods"))
    LinkedAccountCharge.add_member(:subscription_time_periods, ::Smithy::Schema::Shapes::MemberShape.new(target: TimePeriodList, name: "subscriptionTimePeriods"))
    LinkedAccountCharge.add_member(:total_support_eligible_reserved_instance_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalSupportEligibleReservedInstanceSpend"))
    LinkedAccountCharge.add_member(:total_support_eligible_savings_plan_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalSupportEligibleSavingsPlanSpend"))
    LinkedAccountCharge.add_member(:support_eligible_spend_by_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelAccountUsageList, name: "supportEligibleSpendByService"))
    LinkedAccountCharge.type = Types::LinkedAccountCharge
    LinkedAccountChargeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedAccountCharge, name: "member"))
    ListBillingViewSegmentsRequest.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSegmentTimeRange, name: "timeRange"))
    ListBillingViewSegmentsRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn"))
    ListBillingViewSegmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewsMaxResults, name: "maxResults"))
    ListBillingViewSegmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListBillingViewSegmentsRequest.type = Types::ListBillingViewSegmentsRequest
    ListBillingViewSegmentsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSegmentsList, name: "items", traits: {"smithy.api#required" => {}}))
    ListBillingViewSegmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListBillingViewSegmentsResponse.type = Types::ListBillingViewSegmentsResponse
    ListBillingViewsRequest.add_member(:active_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveTimeRange, name: "activeTimeRange"))
    ListBillingViewsRequest.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArnList, name: "arns"))
    ListBillingViewsRequest.add_member(:billing_view_types, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewTypeList, name: "billingViewTypes"))
    ListBillingViewsRequest.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSearches, name: "names"))
    ListBillingViewsRequest.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId"))
    ListBillingViewsRequest.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "sourceAccountId"))
    ListBillingViewsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewsMaxResults, name: "maxResults"))
    ListBillingViewsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListBillingViewsRequest.type = Types::ListBillingViewsRequest
    ListBillingViewsResponse.add_member(:billing_views, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewList, name: "billingViews", traits: {"smithy.api#required" => {}}))
    ListBillingViewsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListBillingViewsResponse.type = Types::ListBillingViewsResponse
    ListBusinessSupportAccountChargesRequest.add_member(:billing_month, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportBillingMonth, name: "billingMonth", traits: {"smithy.api#required" => {}}))
    ListBusinessSupportAccountChargesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    ListBusinessSupportAccountChargesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListBusinessSupportAccountChargesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListBusinessSupportAccountChargesRequest.type = Types::ListBusinessSupportAccountChargesRequest
    ListBusinessSupportAccountChargesResponse.add_member(:billing_month, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportBillingMonth, name: "billingMonth", traits: {"smithy.api#required" => {}}))
    ListBusinessSupportAccountChargesResponse.add_member(:is_estimated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isEstimated", traits: {"smithy.api#required" => {}}))
    ListBusinessSupportAccountChargesResponse.add_member(:total_support_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalSupportCharge", traits: {"smithy.api#required" => {}}))
    ListBusinessSupportAccountChargesResponse.add_member(:total_support_eligible_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalSupportEligibleSpend", traits: {"smithy.api#required" => {}}))
    ListBusinessSupportAccountChargesResponse.add_member(:account_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "accountCount", traits: {"smithy.api#required" => {}}))
    ListBusinessSupportAccountChargesResponse.add_member(:account_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportAccountChargeList, name: "accountCharges", traits: {"smithy.api#required" => {}}))
    ListBusinessSupportAccountChargesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListBusinessSupportAccountChargesResponse.type = Types::ListBusinessSupportAccountChargesResponse
    ListBusinessSupportSubscriptionHistoryRequest.add_member(:billing_month, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportBillingMonth, name: "billingMonth"))
    ListBusinessSupportSubscriptionHistoryRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    ListBusinessSupportSubscriptionHistoryRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startDate"))
    ListBusinessSupportSubscriptionHistoryRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endDate"))
    ListBusinessSupportSubscriptionHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListBusinessSupportSubscriptionHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListBusinessSupportSubscriptionHistoryRequest.type = Types::ListBusinessSupportSubscriptionHistoryRequest
    ListBusinessSupportSubscriptionHistoryResponse.add_member(:subscription_contracts, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessSupportSubscriptionContractList, name: "subscriptionContracts", traits: {"smithy.api#required" => {}}))
    ListBusinessSupportSubscriptionHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListBusinessSupportSubscriptionHistoryResponse.type = Types::ListBusinessSupportSubscriptionHistoryResponse
    ListEnterpriseSupportLinkedAccountChargesRequest.add_member(:billing_month, ::Smithy::Schema::Shapes::MemberShape.new(target: EnterpriseSupportBillingMonth, name: "billingMonth", traits: {"smithy.api#required" => {}}))
    ListEnterpriseSupportLinkedAccountChargesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    ListEnterpriseSupportLinkedAccountChargesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListEnterpriseSupportLinkedAccountChargesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListEnterpriseSupportLinkedAccountChargesRequest.type = Types::ListEnterpriseSupportLinkedAccountChargesRequest
    ListEnterpriseSupportLinkedAccountChargesResponse.add_member(:linked_account, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedAccountChargeList, name: "linkedAccount", traits: {"smithy.api#required" => {}}))
    ListEnterpriseSupportLinkedAccountChargesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListEnterpriseSupportLinkedAccountChargesResponse.type = Types::ListEnterpriseSupportLinkedAccountChargesResponse
    ListSourceViewsForBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ListSourceViewsForBillingViewRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewsMaxResults, name: "maxResults"))
    ListSourceViewsForBillingViewRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListSourceViewsForBillingViewRequest.type = Types::ListSourceViewsForBillingViewRequest
    ListSourceViewsForBillingViewResponse.add_member(:source_views, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSourceViewsList, name: "sourceViews", traits: {"smithy.api#required" => {}}))
    ListSourceViewsForBillingViewResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListSourceViewsForBillingViewResponse.type = Types::ListSourceViewsForBillingViewResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    PreferenceValue.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PreferenceValue.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PricingPlan.add_member(:pricing_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pricingPlanId"))
    PricingPlan.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    PricingPlan.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    PricingPlan.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startDate"))
    PricingPlan.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endDate"))
    PricingPlan.add_member(:plan_discount_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "planDiscountPercent"))
    PricingPlan.add_member(:discount_applies_to_minimum_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "discountAppliesToMinimumCharge"))
    PricingPlan.add_member(:minimum_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "minimumCharge"))
    PricingPlan.add_member(:tiered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tiered"))
    PricingPlan.add_member(:tiers, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanTierList, name: "tiers", traits: {"smithy.api#required" => {}}))
    PricingPlan.type = Types::PricingPlan
    PricingPlanList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlan, name: "member"))
    PricingPlanTier.add_member(:tier_minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tierMinimum", traits: {"smithy.api#required" => {}}))
    PricingPlanTier.add_member(:tier_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tierMaximum"))
    PricingPlanTier.add_member(:base_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "baseCharge", traits: {"smithy.api#required" => {}}))
    PricingPlanTier.add_member(:additional_percentage_of_aggregate_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "additionalPercentageOfAggregateCharges", traits: {"smithy.api#required" => {}}))
    PricingPlanTier.add_member(:aggregate_charges_adjustment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "aggregateChargesAdjustment", traits: {"smithy.api#required" => {}}))
    PricingPlanTier.add_member(:incremental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "incremental", traits: {"smithy.api#required" => {}}))
    PricingPlanTier.add_member(:increment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "increment"))
    PricingPlanTier.add_member(:increment_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "incrementCharge"))
    PricingPlanTier.type = Types::PricingPlanTier
    PricingPlanTierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanTier, name: "member"))
    ProductNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductName, name: "member"))
    PurchaseTypeApplications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseType, name: "member"))
    RedeemCreditsRequest.add_member(:promo_code, ::Smithy::Schema::Shapes::MemberShape.new(target: PromoCode, name: "promoCode", traits: {"smithy.api#required" => {}}))
    RedeemCreditsRequest.type = Types::RedeemCreditsRequest
    RedeemCreditsResponse.type = Types::RedeemCreditsResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "key", traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagValue, name: "value"))
    ResourceTag.type = Types::ResourceTag
    ResourceTagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "member"))
    ResourceTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTag, name: "member"))
    SearchOption.add_member(:starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTS_WITH", traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    ServiceLevelAccountUsage.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ServiceLevelAccountUsage.add_member(:total_support_eligible_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "totalSupportEligibleSpend"))
    ServiceLevelAccountUsage.type = Types::ServiceLevelAccountUsage
    ServiceLevelAccountUsageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLevelAccountUsage, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaCode, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShareableAccountIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    StringSearch.add_member(:search_option, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchOption, name: "searchOption", traits: {"smithy.api#required" => {}}))
    StringSearch.add_member(:search_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchValue, name: "searchValue", traits: {"smithy.api#required" => {}}))
    StringSearch.type = Types::StringSearch
    StringSearches.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSearch, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    TagValues.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "values", traits: {"smithy.api#required" => {}}))
    TagValues.type = Types::TagValues
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimePeriodList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnterpriseSupportTimePeriod, name: "member"))
    TimeRange.add_member(:begin_date_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "beginDateInclusive"))
    TimeRange.add_member(:end_date_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endDateInclusive"))
    TimeRange.type = Types::TimeRange
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKeyList, name: "resourceTagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBillingPreferencesRequest.add_member(:feature, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingFeature, name: "feature", traits: {"smithy.api#required" => {}}))
    UpdateBillingPreferencesRequest.add_member(:billing_preferences_per_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPreferencesPerKey, name: "billingPreferencesPerKey", traits: {"smithy.api#required" => {}}))
    UpdateBillingPreferencesRequest.type = Types::UpdateBillingPreferencesRequest
    UpdateBillingPreferencesResponse.type = Types::UpdateBillingPreferencesResponse
    UpdateBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateBillingViewRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewName, name: "name"))
    UpdateBillingViewRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewDescription, name: "description"))
    UpdateBillingViewRequest.add_member(:data_filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "dataFilterExpression"))
    UpdateBillingViewRequest.type = Types::UpdateBillingViewRequest
    UpdateBillingViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateBillingViewResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    UpdateBillingViewResponse.type = Types::UpdateBillingViewResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    Values.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "member"))

    AWSBilling = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.billing#AWSBilling"
      service.name = "AWSBilling"
      service.version = "2023-09-07"
      service.traits = {"aws.api#service" => {"sdkId" => "Billing", "endpointPrefix" => "billing", "arnNamespace" => "billing", "cloudTrailEventSource" => "billing.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "billing"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix", "partitionEndpointSpecialCases" => {"aws" => [{"endpoint" => "https://billing.us-east-1.api.aws", "region" => "us-east-1", "dualStack" => true}, {"endpoint" => "https://billing.us-east-1.api.aws", "region" => "us-east-1", "dualStack" => false}]}}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Billing", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://billing.us-east-1.api.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://billing-fips.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://billing-fips.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://billing.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://billing.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAkAAAAGAAAABAX14QQAAAAHAAAABQAAAAgF9eELAAAABgX14QkF9eEKAAAABQAAAAsAAAAKAAAABwX14QcF9eEIAAAABgAAAAwF9eEGAAAABwX14QUF9eEGAAAAAwX14QEAAAAOAAAABQX14QIF9eED"}}
      service.add_operation(:associate_source_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#AssociateSourceViews"
        operation.name = "AssociateSourceViews"
        operation.input = AssociateSourceViewsRequest
        operation.output = AssociateSourceViewsResponse
        operation.errors << AccessDeniedException
        operation.errors << BillingViewHealthStatusException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#CreateBillingView"
        operation.name = "CreateBillingView"
        operation.input = CreateBillingViewRequest
        operation.output = CreateBillingViewResponse
        operation.errors << AccessDeniedException
        operation.errors << BillingViewHealthStatusException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#DeleteBillingView"
        operation.name = "DeleteBillingView"
        operation.input = DeleteBillingViewRequest
        operation.output = DeleteBillingViewResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_source_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#DisassociateSourceViews"
        operation.name = "DisassociateSourceViews"
        operation.input = DisassociateSourceViewsRequest
        operation.output = DisassociateSourceViewsResponse
        operation.errors << AccessDeniedException
        operation.errors << BillingViewHealthStatusException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_billing_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#GetBillingPreferences"
        operation.name = "GetBillingPreferences"
        operation.input = GetBillingPreferencesRequest
        operation.output = GetBillingPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#GetBillingView"
        operation.name = "GetBillingView"
        operation.input = GetBillingViewRequest
        operation.output = GetBillingViewResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_credit_allocation_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#GetCreditAllocationHistory"
        operation.name = "GetCreditAllocationHistory"
        operation.input = GetCreditAllocationHistoryRequest
        operation.output = GetCreditAllocationHistoryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetCreditAllocationHistory.new
      end)
      service.add_operation(:get_credits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#GetCredits"
        operation.name = "GetCredits"
        operation.input = GetCreditsRequest
        operation.output = GetCreditsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_enterprise_support_charge_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#GetEnterpriseSupportChargeSummary"
        operation.name = "GetEnterpriseSupportChargeSummary"
        operation.input = GetEnterpriseSupportChargeSummaryRequest
        operation.output = GetEnterpriseSupportChargeSummaryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_enterprise_support_contract_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#GetEnterpriseSupportContractDetails"
        operation.name = "GetEnterpriseSupportContractDetails"
        operation.input = GetEnterpriseSupportContractDetailsRequest
        operation.output = GetEnterpriseSupportContractDetailsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_billing_view_segments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListBillingViewSegments"
        operation.name = "ListBillingViewSegments"
        operation.input = ListBillingViewSegmentsRequest
        operation.output = ListBillingViewSegmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << BillingViewHealthStatusException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillingViewSegments.new
      end)
      service.add_operation(:list_billing_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListBillingViews"
        operation.name = "ListBillingViews"
        operation.input = ListBillingViewsRequest
        operation.output = ListBillingViewsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListBillingViewsSuccess", "params" => {"activeTimeRange" => {"activeAfterInclusive" => 1719792000, "activeBeforeInclusive" => 1722470399.999}}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListBillingViews.new
      end)
      service.add_operation(:list_business_support_account_charges, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListBusinessSupportAccountCharges"
        operation.name = "ListBusinessSupportAccountCharges"
        operation.input = ListBusinessSupportAccountChargesRequest
        operation.output = ListBusinessSupportAccountChargesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBusinessSupportAccountCharges.new
      end)
      service.add_operation(:list_business_support_subscription_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListBusinessSupportSubscriptionHistory"
        operation.name = "ListBusinessSupportSubscriptionHistory"
        operation.input = ListBusinessSupportSubscriptionHistoryRequest
        operation.output = ListBusinessSupportSubscriptionHistoryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBusinessSupportSubscriptionHistory.new
      end)
      service.add_operation(:list_enterprise_support_linked_account_charges, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListEnterpriseSupportLinkedAccountCharges"
        operation.name = "ListEnterpriseSupportLinkedAccountCharges"
        operation.input = ListEnterpriseSupportLinkedAccountChargesRequest
        operation.output = ListEnterpriseSupportLinkedAccountChargesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnterpriseSupportLinkedAccountCharges.new
      end)
      service.add_operation(:list_source_views_for_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListSourceViewsForBillingView"
        operation.name = "ListSourceViewsForBillingView"
        operation.input = ListSourceViewsForBillingViewRequest
        operation.output = ListSourceViewsForBillingViewResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSourceViewsForBillingView.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:redeem_credits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#RedeemCredits"
        operation.name = "RedeemCredits"
        operation.input = RedeemCreditsRequest
        operation.output = RedeemCreditsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_billing_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#UpdateBillingPreferences"
        operation.name = "UpdateBillingPreferences"
        operation.input = UpdateBillingPreferencesRequest
        operation.output = UpdateBillingPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#UpdateBillingView"
        operation.name = "UpdateBillingView"
        operation.input = UpdateBillingViewRequest
        operation.output = UpdateBillingViewResponse
        operation.errors << AccessDeniedException
        operation.errors << BillingViewHealthStatusException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
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
