# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Billing
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountName = Shapes::StringShape.new(name: 'AccountName')
    ActiveTimeRange = Shapes::StructureShape.new(name: 'ActiveTimeRange')
    Amount = Shapes::StructureShape.new(name: 'Amount')
    ApplicationType = Shapes::StringShape.new(name: 'ApplicationType')
    AssociateSourceViewsRequest = Shapes::StructureShape.new(name: 'AssociateSourceViewsRequest')
    AssociateSourceViewsResponse = Shapes::StructureShape.new(name: 'AssociateSourceViewsResponse')
    BillingFeature = Shapes::StringShape.new(name: 'BillingFeature')
    BillingFeatureFilter = Shapes::StructureShape.new(name: 'BillingFeatureFilter')
    BillingFeatureFilterName = Shapes::StringShape.new(name: 'BillingFeatureFilterName')
    BillingFeatureFilterValue = Shapes::StringShape.new(name: 'BillingFeatureFilterValue')
    BillingFeatureFilterValues = Shapes::ListShape.new(name: 'BillingFeatureFilterValues')
    BillingMonth = Shapes::StringShape.new(name: 'BillingMonth')
    BillingPeriod = Shapes::StructureShape.new(name: 'BillingPeriod')
    BillingPreferenceForKey = Shapes::StructureShape.new(name: 'BillingPreferenceForKey')
    BillingPreferenceSummary = Shapes::StructureShape.new(name: 'BillingPreferenceSummary')
    BillingPreferences = Shapes::ListShape.new(name: 'BillingPreferences')
    BillingPreferencesPerKey = Shapes::ListShape.new(name: 'BillingPreferencesPerKey')
    BillingViewArn = Shapes::StringShape.new(name: 'BillingViewArn')
    BillingViewArnList = Shapes::ListShape.new(name: 'BillingViewArnList')
    BillingViewDescription = Shapes::StringShape.new(name: 'BillingViewDescription')
    BillingViewElement = Shapes::StructureShape.new(name: 'BillingViewElement')
    BillingViewHealthStatus = Shapes::StructureShape.new(name: 'BillingViewHealthStatus')
    BillingViewHealthStatusException = Shapes::StructureShape.new(name: 'BillingViewHealthStatusException')
    BillingViewList = Shapes::ListShape.new(name: 'BillingViewList')
    BillingViewListElement = Shapes::StructureShape.new(name: 'BillingViewListElement')
    BillingViewName = Shapes::StringShape.new(name: 'BillingViewName')
    BillingViewSourceViewsList = Shapes::ListShape.new(name: 'BillingViewSourceViewsList')
    BillingViewStatus = Shapes::StringShape.new(name: 'BillingViewStatus')
    BillingViewStatusReason = Shapes::StringShape.new(name: 'BillingViewStatusReason')
    BillingViewStatusReasons = Shapes::ListShape.new(name: 'BillingViewStatusReasons')
    BillingViewType = Shapes::StringShape.new(name: 'BillingViewType')
    BillingViewTypeList = Shapes::ListShape.new(name: 'BillingViewTypeList')
    BillingViewsMaxResults = Shapes::IntegerShape.new(name: 'BillingViewsMaxResults')
    BillingYear = Shapes::IntegerShape.new(name: 'BillingYear')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CostCategoryName = Shapes::StringShape.new(name: 'CostCategoryName')
    CostCategoryValues = Shapes::StructureShape.new(name: 'CostCategoryValues')
    CreateBillingViewRequest = Shapes::StructureShape.new(name: 'CreateBillingViewRequest')
    CreateBillingViewResponse = Shapes::StructureShape.new(name: 'CreateBillingViewResponse')
    CreditAllocationHistoryEntry = Shapes::StructureShape.new(name: 'CreditAllocationHistoryEntry')
    CreditAllocationHistoryList = Shapes::ListShape.new(name: 'CreditAllocationHistoryList')
    CreditData = Shapes::StructureShape.new(name: 'CreditData')
    CreditDataList = Shapes::ListShape.new(name: 'CreditDataList')
    CreditId = Shapes::StringShape.new(name: 'CreditId')
    CreditSharingType = Shapes::StringShape.new(name: 'CreditSharingType')
    CreditStatus = Shapes::StringShape.new(name: 'CreditStatus')
    CurrencyAmount = Shapes::StringShape.new(name: 'CurrencyAmount')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    DeleteBillingViewRequest = Shapes::StructureShape.new(name: 'DeleteBillingViewRequest')
    DeleteBillingViewResponse = Shapes::StructureShape.new(name: 'DeleteBillingViewResponse')
    Dimension = Shapes::StringShape.new(name: 'Dimension')
    DimensionValues = Shapes::StructureShape.new(name: 'DimensionValues')
    DisassociateSourceViewsRequest = Shapes::StructureShape.new(name: 'DisassociateSourceViewsRequest')
    DisassociateSourceViewsResponse = Shapes::StructureShape.new(name: 'DisassociateSourceViewsResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Expression = Shapes::StructureShape.new(name: 'Expression')
    FailedMonthsList = Shapes::ListShape.new(name: 'FailedMonthsList')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    GetBillingPreferencesRequest = Shapes::StructureShape.new(name: 'GetBillingPreferencesRequest')
    GetBillingPreferencesRequestFeaturesList = Shapes::ListShape.new(name: 'GetBillingPreferencesRequestFeaturesList')
    GetBillingPreferencesRequestFiltersList = Shapes::ListShape.new(name: 'GetBillingPreferencesRequestFiltersList')
    GetBillingPreferencesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetBillingPreferencesRequestMaxResultsInteger')
    GetBillingPreferencesResponse = Shapes::StructureShape.new(name: 'GetBillingPreferencesResponse')
    GetBillingViewRequest = Shapes::StructureShape.new(name: 'GetBillingViewRequest')
    GetBillingViewResponse = Shapes::StructureShape.new(name: 'GetBillingViewResponse')
    GetCreditAllocationHistoryRequest = Shapes::StructureShape.new(name: 'GetCreditAllocationHistoryRequest')
    GetCreditAllocationHistoryRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetCreditAllocationHistoryRequestMaxResultsInteger')
    GetCreditAllocationHistoryResponse = Shapes::StructureShape.new(name: 'GetCreditAllocationHistoryResponse')
    GetCreditsRequest = Shapes::StructureShape.new(name: 'GetCreditsRequest')
    GetCreditsResponse = Shapes::StructureShape.new(name: 'GetCreditsResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListBillingViewsRequest = Shapes::StructureShape.new(name: 'ListBillingViewsRequest')
    ListBillingViewsResponse = Shapes::StructureShape.new(name: 'ListBillingViewsResponse')
    ListSourceViewsForBillingViewRequest = Shapes::StructureShape.new(name: 'ListSourceViewsForBillingViewRequest')
    ListSourceViewsForBillingViewResponse = Shapes::StructureShape.new(name: 'ListSourceViewsForBillingViewResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Month = Shapes::IntegerShape.new(name: 'Month')
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PreferenceKey = Shapes::StringShape.new(name: 'PreferenceKey')
    PreferenceValue = Shapes::StringShape.new(name: 'PreferenceValue')
    ProductName = Shapes::StringShape.new(name: 'ProductName')
    ProductNames = Shapes::ListShape.new(name: 'ProductNames')
    PromoCode = Shapes::StringShape.new(name: 'PromoCode')
    PurchaseType = Shapes::StringShape.new(name: 'PurchaseType')
    PurchaseTypeApplications = Shapes::ListShape.new(name: 'PurchaseTypeApplications')
    QuotaCode = Shapes::StringShape.new(name: 'QuotaCode')
    RedeemCreditsRequest = Shapes::StructureShape.new(name: 'RedeemCreditsRequest')
    RedeemCreditsResponse = Shapes::StructureShape.new(name: 'RedeemCreditsResponse')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagKeyList = Shapes::ListShape.new(name: 'ResourceTagKeyList')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SearchOption = Shapes::StringShape.new(name: 'SearchOption')
    SearchValue = Shapes::StringShape.new(name: 'SearchValue')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ShareableAccountIds = Shapes::ListShape.new(name: 'ShareableAccountIds')
    String = Shapes::StringShape.new(name: 'String')
    StringSearch = Shapes::StructureShape.new(name: 'StringSearch')
    StringSearches = Shapes::ListShape.new(name: 'StringSearches')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValues = Shapes::StructureShape.new(name: 'TagValues')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateBillingPreferencesRequest = Shapes::StructureShape.new(name: 'UpdateBillingPreferencesRequest')
    UpdateBillingPreferencesResponse = Shapes::StructureShape.new(name: 'UpdateBillingPreferencesResponse')
    UpdateBillingViewRequest = Shapes::StructureShape.new(name: 'UpdateBillingViewRequest')
    UpdateBillingViewResponse = Shapes::StructureShape.new(name: 'UpdateBillingViewResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Value = Shapes::StringShape.new(name: 'Value')
    Values = Shapes::ListShape.new(name: 'Values')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActiveTimeRange.add_member(:active_after_inclusive, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "activeAfterInclusive"))
    ActiveTimeRange.add_member(:active_before_inclusive, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "activeBeforeInclusive"))
    ActiveTimeRange.struct_class = Types::ActiveTimeRange

    Amount.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currencyCode"))
    Amount.add_member(:currency_amount, Shapes::ShapeRef.new(shape: CurrencyAmount, required: true, location_name: "currencyAmount"))
    Amount.struct_class = Types::Amount

    AssociateSourceViewsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    AssociateSourceViewsRequest.add_member(:source_views, Shapes::ShapeRef.new(shape: BillingViewSourceViewsList, required: true, location_name: "sourceViews"))
    AssociateSourceViewsRequest.struct_class = Types::AssociateSourceViewsRequest

    AssociateSourceViewsResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    AssociateSourceViewsResponse.struct_class = Types::AssociateSourceViewsResponse

    BillingFeatureFilter.add_member(:name, Shapes::ShapeRef.new(shape: BillingFeatureFilterName, location_name: "name"))
    BillingFeatureFilter.add_member(:value, Shapes::ShapeRef.new(shape: BillingFeatureFilterValues, location_name: "value"))
    BillingFeatureFilter.struct_class = Types::BillingFeatureFilter

    BillingFeatureFilterValues.member = Shapes::ShapeRef.new(shape: BillingFeatureFilterValue)

    BillingPeriod.add_member(:year, Shapes::ShapeRef.new(shape: BillingYear, required: true, location_name: "year"))
    BillingPeriod.add_member(:month, Shapes::ShapeRef.new(shape: Month, required: true, location_name: "month"))
    BillingPeriod.struct_class = Types::BillingPeriod

    BillingPreferenceForKey.add_member(:key, Shapes::ShapeRef.new(shape: PreferenceKey, required: true, location_name: "key"))
    BillingPreferenceForKey.add_member(:value, Shapes::ShapeRef.new(shape: PreferenceValue, required: true, location_name: "value"))
    BillingPreferenceForKey.struct_class = Types::BillingPreferenceForKey

    BillingPreferenceSummary.add_member(:feature, Shapes::ShapeRef.new(shape: BillingFeature, required: true, location_name: "feature"))
    BillingPreferenceSummary.add_member(:key, Shapes::ShapeRef.new(shape: PreferenceKey, required: true, location_name: "key"))
    BillingPreferenceSummary.add_member(:value, Shapes::ShapeRef.new(shape: PreferenceValue, required: true, location_name: "value"))
    BillingPreferenceSummary.add_member(:account_name, Shapes::ShapeRef.new(shape: AccountName, location_name: "accountName"))
    BillingPreferenceSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    BillingPreferenceSummary.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "billingPeriod"))
    BillingPreferenceSummary.struct_class = Types::BillingPreferenceSummary

    BillingPreferences.member = Shapes::ShapeRef.new(shape: BillingPreferenceSummary)

    BillingPreferencesPerKey.member = Shapes::ShapeRef.new(shape: BillingPreferenceForKey)

    BillingViewArnList.member = Shapes::ShapeRef.new(shape: BillingViewArn)

    BillingViewElement.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "arn"))
    BillingViewElement.add_member(:name, Shapes::ShapeRef.new(shape: BillingViewName, location_name: "name"))
    BillingViewElement.add_member(:description, Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: "description"))
    BillingViewElement.add_member(:billing_view_type, Shapes::ShapeRef.new(shape: BillingViewType, location_name: "billingViewType"))
    BillingViewElement.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId"))
    BillingViewElement.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "sourceAccountId"))
    BillingViewElement.add_member(:data_filter_expression, Shapes::ShapeRef.new(shape: Expression, location_name: "dataFilterExpression"))
    BillingViewElement.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    BillingViewElement.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    BillingViewElement.add_member(:derived_view_count, Shapes::ShapeRef.new(shape: Integer, location_name: "derivedViewCount"))
    BillingViewElement.add_member(:source_view_count, Shapes::ShapeRef.new(shape: Integer, location_name: "sourceViewCount"))
    BillingViewElement.add_member(:view_definition_last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "viewDefinitionLastUpdatedAt"))
    BillingViewElement.add_member(:health_status, Shapes::ShapeRef.new(shape: BillingViewHealthStatus, location_name: "healthStatus"))
    BillingViewElement.struct_class = Types::BillingViewElement

    BillingViewHealthStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: BillingViewStatus, location_name: "statusCode"))
    BillingViewHealthStatus.add_member(:status_reasons, Shapes::ShapeRef.new(shape: BillingViewStatusReasons, location_name: "statusReasons"))
    BillingViewHealthStatus.struct_class = Types::BillingViewHealthStatus

    BillingViewHealthStatusException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    BillingViewHealthStatusException.struct_class = Types::BillingViewHealthStatusException

    BillingViewList.member = Shapes::ShapeRef.new(shape: BillingViewListElement)

    BillingViewListElement.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "arn"))
    BillingViewListElement.add_member(:name, Shapes::ShapeRef.new(shape: BillingViewName, location_name: "name"))
    BillingViewListElement.add_member(:description, Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: "description"))
    BillingViewListElement.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId"))
    BillingViewListElement.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "sourceAccountId"))
    BillingViewListElement.add_member(:billing_view_type, Shapes::ShapeRef.new(shape: BillingViewType, location_name: "billingViewType"))
    BillingViewListElement.add_member(:health_status, Shapes::ShapeRef.new(shape: BillingViewHealthStatus, location_name: "healthStatus"))
    BillingViewListElement.struct_class = Types::BillingViewListElement

    BillingViewSourceViewsList.member = Shapes::ShapeRef.new(shape: BillingViewArn)

    BillingViewStatusReasons.member = Shapes::ShapeRef.new(shape: BillingViewStatusReason)

    BillingViewTypeList.member = Shapes::ShapeRef.new(shape: BillingViewType)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CostCategoryValues.add_member(:key, Shapes::ShapeRef.new(shape: CostCategoryName, required: true, location_name: "key"))
    CostCategoryValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "values"))
    CostCategoryValues.struct_class = Types::CostCategoryValues

    CreateBillingViewRequest.add_member(:name, Shapes::ShapeRef.new(shape: BillingViewName, required: true, location_name: "name"))
    CreateBillingViewRequest.add_member(:description, Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: "description"))
    CreateBillingViewRequest.add_member(:source_views, Shapes::ShapeRef.new(shape: BillingViewSourceViewsList, required: true, location_name: "sourceViews"))
    CreateBillingViewRequest.add_member(:data_filter_expression, Shapes::ShapeRef.new(shape: Expression, location_name: "dataFilterExpression"))
    CreateBillingViewRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBillingViewRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "resourceTags"))
    CreateBillingViewRequest.struct_class = Types::CreateBillingViewRequest

    CreateBillingViewResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    CreateBillingViewResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    CreateBillingViewResponse.struct_class = Types::CreateBillingViewResponse

    CreditAllocationHistoryEntry.add_member(:credit_id, Shapes::ShapeRef.new(shape: CreditId, required: true, location_name: "creditId"))
    CreditAllocationHistoryEntry.add_member(:credit_amount, Shapes::ShapeRef.new(shape: Amount, required: true, location_name: "creditAmount"))
    CreditAllocationHistoryEntry.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreditAllocationHistoryEntry.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    CreditAllocationHistoryEntry.add_member(:applied_service_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "appliedServiceName"))
    CreditAllocationHistoryEntry.add_member(:billing_month, Shapes::ShapeRef.new(shape: BillingMonth, required: true, location_name: "billingMonth"))
    CreditAllocationHistoryEntry.add_member(:is_estimated_bill, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isEstimatedBill"))
    CreditAllocationHistoryEntry.struct_class = Types::CreditAllocationHistoryEntry

    CreditAllocationHistoryList.member = Shapes::ShapeRef.new(shape: CreditAllocationHistoryEntry)

    CreditData.add_member(:credit_id, Shapes::ShapeRef.new(shape: CreditId, required: true, location_name: "creditId"))
    CreditData.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    CreditData.add_member(:credit_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "creditType"))
    CreditData.add_member(:initial_amount, Shapes::ShapeRef.new(shape: Amount, required: true, location_name: "initialAmount"))
    CreditData.add_member(:remaining_amount, Shapes::ShapeRef.new(shape: Amount, required: true, location_name: "remainingAmount"))
    CreditData.add_member(:estimated_amount, Shapes::ShapeRef.new(shape: Amount, location_name: "estimatedAmount"))
    CreditData.add_member(:applicable_product_names, Shapes::ShapeRef.new(shape: ProductNames, location_name: "applicableProductNames"))
    CreditData.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    CreditData.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    CreditData.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endDate"))
    CreditData.add_member(:exhaust_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "exhaustDate"))
    CreditData.add_member(:application_type, Shapes::ShapeRef.new(shape: ApplicationType, location_name: "applicationType"))
    CreditData.add_member(:shareable_accounts, Shapes::ShapeRef.new(shape: ShareableAccountIds, location_name: "shareableAccounts"))
    CreditData.add_member(:account_has_credit_sharing_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "accountHasCreditSharingEnabled"))
    CreditData.add_member(:credit_console_visibility, Shapes::ShapeRef.new(shape: String, location_name: "creditConsoleVisibility"))
    CreditData.add_member(:credit_sharing_type, Shapes::ShapeRef.new(shape: CreditSharingType, location_name: "creditSharingType"))
    CreditData.add_member(:cost_category_arn, Shapes::ShapeRef.new(shape: String, location_name: "costCategoryArn"))
    CreditData.add_member(:rule_name, Shapes::ShapeRef.new(shape: String, location_name: "ruleName"))
    CreditData.add_member(:credit_status, Shapes::ShapeRef.new(shape: CreditStatus, location_name: "creditStatus"))
    CreditData.add_member(:purchase_type_applications, Shapes::ShapeRef.new(shape: PurchaseTypeApplications, location_name: "purchaseTypeApplications"))
    CreditData.struct_class = Types::CreditData

    CreditDataList.member = Shapes::ShapeRef.new(shape: CreditData)

    DeleteBillingViewRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    DeleteBillingViewRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "force"))
    DeleteBillingViewRequest.struct_class = Types::DeleteBillingViewRequest

    DeleteBillingViewResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    DeleteBillingViewResponse.struct_class = Types::DeleteBillingViewResponse

    DimensionValues.add_member(:key, Shapes::ShapeRef.new(shape: Dimension, required: true, location_name: "key"))
    DimensionValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "values"))
    DimensionValues.struct_class = Types::DimensionValues

    DisassociateSourceViewsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    DisassociateSourceViewsRequest.add_member(:source_views, Shapes::ShapeRef.new(shape: BillingViewSourceViewsList, required: true, location_name: "sourceViews"))
    DisassociateSourceViewsRequest.struct_class = Types::DisassociateSourceViewsRequest

    DisassociateSourceViewsResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    DisassociateSourceViewsResponse.struct_class = Types::DisassociateSourceViewsResponse

    Expression.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionValues, location_name: "dimensions"))
    Expression.add_member(:tags, Shapes::ShapeRef.new(shape: TagValues, location_name: "tags"))
    Expression.add_member(:cost_categories, Shapes::ShapeRef.new(shape: CostCategoryValues, location_name: "costCategories"))
    Expression.add_member(:time_range, Shapes::ShapeRef.new(shape: TimeRange, location_name: "timeRange"))
    Expression.struct_class = Types::Expression

    FailedMonthsList.member = Shapes::ShapeRef.new(shape: BillingMonth)

    GetBillingPreferencesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    GetBillingPreferencesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetBillingPreferencesRequestMaxResultsInteger, location_name: "maxResults"))
    GetBillingPreferencesRequest.add_member(:features, Shapes::ShapeRef.new(shape: GetBillingPreferencesRequestFeaturesList, required: true, location_name: "features"))
    GetBillingPreferencesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: GetBillingPreferencesRequestFiltersList, location_name: "filters"))
    GetBillingPreferencesRequest.struct_class = Types::GetBillingPreferencesRequest

    GetBillingPreferencesRequestFeaturesList.member = Shapes::ShapeRef.new(shape: BillingFeature)

    GetBillingPreferencesRequestFiltersList.member = Shapes::ShapeRef.new(shape: BillingFeatureFilter)

    GetBillingPreferencesResponse.add_member(:billing_preferences, Shapes::ShapeRef.new(shape: BillingPreferences, required: true, location_name: "billingPreferences"))
    GetBillingPreferencesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    GetBillingPreferencesResponse.struct_class = Types::GetBillingPreferencesResponse

    GetBillingViewRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    GetBillingViewRequest.struct_class = Types::GetBillingViewRequest

    GetBillingViewResponse.add_member(:billing_view, Shapes::ShapeRef.new(shape: BillingViewElement, required: true, location_name: "billingView"))
    GetBillingViewResponse.struct_class = Types::GetBillingViewResponse

    GetCreditAllocationHistoryRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    GetCreditAllocationHistoryRequest.add_member(:credit_id, Shapes::ShapeRef.new(shape: Long, location_name: "creditId"))
    GetCreditAllocationHistoryRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    GetCreditAllocationHistoryRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endDate"))
    GetCreditAllocationHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    GetCreditAllocationHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetCreditAllocationHistoryRequestMaxResultsInteger, location_name: "maxResults"))
    GetCreditAllocationHistoryRequest.struct_class = Types::GetCreditAllocationHistoryRequest

    GetCreditAllocationHistoryResponse.add_member(:credit_allocation_history_list, Shapes::ShapeRef.new(shape: CreditAllocationHistoryList, location_name: "creditAllocationHistoryList"))
    GetCreditAllocationHistoryResponse.add_member(:partial_results, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "partialResults"))
    GetCreditAllocationHistoryResponse.add_member(:failed_months, Shapes::ShapeRef.new(shape: FailedMonthsList, location_name: "failedMonths"))
    GetCreditAllocationHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    GetCreditAllocationHistoryResponse.struct_class = Types::GetCreditAllocationHistoryResponse

    GetCreditsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "accountId"))
    GetCreditsRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    GetCreditsRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endDate"))
    GetCreditsRequest.add_member(:payer_account_flag, Shapes::ShapeRef.new(shape: Boolean, location_name: "payerAccountFlag"))
    GetCreditsRequest.struct_class = Types::GetCreditsRequest

    GetCreditsResponse.add_member(:credits, Shapes::ShapeRef.new(shape: CreditDataList, location_name: "credits"))
    GetCreditsResponse.struct_class = Types::GetCreditsResponse

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    GetResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policy"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListBillingViewsRequest.add_member(:active_time_range, Shapes::ShapeRef.new(shape: ActiveTimeRange, location_name: "activeTimeRange"))
    ListBillingViewsRequest.add_member(:arns, Shapes::ShapeRef.new(shape: BillingViewArnList, location_name: "arns"))
    ListBillingViewsRequest.add_member(:billing_view_types, Shapes::ShapeRef.new(shape: BillingViewTypeList, location_name: "billingViewTypes"))
    ListBillingViewsRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringSearches, location_name: "names"))
    ListBillingViewsRequest.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId"))
    ListBillingViewsRequest.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "sourceAccountId"))
    ListBillingViewsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BillingViewsMaxResults, location_name: "maxResults"))
    ListBillingViewsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListBillingViewsRequest.struct_class = Types::ListBillingViewsRequest

    ListBillingViewsResponse.add_member(:billing_views, Shapes::ShapeRef.new(shape: BillingViewList, required: true, location_name: "billingViews"))
    ListBillingViewsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListBillingViewsResponse.struct_class = Types::ListBillingViewsResponse

    ListSourceViewsForBillingViewRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    ListSourceViewsForBillingViewRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BillingViewsMaxResults, location_name: "maxResults"))
    ListSourceViewsForBillingViewRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListSourceViewsForBillingViewRequest.struct_class = Types::ListSourceViewsForBillingViewRequest

    ListSourceViewsForBillingViewResponse.add_member(:source_views, Shapes::ShapeRef.new(shape: BillingViewSourceViewsList, required: true, location_name: "sourceViews"))
    ListSourceViewsForBillingViewResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListSourceViewsForBillingViewResponse.struct_class = Types::ListSourceViewsForBillingViewResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "resourceTags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ProductNames.member = Shapes::ShapeRef.new(shape: ProductName)

    PurchaseTypeApplications.member = Shapes::ShapeRef.new(shape: PurchaseType)

    RedeemCreditsRequest.add_member(:promo_code, Shapes::ShapeRef.new(shape: PromoCode, required: true, location_name: "promoCode"))
    RedeemCreditsRequest.struct_class = Types::RedeemCreditsRequest

    RedeemCreditsResponse.struct_class = Types::RedeemCreditsResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTag.add_member(:key, Shapes::ShapeRef.new(shape: ResourceTagKey, required: true, location_name: "key"))
    ResourceTag.add_member(:value, Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: "value"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTagKeyList.member = Shapes::ShapeRef.new(shape: ResourceTagKey)

    ResourceTagList.member = Shapes::ShapeRef.new(shape: ResourceTag)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ShareableAccountIds.member = Shapes::ShapeRef.new(shape: AccountId)

    StringSearch.add_member(:search_option, Shapes::ShapeRef.new(shape: SearchOption, required: true, location_name: "searchOption"))
    StringSearch.add_member(:search_value, Shapes::ShapeRef.new(shape: SearchValue, required: true, location_name: "searchValue"))
    StringSearch.struct_class = Types::StringSearch

    StringSearches.member = Shapes::ShapeRef.new(shape: StringSearch)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, required: true, location_name: "resourceTags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagValues.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    TagValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "values"))
    TagValues.struct_class = Types::TagValues

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeRange.add_member(:begin_date_inclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "beginDateInclusive"))
    TimeRange.add_member(:end_date_inclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endDateInclusive"))
    TimeRange.struct_class = Types::TimeRange

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:resource_tag_keys, Shapes::ShapeRef.new(shape: ResourceTagKeyList, required: true, location_name: "resourceTagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateBillingPreferencesRequest.add_member(:feature, Shapes::ShapeRef.new(shape: BillingFeature, required: true, location_name: "feature"))
    UpdateBillingPreferencesRequest.add_member(:billing_preferences_per_key, Shapes::ShapeRef.new(shape: BillingPreferencesPerKey, required: true, location_name: "billingPreferencesPerKey"))
    UpdateBillingPreferencesRequest.struct_class = Types::UpdateBillingPreferencesRequest

    UpdateBillingPreferencesResponse.struct_class = Types::UpdateBillingPreferencesResponse

    UpdateBillingViewRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    UpdateBillingViewRequest.add_member(:name, Shapes::ShapeRef.new(shape: BillingViewName, location_name: "name"))
    UpdateBillingViewRequest.add_member(:description, Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: "description"))
    UpdateBillingViewRequest.add_member(:data_filter_expression, Shapes::ShapeRef.new(shape: Expression, location_name: "dataFilterExpression"))
    UpdateBillingViewRequest.struct_class = Types::UpdateBillingViewRequest

    UpdateBillingViewResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    UpdateBillingViewResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    UpdateBillingViewResponse.struct_class = Types::UpdateBillingViewResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    Values.member = Shapes::ShapeRef.new(shape: Value)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-09-07"

      api.metadata = {
        "apiVersion" => "2023-09-07",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "billing",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Billing",
        "serviceId" => "Billing",
        "signatureVersion" => "v4",
        "signingName" => "billing",
        "targetPrefix" => "AWSBilling",
        "uid" => "billing-2023-09-07",
      }

      api.add_operation(:associate_source_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSourceViews"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateSourceViewsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSourceViewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BillingViewHealthStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_billing_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBillingView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBillingViewRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBillingViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: BillingViewHealthStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_billing_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBillingView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBillingViewRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBillingViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_source_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSourceViews"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSourceViewsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSourceViewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BillingViewHealthStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_billing_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBillingPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBillingPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBillingPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_billing_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBillingView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBillingViewRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBillingViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_credit_allocation_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCreditAllocationHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCreditAllocationHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCreditAllocationHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_credits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCredits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCreditsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCreditsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_billing_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillingViews"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillingViewsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBillingViewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_source_views_for_billing_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSourceViewsForBillingView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSourceViewsForBillingViewRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSourceViewsForBillingViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:redeem_credits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RedeemCredits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RedeemCreditsRequest)
        o.output = Shapes::ShapeRef.new(shape: RedeemCreditsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_billing_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBillingPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBillingPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBillingPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_billing_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBillingView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBillingViewRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBillingViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: BillingViewHealthStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
