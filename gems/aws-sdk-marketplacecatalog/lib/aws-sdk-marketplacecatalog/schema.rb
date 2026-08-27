# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceCatalog
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ARN", name: "ARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:*/-]+$"})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmiProductEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductEntityIdFilter", name: "AmiProductEntityIdFilter")
    AmiProductEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductEntityIdFilterValueList", name: "AmiProductEntityIdFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AmiProductEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductEntityIdString", name: "AmiProductEntityIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    AmiProductFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductFilters", name: "AmiProductFilters")
    AmiProductLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductLastModifiedDateFilter", name: "AmiProductLastModifiedDateFilter")
    AmiProductLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductLastModifiedDateFilterDateRange", name: "AmiProductLastModifiedDateFilterDateRange")
    AmiProductSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductSort", name: "AmiProductSort")
    AmiProductSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductSortBy", name: "AmiProductSortBy")
    AmiProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductSummary", name: "AmiProductSummary")
    AmiProductTitleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductTitleFilter", name: "AmiProductTitleFilter")
    AmiProductTitleFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductTitleFilterValueList", name: "AmiProductTitleFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AmiProductTitleString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductTitleString", name: "AmiProductTitleString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    AmiProductVisibilityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductVisibilityFilter", name: "AmiProductVisibilityFilter")
    AmiProductVisibilityFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductVisibilityFilterValueList", name: "AmiProductVisibilityFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AmiProductVisibilityString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#AmiProductVisibilityString", name: "AmiProductVisibilityString")
    BatchDescribeEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#BatchDescribeEntitiesRequest", name: "BatchDescribeEntitiesRequest")
    BatchDescribeEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#BatchDescribeEntitiesResponse", name: "BatchDescribeEntitiesResponse")
    BatchDescribeErrorCodeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#BatchDescribeErrorCodeString", name: "BatchDescribeErrorCodeString", traits: {"smithy.api#length" => {"min" => 1, "max" => 72}, "smithy.api#pattern" => "^[a-zA-Z_]+$"})
    BatchDescribeErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#BatchDescribeErrorDetail", name: "BatchDescribeErrorDetail")
    BatchDescribeErrorMessageContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#BatchDescribeErrorMessageContent", name: "BatchDescribeErrorMessageContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(.)+$"})
    CancelChangeSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#CancelChangeSetRequest", name: "CancelChangeSetRequest")
    CancelChangeSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#CancelChangeSetResponse", name: "CancelChangeSetResponse")
    Catalog = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#Catalog", name: "Catalog", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    Change = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#Change", name: "Change")
    ChangeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ChangeName", name: "ChangeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 72}, "smithy.api#pattern" => "^[a-zA-Z]$"})
    ChangeSetDescription = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ChangeSetDescription", name: "ChangeSetDescription")
    ChangeSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ChangeSetName", name: "ChangeSetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\w\\s+=.:@-]+$"})
    ChangeSetSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ChangeSetSummaryList", name: "ChangeSetSummaryList")
    ChangeSetSummaryListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ChangeSetSummaryListItem", name: "ChangeSetSummaryListItem")
    ChangeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#ChangeStatus", name: "ChangeStatus")
    ChangeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ChangeSummary", name: "ChangeSummary")
    ChangeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ChangeType", name: "ChangeType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Z][\\w]*$"})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    ContainerProductEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductEntityIdFilter", name: "ContainerProductEntityIdFilter")
    ContainerProductEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductEntityIdFilterValueList", name: "ContainerProductEntityIdFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ContainerProductEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductEntityIdString", name: "ContainerProductEntityIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    ContainerProductFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductFilters", name: "ContainerProductFilters")
    ContainerProductLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductLastModifiedDateFilter", name: "ContainerProductLastModifiedDateFilter")
    ContainerProductLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductLastModifiedDateFilterDateRange", name: "ContainerProductLastModifiedDateFilterDateRange")
    ContainerProductSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductSort", name: "ContainerProductSort")
    ContainerProductSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductSortBy", name: "ContainerProductSortBy")
    ContainerProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductSummary", name: "ContainerProductSummary")
    ContainerProductTitleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductTitleFilter", name: "ContainerProductTitleFilter")
    ContainerProductTitleFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductTitleFilterValueList", name: "ContainerProductTitleFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ContainerProductTitleString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductTitleString", name: "ContainerProductTitleString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ContainerProductVisibilityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductVisibilityFilter", name: "ContainerProductVisibilityFilter")
    ContainerProductVisibilityFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductVisibilityFilterValueList", name: "ContainerProductVisibilityFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ContainerProductVisibilityString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#ContainerProductVisibilityString", name: "ContainerProductVisibilityString")
    DataProductEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DataProductEntityIdFilter", name: "DataProductEntityIdFilter")
    DataProductEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#DataProductEntityIdFilterValueList", name: "DataProductEntityIdFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DataProductEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#DataProductEntityIdString", name: "DataProductEntityIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    DataProductFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DataProductFilters", name: "DataProductFilters")
    DataProductLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DataProductLastModifiedDateFilter", name: "DataProductLastModifiedDateFilter")
    DataProductLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DataProductLastModifiedDateFilterDateRange", name: "DataProductLastModifiedDateFilterDateRange")
    DataProductSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DataProductSort", name: "DataProductSort")
    DataProductSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#DataProductSortBy", name: "DataProductSortBy")
    DataProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DataProductSummary", name: "DataProductSummary")
    DataProductTitleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DataProductTitleFilter", name: "DataProductTitleFilter")
    DataProductTitleFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#DataProductTitleFilterValueList", name: "DataProductTitleFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DataProductTitleString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#DataProductTitleString", name: "DataProductTitleString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    DataProductVisibilityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DataProductVisibilityFilter", name: "DataProductVisibilityFilter")
    DataProductVisibilityFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#DataProductVisibilityFilterValueList", name: "DataProductVisibilityFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DataProductVisibilityString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#DataProductVisibilityString", name: "DataProductVisibilityString")
    DateTimeISO8601 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#DateTimeISO8601", name: "DateTimeISO8601", traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^([\\d]{4})\\-(1[0-2]|0[1-9])\\-(3[01]|0[1-9]|[12][\\d])T(2[0-3]|[01][\\d]):([0-5][\\d]):([0-5][\\d])Z$"})
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DescribeChangeSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DescribeChangeSetRequest", name: "DescribeChangeSetRequest")
    DescribeChangeSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DescribeChangeSetResponse", name: "DescribeChangeSetResponse")
    DescribeEntityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DescribeEntityRequest", name: "DescribeEntityRequest")
    DescribeEntityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#DescribeEntityResponse", name: "DescribeEntityResponse")
    Entity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#Entity", name: "Entity")
    EntityDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#EntityDetail", name: "EntityDetail")
    EntityDetails = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.marketplacecatalog#EntityDetails", name: "EntityDetails")
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#EntityId", name: "EntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    EntityNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#EntityNameString", name: "EntityNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\\\S+[\\\\S\\\\s]*$"})
    EntityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#EntityRequest", name: "EntityRequest")
    EntityRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#EntityRequestList", name: "EntityRequestList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    EntitySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#EntitySummary", name: "EntitySummary")
    EntitySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#EntitySummaryList", name: "EntitySummaryList")
    EntityType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#EntityType", name: "EntityType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    EntityTypeFilters = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplacecatalog#EntityTypeFilters", name: "EntityTypeFilters")
    EntityTypeSort = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplacecatalog#EntityTypeSort", name: "EntityTypeSort")
    ErrorCodeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ErrorCodeString", name: "ErrorCodeString", traits: {"smithy.api#length" => {"min" => 1, "max" => 72}, "smithy.api#pattern" => "^[a-zA-Z_]+$"})
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ErrorDetail", name: "ErrorDetail")
    ErrorDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ErrorDetailList", name: "ErrorDetailList")
    Errors = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.marketplacecatalog#Errors", name: "Errors")
    ExceptionMessageContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ExceptionMessageContent", name: "ExceptionMessageContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(.)+$"})
    FailureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#FailureCode", name: "FailureCode")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#FilterList", name: "FilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#FilterName", name: "FilterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    FilterValueContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#FilterValueContent", name: "FilterValueContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-@]+$"})
    Intent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#Intent", name: "Intent")
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#InternalServiceException", name: "InternalServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Json = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#Json", name: "Json", traits: {"smithy.api#length" => {"min" => 2, "max" => 16384}, "smithy.api#pattern" => "^[\\s]*\\{[\\s\\S]*\\}[\\s]*$"})
    JsonDocumentType = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.marketplacecatalog#JsonDocumentType", name: "JsonDocumentType")
    ListChangeSetsMaxResultInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplacecatalog#ListChangeSetsMaxResultInteger", name: "ListChangeSetsMaxResultInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ListChangeSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ListChangeSetsRequest", name: "ListChangeSetsRequest")
    ListChangeSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ListChangeSetsResponse", name: "ListChangeSetsResponse")
    ListEntitiesMaxResultInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplacecatalog#ListEntitiesMaxResultInteger", name: "ListEntitiesMaxResultInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ListEntitiesRequest", name: "ListEntitiesRequest")
    ListEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ListEntitiesResponse", name: "ListEntitiesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MachineLearningProductEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductEntityIdFilter", name: "MachineLearningProductEntityIdFilter")
    MachineLearningProductEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductEntityIdFilterValueList", name: "MachineLearningProductEntityIdFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MachineLearningProductEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductEntityIdString", name: "MachineLearningProductEntityIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    MachineLearningProductFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductFilters", name: "MachineLearningProductFilters")
    MachineLearningProductLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductLastModifiedDateFilter", name: "MachineLearningProductLastModifiedDateFilter")
    MachineLearningProductLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductLastModifiedDateFilterDateRange", name: "MachineLearningProductLastModifiedDateFilterDateRange")
    MachineLearningProductSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductSort", name: "MachineLearningProductSort")
    MachineLearningProductSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductSortBy", name: "MachineLearningProductSortBy")
    MachineLearningProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductSummary", name: "MachineLearningProductSummary")
    MachineLearningProductTitleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductTitleFilter", name: "MachineLearningProductTitleFilter")
    MachineLearningProductTitleFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductTitleFilterValueList", name: "MachineLearningProductTitleFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MachineLearningProductTitleString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductTitleString", name: "MachineLearningProductTitleString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    MachineLearningProductVisibilityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductVisibilityFilter", name: "MachineLearningProductVisibilityFilter")
    MachineLearningProductVisibilityFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductVisibilityFilterValueList", name: "MachineLearningProductVisibilityFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MachineLearningProductVisibilityString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#MachineLearningProductVisibilityString", name: "MachineLearningProductVisibilityString")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\w+=.:@\\-\\/]$"})
    OfferAvailabilityEndDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferAvailabilityEndDateFilter", name: "OfferAvailabilityEndDateFilter")
    OfferAvailabilityEndDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferAvailabilityEndDateFilterDateRange", name: "OfferAvailabilityEndDateFilterDateRange")
    OfferBuyerAccountsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferBuyerAccountsFilter", name: "OfferBuyerAccountsFilter")
    OfferBuyerAccountsFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#OfferBuyerAccountsFilterWildcard", name: "OfferBuyerAccountsFilterWildcard", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    OfferBuyerAccountsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#OfferBuyerAccountsList", name: "OfferBuyerAccountsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 26}})
    OfferBuyerAccountsString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#OfferBuyerAccountsString", name: "OfferBuyerAccountsString", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    OfferEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferEntityIdFilter", name: "OfferEntityIdFilter")
    OfferEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#OfferEntityIdFilterValueList", name: "OfferEntityIdFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OfferEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#OfferEntityIdString", name: "OfferEntityIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    OfferFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferFilters", name: "OfferFilters")
    OfferLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferLastModifiedDateFilter", name: "OfferLastModifiedDateFilter")
    OfferLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferLastModifiedDateFilterDateRange", name: "OfferLastModifiedDateFilterDateRange")
    OfferNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferNameFilter", name: "OfferNameFilter")
    OfferNameFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#OfferNameFilterValueList", name: "OfferNameFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OfferNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#OfferNameString", name: "OfferNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^(.)+$"})
    OfferProductIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferProductIdFilter", name: "OfferProductIdFilter")
    OfferProductIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#OfferProductIdFilterValueList", name: "OfferProductIdFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OfferProductIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#OfferProductIdString", name: "OfferProductIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    OfferReleaseDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferReleaseDateFilter", name: "OfferReleaseDateFilter")
    OfferReleaseDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferReleaseDateFilterDateRange", name: "OfferReleaseDateFilterDateRange")
    OfferResaleAuthorizationIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferResaleAuthorizationIdFilter", name: "OfferResaleAuthorizationIdFilter")
    OfferResaleAuthorizationIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#OfferResaleAuthorizationIdFilterValueList", name: "OfferResaleAuthorizationIdFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OfferResaleAuthorizationIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#OfferResaleAuthorizationIdString", name: "OfferResaleAuthorizationIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    OfferSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferSort", name: "OfferSort")
    OfferSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#OfferSortBy", name: "OfferSortBy")
    OfferStateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferStateFilter", name: "OfferStateFilter")
    OfferStateFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#OfferStateFilterValueList", name: "OfferStateFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    OfferStateString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#OfferStateString", name: "OfferStateString")
    OfferSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferSummary", name: "OfferSummary")
    OfferTargetingFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#OfferTargetingFilter", name: "OfferTargetingFilter")
    OfferTargetingFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#OfferTargetingFilterValueList", name: "OfferTargetingFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    OfferTargetingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#OfferTargetingList", name: "OfferTargetingList", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    OfferTargetingString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#OfferTargetingString", name: "OfferTargetingString")
    OwnershipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#OwnershipType", name: "OwnershipType")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    RequestedChangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#RequestedChangeList", name: "RequestedChangeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ResaleAuthorizationAvailabilityEndDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationAvailabilityEndDateFilter", name: "ResaleAuthorizationAvailabilityEndDateFilter")
    ResaleAuthorizationAvailabilityEndDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationAvailabilityEndDateFilterDateRange", name: "ResaleAuthorizationAvailabilityEndDateFilterDateRange")
    ResaleAuthorizationAvailabilityEndDateFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationAvailabilityEndDateFilterValueList", name: "ResaleAuthorizationAvailabilityEndDateFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationCreatedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationCreatedDateFilter", name: "ResaleAuthorizationCreatedDateFilter")
    ResaleAuthorizationCreatedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationCreatedDateFilterDateRange", name: "ResaleAuthorizationCreatedDateFilterDateRange")
    ResaleAuthorizationCreatedDateFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationCreatedDateFilterValueList", name: "ResaleAuthorizationCreatedDateFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationEntityIdFilter", name: "ResaleAuthorizationEntityIdFilter")
    ResaleAuthorizationEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationEntityIdFilterValueList", name: "ResaleAuthorizationEntityIdFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationEntityIdString", name: "ResaleAuthorizationEntityIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    ResaleAuthorizationFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationFilters", name: "ResaleAuthorizationFilters")
    ResaleAuthorizationLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationLastModifiedDateFilter", name: "ResaleAuthorizationLastModifiedDateFilter")
    ResaleAuthorizationLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationLastModifiedDateFilterDateRange", name: "ResaleAuthorizationLastModifiedDateFilterDateRange")
    ResaleAuthorizationManufacturerAccountIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerAccountIdFilter", name: "ResaleAuthorizationManufacturerAccountIdFilter")
    ResaleAuthorizationManufacturerAccountIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerAccountIdFilterValueList", name: "ResaleAuthorizationManufacturerAccountIdFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationManufacturerAccountIdFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerAccountIdFilterWildcard", name: "ResaleAuthorizationManufacturerAccountIdFilterWildcard", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    ResaleAuthorizationManufacturerAccountIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerAccountIdString", name: "ResaleAuthorizationManufacturerAccountIdString", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    ResaleAuthorizationManufacturerLegalNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerLegalNameFilter", name: "ResaleAuthorizationManufacturerLegalNameFilter")
    ResaleAuthorizationManufacturerLegalNameFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerLegalNameFilterValueList", name: "ResaleAuthorizationManufacturerLegalNameFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationManufacturerLegalNameFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerLegalNameFilterWildcard", name: "ResaleAuthorizationManufacturerLegalNameFilterWildcard", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationManufacturerLegalNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerLegalNameString", name: "ResaleAuthorizationManufacturerLegalNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationNameFilter", name: "ResaleAuthorizationNameFilter")
    ResaleAuthorizationNameFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationNameFilterValueList", name: "ResaleAuthorizationNameFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationNameFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationNameFilterWildcard", name: "ResaleAuthorizationNameFilterWildcard", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationNameString", name: "ResaleAuthorizationNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationOfferExtendedStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationOfferExtendedStatusFilter", name: "ResaleAuthorizationOfferExtendedStatusFilter")
    ResaleAuthorizationOfferExtendedStatusFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationOfferExtendedStatusFilterValueList", name: "ResaleAuthorizationOfferExtendedStatusFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationOfferExtendedStatusString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationOfferExtendedStatusString", name: "ResaleAuthorizationOfferExtendedStatusString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationProductIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationProductIdFilter", name: "ResaleAuthorizationProductIdFilter")
    ResaleAuthorizationProductIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationProductIdFilterValueList", name: "ResaleAuthorizationProductIdFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationProductIdFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationProductIdFilterWildcard", name: "ResaleAuthorizationProductIdFilterWildcard", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationProductIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationProductIdString", name: "ResaleAuthorizationProductIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationProductNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationProductNameFilter", name: "ResaleAuthorizationProductNameFilter")
    ResaleAuthorizationProductNameFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationProductNameFilterValueList", name: "ResaleAuthorizationProductNameFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationProductNameFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationProductNameFilterWildcard", name: "ResaleAuthorizationProductNameFilterWildcard", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationProductNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationProductNameString", name: "ResaleAuthorizationProductNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationResellerAccountIDFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerAccountIDFilter", name: "ResaleAuthorizationResellerAccountIDFilter")
    ResaleAuthorizationResellerAccountIDFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerAccountIDFilterValueList", name: "ResaleAuthorizationResellerAccountIDFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationResellerAccountIDFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerAccountIDFilterWildcard", name: "ResaleAuthorizationResellerAccountIDFilterWildcard", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    ResaleAuthorizationResellerAccountIDString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerAccountIDString", name: "ResaleAuthorizationResellerAccountIDString", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    ResaleAuthorizationResellerLegalNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerLegalNameFilter", name: "ResaleAuthorizationResellerLegalNameFilter")
    ResaleAuthorizationResellerLegalNameFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerLegalNameFilterValueList", name: "ResaleAuthorizationResellerLegalNameFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationResellerLegalNameFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerLegalNameFilterWildcard", name: "ResaleAuthorizationResellerLegalNameFilterWildcard", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationResellerLegalNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerLegalNameString", name: "ResaleAuthorizationResellerLegalNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationSort", name: "ResaleAuthorizationSort")
    ResaleAuthorizationSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationSortBy", name: "ResaleAuthorizationSortBy")
    ResaleAuthorizationStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationStatusFilter", name: "ResaleAuthorizationStatusFilter")
    ResaleAuthorizationStatusFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationStatusFilterValueList", name: "ResaleAuthorizationStatusFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationStatusString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationStatusString", name: "ResaleAuthorizationStatusString")
    ResaleAuthorizationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResaleAuthorizationSummary", name: "ResaleAuthorizationSummary")
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:aws-marketplace:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    ResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ResourceIdList", name: "ResourceIdList")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 423})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ResourceNotSupportedException", name: "ResourceNotSupportedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 415})
    ResourcePolicyJson = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#ResourcePolicyJson", name: "ResourcePolicyJson", traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    SaaSProductEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductEntityIdFilter", name: "SaaSProductEntityIdFilter")
    SaaSProductEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductEntityIdFilterValueList", name: "SaaSProductEntityIdFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SaaSProductEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductEntityIdString", name: "SaaSProductEntityIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    SaaSProductFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductFilters", name: "SaaSProductFilters")
    SaaSProductLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductLastModifiedDateFilter", name: "SaaSProductLastModifiedDateFilter")
    SaaSProductLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductLastModifiedDateFilterDateRange", name: "SaaSProductLastModifiedDateFilterDateRange")
    SaaSProductSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductSort", name: "SaaSProductSort")
    SaaSProductSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductSortBy", name: "SaaSProductSortBy")
    SaaSProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductSummary", name: "SaaSProductSummary")
    SaaSProductTitleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductTitleFilter", name: "SaaSProductTitleFilter")
    SaaSProductTitleFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductTitleFilterValueList", name: "SaaSProductTitleFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SaaSProductTitleString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductTitleString", name: "SaaSProductTitleString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    SaaSProductVisibilityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductVisibilityFilter", name: "SaaSProductVisibilityFilter")
    SaaSProductVisibilityFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductVisibilityFilterValueList", name: "SaaSProductVisibilityFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SaaSProductVisibilityString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#SaaSProductVisibilityString", name: "SaaSProductVisibilityString")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Sort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#Sort", name: "Sort")
    SortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#SortBy", name: "SortBy", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacecatalog#SortOrder", name: "SortOrder")
    StartChangeSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#StartChangeSetRequest", name: "StartChangeSetRequest")
    StartChangeSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#StartChangeSetResponse", name: "StartChangeSetResponse")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#UntagResourceResponse", name: "UntagResourceResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacecatalog#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    ValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacecatalog#ValueList", name: "ValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    VisibilityValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacecatalog#VisibilityValue", name: "VisibilityValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z]+$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessageContent, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AmiProductEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductEntityIdFilterValueList, name: "ValueList"))
    AmiProductEntityIdFilter.type = Types::AmiProductEntityIdFilter
    AmiProductEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductEntityIdString, name: "member")
    AmiProductFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductEntityIdFilter, name: "EntityId"))
    AmiProductFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductLastModifiedDateFilter, name: "LastModifiedDate"))
    AmiProductFilters.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductTitleFilter, name: "ProductTitle"))
    AmiProductFilters.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductVisibilityFilter, name: "Visibility"))
    AmiProductFilters.type = Types::AmiProductFilters
    AmiProductLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductLastModifiedDateFilterDateRange, name: "DateRange"))
    AmiProductLastModifiedDateFilter.type = Types::AmiProductLastModifiedDateFilter
    AmiProductLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AfterValue"))
    AmiProductLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "BeforeValue"))
    AmiProductLastModifiedDateFilterDateRange.type = Types::AmiProductLastModifiedDateFilterDateRange
    AmiProductSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductSortBy, name: "SortBy"))
    AmiProductSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    AmiProductSort.type = Types::AmiProductSort
    AmiProductSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EntityId", traits: {"smithy.api#enumValue" => "EntityId"}))
    AmiProductSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastModifiedDate", traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    AmiProductSortBy.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProductTitle", traits: {"smithy.api#enumValue" => "ProductTitle"}))
    AmiProductSortBy.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Visibility", traits: {"smithy.api#enumValue" => "Visibility"}))
    AmiProductSummary.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductTitleString, name: "ProductTitle"))
    AmiProductSummary.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductVisibilityString, name: "Visibility"))
    AmiProductSummary.type = Types::AmiProductSummary
    AmiProductTitleFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductTitleFilterValueList, name: "ValueList"))
    AmiProductTitleFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductTitleString, name: "WildCardValue"))
    AmiProductTitleFilter.type = Types::AmiProductTitleFilter
    AmiProductTitleFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductTitleString, name: "member")
    AmiProductVisibilityFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductVisibilityFilterValueList, name: "ValueList"))
    AmiProductVisibilityFilter.type = Types::AmiProductVisibilityFilter
    AmiProductVisibilityFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductVisibilityString, name: "member")
    AmiProductVisibilityString.add_member(:limited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Limited", traits: {"smithy.api#enumValue" => "Limited"}))
    AmiProductVisibilityString.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Public", traits: {"smithy.api#enumValue" => "Public"}))
    AmiProductVisibilityString.add_member(:restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Restricted", traits: {"smithy.api#enumValue" => "Restricted"}))
    AmiProductVisibilityString.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Draft", traits: {"smithy.api#enumValue" => "Draft"}))
    BatchDescribeEntitiesRequest.add_member(:entity_request_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRequestList, name: "EntityRequestList", traits: {"smithy.api#required" => {}}))
    BatchDescribeEntitiesRequest.type = Types::BatchDescribeEntitiesRequest
    BatchDescribeEntitiesResponse.add_member(:entity_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDetails, name: "EntityDetails"))
    BatchDescribeEntitiesResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: Errors, name: "Errors"))
    BatchDescribeEntitiesResponse.type = Types::BatchDescribeEntitiesResponse
    BatchDescribeErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDescribeErrorCodeString, name: "ErrorCode"))
    BatchDescribeErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDescribeErrorMessageContent, name: "ErrorMessage"))
    BatchDescribeErrorDetail.type = Types::BatchDescribeErrorDetail
    CancelChangeSetRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#httpQuery" => "catalog", "smithy.api#required" => {}}))
    CancelChangeSetRequest.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ChangeSetId", traits: {"smithy.api#httpQuery" => "changeSetId", "smithy.api#required" => {}}))
    CancelChangeSetRequest.type = Types::CancelChangeSetRequest
    CancelChangeSetResponse.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ChangeSetId"))
    CancelChangeSetResponse.add_member(:change_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ChangeSetArn"))
    CancelChangeSetResponse.type = Types::CancelChangeSetResponse
    Change.add_member(:change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "ChangeType", traits: {"smithy.api#required" => {}}))
    Change.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Entity, name: "Entity", traits: {"smithy.api#required" => {}}))
    Change.add_member(:entity_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "EntityTags"))
    Change.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Json, name: "Details"))
    Change.add_member(:details_document, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocumentType, name: "DetailsDocument"))
    Change.add_member(:change_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeName, name: "ChangeName"))
    Change.type = Types::Change
    ChangeSetDescription.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSummary, name: "member")
    ChangeSetSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetSummaryListItem, name: "member")
    ChangeSetSummaryListItem.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ChangeSetId"))
    ChangeSetSummaryListItem.add_member(:change_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ChangeSetArn"))
    ChangeSetSummaryListItem.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetName, name: "ChangeSetName"))
    ChangeSetSummaryListItem.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "StartTime"))
    ChangeSetSummaryListItem.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "EndTime"))
    ChangeSetSummaryListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeStatus, name: "Status"))
    ChangeSetSummaryListItem.add_member(:entity_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, name: "EntityIdList"))
    ChangeSetSummaryListItem.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCode, name: "FailureCode"))
    ChangeSetSummaryListItem.type = Types::ChangeSetSummaryListItem
    ChangeStatus.add_member(:preparing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREPARING", traits: {"smithy.api#enumValue" => "PREPARING"}))
    ChangeStatus.add_member(:applying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLYING", traits: {"smithy.api#enumValue" => "APPLYING"}))
    ChangeStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ChangeStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ChangeStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ChangeSummary.add_member(:change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "ChangeType"))
    ChangeSummary.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Entity, name: "Entity"))
    ChangeSummary.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Json, name: "Details"))
    ChangeSummary.add_member(:details_document, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocumentType, name: "DetailsDocument"))
    ChangeSummary.add_member(:error_detail_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailList, name: "ErrorDetailList"))
    ChangeSummary.add_member(:change_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeName, name: "ChangeName"))
    ChangeSummary.type = Types::ChangeSummary
    ContainerProductEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductEntityIdFilterValueList, name: "ValueList"))
    ContainerProductEntityIdFilter.type = Types::ContainerProductEntityIdFilter
    ContainerProductEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductEntityIdString, name: "member")
    ContainerProductFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductEntityIdFilter, name: "EntityId"))
    ContainerProductFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductLastModifiedDateFilter, name: "LastModifiedDate"))
    ContainerProductFilters.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductTitleFilter, name: "ProductTitle"))
    ContainerProductFilters.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductVisibilityFilter, name: "Visibility"))
    ContainerProductFilters.type = Types::ContainerProductFilters
    ContainerProductLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductLastModifiedDateFilterDateRange, name: "DateRange"))
    ContainerProductLastModifiedDateFilter.type = Types::ContainerProductLastModifiedDateFilter
    ContainerProductLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AfterValue"))
    ContainerProductLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "BeforeValue"))
    ContainerProductLastModifiedDateFilterDateRange.type = Types::ContainerProductLastModifiedDateFilterDateRange
    ContainerProductSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductSortBy, name: "SortBy"))
    ContainerProductSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    ContainerProductSort.type = Types::ContainerProductSort
    ContainerProductSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EntityId", traits: {"smithy.api#enumValue" => "EntityId"}))
    ContainerProductSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastModifiedDate", traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    ContainerProductSortBy.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProductTitle", traits: {"smithy.api#enumValue" => "ProductTitle"}))
    ContainerProductSortBy.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Visibility", traits: {"smithy.api#enumValue" => "Visibility"}))
    ContainerProductSummary.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductTitleString, name: "ProductTitle"))
    ContainerProductSummary.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductVisibilityString, name: "Visibility"))
    ContainerProductSummary.type = Types::ContainerProductSummary
    ContainerProductTitleFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductTitleFilterValueList, name: "ValueList"))
    ContainerProductTitleFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductTitleString, name: "WildCardValue"))
    ContainerProductTitleFilter.type = Types::ContainerProductTitleFilter
    ContainerProductTitleFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductTitleString, name: "member")
    ContainerProductVisibilityFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductVisibilityFilterValueList, name: "ValueList"))
    ContainerProductVisibilityFilter.type = Types::ContainerProductVisibilityFilter
    ContainerProductVisibilityFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductVisibilityString, name: "member")
    ContainerProductVisibilityString.add_member(:limited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Limited", traits: {"smithy.api#enumValue" => "Limited"}))
    ContainerProductVisibilityString.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Public", traits: {"smithy.api#enumValue" => "Public"}))
    ContainerProductVisibilityString.add_member(:restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Restricted", traits: {"smithy.api#enumValue" => "Restricted"}))
    ContainerProductVisibilityString.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Draft", traits: {"smithy.api#enumValue" => "Draft"}))
    DataProductEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductEntityIdFilterValueList, name: "ValueList"))
    DataProductEntityIdFilter.type = Types::DataProductEntityIdFilter
    DataProductEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductEntityIdString, name: "member")
    DataProductFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductEntityIdFilter, name: "EntityId"))
    DataProductFilters.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductTitleFilter, name: "ProductTitle"))
    DataProductFilters.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductVisibilityFilter, name: "Visibility"))
    DataProductFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductLastModifiedDateFilter, name: "LastModifiedDate"))
    DataProductFilters.type = Types::DataProductFilters
    DataProductLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductLastModifiedDateFilterDateRange, name: "DateRange"))
    DataProductLastModifiedDateFilter.type = Types::DataProductLastModifiedDateFilter
    DataProductLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AfterValue"))
    DataProductLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "BeforeValue"))
    DataProductLastModifiedDateFilterDateRange.type = Types::DataProductLastModifiedDateFilterDateRange
    DataProductSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductSortBy, name: "SortBy"))
    DataProductSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    DataProductSort.type = Types::DataProductSort
    DataProductSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EntityId", traits: {"smithy.api#enumValue" => "EntityId"}))
    DataProductSortBy.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProductTitle", traits: {"smithy.api#enumValue" => "ProductTitle"}))
    DataProductSortBy.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Visibility", traits: {"smithy.api#enumValue" => "Visibility"}))
    DataProductSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastModifiedDate", traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    DataProductSummary.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductTitleString, name: "ProductTitle"))
    DataProductSummary.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductVisibilityString, name: "Visibility"))
    DataProductSummary.type = Types::DataProductSummary
    DataProductTitleFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductTitleFilterValueList, name: "ValueList"))
    DataProductTitleFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductTitleString, name: "WildCardValue"))
    DataProductTitleFilter.type = Types::DataProductTitleFilter
    DataProductTitleFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductTitleString, name: "member")
    DataProductVisibilityFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductVisibilityFilterValueList, name: "ValueList"))
    DataProductVisibilityFilter.type = Types::DataProductVisibilityFilter
    DataProductVisibilityFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductVisibilityString, name: "member")
    DataProductVisibilityString.add_member(:limited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Limited", traits: {"smithy.api#enumValue" => "Limited"}))
    DataProductVisibilityString.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Public", traits: {"smithy.api#enumValue" => "Public"}))
    DataProductVisibilityString.add_member(:restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Restricted", traits: {"smithy.api#enumValue" => "Restricted"}))
    DataProductVisibilityString.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unavailable", traits: {"smithy.api#enumValue" => "Unavailable"}))
    DataProductVisibilityString.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Draft", traits: {"smithy.api#enumValue" => "Draft"}))
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DescribeChangeSetRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#httpQuery" => "catalog", "smithy.api#required" => {}}))
    DescribeChangeSetRequest.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ChangeSetId", traits: {"smithy.api#httpQuery" => "changeSetId", "smithy.api#required" => {}}))
    DescribeChangeSetRequest.type = Types::DescribeChangeSetRequest
    DescribeChangeSetResponse.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ChangeSetId"))
    DescribeChangeSetResponse.add_member(:change_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ChangeSetArn"))
    DescribeChangeSetResponse.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetName, name: "ChangeSetName"))
    DescribeChangeSetResponse.add_member(:intent, ::Smithy::Schema::Shapes::MemberShape.new(target: Intent, name: "Intent"))
    DescribeChangeSetResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "StartTime"))
    DescribeChangeSetResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "EndTime"))
    DescribeChangeSetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeStatus, name: "Status"))
    DescribeChangeSetResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCode, name: "FailureCode"))
    DescribeChangeSetResponse.add_member(:failure_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessageContent, name: "FailureDescription"))
    DescribeChangeSetResponse.add_member(:change_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetDescription, name: "ChangeSet"))
    DescribeChangeSetResponse.type = Types::DescribeChangeSetResponse
    DescribeEntityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#httpQuery" => "catalog", "smithy.api#required" => {}}))
    DescribeEntityRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "EntityId", traits: {"smithy.api#httpQuery" => "entityId", "smithy.api#required" => {}}))
    DescribeEntityRequest.type = Types::DescribeEntityRequest
    DescribeEntityResponse.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType"))
    DescribeEntityResponse.add_member(:entity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "EntityIdentifier"))
    DescribeEntityResponse.add_member(:entity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EntityArn"))
    DescribeEntityResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "LastModifiedDate"))
    DescribeEntityResponse.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Json, name: "Details"))
    DescribeEntityResponse.add_member(:details_document, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocumentType, name: "DetailsDocument"))
    DescribeEntityResponse.type = Types::DescribeEntityResponse
    Entity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "Type", traits: {"smithy.api#required" => {}}))
    Entity.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier"))
    Entity.type = Types::Entity
    EntityDetail.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType"))
    EntityDetail.add_member(:entity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EntityArn"))
    EntityDetail.add_member(:entity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "EntityIdentifier"))
    EntityDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "LastModifiedDate"))
    EntityDetail.add_member(:details_document, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocumentType, name: "DetailsDocument"))
    EntityDetail.type = Types::EntityDetail
    EntityDetails.key = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "key")
    EntityDetails.value = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDetail, name: "value")
    EntityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    EntityRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EntityId", traits: {"smithy.api#required" => {}}))
    EntityRequest.type = Types::EntityRequest
    EntityRequestList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRequest, name: "member")
    EntitySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityNameString, name: "Name"))
    EntitySummary.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType"))
    EntitySummary.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "EntityId"))
    EntitySummary.add_member(:entity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "EntityArn"))
    EntitySummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "LastModifiedDate"))
    EntitySummary.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityValue, name: "Visibility"))
    EntitySummary.add_member(:ami_product_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductSummary, name: "AmiProductSummary"))
    EntitySummary.add_member(:container_product_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductSummary, name: "ContainerProductSummary"))
    EntitySummary.add_member(:data_product_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductSummary, name: "DataProductSummary"))
    EntitySummary.add_member(:saa_s_product_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductSummary, name: "SaaSProductSummary"))
    EntitySummary.add_member(:offer_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferSummary, name: "OfferSummary"))
    EntitySummary.add_member(:resale_authorization_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationSummary, name: "ResaleAuthorizationSummary"))
    EntitySummary.add_member(:machine_learning_product_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductSummary, name: "MachineLearningProductSummary"))
    EntitySummary.type = Types::EntitySummary
    EntitySummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntitySummary, name: "member")
    EntityTypeFilters.add_member(:data_product_filters, Types::EntityTypeFilters::DataProductFilters, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductFilters, name: "DataProductFilters"))
    EntityTypeFilters.add_member(:saa_s_product_filters, Types::EntityTypeFilters::SaaSProductFilters, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductFilters, name: "SaaSProductFilters"))
    EntityTypeFilters.add_member(:ami_product_filters, Types::EntityTypeFilters::AmiProductFilters, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductFilters, name: "AmiProductFilters"))
    EntityTypeFilters.add_member(:offer_filters, Types::EntityTypeFilters::OfferFilters, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferFilters, name: "OfferFilters"))
    EntityTypeFilters.add_member(:container_product_filters, Types::EntityTypeFilters::ContainerProductFilters, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductFilters, name: "ContainerProductFilters"))
    EntityTypeFilters.add_member(:resale_authorization_filters, Types::EntityTypeFilters::ResaleAuthorizationFilters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationFilters, name: "ResaleAuthorizationFilters"))
    EntityTypeFilters.add_member(:machine_learning_product_filters, Types::EntityTypeFilters::MachineLearningProductFilters, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductFilters, name: "MachineLearningProductFilters"))
    EntityTypeFilters.add_member(:unknown, Types::EntityTypeFilters::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EntityTypeFilters.type = Types::EntityTypeFilters
    EntityTypeSort.add_member(:data_product_sort, Types::EntityTypeSort::DataProductSort, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProductSort, name: "DataProductSort"))
    EntityTypeSort.add_member(:saa_s_product_sort, Types::EntityTypeSort::SaaSProductSort, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductSort, name: "SaaSProductSort"))
    EntityTypeSort.add_member(:ami_product_sort, Types::EntityTypeSort::AmiProductSort, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiProductSort, name: "AmiProductSort"))
    EntityTypeSort.add_member(:offer_sort, Types::EntityTypeSort::OfferSort, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferSort, name: "OfferSort"))
    EntityTypeSort.add_member(:container_product_sort, Types::EntityTypeSort::ContainerProductSort, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerProductSort, name: "ContainerProductSort"))
    EntityTypeSort.add_member(:resale_authorization_sort, Types::EntityTypeSort::ResaleAuthorizationSort, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationSort, name: "ResaleAuthorizationSort"))
    EntityTypeSort.add_member(:machine_learning_product_sort, Types::EntityTypeSort::MachineLearningProductSort, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductSort, name: "MachineLearningProductSort"))
    EntityTypeSort.add_member(:unknown, Types::EntityTypeSort::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EntityTypeSort.type = Types::EntityTypeSort
    ErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCodeString, name: "ErrorCode"))
    ErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessageContent, name: "ErrorMessage"))
    ErrorDetail.type = Types::ErrorDetail
    ErrorDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "member")
    Errors.key = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "key")
    Errors.value = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDescribeErrorDetail, name: "value")
    FailureCode.add_member(:client_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ClientError", traits: {"smithy.api#enumValue" => "CLIENT_ERROR"}))
    FailureCode.add_member(:server_fault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServerFault", traits: {"smithy.api#enumValue" => "SERVER_FAULT"}))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "Name"))
    Filter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueList, name: "ValueList"))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member")
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyJson, name: "Policy"))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    Intent.add_member(:validate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE", traits: {"smithy.api#enumValue" => "VALIDATE"}))
    Intent.add_member(:apply, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLY", traits: {"smithy.api#enumValue" => "APPLY"}))
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessageContent, name: "Message"))
    InternalServiceException.type = Types::InternalServiceException
    ListChangeSetsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListChangeSetsRequest.add_member(:filter_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "FilterList"))
    ListChangeSetsRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: Sort, name: "Sort"))
    ListChangeSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListChangeSetsMaxResultInteger, name: "MaxResults"))
    ListChangeSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListChangeSetsRequest.type = Types::ListChangeSetsRequest
    ListChangeSetsResponse.add_member(:change_set_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetSummaryList, name: "ChangeSetSummaryList"))
    ListChangeSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListChangeSetsResponse.type = Types::ListChangeSetsResponse
    ListEntitiesRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListEntitiesRequest.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType", traits: {"smithy.api#required" => {}}))
    ListEntitiesRequest.add_member(:filter_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "FilterList"))
    ListEntitiesRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: Sort, name: "Sort"))
    ListEntitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEntitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEntitiesMaxResultInteger, name: "MaxResults"))
    ListEntitiesRequest.add_member(:ownership_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnershipType, name: "OwnershipType"))
    ListEntitiesRequest.add_member(:entity_type_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypeFilters, name: "EntityTypeFilters"))
    ListEntitiesRequest.add_member(:entity_type_sort, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypeSort, name: "EntityTypeSort"))
    ListEntitiesRequest.type = Types::ListEntitiesRequest
    ListEntitiesResponse.add_member(:entity_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitySummaryList, name: "EntitySummaryList"))
    ListEntitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEntitiesResponse.type = Types::ListEntitiesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceArn"))
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MachineLearningProductEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductEntityIdFilterValueList, name: "ValueList"))
    MachineLearningProductEntityIdFilter.type = Types::MachineLearningProductEntityIdFilter
    MachineLearningProductEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductEntityIdString, name: "member")
    MachineLearningProductFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductEntityIdFilter, name: "EntityId"))
    MachineLearningProductFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductLastModifiedDateFilter, name: "LastModifiedDate"))
    MachineLearningProductFilters.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductTitleFilter, name: "ProductTitle"))
    MachineLearningProductFilters.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductVisibilityFilter, name: "Visibility"))
    MachineLearningProductFilters.type = Types::MachineLearningProductFilters
    MachineLearningProductLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductLastModifiedDateFilterDateRange, name: "DateRange"))
    MachineLearningProductLastModifiedDateFilter.type = Types::MachineLearningProductLastModifiedDateFilter
    MachineLearningProductLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AfterValue"))
    MachineLearningProductLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "BeforeValue"))
    MachineLearningProductLastModifiedDateFilterDateRange.type = Types::MachineLearningProductLastModifiedDateFilterDateRange
    MachineLearningProductSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductSortBy, name: "SortBy"))
    MachineLearningProductSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    MachineLearningProductSort.type = Types::MachineLearningProductSort
    MachineLearningProductSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EntityId", traits: {"smithy.api#enumValue" => "EntityId"}))
    MachineLearningProductSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastModifiedDate", traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    MachineLearningProductSortBy.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProductTitle", traits: {"smithy.api#enumValue" => "ProductTitle"}))
    MachineLearningProductSortBy.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Visibility", traits: {"smithy.api#enumValue" => "Visibility"}))
    MachineLearningProductSummary.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductTitleString, name: "ProductTitle"))
    MachineLearningProductSummary.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductVisibilityString, name: "Visibility"))
    MachineLearningProductSummary.type = Types::MachineLearningProductSummary
    MachineLearningProductTitleFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductTitleFilterValueList, name: "ValueList"))
    MachineLearningProductTitleFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductTitleString, name: "WildCardValue"))
    MachineLearningProductTitleFilter.type = Types::MachineLearningProductTitleFilter
    MachineLearningProductTitleFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductTitleString, name: "member")
    MachineLearningProductVisibilityFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductVisibilityFilterValueList, name: "ValueList"))
    MachineLearningProductVisibilityFilter.type = Types::MachineLearningProductVisibilityFilter
    MachineLearningProductVisibilityFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MachineLearningProductVisibilityString, name: "member")
    MachineLearningProductVisibilityString.add_member(:limited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Limited", traits: {"smithy.api#enumValue" => "Limited"}))
    MachineLearningProductVisibilityString.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Public", traits: {"smithy.api#enumValue" => "Public"}))
    MachineLearningProductVisibilityString.add_member(:restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Restricted", traits: {"smithy.api#enumValue" => "Restricted"}))
    MachineLearningProductVisibilityString.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Draft", traits: {"smithy.api#enumValue" => "Draft"}))
    OfferAvailabilityEndDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferAvailabilityEndDateFilterDateRange, name: "DateRange"))
    OfferAvailabilityEndDateFilter.type = Types::OfferAvailabilityEndDateFilter
    OfferAvailabilityEndDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AfterValue"))
    OfferAvailabilityEndDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "BeforeValue"))
    OfferAvailabilityEndDateFilterDateRange.type = Types::OfferAvailabilityEndDateFilterDateRange
    OfferBuyerAccountsFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferBuyerAccountsFilterWildcard, name: "WildCardValue"))
    OfferBuyerAccountsFilter.type = Types::OfferBuyerAccountsFilter
    OfferBuyerAccountsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OfferBuyerAccountsString, name: "member")
    OfferEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferEntityIdFilterValueList, name: "ValueList"))
    OfferEntityIdFilter.type = Types::OfferEntityIdFilter
    OfferEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OfferEntityIdString, name: "member")
    OfferFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferEntityIdFilter, name: "EntityId"))
    OfferFilters.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferNameFilter, name: "Name"))
    OfferFilters.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferProductIdFilter, name: "ProductId"))
    OfferFilters.add_member(:resale_authorization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferResaleAuthorizationIdFilter, name: "ResaleAuthorizationId"))
    OfferFilters.add_member(:release_date, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferReleaseDateFilter, name: "ReleaseDate"))
    OfferFilters.add_member(:availability_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferAvailabilityEndDateFilter, name: "AvailabilityEndDate"))
    OfferFilters.add_member(:buyer_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferBuyerAccountsFilter, name: "BuyerAccounts"))
    OfferFilters.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferStateFilter, name: "State"))
    OfferFilters.add_member(:targeting, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferTargetingFilter, name: "Targeting"))
    OfferFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferLastModifiedDateFilter, name: "LastModifiedDate"))
    OfferFilters.type = Types::OfferFilters
    OfferLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferLastModifiedDateFilterDateRange, name: "DateRange"))
    OfferLastModifiedDateFilter.type = Types::OfferLastModifiedDateFilter
    OfferLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AfterValue"))
    OfferLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "BeforeValue"))
    OfferLastModifiedDateFilterDateRange.type = Types::OfferLastModifiedDateFilterDateRange
    OfferNameFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferNameFilterValueList, name: "ValueList"))
    OfferNameFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferNameString, name: "WildCardValue"))
    OfferNameFilter.type = Types::OfferNameFilter
    OfferNameFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OfferNameString, name: "member")
    OfferProductIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferProductIdFilterValueList, name: "ValueList"))
    OfferProductIdFilter.type = Types::OfferProductIdFilter
    OfferProductIdFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OfferProductIdString, name: "member")
    OfferReleaseDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferReleaseDateFilterDateRange, name: "DateRange"))
    OfferReleaseDateFilter.type = Types::OfferReleaseDateFilter
    OfferReleaseDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AfterValue"))
    OfferReleaseDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "BeforeValue"))
    OfferReleaseDateFilterDateRange.type = Types::OfferReleaseDateFilterDateRange
    OfferResaleAuthorizationIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferResaleAuthorizationIdFilterValueList, name: "ValueList"))
    OfferResaleAuthorizationIdFilter.type = Types::OfferResaleAuthorizationIdFilter
    OfferResaleAuthorizationIdFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OfferResaleAuthorizationIdString, name: "member")
    OfferSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferSortBy, name: "SortBy"))
    OfferSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    OfferSort.type = Types::OfferSort
    OfferSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EntityId", traits: {"smithy.api#enumValue" => "EntityId"}))
    OfferSortBy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Name", traits: {"smithy.api#enumValue" => "Name"}))
    OfferSortBy.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProductId", traits: {"smithy.api#enumValue" => "ProductId"}))
    OfferSortBy.add_member(:resale_authorization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResaleAuthorizationId", traits: {"smithy.api#enumValue" => "ResaleAuthorizationId"}))
    OfferSortBy.add_member(:release_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReleaseDate", traits: {"smithy.api#enumValue" => "ReleaseDate"}))
    OfferSortBy.add_member(:availability_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AvailabilityEndDate", traits: {"smithy.api#enumValue" => "AvailabilityEndDate"}))
    OfferSortBy.add_member(:buyer_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BuyerAccounts", traits: {"smithy.api#enumValue" => "BuyerAccounts"}))
    OfferSortBy.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "State", traits: {"smithy.api#enumValue" => "State"}))
    OfferSortBy.add_member(:targeting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Targeting", traits: {"smithy.api#enumValue" => "Targeting"}))
    OfferSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastModifiedDate", traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    OfferStateFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferStateFilterValueList, name: "ValueList"))
    OfferStateFilter.type = Types::OfferStateFilter
    OfferStateFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OfferStateString, name: "member")
    OfferStateString.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Draft", traits: {"smithy.api#enumValue" => "Draft"}))
    OfferStateString.add_member(:released, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Released", traits: {"smithy.api#enumValue" => "Released"}))
    OfferSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferNameString, name: "Name"))
    OfferSummary.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferProductIdString, name: "ProductId"))
    OfferSummary.add_member(:resale_authorization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferResaleAuthorizationIdString, name: "ResaleAuthorizationId"))
    OfferSummary.add_member(:release_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "ReleaseDate"))
    OfferSummary.add_member(:availability_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AvailabilityEndDate"))
    OfferSummary.add_member(:buyer_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferBuyerAccountsList, name: "BuyerAccounts"))
    OfferSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferStateString, name: "State"))
    OfferSummary.add_member(:targeting, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferTargetingList, name: "Targeting"))
    OfferSummary.type = Types::OfferSummary
    OfferTargetingFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferTargetingFilterValueList, name: "ValueList"))
    OfferTargetingFilter.type = Types::OfferTargetingFilter
    OfferTargetingFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OfferTargetingString, name: "member")
    OfferTargetingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OfferTargetingString, name: "member")
    OfferTargetingString.add_member(:buyer_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BuyerAccounts", traits: {"smithy.api#enumValue" => "BuyerAccounts"}))
    OfferTargetingString.add_member(:participating_programs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ParticipatingPrograms", traits: {"smithy.api#enumValue" => "ParticipatingPrograms"}))
    OfferTargetingString.add_member(:country_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CountryCodes", traits: {"smithy.api#enumValue" => "CountryCodes"}))
    OfferTargetingString.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "None"}))
    OwnershipType.add_member(:self, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF", traits: {"smithy.api#enumValue" => "SELF"}))
    OwnershipType.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyJson, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RequestedChangeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Change, name: "member")
    ResaleAuthorizationAvailabilityEndDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationAvailabilityEndDateFilterDateRange, name: "DateRange"))
    ResaleAuthorizationAvailabilityEndDateFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationAvailabilityEndDateFilterValueList, name: "ValueList"))
    ResaleAuthorizationAvailabilityEndDateFilter.type = Types::ResaleAuthorizationAvailabilityEndDateFilter
    ResaleAuthorizationAvailabilityEndDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AfterValue"))
    ResaleAuthorizationAvailabilityEndDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "BeforeValue"))
    ResaleAuthorizationAvailabilityEndDateFilterDateRange.type = Types::ResaleAuthorizationAvailabilityEndDateFilterDateRange
    ResaleAuthorizationAvailabilityEndDateFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "member")
    ResaleAuthorizationCreatedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationCreatedDateFilterDateRange, name: "DateRange"))
    ResaleAuthorizationCreatedDateFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationCreatedDateFilterValueList, name: "ValueList"))
    ResaleAuthorizationCreatedDateFilter.type = Types::ResaleAuthorizationCreatedDateFilter
    ResaleAuthorizationCreatedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AfterValue"))
    ResaleAuthorizationCreatedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "BeforeValue"))
    ResaleAuthorizationCreatedDateFilterDateRange.type = Types::ResaleAuthorizationCreatedDateFilterDateRange
    ResaleAuthorizationCreatedDateFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "member")
    ResaleAuthorizationEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationEntityIdFilterValueList, name: "ValueList"))
    ResaleAuthorizationEntityIdFilter.type = Types::ResaleAuthorizationEntityIdFilter
    ResaleAuthorizationEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationEntityIdString, name: "member")
    ResaleAuthorizationFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationEntityIdFilter, name: "EntityId"))
    ResaleAuthorizationFilters.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationNameFilter, name: "Name"))
    ResaleAuthorizationFilters.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationProductIdFilter, name: "ProductId"))
    ResaleAuthorizationFilters.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationCreatedDateFilter, name: "CreatedDate"))
    ResaleAuthorizationFilters.add_member(:availability_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationAvailabilityEndDateFilter, name: "AvailabilityEndDate"))
    ResaleAuthorizationFilters.add_member(:manufacturer_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationManufacturerAccountIdFilter, name: "ManufacturerAccountId"))
    ResaleAuthorizationFilters.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationProductNameFilter, name: "ProductName"))
    ResaleAuthorizationFilters.add_member(:manufacturer_legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationManufacturerLegalNameFilter, name: "ManufacturerLegalName"))
    ResaleAuthorizationFilters.add_member(:reseller_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationResellerAccountIDFilter, name: "ResellerAccountID"))
    ResaleAuthorizationFilters.add_member(:reseller_legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationResellerLegalNameFilter, name: "ResellerLegalName"))
    ResaleAuthorizationFilters.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationStatusFilter, name: "Status"))
    ResaleAuthorizationFilters.add_member(:offer_extended_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationOfferExtendedStatusFilter, name: "OfferExtendedStatus"))
    ResaleAuthorizationFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationLastModifiedDateFilter, name: "LastModifiedDate"))
    ResaleAuthorizationFilters.type = Types::ResaleAuthorizationFilters
    ResaleAuthorizationLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationLastModifiedDateFilterDateRange, name: "DateRange"))
    ResaleAuthorizationLastModifiedDateFilter.type = Types::ResaleAuthorizationLastModifiedDateFilter
    ResaleAuthorizationLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AfterValue"))
    ResaleAuthorizationLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "BeforeValue"))
    ResaleAuthorizationLastModifiedDateFilterDateRange.type = Types::ResaleAuthorizationLastModifiedDateFilterDateRange
    ResaleAuthorizationManufacturerAccountIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationManufacturerAccountIdFilterValueList, name: "ValueList"))
    ResaleAuthorizationManufacturerAccountIdFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationManufacturerAccountIdFilterWildcard, name: "WildCardValue"))
    ResaleAuthorizationManufacturerAccountIdFilter.type = Types::ResaleAuthorizationManufacturerAccountIdFilter
    ResaleAuthorizationManufacturerAccountIdFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationManufacturerAccountIdString, name: "member")
    ResaleAuthorizationManufacturerLegalNameFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationManufacturerLegalNameFilterValueList, name: "ValueList"))
    ResaleAuthorizationManufacturerLegalNameFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationManufacturerLegalNameFilterWildcard, name: "WildCardValue"))
    ResaleAuthorizationManufacturerLegalNameFilter.type = Types::ResaleAuthorizationManufacturerLegalNameFilter
    ResaleAuthorizationManufacturerLegalNameFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationManufacturerLegalNameString, name: "member")
    ResaleAuthorizationNameFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationNameFilterValueList, name: "ValueList"))
    ResaleAuthorizationNameFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationNameFilterWildcard, name: "WildCardValue"))
    ResaleAuthorizationNameFilter.type = Types::ResaleAuthorizationNameFilter
    ResaleAuthorizationNameFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationNameString, name: "member")
    ResaleAuthorizationOfferExtendedStatusFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationOfferExtendedStatusFilterValueList, name: "ValueList"))
    ResaleAuthorizationOfferExtendedStatusFilter.type = Types::ResaleAuthorizationOfferExtendedStatusFilter
    ResaleAuthorizationOfferExtendedStatusFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationOfferExtendedStatusString, name: "member")
    ResaleAuthorizationProductIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationProductIdFilterValueList, name: "ValueList"))
    ResaleAuthorizationProductIdFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationProductIdFilterWildcard, name: "WildCardValue"))
    ResaleAuthorizationProductIdFilter.type = Types::ResaleAuthorizationProductIdFilter
    ResaleAuthorizationProductIdFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationProductIdString, name: "member")
    ResaleAuthorizationProductNameFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationProductNameFilterValueList, name: "ValueList"))
    ResaleAuthorizationProductNameFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationProductNameFilterWildcard, name: "WildCardValue"))
    ResaleAuthorizationProductNameFilter.type = Types::ResaleAuthorizationProductNameFilter
    ResaleAuthorizationProductNameFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationProductNameString, name: "member")
    ResaleAuthorizationResellerAccountIDFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationResellerAccountIDFilterValueList, name: "ValueList"))
    ResaleAuthorizationResellerAccountIDFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationResellerAccountIDFilterWildcard, name: "WildCardValue"))
    ResaleAuthorizationResellerAccountIDFilter.type = Types::ResaleAuthorizationResellerAccountIDFilter
    ResaleAuthorizationResellerAccountIDFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationResellerAccountIDString, name: "member")
    ResaleAuthorizationResellerLegalNameFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationResellerLegalNameFilterValueList, name: "ValueList"))
    ResaleAuthorizationResellerLegalNameFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationResellerLegalNameFilterWildcard, name: "WildCardValue"))
    ResaleAuthorizationResellerLegalNameFilter.type = Types::ResaleAuthorizationResellerLegalNameFilter
    ResaleAuthorizationResellerLegalNameFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationResellerLegalNameString, name: "member")
    ResaleAuthorizationSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationSortBy, name: "SortBy"))
    ResaleAuthorizationSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    ResaleAuthorizationSort.type = Types::ResaleAuthorizationSort
    ResaleAuthorizationSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EntityId", traits: {"smithy.api#enumValue" => "EntityId"}))
    ResaleAuthorizationSortBy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Name", traits: {"smithy.api#enumValue" => "Name"}))
    ResaleAuthorizationSortBy.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProductId", traits: {"smithy.api#enumValue" => "ProductId"}))
    ResaleAuthorizationSortBy.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProductName", traits: {"smithy.api#enumValue" => "ProductName"}))
    ResaleAuthorizationSortBy.add_member(:manufacturer_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ManufacturerAccountId", traits: {"smithy.api#enumValue" => "ManufacturerAccountId"}))
    ResaleAuthorizationSortBy.add_member(:manufacturer_legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ManufacturerLegalName", traits: {"smithy.api#enumValue" => "ManufacturerLegalName"}))
    ResaleAuthorizationSortBy.add_member(:reseller_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResellerAccountID", traits: {"smithy.api#enumValue" => "ResellerAccountID"}))
    ResaleAuthorizationSortBy.add_member(:reseller_legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResellerLegalName", traits: {"smithy.api#enumValue" => "ResellerLegalName"}))
    ResaleAuthorizationSortBy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Status", traits: {"smithy.api#enumValue" => "Status"}))
    ResaleAuthorizationSortBy.add_member(:offer_extended_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OfferExtendedStatus", traits: {"smithy.api#enumValue" => "OfferExtendedStatus"}))
    ResaleAuthorizationSortBy.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreatedDate", traits: {"smithy.api#enumValue" => "CreatedDate"}))
    ResaleAuthorizationSortBy.add_member(:availability_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AvailabilityEndDate", traits: {"smithy.api#enumValue" => "AvailabilityEndDate"}))
    ResaleAuthorizationSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastModifiedDate", traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    ResaleAuthorizationStatusFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationStatusFilterValueList, name: "ValueList"))
    ResaleAuthorizationStatusFilter.type = Types::ResaleAuthorizationStatusFilter
    ResaleAuthorizationStatusFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationStatusString, name: "member")
    ResaleAuthorizationStatusString.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Draft", traits: {"smithy.api#enumValue" => "Draft"}))
    ResaleAuthorizationStatusString.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    ResaleAuthorizationStatusString.add_member(:restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Restricted", traits: {"smithy.api#enumValue" => "Restricted"}))
    ResaleAuthorizationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationNameString, name: "Name"))
    ResaleAuthorizationSummary.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationProductIdString, name: "ProductId"))
    ResaleAuthorizationSummary.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationProductNameString, name: "ProductName"))
    ResaleAuthorizationSummary.add_member(:manufacturer_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationManufacturerAccountIdString, name: "ManufacturerAccountId"))
    ResaleAuthorizationSummary.add_member(:manufacturer_legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationManufacturerLegalNameString, name: "ManufacturerLegalName"))
    ResaleAuthorizationSummary.add_member(:reseller_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationResellerAccountIDString, name: "ResellerAccountID"))
    ResaleAuthorizationSummary.add_member(:reseller_legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationResellerLegalNameString, name: "ResellerLegalName"))
    ResaleAuthorizationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationStatusString, name: "Status"))
    ResaleAuthorizationSummary.add_member(:offer_extended_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAuthorizationOfferExtendedStatusString, name: "OfferExtendedStatus"))
    ResaleAuthorizationSummary.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "CreatedDate"))
    ResaleAuthorizationSummary.add_member(:availability_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AvailabilityEndDate"))
    ResaleAuthorizationSummary.type = Types::ResaleAuthorizationSummary
    ResourceIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "member")
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessageContent, name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessageContent, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessageContent, name: "Message"))
    ResourceNotSupportedException.type = Types::ResourceNotSupportedException
    SaaSProductEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductEntityIdFilterValueList, name: "ValueList"))
    SaaSProductEntityIdFilter.type = Types::SaaSProductEntityIdFilter
    SaaSProductEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductEntityIdString, name: "member")
    SaaSProductFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductEntityIdFilter, name: "EntityId"))
    SaaSProductFilters.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductTitleFilter, name: "ProductTitle"))
    SaaSProductFilters.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductVisibilityFilter, name: "Visibility"))
    SaaSProductFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductLastModifiedDateFilter, name: "LastModifiedDate"))
    SaaSProductFilters.type = Types::SaaSProductFilters
    SaaSProductLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductLastModifiedDateFilterDateRange, name: "DateRange"))
    SaaSProductLastModifiedDateFilter.type = Types::SaaSProductLastModifiedDateFilter
    SaaSProductLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "AfterValue"))
    SaaSProductLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeISO8601, name: "BeforeValue"))
    SaaSProductLastModifiedDateFilterDateRange.type = Types::SaaSProductLastModifiedDateFilterDateRange
    SaaSProductSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductSortBy, name: "SortBy"))
    SaaSProductSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    SaaSProductSort.type = Types::SaaSProductSort
    SaaSProductSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EntityId", traits: {"smithy.api#enumValue" => "EntityId"}))
    SaaSProductSortBy.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProductTitle", traits: {"smithy.api#enumValue" => "ProductTitle"}))
    SaaSProductSortBy.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Visibility", traits: {"smithy.api#enumValue" => "Visibility"}))
    SaaSProductSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastModifiedDate", traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    SaaSProductSummary.add_member(:product_title, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductTitleString, name: "ProductTitle"))
    SaaSProductSummary.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductVisibilityString, name: "Visibility"))
    SaaSProductSummary.type = Types::SaaSProductSummary
    SaaSProductTitleFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductTitleFilterValueList, name: "ValueList"))
    SaaSProductTitleFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductTitleString, name: "WildCardValue"))
    SaaSProductTitleFilter.type = Types::SaaSProductTitleFilter
    SaaSProductTitleFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductTitleString, name: "member")
    SaaSProductVisibilityFilter.add_member(:value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductVisibilityFilterValueList, name: "ValueList"))
    SaaSProductVisibilityFilter.type = Types::SaaSProductVisibilityFilter
    SaaSProductVisibilityFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSProductVisibilityString, name: "member")
    SaaSProductVisibilityString.add_member(:limited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Limited", traits: {"smithy.api#enumValue" => "Limited"}))
    SaaSProductVisibilityString.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Public", traits: {"smithy.api#enumValue" => "Public"}))
    SaaSProductVisibilityString.add_member(:restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Restricted", traits: {"smithy.api#enumValue" => "Restricted"}))
    SaaSProductVisibilityString.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Draft", traits: {"smithy.api#enumValue" => "Draft"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessageContent, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Sort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortBy, name: "SortBy"))
    Sort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    Sort.type = Types::Sort
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    StartChangeSetRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartChangeSetRequest.add_member(:change_set, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedChangeList, name: "ChangeSet", traits: {"smithy.api#required" => {}}))
    StartChangeSetRequest.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSetName, name: "ChangeSetName"))
    StartChangeSetRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartChangeSetRequest.add_member(:change_set_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "ChangeSetTags"))
    StartChangeSetRequest.add_member(:intent, ::Smithy::Schema::Shapes::MemberShape.new(target: Intent, name: "Intent"))
    StartChangeSetRequest.type = Types::StartChangeSetRequest
    StartChangeSetResponse.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ChangeSetId"))
    StartChangeSetResponse.add_member(:change_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ChangeSetArn"))
    StartChangeSetResponse.type = Types::StartChangeSetResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessageContent, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessageContent, name: "Message"))
    ValidationException.type = Types::ValidationException
    ValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueContent, name: "member")

    AWSMPSeymour = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplacecatalog#AWSMPSeymour"
      service.name = "AWSMPSeymour"
      service.version = "2018-09-17"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Catalog", "arnNamespace" => "aws-marketplace", "cloudFormationName" => "MarketplaceCatalog", "cloudTrailEventSource" => "marketplacecatalog.amazonaws.com", "endpointPrefix" => "catalog.marketplace"}, "aws.auth#sigv4" => {"name" => "aws-marketplace"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Marketplace Catalog Service"}
      service.add_operation(:batch_describe_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#BatchDescribeEntities"
        operation.name = "BatchDescribeEntities"
        operation.input = BatchDescribeEntitiesRequest
        operation.output = BatchDescribeEntitiesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchDescribeEntities", "code" => 200}}
      end)
      service.add_operation(:cancel_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#CancelChangeSet"
        operation.name = "CancelChangeSet"
        operation.input = CancelChangeSetRequest
        operation.output = CancelChangeSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/CancelChangeSet", "code" => 200}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/DeleteResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:describe_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#DescribeChangeSet"
        operation.name = "DescribeChangeSet"
        operation.input = DescribeChangeSetRequest
        operation.output = DescribeChangeSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/DescribeChangeSet", "code" => 200}}
      end)
      service.add_operation(:describe_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#DescribeEntity"
        operation.name = "DescribeEntity"
        operation.input = DescribeEntityRequest
        operation.output = DescribeEntityResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceNotSupportedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/DescribeEntity", "code" => 200}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:list_change_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#ListChangeSets"
        operation.name = "ListChangeSets"
        operation.input = ListChangeSetsRequest
        operation.output = ListChangeSetsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListChangeSets", "code" => 200}}
        operation[:paginator] = Paginators::ListChangeSets.new
      end)
      service.add_operation(:list_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#ListEntities"
        operation.name = "ListEntities"
        operation.input = ListEntitiesRequest
        operation.output = ListEntitiesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListEntities", "code" => 200}}
        operation[:paginator] = Paginators::ListEntities.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTagsForResource", "code" => 200}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:start_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#StartChangeSet"
        operation.name = "StartChangeSet"
        operation.input = StartChangeSetRequest
        operation.output = StartChangeSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartChangeSet", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TagResource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UntagResource", "code" => 200}}
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
