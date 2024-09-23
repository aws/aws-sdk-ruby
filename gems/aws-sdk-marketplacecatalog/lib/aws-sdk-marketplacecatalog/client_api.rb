# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MarketplaceCatalog
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmiProductEntityIdFilter = Shapes::StructureShape.new(name: 'AmiProductEntityIdFilter')
    AmiProductEntityIdFilterValueList = Shapes::ListShape.new(name: 'AmiProductEntityIdFilterValueList')
    AmiProductEntityIdString = Shapes::StringShape.new(name: 'AmiProductEntityIdString')
    AmiProductFilters = Shapes::StructureShape.new(name: 'AmiProductFilters')
    AmiProductLastModifiedDateFilter = Shapes::StructureShape.new(name: 'AmiProductLastModifiedDateFilter')
    AmiProductLastModifiedDateFilterDateRange = Shapes::StructureShape.new(name: 'AmiProductLastModifiedDateFilterDateRange')
    AmiProductSort = Shapes::StructureShape.new(name: 'AmiProductSort')
    AmiProductSortBy = Shapes::StringShape.new(name: 'AmiProductSortBy')
    AmiProductSummary = Shapes::StructureShape.new(name: 'AmiProductSummary')
    AmiProductTitleFilter = Shapes::StructureShape.new(name: 'AmiProductTitleFilter')
    AmiProductTitleFilterValueList = Shapes::ListShape.new(name: 'AmiProductTitleFilterValueList')
    AmiProductTitleString = Shapes::StringShape.new(name: 'AmiProductTitleString')
    AmiProductVisibilityFilter = Shapes::StructureShape.new(name: 'AmiProductVisibilityFilter')
    AmiProductVisibilityFilterValueList = Shapes::ListShape.new(name: 'AmiProductVisibilityFilterValueList')
    AmiProductVisibilityString = Shapes::StringShape.new(name: 'AmiProductVisibilityString')
    BatchDescribeEntitiesRequest = Shapes::StructureShape.new(name: 'BatchDescribeEntitiesRequest')
    BatchDescribeEntitiesResponse = Shapes::StructureShape.new(name: 'BatchDescribeEntitiesResponse')
    BatchDescribeErrorCodeString = Shapes::StringShape.new(name: 'BatchDescribeErrorCodeString')
    BatchDescribeErrorDetail = Shapes::StructureShape.new(name: 'BatchDescribeErrorDetail')
    BatchDescribeErrorMessageContent = Shapes::StringShape.new(name: 'BatchDescribeErrorMessageContent')
    CancelChangeSetRequest = Shapes::StructureShape.new(name: 'CancelChangeSetRequest')
    CancelChangeSetResponse = Shapes::StructureShape.new(name: 'CancelChangeSetResponse')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    Change = Shapes::StructureShape.new(name: 'Change')
    ChangeName = Shapes::StringShape.new(name: 'ChangeName')
    ChangeSetDescription = Shapes::ListShape.new(name: 'ChangeSetDescription')
    ChangeSetName = Shapes::StringShape.new(name: 'ChangeSetName')
    ChangeSetSummaryList = Shapes::ListShape.new(name: 'ChangeSetSummaryList')
    ChangeSetSummaryListItem = Shapes::StructureShape.new(name: 'ChangeSetSummaryListItem')
    ChangeStatus = Shapes::StringShape.new(name: 'ChangeStatus')
    ChangeSummary = Shapes::StructureShape.new(name: 'ChangeSummary')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ContainerProductEntityIdFilter = Shapes::StructureShape.new(name: 'ContainerProductEntityIdFilter')
    ContainerProductEntityIdFilterValueList = Shapes::ListShape.new(name: 'ContainerProductEntityIdFilterValueList')
    ContainerProductEntityIdString = Shapes::StringShape.new(name: 'ContainerProductEntityIdString')
    ContainerProductFilters = Shapes::StructureShape.new(name: 'ContainerProductFilters')
    ContainerProductLastModifiedDateFilter = Shapes::StructureShape.new(name: 'ContainerProductLastModifiedDateFilter')
    ContainerProductLastModifiedDateFilterDateRange = Shapes::StructureShape.new(name: 'ContainerProductLastModifiedDateFilterDateRange')
    ContainerProductSort = Shapes::StructureShape.new(name: 'ContainerProductSort')
    ContainerProductSortBy = Shapes::StringShape.new(name: 'ContainerProductSortBy')
    ContainerProductSummary = Shapes::StructureShape.new(name: 'ContainerProductSummary')
    ContainerProductTitleFilter = Shapes::StructureShape.new(name: 'ContainerProductTitleFilter')
    ContainerProductTitleFilterValueList = Shapes::ListShape.new(name: 'ContainerProductTitleFilterValueList')
    ContainerProductTitleString = Shapes::StringShape.new(name: 'ContainerProductTitleString')
    ContainerProductVisibilityFilter = Shapes::StructureShape.new(name: 'ContainerProductVisibilityFilter')
    ContainerProductVisibilityFilterValueList = Shapes::ListShape.new(name: 'ContainerProductVisibilityFilterValueList')
    ContainerProductVisibilityString = Shapes::StringShape.new(name: 'ContainerProductVisibilityString')
    DataProductEntityIdFilter = Shapes::StructureShape.new(name: 'DataProductEntityIdFilter')
    DataProductEntityIdFilterValueList = Shapes::ListShape.new(name: 'DataProductEntityIdFilterValueList')
    DataProductEntityIdString = Shapes::StringShape.new(name: 'DataProductEntityIdString')
    DataProductFilters = Shapes::StructureShape.new(name: 'DataProductFilters')
    DataProductLastModifiedDateFilter = Shapes::StructureShape.new(name: 'DataProductLastModifiedDateFilter')
    DataProductLastModifiedDateFilterDateRange = Shapes::StructureShape.new(name: 'DataProductLastModifiedDateFilterDateRange')
    DataProductSort = Shapes::StructureShape.new(name: 'DataProductSort')
    DataProductSortBy = Shapes::StringShape.new(name: 'DataProductSortBy')
    DataProductSummary = Shapes::StructureShape.new(name: 'DataProductSummary')
    DataProductTitleFilter = Shapes::StructureShape.new(name: 'DataProductTitleFilter')
    DataProductTitleFilterValueList = Shapes::ListShape.new(name: 'DataProductTitleFilterValueList')
    DataProductTitleString = Shapes::StringShape.new(name: 'DataProductTitleString')
    DataProductVisibilityFilter = Shapes::StructureShape.new(name: 'DataProductVisibilityFilter')
    DataProductVisibilityFilterValueList = Shapes::ListShape.new(name: 'DataProductVisibilityFilterValueList')
    DataProductVisibilityString = Shapes::StringShape.new(name: 'DataProductVisibilityString')
    DateTimeISO8601 = Shapes::StringShape.new(name: 'DateTimeISO8601')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DescribeChangeSetRequest = Shapes::StructureShape.new(name: 'DescribeChangeSetRequest')
    DescribeChangeSetResponse = Shapes::StructureShape.new(name: 'DescribeChangeSetResponse')
    DescribeEntityRequest = Shapes::StructureShape.new(name: 'DescribeEntityRequest')
    DescribeEntityResponse = Shapes::StructureShape.new(name: 'DescribeEntityResponse')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntityDetail = Shapes::StructureShape.new(name: 'EntityDetail')
    EntityDetails = Shapes::MapShape.new(name: 'EntityDetails')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    EntityNameString = Shapes::StringShape.new(name: 'EntityNameString')
    EntityRequest = Shapes::StructureShape.new(name: 'EntityRequest')
    EntityRequestList = Shapes::ListShape.new(name: 'EntityRequestList')
    EntitySummary = Shapes::StructureShape.new(name: 'EntitySummary')
    EntitySummaryList = Shapes::ListShape.new(name: 'EntitySummaryList')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    EntityTypeFilters = Shapes::UnionShape.new(name: 'EntityTypeFilters')
    EntityTypeSort = Shapes::UnionShape.new(name: 'EntityTypeSort')
    ErrorCodeString = Shapes::StringShape.new(name: 'ErrorCodeString')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorDetailList = Shapes::ListShape.new(name: 'ErrorDetailList')
    Errors = Shapes::MapShape.new(name: 'Errors')
    ExceptionMessageContent = Shapes::StringShape.new(name: 'ExceptionMessageContent')
    FailureCode = Shapes::StringShape.new(name: 'FailureCode')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValueContent = Shapes::StringShape.new(name: 'FilterValueContent')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    Intent = Shapes::StringShape.new(name: 'Intent')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    Json = Shapes::StringShape.new(name: 'Json')
    JsonDocumentType = Shapes::DocumentShape.new(name: 'JsonDocumentType', document: true)
    ListChangeSetsMaxResultInteger = Shapes::IntegerShape.new(name: 'ListChangeSetsMaxResultInteger')
    ListChangeSetsRequest = Shapes::StructureShape.new(name: 'ListChangeSetsRequest')
    ListChangeSetsResponse = Shapes::StructureShape.new(name: 'ListChangeSetsResponse')
    ListEntitiesMaxResultInteger = Shapes::IntegerShape.new(name: 'ListEntitiesMaxResultInteger')
    ListEntitiesRequest = Shapes::StructureShape.new(name: 'ListEntitiesRequest')
    ListEntitiesResponse = Shapes::StructureShape.new(name: 'ListEntitiesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OfferAvailabilityEndDateFilter = Shapes::StructureShape.new(name: 'OfferAvailabilityEndDateFilter')
    OfferAvailabilityEndDateFilterDateRange = Shapes::StructureShape.new(name: 'OfferAvailabilityEndDateFilterDateRange')
    OfferBuyerAccountsFilter = Shapes::StructureShape.new(name: 'OfferBuyerAccountsFilter')
    OfferBuyerAccountsFilterWildcard = Shapes::StringShape.new(name: 'OfferBuyerAccountsFilterWildcard')
    OfferBuyerAccountsList = Shapes::ListShape.new(name: 'OfferBuyerAccountsList')
    OfferBuyerAccountsString = Shapes::StringShape.new(name: 'OfferBuyerAccountsString')
    OfferEntityIdFilter = Shapes::StructureShape.new(name: 'OfferEntityIdFilter')
    OfferEntityIdFilterValueList = Shapes::ListShape.new(name: 'OfferEntityIdFilterValueList')
    OfferEntityIdString = Shapes::StringShape.new(name: 'OfferEntityIdString')
    OfferFilters = Shapes::StructureShape.new(name: 'OfferFilters')
    OfferLastModifiedDateFilter = Shapes::StructureShape.new(name: 'OfferLastModifiedDateFilter')
    OfferLastModifiedDateFilterDateRange = Shapes::StructureShape.new(name: 'OfferLastModifiedDateFilterDateRange')
    OfferNameFilter = Shapes::StructureShape.new(name: 'OfferNameFilter')
    OfferNameFilterValueList = Shapes::ListShape.new(name: 'OfferNameFilterValueList')
    OfferNameString = Shapes::StringShape.new(name: 'OfferNameString')
    OfferProductIdFilter = Shapes::StructureShape.new(name: 'OfferProductIdFilter')
    OfferProductIdFilterValueList = Shapes::ListShape.new(name: 'OfferProductIdFilterValueList')
    OfferProductIdString = Shapes::StringShape.new(name: 'OfferProductIdString')
    OfferReleaseDateFilter = Shapes::StructureShape.new(name: 'OfferReleaseDateFilter')
    OfferReleaseDateFilterDateRange = Shapes::StructureShape.new(name: 'OfferReleaseDateFilterDateRange')
    OfferResaleAuthorizationIdFilter = Shapes::StructureShape.new(name: 'OfferResaleAuthorizationIdFilter')
    OfferResaleAuthorizationIdFilterValueList = Shapes::ListShape.new(name: 'OfferResaleAuthorizationIdFilterValueList')
    OfferResaleAuthorizationIdString = Shapes::StringShape.new(name: 'OfferResaleAuthorizationIdString')
    OfferSort = Shapes::StructureShape.new(name: 'OfferSort')
    OfferSortBy = Shapes::StringShape.new(name: 'OfferSortBy')
    OfferStateFilter = Shapes::StructureShape.new(name: 'OfferStateFilter')
    OfferStateFilterValueList = Shapes::ListShape.new(name: 'OfferStateFilterValueList')
    OfferStateString = Shapes::StringShape.new(name: 'OfferStateString')
    OfferSummary = Shapes::StructureShape.new(name: 'OfferSummary')
    OfferTargetingFilter = Shapes::StructureShape.new(name: 'OfferTargetingFilter')
    OfferTargetingFilterValueList = Shapes::ListShape.new(name: 'OfferTargetingFilterValueList')
    OfferTargetingList = Shapes::ListShape.new(name: 'OfferTargetingList')
    OfferTargetingString = Shapes::StringShape.new(name: 'OfferTargetingString')
    OwnershipType = Shapes::StringShape.new(name: 'OwnershipType')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    RequestedChangeList = Shapes::ListShape.new(name: 'RequestedChangeList')
    ResaleAuthorizationAvailabilityEndDateFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationAvailabilityEndDateFilter')
    ResaleAuthorizationAvailabilityEndDateFilterDateRange = Shapes::StructureShape.new(name: 'ResaleAuthorizationAvailabilityEndDateFilterDateRange')
    ResaleAuthorizationAvailabilityEndDateFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationAvailabilityEndDateFilterValueList')
    ResaleAuthorizationCreatedDateFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationCreatedDateFilter')
    ResaleAuthorizationCreatedDateFilterDateRange = Shapes::StructureShape.new(name: 'ResaleAuthorizationCreatedDateFilterDateRange')
    ResaleAuthorizationCreatedDateFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationCreatedDateFilterValueList')
    ResaleAuthorizationEntityIdFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationEntityIdFilter')
    ResaleAuthorizationEntityIdFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationEntityIdFilterValueList')
    ResaleAuthorizationEntityIdString = Shapes::StringShape.new(name: 'ResaleAuthorizationEntityIdString')
    ResaleAuthorizationFilters = Shapes::StructureShape.new(name: 'ResaleAuthorizationFilters')
    ResaleAuthorizationLastModifiedDateFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationLastModifiedDateFilter')
    ResaleAuthorizationLastModifiedDateFilterDateRange = Shapes::StructureShape.new(name: 'ResaleAuthorizationLastModifiedDateFilterDateRange')
    ResaleAuthorizationManufacturerAccountIdFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationManufacturerAccountIdFilter')
    ResaleAuthorizationManufacturerAccountIdFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationManufacturerAccountIdFilterValueList')
    ResaleAuthorizationManufacturerAccountIdFilterWildcard = Shapes::StringShape.new(name: 'ResaleAuthorizationManufacturerAccountIdFilterWildcard')
    ResaleAuthorizationManufacturerAccountIdString = Shapes::StringShape.new(name: 'ResaleAuthorizationManufacturerAccountIdString')
    ResaleAuthorizationManufacturerLegalNameFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationManufacturerLegalNameFilter')
    ResaleAuthorizationManufacturerLegalNameFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationManufacturerLegalNameFilterValueList')
    ResaleAuthorizationManufacturerLegalNameFilterWildcard = Shapes::StringShape.new(name: 'ResaleAuthorizationManufacturerLegalNameFilterWildcard')
    ResaleAuthorizationManufacturerLegalNameString = Shapes::StringShape.new(name: 'ResaleAuthorizationManufacturerLegalNameString')
    ResaleAuthorizationNameFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationNameFilter')
    ResaleAuthorizationNameFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationNameFilterValueList')
    ResaleAuthorizationNameFilterWildcard = Shapes::StringShape.new(name: 'ResaleAuthorizationNameFilterWildcard')
    ResaleAuthorizationNameString = Shapes::StringShape.new(name: 'ResaleAuthorizationNameString')
    ResaleAuthorizationOfferExtendedStatusFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationOfferExtendedStatusFilter')
    ResaleAuthorizationOfferExtendedStatusFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationOfferExtendedStatusFilterValueList')
    ResaleAuthorizationOfferExtendedStatusString = Shapes::StringShape.new(name: 'ResaleAuthorizationOfferExtendedStatusString')
    ResaleAuthorizationProductIdFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationProductIdFilter')
    ResaleAuthorizationProductIdFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationProductIdFilterValueList')
    ResaleAuthorizationProductIdFilterWildcard = Shapes::StringShape.new(name: 'ResaleAuthorizationProductIdFilterWildcard')
    ResaleAuthorizationProductIdString = Shapes::StringShape.new(name: 'ResaleAuthorizationProductIdString')
    ResaleAuthorizationProductNameFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationProductNameFilter')
    ResaleAuthorizationProductNameFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationProductNameFilterValueList')
    ResaleAuthorizationProductNameFilterWildcard = Shapes::StringShape.new(name: 'ResaleAuthorizationProductNameFilterWildcard')
    ResaleAuthorizationProductNameString = Shapes::StringShape.new(name: 'ResaleAuthorizationProductNameString')
    ResaleAuthorizationResellerAccountIDFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationResellerAccountIDFilter')
    ResaleAuthorizationResellerAccountIDFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationResellerAccountIDFilterValueList')
    ResaleAuthorizationResellerAccountIDFilterWildcard = Shapes::StringShape.new(name: 'ResaleAuthorizationResellerAccountIDFilterWildcard')
    ResaleAuthorizationResellerAccountIDString = Shapes::StringShape.new(name: 'ResaleAuthorizationResellerAccountIDString')
    ResaleAuthorizationResellerLegalNameFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationResellerLegalNameFilter')
    ResaleAuthorizationResellerLegalNameFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationResellerLegalNameFilterValueList')
    ResaleAuthorizationResellerLegalNameFilterWildcard = Shapes::StringShape.new(name: 'ResaleAuthorizationResellerLegalNameFilterWildcard')
    ResaleAuthorizationResellerLegalNameString = Shapes::StringShape.new(name: 'ResaleAuthorizationResellerLegalNameString')
    ResaleAuthorizationSort = Shapes::StructureShape.new(name: 'ResaleAuthorizationSort')
    ResaleAuthorizationSortBy = Shapes::StringShape.new(name: 'ResaleAuthorizationSortBy')
    ResaleAuthorizationStatusFilter = Shapes::StructureShape.new(name: 'ResaleAuthorizationStatusFilter')
    ResaleAuthorizationStatusFilterValueList = Shapes::ListShape.new(name: 'ResaleAuthorizationStatusFilterValueList')
    ResaleAuthorizationStatusString = Shapes::StringShape.new(name: 'ResaleAuthorizationStatusString')
    ResaleAuthorizationSummary = Shapes::StructureShape.new(name: 'ResaleAuthorizationSummary')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotSupportedException = Shapes::StructureShape.new(name: 'ResourceNotSupportedException')
    ResourcePolicyJson = Shapes::StringShape.new(name: 'ResourcePolicyJson')
    SaaSProductEntityIdFilter = Shapes::StructureShape.new(name: 'SaaSProductEntityIdFilter')
    SaaSProductEntityIdFilterValueList = Shapes::ListShape.new(name: 'SaaSProductEntityIdFilterValueList')
    SaaSProductEntityIdString = Shapes::StringShape.new(name: 'SaaSProductEntityIdString')
    SaaSProductFilters = Shapes::StructureShape.new(name: 'SaaSProductFilters')
    SaaSProductLastModifiedDateFilter = Shapes::StructureShape.new(name: 'SaaSProductLastModifiedDateFilter')
    SaaSProductLastModifiedDateFilterDateRange = Shapes::StructureShape.new(name: 'SaaSProductLastModifiedDateFilterDateRange')
    SaaSProductSort = Shapes::StructureShape.new(name: 'SaaSProductSort')
    SaaSProductSortBy = Shapes::StringShape.new(name: 'SaaSProductSortBy')
    SaaSProductSummary = Shapes::StructureShape.new(name: 'SaaSProductSummary')
    SaaSProductTitleFilter = Shapes::StructureShape.new(name: 'SaaSProductTitleFilter')
    SaaSProductTitleFilterValueList = Shapes::ListShape.new(name: 'SaaSProductTitleFilterValueList')
    SaaSProductTitleString = Shapes::StringShape.new(name: 'SaaSProductTitleString')
    SaaSProductVisibilityFilter = Shapes::StructureShape.new(name: 'SaaSProductVisibilityFilter')
    SaaSProductVisibilityFilterValueList = Shapes::ListShape.new(name: 'SaaSProductVisibilityFilterValueList')
    SaaSProductVisibilityString = Shapes::StringShape.new(name: 'SaaSProductVisibilityString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Sort = Shapes::StructureShape.new(name: 'Sort')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartChangeSetRequest = Shapes::StructureShape.new(name: 'StartChangeSetRequest')
    StartChangeSetResponse = Shapes::StructureShape.new(name: 'StartChangeSetResponse')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValueList = Shapes::ListShape.new(name: 'ValueList')
    VisibilityValue = Shapes::StringShape.new(name: 'VisibilityValue')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AmiProductEntityIdFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: AmiProductEntityIdFilterValueList, location_name: "ValueList"))
    AmiProductEntityIdFilter.struct_class = Types::AmiProductEntityIdFilter

    AmiProductEntityIdFilterValueList.member = Shapes::ShapeRef.new(shape: AmiProductEntityIdString)

    AmiProductFilters.add_member(:entity_id, Shapes::ShapeRef.new(shape: AmiProductEntityIdFilter, location_name: "EntityId"))
    AmiProductFilters.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: AmiProductLastModifiedDateFilter, location_name: "LastModifiedDate"))
    AmiProductFilters.add_member(:product_title, Shapes::ShapeRef.new(shape: AmiProductTitleFilter, location_name: "ProductTitle"))
    AmiProductFilters.add_member(:visibility, Shapes::ShapeRef.new(shape: AmiProductVisibilityFilter, location_name: "Visibility"))
    AmiProductFilters.struct_class = Types::AmiProductFilters

    AmiProductLastModifiedDateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: AmiProductLastModifiedDateFilterDateRange, location_name: "DateRange"))
    AmiProductLastModifiedDateFilter.struct_class = Types::AmiProductLastModifiedDateFilter

    AmiProductLastModifiedDateFilterDateRange.add_member(:after_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AfterValue"))
    AmiProductLastModifiedDateFilterDateRange.add_member(:before_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "BeforeValue"))
    AmiProductLastModifiedDateFilterDateRange.struct_class = Types::AmiProductLastModifiedDateFilterDateRange

    AmiProductSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: AmiProductSortBy, location_name: "SortBy"))
    AmiProductSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    AmiProductSort.struct_class = Types::AmiProductSort

    AmiProductSummary.add_member(:product_title, Shapes::ShapeRef.new(shape: AmiProductTitleString, location_name: "ProductTitle"))
    AmiProductSummary.add_member(:visibility, Shapes::ShapeRef.new(shape: AmiProductVisibilityString, location_name: "Visibility"))
    AmiProductSummary.struct_class = Types::AmiProductSummary

    AmiProductTitleFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: AmiProductTitleFilterValueList, location_name: "ValueList"))
    AmiProductTitleFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: AmiProductTitleString, location_name: "WildCardValue"))
    AmiProductTitleFilter.struct_class = Types::AmiProductTitleFilter

    AmiProductTitleFilterValueList.member = Shapes::ShapeRef.new(shape: AmiProductTitleString)

    AmiProductVisibilityFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: AmiProductVisibilityFilterValueList, location_name: "ValueList"))
    AmiProductVisibilityFilter.struct_class = Types::AmiProductVisibilityFilter

    AmiProductVisibilityFilterValueList.member = Shapes::ShapeRef.new(shape: AmiProductVisibilityString)

    BatchDescribeEntitiesRequest.add_member(:entity_request_list, Shapes::ShapeRef.new(shape: EntityRequestList, required: true, location_name: "EntityRequestList"))
    BatchDescribeEntitiesRequest.struct_class = Types::BatchDescribeEntitiesRequest

    BatchDescribeEntitiesResponse.add_member(:entity_details, Shapes::ShapeRef.new(shape: EntityDetails, location_name: "EntityDetails"))
    BatchDescribeEntitiesResponse.add_member(:errors, Shapes::ShapeRef.new(shape: Errors, location_name: "Errors"))
    BatchDescribeEntitiesResponse.struct_class = Types::BatchDescribeEntitiesResponse

    BatchDescribeErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchDescribeErrorCodeString, location_name: "ErrorCode"))
    BatchDescribeErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: BatchDescribeErrorMessageContent, location_name: "ErrorMessage"))
    BatchDescribeErrorDetail.struct_class = Types::BatchDescribeErrorDetail

    CancelChangeSetRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location: "querystring", location_name: "catalog"))
    CancelChangeSetRequest.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "querystring", location_name: "changeSetId"))
    CancelChangeSetRequest.struct_class = Types::CancelChangeSetRequest

    CancelChangeSetResponse.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ChangeSetId"))
    CancelChangeSetResponse.add_member(:change_set_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ChangeSetArn"))
    CancelChangeSetResponse.struct_class = Types::CancelChangeSetResponse

    Change.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, required: true, location_name: "ChangeType"))
    Change.add_member(:entity, Shapes::ShapeRef.new(shape: Entity, required: true, location_name: "Entity"))
    Change.add_member(:entity_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "EntityTags"))
    Change.add_member(:details, Shapes::ShapeRef.new(shape: Json, location_name: "Details"))
    Change.add_member(:details_document, Shapes::ShapeRef.new(shape: JsonDocumentType, location_name: "DetailsDocument"))
    Change.add_member(:change_name, Shapes::ShapeRef.new(shape: ChangeName, location_name: "ChangeName"))
    Change.struct_class = Types::Change

    ChangeSetDescription.member = Shapes::ShapeRef.new(shape: ChangeSummary)

    ChangeSetSummaryList.member = Shapes::ShapeRef.new(shape: ChangeSetSummaryListItem)

    ChangeSetSummaryListItem.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ChangeSetId"))
    ChangeSetSummaryListItem.add_member(:change_set_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ChangeSetArn"))
    ChangeSetSummaryListItem.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetName, location_name: "ChangeSetName"))
    ChangeSetSummaryListItem.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "StartTime"))
    ChangeSetSummaryListItem.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "EndTime"))
    ChangeSetSummaryListItem.add_member(:status, Shapes::ShapeRef.new(shape: ChangeStatus, location_name: "Status"))
    ChangeSetSummaryListItem.add_member(:entity_id_list, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "EntityIdList"))
    ChangeSetSummaryListItem.add_member(:failure_code, Shapes::ShapeRef.new(shape: FailureCode, location_name: "FailureCode"))
    ChangeSetSummaryListItem.struct_class = Types::ChangeSetSummaryListItem

    ChangeSummary.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "ChangeType"))
    ChangeSummary.add_member(:entity, Shapes::ShapeRef.new(shape: Entity, location_name: "Entity"))
    ChangeSummary.add_member(:details, Shapes::ShapeRef.new(shape: Json, location_name: "Details"))
    ChangeSummary.add_member(:details_document, Shapes::ShapeRef.new(shape: JsonDocumentType, location_name: "DetailsDocument"))
    ChangeSummary.add_member(:error_detail_list, Shapes::ShapeRef.new(shape: ErrorDetailList, location_name: "ErrorDetailList"))
    ChangeSummary.add_member(:change_name, Shapes::ShapeRef.new(shape: ChangeName, location_name: "ChangeName"))
    ChangeSummary.struct_class = Types::ChangeSummary

    ContainerProductEntityIdFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ContainerProductEntityIdFilterValueList, location_name: "ValueList"))
    ContainerProductEntityIdFilter.struct_class = Types::ContainerProductEntityIdFilter

    ContainerProductEntityIdFilterValueList.member = Shapes::ShapeRef.new(shape: ContainerProductEntityIdString)

    ContainerProductFilters.add_member(:entity_id, Shapes::ShapeRef.new(shape: ContainerProductEntityIdFilter, location_name: "EntityId"))
    ContainerProductFilters.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: ContainerProductLastModifiedDateFilter, location_name: "LastModifiedDate"))
    ContainerProductFilters.add_member(:product_title, Shapes::ShapeRef.new(shape: ContainerProductTitleFilter, location_name: "ProductTitle"))
    ContainerProductFilters.add_member(:visibility, Shapes::ShapeRef.new(shape: ContainerProductVisibilityFilter, location_name: "Visibility"))
    ContainerProductFilters.struct_class = Types::ContainerProductFilters

    ContainerProductLastModifiedDateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: ContainerProductLastModifiedDateFilterDateRange, location_name: "DateRange"))
    ContainerProductLastModifiedDateFilter.struct_class = Types::ContainerProductLastModifiedDateFilter

    ContainerProductLastModifiedDateFilterDateRange.add_member(:after_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AfterValue"))
    ContainerProductLastModifiedDateFilterDateRange.add_member(:before_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "BeforeValue"))
    ContainerProductLastModifiedDateFilterDateRange.struct_class = Types::ContainerProductLastModifiedDateFilterDateRange

    ContainerProductSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: ContainerProductSortBy, location_name: "SortBy"))
    ContainerProductSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ContainerProductSort.struct_class = Types::ContainerProductSort

    ContainerProductSummary.add_member(:product_title, Shapes::ShapeRef.new(shape: ContainerProductTitleString, location_name: "ProductTitle"))
    ContainerProductSummary.add_member(:visibility, Shapes::ShapeRef.new(shape: ContainerProductVisibilityString, location_name: "Visibility"))
    ContainerProductSummary.struct_class = Types::ContainerProductSummary

    ContainerProductTitleFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ContainerProductTitleFilterValueList, location_name: "ValueList"))
    ContainerProductTitleFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: ContainerProductTitleString, location_name: "WildCardValue"))
    ContainerProductTitleFilter.struct_class = Types::ContainerProductTitleFilter

    ContainerProductTitleFilterValueList.member = Shapes::ShapeRef.new(shape: ContainerProductTitleString)

    ContainerProductVisibilityFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ContainerProductVisibilityFilterValueList, location_name: "ValueList"))
    ContainerProductVisibilityFilter.struct_class = Types::ContainerProductVisibilityFilter

    ContainerProductVisibilityFilterValueList.member = Shapes::ShapeRef.new(shape: ContainerProductVisibilityString)

    DataProductEntityIdFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: DataProductEntityIdFilterValueList, location_name: "ValueList"))
    DataProductEntityIdFilter.struct_class = Types::DataProductEntityIdFilter

    DataProductEntityIdFilterValueList.member = Shapes::ShapeRef.new(shape: DataProductEntityIdString)

    DataProductFilters.add_member(:entity_id, Shapes::ShapeRef.new(shape: DataProductEntityIdFilter, location_name: "EntityId"))
    DataProductFilters.add_member(:product_title, Shapes::ShapeRef.new(shape: DataProductTitleFilter, location_name: "ProductTitle"))
    DataProductFilters.add_member(:visibility, Shapes::ShapeRef.new(shape: DataProductVisibilityFilter, location_name: "Visibility"))
    DataProductFilters.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DataProductLastModifiedDateFilter, location_name: "LastModifiedDate"))
    DataProductFilters.struct_class = Types::DataProductFilters

    DataProductLastModifiedDateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: DataProductLastModifiedDateFilterDateRange, location_name: "DateRange"))
    DataProductLastModifiedDateFilter.struct_class = Types::DataProductLastModifiedDateFilter

    DataProductLastModifiedDateFilterDateRange.add_member(:after_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AfterValue"))
    DataProductLastModifiedDateFilterDateRange.add_member(:before_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "BeforeValue"))
    DataProductLastModifiedDateFilterDateRange.struct_class = Types::DataProductLastModifiedDateFilterDateRange

    DataProductSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: DataProductSortBy, location_name: "SortBy"))
    DataProductSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    DataProductSort.struct_class = Types::DataProductSort

    DataProductSummary.add_member(:product_title, Shapes::ShapeRef.new(shape: DataProductTitleString, location_name: "ProductTitle"))
    DataProductSummary.add_member(:visibility, Shapes::ShapeRef.new(shape: DataProductVisibilityString, location_name: "Visibility"))
    DataProductSummary.struct_class = Types::DataProductSummary

    DataProductTitleFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: DataProductTitleFilterValueList, location_name: "ValueList"))
    DataProductTitleFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: DataProductTitleString, location_name: "WildCardValue"))
    DataProductTitleFilter.struct_class = Types::DataProductTitleFilter

    DataProductTitleFilterValueList.member = Shapes::ShapeRef.new(shape: DataProductTitleString)

    DataProductVisibilityFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: DataProductVisibilityFilterValueList, location_name: "ValueList"))
    DataProductVisibilityFilter.struct_class = Types::DataProductVisibilityFilter

    DataProductVisibilityFilterValueList.member = Shapes::ShapeRef.new(shape: DataProductVisibilityString)

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "querystring", location_name: "resourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DescribeChangeSetRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location: "querystring", location_name: "catalog"))
    DescribeChangeSetRequest.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "querystring", location_name: "changeSetId"))
    DescribeChangeSetRequest.struct_class = Types::DescribeChangeSetRequest

    DescribeChangeSetResponse.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ChangeSetId"))
    DescribeChangeSetResponse.add_member(:change_set_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ChangeSetArn"))
    DescribeChangeSetResponse.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetName, location_name: "ChangeSetName"))
    DescribeChangeSetResponse.add_member(:intent, Shapes::ShapeRef.new(shape: Intent, location_name: "Intent"))
    DescribeChangeSetResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "StartTime"))
    DescribeChangeSetResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "EndTime"))
    DescribeChangeSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: ChangeStatus, location_name: "Status"))
    DescribeChangeSetResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: FailureCode, location_name: "FailureCode"))
    DescribeChangeSetResponse.add_member(:failure_description, Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: "FailureDescription"))
    DescribeChangeSetResponse.add_member(:change_set, Shapes::ShapeRef.new(shape: ChangeSetDescription, location_name: "ChangeSet"))
    DescribeChangeSetResponse.struct_class = Types::DescribeChangeSetResponse

    DescribeEntityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location: "querystring", location_name: "catalog"))
    DescribeEntityRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "querystring", location_name: "entityId"))
    DescribeEntityRequest.struct_class = Types::DescribeEntityRequest

    DescribeEntityResponse.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, location_name: "EntityType"))
    DescribeEntityResponse.add_member(:entity_identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "EntityIdentifier"))
    DescribeEntityResponse.add_member(:entity_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EntityArn"))
    DescribeEntityResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "LastModifiedDate"))
    DescribeEntityResponse.add_member(:details, Shapes::ShapeRef.new(shape: Json, location_name: "Details"))
    DescribeEntityResponse.add_member(:details_document, Shapes::ShapeRef.new(shape: JsonDocumentType, location_name: "DetailsDocument"))
    DescribeEntityResponse.struct_class = Types::DescribeEntityResponse

    Entity.add_member(:type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "Type"))
    Entity.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "Identifier"))
    Entity.struct_class = Types::Entity

    EntityDetail.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, location_name: "EntityType"))
    EntityDetail.add_member(:entity_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EntityArn"))
    EntityDetail.add_member(:entity_identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "EntityIdentifier"))
    EntityDetail.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "LastModifiedDate"))
    EntityDetail.add_member(:details_document, Shapes::ShapeRef.new(shape: JsonDocumentType, location_name: "DetailsDocument"))
    EntityDetail.struct_class = Types::EntityDetail

    EntityDetails.key = Shapes::ShapeRef.new(shape: EntityId)
    EntityDetails.value = Shapes::ShapeRef.new(shape: EntityDetail)

    EntityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    EntityRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "EntityId"))
    EntityRequest.struct_class = Types::EntityRequest

    EntityRequestList.member = Shapes::ShapeRef.new(shape: EntityRequest)

    EntitySummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityNameString, location_name: "Name"))
    EntitySummary.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, location_name: "EntityType"))
    EntitySummary.add_member(:entity_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "EntityId"))
    EntitySummary.add_member(:entity_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EntityArn"))
    EntitySummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "LastModifiedDate"))
    EntitySummary.add_member(:visibility, Shapes::ShapeRef.new(shape: VisibilityValue, location_name: "Visibility"))
    EntitySummary.add_member(:ami_product_summary, Shapes::ShapeRef.new(shape: AmiProductSummary, location_name: "AmiProductSummary"))
    EntitySummary.add_member(:container_product_summary, Shapes::ShapeRef.new(shape: ContainerProductSummary, location_name: "ContainerProductSummary"))
    EntitySummary.add_member(:data_product_summary, Shapes::ShapeRef.new(shape: DataProductSummary, location_name: "DataProductSummary"))
    EntitySummary.add_member(:saa_s_product_summary, Shapes::ShapeRef.new(shape: SaaSProductSummary, location_name: "SaaSProductSummary"))
    EntitySummary.add_member(:offer_summary, Shapes::ShapeRef.new(shape: OfferSummary, location_name: "OfferSummary"))
    EntitySummary.add_member(:resale_authorization_summary, Shapes::ShapeRef.new(shape: ResaleAuthorizationSummary, location_name: "ResaleAuthorizationSummary"))
    EntitySummary.struct_class = Types::EntitySummary

    EntitySummaryList.member = Shapes::ShapeRef.new(shape: EntitySummary)

    EntityTypeFilters.add_member(:data_product_filters, Shapes::ShapeRef.new(shape: DataProductFilters, location_name: "DataProductFilters"))
    EntityTypeFilters.add_member(:saa_s_product_filters, Shapes::ShapeRef.new(shape: SaaSProductFilters, location_name: "SaaSProductFilters"))
    EntityTypeFilters.add_member(:ami_product_filters, Shapes::ShapeRef.new(shape: AmiProductFilters, location_name: "AmiProductFilters"))
    EntityTypeFilters.add_member(:offer_filters, Shapes::ShapeRef.new(shape: OfferFilters, location_name: "OfferFilters"))
    EntityTypeFilters.add_member(:container_product_filters, Shapes::ShapeRef.new(shape: ContainerProductFilters, location_name: "ContainerProductFilters"))
    EntityTypeFilters.add_member(:resale_authorization_filters, Shapes::ShapeRef.new(shape: ResaleAuthorizationFilters, location_name: "ResaleAuthorizationFilters"))
    EntityTypeFilters.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EntityTypeFilters.add_member_subclass(:data_product_filters, Types::EntityTypeFilters::DataProductFilters)
    EntityTypeFilters.add_member_subclass(:saa_s_product_filters, Types::EntityTypeFilters::SaaSProductFilters)
    EntityTypeFilters.add_member_subclass(:ami_product_filters, Types::EntityTypeFilters::AmiProductFilters)
    EntityTypeFilters.add_member_subclass(:offer_filters, Types::EntityTypeFilters::OfferFilters)
    EntityTypeFilters.add_member_subclass(:container_product_filters, Types::EntityTypeFilters::ContainerProductFilters)
    EntityTypeFilters.add_member_subclass(:resale_authorization_filters, Types::EntityTypeFilters::ResaleAuthorizationFilters)
    EntityTypeFilters.add_member_subclass(:unknown, Types::EntityTypeFilters::Unknown)
    EntityTypeFilters.struct_class = Types::EntityTypeFilters

    EntityTypeSort.add_member(:data_product_sort, Shapes::ShapeRef.new(shape: DataProductSort, location_name: "DataProductSort"))
    EntityTypeSort.add_member(:saa_s_product_sort, Shapes::ShapeRef.new(shape: SaaSProductSort, location_name: "SaaSProductSort"))
    EntityTypeSort.add_member(:ami_product_sort, Shapes::ShapeRef.new(shape: AmiProductSort, location_name: "AmiProductSort"))
    EntityTypeSort.add_member(:offer_sort, Shapes::ShapeRef.new(shape: OfferSort, location_name: "OfferSort"))
    EntityTypeSort.add_member(:container_product_sort, Shapes::ShapeRef.new(shape: ContainerProductSort, location_name: "ContainerProductSort"))
    EntityTypeSort.add_member(:resale_authorization_sort, Shapes::ShapeRef.new(shape: ResaleAuthorizationSort, location_name: "ResaleAuthorizationSort"))
    EntityTypeSort.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EntityTypeSort.add_member_subclass(:data_product_sort, Types::EntityTypeSort::DataProductSort)
    EntityTypeSort.add_member_subclass(:saa_s_product_sort, Types::EntityTypeSort::SaaSProductSort)
    EntityTypeSort.add_member_subclass(:ami_product_sort, Types::EntityTypeSort::AmiProductSort)
    EntityTypeSort.add_member_subclass(:offer_sort, Types::EntityTypeSort::OfferSort)
    EntityTypeSort.add_member_subclass(:container_product_sort, Types::EntityTypeSort::ContainerProductSort)
    EntityTypeSort.add_member_subclass(:resale_authorization_sort, Types::EntityTypeSort::ResaleAuthorizationSort)
    EntityTypeSort.add_member_subclass(:unknown, Types::EntityTypeSort::Unknown)
    EntityTypeSort.struct_class = Types::EntityTypeSort

    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCodeString, location_name: "ErrorCode"))
    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: "ErrorMessage"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ErrorDetailList.member = Shapes::ShapeRef.new(shape: ErrorDetail)

    Errors.key = Shapes::ShapeRef.new(shape: EntityId)
    Errors.value = Shapes::ShapeRef.new(shape: BatchDescribeErrorDetail)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "Name"))
    Filter.add_member(:value_list, Shapes::ShapeRef.new(shape: ValueList, location_name: "ValueList"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "querystring", location_name: "resourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyJson, location_name: "Policy"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    ListChangeSetsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ListChangeSetsRequest.add_member(:filter_list, Shapes::ShapeRef.new(shape: FilterList, location_name: "FilterList"))
    ListChangeSetsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location_name: "Sort"))
    ListChangeSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListChangeSetsMaxResultInteger, location_name: "MaxResults"))
    ListChangeSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChangeSetsRequest.struct_class = Types::ListChangeSetsRequest

    ListChangeSetsResponse.add_member(:change_set_summary_list, Shapes::ShapeRef.new(shape: ChangeSetSummaryList, location_name: "ChangeSetSummaryList"))
    ListChangeSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChangeSetsResponse.struct_class = Types::ListChangeSetsResponse

    ListEntitiesRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ListEntitiesRequest.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "EntityType"))
    ListEntitiesRequest.add_member(:filter_list, Shapes::ShapeRef.new(shape: FilterList, location_name: "FilterList"))
    ListEntitiesRequest.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location_name: "Sort"))
    ListEntitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEntitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEntitiesMaxResultInteger, location_name: "MaxResults"))
    ListEntitiesRequest.add_member(:ownership_type, Shapes::ShapeRef.new(shape: OwnershipType, location_name: "OwnershipType"))
    ListEntitiesRequest.add_member(:entity_type_filters, Shapes::ShapeRef.new(shape: EntityTypeFilters, location_name: "EntityTypeFilters"))
    ListEntitiesRequest.add_member(:entity_type_sort, Shapes::ShapeRef.new(shape: EntityTypeSort, location_name: "EntityTypeSort"))
    ListEntitiesRequest.struct_class = Types::ListEntitiesRequest

    ListEntitiesResponse.add_member(:entity_summary_list, Shapes::ShapeRef.new(shape: EntitySummaryList, location_name: "EntitySummaryList"))
    ListEntitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEntitiesResponse.struct_class = Types::ListEntitiesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceArn"))
    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OfferAvailabilityEndDateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: OfferAvailabilityEndDateFilterDateRange, location_name: "DateRange"))
    OfferAvailabilityEndDateFilter.struct_class = Types::OfferAvailabilityEndDateFilter

    OfferAvailabilityEndDateFilterDateRange.add_member(:after_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AfterValue"))
    OfferAvailabilityEndDateFilterDateRange.add_member(:before_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "BeforeValue"))
    OfferAvailabilityEndDateFilterDateRange.struct_class = Types::OfferAvailabilityEndDateFilterDateRange

    OfferBuyerAccountsFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: OfferBuyerAccountsFilterWildcard, location_name: "WildCardValue"))
    OfferBuyerAccountsFilter.struct_class = Types::OfferBuyerAccountsFilter

    OfferBuyerAccountsList.member = Shapes::ShapeRef.new(shape: OfferBuyerAccountsString)

    OfferEntityIdFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: OfferEntityIdFilterValueList, location_name: "ValueList"))
    OfferEntityIdFilter.struct_class = Types::OfferEntityIdFilter

    OfferEntityIdFilterValueList.member = Shapes::ShapeRef.new(shape: OfferEntityIdString)

    OfferFilters.add_member(:entity_id, Shapes::ShapeRef.new(shape: OfferEntityIdFilter, location_name: "EntityId"))
    OfferFilters.add_member(:name, Shapes::ShapeRef.new(shape: OfferNameFilter, location_name: "Name"))
    OfferFilters.add_member(:product_id, Shapes::ShapeRef.new(shape: OfferProductIdFilter, location_name: "ProductId"))
    OfferFilters.add_member(:resale_authorization_id, Shapes::ShapeRef.new(shape: OfferResaleAuthorizationIdFilter, location_name: "ResaleAuthorizationId"))
    OfferFilters.add_member(:release_date, Shapes::ShapeRef.new(shape: OfferReleaseDateFilter, location_name: "ReleaseDate"))
    OfferFilters.add_member(:availability_end_date, Shapes::ShapeRef.new(shape: OfferAvailabilityEndDateFilter, location_name: "AvailabilityEndDate"))
    OfferFilters.add_member(:buyer_accounts, Shapes::ShapeRef.new(shape: OfferBuyerAccountsFilter, location_name: "BuyerAccounts"))
    OfferFilters.add_member(:state, Shapes::ShapeRef.new(shape: OfferStateFilter, location_name: "State"))
    OfferFilters.add_member(:targeting, Shapes::ShapeRef.new(shape: OfferTargetingFilter, location_name: "Targeting"))
    OfferFilters.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: OfferLastModifiedDateFilter, location_name: "LastModifiedDate"))
    OfferFilters.struct_class = Types::OfferFilters

    OfferLastModifiedDateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: OfferLastModifiedDateFilterDateRange, location_name: "DateRange"))
    OfferLastModifiedDateFilter.struct_class = Types::OfferLastModifiedDateFilter

    OfferLastModifiedDateFilterDateRange.add_member(:after_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AfterValue"))
    OfferLastModifiedDateFilterDateRange.add_member(:before_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "BeforeValue"))
    OfferLastModifiedDateFilterDateRange.struct_class = Types::OfferLastModifiedDateFilterDateRange

    OfferNameFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: OfferNameFilterValueList, location_name: "ValueList"))
    OfferNameFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: OfferNameString, location_name: "WildCardValue"))
    OfferNameFilter.struct_class = Types::OfferNameFilter

    OfferNameFilterValueList.member = Shapes::ShapeRef.new(shape: OfferNameString)

    OfferProductIdFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: OfferProductIdFilterValueList, location_name: "ValueList"))
    OfferProductIdFilter.struct_class = Types::OfferProductIdFilter

    OfferProductIdFilterValueList.member = Shapes::ShapeRef.new(shape: OfferProductIdString)

    OfferReleaseDateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: OfferReleaseDateFilterDateRange, location_name: "DateRange"))
    OfferReleaseDateFilter.struct_class = Types::OfferReleaseDateFilter

    OfferReleaseDateFilterDateRange.add_member(:after_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AfterValue"))
    OfferReleaseDateFilterDateRange.add_member(:before_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "BeforeValue"))
    OfferReleaseDateFilterDateRange.struct_class = Types::OfferReleaseDateFilterDateRange

    OfferResaleAuthorizationIdFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: OfferResaleAuthorizationIdFilterValueList, location_name: "ValueList"))
    OfferResaleAuthorizationIdFilter.struct_class = Types::OfferResaleAuthorizationIdFilter

    OfferResaleAuthorizationIdFilterValueList.member = Shapes::ShapeRef.new(shape: OfferResaleAuthorizationIdString)

    OfferSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: OfferSortBy, location_name: "SortBy"))
    OfferSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    OfferSort.struct_class = Types::OfferSort

    OfferStateFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: OfferStateFilterValueList, location_name: "ValueList"))
    OfferStateFilter.struct_class = Types::OfferStateFilter

    OfferStateFilterValueList.member = Shapes::ShapeRef.new(shape: OfferStateString)

    OfferSummary.add_member(:name, Shapes::ShapeRef.new(shape: OfferNameString, location_name: "Name"))
    OfferSummary.add_member(:product_id, Shapes::ShapeRef.new(shape: OfferProductIdString, location_name: "ProductId"))
    OfferSummary.add_member(:resale_authorization_id, Shapes::ShapeRef.new(shape: OfferResaleAuthorizationIdString, location_name: "ResaleAuthorizationId"))
    OfferSummary.add_member(:release_date, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "ReleaseDate"))
    OfferSummary.add_member(:availability_end_date, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AvailabilityEndDate"))
    OfferSummary.add_member(:buyer_accounts, Shapes::ShapeRef.new(shape: OfferBuyerAccountsList, location_name: "BuyerAccounts"))
    OfferSummary.add_member(:state, Shapes::ShapeRef.new(shape: OfferStateString, location_name: "State"))
    OfferSummary.add_member(:targeting, Shapes::ShapeRef.new(shape: OfferTargetingList, location_name: "Targeting"))
    OfferSummary.struct_class = Types::OfferSummary

    OfferTargetingFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: OfferTargetingFilterValueList, location_name: "ValueList"))
    OfferTargetingFilter.struct_class = Types::OfferTargetingFilter

    OfferTargetingFilterValueList.member = Shapes::ShapeRef.new(shape: OfferTargetingString)

    OfferTargetingList.member = Shapes::ShapeRef.new(shape: OfferTargetingString)

    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceArn"))
    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyJson, required: true, location_name: "Policy"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    RequestedChangeList.member = Shapes::ShapeRef.new(shape: Change)

    ResaleAuthorizationAvailabilityEndDateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: ResaleAuthorizationAvailabilityEndDateFilterDateRange, location_name: "DateRange"))
    ResaleAuthorizationAvailabilityEndDateFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationAvailabilityEndDateFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationAvailabilityEndDateFilter.struct_class = Types::ResaleAuthorizationAvailabilityEndDateFilter

    ResaleAuthorizationAvailabilityEndDateFilterDateRange.add_member(:after_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AfterValue"))
    ResaleAuthorizationAvailabilityEndDateFilterDateRange.add_member(:before_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "BeforeValue"))
    ResaleAuthorizationAvailabilityEndDateFilterDateRange.struct_class = Types::ResaleAuthorizationAvailabilityEndDateFilterDateRange

    ResaleAuthorizationAvailabilityEndDateFilterValueList.member = Shapes::ShapeRef.new(shape: DateTimeISO8601)

    ResaleAuthorizationCreatedDateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: ResaleAuthorizationCreatedDateFilterDateRange, location_name: "DateRange"))
    ResaleAuthorizationCreatedDateFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationCreatedDateFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationCreatedDateFilter.struct_class = Types::ResaleAuthorizationCreatedDateFilter

    ResaleAuthorizationCreatedDateFilterDateRange.add_member(:after_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AfterValue"))
    ResaleAuthorizationCreatedDateFilterDateRange.add_member(:before_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "BeforeValue"))
    ResaleAuthorizationCreatedDateFilterDateRange.struct_class = Types::ResaleAuthorizationCreatedDateFilterDateRange

    ResaleAuthorizationCreatedDateFilterValueList.member = Shapes::ShapeRef.new(shape: DateTimeISO8601)

    ResaleAuthorizationEntityIdFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationEntityIdFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationEntityIdFilter.struct_class = Types::ResaleAuthorizationEntityIdFilter

    ResaleAuthorizationEntityIdFilterValueList.member = Shapes::ShapeRef.new(shape: ResaleAuthorizationEntityIdString)

    ResaleAuthorizationFilters.add_member(:entity_id, Shapes::ShapeRef.new(shape: ResaleAuthorizationEntityIdFilter, location_name: "EntityId"))
    ResaleAuthorizationFilters.add_member(:name, Shapes::ShapeRef.new(shape: ResaleAuthorizationNameFilter, location_name: "Name"))
    ResaleAuthorizationFilters.add_member(:product_id, Shapes::ShapeRef.new(shape: ResaleAuthorizationProductIdFilter, location_name: "ProductId"))
    ResaleAuthorizationFilters.add_member(:created_date, Shapes::ShapeRef.new(shape: ResaleAuthorizationCreatedDateFilter, location_name: "CreatedDate"))
    ResaleAuthorizationFilters.add_member(:availability_end_date, Shapes::ShapeRef.new(shape: ResaleAuthorizationAvailabilityEndDateFilter, location_name: "AvailabilityEndDate"))
    ResaleAuthorizationFilters.add_member(:manufacturer_account_id, Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerAccountIdFilter, location_name: "ManufacturerAccountId"))
    ResaleAuthorizationFilters.add_member(:product_name, Shapes::ShapeRef.new(shape: ResaleAuthorizationProductNameFilter, location_name: "ProductName"))
    ResaleAuthorizationFilters.add_member(:manufacturer_legal_name, Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerLegalNameFilter, location_name: "ManufacturerLegalName"))
    ResaleAuthorizationFilters.add_member(:reseller_account_id, Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerAccountIDFilter, location_name: "ResellerAccountID"))
    ResaleAuthorizationFilters.add_member(:reseller_legal_name, Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerLegalNameFilter, location_name: "ResellerLegalName"))
    ResaleAuthorizationFilters.add_member(:status, Shapes::ShapeRef.new(shape: ResaleAuthorizationStatusFilter, location_name: "Status"))
    ResaleAuthorizationFilters.add_member(:offer_extended_status, Shapes::ShapeRef.new(shape: ResaleAuthorizationOfferExtendedStatusFilter, location_name: "OfferExtendedStatus"))
    ResaleAuthorizationFilters.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: ResaleAuthorizationLastModifiedDateFilter, location_name: "LastModifiedDate"))
    ResaleAuthorizationFilters.struct_class = Types::ResaleAuthorizationFilters

    ResaleAuthorizationLastModifiedDateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: ResaleAuthorizationLastModifiedDateFilterDateRange, location_name: "DateRange"))
    ResaleAuthorizationLastModifiedDateFilter.struct_class = Types::ResaleAuthorizationLastModifiedDateFilter

    ResaleAuthorizationLastModifiedDateFilterDateRange.add_member(:after_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AfterValue"))
    ResaleAuthorizationLastModifiedDateFilterDateRange.add_member(:before_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "BeforeValue"))
    ResaleAuthorizationLastModifiedDateFilterDateRange.struct_class = Types::ResaleAuthorizationLastModifiedDateFilterDateRange

    ResaleAuthorizationManufacturerAccountIdFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerAccountIdFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationManufacturerAccountIdFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerAccountIdFilterWildcard, location_name: "WildCardValue"))
    ResaleAuthorizationManufacturerAccountIdFilter.struct_class = Types::ResaleAuthorizationManufacturerAccountIdFilter

    ResaleAuthorizationManufacturerAccountIdFilterValueList.member = Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerAccountIdString)

    ResaleAuthorizationManufacturerLegalNameFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerLegalNameFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationManufacturerLegalNameFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerLegalNameFilterWildcard, location_name: "WildCardValue"))
    ResaleAuthorizationManufacturerLegalNameFilter.struct_class = Types::ResaleAuthorizationManufacturerLegalNameFilter

    ResaleAuthorizationManufacturerLegalNameFilterValueList.member = Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerLegalNameString)

    ResaleAuthorizationNameFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationNameFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationNameFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: ResaleAuthorizationNameFilterWildcard, location_name: "WildCardValue"))
    ResaleAuthorizationNameFilter.struct_class = Types::ResaleAuthorizationNameFilter

    ResaleAuthorizationNameFilterValueList.member = Shapes::ShapeRef.new(shape: ResaleAuthorizationNameString)

    ResaleAuthorizationOfferExtendedStatusFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationOfferExtendedStatusFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationOfferExtendedStatusFilter.struct_class = Types::ResaleAuthorizationOfferExtendedStatusFilter

    ResaleAuthorizationOfferExtendedStatusFilterValueList.member = Shapes::ShapeRef.new(shape: ResaleAuthorizationOfferExtendedStatusString)

    ResaleAuthorizationProductIdFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationProductIdFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationProductIdFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: ResaleAuthorizationProductIdFilterWildcard, location_name: "WildCardValue"))
    ResaleAuthorizationProductIdFilter.struct_class = Types::ResaleAuthorizationProductIdFilter

    ResaleAuthorizationProductIdFilterValueList.member = Shapes::ShapeRef.new(shape: ResaleAuthorizationProductIdString)

    ResaleAuthorizationProductNameFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationProductNameFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationProductNameFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: ResaleAuthorizationProductNameFilterWildcard, location_name: "WildCardValue"))
    ResaleAuthorizationProductNameFilter.struct_class = Types::ResaleAuthorizationProductNameFilter

    ResaleAuthorizationProductNameFilterValueList.member = Shapes::ShapeRef.new(shape: ResaleAuthorizationProductNameString)

    ResaleAuthorizationResellerAccountIDFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerAccountIDFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationResellerAccountIDFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerAccountIDFilterWildcard, location_name: "WildCardValue"))
    ResaleAuthorizationResellerAccountIDFilter.struct_class = Types::ResaleAuthorizationResellerAccountIDFilter

    ResaleAuthorizationResellerAccountIDFilterValueList.member = Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerAccountIDString)

    ResaleAuthorizationResellerLegalNameFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerLegalNameFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationResellerLegalNameFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerLegalNameFilterWildcard, location_name: "WildCardValue"))
    ResaleAuthorizationResellerLegalNameFilter.struct_class = Types::ResaleAuthorizationResellerLegalNameFilter

    ResaleAuthorizationResellerLegalNameFilterValueList.member = Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerLegalNameString)

    ResaleAuthorizationSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: ResaleAuthorizationSortBy, location_name: "SortBy"))
    ResaleAuthorizationSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ResaleAuthorizationSort.struct_class = Types::ResaleAuthorizationSort

    ResaleAuthorizationStatusFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: ResaleAuthorizationStatusFilterValueList, location_name: "ValueList"))
    ResaleAuthorizationStatusFilter.struct_class = Types::ResaleAuthorizationStatusFilter

    ResaleAuthorizationStatusFilterValueList.member = Shapes::ShapeRef.new(shape: ResaleAuthorizationStatusString)

    ResaleAuthorizationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResaleAuthorizationNameString, location_name: "Name"))
    ResaleAuthorizationSummary.add_member(:product_id, Shapes::ShapeRef.new(shape: ResaleAuthorizationProductIdString, location_name: "ProductId"))
    ResaleAuthorizationSummary.add_member(:product_name, Shapes::ShapeRef.new(shape: ResaleAuthorizationProductNameString, location_name: "ProductName"))
    ResaleAuthorizationSummary.add_member(:manufacturer_account_id, Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerAccountIdString, location_name: "ManufacturerAccountId"))
    ResaleAuthorizationSummary.add_member(:manufacturer_legal_name, Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerLegalNameString, location_name: "ManufacturerLegalName"))
    ResaleAuthorizationSummary.add_member(:reseller_account_id, Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerAccountIDString, location_name: "ResellerAccountID"))
    ResaleAuthorizationSummary.add_member(:reseller_legal_name, Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerLegalNameString, location_name: "ResellerLegalName"))
    ResaleAuthorizationSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResaleAuthorizationStatusString, location_name: "Status"))
    ResaleAuthorizationSummary.add_member(:offer_extended_status, Shapes::ShapeRef.new(shape: ResaleAuthorizationOfferExtendedStatusString, location_name: "OfferExtendedStatus"))
    ResaleAuthorizationSummary.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "CreatedDate"))
    ResaleAuthorizationSummary.add_member(:availability_end_date, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AvailabilityEndDate"))
    ResaleAuthorizationSummary.struct_class = Types::ResaleAuthorizationSummary

    ResourceIdList.member = Shapes::ShapeRef.new(shape: ResourceId)

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceNotSupportedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: "Message"))
    ResourceNotSupportedException.struct_class = Types::ResourceNotSupportedException

    SaaSProductEntityIdFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: SaaSProductEntityIdFilterValueList, location_name: "ValueList"))
    SaaSProductEntityIdFilter.struct_class = Types::SaaSProductEntityIdFilter

    SaaSProductEntityIdFilterValueList.member = Shapes::ShapeRef.new(shape: SaaSProductEntityIdString)

    SaaSProductFilters.add_member(:entity_id, Shapes::ShapeRef.new(shape: SaaSProductEntityIdFilter, location_name: "EntityId"))
    SaaSProductFilters.add_member(:product_title, Shapes::ShapeRef.new(shape: SaaSProductTitleFilter, location_name: "ProductTitle"))
    SaaSProductFilters.add_member(:visibility, Shapes::ShapeRef.new(shape: SaaSProductVisibilityFilter, location_name: "Visibility"))
    SaaSProductFilters.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: SaaSProductLastModifiedDateFilter, location_name: "LastModifiedDate"))
    SaaSProductFilters.struct_class = Types::SaaSProductFilters

    SaaSProductLastModifiedDateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: SaaSProductLastModifiedDateFilterDateRange, location_name: "DateRange"))
    SaaSProductLastModifiedDateFilter.struct_class = Types::SaaSProductLastModifiedDateFilter

    SaaSProductLastModifiedDateFilterDateRange.add_member(:after_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "AfterValue"))
    SaaSProductLastModifiedDateFilterDateRange.add_member(:before_value, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "BeforeValue"))
    SaaSProductLastModifiedDateFilterDateRange.struct_class = Types::SaaSProductLastModifiedDateFilterDateRange

    SaaSProductSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: SaaSProductSortBy, location_name: "SortBy"))
    SaaSProductSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    SaaSProductSort.struct_class = Types::SaaSProductSort

    SaaSProductSummary.add_member(:product_title, Shapes::ShapeRef.new(shape: SaaSProductTitleString, location_name: "ProductTitle"))
    SaaSProductSummary.add_member(:visibility, Shapes::ShapeRef.new(shape: SaaSProductVisibilityString, location_name: "Visibility"))
    SaaSProductSummary.struct_class = Types::SaaSProductSummary

    SaaSProductTitleFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: SaaSProductTitleFilterValueList, location_name: "ValueList"))
    SaaSProductTitleFilter.add_member(:wild_card_value, Shapes::ShapeRef.new(shape: SaaSProductTitleString, location_name: "WildCardValue"))
    SaaSProductTitleFilter.struct_class = Types::SaaSProductTitleFilter

    SaaSProductTitleFilterValueList.member = Shapes::ShapeRef.new(shape: SaaSProductTitleString)

    SaaSProductVisibilityFilter.add_member(:value_list, Shapes::ShapeRef.new(shape: SaaSProductVisibilityFilterValueList, location_name: "ValueList"))
    SaaSProductVisibilityFilter.struct_class = Types::SaaSProductVisibilityFilter

    SaaSProductVisibilityFilterValueList.member = Shapes::ShapeRef.new(shape: SaaSProductVisibilityString)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Sort.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    Sort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    Sort.struct_class = Types::Sort

    StartChangeSetRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    StartChangeSetRequest.add_member(:change_set, Shapes::ShapeRef.new(shape: RequestedChangeList, required: true, location_name: "ChangeSet"))
    StartChangeSetRequest.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetName, location_name: "ChangeSetName"))
    StartChangeSetRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartChangeSetRequest.add_member(:change_set_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "ChangeSetTags"))
    StartChangeSetRequest.add_member(:intent, Shapes::ShapeRef.new(shape: Intent, location_name: "Intent"))
    StartChangeSetRequest.struct_class = Types::StartChangeSetRequest

    StartChangeSetResponse.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ChangeSetId"))
    StartChangeSetResponse.add_member(:change_set_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ChangeSetArn"))
    StartChangeSetResponse.struct_class = Types::StartChangeSetResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    ValueList.member = Shapes::ShapeRef.new(shape: FilterValueContent)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-09-17"

      api.metadata = {
        "apiVersion" => "2018-09-17",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "catalog.marketplace",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "AWS Marketplace Catalog",
        "serviceFullName" => "AWS Marketplace Catalog Service",
        "serviceId" => "Marketplace Catalog",
        "signatureVersion" => "v4",
        "signingName" => "aws-marketplace",
        "uid" => "marketplace-catalog-2018-09-17",
      }

      api.add_operation(:batch_describe_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDescribeEntities"
        o.http_method = "POST"
        o.http_request_uri = "/BatchDescribeEntities"
        o.input = Shapes::ShapeRef.new(shape: BatchDescribeEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDescribeEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:cancel_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelChangeSet"
        o.http_method = "PATCH"
        o.http_request_uri = "/CancelChangeSet"
        o.input = Shapes::ShapeRef.new(shape: CancelChangeSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelChangeSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/DeleteResourcePolicy"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChangeSet"
        o.http_method = "GET"
        o.http_request_uri = "/DescribeChangeSet"
        o.input = Shapes::ShapeRef.new(shape: DescribeChangeSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChangeSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_entity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEntity"
        o.http_method = "GET"
        o.http_request_uri = "/DescribeEntity"
        o.input = Shapes::ShapeRef.new(shape: DescribeEntityRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEntityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/GetResourcePolicy"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_change_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChangeSets"
        o.http_method = "POST"
        o.http_request_uri = "/ListChangeSets"
        o.input = Shapes::ShapeRef.new(shape: ListChangeSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChangeSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntities"
        o.http_method = "POST"
        o.http_request_uri = "/ListEntities"
        o.input = Shapes::ShapeRef.new(shape: ListEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/ListTagsForResource"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/PutResourcePolicy"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/StartChangeSet"
        o.input = Shapes::ShapeRef.new(shape: StartChangeSetRequest)
        o.output = Shapes::ShapeRef.new(shape: StartChangeSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/TagResource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/UntagResource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
