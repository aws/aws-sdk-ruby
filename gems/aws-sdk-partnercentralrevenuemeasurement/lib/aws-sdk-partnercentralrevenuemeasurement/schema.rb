# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralRevenueMeasurement
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#AccessDeniedExceptionReason", name: "AccessDeniedExceptionReason")
    AllocationCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#AllocationCount", name: "AllocationCount", traits: {"smithy.api#range" => {"min" => 0}})
    AllocationEffectiveDateString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#AllocationEffectiveDateString", name: "AllocationEffectiveDateString", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^\\d{4}-\\d{2}-\\d{2}$"})
    AllocationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#AllocationStatus", name: "AllocationStatus")
    AttributionSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#AttributionSortBy", name: "AttributionSortBy")
    AttributionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#AttributionSummary", name: "AttributionSummary")
    CatalogName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#CatalogName", name: "CatalogName")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]{1,64}$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ConflictExceptionReason", name: "ConflictExceptionReason")
    CreateMarketplaceRevenueShareAllocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#CreateMarketplaceRevenueShareAllocationInput", name: "CreateMarketplaceRevenueShareAllocationInput")
    CreateMarketplaceRevenueShareAllocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#CreateMarketplaceRevenueShareAllocationOutput", name: "CreateMarketplaceRevenueShareAllocationOutput")
    CreateMarketplaceRevenueShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#CreateMarketplaceRevenueShareInput", name: "CreateMarketplaceRevenueShareInput")
    CreateMarketplaceRevenueShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#CreateMarketplaceRevenueShareOutput", name: "CreateMarketplaceRevenueShareOutput")
    CreateRevenueAttributionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#CreateRevenueAttributionInput", name: "CreateRevenueAttributionInput")
    CreateRevenueAttributionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#CreateRevenueAttributionOutput", name: "CreateRevenueAttributionOutput")
    CustomerAwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#CustomerAwsAccountId", name: "CustomerAwsAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$", "smithy.api#sensitive" => {}})
    CustomerAwsAccountIdFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#CustomerAwsAccountIdFilterList", name: "CustomerAwsAccountIdFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    EntityIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#EntityIdentifier", name: "EntityIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-:/.]+$"})
    EntityIdentifierFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#EntityIdentifierFilterList", name: "EntityIdentifierFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#EntityType", name: "EntityType")
    EntityTypeFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#EntityTypeFilterList", name: "EntityTypeFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    FieldValidationCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#FieldValidationCode", name: "FieldValidationCode")
    GetMarketplaceRevenueShareAllocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#GetMarketplaceRevenueShareAllocationInput", name: "GetMarketplaceRevenueShareAllocationInput")
    GetMarketplaceRevenueShareAllocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#GetMarketplaceRevenueShareAllocationOutput", name: "GetMarketplaceRevenueShareAllocationOutput")
    GetMarketplaceRevenueShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#GetMarketplaceRevenueShareInput", name: "GetMarketplaceRevenueShareInput")
    GetMarketplaceRevenueShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#GetMarketplaceRevenueShareOutput", name: "GetMarketplaceRevenueShareOutput")
    GetRevenueAttributionAllocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#GetRevenueAttributionAllocationInput", name: "GetRevenueAttributionAllocationInput")
    GetRevenueAttributionAllocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#GetRevenueAttributionAllocationOutput", name: "GetRevenueAttributionAllocationOutput")
    GetRevenueAttributionAllocationsTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#GetRevenueAttributionAllocationsTaskInput", name: "GetRevenueAttributionAllocationsTaskInput")
    GetRevenueAttributionAllocationsTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#GetRevenueAttributionAllocationsTaskOutput", name: "GetRevenueAttributionAllocationsTaskOutput")
    GetRevenueAttributionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#GetRevenueAttributionInput", name: "GetRevenueAttributionInput")
    GetRevenueAttributionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#GetRevenueAttributionOutput", name: "GetRevenueAttributionOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListMarketplaceRevenueShareAllocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ListMarketplaceRevenueShareAllocationsInput", name: "ListMarketplaceRevenueShareAllocationsInput")
    ListMarketplaceRevenueShareAllocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ListMarketplaceRevenueShareAllocationsOutput", name: "ListMarketplaceRevenueShareAllocationsOutput")
    ListMarketplaceRevenueSharesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ListMarketplaceRevenueSharesInput", name: "ListMarketplaceRevenueSharesInput")
    ListMarketplaceRevenueSharesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ListMarketplaceRevenueSharesOutput", name: "ListMarketplaceRevenueSharesOutput")
    ListRevenueAttributionAllocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ListRevenueAttributionAllocationsInput", name: "ListRevenueAttributionAllocationsInput")
    ListRevenueAttributionAllocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ListRevenueAttributionAllocationsOutput", name: "ListRevenueAttributionAllocationsOutput")
    ListRevenueAttributionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ListRevenueAttributionsInput", name: "ListRevenueAttributionsInput")
    ListRevenueAttributionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ListRevenueAttributionsOutput", name: "ListRevenueAttributionsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ListTagsForResourceInput", name: "ListTagsForResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttribution", "ids" => {"Catalog" => "resourceArn", "RevenueAttributionId" => "resourceArn"}}, {"resource" => "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceRevenueShare", "ids" => {"Catalog" => "resourceArn", "MarketplaceProductId" => "resourceArn"}}]})
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MarketplaceProductId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceProductId", name: "MarketplaceProductId", traits: {"smithy.api#length" => {"min" => 18, "max" => 18}, "smithy.api#pattern" => "^prod-[a-z0-9]{13}$"})
    MarketplaceProductIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceProductIdList", name: "MarketplaceProductIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MarketplaceProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceProductSummary", name: "MarketplaceProductSummary")
    MarketplaceRevenueShareAllocationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceRevenueShareAllocationId", name: "MarketplaceRevenueShareAllocationId", traits: {"smithy.api#length" => {"min" => 18, "max" => 18}, "smithy.api#pattern" => "^mrsa-[A-Za-z0-9]{13}$"})
    MarketplaceRevenueShareAllocationSortField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceRevenueShareAllocationSortField", name: "MarketplaceRevenueShareAllocationSortField")
    MarketplaceRevenueShareAllocationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceRevenueShareAllocationSummary", name: "MarketplaceRevenueShareAllocationSummary")
    MarketplaceRevenueShareAllocationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceRevenueShareAllocationSummaryList", name: "MarketplaceRevenueShareAllocationSummaryList")
    MarketplaceRevenueShareSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceRevenueShareSortBy", name: "MarketplaceRevenueShareSortBy")
    MarketplaceRevenueShareSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceRevenueShareSummary", name: "MarketplaceRevenueShareSummary")
    MarketplaceRevenueShareSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceRevenueShareSummaryList", name: "MarketplaceRevenueShareSummaryList")
    MarketplaceRevenueShareTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceRevenueShareTagList", name: "MarketplaceRevenueShareTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    ProductCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ProductCodeList", name: "ProductCodeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:partnercentral:[a-z0-9-]+:[0-9]{12}:catalog/[a-zA-Z]+/(revenue-attribution/[a-zA-Z0-9-]+|marketplace-revenue-share/prod-[a-z0-9]{13})$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ResourceNotFoundExceptionReason", name: "ResourceNotFoundExceptionReason")
    RevenueAttributionAllocationAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionAllocationAction", name: "RevenueAttributionAllocationAction")
    RevenueAttributionAllocationErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionAllocationErrorCode", name: "RevenueAttributionAllocationErrorCode")
    RevenueAttributionAllocationErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionAllocationErrorDetail", name: "RevenueAttributionAllocationErrorDetail")
    RevenueAttributionAllocationErrorDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionAllocationErrorDetailList", name: "RevenueAttributionAllocationErrorDetailList")
    RevenueAttributionAllocationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionAllocationId", name: "RevenueAttributionAllocationId", traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^alloc-[a-z0-9]{13}$"})
    RevenueAttributionAllocationSortField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionAllocationSortField", name: "RevenueAttributionAllocationSortField")
    RevenueAttributionAllocationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionAllocationSummary", name: "RevenueAttributionAllocationSummary")
    RevenueAttributionAllocationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionAllocationSummaryList", name: "RevenueAttributionAllocationSummaryList")
    RevenueAttributionAllocationTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionAllocationTaskId", name: "RevenueAttributionAllocationTaskId", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^raatask-[a-z0-9]{13}$"})
    RevenueAttributionAllocationTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionAllocationTaskStatus", name: "RevenueAttributionAllocationTaskStatus")
    RevenueAttributionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionId", name: "RevenueAttributionId", traits: {"smithy.api#length" => {"min" => 16, "max" => 1011}, "smithy.api#pattern" => "^(arn:[a-z-]+:partnercentral:[a-z0-9-]+:[0-9]{12}:catalog/[a-zA-Z]+/revenue-attribution/ra-[a-z0-9]{13}|ra-[a-z0-9]{13})$"})
    RevenueAttributionIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionIdentifier", name: "RevenueAttributionIdentifier", traits: {"smithy.api#length" => {"min" => 16, "max" => 1011}, "smithy.api#pattern" => "^(arn:[a-z-]+:partnercentral:[a-z0-9-]+:[0-9]{12}:catalog/[a-zA-Z]+/revenue-attribution/ra-[a-z0-9]{13}|ra-[a-z0-9]{13})$"})
    RevenueAttributionIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionIdentifierList", name: "RevenueAttributionIdentifierList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RevenueAttributionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttributionSummaries", name: "RevenueAttributionSummaries")
    RevenueShareAllocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueShareAllocation", name: "RevenueShareAllocation")
    RevenueShareAllocationChangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueShareAllocationChangeList", name: "RevenueShareAllocationChangeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    RevenueSharePercent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevenueSharePercent", name: "RevenueSharePercent", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#pattern" => "^\\d{1,3}(\\.\\d{1,2})?$"})
    RevisionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#RevisionToken", name: "RevisionToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 19}, "smithy.api#pattern" => "^[1-9][0-9]*$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceQuotaExceededExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ServiceQuotaExceededExceptionReason", name: "ServiceQuotaExceededExceptionReason")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#SortOrder", name: "SortOrder")
    StartRevenueAttributionAllocationsTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#StartRevenueAttributionAllocationsTaskInput", name: "StartRevenueAttributionAllocationsTaskInput")
    StartRevenueAttributionAllocationsTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#StartRevenueAttributionAllocationsTaskOutput", name: "StartRevenueAttributionAllocationsTaskOutput")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#TagResourceInput", name: "TagResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttribution", "ids" => {"Catalog" => "resourceArn", "RevenueAttributionId" => "resourceArn"}}, {"resource" => "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceRevenueShare", "ids" => {"Catalog" => "resourceArn", "MarketplaceProductId" => "resourceArn"}}]})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F]*$"})
    TenancyModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#TenancyModel", name: "TenancyModel")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#UntagResourceInput", name: "UntagResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.partnercentralrevenuemeasurement#RevenueAttribution", "ids" => {"Catalog" => "resourceArn", "RevenueAttributionId" => "resourceArn"}}, {"resource" => "com.amazonaws.partnercentralrevenuemeasurement#MarketplaceRevenueShare", "ids" => {"Catalog" => "resourceArn", "MarketplaceProductId" => "resourceArn"}}]})
    UpdateMarketplaceRevenueShareAllocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#UpdateMarketplaceRevenueShareAllocationInput", name: "UpdateMarketplaceRevenueShareAllocationInput")
    UpdateMarketplaceRevenueShareAllocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#UpdateMarketplaceRevenueShareAllocationOutput", name: "UpdateMarketplaceRevenueShareAllocationOutput")
    UpdateRevenueAttributionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#UpdateRevenueAttributionInput", name: "UpdateRevenueAttributionInput")
    UpdateRevenueAttributionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#UpdateRevenueAttributionOutput", name: "UpdateRevenueAttributionOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralrevenuemeasurement#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedExceptionReason.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    AllocationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AllocationStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AttributionSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_MODIFIED_DATE", traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    AttributionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    AttributionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionId, name: "Id"))
    AttributionSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog"))
    AttributionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}}))
    AttributionSummary.add_member(:tenancy_model, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyModel, name: "TenancyModel", traits: {"smithy.api#required" => {}}))
    AttributionSummary.add_member(:marketplace_product, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductSummary, name: "MarketplaceProduct"))
    AttributionSummary.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedDate"))
    AttributionSummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedDate"))
    AttributionSummary.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "LatestRevision"))
    AttributionSummary.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom"))
    AttributionSummary.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil"))
    AttributionSummary.add_member(:total_active_revenue_attribution_allocation_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationCount, name: "TotalActiveRevenueAttributionAllocationCount"))
    AttributionSummary.add_member(:total_revenue_attribution_allocation_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationCount, name: "TotalRevenueAttributionAllocationCount"))
    AttributionSummary.type = Types::AttributionSummary
    CatalogName.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS", traits: {"smithy.api#enumValue" => "AWS"}))
    CatalogName.add_member(:sandbox, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SANDBOX", traits: {"smithy.api#enumValue" => "Sandbox"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:conflict_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFLICT_CLIENT_TOKEN", traits: {"smithy.api#enumValue" => "CONFLICT_CLIENT_TOKEN"}))
    ConflictExceptionReason.add_member(:concurrent_modification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONCURRENT_MODIFICATION", traits: {"smithy.api#enumValue" => "CONCURRENT_MODIFICATION"}))
    ConflictExceptionReason.add_member(:resource_already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ALREADY_EXISTS", traits: {"smithy.api#enumValue" => "RESOURCE_ALREADY_EXISTS"}))
    ConflictExceptionReason.add_member(:revision_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVISION_MISMATCH", traits: {"smithy.api#enumValue" => "REVISION_MISMATCH"}))
    CreateMarketplaceRevenueShareAllocationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareAllocationInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MarketplaceProductId"}))
    CreateMarketplaceRevenueShareAllocationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMarketplaceRevenueShareAllocationInput.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareAllocationInput.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil"))
    CreateMarketplaceRevenueShareAllocationInput.add_member(:revenue_share_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueSharePercent, name: "RevenueSharePercent", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareAllocationInput.type = Types::CreateMarketplaceRevenueShareAllocationInput
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:marketplace_revenue_share_allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareAllocationId, name: "MarketplaceRevenueShareAllocationId", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductName"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:revenue_share_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueSharePercent, name: "RevenueSharePercent", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedDate"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedDate"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:latest_marketplace_revenue_share_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "LatestMarketplaceRevenueShareRevision"))
    CreateMarketplaceRevenueShareAllocationOutput.type = Types::CreateMarketplaceRevenueShareAllocationOutput
    CreateMarketplaceRevenueShareInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMarketplaceRevenueShareInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareTagList, name: "Tags"))
    CreateMarketplaceRevenueShareInput.type = Types::CreateMarketplaceRevenueShareInput
    CreateMarketplaceRevenueShareOutput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceRevenueShareOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog"))
    CreateMarketplaceRevenueShareOutput.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductCode"))
    CreateMarketplaceRevenueShareOutput.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductName"))
    CreateMarketplaceRevenueShareOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedDate"))
    CreateMarketplaceRevenueShareOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedDate"))
    CreateMarketplaceRevenueShareOutput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Revision", traits: {"smithy.api#range" => {"min" => 1}}))
    CreateMarketplaceRevenueShareOutput.type = Types::CreateMarketplaceRevenueShareOutput
    CreateRevenueAttributionInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreateRevenueAttributionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRevenueAttributionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\x20-\\x7E]+$", "smithy.api#required" => {}}))
    CreateRevenueAttributionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[\\x20-\\x7E]*$"}))
    CreateRevenueAttributionInput.add_member(:tenancy_model, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyModel, name: "TenancyModel", traits: {"smithy.api#required" => {}}))
    CreateRevenueAttributionInput.add_member(:product_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-:/.]+$"}))
    CreateRevenueAttributionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRevenueAttributionInput.type = Types::CreateRevenueAttributionInput
    CreateRevenueAttributionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionId, name: "Id", traits: {"smithy.api#required" => {}}))
    CreateRevenueAttributionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateRevenueAttributionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    CreateRevenueAttributionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    CreateRevenueAttributionOutput.add_member(:tenancy_model, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyModel, name: "TenancyModel", traits: {"smithy.api#required" => {}}))
    CreateRevenueAttributionOutput.add_member(:marketplace_product, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductSummary, name: "MarketplaceProduct"))
    CreateRevenueAttributionOutput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "Revision"))
    CreateRevenueAttributionOutput.type = Types::CreateRevenueAttributionOutput
    CustomerAwsAccountIdFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAwsAccountId, name: "member"))
    EntityIdentifierFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "member"))
    EntityType.add_member(:offer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFFER", traits: {"smithy.api#enumValue" => "OFFER"}))
    EntityType.add_member(:opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPPORTUNITY", traits: {"smithy.api#enumValue" => "OPPORTUNITY"}))
    EntityTypeFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "member"))
    FieldValidationCode.add_member(:required_field_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED_FIELD_MISSING", traits: {"smithy.api#enumValue" => "REQUIRED_FIELD_MISSING"}))
    FieldValidationCode.add_member(:duplicate_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_VALUE", traits: {"smithy.api#enumValue" => "DUPLICATE_VALUE"}))
    FieldValidationCode.add_member(:invalid_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_VALUE", traits: {"smithy.api#enumValue" => "INVALID_VALUE"}))
    FieldValidationCode.add_member(:invalid_string_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_STRING_FORMAT", traits: {"smithy.api#enumValue" => "INVALID_STRING_FORMAT"}))
    FieldValidationCode.add_member(:too_many_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOO_MANY_VALUES", traits: {"smithy.api#enumValue" => "TOO_MANY_VALUES"}))
    FieldValidationCode.add_member(:action_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "ACTION_NOT_PERMITTED"}))
    FieldValidationCode.add_member(:invalid_enum_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ENUM_VALUE", traits: {"smithy.api#enumValue" => "INVALID_ENUM_VALUE"}))
    FieldValidationCode.add_member(:invalid_number_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_NUMBER_FORMAT", traits: {"smithy.api#enumValue" => "INVALID_NUMBER_FORMAT"}))
    FieldValidationCode.add_member(:invalid_string_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_STRING_LENGTH", traits: {"smithy.api#enumValue" => "INVALID_STRING_LENGTH"}))
    GetMarketplaceRevenueShareAllocationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareAllocationInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MarketplaceProductId"}))
    GetMarketplaceRevenueShareAllocationInput.add_member(:marketplace_revenue_share_allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareAllocationId, name: "MarketplaceRevenueShareAllocationId", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareAllocationInput.add_member(:marketplace_revenue_share_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "MarketplaceRevenueShareRevision"))
    GetMarketplaceRevenueShareAllocationInput.type = Types::GetMarketplaceRevenueShareAllocationInput
    GetMarketplaceRevenueShareAllocationOutput.add_member(:marketplace_revenue_share_allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareAllocationId, name: "MarketplaceRevenueShareAllocationId", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductName"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:revenue_share_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueSharePercent, name: "RevenueSharePercent", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedDate"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedDate"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:latest_marketplace_revenue_share_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "LatestMarketplaceRevenueShareRevision"))
    GetMarketplaceRevenueShareAllocationOutput.type = Types::GetMarketplaceRevenueShareAllocationOutput
    GetMarketplaceRevenueShareInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MarketplaceProductId"}))
    GetMarketplaceRevenueShareInput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Revision", traits: {"smithy.api#range" => {"min" => 1}}))
    GetMarketplaceRevenueShareInput.type = Types::GetMarketplaceRevenueShareInput
    GetMarketplaceRevenueShareOutput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetMarketplaceRevenueShareOutput.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductCode"))
    GetMarketplaceRevenueShareOutput.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductName"))
    GetMarketplaceRevenueShareOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedDate"))
    GetMarketplaceRevenueShareOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedDate"))
    GetMarketplaceRevenueShareOutput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Revision", traits: {"smithy.api#range" => {"min" => 1}}))
    GetMarketplaceRevenueShareOutput.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "LatestRevision", traits: {"smithy.api#range" => {"min" => 1}}))
    GetMarketplaceRevenueShareOutput.add_member(:total_active_marketplace_revenue_share_allocation_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "TotalActiveMarketplaceRevenueShareAllocationCount"))
    GetMarketplaceRevenueShareOutput.add_member(:total_marketplace_revenue_share_allocation_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "TotalMarketplaceRevenueShareAllocationCount"))
    GetMarketplaceRevenueShareOutput.type = Types::GetMarketplaceRevenueShareOutput
    GetRevenueAttributionAllocationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationInput.add_member(:revenue_attribution_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionIdentifier, name: "RevenueAttributionIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "RevenueAttributionId"}))
    GetRevenueAttributionAllocationInput.add_member(:revenue_attribution_allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationId, name: "RevenueAttributionAllocationId", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationInput.add_member(:revenue_attribution_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "RevenueAttributionRevision"))
    GetRevenueAttributionAllocationInput.type = Types::GetRevenueAttributionAllocationInput
    GetRevenueAttributionAllocationOutput.add_member(:revenue_attribution_allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationId, name: "RevenueAttributionAllocationId", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:revenue_attribution_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionIdentifier, name: "RevenueAttributionIdentifier", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:entity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "EntityIdentifier", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntityName"))
    GetRevenueAttributionAllocationOutput.add_member(:customer_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAwsAccountId, name: "CustomerAwsAccountId", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:revenue_share_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueSharePercent, name: "RevenueSharePercent", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedDate", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedDate", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:revenue_attribution_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "RevenueAttributionRevision", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.add_member(:revenue_attribution_latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "RevenueAttributionLatestRevision", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationOutput.type = Types::GetRevenueAttributionAllocationOutput
    GetRevenueAttributionAllocationsTaskInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationsTaskInput.add_member(:revenue_attribution_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionIdentifier, name: "RevenueAttributionIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "RevenueAttributionId"}))
    GetRevenueAttributionAllocationsTaskInput.type = Types::GetRevenueAttributionAllocationsTaskInput
    GetRevenueAttributionAllocationsTaskOutput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationTaskStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:revenue_attribution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RevenueAttributionArn", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndedAt"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:total_revenue_attribution_allocation_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "TotalRevenueAttributionAllocationRecords", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:revenue_attribution_latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "RevenueAttributionLatestRevision"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:error_detail_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationErrorDetailList, name: "ErrorDetailList"))
    GetRevenueAttributionAllocationsTaskOutput.type = Types::GetRevenueAttributionAllocationsTaskOutput
    GetRevenueAttributionInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "RevenueAttributionId"}))
    GetRevenueAttributionInput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "Revision"))
    GetRevenueAttributionInput.type = Types::GetRevenueAttributionInput
    GetRevenueAttributionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}}))
    GetRevenueAttributionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#length" => {"max" => 1024}}))
    GetRevenueAttributionOutput.add_member(:tenancy_model, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyModel, name: "TenancyModel", traits: {"smithy.api#required" => {}}))
    GetRevenueAttributionOutput.add_member(:marketplace_product, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductSummary, name: "MarketplaceProduct"))
    GetRevenueAttributionOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedDate"))
    GetRevenueAttributionOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedDate"))
    GetRevenueAttributionOutput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "Revision"))
    GetRevenueAttributionOutput.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "LatestRevision"))
    GetRevenueAttributionOutput.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom"))
    GetRevenueAttributionOutput.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil"))
    GetRevenueAttributionOutput.add_member(:total_active_revenue_attribution_allocation_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationCount, name: "TotalActiveRevenueAttributionAllocationCount"))
    GetRevenueAttributionOutput.add_member(:total_revenue_attribution_allocation_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationCount, name: "TotalRevenueAttributionAllocationCount"))
    GetRevenueAttributionOutput.type = Types::GetRevenueAttributionOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListMarketplaceRevenueShareAllocationsInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MarketplaceProductId"}))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStatus, name: "Status"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:after_effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "AfterEffectiveFrom"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:before_effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "BeforeEffectiveFrom"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareAllocationSortField, name: "SortBy"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:marketplace_revenue_share_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "MarketplaceRevenueShareRevision"))
    ListMarketplaceRevenueShareAllocationsInput.type = Types::ListMarketplaceRevenueShareAllocationsInput
    ListMarketplaceRevenueShareAllocationsOutput.add_member(:marketplace_revenue_share_allocation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareAllocationSummaryList, name: "MarketplaceRevenueShareAllocationSummaries", traits: {"smithy.api#required" => {}}))
    ListMarketplaceRevenueShareAllocationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMarketplaceRevenueShareAllocationsOutput.type = Types::ListMarketplaceRevenueShareAllocationsOutput
    ListMarketplaceRevenueSharesInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListMarketplaceRevenueSharesInput.add_member(:product_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductIdList, name: "ProductIds"))
    ListMarketplaceRevenueSharesInput.add_member(:product_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeList, name: "ProductCodes"))
    ListMarketplaceRevenueSharesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListMarketplaceRevenueSharesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMarketplaceRevenueSharesInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareSortBy, name: "SortBy"))
    ListMarketplaceRevenueSharesInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    ListMarketplaceRevenueSharesInput.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAfter"))
    ListMarketplaceRevenueSharesInput.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedBefore"))
    ListMarketplaceRevenueSharesInput.type = Types::ListMarketplaceRevenueSharesInput
    ListMarketplaceRevenueSharesOutput.add_member(:marketplace_revenue_share_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareSummaryList, name: "MarketplaceRevenueShareSummaries", traits: {"smithy.api#required" => {}}))
    ListMarketplaceRevenueSharesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMarketplaceRevenueSharesOutput.type = Types::ListMarketplaceRevenueSharesOutput
    ListRevenueAttributionAllocationsInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListRevenueAttributionAllocationsInput.add_member(:revenue_attribution_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionIdentifier, name: "RevenueAttributionIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "RevenueAttributionId"}))
    ListRevenueAttributionAllocationsInput.add_member(:entity_type_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypeFilterList, name: "EntityTypeFilters"))
    ListRevenueAttributionAllocationsInput.add_member(:entity_identifier_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifierFilterList, name: "EntityIdentifierFilters"))
    ListRevenueAttributionAllocationsInput.add_member(:customer_aws_account_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAwsAccountIdFilterList, name: "CustomerAwsAccountIdFilters"))
    ListRevenueAttributionAllocationsInput.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStatus, name: "StatusFilter"))
    ListRevenueAttributionAllocationsInput.add_member(:after_effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "AfterEffectiveFrom"))
    ListRevenueAttributionAllocationsInput.add_member(:before_effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "BeforeEffectiveFrom"))
    ListRevenueAttributionAllocationsInput.add_member(:after_effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "AfterEffectiveUntil"))
    ListRevenueAttributionAllocationsInput.add_member(:before_effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "BeforeEffectiveUntil"))
    ListRevenueAttributionAllocationsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationSortField, name: "SortBy"))
    ListRevenueAttributionAllocationsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    ListRevenueAttributionAllocationsInput.add_member(:revenue_attribution_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "RevenueAttributionRevision"))
    ListRevenueAttributionAllocationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}}))
    ListRevenueAttributionAllocationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRevenueAttributionAllocationsInput.type = Types::ListRevenueAttributionAllocationsInput
    ListRevenueAttributionAllocationsOutput.add_member(:revenue_attribution_allocation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationSummaryList, name: "RevenueAttributionAllocationSummaries", traits: {"smithy.api#required" => {}}))
    ListRevenueAttributionAllocationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRevenueAttributionAllocationsOutput.type = Types::ListRevenueAttributionAllocationsOutput
    ListRevenueAttributionsInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListRevenueAttributionsInput.add_member(:identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionIdentifierList, name: "Identifiers"))
    ListRevenueAttributionsInput.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAfter"))
    ListRevenueAttributionsInput.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedBefore"))
    ListRevenueAttributionsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributionSortBy, name: "SortBy"))
    ListRevenueAttributionsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    ListRevenueAttributionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRevenueAttributionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRevenueAttributionsInput.type = Types::ListRevenueAttributionsInput
    ListRevenueAttributionsOutput.add_member(:revenue_attribution_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionSummaries, name: "RevenueAttributionSummaries"))
    ListRevenueAttributionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRevenueAttributionsOutput.type = Types::ListRevenueAttributionsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MarketplaceProductIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "member"))
    MarketplaceProductSummary.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-:/.]+$"}))
    MarketplaceProductSummary.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductCode"))
    MarketplaceProductSummary.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductName"))
    MarketplaceProductSummary.type = Types::MarketplaceProductSummary
    MarketplaceRevenueShareAllocationSortField.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_FROM", traits: {"smithy.api#enumValue" => "EffectiveFrom"}))
    MarketplaceRevenueShareAllocationSummary.add_member(:marketplace_revenue_share_allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareAllocationId, name: "MarketplaceRevenueShareAllocationId", traits: {"smithy.api#required" => {}}))
    MarketplaceRevenueShareAllocationSummary.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}}))
    MarketplaceRevenueShareAllocationSummary.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductName"))
    MarketplaceRevenueShareAllocationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    MarketplaceRevenueShareAllocationSummary.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom", traits: {"smithy.api#required" => {}}))
    MarketplaceRevenueShareAllocationSummary.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil"))
    MarketplaceRevenueShareAllocationSummary.add_member(:revenue_share_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueSharePercent, name: "RevenueSharePercent", traits: {"smithy.api#required" => {}}))
    MarketplaceRevenueShareAllocationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    MarketplaceRevenueShareAllocationSummary.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedDate"))
    MarketplaceRevenueShareAllocationSummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedDate"))
    MarketplaceRevenueShareAllocationSummary.type = Types::MarketplaceRevenueShareAllocationSummary
    MarketplaceRevenueShareAllocationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareAllocationSummary, name: "member"))
    MarketplaceRevenueShareSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_MODIFIED_DATE", traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    MarketplaceRevenueShareSummary.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}}))
    MarketplaceRevenueShareSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    MarketplaceRevenueShareSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog"))
    MarketplaceRevenueShareSummary.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductCode"))
    MarketplaceRevenueShareSummary.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductName"))
    MarketplaceRevenueShareSummary.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedDate"))
    MarketplaceRevenueShareSummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedDate"))
    MarketplaceRevenueShareSummary.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "LatestRevision"))
    MarketplaceRevenueShareSummary.add_member(:total_active_marketplace_revenue_share_allocation_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "TotalActiveMarketplaceRevenueShareAllocationCount"))
    MarketplaceRevenueShareSummary.add_member(:total_marketplace_revenue_share_allocation_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "TotalMarketplaceRevenueShareAllocationCount"))
    MarketplaceRevenueShareSummary.type = Types::MarketplaceRevenueShareSummary
    MarketplaceRevenueShareSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareSummary, name: "member"))
    MarketplaceRevenueShareTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    ProductCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotFoundExceptionReason.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    RevenueAttributionAllocationAction.add_member(:create, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE", traits: {"smithy.api#enumValue" => "CREATE"}))
    RevenueAttributionAllocationAction.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE", traits: {"smithy.api#enumValue" => "UPDATE"}))
    RevenueAttributionAllocationErrorCode.add_member(:allocation_cap_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOCATION_CAP_EXCEEDED", traits: {"smithy.api#enumValue" => "ALLOCATION_CAP_EXCEEDED"}))
    RevenueAttributionAllocationErrorCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    RevenueAttributionAllocationErrorCode.add_member(:immutable_allocation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMMUTABLE_ALLOCATION", traits: {"smithy.api#enumValue" => "IMMUTABLE_ALLOCATION"}))
    RevenueAttributionAllocationErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    RevenueAttributionAllocationErrorCode.add_member(:invalid_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_VALUE", traits: {"smithy.api#enumValue" => "INVALID_VALUE"}))
    RevenueAttributionAllocationErrorCode.add_member(:concurrent_modification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONCURRENT_MODIFICATION", traits: {"smithy.api#enumValue" => "CONCURRENT_MODIFICATION"}))
    RevenueAttributionAllocationErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    RevenueAttributionAllocationErrorDetail.add_member(:revenue_attribution_allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationId, name: "RevenueAttributionAllocationId"))
    RevenueAttributionAllocationErrorDetail.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationErrorDetail.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "EntityId", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationErrorDetail.add_member(:customer_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAwsAccountId, name: "CustomerAwsAccountId", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationErrorDetail.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationErrorDetail.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationErrorDetail.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationAction, name: "Action", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ErrorMessage", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationErrorDetail.type = Types::RevenueAttributionAllocationErrorDetail
    RevenueAttributionAllocationErrorDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationErrorDetail, name: "member"))
    RevenueAttributionAllocationSortField.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_FROM", traits: {"smithy.api#enumValue" => "EffectiveFrom"}))
    RevenueAttributionAllocationSummary.add_member(:revenue_attribution_allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationId, name: "RevenueAttributionAllocationId", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationSummary.add_member(:revenue_attribution_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionIdentifier, name: "RevenueAttributionIdentifier", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationSummary.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationSummary.add_member(:entity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "EntityIdentifier", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationSummary.add_member(:entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntityName"))
    RevenueAttributionAllocationSummary.add_member(:customer_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAwsAccountId, name: "CustomerAwsAccountId", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationSummary.add_member(:revenue_share_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueSharePercent, name: "RevenueSharePercent", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationSummary.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationSummary.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    RevenueAttributionAllocationSummary.type = Types::RevenueAttributionAllocationSummary
    RevenueAttributionAllocationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationSummary, name: "member"))
    RevenueAttributionAllocationTaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RevenueAttributionAllocationTaskStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    RevenueAttributionAllocationTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RevenueAttributionIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionIdentifier, name: "member"))
    RevenueAttributionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributionSummary, name: "member"))
    RevenueShareAllocation.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationAction, name: "Action", traits: {"smithy.api#required" => {}}))
    RevenueShareAllocation.add_member(:revenue_attribution_allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationId, name: "RevenueAttributionAllocationId"))
    RevenueShareAllocation.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType", traits: {"smithy.api#required" => {}}))
    RevenueShareAllocation.add_member(:entity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "EntityIdentifier", traits: {"smithy.api#required" => {}}))
    RevenueShareAllocation.add_member(:customer_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAwsAccountId, name: "CustomerAwsAccountId", traits: {"smithy.api#required" => {}}))
    RevenueShareAllocation.add_member(:revenue_share_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueSharePercent, name: "RevenueSharePercent", traits: {"smithy.api#required" => {}}))
    RevenueShareAllocation.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom", traits: {"smithy.api#required" => {}}))
    RevenueShareAllocation.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil", traits: {"smithy.api#required" => {}}))
    RevenueShareAllocation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStatus, name: "Status"))
    RevenueShareAllocation.type = Types::RevenueShareAllocation
    RevenueShareAllocationChangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueShareAllocation, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceQuotaExceededExceptionReason.add_member(:attribution_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTRIBUTION_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "ATTRIBUTION_LIMIT_EXCEEDED"}))
    ServiceQuotaExceededExceptionReason.add_member(:tag_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "TAG_LIMIT_EXCEEDED"}))
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    StartRevenueAttributionAllocationsTaskInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartRevenueAttributionAllocationsTaskInput.add_member(:revenue_attribution_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionIdentifier, name: "RevenueAttributionIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "RevenueAttributionId"}))
    StartRevenueAttributionAllocationsTaskInput.add_member(:revenue_attribution_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "RevenueAttributionRevision", traits: {"smithy.api#required" => {}}))
    StartRevenueAttributionAllocationsTaskInput.add_member(:revenue_share_allocations, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueShareAllocationChangeList, name: "RevenueShareAllocations", traits: {"smithy.api#required" => {}}))
    StartRevenueAttributionAllocationsTaskInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartRevenueAttributionAllocationsTaskInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[\\x20-\\x7E]*$"}))
    StartRevenueAttributionAllocationsTaskInput.type = Types::StartRevenueAttributionAllocationsTaskInput
    StartRevenueAttributionAllocationsTaskOutput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    StartRevenueAttributionAllocationsTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionAllocationTaskStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    StartRevenueAttributionAllocationsTaskOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartRevenueAttributionAllocationsTaskOutput.add_member(:revenue_attribution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RevenueAttributionArn", traits: {"smithy.api#required" => {}}))
    StartRevenueAttributionAllocationsTaskOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    StartRevenueAttributionAllocationsTaskOutput.add_member(:total_revenue_attribution_allocation_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "TotalRevenueAttributionAllocationRecords", traits: {"smithy.api#required" => {}}))
    StartRevenueAttributionAllocationsTaskOutput.type = Types::StartRevenueAttributionAllocationsTaskOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TenancyModel.add_member(:multi_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_TENANT", traits: {"smithy.api#enumValue" => "MULTI_TENANT"}))
    TenancyModel.add_member(:single_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_TENANT", traits: {"smithy.api#enumValue" => "SINGLE_TENANT"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServiceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "QuotaCode"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MarketplaceProductId"}))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:marketplace_revenue_share_allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareAllocationId, name: "MarketplaceRevenueShareAllocationId", traits: {"smithy.api#required" => {}}))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:marketplace_revenue_share_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "MarketplaceRevenueShareRevision", traits: {"smithy.api#required" => {}}))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom"))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil"))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:revenue_share_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueSharePercent, name: "RevenueSharePercent"))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStatus, name: "Status"))
    UpdateMarketplaceRevenueShareAllocationInput.type = Types::UpdateMarketplaceRevenueShareAllocationInput
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:marketplace_revenue_share_allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceRevenueShareAllocationId, name: "MarketplaceRevenueShareAllocationId", traits: {"smithy.api#required" => {}}))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceProductId, name: "ProductId", traits: {"smithy.api#required" => {}}))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProductName"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveFrom", traits: {"smithy.api#required" => {}}))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:effective_until, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationEffectiveDateString, name: "EffectiveUntil"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:revenue_share_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueSharePercent, name: "RevenueSharePercent", traits: {"smithy.api#required" => {}}))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedDate"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedDate"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:latest_marketplace_revenue_share_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "LatestMarketplaceRevenueShareRevision"))
    UpdateMarketplaceRevenueShareAllocationOutput.type = Types::UpdateMarketplaceRevenueShareAllocationOutput
    UpdateRevenueAttributionInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    UpdateRevenueAttributionInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "RevenueAttributionId"}))
    UpdateRevenueAttributionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateRevenueAttributionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[\\x20-\\x7E]*$"}))
    UpdateRevenueAttributionInput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "Revision", traits: {"smithy.api#required" => {}}))
    UpdateRevenueAttributionInput.type = Types::UpdateRevenueAttributionInput
    UpdateRevenueAttributionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueAttributionId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateRevenueAttributionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateRevenueAttributionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    UpdateRevenueAttributionOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedDate", traits: {"smithy.api#required" => {}}))
    UpdateRevenueAttributionOutput.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionToken, name: "LatestRevision"))
    UpdateRevenueAttributionOutput.type = Types::UpdateRevenueAttributionOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "FieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValidationCode, name: "Code", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:request_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "REQUEST_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:business_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "BUSINESS_VALIDATION_FAILED"}))

    PartnerCentralRevenueMeasurement = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.partnercentralrevenuemeasurement#PartnerCentralRevenueMeasurement"
      service.name = "PartnerCentralRevenueMeasurement"
      service.version = "2022-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "PartnerCentral Revenue Measurement", "endpointPrefix" => "partnercentral-prm", "arnNamespace" => "partnercentral", "cloudTrailEventSource" => "partnercentral-prm.amazonaws.com"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "partnercentral"}, "aws.auth#sigv4a" => {"name" => "partnercentral"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "aws_recommended"}, "aws.iam#defineConditionKeys" => {"Catalog" => {"type" => "String", "documentation" => "Filters access by a specific Catalog. Accepted values: [AWS, Sandbox]"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#serviceResolvedConditionKeys" => ["partnercentral:Catalog"], "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "smithy.api#auth" => ["aws.auth#sigv4a", "aws.auth#sigv4"], "smithy.api#title" => "Partner Central Revenue Measurement API", "smithy.protocols#rpcv2Cbor" => {}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-prm.us-gov.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-prm-fips.us-gov.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-prm-fips.global.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-prm.global.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 8, "nodes" => "/////wAAAAH/////AAAAAAAAAAgAAAADAAAAAQAAAAQF9eEHAAAAAgAAAAUF9eEHAAAAAwAAAAcAAAAGAAAABAX14QUF9eEGAAAABAX14QQF9eEDAAAABAX14QEF9eEC"}}
      service.add_operation(:create_marketplace_revenue_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#CreateMarketplaceRevenueShare"
        operation.name = "CreateMarketplaceRevenueShare"
        operation.input = CreateMarketplaceRevenueShareInput
        operation.output = CreateMarketplaceRevenueShareOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/CreateMarketplaceRevenueShare"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_marketplace_revenue_share_allocation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#CreateMarketplaceRevenueShareAllocation"
        operation.name = "CreateMarketplaceRevenueShareAllocation"
        operation.input = CreateMarketplaceRevenueShareAllocationInput
        operation.output = CreateMarketplaceRevenueShareAllocationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/CreateMarketplaceRevenueShareAllocation"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_revenue_attribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#CreateRevenueAttribution"
        operation.name = "CreateRevenueAttribution"
        operation.input = CreateRevenueAttributionInput
        operation.output = CreateRevenueAttributionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/CreateRevenueAttribution"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "CreateRevenueAttributionFailure", "params" => {"Catalog" => "AWS", "ClientToken" => "test-token", "Name" => "TestAttribution", "TenancyModel" => "MULTI_TENANT"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_marketplace_revenue_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#GetMarketplaceRevenueShare"
        operation.name = "GetMarketplaceRevenueShare"
        operation.input = GetMarketplaceRevenueShareInput
        operation.output = GetMarketplaceRevenueShareOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetMarketplaceRevenueShare"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_marketplace_revenue_share_allocation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#GetMarketplaceRevenueShareAllocation"
        operation.name = "GetMarketplaceRevenueShareAllocation"
        operation.input = GetMarketplaceRevenueShareAllocationInput
        operation.output = GetMarketplaceRevenueShareAllocationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetMarketplaceRevenueShareAllocation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_revenue_attribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#GetRevenueAttribution"
        operation.name = "GetRevenueAttribution"
        operation.input = GetRevenueAttributionInput
        operation.output = GetRevenueAttributionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetRevenueAttribution"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetRevenueAttributionFailure", "params" => {"Catalog" => "AWS", "Identifier" => "ra-0a1b2c3d4e5f6"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_revenue_attribution_allocation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#GetRevenueAttributionAllocation"
        operation.name = "GetRevenueAttributionAllocation"
        operation.input = GetRevenueAttributionAllocationInput
        operation.output = GetRevenueAttributionAllocationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetRevenueAttributionAllocation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_revenue_attribution_allocations_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#GetRevenueAttributionAllocationsTask"
        operation.name = "GetRevenueAttributionAllocationsTask"
        operation.input = GetRevenueAttributionAllocationsTaskInput
        operation.output = GetRevenueAttributionAllocationsTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetRevenueAttributionAllocationsTask"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_marketplace_revenue_share_allocations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#ListMarketplaceRevenueShareAllocations"
        operation.name = "ListMarketplaceRevenueShareAllocations"
        operation.input = ListMarketplaceRevenueShareAllocationsInput
        operation.output = ListMarketplaceRevenueShareAllocationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListMarketplaceRevenueShareAllocations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMarketplaceRevenueShareAllocations.new
      end)
      service.add_operation(:list_marketplace_revenue_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#ListMarketplaceRevenueShares"
        operation.name = "ListMarketplaceRevenueShares"
        operation.input = ListMarketplaceRevenueSharesInput
        operation.output = ListMarketplaceRevenueSharesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListMarketplaceRevenueShares"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMarketplaceRevenueShares.new
      end)
      service.add_operation(:list_revenue_attribution_allocations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#ListRevenueAttributionAllocations"
        operation.name = "ListRevenueAttributionAllocations"
        operation.input = ListRevenueAttributionAllocationsInput
        operation.output = ListRevenueAttributionAllocationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListRevenueAttributionAllocations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRevenueAttributionAllocations.new
      end)
      service.add_operation(:list_revenue_attributions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#ListRevenueAttributions"
        operation.name = "ListRevenueAttributions"
        operation.input = ListRevenueAttributionsInput
        operation.output = ListRevenueAttributionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListRevenueAttributions"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListRevenueAttributionsFailure", "params" => {"Catalog" => "AWS", "MaxResults" => 1}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListRevenueAttributions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListTagsForResource"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTagsForResourceFailureRevenueAttribution", "params" => {"resourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListTagsForResourceFailureMarketplaceRevenueShare", "params" => {"resourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share/prod-0a1b2c3d4e5f6"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:start_revenue_attribution_allocations_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#StartRevenueAttributionAllocationsTask"
        operation.name = "StartRevenueAttributionAllocationsTask"
        operation.input = StartRevenueAttributionAllocationsTaskInput
        operation.output = StartRevenueAttributionAllocationsTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/StartRevenueAttributionAllocationsTask"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/TagResource"}, "smithy.test#smokeTests" => [{"id" => "TagResourceFailureRevenueAttribution", "params" => {"resourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6", "tags" => [{"Key" => "TestKey", "Value" => "TestValue"}]}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "TagResourceFailureMarketplaceRevenueShare", "params" => {"resourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share/prod-0a1b2c3d4e5f6", "tags" => [{"Key" => "TestKey", "Value" => "TestValue"}]}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/UntagResource"}, "smithy.test#smokeTests" => [{"id" => "UntagResourceFailureRevenueAttribution", "params" => {"resourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6", "tagKeys" => ["TestKey"]}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "UntagResourceFailureMarketplaceRevenueShare", "params" => {"resourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share/prod-0a1b2c3d4e5f6", "tagKeys" => ["TestKey"]}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:update_marketplace_revenue_share_allocation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#UpdateMarketplaceRevenueShareAllocation"
        operation.name = "UpdateMarketplaceRevenueShareAllocation"
        operation.input = UpdateMarketplaceRevenueShareAllocationInput
        operation.output = UpdateMarketplaceRevenueShareAllocationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/UpdateMarketplaceRevenueShareAllocation"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_revenue_attribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralrevenuemeasurement#UpdateRevenueAttribution"
        operation.name = "UpdateRevenueAttribution"
        operation.input = UpdateRevenueAttributionInput
        operation.output = UpdateRevenueAttributionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/UpdateRevenueAttribution"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "UpdateRevenueAttributionFailure", "params" => {"Catalog" => "AWS", "ClientToken" => "test-token", "Identifier" => "ra-0a1b2c3d4e5f6", "Revision" => "1", "Description" => "test"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
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
