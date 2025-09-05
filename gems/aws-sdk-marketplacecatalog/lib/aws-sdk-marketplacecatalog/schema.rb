# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceCatalog
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ARN', name: 'ARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:*/-]+$"})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmiProductEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductEntityIdFilter', name: 'AmiProductEntityIdFilter')
    AmiProductEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductEntityIdFilterValueList', name: 'AmiProductEntityIdFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AmiProductEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductEntityIdString', name: 'AmiProductEntityIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    AmiProductFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductFilters', name: 'AmiProductFilters')
    AmiProductLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductLastModifiedDateFilter', name: 'AmiProductLastModifiedDateFilter')
    AmiProductLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductLastModifiedDateFilterDateRange', name: 'AmiProductLastModifiedDateFilterDateRange')
    AmiProductSort = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductSort', name: 'AmiProductSort')
    AmiProductSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductSortBy', name: 'AmiProductSortBy')
    AmiProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductSummary', name: 'AmiProductSummary')
    AmiProductTitleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductTitleFilter', name: 'AmiProductTitleFilter')
    AmiProductTitleFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductTitleFilterValueList', name: 'AmiProductTitleFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AmiProductTitleString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductTitleString', name: 'AmiProductTitleString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    AmiProductVisibilityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductVisibilityFilter', name: 'AmiProductVisibilityFilter')
    AmiProductVisibilityFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductVisibilityFilterValueList', name: 'AmiProductVisibilityFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AmiProductVisibilityString = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#AmiProductVisibilityString', name: 'AmiProductVisibilityString')
    BatchDescribeEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#BatchDescribeEntitiesRequest', name: 'BatchDescribeEntitiesRequest')
    BatchDescribeEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#BatchDescribeEntitiesResponse', name: 'BatchDescribeEntitiesResponse')
    BatchDescribeErrorCodeString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#BatchDescribeErrorCodeString', name: 'BatchDescribeErrorCodeString', traits: {"smithy.api#length" => {"min" => 1, "max" => 72}, "smithy.api#pattern" => "^[a-zA-Z_]+$"})
    BatchDescribeErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#BatchDescribeErrorDetail', name: 'BatchDescribeErrorDetail')
    BatchDescribeErrorMessageContent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#BatchDescribeErrorMessageContent', name: 'BatchDescribeErrorMessageContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(.)+$"})
    CancelChangeSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#CancelChangeSetRequest', name: 'CancelChangeSetRequest')
    CancelChangeSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#CancelChangeSetResponse', name: 'CancelChangeSetResponse')
    Catalog = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#Catalog', name: 'Catalog', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    Change = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#Change', name: 'Change')
    ChangeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ChangeName', name: 'ChangeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 72}, "smithy.api#pattern" => "^[a-zA-Z]$"})
    ChangeSetDescription = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ChangeSetDescription', name: 'ChangeSetDescription')
    ChangeSetName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ChangeSetName', name: 'ChangeSetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\w\\s+=.:@-]+$"})
    ChangeSetSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ChangeSetSummaryList', name: 'ChangeSetSummaryList')
    ChangeSetSummaryListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ChangeSetSummaryListItem', name: 'ChangeSetSummaryListItem')
    ChangeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#ChangeStatus', name: 'ChangeStatus')
    ChangeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ChangeSummary', name: 'ChangeSummary')
    ChangeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ChangeType', name: 'ChangeType', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Z][\\w]*$"})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    ContainerProductEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductEntityIdFilter', name: 'ContainerProductEntityIdFilter')
    ContainerProductEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductEntityIdFilterValueList', name: 'ContainerProductEntityIdFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ContainerProductEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductEntityIdString', name: 'ContainerProductEntityIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    ContainerProductFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductFilters', name: 'ContainerProductFilters')
    ContainerProductLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductLastModifiedDateFilter', name: 'ContainerProductLastModifiedDateFilter')
    ContainerProductLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductLastModifiedDateFilterDateRange', name: 'ContainerProductLastModifiedDateFilterDateRange')
    ContainerProductSort = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductSort', name: 'ContainerProductSort')
    ContainerProductSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductSortBy', name: 'ContainerProductSortBy')
    ContainerProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductSummary', name: 'ContainerProductSummary')
    ContainerProductTitleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductTitleFilter', name: 'ContainerProductTitleFilter')
    ContainerProductTitleFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductTitleFilterValueList', name: 'ContainerProductTitleFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ContainerProductTitleString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductTitleString', name: 'ContainerProductTitleString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ContainerProductVisibilityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductVisibilityFilter', name: 'ContainerProductVisibilityFilter')
    ContainerProductVisibilityFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductVisibilityFilterValueList', name: 'ContainerProductVisibilityFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ContainerProductVisibilityString = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#ContainerProductVisibilityString', name: 'ContainerProductVisibilityString')
    DataProductEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductEntityIdFilter', name: 'DataProductEntityIdFilter')
    DataProductEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductEntityIdFilterValueList', name: 'DataProductEntityIdFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DataProductEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductEntityIdString', name: 'DataProductEntityIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    DataProductFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductFilters', name: 'DataProductFilters')
    DataProductLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductLastModifiedDateFilter', name: 'DataProductLastModifiedDateFilter')
    DataProductLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductLastModifiedDateFilterDateRange', name: 'DataProductLastModifiedDateFilterDateRange')
    DataProductSort = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductSort', name: 'DataProductSort')
    DataProductSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductSortBy', name: 'DataProductSortBy')
    DataProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductSummary', name: 'DataProductSummary')
    DataProductTitleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductTitleFilter', name: 'DataProductTitleFilter')
    DataProductTitleFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductTitleFilterValueList', name: 'DataProductTitleFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DataProductTitleString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductTitleString', name: 'DataProductTitleString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    DataProductVisibilityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductVisibilityFilter', name: 'DataProductVisibilityFilter')
    DataProductVisibilityFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductVisibilityFilterValueList', name: 'DataProductVisibilityFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DataProductVisibilityString = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#DataProductVisibilityString', name: 'DataProductVisibilityString')
    DateTimeISO8601 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#DateTimeISO8601', name: 'DateTimeISO8601', traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^([\\d]{4})\\-(1[0-2]|0[1-9])\\-(3[01]|0[1-9]|[12][\\d])T(2[0-3]|[01][\\d]):([0-5][\\d]):([0-5][\\d])Z$"})
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DeleteResourcePolicyResponse', name: 'DeleteResourcePolicyResponse')
    DescribeChangeSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DescribeChangeSetRequest', name: 'DescribeChangeSetRequest')
    DescribeChangeSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DescribeChangeSetResponse', name: 'DescribeChangeSetResponse')
    DescribeEntityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DescribeEntityRequest', name: 'DescribeEntityRequest')
    DescribeEntityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#DescribeEntityResponse', name: 'DescribeEntityResponse')
    Entity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#Entity', name: 'Entity')
    EntityDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#EntityDetail', name: 'EntityDetail')
    EntityDetails = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.marketplacecatalog#EntityDetails', name: 'EntityDetails')
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#EntityId', name: 'EntityId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    EntityNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#EntityNameString', name: 'EntityNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\\\S+[\\\\S\\\\s]*$"})
    EntityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#EntityRequest', name: 'EntityRequest')
    EntityRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#EntityRequestList', name: 'EntityRequestList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    EntitySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#EntitySummary', name: 'EntitySummary')
    EntitySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#EntitySummaryList', name: 'EntitySummaryList')
    EntityType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#EntityType', name: 'EntityType', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    EntityTypeFilters = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.marketplacecatalog#EntityTypeFilters', name: 'EntityTypeFilters')
    EntityTypeSort = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.marketplacecatalog#EntityTypeSort', name: 'EntityTypeSort')
    ErrorCodeString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ErrorCodeString', name: 'ErrorCodeString', traits: {"smithy.api#length" => {"min" => 1, "max" => 72}, "smithy.api#pattern" => "^[a-zA-Z_]+$"})
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ErrorDetail', name: 'ErrorDetail')
    ErrorDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ErrorDetailList', name: 'ErrorDetailList')
    Errors = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.marketplacecatalog#Errors', name: 'Errors')
    ExceptionMessageContent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ExceptionMessageContent', name: 'ExceptionMessageContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(.)+$"})
    FailureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#FailureCode', name: 'FailureCode')
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#Filter', name: 'Filter')
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#FilterList', name: 'FilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#FilterName', name: 'FilterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    FilterValueContent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#FilterValueContent', name: 'FilterValueContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#GetResourcePolicyResponse', name: 'GetResourcePolicyResponse')
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#Identifier', name: 'Identifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-@]+$"})
    Intent = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#Intent', name: 'Intent')
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#InternalServiceException', name: 'InternalServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Json = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#Json', name: 'Json', traits: {"smithy.api#length" => {"min" => 2, "max" => 16384}, "smithy.api#pattern" => "^[\\s]*\\{[\\s\\S]*\\}[\\s]*$"})
    JsonDocumentType = ::Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.marketplacecatalog#JsonDocumentType', name: 'JsonDocumentType')
    ListChangeSetsMaxResultInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.marketplacecatalog#ListChangeSetsMaxResultInteger', name: 'ListChangeSetsMaxResultInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ListChangeSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ListChangeSetsRequest', name: 'ListChangeSetsRequest')
    ListChangeSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ListChangeSetsResponse', name: 'ListChangeSetsResponse')
    ListEntitiesMaxResultInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.marketplacecatalog#ListEntitiesMaxResultInteger', name: 'ListEntitiesMaxResultInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ListEntitiesRequest', name: 'ListEntitiesRequest')
    ListEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ListEntitiesResponse', name: 'ListEntitiesResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MachineLearningProductEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductEntityIdFilter', name: 'MachineLearningProductEntityIdFilter')
    MachineLearningProductEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductEntityIdFilterValueList', name: 'MachineLearningProductEntityIdFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MachineLearningProductEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductEntityIdString', name: 'MachineLearningProductEntityIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    MachineLearningProductFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductFilters', name: 'MachineLearningProductFilters')
    MachineLearningProductLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductLastModifiedDateFilter', name: 'MachineLearningProductLastModifiedDateFilter')
    MachineLearningProductLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductLastModifiedDateFilterDateRange', name: 'MachineLearningProductLastModifiedDateFilterDateRange')
    MachineLearningProductSort = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductSort', name: 'MachineLearningProductSort')
    MachineLearningProductSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductSortBy', name: 'MachineLearningProductSortBy')
    MachineLearningProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductSummary', name: 'MachineLearningProductSummary')
    MachineLearningProductTitleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductTitleFilter', name: 'MachineLearningProductTitleFilter')
    MachineLearningProductTitleFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductTitleFilterValueList', name: 'MachineLearningProductTitleFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MachineLearningProductTitleString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductTitleString', name: 'MachineLearningProductTitleString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    MachineLearningProductVisibilityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductVisibilityFilter', name: 'MachineLearningProductVisibilityFilter')
    MachineLearningProductVisibilityFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductVisibilityFilterValueList', name: 'MachineLearningProductVisibilityFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MachineLearningProductVisibilityString = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#MachineLearningProductVisibilityString', name: 'MachineLearningProductVisibilityString')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\w+=.:@\\-\\/]$"})
    OfferAvailabilityEndDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferAvailabilityEndDateFilter', name: 'OfferAvailabilityEndDateFilter')
    OfferAvailabilityEndDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferAvailabilityEndDateFilterDateRange', name: 'OfferAvailabilityEndDateFilterDateRange')
    OfferBuyerAccountsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferBuyerAccountsFilter', name: 'OfferBuyerAccountsFilter')
    OfferBuyerAccountsFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#OfferBuyerAccountsFilterWildcard', name: 'OfferBuyerAccountsFilterWildcard', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    OfferBuyerAccountsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#OfferBuyerAccountsList', name: 'OfferBuyerAccountsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 26}})
    OfferBuyerAccountsString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#OfferBuyerAccountsString', name: 'OfferBuyerAccountsString', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    OfferEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferEntityIdFilter', name: 'OfferEntityIdFilter')
    OfferEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#OfferEntityIdFilterValueList', name: 'OfferEntityIdFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OfferEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#OfferEntityIdString', name: 'OfferEntityIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    OfferFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferFilters', name: 'OfferFilters')
    OfferLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferLastModifiedDateFilter', name: 'OfferLastModifiedDateFilter')
    OfferLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferLastModifiedDateFilterDateRange', name: 'OfferLastModifiedDateFilterDateRange')
    OfferNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferNameFilter', name: 'OfferNameFilter')
    OfferNameFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#OfferNameFilterValueList', name: 'OfferNameFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OfferNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#OfferNameString', name: 'OfferNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^(.)+$"})
    OfferProductIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferProductIdFilter', name: 'OfferProductIdFilter')
    OfferProductIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#OfferProductIdFilterValueList', name: 'OfferProductIdFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OfferProductIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#OfferProductIdString', name: 'OfferProductIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    OfferReleaseDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferReleaseDateFilter', name: 'OfferReleaseDateFilter')
    OfferReleaseDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferReleaseDateFilterDateRange', name: 'OfferReleaseDateFilterDateRange')
    OfferResaleAuthorizationIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferResaleAuthorizationIdFilter', name: 'OfferResaleAuthorizationIdFilter')
    OfferResaleAuthorizationIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#OfferResaleAuthorizationIdFilterValueList', name: 'OfferResaleAuthorizationIdFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OfferResaleAuthorizationIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#OfferResaleAuthorizationIdString', name: 'OfferResaleAuthorizationIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    OfferSort = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferSort', name: 'OfferSort')
    OfferSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#OfferSortBy', name: 'OfferSortBy')
    OfferStateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferStateFilter', name: 'OfferStateFilter')
    OfferStateFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#OfferStateFilterValueList', name: 'OfferStateFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    OfferStateString = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#OfferStateString', name: 'OfferStateString')
    OfferSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferSummary', name: 'OfferSummary')
    OfferTargetingFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#OfferTargetingFilter', name: 'OfferTargetingFilter')
    OfferTargetingFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#OfferTargetingFilterValueList', name: 'OfferTargetingFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    OfferTargetingList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#OfferTargetingList', name: 'OfferTargetingList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    OfferTargetingString = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#OfferTargetingString', name: 'OfferTargetingString')
    OwnershipType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#OwnershipType', name: 'OwnershipType')
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    RequestedChangeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#RequestedChangeList', name: 'RequestedChangeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ResaleAuthorizationAvailabilityEndDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationAvailabilityEndDateFilter', name: 'ResaleAuthorizationAvailabilityEndDateFilter')
    ResaleAuthorizationAvailabilityEndDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationAvailabilityEndDateFilterDateRange', name: 'ResaleAuthorizationAvailabilityEndDateFilterDateRange')
    ResaleAuthorizationAvailabilityEndDateFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationAvailabilityEndDateFilterValueList', name: 'ResaleAuthorizationAvailabilityEndDateFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationCreatedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationCreatedDateFilter', name: 'ResaleAuthorizationCreatedDateFilter')
    ResaleAuthorizationCreatedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationCreatedDateFilterDateRange', name: 'ResaleAuthorizationCreatedDateFilterDateRange')
    ResaleAuthorizationCreatedDateFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationCreatedDateFilterValueList', name: 'ResaleAuthorizationCreatedDateFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationEntityIdFilter', name: 'ResaleAuthorizationEntityIdFilter')
    ResaleAuthorizationEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationEntityIdFilterValueList', name: 'ResaleAuthorizationEntityIdFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationEntityIdString', name: 'ResaleAuthorizationEntityIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    ResaleAuthorizationFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationFilters', name: 'ResaleAuthorizationFilters')
    ResaleAuthorizationLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationLastModifiedDateFilter', name: 'ResaleAuthorizationLastModifiedDateFilter')
    ResaleAuthorizationLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationLastModifiedDateFilterDateRange', name: 'ResaleAuthorizationLastModifiedDateFilterDateRange')
    ResaleAuthorizationManufacturerAccountIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerAccountIdFilter', name: 'ResaleAuthorizationManufacturerAccountIdFilter')
    ResaleAuthorizationManufacturerAccountIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerAccountIdFilterValueList', name: 'ResaleAuthorizationManufacturerAccountIdFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationManufacturerAccountIdFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerAccountIdFilterWildcard', name: 'ResaleAuthorizationManufacturerAccountIdFilterWildcard', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    ResaleAuthorizationManufacturerAccountIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerAccountIdString', name: 'ResaleAuthorizationManufacturerAccountIdString', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    ResaleAuthorizationManufacturerLegalNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerLegalNameFilter', name: 'ResaleAuthorizationManufacturerLegalNameFilter')
    ResaleAuthorizationManufacturerLegalNameFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerLegalNameFilterValueList', name: 'ResaleAuthorizationManufacturerLegalNameFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationManufacturerLegalNameFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerLegalNameFilterWildcard', name: 'ResaleAuthorizationManufacturerLegalNameFilterWildcard', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationManufacturerLegalNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationManufacturerLegalNameString', name: 'ResaleAuthorizationManufacturerLegalNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationNameFilter', name: 'ResaleAuthorizationNameFilter')
    ResaleAuthorizationNameFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationNameFilterValueList', name: 'ResaleAuthorizationNameFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationNameFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationNameFilterWildcard', name: 'ResaleAuthorizationNameFilterWildcard', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationNameString', name: 'ResaleAuthorizationNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationOfferExtendedStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationOfferExtendedStatusFilter', name: 'ResaleAuthorizationOfferExtendedStatusFilter')
    ResaleAuthorizationOfferExtendedStatusFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationOfferExtendedStatusFilterValueList', name: 'ResaleAuthorizationOfferExtendedStatusFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationOfferExtendedStatusString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationOfferExtendedStatusString', name: 'ResaleAuthorizationOfferExtendedStatusString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationProductIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationProductIdFilter', name: 'ResaleAuthorizationProductIdFilter')
    ResaleAuthorizationProductIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationProductIdFilterValueList', name: 'ResaleAuthorizationProductIdFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationProductIdFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationProductIdFilterWildcard', name: 'ResaleAuthorizationProductIdFilterWildcard', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationProductIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationProductIdString', name: 'ResaleAuthorizationProductIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationProductNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationProductNameFilter', name: 'ResaleAuthorizationProductNameFilter')
    ResaleAuthorizationProductNameFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationProductNameFilterValueList', name: 'ResaleAuthorizationProductNameFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationProductNameFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationProductNameFilterWildcard', name: 'ResaleAuthorizationProductNameFilterWildcard', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationProductNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationProductNameString', name: 'ResaleAuthorizationProductNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationResellerAccountIDFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerAccountIDFilter', name: 'ResaleAuthorizationResellerAccountIDFilter')
    ResaleAuthorizationResellerAccountIDFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerAccountIDFilterValueList', name: 'ResaleAuthorizationResellerAccountIDFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationResellerAccountIDFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerAccountIDFilterWildcard', name: 'ResaleAuthorizationResellerAccountIDFilterWildcard', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    ResaleAuthorizationResellerAccountIDString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerAccountIDString', name: 'ResaleAuthorizationResellerAccountIDString', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    ResaleAuthorizationResellerLegalNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerLegalNameFilter', name: 'ResaleAuthorizationResellerLegalNameFilter')
    ResaleAuthorizationResellerLegalNameFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerLegalNameFilterValueList', name: 'ResaleAuthorizationResellerLegalNameFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationResellerLegalNameFilterWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerLegalNameFilterWildcard', name: 'ResaleAuthorizationResellerLegalNameFilterWildcard', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationResellerLegalNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationResellerLegalNameString', name: 'ResaleAuthorizationResellerLegalNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    ResaleAuthorizationSort = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationSort', name: 'ResaleAuthorizationSort')
    ResaleAuthorizationSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationSortBy', name: 'ResaleAuthorizationSortBy')
    ResaleAuthorizationStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationStatusFilter', name: 'ResaleAuthorizationStatusFilter')
    ResaleAuthorizationStatusFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationStatusFilterValueList', name: 'ResaleAuthorizationStatusFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResaleAuthorizationStatusString = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationStatusString', name: 'ResaleAuthorizationStatusString')
    ResaleAuthorizationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResaleAuthorizationSummary', name: 'ResaleAuthorizationSummary')
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:aws-marketplace:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    ResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ResourceIdList', name: 'ResourceIdList')
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 423})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ResourceNotSupportedException', name: 'ResourceNotSupportedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 415})
    ResourcePolicyJson = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#ResourcePolicyJson', name: 'ResourcePolicyJson', traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    SaaSProductEntityIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductEntityIdFilter', name: 'SaaSProductEntityIdFilter')
    SaaSProductEntityIdFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductEntityIdFilterValueList', name: 'SaaSProductEntityIdFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SaaSProductEntityIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductEntityIdString', name: 'SaaSProductEntityIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][.a-zA-Z0-9/-]+[a-zA-Z0-9]$"})
    SaaSProductFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductFilters', name: 'SaaSProductFilters')
    SaaSProductLastModifiedDateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductLastModifiedDateFilter', name: 'SaaSProductLastModifiedDateFilter')
    SaaSProductLastModifiedDateFilterDateRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductLastModifiedDateFilterDateRange', name: 'SaaSProductLastModifiedDateFilterDateRange')
    SaaSProductSort = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductSort', name: 'SaaSProductSort')
    SaaSProductSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductSortBy', name: 'SaaSProductSortBy')
    SaaSProductSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductSummary', name: 'SaaSProductSummary')
    SaaSProductTitleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductTitleFilter', name: 'SaaSProductTitleFilter')
    SaaSProductTitleFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductTitleFilterValueList', name: 'SaaSProductTitleFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SaaSProductTitleString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductTitleString', name: 'SaaSProductTitleString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(.)+$"})
    SaaSProductVisibilityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductVisibilityFilter', name: 'SaaSProductVisibilityFilter')
    SaaSProductVisibilityFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductVisibilityFilterValueList', name: 'SaaSProductVisibilityFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SaaSProductVisibilityString = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#SaaSProductVisibilityString', name: 'SaaSProductVisibilityString')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Sort = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#Sort', name: 'Sort')
    SortBy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#SortBy', name: 'SortBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplacecatalog#SortOrder', name: 'SortOrder')
    StartChangeSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#StartChangeSetRequest', name: 'StartChangeSetRequest')
    StartChangeSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#StartChangeSetResponse', name: 'StartChangeSetResponse')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#UntagResourceResponse', name: 'UntagResourceResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplacecatalog#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    ValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplacecatalog#ValueList', name: 'ValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    VisibilityValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplacecatalog#VisibilityValue', name: 'VisibilityValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z]+$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AmiProductEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductEntityIdFilterValueList, location_name: 'ValueList'))
    AmiProductEntityIdFilter.type = Types::AmiProductEntityIdFilter
    AmiProductEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductEntityIdString)
    AmiProductFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductEntityIdFilter, location_name: 'EntityId'))
    AmiProductFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductLastModifiedDateFilter, location_name: 'LastModifiedDate'))
    AmiProductFilters.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductTitleFilter, location_name: 'ProductTitle'))
    AmiProductFilters.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductVisibilityFilter, location_name: 'Visibility'))
    AmiProductFilters.type = Types::AmiProductFilters
    AmiProductLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductLastModifiedDateFilterDateRange, location_name: 'DateRange'))
    AmiProductLastModifiedDateFilter.type = Types::AmiProductLastModifiedDateFilter
    AmiProductLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AfterValue'))
    AmiProductLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'BeforeValue'))
    AmiProductLastModifiedDateFilterDateRange.type = Types::AmiProductLastModifiedDateFilterDateRange
    AmiProductSort.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductSortBy, location_name: 'SortBy'))
    AmiProductSort.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    AmiProductSort.type = Types::AmiProductSort
    AmiProductSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EntityId', traits: {"smithy.api#enumValue" => "EntityId"}))
    AmiProductSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LastModifiedDate', traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    AmiProductSortBy.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ProductTitle', traits: {"smithy.api#enumValue" => "ProductTitle"}))
    AmiProductSortBy.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Visibility', traits: {"smithy.api#enumValue" => "Visibility"}))
    AmiProductSummary.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductTitleString, location_name: 'ProductTitle'))
    AmiProductSummary.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductVisibilityString, location_name: 'Visibility'))
    AmiProductSummary.type = Types::AmiProductSummary
    AmiProductTitleFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductTitleFilterValueList, location_name: 'ValueList'))
    AmiProductTitleFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductTitleString, location_name: 'WildCardValue'))
    AmiProductTitleFilter.type = Types::AmiProductTitleFilter
    AmiProductTitleFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductTitleString)
    AmiProductVisibilityFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductVisibilityFilterValueList, location_name: 'ValueList'))
    AmiProductVisibilityFilter.type = Types::AmiProductVisibilityFilter
    AmiProductVisibilityFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductVisibilityString)
    AmiProductVisibilityString.add_member(:limited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Limited', traits: {"smithy.api#enumValue" => "Limited"}))
    AmiProductVisibilityString.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Public', traits: {"smithy.api#enumValue" => "Public"}))
    AmiProductVisibilityString.add_member(:restricted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Restricted', traits: {"smithy.api#enumValue" => "Restricted"}))
    AmiProductVisibilityString.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Draft', traits: {"smithy.api#enumValue" => "Draft"}))
    BatchDescribeEntitiesRequest.add_member(:entity_request_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRequestList, location_name: 'EntityRequestList', traits: {"smithy.api#required" => {}}))
    BatchDescribeEntitiesRequest.type = Types::BatchDescribeEntitiesRequest
    BatchDescribeEntitiesResponse.add_member(:entity_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDetails, location_name: 'EntityDetails'))
    BatchDescribeEntitiesResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Errors, location_name: 'Errors'))
    BatchDescribeEntitiesResponse.type = Types::BatchDescribeEntitiesResponse
    BatchDescribeErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeErrorCodeString, location_name: 'ErrorCode'))
    BatchDescribeErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeErrorMessageContent, location_name: 'ErrorMessage'))
    BatchDescribeErrorDetail.type = Types::BatchDescribeErrorDetail
    CancelChangeSetRequest.add_member(:catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Catalog, location_name: 'Catalog', traits: {"smithy.api#httpQuery" => "catalog", "smithy.api#required" => {}}))
    CancelChangeSetRequest.add_member(:change_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ChangeSetId', traits: {"smithy.api#httpQuery" => "changeSetId", "smithy.api#required" => {}}))
    CancelChangeSetRequest.type = Types::CancelChangeSetRequest
    CancelChangeSetResponse.add_member(:change_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ChangeSetId'))
    CancelChangeSetResponse.add_member(:change_set_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ChangeSetArn'))
    CancelChangeSetResponse.type = Types::CancelChangeSetResponse
    Change.add_member(:change_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'ChangeType', traits: {"smithy.api#required" => {}}))
    Change.add_member(:entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Entity, location_name: 'Entity', traits: {"smithy.api#required" => {}}))
    Change.add_member(:entity_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'EntityTags'))
    Change.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Json, location_name: 'Details'))
    Change.add_member(:details_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonDocumentType, location_name: 'DetailsDocument'))
    Change.add_member(:change_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeName, location_name: 'ChangeName'))
    Change.type = Types::Change
    ChangeSetDescription.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeSummary)
    ChangeSetSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeSetSummaryListItem)
    ChangeSetSummaryListItem.add_member(:change_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ChangeSetId'))
    ChangeSetSummaryListItem.add_member(:change_set_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ChangeSetArn'))
    ChangeSetSummaryListItem.add_member(:change_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeSetName, location_name: 'ChangeSetName'))
    ChangeSetSummaryListItem.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'StartTime'))
    ChangeSetSummaryListItem.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'EndTime'))
    ChangeSetSummaryListItem.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeStatus, location_name: 'Status'))
    ChangeSetSummaryListItem.add_member(:entity_id_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdList, location_name: 'EntityIdList'))
    ChangeSetSummaryListItem.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureCode, location_name: 'FailureCode'))
    ChangeSetSummaryListItem.type = Types::ChangeSetSummaryListItem
    ChangeStatus.add_member(:preparing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING', traits: {"smithy.api#enumValue" => "PREPARING"}))
    ChangeStatus.add_member(:applying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLYING', traits: {"smithy.api#enumValue" => "APPLYING"}))
    ChangeStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ChangeStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ChangeStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ChangeSummary.add_member(:change_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'ChangeType'))
    ChangeSummary.add_member(:entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Entity, location_name: 'Entity'))
    ChangeSummary.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Json, location_name: 'Details'))
    ChangeSummary.add_member(:details_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonDocumentType, location_name: 'DetailsDocument'))
    ChangeSummary.add_member(:error_detail_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetailList, location_name: 'ErrorDetailList'))
    ChangeSummary.add_member(:change_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeName, location_name: 'ChangeName'))
    ChangeSummary.type = Types::ChangeSummary
    ContainerProductEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductEntityIdFilterValueList, location_name: 'ValueList'))
    ContainerProductEntityIdFilter.type = Types::ContainerProductEntityIdFilter
    ContainerProductEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductEntityIdString)
    ContainerProductFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductEntityIdFilter, location_name: 'EntityId'))
    ContainerProductFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductLastModifiedDateFilter, location_name: 'LastModifiedDate'))
    ContainerProductFilters.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductTitleFilter, location_name: 'ProductTitle'))
    ContainerProductFilters.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductVisibilityFilter, location_name: 'Visibility'))
    ContainerProductFilters.type = Types::ContainerProductFilters
    ContainerProductLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductLastModifiedDateFilterDateRange, location_name: 'DateRange'))
    ContainerProductLastModifiedDateFilter.type = Types::ContainerProductLastModifiedDateFilter
    ContainerProductLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AfterValue'))
    ContainerProductLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'BeforeValue'))
    ContainerProductLastModifiedDateFilterDateRange.type = Types::ContainerProductLastModifiedDateFilterDateRange
    ContainerProductSort.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductSortBy, location_name: 'SortBy'))
    ContainerProductSort.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    ContainerProductSort.type = Types::ContainerProductSort
    ContainerProductSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EntityId', traits: {"smithy.api#enumValue" => "EntityId"}))
    ContainerProductSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LastModifiedDate', traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    ContainerProductSortBy.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ProductTitle', traits: {"smithy.api#enumValue" => "ProductTitle"}))
    ContainerProductSortBy.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Visibility', traits: {"smithy.api#enumValue" => "Visibility"}))
    ContainerProductSummary.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductTitleString, location_name: 'ProductTitle'))
    ContainerProductSummary.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductVisibilityString, location_name: 'Visibility'))
    ContainerProductSummary.type = Types::ContainerProductSummary
    ContainerProductTitleFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductTitleFilterValueList, location_name: 'ValueList'))
    ContainerProductTitleFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductTitleString, location_name: 'WildCardValue'))
    ContainerProductTitleFilter.type = Types::ContainerProductTitleFilter
    ContainerProductTitleFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductTitleString)
    ContainerProductVisibilityFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductVisibilityFilterValueList, location_name: 'ValueList'))
    ContainerProductVisibilityFilter.type = Types::ContainerProductVisibilityFilter
    ContainerProductVisibilityFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductVisibilityString)
    ContainerProductVisibilityString.add_member(:limited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Limited', traits: {"smithy.api#enumValue" => "Limited"}))
    ContainerProductVisibilityString.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Public', traits: {"smithy.api#enumValue" => "Public"}))
    ContainerProductVisibilityString.add_member(:restricted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Restricted', traits: {"smithy.api#enumValue" => "Restricted"}))
    ContainerProductVisibilityString.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Draft', traits: {"smithy.api#enumValue" => "Draft"}))
    DataProductEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductEntityIdFilterValueList, location_name: 'ValueList'))
    DataProductEntityIdFilter.type = Types::DataProductEntityIdFilter
    DataProductEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductEntityIdString)
    DataProductFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductEntityIdFilter, location_name: 'EntityId'))
    DataProductFilters.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductTitleFilter, location_name: 'ProductTitle'))
    DataProductFilters.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductVisibilityFilter, location_name: 'Visibility'))
    DataProductFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductLastModifiedDateFilter, location_name: 'LastModifiedDate'))
    DataProductFilters.type = Types::DataProductFilters
    DataProductLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductLastModifiedDateFilterDateRange, location_name: 'DateRange'))
    DataProductLastModifiedDateFilter.type = Types::DataProductLastModifiedDateFilter
    DataProductLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AfterValue'))
    DataProductLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'BeforeValue'))
    DataProductLastModifiedDateFilterDateRange.type = Types::DataProductLastModifiedDateFilterDateRange
    DataProductSort.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductSortBy, location_name: 'SortBy'))
    DataProductSort.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    DataProductSort.type = Types::DataProductSort
    DataProductSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EntityId', traits: {"smithy.api#enumValue" => "EntityId"}))
    DataProductSortBy.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ProductTitle', traits: {"smithy.api#enumValue" => "ProductTitle"}))
    DataProductSortBy.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Visibility', traits: {"smithy.api#enumValue" => "Visibility"}))
    DataProductSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LastModifiedDate', traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    DataProductSummary.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductTitleString, location_name: 'ProductTitle'))
    DataProductSummary.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductVisibilityString, location_name: 'Visibility'))
    DataProductSummary.type = Types::DataProductSummary
    DataProductTitleFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductTitleFilterValueList, location_name: 'ValueList'))
    DataProductTitleFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductTitleString, location_name: 'WildCardValue'))
    DataProductTitleFilter.type = Types::DataProductTitleFilter
    DataProductTitleFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductTitleString)
    DataProductVisibilityFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductVisibilityFilterValueList, location_name: 'ValueList'))
    DataProductVisibilityFilter.type = Types::DataProductVisibilityFilter
    DataProductVisibilityFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductVisibilityString)
    DataProductVisibilityString.add_member(:limited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Limited', traits: {"smithy.api#enumValue" => "Limited"}))
    DataProductVisibilityString.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Public', traits: {"smithy.api#enumValue" => "Public"}))
    DataProductVisibilityString.add_member(:restricted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Restricted', traits: {"smithy.api#enumValue" => "Restricted"}))
    DataProductVisibilityString.add_member(:unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unavailable', traits: {"smithy.api#enumValue" => "Unavailable"}))
    DataProductVisibilityString.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Draft', traits: {"smithy.api#enumValue" => "Draft"}))
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceArn', traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DescribeChangeSetRequest.add_member(:catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Catalog, location_name: 'Catalog', traits: {"smithy.api#httpQuery" => "catalog", "smithy.api#required" => {}}))
    DescribeChangeSetRequest.add_member(:change_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ChangeSetId', traits: {"smithy.api#httpQuery" => "changeSetId", "smithy.api#required" => {}}))
    DescribeChangeSetRequest.type = Types::DescribeChangeSetRequest
    DescribeChangeSetResponse.add_member(:change_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ChangeSetId'))
    DescribeChangeSetResponse.add_member(:change_set_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ChangeSetArn'))
    DescribeChangeSetResponse.add_member(:change_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeSetName, location_name: 'ChangeSetName'))
    DescribeChangeSetResponse.add_member(:intent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Intent, location_name: 'Intent'))
    DescribeChangeSetResponse.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'StartTime'))
    DescribeChangeSetResponse.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'EndTime'))
    DescribeChangeSetResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeStatus, location_name: 'Status'))
    DescribeChangeSetResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureCode, location_name: 'FailureCode'))
    DescribeChangeSetResponse.add_member(:failure_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: 'FailureDescription'))
    DescribeChangeSetResponse.add_member(:change_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeSetDescription, location_name: 'ChangeSet'))
    DescribeChangeSetResponse.type = Types::DescribeChangeSetResponse
    DescribeEntityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Catalog, location_name: 'Catalog', traits: {"smithy.api#httpQuery" => "catalog", "smithy.api#required" => {}}))
    DescribeEntityRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'EntityId', traits: {"smithy.api#httpQuery" => "entityId", "smithy.api#required" => {}}))
    DescribeEntityRequest.type = Types::DescribeEntityRequest
    DescribeEntityResponse.add_member(:entity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'EntityType'))
    DescribeEntityResponse.add_member(:entity_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'EntityIdentifier'))
    DescribeEntityResponse.add_member(:entity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'EntityArn'))
    DescribeEntityResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'LastModifiedDate'))
    DescribeEntityResponse.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Json, location_name: 'Details'))
    DescribeEntityResponse.add_member(:details_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonDocumentType, location_name: 'DetailsDocument'))
    DescribeEntityResponse.type = Types::DescribeEntityResponse
    Entity.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    Entity.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'Identifier'))
    Entity.type = Types::Entity
    EntityDetail.add_member(:entity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'EntityType'))
    EntityDetail.add_member(:entity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'EntityArn'))
    EntityDetail.add_member(:entity_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'EntityIdentifier'))
    EntityDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'LastModifiedDate'))
    EntityDetail.add_member(:details_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonDocumentType, location_name: 'DetailsDocument'))
    EntityDetail.type = Types::EntityDetail
    EntityDetails.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId)
    EntityDetails.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDetail)
    EntityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Catalog, location_name: 'Catalog', traits: {"smithy.api#required" => {}}))
    EntityRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    EntityRequest.type = Types::EntityRequest
    EntityRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRequest)
    EntitySummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNameString, location_name: 'Name'))
    EntitySummary.add_member(:entity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'EntityType'))
    EntitySummary.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'EntityId'))
    EntitySummary.add_member(:entity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'EntityArn'))
    EntitySummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'LastModifiedDate'))
    EntitySummary.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityValue, location_name: 'Visibility'))
    EntitySummary.add_member(:ami_product_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductSummary, location_name: 'AmiProductSummary'))
    EntitySummary.add_member(:container_product_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductSummary, location_name: 'ContainerProductSummary'))
    EntitySummary.add_member(:data_product_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductSummary, location_name: 'DataProductSummary'))
    EntitySummary.add_member(:saa_s_product_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductSummary, location_name: 'SaaSProductSummary'))
    EntitySummary.add_member(:offer_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferSummary, location_name: 'OfferSummary'))
    EntitySummary.add_member(:resale_authorization_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationSummary, location_name: 'ResaleAuthorizationSummary'))
    EntitySummary.add_member(:machine_learning_product_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductSummary, location_name: 'MachineLearningProductSummary'))
    EntitySummary.type = Types::EntitySummary
    EntitySummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntitySummary)
    EntityTypeFilters.add_member(:data_product_filters, Types::EntityTypeFilters::DataProductFilters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductFilters, location_name: 'DataProductFilters'))
    EntityTypeFilters.add_member(:saa_s_product_filters, Types::EntityTypeFilters::SaaSProductFilters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductFilters, location_name: 'SaaSProductFilters'))
    EntityTypeFilters.add_member(:ami_product_filters, Types::EntityTypeFilters::AmiProductFilters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductFilters, location_name: 'AmiProductFilters'))
    EntityTypeFilters.add_member(:offer_filters, Types::EntityTypeFilters::OfferFilters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferFilters, location_name: 'OfferFilters'))
    EntityTypeFilters.add_member(:container_product_filters, Types::EntityTypeFilters::ContainerProductFilters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductFilters, location_name: 'ContainerProductFilters'))
    EntityTypeFilters.add_member(:resale_authorization_filters, Types::EntityTypeFilters::ResaleAuthorizationFilters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationFilters, location_name: 'ResaleAuthorizationFilters'))
    EntityTypeFilters.add_member(:machine_learning_product_filters, Types::EntityTypeFilters::MachineLearningProductFilters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductFilters, location_name: 'MachineLearningProductFilters'))
    EntityTypeFilters.add_member(:unknown, Types::EntityTypeFilters::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    EntityTypeFilters.type = Types::EntityTypeFilters
    EntityTypeSort.add_member(:data_product_sort, Types::EntityTypeSort::DataProductSort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProductSort, location_name: 'DataProductSort'))
    EntityTypeSort.add_member(:saa_s_product_sort, Types::EntityTypeSort::SaaSProductSort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductSort, location_name: 'SaaSProductSort'))
    EntityTypeSort.add_member(:ami_product_sort, Types::EntityTypeSort::AmiProductSort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiProductSort, location_name: 'AmiProductSort'))
    EntityTypeSort.add_member(:offer_sort, Types::EntityTypeSort::OfferSort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferSort, location_name: 'OfferSort'))
    EntityTypeSort.add_member(:container_product_sort, Types::EntityTypeSort::ContainerProductSort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerProductSort, location_name: 'ContainerProductSort'))
    EntityTypeSort.add_member(:resale_authorization_sort, Types::EntityTypeSort::ResaleAuthorizationSort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationSort, location_name: 'ResaleAuthorizationSort'))
    EntityTypeSort.add_member(:machine_learning_product_sort, Types::EntityTypeSort::MachineLearningProductSort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductSort, location_name: 'MachineLearningProductSort'))
    EntityTypeSort.add_member(:unknown, Types::EntityTypeSort::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    EntityTypeSort.type = Types::EntityTypeSort
    ErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCodeString, location_name: 'ErrorCode'))
    ErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: 'ErrorMessage'))
    ErrorDetail.type = Types::ErrorDetail
    ErrorDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail)
    Errors.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId)
    Errors.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeErrorDetail)
    FailureCode.add_member(:client_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ClientError', traits: {"smithy.api#enumValue" => "CLIENT_ERROR"}))
    FailureCode.add_member(:server_fault, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServerFault', traits: {"smithy.api#enumValue" => "SERVER_FAULT"}))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'Name'))
    Filter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueList, location_name: 'ValueList'))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceArn', traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyJson, location_name: 'Policy'))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    Intent.add_member(:validate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATE', traits: {"smithy.api#enumValue" => "VALIDATE"}))
    Intent.add_member(:apply, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLY', traits: {"smithy.api#enumValue" => "APPLY"}))
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: 'Message'))
    InternalServiceException.type = Types::InternalServiceException
    ListChangeSetsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Catalog, location_name: 'Catalog', traits: {"smithy.api#required" => {}}))
    ListChangeSetsRequest.add_member(:filter_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'FilterList'))
    ListChangeSetsRequest.add_member(:sort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sort, location_name: 'Sort'))
    ListChangeSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChangeSetsMaxResultInteger, location_name: 'MaxResults'))
    ListChangeSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListChangeSetsRequest.type = Types::ListChangeSetsRequest
    ListChangeSetsResponse.add_member(:change_set_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeSetSummaryList, location_name: 'ChangeSetSummaryList'))
    ListChangeSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListChangeSetsResponse.type = Types::ListChangeSetsResponse
    ListEntitiesRequest.add_member(:catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Catalog, location_name: 'Catalog', traits: {"smithy.api#required" => {}}))
    ListEntitiesRequest.add_member(:entity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'EntityType', traits: {"smithy.api#required" => {}}))
    ListEntitiesRequest.add_member(:filter_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'FilterList'))
    ListEntitiesRequest.add_member(:sort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sort, location_name: 'Sort'))
    ListEntitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListEntitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitiesMaxResultInteger, location_name: 'MaxResults'))
    ListEntitiesRequest.add_member(:ownership_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnershipType, location_name: 'OwnershipType'))
    ListEntitiesRequest.add_member(:entity_type_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypeFilters, location_name: 'EntityTypeFilters'))
    ListEntitiesRequest.add_member(:entity_type_sort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypeSort, location_name: 'EntityTypeSort'))
    ListEntitiesRequest.type = Types::ListEntitiesRequest
    ListEntitiesResponse.add_member(:entity_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntitySummaryList, location_name: 'EntitySummaryList'))
    ListEntitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListEntitiesResponse.type = Types::ListEntitiesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceArn'))
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MachineLearningProductEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductEntityIdFilterValueList, location_name: 'ValueList'))
    MachineLearningProductEntityIdFilter.type = Types::MachineLearningProductEntityIdFilter
    MachineLearningProductEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductEntityIdString)
    MachineLearningProductFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductEntityIdFilter, location_name: 'EntityId'))
    MachineLearningProductFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductLastModifiedDateFilter, location_name: 'LastModifiedDate'))
    MachineLearningProductFilters.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductTitleFilter, location_name: 'ProductTitle'))
    MachineLearningProductFilters.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductVisibilityFilter, location_name: 'Visibility'))
    MachineLearningProductFilters.type = Types::MachineLearningProductFilters
    MachineLearningProductLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductLastModifiedDateFilterDateRange, location_name: 'DateRange'))
    MachineLearningProductLastModifiedDateFilter.type = Types::MachineLearningProductLastModifiedDateFilter
    MachineLearningProductLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AfterValue'))
    MachineLearningProductLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'BeforeValue'))
    MachineLearningProductLastModifiedDateFilterDateRange.type = Types::MachineLearningProductLastModifiedDateFilterDateRange
    MachineLearningProductSort.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductSortBy, location_name: 'SortBy'))
    MachineLearningProductSort.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    MachineLearningProductSort.type = Types::MachineLearningProductSort
    MachineLearningProductSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EntityId', traits: {"smithy.api#enumValue" => "EntityId"}))
    MachineLearningProductSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LastModifiedDate', traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    MachineLearningProductSortBy.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ProductTitle', traits: {"smithy.api#enumValue" => "ProductTitle"}))
    MachineLearningProductSortBy.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Visibility', traits: {"smithy.api#enumValue" => "Visibility"}))
    MachineLearningProductSummary.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductTitleString, location_name: 'ProductTitle'))
    MachineLearningProductSummary.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductVisibilityString, location_name: 'Visibility'))
    MachineLearningProductSummary.type = Types::MachineLearningProductSummary
    MachineLearningProductTitleFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductTitleFilterValueList, location_name: 'ValueList'))
    MachineLearningProductTitleFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductTitleString, location_name: 'WildCardValue'))
    MachineLearningProductTitleFilter.type = Types::MachineLearningProductTitleFilter
    MachineLearningProductTitleFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductTitleString)
    MachineLearningProductVisibilityFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductVisibilityFilterValueList, location_name: 'ValueList'))
    MachineLearningProductVisibilityFilter.type = Types::MachineLearningProductVisibilityFilter
    MachineLearningProductVisibilityFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineLearningProductVisibilityString)
    MachineLearningProductVisibilityString.add_member(:limited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Limited', traits: {"smithy.api#enumValue" => "Limited"}))
    MachineLearningProductVisibilityString.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Public', traits: {"smithy.api#enumValue" => "Public"}))
    MachineLearningProductVisibilityString.add_member(:restricted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Restricted', traits: {"smithy.api#enumValue" => "Restricted"}))
    MachineLearningProductVisibilityString.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Draft', traits: {"smithy.api#enumValue" => "Draft"}))
    OfferAvailabilityEndDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferAvailabilityEndDateFilterDateRange, location_name: 'DateRange'))
    OfferAvailabilityEndDateFilter.type = Types::OfferAvailabilityEndDateFilter
    OfferAvailabilityEndDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AfterValue'))
    OfferAvailabilityEndDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'BeforeValue'))
    OfferAvailabilityEndDateFilterDateRange.type = Types::OfferAvailabilityEndDateFilterDateRange
    OfferBuyerAccountsFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferBuyerAccountsFilterWildcard, location_name: 'WildCardValue'))
    OfferBuyerAccountsFilter.type = Types::OfferBuyerAccountsFilter
    OfferBuyerAccountsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferBuyerAccountsString)
    OfferEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferEntityIdFilterValueList, location_name: 'ValueList'))
    OfferEntityIdFilter.type = Types::OfferEntityIdFilter
    OfferEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferEntityIdString)
    OfferFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferEntityIdFilter, location_name: 'EntityId'))
    OfferFilters.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferNameFilter, location_name: 'Name'))
    OfferFilters.add_member(:product_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferProductIdFilter, location_name: 'ProductId'))
    OfferFilters.add_member(:resale_authorization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferResaleAuthorizationIdFilter, location_name: 'ResaleAuthorizationId'))
    OfferFilters.add_member(:release_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferReleaseDateFilter, location_name: 'ReleaseDate'))
    OfferFilters.add_member(:availability_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferAvailabilityEndDateFilter, location_name: 'AvailabilityEndDate'))
    OfferFilters.add_member(:buyer_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferBuyerAccountsFilter, location_name: 'BuyerAccounts'))
    OfferFilters.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferStateFilter, location_name: 'State'))
    OfferFilters.add_member(:targeting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferTargetingFilter, location_name: 'Targeting'))
    OfferFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferLastModifiedDateFilter, location_name: 'LastModifiedDate'))
    OfferFilters.type = Types::OfferFilters
    OfferLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferLastModifiedDateFilterDateRange, location_name: 'DateRange'))
    OfferLastModifiedDateFilter.type = Types::OfferLastModifiedDateFilter
    OfferLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AfterValue'))
    OfferLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'BeforeValue'))
    OfferLastModifiedDateFilterDateRange.type = Types::OfferLastModifiedDateFilterDateRange
    OfferNameFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferNameFilterValueList, location_name: 'ValueList'))
    OfferNameFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferNameString, location_name: 'WildCardValue'))
    OfferNameFilter.type = Types::OfferNameFilter
    OfferNameFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferNameString)
    OfferProductIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferProductIdFilterValueList, location_name: 'ValueList'))
    OfferProductIdFilter.type = Types::OfferProductIdFilter
    OfferProductIdFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferProductIdString)
    OfferReleaseDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferReleaseDateFilterDateRange, location_name: 'DateRange'))
    OfferReleaseDateFilter.type = Types::OfferReleaseDateFilter
    OfferReleaseDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AfterValue'))
    OfferReleaseDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'BeforeValue'))
    OfferReleaseDateFilterDateRange.type = Types::OfferReleaseDateFilterDateRange
    OfferResaleAuthorizationIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferResaleAuthorizationIdFilterValueList, location_name: 'ValueList'))
    OfferResaleAuthorizationIdFilter.type = Types::OfferResaleAuthorizationIdFilter
    OfferResaleAuthorizationIdFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferResaleAuthorizationIdString)
    OfferSort.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferSortBy, location_name: 'SortBy'))
    OfferSort.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    OfferSort.type = Types::OfferSort
    OfferSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EntityId', traits: {"smithy.api#enumValue" => "EntityId"}))
    OfferSortBy.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Name', traits: {"smithy.api#enumValue" => "Name"}))
    OfferSortBy.add_member(:product_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ProductId', traits: {"smithy.api#enumValue" => "ProductId"}))
    OfferSortBy.add_member(:resale_authorization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResaleAuthorizationId', traits: {"smithy.api#enumValue" => "ResaleAuthorizationId"}))
    OfferSortBy.add_member(:release_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReleaseDate', traits: {"smithy.api#enumValue" => "ReleaseDate"}))
    OfferSortBy.add_member(:availability_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AvailabilityEndDate', traits: {"smithy.api#enumValue" => "AvailabilityEndDate"}))
    OfferSortBy.add_member(:buyer_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BuyerAccounts', traits: {"smithy.api#enumValue" => "BuyerAccounts"}))
    OfferSortBy.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'State', traits: {"smithy.api#enumValue" => "State"}))
    OfferSortBy.add_member(:targeting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Targeting', traits: {"smithy.api#enumValue" => "Targeting"}))
    OfferSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LastModifiedDate', traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    OfferStateFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferStateFilterValueList, location_name: 'ValueList'))
    OfferStateFilter.type = Types::OfferStateFilter
    OfferStateFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferStateString)
    OfferStateString.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Draft', traits: {"smithy.api#enumValue" => "Draft"}))
    OfferStateString.add_member(:released, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Released', traits: {"smithy.api#enumValue" => "Released"}))
    OfferSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferNameString, location_name: 'Name'))
    OfferSummary.add_member(:product_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferProductIdString, location_name: 'ProductId'))
    OfferSummary.add_member(:resale_authorization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferResaleAuthorizationIdString, location_name: 'ResaleAuthorizationId'))
    OfferSummary.add_member(:release_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'ReleaseDate'))
    OfferSummary.add_member(:availability_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AvailabilityEndDate'))
    OfferSummary.add_member(:buyer_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferBuyerAccountsList, location_name: 'BuyerAccounts'))
    OfferSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferStateString, location_name: 'State'))
    OfferSummary.add_member(:targeting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferTargetingList, location_name: 'Targeting'))
    OfferSummary.type = Types::OfferSummary
    OfferTargetingFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferTargetingFilterValueList, location_name: 'ValueList'))
    OfferTargetingFilter.type = Types::OfferTargetingFilter
    OfferTargetingFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferTargetingString)
    OfferTargetingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferTargetingString)
    OfferTargetingString.add_member(:buyer_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BuyerAccounts', traits: {"smithy.api#enumValue" => "BuyerAccounts"}))
    OfferTargetingString.add_member(:participating_programs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ParticipatingPrograms', traits: {"smithy.api#enumValue" => "ParticipatingPrograms"}))
    OfferTargetingString.add_member(:country_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CountryCodes', traits: {"smithy.api#enumValue" => "CountryCodes"}))
    OfferTargetingString.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'None', traits: {"smithy.api#enumValue" => "None"}))
    OwnershipType.add_member(:self, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELF', traits: {"smithy.api#enumValue" => "SELF"}))
    OwnershipType.add_member(:shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "SHARED"}))
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyJson, location_name: 'Policy', traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RequestedChangeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Change)
    ResaleAuthorizationAvailabilityEndDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationAvailabilityEndDateFilterDateRange, location_name: 'DateRange'))
    ResaleAuthorizationAvailabilityEndDateFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationAvailabilityEndDateFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationAvailabilityEndDateFilter.type = Types::ResaleAuthorizationAvailabilityEndDateFilter
    ResaleAuthorizationAvailabilityEndDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AfterValue'))
    ResaleAuthorizationAvailabilityEndDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'BeforeValue'))
    ResaleAuthorizationAvailabilityEndDateFilterDateRange.type = Types::ResaleAuthorizationAvailabilityEndDateFilterDateRange
    ResaleAuthorizationAvailabilityEndDateFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601)
    ResaleAuthorizationCreatedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationCreatedDateFilterDateRange, location_name: 'DateRange'))
    ResaleAuthorizationCreatedDateFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationCreatedDateFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationCreatedDateFilter.type = Types::ResaleAuthorizationCreatedDateFilter
    ResaleAuthorizationCreatedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AfterValue'))
    ResaleAuthorizationCreatedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'BeforeValue'))
    ResaleAuthorizationCreatedDateFilterDateRange.type = Types::ResaleAuthorizationCreatedDateFilterDateRange
    ResaleAuthorizationCreatedDateFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601)
    ResaleAuthorizationEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationEntityIdFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationEntityIdFilter.type = Types::ResaleAuthorizationEntityIdFilter
    ResaleAuthorizationEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationEntityIdString)
    ResaleAuthorizationFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationEntityIdFilter, location_name: 'EntityId'))
    ResaleAuthorizationFilters.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationNameFilter, location_name: 'Name'))
    ResaleAuthorizationFilters.add_member(:product_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationProductIdFilter, location_name: 'ProductId'))
    ResaleAuthorizationFilters.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationCreatedDateFilter, location_name: 'CreatedDate'))
    ResaleAuthorizationFilters.add_member(:availability_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationAvailabilityEndDateFilter, location_name: 'AvailabilityEndDate'))
    ResaleAuthorizationFilters.add_member(:manufacturer_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerAccountIdFilter, location_name: 'ManufacturerAccountId'))
    ResaleAuthorizationFilters.add_member(:product_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationProductNameFilter, location_name: 'ProductName'))
    ResaleAuthorizationFilters.add_member(:manufacturer_legal_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerLegalNameFilter, location_name: 'ManufacturerLegalName'))
    ResaleAuthorizationFilters.add_member(:reseller_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerAccountIDFilter, location_name: 'ResellerAccountID'))
    ResaleAuthorizationFilters.add_member(:reseller_legal_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerLegalNameFilter, location_name: 'ResellerLegalName'))
    ResaleAuthorizationFilters.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationStatusFilter, location_name: 'Status'))
    ResaleAuthorizationFilters.add_member(:offer_extended_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationOfferExtendedStatusFilter, location_name: 'OfferExtendedStatus'))
    ResaleAuthorizationFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationLastModifiedDateFilter, location_name: 'LastModifiedDate'))
    ResaleAuthorizationFilters.type = Types::ResaleAuthorizationFilters
    ResaleAuthorizationLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationLastModifiedDateFilterDateRange, location_name: 'DateRange'))
    ResaleAuthorizationLastModifiedDateFilter.type = Types::ResaleAuthorizationLastModifiedDateFilter
    ResaleAuthorizationLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AfterValue'))
    ResaleAuthorizationLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'BeforeValue'))
    ResaleAuthorizationLastModifiedDateFilterDateRange.type = Types::ResaleAuthorizationLastModifiedDateFilterDateRange
    ResaleAuthorizationManufacturerAccountIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerAccountIdFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationManufacturerAccountIdFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerAccountIdFilterWildcard, location_name: 'WildCardValue'))
    ResaleAuthorizationManufacturerAccountIdFilter.type = Types::ResaleAuthorizationManufacturerAccountIdFilter
    ResaleAuthorizationManufacturerAccountIdFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerAccountIdString)
    ResaleAuthorizationManufacturerLegalNameFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerLegalNameFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationManufacturerLegalNameFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerLegalNameFilterWildcard, location_name: 'WildCardValue'))
    ResaleAuthorizationManufacturerLegalNameFilter.type = Types::ResaleAuthorizationManufacturerLegalNameFilter
    ResaleAuthorizationManufacturerLegalNameFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerLegalNameString)
    ResaleAuthorizationNameFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationNameFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationNameFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationNameFilterWildcard, location_name: 'WildCardValue'))
    ResaleAuthorizationNameFilter.type = Types::ResaleAuthorizationNameFilter
    ResaleAuthorizationNameFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationNameString)
    ResaleAuthorizationOfferExtendedStatusFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationOfferExtendedStatusFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationOfferExtendedStatusFilter.type = Types::ResaleAuthorizationOfferExtendedStatusFilter
    ResaleAuthorizationOfferExtendedStatusFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationOfferExtendedStatusString)
    ResaleAuthorizationProductIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationProductIdFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationProductIdFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationProductIdFilterWildcard, location_name: 'WildCardValue'))
    ResaleAuthorizationProductIdFilter.type = Types::ResaleAuthorizationProductIdFilter
    ResaleAuthorizationProductIdFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationProductIdString)
    ResaleAuthorizationProductNameFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationProductNameFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationProductNameFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationProductNameFilterWildcard, location_name: 'WildCardValue'))
    ResaleAuthorizationProductNameFilter.type = Types::ResaleAuthorizationProductNameFilter
    ResaleAuthorizationProductNameFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationProductNameString)
    ResaleAuthorizationResellerAccountIDFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerAccountIDFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationResellerAccountIDFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerAccountIDFilterWildcard, location_name: 'WildCardValue'))
    ResaleAuthorizationResellerAccountIDFilter.type = Types::ResaleAuthorizationResellerAccountIDFilter
    ResaleAuthorizationResellerAccountIDFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerAccountIDString)
    ResaleAuthorizationResellerLegalNameFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerLegalNameFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationResellerLegalNameFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerLegalNameFilterWildcard, location_name: 'WildCardValue'))
    ResaleAuthorizationResellerLegalNameFilter.type = Types::ResaleAuthorizationResellerLegalNameFilter
    ResaleAuthorizationResellerLegalNameFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerLegalNameString)
    ResaleAuthorizationSort.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationSortBy, location_name: 'SortBy'))
    ResaleAuthorizationSort.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    ResaleAuthorizationSort.type = Types::ResaleAuthorizationSort
    ResaleAuthorizationSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EntityId', traits: {"smithy.api#enumValue" => "EntityId"}))
    ResaleAuthorizationSortBy.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Name', traits: {"smithy.api#enumValue" => "Name"}))
    ResaleAuthorizationSortBy.add_member(:product_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ProductId', traits: {"smithy.api#enumValue" => "ProductId"}))
    ResaleAuthorizationSortBy.add_member(:product_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ProductName', traits: {"smithy.api#enumValue" => "ProductName"}))
    ResaleAuthorizationSortBy.add_member(:manufacturer_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ManufacturerAccountId', traits: {"smithy.api#enumValue" => "ManufacturerAccountId"}))
    ResaleAuthorizationSortBy.add_member(:manufacturer_legal_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ManufacturerLegalName', traits: {"smithy.api#enumValue" => "ManufacturerLegalName"}))
    ResaleAuthorizationSortBy.add_member(:reseller_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResellerAccountID', traits: {"smithy.api#enumValue" => "ResellerAccountID"}))
    ResaleAuthorizationSortBy.add_member(:reseller_legal_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResellerLegalName', traits: {"smithy.api#enumValue" => "ResellerLegalName"}))
    ResaleAuthorizationSortBy.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Status', traits: {"smithy.api#enumValue" => "Status"}))
    ResaleAuthorizationSortBy.add_member(:offer_extended_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OfferExtendedStatus', traits: {"smithy.api#enumValue" => "OfferExtendedStatus"}))
    ResaleAuthorizationSortBy.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CreatedDate', traits: {"smithy.api#enumValue" => "CreatedDate"}))
    ResaleAuthorizationSortBy.add_member(:availability_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AvailabilityEndDate', traits: {"smithy.api#enumValue" => "AvailabilityEndDate"}))
    ResaleAuthorizationSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LastModifiedDate', traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    ResaleAuthorizationStatusFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationStatusFilterValueList, location_name: 'ValueList'))
    ResaleAuthorizationStatusFilter.type = Types::ResaleAuthorizationStatusFilter
    ResaleAuthorizationStatusFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationStatusString)
    ResaleAuthorizationStatusString.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Draft', traits: {"smithy.api#enumValue" => "Draft"}))
    ResaleAuthorizationStatusString.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    ResaleAuthorizationStatusString.add_member(:restricted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Restricted', traits: {"smithy.api#enumValue" => "Restricted"}))
    ResaleAuthorizationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationNameString, location_name: 'Name'))
    ResaleAuthorizationSummary.add_member(:product_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationProductIdString, location_name: 'ProductId'))
    ResaleAuthorizationSummary.add_member(:product_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationProductNameString, location_name: 'ProductName'))
    ResaleAuthorizationSummary.add_member(:manufacturer_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerAccountIdString, location_name: 'ManufacturerAccountId'))
    ResaleAuthorizationSummary.add_member(:manufacturer_legal_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationManufacturerLegalNameString, location_name: 'ManufacturerLegalName'))
    ResaleAuthorizationSummary.add_member(:reseller_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerAccountIDString, location_name: 'ResellerAccountID'))
    ResaleAuthorizationSummary.add_member(:reseller_legal_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationResellerLegalNameString, location_name: 'ResellerLegalName'))
    ResaleAuthorizationSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationStatusString, location_name: 'Status'))
    ResaleAuthorizationSummary.add_member(:offer_extended_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResaleAuthorizationOfferExtendedStatusString, location_name: 'OfferExtendedStatus'))
    ResaleAuthorizationSummary.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'CreatedDate'))
    ResaleAuthorizationSummary.add_member(:availability_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AvailabilityEndDate'))
    ResaleAuthorizationSummary.type = Types::ResaleAuthorizationSummary
    ResourceIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId)
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: 'Message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: 'Message'))
    ResourceNotSupportedException.type = Types::ResourceNotSupportedException
    SaaSProductEntityIdFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductEntityIdFilterValueList, location_name: 'ValueList'))
    SaaSProductEntityIdFilter.type = Types::SaaSProductEntityIdFilter
    SaaSProductEntityIdFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductEntityIdString)
    SaaSProductFilters.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductEntityIdFilter, location_name: 'EntityId'))
    SaaSProductFilters.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductTitleFilter, location_name: 'ProductTitle'))
    SaaSProductFilters.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductVisibilityFilter, location_name: 'Visibility'))
    SaaSProductFilters.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductLastModifiedDateFilter, location_name: 'LastModifiedDate'))
    SaaSProductFilters.type = Types::SaaSProductFilters
    SaaSProductLastModifiedDateFilter.add_member(:date_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductLastModifiedDateFilterDateRange, location_name: 'DateRange'))
    SaaSProductLastModifiedDateFilter.type = Types::SaaSProductLastModifiedDateFilter
    SaaSProductLastModifiedDateFilterDateRange.add_member(:after_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'AfterValue'))
    SaaSProductLastModifiedDateFilterDateRange.add_member(:before_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: 'BeforeValue'))
    SaaSProductLastModifiedDateFilterDateRange.type = Types::SaaSProductLastModifiedDateFilterDateRange
    SaaSProductSort.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductSortBy, location_name: 'SortBy'))
    SaaSProductSort.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    SaaSProductSort.type = Types::SaaSProductSort
    SaaSProductSortBy.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EntityId', traits: {"smithy.api#enumValue" => "EntityId"}))
    SaaSProductSortBy.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ProductTitle', traits: {"smithy.api#enumValue" => "ProductTitle"}))
    SaaSProductSortBy.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Visibility', traits: {"smithy.api#enumValue" => "Visibility"}))
    SaaSProductSortBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LastModifiedDate', traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    SaaSProductSummary.add_member(:product_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductTitleString, location_name: 'ProductTitle'))
    SaaSProductSummary.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductVisibilityString, location_name: 'Visibility'))
    SaaSProductSummary.type = Types::SaaSProductSummary
    SaaSProductTitleFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductTitleFilterValueList, location_name: 'ValueList'))
    SaaSProductTitleFilter.add_member(:wild_card_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductTitleString, location_name: 'WildCardValue'))
    SaaSProductTitleFilter.type = Types::SaaSProductTitleFilter
    SaaSProductTitleFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductTitleString)
    SaaSProductVisibilityFilter.add_member(:value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductVisibilityFilterValueList, location_name: 'ValueList'))
    SaaSProductVisibilityFilter.type = Types::SaaSProductVisibilityFilter
    SaaSProductVisibilityFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaaSProductVisibilityString)
    SaaSProductVisibilityString.add_member(:limited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Limited', traits: {"smithy.api#enumValue" => "Limited"}))
    SaaSProductVisibilityString.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Public', traits: {"smithy.api#enumValue" => "Public"}))
    SaaSProductVisibilityString.add_member(:restricted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Restricted', traits: {"smithy.api#enumValue" => "Restricted"}))
    SaaSProductVisibilityString.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Draft', traits: {"smithy.api#enumValue" => "Draft"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Sort.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortBy, location_name: 'SortBy'))
    Sort.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    Sort.type = Types::Sort
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    StartChangeSetRequest.add_member(:catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Catalog, location_name: 'Catalog', traits: {"smithy.api#required" => {}}))
    StartChangeSetRequest.add_member(:change_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedChangeList, location_name: 'ChangeSet', traits: {"smithy.api#required" => {}}))
    StartChangeSetRequest.add_member(:change_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeSetName, location_name: 'ChangeSetName'))
    StartChangeSetRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartChangeSetRequest.add_member(:change_set_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'ChangeSetTags'))
    StartChangeSetRequest.add_member(:intent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Intent, location_name: 'Intent'))
    StartChangeSetRequest.type = Types::StartChangeSetRequest
    StartChangeSetResponse.add_member(:change_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ChangeSetId'))
    StartChangeSetResponse.add_member(:change_set_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ChangeSetArn'))
    StartChangeSetResponse.type = Types::StartChangeSetResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessageContent, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    ValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueContent)

    AWSMPSeymour = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplacecatalog#AWSMPSeymour"
      service.name = "AWSMPSeymour"
      service.version = "2018-09-17"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Catalog", "arnNamespace" => "aws-marketplace", "cloudFormationName" => "MarketplaceCatalog", "cloudTrailEventSource" => "marketplacecatalog.amazonaws.com", "endpointPrefix" => "catalog.marketplace"}, "aws.auth#sigv4" => {"name" => "aws-marketplace"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Marketplace Catalog Service"}
      service.add_operation(:batch_describe_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#BatchDescribeEntities"
        operation.name = "BatchDescribeEntities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeEntitiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeEntitiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchDescribeEntities", "code" => 200}}
      end)
      service.add_operation(:cancel_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#CancelChangeSet"
        operation.name = "CancelChangeSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelChangeSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelChangeSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/CancelChangeSet", "code" => 200}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/DeleteResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:describe_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#DescribeChangeSet"
        operation.name = "DescribeChangeSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChangeSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChangeSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/DescribeChangeSet", "code" => 200}}
      end)
      service.add_operation(:describe_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#DescribeEntity"
        operation.name = "DescribeEntity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotSupportedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/DescribeEntity", "code" => 200}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:list_change_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#ListChangeSets"
        operation.name = "ListChangeSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChangeSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChangeSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListChangeSets", "code" => 200}}
        operation[:paginator] = Paginators::ListChangeSets.new
      end)
      service.add_operation(:list_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#ListEntities"
        operation.name = "ListEntities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListEntities", "code" => 200}}
        operation[:paginator] = Paginators::ListEntities.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTagsForResource", "code" => 200}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutResourcePolicy", "code" => 200}}
      end)
      service.add_operation(:start_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#StartChangeSet"
        operation.name = "StartChangeSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartChangeSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartChangeSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartChangeSet", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TagResource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacecatalog#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
