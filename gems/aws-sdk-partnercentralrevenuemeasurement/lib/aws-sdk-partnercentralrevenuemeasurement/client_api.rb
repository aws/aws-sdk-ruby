# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PartnerCentralRevenueMeasurement
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionReason = Shapes::StringShape.new(name: 'AccessDeniedExceptionReason')
    AllocationCount = Shapes::IntegerShape.new(name: 'AllocationCount')
    AllocationEffectiveDateString = Shapes::StringShape.new(name: 'AllocationEffectiveDateString')
    AllocationStatus = Shapes::StringShape.new(name: 'AllocationStatus')
    AttributionSortBy = Shapes::StringShape.new(name: 'AttributionSortBy')
    AttributionSummary = Shapes::StructureShape.new(name: 'AttributionSummary')
    AttributionSummaryNameString = Shapes::StringShape.new(name: 'AttributionSummaryNameString')
    CatalogName = Shapes::StringShape.new(name: 'CatalogName')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    CreateMarketplaceRevenueShareAllocationInput = Shapes::StructureShape.new(name: 'CreateMarketplaceRevenueShareAllocationInput')
    CreateMarketplaceRevenueShareAllocationOutput = Shapes::StructureShape.new(name: 'CreateMarketplaceRevenueShareAllocationOutput')
    CreateMarketplaceRevenueShareInput = Shapes::StructureShape.new(name: 'CreateMarketplaceRevenueShareInput')
    CreateMarketplaceRevenueShareOutput = Shapes::StructureShape.new(name: 'CreateMarketplaceRevenueShareOutput')
    CreateMarketplaceRevenueShareOutputRevisionInteger = Shapes::IntegerShape.new(name: 'CreateMarketplaceRevenueShareOutputRevisionInteger')
    CreateRevenueAttributionInput = Shapes::StructureShape.new(name: 'CreateRevenueAttributionInput')
    CreateRevenueAttributionInputDescriptionString = Shapes::StringShape.new(name: 'CreateRevenueAttributionInputDescriptionString')
    CreateRevenueAttributionInputNameString = Shapes::StringShape.new(name: 'CreateRevenueAttributionInputNameString')
    CreateRevenueAttributionInputProductIdentifierString = Shapes::StringShape.new(name: 'CreateRevenueAttributionInputProductIdentifierString')
    CreateRevenueAttributionOutput = Shapes::StructureShape.new(name: 'CreateRevenueAttributionOutput')
    CustomerAwsAccountId = Shapes::StringShape.new(name: 'CustomerAwsAccountId')
    CustomerAwsAccountIdFilterList = Shapes::ListShape.new(name: 'CustomerAwsAccountIdFilterList')
    EntityIdentifier = Shapes::StringShape.new(name: 'EntityIdentifier')
    EntityIdentifierFilterList = Shapes::ListShape.new(name: 'EntityIdentifierFilterList')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    EntityTypeFilterList = Shapes::ListShape.new(name: 'EntityTypeFilterList')
    FieldValidationCode = Shapes::StringShape.new(name: 'FieldValidationCode')
    GetMarketplaceRevenueShareAllocationInput = Shapes::StructureShape.new(name: 'GetMarketplaceRevenueShareAllocationInput')
    GetMarketplaceRevenueShareAllocationOutput = Shapes::StructureShape.new(name: 'GetMarketplaceRevenueShareAllocationOutput')
    GetMarketplaceRevenueShareInput = Shapes::StructureShape.new(name: 'GetMarketplaceRevenueShareInput')
    GetMarketplaceRevenueShareInputRevisionInteger = Shapes::IntegerShape.new(name: 'GetMarketplaceRevenueShareInputRevisionInteger')
    GetMarketplaceRevenueShareOutput = Shapes::StructureShape.new(name: 'GetMarketplaceRevenueShareOutput')
    GetMarketplaceRevenueShareOutputLatestRevisionInteger = Shapes::IntegerShape.new(name: 'GetMarketplaceRevenueShareOutputLatestRevisionInteger')
    GetMarketplaceRevenueShareOutputRevisionInteger = Shapes::IntegerShape.new(name: 'GetMarketplaceRevenueShareOutputRevisionInteger')
    GetRevenueAttributionAllocationInput = Shapes::StructureShape.new(name: 'GetRevenueAttributionAllocationInput')
    GetRevenueAttributionAllocationOutput = Shapes::StructureShape.new(name: 'GetRevenueAttributionAllocationOutput')
    GetRevenueAttributionAllocationsTaskInput = Shapes::StructureShape.new(name: 'GetRevenueAttributionAllocationsTaskInput')
    GetRevenueAttributionAllocationsTaskOutput = Shapes::StructureShape.new(name: 'GetRevenueAttributionAllocationsTaskOutput')
    GetRevenueAttributionInput = Shapes::StructureShape.new(name: 'GetRevenueAttributionInput')
    GetRevenueAttributionOutput = Shapes::StructureShape.new(name: 'GetRevenueAttributionOutput')
    GetRevenueAttributionOutputDescriptionString = Shapes::StringShape.new(name: 'GetRevenueAttributionOutputDescriptionString')
    GetRevenueAttributionOutputNameString = Shapes::StringShape.new(name: 'GetRevenueAttributionOutputNameString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListMarketplaceRevenueShareAllocationsInput = Shapes::StructureShape.new(name: 'ListMarketplaceRevenueShareAllocationsInput')
    ListMarketplaceRevenueShareAllocationsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMarketplaceRevenueShareAllocationsInputMaxResultsInteger')
    ListMarketplaceRevenueShareAllocationsOutput = Shapes::StructureShape.new(name: 'ListMarketplaceRevenueShareAllocationsOutput')
    ListMarketplaceRevenueSharesInput = Shapes::StructureShape.new(name: 'ListMarketplaceRevenueSharesInput')
    ListMarketplaceRevenueSharesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMarketplaceRevenueSharesInputMaxResultsInteger')
    ListMarketplaceRevenueSharesOutput = Shapes::StructureShape.new(name: 'ListMarketplaceRevenueSharesOutput')
    ListRevenueAttributionAllocationsInput = Shapes::StructureShape.new(name: 'ListRevenueAttributionAllocationsInput')
    ListRevenueAttributionAllocationsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRevenueAttributionAllocationsInputMaxResultsInteger')
    ListRevenueAttributionAllocationsOutput = Shapes::StructureShape.new(name: 'ListRevenueAttributionAllocationsOutput')
    ListRevenueAttributionsInput = Shapes::StructureShape.new(name: 'ListRevenueAttributionsInput')
    ListRevenueAttributionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRevenueAttributionsInputMaxResultsInteger')
    ListRevenueAttributionsOutput = Shapes::StructureShape.new(name: 'ListRevenueAttributionsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MarketplaceProductId = Shapes::StringShape.new(name: 'MarketplaceProductId')
    MarketplaceProductIdList = Shapes::ListShape.new(name: 'MarketplaceProductIdList')
    MarketplaceProductSummary = Shapes::StructureShape.new(name: 'MarketplaceProductSummary')
    MarketplaceProductSummaryProductIdString = Shapes::StringShape.new(name: 'MarketplaceProductSummaryProductIdString')
    MarketplaceRevenueShareAllocationId = Shapes::StringShape.new(name: 'MarketplaceRevenueShareAllocationId')
    MarketplaceRevenueShareAllocationSortField = Shapes::StringShape.new(name: 'MarketplaceRevenueShareAllocationSortField')
    MarketplaceRevenueShareAllocationSummary = Shapes::StructureShape.new(name: 'MarketplaceRevenueShareAllocationSummary')
    MarketplaceRevenueShareAllocationSummaryList = Shapes::ListShape.new(name: 'MarketplaceRevenueShareAllocationSummaryList')
    MarketplaceRevenueShareSortBy = Shapes::StringShape.new(name: 'MarketplaceRevenueShareSortBy')
    MarketplaceRevenueShareSummary = Shapes::StructureShape.new(name: 'MarketplaceRevenueShareSummary')
    MarketplaceRevenueShareSummaryList = Shapes::ListShape.new(name: 'MarketplaceRevenueShareSummaryList')
    MarketplaceRevenueShareTagList = Shapes::ListShape.new(name: 'MarketplaceRevenueShareTagList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ProductCodeList = Shapes::ListShape.new(name: 'ProductCodeList')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotFoundExceptionReason = Shapes::StringShape.new(name: 'ResourceNotFoundExceptionReason')
    RevenueAttributionAllocationAction = Shapes::StringShape.new(name: 'RevenueAttributionAllocationAction')
    RevenueAttributionAllocationErrorCode = Shapes::StringShape.new(name: 'RevenueAttributionAllocationErrorCode')
    RevenueAttributionAllocationErrorDetail = Shapes::StructureShape.new(name: 'RevenueAttributionAllocationErrorDetail')
    RevenueAttributionAllocationErrorDetailList = Shapes::ListShape.new(name: 'RevenueAttributionAllocationErrorDetailList')
    RevenueAttributionAllocationId = Shapes::StringShape.new(name: 'RevenueAttributionAllocationId')
    RevenueAttributionAllocationSortField = Shapes::StringShape.new(name: 'RevenueAttributionAllocationSortField')
    RevenueAttributionAllocationSummary = Shapes::StructureShape.new(name: 'RevenueAttributionAllocationSummary')
    RevenueAttributionAllocationSummaryList = Shapes::ListShape.new(name: 'RevenueAttributionAllocationSummaryList')
    RevenueAttributionAllocationTaskId = Shapes::StringShape.new(name: 'RevenueAttributionAllocationTaskId')
    RevenueAttributionAllocationTaskStatus = Shapes::StringShape.new(name: 'RevenueAttributionAllocationTaskStatus')
    RevenueAttributionId = Shapes::StringShape.new(name: 'RevenueAttributionId')
    RevenueAttributionIdentifier = Shapes::StringShape.new(name: 'RevenueAttributionIdentifier')
    RevenueAttributionIdentifierList = Shapes::ListShape.new(name: 'RevenueAttributionIdentifierList')
    RevenueAttributionSummaries = Shapes::ListShape.new(name: 'RevenueAttributionSummaries')
    RevenueShareAllocation = Shapes::StructureShape.new(name: 'RevenueShareAllocation')
    RevenueShareAllocationChangeList = Shapes::ListShape.new(name: 'RevenueShareAllocationChangeList')
    RevenueSharePercent = Shapes::StringShape.new(name: 'RevenueSharePercent')
    RevisionToken = Shapes::StringShape.new(name: 'RevisionToken')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceQuotaExceededExceptionReason = Shapes::StringShape.new(name: 'ServiceQuotaExceededExceptionReason')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartRevenueAttributionAllocationsTaskInput = Shapes::StructureShape.new(name: 'StartRevenueAttributionAllocationsTaskInput')
    StartRevenueAttributionAllocationsTaskInputDescriptionString = Shapes::StringShape.new(name: 'StartRevenueAttributionAllocationsTaskInputDescriptionString')
    StartRevenueAttributionAllocationsTaskOutput = Shapes::StructureShape.new(name: 'StartRevenueAttributionAllocationsTaskOutput')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TenancyModel = Shapes::StringShape.new(name: 'TenancyModel')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UpdateMarketplaceRevenueShareAllocationInput = Shapes::StructureShape.new(name: 'UpdateMarketplaceRevenueShareAllocationInput')
    UpdateMarketplaceRevenueShareAllocationOutput = Shapes::StructureShape.new(name: 'UpdateMarketplaceRevenueShareAllocationOutput')
    UpdateRevenueAttributionInput = Shapes::StructureShape.new(name: 'UpdateRevenueAttributionInput')
    UpdateRevenueAttributionInputDescriptionString = Shapes::StringShape.new(name: 'UpdateRevenueAttributionInputDescriptionString')
    UpdateRevenueAttributionOutput = Shapes::StructureShape.new(name: 'UpdateRevenueAttributionOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.add_member(:reason, Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, required: true, location_name: "Reason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AttributionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    AttributionSummary.add_member(:id, Shapes::ShapeRef.new(shape: RevenueAttributionId, location_name: "Id"))
    AttributionSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, location_name: "Catalog"))
    AttributionSummary.add_member(:name, Shapes::ShapeRef.new(shape: AttributionSummaryNameString, location_name: "Name"))
    AttributionSummary.add_member(:tenancy_model, Shapes::ShapeRef.new(shape: TenancyModel, required: true, location_name: "TenancyModel"))
    AttributionSummary.add_member(:marketplace_product, Shapes::ShapeRef.new(shape: MarketplaceProductSummary, location_name: "MarketplaceProduct"))
    AttributionSummary.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    AttributionSummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedDate"))
    AttributionSummary.add_member(:latest_revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "LatestRevision"))
    AttributionSummary.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "EffectiveFrom"))
    AttributionSummary.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "EffectiveUntil"))
    AttributionSummary.add_member(:total_active_revenue_attribution_allocation_count, Shapes::ShapeRef.new(shape: AllocationCount, location_name: "TotalActiveRevenueAttributionAllocationCount"))
    AttributionSummary.add_member(:total_revenue_attribution_allocation_count, Shapes::ShapeRef.new(shape: AllocationCount, location_name: "TotalRevenueAttributionAllocationCount"))
    AttributionSummary.struct_class = Types::AttributionSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, required: true, location_name: "Reason"))
    ConflictException.struct_class = Types::ConflictException

    CreateMarketplaceRevenueShareAllocationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    CreateMarketplaceRevenueShareAllocationInput.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    CreateMarketplaceRevenueShareAllocationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateMarketplaceRevenueShareAllocationInput.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveFrom"))
    CreateMarketplaceRevenueShareAllocationInput.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "EffectiveUntil"))
    CreateMarketplaceRevenueShareAllocationInput.add_member(:revenue_share_percent, Shapes::ShapeRef.new(shape: RevenueSharePercent, required: true, location_name: "RevenueSharePercent"))
    CreateMarketplaceRevenueShareAllocationInput.struct_class = Types::CreateMarketplaceRevenueShareAllocationInput

    CreateMarketplaceRevenueShareAllocationOutput.add_member(:marketplace_revenue_share_allocation_id, Shapes::ShapeRef.new(shape: MarketplaceRevenueShareAllocationId, required: true, location_name: "MarketplaceRevenueShareAllocationId"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:product_name, Shapes::ShapeRef.new(shape: String, location_name: "ProductName"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveFrom"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "EffectiveUntil"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:revenue_share_percent, Shapes::ShapeRef.new(shape: RevenueSharePercent, required: true, location_name: "RevenueSharePercent"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:status, Shapes::ShapeRef.new(shape: AllocationStatus, required: true, location_name: "Status"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedDate"))
    CreateMarketplaceRevenueShareAllocationOutput.add_member(:latest_marketplace_revenue_share_revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "LatestMarketplaceRevenueShareRevision"))
    CreateMarketplaceRevenueShareAllocationOutput.struct_class = Types::CreateMarketplaceRevenueShareAllocationOutput

    CreateMarketplaceRevenueShareInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    CreateMarketplaceRevenueShareInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateMarketplaceRevenueShareInput.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    CreateMarketplaceRevenueShareInput.add_member(:tags, Shapes::ShapeRef.new(shape: MarketplaceRevenueShareTagList, location_name: "Tags"))
    CreateMarketplaceRevenueShareInput.struct_class = Types::CreateMarketplaceRevenueShareInput

    CreateMarketplaceRevenueShareOutput.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    CreateMarketplaceRevenueShareOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    CreateMarketplaceRevenueShareOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, location_name: "Catalog"))
    CreateMarketplaceRevenueShareOutput.add_member(:product_code, Shapes::ShapeRef.new(shape: String, location_name: "ProductCode"))
    CreateMarketplaceRevenueShareOutput.add_member(:product_name, Shapes::ShapeRef.new(shape: String, location_name: "ProductName"))
    CreateMarketplaceRevenueShareOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    CreateMarketplaceRevenueShareOutput.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedDate"))
    CreateMarketplaceRevenueShareOutput.add_member(:revision, Shapes::ShapeRef.new(shape: CreateMarketplaceRevenueShareOutputRevisionInteger, location_name: "Revision"))
    CreateMarketplaceRevenueShareOutput.struct_class = Types::CreateMarketplaceRevenueShareOutput

    CreateRevenueAttributionInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    CreateRevenueAttributionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateRevenueAttributionInput.add_member(:name, Shapes::ShapeRef.new(shape: CreateRevenueAttributionInputNameString, required: true, location_name: "Name"))
    CreateRevenueAttributionInput.add_member(:description, Shapes::ShapeRef.new(shape: CreateRevenueAttributionInputDescriptionString, location_name: "Description"))
    CreateRevenueAttributionInput.add_member(:tenancy_model, Shapes::ShapeRef.new(shape: TenancyModel, required: true, location_name: "TenancyModel"))
    CreateRevenueAttributionInput.add_member(:product_identifier, Shapes::ShapeRef.new(shape: CreateRevenueAttributionInputProductIdentifierString, location_name: "ProductIdentifier"))
    CreateRevenueAttributionInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRevenueAttributionInput.struct_class = Types::CreateRevenueAttributionInput

    CreateRevenueAttributionOutput.add_member(:id, Shapes::ShapeRef.new(shape: RevenueAttributionId, required: true, location_name: "Id"))
    CreateRevenueAttributionOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    CreateRevenueAttributionOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CreateRevenueAttributionOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateRevenueAttributionOutput.add_member(:tenancy_model, Shapes::ShapeRef.new(shape: TenancyModel, required: true, location_name: "TenancyModel"))
    CreateRevenueAttributionOutput.add_member(:marketplace_product, Shapes::ShapeRef.new(shape: MarketplaceProductSummary, location_name: "MarketplaceProduct"))
    CreateRevenueAttributionOutput.add_member(:revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "Revision"))
    CreateRevenueAttributionOutput.struct_class = Types::CreateRevenueAttributionOutput

    CustomerAwsAccountIdFilterList.member = Shapes::ShapeRef.new(shape: CustomerAwsAccountId)

    EntityIdentifierFilterList.member = Shapes::ShapeRef.new(shape: EntityIdentifier)

    EntityTypeFilterList.member = Shapes::ShapeRef.new(shape: EntityType)

    GetMarketplaceRevenueShareAllocationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    GetMarketplaceRevenueShareAllocationInput.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    GetMarketplaceRevenueShareAllocationInput.add_member(:marketplace_revenue_share_allocation_id, Shapes::ShapeRef.new(shape: MarketplaceRevenueShareAllocationId, required: true, location_name: "MarketplaceRevenueShareAllocationId"))
    GetMarketplaceRevenueShareAllocationInput.add_member(:marketplace_revenue_share_revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "MarketplaceRevenueShareRevision"))
    GetMarketplaceRevenueShareAllocationInput.struct_class = Types::GetMarketplaceRevenueShareAllocationInput

    GetMarketplaceRevenueShareAllocationOutput.add_member(:marketplace_revenue_share_allocation_id, Shapes::ShapeRef.new(shape: MarketplaceRevenueShareAllocationId, required: true, location_name: "MarketplaceRevenueShareAllocationId"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:product_name, Shapes::ShapeRef.new(shape: String, location_name: "ProductName"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveFrom"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "EffectiveUntil"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:revenue_share_percent, Shapes::ShapeRef.new(shape: RevenueSharePercent, required: true, location_name: "RevenueSharePercent"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:status, Shapes::ShapeRef.new(shape: AllocationStatus, required: true, location_name: "Status"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedDate"))
    GetMarketplaceRevenueShareAllocationOutput.add_member(:latest_marketplace_revenue_share_revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "LatestMarketplaceRevenueShareRevision"))
    GetMarketplaceRevenueShareAllocationOutput.struct_class = Types::GetMarketplaceRevenueShareAllocationOutput

    GetMarketplaceRevenueShareInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    GetMarketplaceRevenueShareInput.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    GetMarketplaceRevenueShareInput.add_member(:revision, Shapes::ShapeRef.new(shape: GetMarketplaceRevenueShareInputRevisionInteger, location_name: "Revision"))
    GetMarketplaceRevenueShareInput.struct_class = Types::GetMarketplaceRevenueShareInput

    GetMarketplaceRevenueShareOutput.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    GetMarketplaceRevenueShareOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    GetMarketplaceRevenueShareOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    GetMarketplaceRevenueShareOutput.add_member(:product_code, Shapes::ShapeRef.new(shape: String, location_name: "ProductCode"))
    GetMarketplaceRevenueShareOutput.add_member(:product_name, Shapes::ShapeRef.new(shape: String, location_name: "ProductName"))
    GetMarketplaceRevenueShareOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    GetMarketplaceRevenueShareOutput.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedDate"))
    GetMarketplaceRevenueShareOutput.add_member(:revision, Shapes::ShapeRef.new(shape: GetMarketplaceRevenueShareOutputRevisionInteger, location_name: "Revision"))
    GetMarketplaceRevenueShareOutput.add_member(:latest_revision, Shapes::ShapeRef.new(shape: GetMarketplaceRevenueShareOutputLatestRevisionInteger, location_name: "LatestRevision"))
    GetMarketplaceRevenueShareOutput.add_member(:total_active_marketplace_revenue_share_allocation_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalActiveMarketplaceRevenueShareAllocationCount"))
    GetMarketplaceRevenueShareOutput.add_member(:total_marketplace_revenue_share_allocation_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalMarketplaceRevenueShareAllocationCount"))
    GetMarketplaceRevenueShareOutput.struct_class = Types::GetMarketplaceRevenueShareOutput

    GetRevenueAttributionAllocationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    GetRevenueAttributionAllocationInput.add_member(:revenue_attribution_identifier, Shapes::ShapeRef.new(shape: RevenueAttributionIdentifier, required: true, location_name: "RevenueAttributionIdentifier"))
    GetRevenueAttributionAllocationInput.add_member(:revenue_attribution_allocation_id, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationId, required: true, location_name: "RevenueAttributionAllocationId"))
    GetRevenueAttributionAllocationInput.add_member(:revenue_attribution_revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "RevenueAttributionRevision"))
    GetRevenueAttributionAllocationInput.struct_class = Types::GetRevenueAttributionAllocationInput

    GetRevenueAttributionAllocationOutput.add_member(:revenue_attribution_allocation_id, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationId, required: true, location_name: "RevenueAttributionAllocationId"))
    GetRevenueAttributionAllocationOutput.add_member(:revenue_attribution_identifier, Shapes::ShapeRef.new(shape: RevenueAttributionIdentifier, required: true, location_name: "RevenueAttributionIdentifier"))
    GetRevenueAttributionAllocationOutput.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "EntityType"))
    GetRevenueAttributionAllocationOutput.add_member(:entity_identifier, Shapes::ShapeRef.new(shape: EntityIdentifier, required: true, location_name: "EntityIdentifier"))
    GetRevenueAttributionAllocationOutput.add_member(:entity_name, Shapes::ShapeRef.new(shape: String, location_name: "EntityName"))
    GetRevenueAttributionAllocationOutput.add_member(:customer_aws_account_id, Shapes::ShapeRef.new(shape: CustomerAwsAccountId, required: true, location_name: "CustomerAwsAccountId"))
    GetRevenueAttributionAllocationOutput.add_member(:revenue_share_percent, Shapes::ShapeRef.new(shape: RevenueSharePercent, required: true, location_name: "RevenueSharePercent"))
    GetRevenueAttributionAllocationOutput.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveFrom"))
    GetRevenueAttributionAllocationOutput.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveUntil"))
    GetRevenueAttributionAllocationOutput.add_member(:status, Shapes::ShapeRef.new(shape: AllocationStatus, required: true, location_name: "Status"))
    GetRevenueAttributionAllocationOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedDate"))
    GetRevenueAttributionAllocationOutput.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedDate"))
    GetRevenueAttributionAllocationOutput.add_member(:revenue_attribution_revision, Shapes::ShapeRef.new(shape: RevisionToken, required: true, location_name: "RevenueAttributionRevision"))
    GetRevenueAttributionAllocationOutput.add_member(:revenue_attribution_latest_revision, Shapes::ShapeRef.new(shape: RevisionToken, required: true, location_name: "RevenueAttributionLatestRevision"))
    GetRevenueAttributionAllocationOutput.struct_class = Types::GetRevenueAttributionAllocationOutput

    GetRevenueAttributionAllocationsTaskInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    GetRevenueAttributionAllocationsTaskInput.add_member(:revenue_attribution_identifier, Shapes::ShapeRef.new(shape: RevenueAttributionIdentifier, required: true, location_name: "RevenueAttributionIdentifier"))
    GetRevenueAttributionAllocationsTaskInput.struct_class = Types::GetRevenueAttributionAllocationsTaskInput

    GetRevenueAttributionAllocationsTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationTaskId, required: true, location_name: "TaskId"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:status, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationTaskStatus, required: true, location_name: "Status"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:revenue_attribution_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RevenueAttributionArn"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartedAt"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndedAt"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:total_revenue_attribution_allocation_records, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalRevenueAttributionAllocationRecords"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:revenue_attribution_latest_revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "RevenueAttributionLatestRevision"))
    GetRevenueAttributionAllocationsTaskOutput.add_member(:error_detail_list, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationErrorDetailList, location_name: "ErrorDetailList"))
    GetRevenueAttributionAllocationsTaskOutput.struct_class = Types::GetRevenueAttributionAllocationsTaskOutput

    GetRevenueAttributionInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    GetRevenueAttributionInput.add_member(:identifier, Shapes::ShapeRef.new(shape: RevenueAttributionIdentifier, required: true, location_name: "Identifier"))
    GetRevenueAttributionInput.add_member(:revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "Revision"))
    GetRevenueAttributionInput.struct_class = Types::GetRevenueAttributionInput

    GetRevenueAttributionOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    GetRevenueAttributionOutput.add_member(:id, Shapes::ShapeRef.new(shape: RevenueAttributionId, required: true, location_name: "Id"))
    GetRevenueAttributionOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    GetRevenueAttributionOutput.add_member(:name, Shapes::ShapeRef.new(shape: GetRevenueAttributionOutputNameString, location_name: "Name"))
    GetRevenueAttributionOutput.add_member(:description, Shapes::ShapeRef.new(shape: GetRevenueAttributionOutputDescriptionString, location_name: "Description"))
    GetRevenueAttributionOutput.add_member(:tenancy_model, Shapes::ShapeRef.new(shape: TenancyModel, required: true, location_name: "TenancyModel"))
    GetRevenueAttributionOutput.add_member(:marketplace_product, Shapes::ShapeRef.new(shape: MarketplaceProductSummary, location_name: "MarketplaceProduct"))
    GetRevenueAttributionOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    GetRevenueAttributionOutput.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedDate"))
    GetRevenueAttributionOutput.add_member(:revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "Revision"))
    GetRevenueAttributionOutput.add_member(:latest_revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "LatestRevision"))
    GetRevenueAttributionOutput.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "EffectiveFrom"))
    GetRevenueAttributionOutput.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "EffectiveUntil"))
    GetRevenueAttributionOutput.add_member(:total_active_revenue_attribution_allocation_count, Shapes::ShapeRef.new(shape: AllocationCount, location_name: "TotalActiveRevenueAttributionAllocationCount"))
    GetRevenueAttributionOutput.add_member(:total_revenue_attribution_allocation_count, Shapes::ShapeRef.new(shape: AllocationCount, location_name: "TotalRevenueAttributionAllocationCount"))
    GetRevenueAttributionOutput.struct_class = Types::GetRevenueAttributionOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListMarketplaceRevenueShareAllocationsInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:status, Shapes::ShapeRef.new(shape: AllocationStatus, location_name: "Status"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:after_effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "AfterEffectiveFrom"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:before_effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "BeforeEffectiveFrom"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: MarketplaceRevenueShareAllocationSortField, location_name: "SortBy"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMarketplaceRevenueShareAllocationsInputMaxResultsInteger, location_name: "MaxResults"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMarketplaceRevenueShareAllocationsInput.add_member(:marketplace_revenue_share_revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "MarketplaceRevenueShareRevision"))
    ListMarketplaceRevenueShareAllocationsInput.struct_class = Types::ListMarketplaceRevenueShareAllocationsInput

    ListMarketplaceRevenueShareAllocationsOutput.add_member(:marketplace_revenue_share_allocation_summaries, Shapes::ShapeRef.new(shape: MarketplaceRevenueShareAllocationSummaryList, required: true, location_name: "MarketplaceRevenueShareAllocationSummaries"))
    ListMarketplaceRevenueShareAllocationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMarketplaceRevenueShareAllocationsOutput.struct_class = Types::ListMarketplaceRevenueShareAllocationsOutput

    ListMarketplaceRevenueSharesInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    ListMarketplaceRevenueSharesInput.add_member(:product_ids, Shapes::ShapeRef.new(shape: MarketplaceProductIdList, location_name: "ProductIds"))
    ListMarketplaceRevenueSharesInput.add_member(:product_codes, Shapes::ShapeRef.new(shape: ProductCodeList, location_name: "ProductCodes"))
    ListMarketplaceRevenueSharesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMarketplaceRevenueSharesInputMaxResultsInteger, location_name: "MaxResults"))
    ListMarketplaceRevenueSharesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMarketplaceRevenueSharesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: MarketplaceRevenueShareSortBy, location_name: "SortBy"))
    ListMarketplaceRevenueSharesInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListMarketplaceRevenueSharesInput.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListMarketplaceRevenueSharesInput.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListMarketplaceRevenueSharesInput.struct_class = Types::ListMarketplaceRevenueSharesInput

    ListMarketplaceRevenueSharesOutput.add_member(:marketplace_revenue_share_summaries, Shapes::ShapeRef.new(shape: MarketplaceRevenueShareSummaryList, required: true, location_name: "MarketplaceRevenueShareSummaries"))
    ListMarketplaceRevenueSharesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMarketplaceRevenueSharesOutput.struct_class = Types::ListMarketplaceRevenueSharesOutput

    ListRevenueAttributionAllocationsInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    ListRevenueAttributionAllocationsInput.add_member(:revenue_attribution_identifier, Shapes::ShapeRef.new(shape: RevenueAttributionIdentifier, required: true, location_name: "RevenueAttributionIdentifier"))
    ListRevenueAttributionAllocationsInput.add_member(:entity_type_filters, Shapes::ShapeRef.new(shape: EntityTypeFilterList, location_name: "EntityTypeFilters"))
    ListRevenueAttributionAllocationsInput.add_member(:entity_identifier_filters, Shapes::ShapeRef.new(shape: EntityIdentifierFilterList, location_name: "EntityIdentifierFilters"))
    ListRevenueAttributionAllocationsInput.add_member(:customer_aws_account_id_filters, Shapes::ShapeRef.new(shape: CustomerAwsAccountIdFilterList, location_name: "CustomerAwsAccountIdFilters"))
    ListRevenueAttributionAllocationsInput.add_member(:status_filter, Shapes::ShapeRef.new(shape: AllocationStatus, location_name: "StatusFilter"))
    ListRevenueAttributionAllocationsInput.add_member(:after_effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "AfterEffectiveFrom"))
    ListRevenueAttributionAllocationsInput.add_member(:before_effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "BeforeEffectiveFrom"))
    ListRevenueAttributionAllocationsInput.add_member(:after_effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "AfterEffectiveUntil"))
    ListRevenueAttributionAllocationsInput.add_member(:before_effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "BeforeEffectiveUntil"))
    ListRevenueAttributionAllocationsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationSortField, location_name: "SortBy"))
    ListRevenueAttributionAllocationsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListRevenueAttributionAllocationsInput.add_member(:revenue_attribution_revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "RevenueAttributionRevision"))
    ListRevenueAttributionAllocationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRevenueAttributionAllocationsInputMaxResultsInteger, location_name: "MaxResults"))
    ListRevenueAttributionAllocationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRevenueAttributionAllocationsInput.struct_class = Types::ListRevenueAttributionAllocationsInput

    ListRevenueAttributionAllocationsOutput.add_member(:revenue_attribution_allocation_summaries, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationSummaryList, required: true, location_name: "RevenueAttributionAllocationSummaries"))
    ListRevenueAttributionAllocationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRevenueAttributionAllocationsOutput.struct_class = Types::ListRevenueAttributionAllocationsOutput

    ListRevenueAttributionsInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    ListRevenueAttributionsInput.add_member(:identifiers, Shapes::ShapeRef.new(shape: RevenueAttributionIdentifierList, location_name: "Identifiers"))
    ListRevenueAttributionsInput.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    ListRevenueAttributionsInput.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    ListRevenueAttributionsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: AttributionSortBy, location_name: "SortBy"))
    ListRevenueAttributionsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListRevenueAttributionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRevenueAttributionsInputMaxResultsInteger, location_name: "MaxResults"))
    ListRevenueAttributionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRevenueAttributionsInput.struct_class = Types::ListRevenueAttributionsInput

    ListRevenueAttributionsOutput.add_member(:revenue_attribution_summaries, Shapes::ShapeRef.new(shape: RevenueAttributionSummaries, location_name: "RevenueAttributionSummaries"))
    ListRevenueAttributionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRevenueAttributionsOutput.struct_class = Types::ListRevenueAttributionsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    MarketplaceProductIdList.member = Shapes::ShapeRef.new(shape: MarketplaceProductId)

    MarketplaceProductSummary.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductSummaryProductIdString, location_name: "ProductId"))
    MarketplaceProductSummary.add_member(:product_code, Shapes::ShapeRef.new(shape: String, location_name: "ProductCode"))
    MarketplaceProductSummary.add_member(:product_name, Shapes::ShapeRef.new(shape: String, location_name: "ProductName"))
    MarketplaceProductSummary.struct_class = Types::MarketplaceProductSummary

    MarketplaceRevenueShareAllocationSummary.add_member(:marketplace_revenue_share_allocation_id, Shapes::ShapeRef.new(shape: MarketplaceRevenueShareAllocationId, required: true, location_name: "MarketplaceRevenueShareAllocationId"))
    MarketplaceRevenueShareAllocationSummary.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    MarketplaceRevenueShareAllocationSummary.add_member(:product_name, Shapes::ShapeRef.new(shape: String, location_name: "ProductName"))
    MarketplaceRevenueShareAllocationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    MarketplaceRevenueShareAllocationSummary.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveFrom"))
    MarketplaceRevenueShareAllocationSummary.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "EffectiveUntil"))
    MarketplaceRevenueShareAllocationSummary.add_member(:revenue_share_percent, Shapes::ShapeRef.new(shape: RevenueSharePercent, required: true, location_name: "RevenueSharePercent"))
    MarketplaceRevenueShareAllocationSummary.add_member(:status, Shapes::ShapeRef.new(shape: AllocationStatus, required: true, location_name: "Status"))
    MarketplaceRevenueShareAllocationSummary.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    MarketplaceRevenueShareAllocationSummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedDate"))
    MarketplaceRevenueShareAllocationSummary.struct_class = Types::MarketplaceRevenueShareAllocationSummary

    MarketplaceRevenueShareAllocationSummaryList.member = Shapes::ShapeRef.new(shape: MarketplaceRevenueShareAllocationSummary)

    MarketplaceRevenueShareSummary.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    MarketplaceRevenueShareSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    MarketplaceRevenueShareSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, location_name: "Catalog"))
    MarketplaceRevenueShareSummary.add_member(:product_code, Shapes::ShapeRef.new(shape: String, location_name: "ProductCode"))
    MarketplaceRevenueShareSummary.add_member(:product_name, Shapes::ShapeRef.new(shape: String, location_name: "ProductName"))
    MarketplaceRevenueShareSummary.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    MarketplaceRevenueShareSummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedDate"))
    MarketplaceRevenueShareSummary.add_member(:latest_revision, Shapes::ShapeRef.new(shape: Integer, location_name: "LatestRevision"))
    MarketplaceRevenueShareSummary.add_member(:total_active_marketplace_revenue_share_allocation_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalActiveMarketplaceRevenueShareAllocationCount"))
    MarketplaceRevenueShareSummary.add_member(:total_marketplace_revenue_share_allocation_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalMarketplaceRevenueShareAllocationCount"))
    MarketplaceRevenueShareSummary.struct_class = Types::MarketplaceRevenueShareSummary

    MarketplaceRevenueShareSummaryList.member = Shapes::ShapeRef.new(shape: MarketplaceRevenueShareSummary)

    MarketplaceRevenueShareTagList.member = Shapes::ShapeRef.new(shape: Tag)

    ProductCodeList.member = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:reason, Shapes::ShapeRef.new(shape: ResourceNotFoundExceptionReason, required: true, location_name: "Reason"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RevenueAttributionAllocationErrorDetail.add_member(:revenue_attribution_allocation_id, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationId, location_name: "RevenueAttributionAllocationId"))
    RevenueAttributionAllocationErrorDetail.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "EntityType"))
    RevenueAttributionAllocationErrorDetail.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityIdentifier, required: true, location_name: "EntityId"))
    RevenueAttributionAllocationErrorDetail.add_member(:customer_aws_account_id, Shapes::ShapeRef.new(shape: CustomerAwsAccountId, required: true, location_name: "CustomerAwsAccountId"))
    RevenueAttributionAllocationErrorDetail.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveFrom"))
    RevenueAttributionAllocationErrorDetail.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveUntil"))
    RevenueAttributionAllocationErrorDetail.add_member(:action, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationAction, required: true, location_name: "Action"))
    RevenueAttributionAllocationErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationErrorCode, required: true, location_name: "ErrorCode"))
    RevenueAttributionAllocationErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ErrorMessage"))
    RevenueAttributionAllocationErrorDetail.struct_class = Types::RevenueAttributionAllocationErrorDetail

    RevenueAttributionAllocationErrorDetailList.member = Shapes::ShapeRef.new(shape: RevenueAttributionAllocationErrorDetail)

    RevenueAttributionAllocationSummary.add_member(:revenue_attribution_allocation_id, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationId, required: true, location_name: "RevenueAttributionAllocationId"))
    RevenueAttributionAllocationSummary.add_member(:revenue_attribution_identifier, Shapes::ShapeRef.new(shape: RevenueAttributionIdentifier, required: true, location_name: "RevenueAttributionIdentifier"))
    RevenueAttributionAllocationSummary.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "EntityType"))
    RevenueAttributionAllocationSummary.add_member(:entity_identifier, Shapes::ShapeRef.new(shape: EntityIdentifier, required: true, location_name: "EntityIdentifier"))
    RevenueAttributionAllocationSummary.add_member(:entity_name, Shapes::ShapeRef.new(shape: String, location_name: "EntityName"))
    RevenueAttributionAllocationSummary.add_member(:customer_aws_account_id, Shapes::ShapeRef.new(shape: CustomerAwsAccountId, required: true, location_name: "CustomerAwsAccountId"))
    RevenueAttributionAllocationSummary.add_member(:revenue_share_percent, Shapes::ShapeRef.new(shape: RevenueSharePercent, required: true, location_name: "RevenueSharePercent"))
    RevenueAttributionAllocationSummary.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveFrom"))
    RevenueAttributionAllocationSummary.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveUntil"))
    RevenueAttributionAllocationSummary.add_member(:status, Shapes::ShapeRef.new(shape: AllocationStatus, required: true, location_name: "Status"))
    RevenueAttributionAllocationSummary.struct_class = Types::RevenueAttributionAllocationSummary

    RevenueAttributionAllocationSummaryList.member = Shapes::ShapeRef.new(shape: RevenueAttributionAllocationSummary)

    RevenueAttributionIdentifierList.member = Shapes::ShapeRef.new(shape: RevenueAttributionIdentifier)

    RevenueAttributionSummaries.member = Shapes::ShapeRef.new(shape: AttributionSummary)

    RevenueShareAllocation.add_member(:action, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationAction, required: true, location_name: "Action"))
    RevenueShareAllocation.add_member(:revenue_attribution_allocation_id, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationId, location_name: "RevenueAttributionAllocationId"))
    RevenueShareAllocation.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "EntityType"))
    RevenueShareAllocation.add_member(:entity_identifier, Shapes::ShapeRef.new(shape: EntityIdentifier, required: true, location_name: "EntityIdentifier"))
    RevenueShareAllocation.add_member(:customer_aws_account_id, Shapes::ShapeRef.new(shape: CustomerAwsAccountId, required: true, location_name: "CustomerAwsAccountId"))
    RevenueShareAllocation.add_member(:revenue_share_percent, Shapes::ShapeRef.new(shape: RevenueSharePercent, required: true, location_name: "RevenueSharePercent"))
    RevenueShareAllocation.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveFrom"))
    RevenueShareAllocation.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveUntil"))
    RevenueShareAllocation.add_member(:status, Shapes::ShapeRef.new(shape: AllocationStatus, location_name: "Status"))
    RevenueShareAllocation.struct_class = Types::RevenueShareAllocation

    RevenueShareAllocationChangeList.member = Shapes::ShapeRef.new(shape: RevenueShareAllocation)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:reason, Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, required: true, location_name: "Reason"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartRevenueAttributionAllocationsTaskInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    StartRevenueAttributionAllocationsTaskInput.add_member(:revenue_attribution_identifier, Shapes::ShapeRef.new(shape: RevenueAttributionIdentifier, required: true, location_name: "RevenueAttributionIdentifier"))
    StartRevenueAttributionAllocationsTaskInput.add_member(:revenue_attribution_revision, Shapes::ShapeRef.new(shape: RevisionToken, required: true, location_name: "RevenueAttributionRevision"))
    StartRevenueAttributionAllocationsTaskInput.add_member(:revenue_share_allocations, Shapes::ShapeRef.new(shape: RevenueShareAllocationChangeList, required: true, location_name: "RevenueShareAllocations"))
    StartRevenueAttributionAllocationsTaskInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartRevenueAttributionAllocationsTaskInput.add_member(:description, Shapes::ShapeRef.new(shape: StartRevenueAttributionAllocationsTaskInputDescriptionString, location_name: "Description"))
    StartRevenueAttributionAllocationsTaskInput.struct_class = Types::StartRevenueAttributionAllocationsTaskInput

    StartRevenueAttributionAllocationsTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationTaskId, required: true, location_name: "TaskId"))
    StartRevenueAttributionAllocationsTaskOutput.add_member(:status, Shapes::ShapeRef.new(shape: RevenueAttributionAllocationTaskStatus, required: true, location_name: "Status"))
    StartRevenueAttributionAllocationsTaskOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    StartRevenueAttributionAllocationsTaskOutput.add_member(:revenue_attribution_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RevenueAttributionArn"))
    StartRevenueAttributionAllocationsTaskOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartedAt"))
    StartRevenueAttributionAllocationsTaskOutput.add_member(:total_revenue_attribution_allocation_records, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalRevenueAttributionAllocationRecords"))
    StartRevenueAttributionAllocationsTaskOutput.struct_class = Types::StartRevenueAttributionAllocationsTaskOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UpdateMarketplaceRevenueShareAllocationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:marketplace_revenue_share_allocation_id, Shapes::ShapeRef.new(shape: MarketplaceRevenueShareAllocationId, required: true, location_name: "MarketplaceRevenueShareAllocationId"))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:marketplace_revenue_share_revision, Shapes::ShapeRef.new(shape: RevisionToken, required: true, location_name: "MarketplaceRevenueShareRevision"))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "EffectiveFrom"))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "EffectiveUntil"))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:revenue_share_percent, Shapes::ShapeRef.new(shape: RevenueSharePercent, location_name: "RevenueSharePercent"))
    UpdateMarketplaceRevenueShareAllocationInput.add_member(:status, Shapes::ShapeRef.new(shape: AllocationStatus, location_name: "Status"))
    UpdateMarketplaceRevenueShareAllocationInput.struct_class = Types::UpdateMarketplaceRevenueShareAllocationInput

    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:marketplace_revenue_share_allocation_id, Shapes::ShapeRef.new(shape: MarketplaceRevenueShareAllocationId, required: true, location_name: "MarketplaceRevenueShareAllocationId"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:product_id, Shapes::ShapeRef.new(shape: MarketplaceProductId, required: true, location_name: "ProductId"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:product_name, Shapes::ShapeRef.new(shape: String, location_name: "ProductName"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:effective_from, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, required: true, location_name: "EffectiveFrom"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:effective_until, Shapes::ShapeRef.new(shape: AllocationEffectiveDateString, location_name: "EffectiveUntil"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:revenue_share_percent, Shapes::ShapeRef.new(shape: RevenueSharePercent, required: true, location_name: "RevenueSharePercent"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:status, Shapes::ShapeRef.new(shape: AllocationStatus, required: true, location_name: "Status"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedDate"))
    UpdateMarketplaceRevenueShareAllocationOutput.add_member(:latest_marketplace_revenue_share_revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "LatestMarketplaceRevenueShareRevision"))
    UpdateMarketplaceRevenueShareAllocationOutput.struct_class = Types::UpdateMarketplaceRevenueShareAllocationOutput

    UpdateRevenueAttributionInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    UpdateRevenueAttributionInput.add_member(:identifier, Shapes::ShapeRef.new(shape: RevenueAttributionIdentifier, required: true, location_name: "Identifier"))
    UpdateRevenueAttributionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdateRevenueAttributionInput.add_member(:description, Shapes::ShapeRef.new(shape: UpdateRevenueAttributionInputDescriptionString, location_name: "Description"))
    UpdateRevenueAttributionInput.add_member(:revision, Shapes::ShapeRef.new(shape: RevisionToken, required: true, location_name: "Revision"))
    UpdateRevenueAttributionInput.struct_class = Types::UpdateRevenueAttributionInput

    UpdateRevenueAttributionOutput.add_member(:id, Shapes::ShapeRef.new(shape: RevenueAttributionId, required: true, location_name: "Id"))
    UpdateRevenueAttributionOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    UpdateRevenueAttributionOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateRevenueAttributionOutput.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedDate"))
    UpdateRevenueAttributionOutput.add_member(:latest_revision, Shapes::ShapeRef.new(shape: RevisionToken, location_name: "LatestRevision"))
    UpdateRevenueAttributionOutput.struct_class = Types::UpdateRevenueAttributionOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "Reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "FieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.add_member(:code, Shapes::ShapeRef.new(shape: FieldValidationCode, required: true, location_name: "Code"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-07-26"

      api.metadata = {
        "apiVersion" => "2022-07-26",
        "auth" => ["aws.auth#sigv4a", "aws.auth#sigv4"],
        "endpointPrefix" => "partnercentral-prm",
        "protocol" => "smithy-rpc-v2-cbor",
        "protocols" => ["smithy-rpc-v2-cbor"],
        "serviceFullName" => "Partner Central Revenue Measurement API",
        "serviceId" => "PartnerCentral Revenue Measurement",
        "signatureVersion" => "v4",
        "signingName" => "partnercentral",
        "targetPrefix" => "PartnerCentralRevenueMeasurement",
        "uid" => "partnercentral-revenue-measurement-2022-07-26",
      }

      api.add_operation(:create_marketplace_revenue_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMarketplaceRevenueShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMarketplaceRevenueShareInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMarketplaceRevenueShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_marketplace_revenue_share_allocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMarketplaceRevenueShareAllocation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMarketplaceRevenueShareAllocationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMarketplaceRevenueShareAllocationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_revenue_attribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRevenueAttribution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRevenueAttributionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRevenueAttributionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_marketplace_revenue_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMarketplaceRevenueShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMarketplaceRevenueShareInput)
        o.output = Shapes::ShapeRef.new(shape: GetMarketplaceRevenueShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_marketplace_revenue_share_allocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMarketplaceRevenueShareAllocation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMarketplaceRevenueShareAllocationInput)
        o.output = Shapes::ShapeRef.new(shape: GetMarketplaceRevenueShareAllocationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_revenue_attribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRevenueAttribution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRevenueAttributionInput)
        o.output = Shapes::ShapeRef.new(shape: GetRevenueAttributionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_revenue_attribution_allocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRevenueAttributionAllocation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRevenueAttributionAllocationInput)
        o.output = Shapes::ShapeRef.new(shape: GetRevenueAttributionAllocationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_revenue_attribution_allocations_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRevenueAttributionAllocationsTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRevenueAttributionAllocationsTaskInput)
        o.output = Shapes::ShapeRef.new(shape: GetRevenueAttributionAllocationsTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_marketplace_revenue_share_allocations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMarketplaceRevenueShareAllocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMarketplaceRevenueShareAllocationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMarketplaceRevenueShareAllocationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_marketplace_revenue_shares, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMarketplaceRevenueShares"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMarketplaceRevenueSharesInput)
        o.output = Shapes::ShapeRef.new(shape: ListMarketplaceRevenueSharesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_revenue_attribution_allocations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRevenueAttributionAllocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRevenueAttributionAllocationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListRevenueAttributionAllocationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_revenue_attributions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRevenueAttributions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRevenueAttributionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListRevenueAttributionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_revenue_attribution_allocations_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRevenueAttributionAllocationsTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartRevenueAttributionAllocationsTaskInput)
        o.output = Shapes::ShapeRef.new(shape: StartRevenueAttributionAllocationsTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_marketplace_revenue_share_allocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMarketplaceRevenueShareAllocation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMarketplaceRevenueShareAllocationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMarketplaceRevenueShareAllocationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_revenue_attribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRevenueAttribution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRevenueAttributionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRevenueAttributionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
