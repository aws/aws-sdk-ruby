# frozen_string_literal: true

# This is generated code!

module Aws::LakeFormation
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessKeyIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#AccessKeyIdString', name: 'AccessKeyIdString')
    AddLFTagsToResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#AddLFTagsToResourceRequest', name: 'AddLFTagsToResourceRequest')
    AddLFTagsToResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#AddLFTagsToResourceResponse', name: 'AddLFTagsToResourceResponse')
    AddObjectInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#AddObjectInput', name: 'AddObjectInput')
    AdditionalContextMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.lakeformation#AdditionalContextMap', name: 'AdditionalContextMap')
    AllRowsWildcard = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#AllRowsWildcard', name: 'AllRowsWildcard')
    AlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#AlreadyExistsException', name: 'AlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ApplicationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#ApplicationArn', name: 'ApplicationArn')
    ApplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#ApplicationStatus', name: 'ApplicationStatus')
    AssumeDecoratedRoleWithSAMLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#AssumeDecoratedRoleWithSAMLRequest', name: 'AssumeDecoratedRoleWithSAMLRequest')
    AssumeDecoratedRoleWithSAMLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#AssumeDecoratedRoleWithSAMLResponse', name: 'AssumeDecoratedRoleWithSAMLResponse')
    AuditContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#AuditContext', name: 'AuditContext')
    AuditContextString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#AuditContextString', name: 'AuditContextString', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    AuthorizedSessionTagValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#AuthorizedSessionTagValueList', name: 'AuthorizedSessionTagValueList')
    BatchGrantPermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#BatchGrantPermissionsRequest', name: 'BatchGrantPermissionsRequest')
    BatchGrantPermissionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#BatchGrantPermissionsResponse', name: 'BatchGrantPermissionsResponse')
    BatchPermissionsFailureEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#BatchPermissionsFailureEntry', name: 'BatchPermissionsFailureEntry')
    BatchPermissionsFailureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#BatchPermissionsFailureList', name: 'BatchPermissionsFailureList')
    BatchPermissionsRequestEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#BatchPermissionsRequestEntry', name: 'BatchPermissionsRequestEntry')
    BatchPermissionsRequestEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#BatchPermissionsRequestEntryList', name: 'BatchPermissionsRequestEntryList')
    BatchRevokePermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#BatchRevokePermissionsRequest', name: 'BatchRevokePermissionsRequest')
    BatchRevokePermissionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#BatchRevokePermissionsResponse', name: 'BatchRevokePermissionsResponse')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.lakeformation#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BooleanNullable = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.lakeformation#BooleanNullable', name: 'BooleanNullable')
    CancelTransactionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CancelTransactionRequest', name: 'CancelTransactionRequest')
    CancelTransactionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CancelTransactionResponse', name: 'CancelTransactionResponse')
    CatalogIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#CatalogIdString', name: 'CatalogIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    CatalogResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CatalogResource', name: 'CatalogResource')
    ColumnLFTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ColumnLFTag', name: 'ColumnLFTag')
    ColumnLFTagsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#ColumnLFTagsList', name: 'ColumnLFTagsList')
    ColumnNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#ColumnNames', name: 'ColumnNames')
    ColumnWildcard = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ColumnWildcard', name: 'ColumnWildcard')
    CommitTransactionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CommitTransactionRequest', name: 'CommitTransactionRequest')
    CommitTransactionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CommitTransactionResponse', name: 'CommitTransactionResponse')
    ComparisonOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#ComparisonOperator', name: 'ComparisonOperator')
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client"})
    Condition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#Condition', name: 'Condition')
    ContextKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#ContextKey', name: 'ContextKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ContextValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#ContextValue', name: 'ContextValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CreateDataCellsFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CreateDataCellsFilterRequest', name: 'CreateDataCellsFilterRequest')
    CreateDataCellsFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CreateDataCellsFilterResponse', name: 'CreateDataCellsFilterResponse')
    CreateLFTagExpressionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CreateLFTagExpressionRequest', name: 'CreateLFTagExpressionRequest')
    CreateLFTagExpressionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CreateLFTagExpressionResponse', name: 'CreateLFTagExpressionResponse')
    CreateLFTagRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CreateLFTagRequest', name: 'CreateLFTagRequest')
    CreateLFTagResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CreateLFTagResponse', name: 'CreateLFTagResponse')
    CreateLakeFormationIdentityCenterConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CreateLakeFormationIdentityCenterConfigurationRequest', name: 'CreateLakeFormationIdentityCenterConfigurationRequest')
    CreateLakeFormationIdentityCenterConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CreateLakeFormationIdentityCenterConfigurationResponse', name: 'CreateLakeFormationIdentityCenterConfigurationResponse')
    CreateLakeFormationOptInRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CreateLakeFormationOptInRequest', name: 'CreateLakeFormationOptInRequest')
    CreateLakeFormationOptInResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#CreateLakeFormationOptInResponse', name: 'CreateLakeFormationOptInResponse')
    CredentialTimeoutDurationSecondInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lakeformation#CredentialTimeoutDurationSecondInteger', name: 'CredentialTimeoutDurationSecondInteger', traits: {"smithy.api#range" => {"min" => 900, "max" => 43200}})
    DataCellsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DataCellsFilter', name: 'DataCellsFilter')
    DataCellsFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#DataCellsFilterList', name: 'DataCellsFilterList')
    DataCellsFilterResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DataCellsFilterResource', name: 'DataCellsFilterResource')
    DataLakePrincipal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DataLakePrincipal', name: 'DataLakePrincipal')
    DataLakePrincipalList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#DataLakePrincipalList', name: 'DataLakePrincipalList', traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    DataLakePrincipalString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#DataLakePrincipalString', name: 'DataLakePrincipalString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DataLakeResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#DataLakeResourceType', name: 'DataLakeResourceType')
    DataLakeSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DataLakeSettings', name: 'DataLakeSettings')
    DataLocationResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DataLocationResource', name: 'DataLocationResource')
    DatabaseLFTagsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#DatabaseLFTagsList', name: 'DatabaseLFTagsList')
    DatabaseResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DatabaseResource', name: 'DatabaseResource')
    DateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.lakeformation#DateTime', name: 'DateTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteDataCellsFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteDataCellsFilterRequest', name: 'DeleteDataCellsFilterRequest')
    DeleteDataCellsFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteDataCellsFilterResponse', name: 'DeleteDataCellsFilterResponse')
    DeleteLFTagExpressionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteLFTagExpressionRequest', name: 'DeleteLFTagExpressionRequest')
    DeleteLFTagExpressionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteLFTagExpressionResponse', name: 'DeleteLFTagExpressionResponse')
    DeleteLFTagRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteLFTagRequest', name: 'DeleteLFTagRequest')
    DeleteLFTagResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteLFTagResponse', name: 'DeleteLFTagResponse')
    DeleteLakeFormationIdentityCenterConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteLakeFormationIdentityCenterConfigurationRequest', name: 'DeleteLakeFormationIdentityCenterConfigurationRequest')
    DeleteLakeFormationIdentityCenterConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteLakeFormationIdentityCenterConfigurationResponse', name: 'DeleteLakeFormationIdentityCenterConfigurationResponse')
    DeleteLakeFormationOptInRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteLakeFormationOptInRequest', name: 'DeleteLakeFormationOptInRequest')
    DeleteLakeFormationOptInResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteLakeFormationOptInResponse', name: 'DeleteLakeFormationOptInResponse')
    DeleteObjectInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteObjectInput', name: 'DeleteObjectInput')
    DeleteObjectsOnCancelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteObjectsOnCancelRequest', name: 'DeleteObjectsOnCancelRequest')
    DeleteObjectsOnCancelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeleteObjectsOnCancelResponse', name: 'DeleteObjectsOnCancelResponse')
    DeregisterResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeregisterResourceRequest', name: 'DeregisterResourceRequest')
    DeregisterResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DeregisterResourceResponse', name: 'DeregisterResourceResponse')
    DescribeLakeFormationIdentityCenterConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DescribeLakeFormationIdentityCenterConfigurationRequest', name: 'DescribeLakeFormationIdentityCenterConfigurationRequest')
    DescribeLakeFormationIdentityCenterConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DescribeLakeFormationIdentityCenterConfigurationResponse', name: 'DescribeLakeFormationIdentityCenterConfigurationResponse')
    DescribeResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DescribeResourceRequest', name: 'DescribeResourceRequest')
    DescribeResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DescribeResourceResponse', name: 'DescribeResourceResponse')
    DescribeTransactionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DescribeTransactionRequest', name: 'DescribeTransactionRequest')
    DescribeTransactionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DescribeTransactionResponse', name: 'DescribeTransactionResponse')
    DescriptionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#DescriptionString', name: 'DescriptionString', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    DetailsMap = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#DetailsMap', name: 'DetailsMap')
    ETagString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#ETagString', name: 'ETagString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{P}]*$"})
    EnableStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#EnableStatus', name: 'EnableStatus')
    EntityNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#EntityNotFoundException', name: 'EntityNotFoundException', traits: {"smithy.api#error" => "client"})
    ErrorDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ErrorDetail', name: 'ErrorDetail')
    ErrorMessageString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#ErrorMessageString', name: 'ErrorMessageString')
    ExecutionStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ExecutionStatistics', name: 'ExecutionStatistics')
    ExpirationTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.lakeformation#ExpirationTimestamp', name: 'ExpirationTimestamp')
    ExpiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ExpiredException', name: 'ExpiredException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    Expression = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#Expression', name: 'Expression')
    ExpressionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#ExpressionString', name: 'ExpressionString', traits: {"smithy.api#length" => {"min" => 0, "max" => 3000}})
    ExtendTransactionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ExtendTransactionRequest', name: 'ExtendTransactionRequest')
    ExtendTransactionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ExtendTransactionResponse', name: 'ExtendTransactionResponse')
    ExternalFilteringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ExternalFilteringConfiguration', name: 'ExternalFilteringConfiguration')
    FieldNameString = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#FieldNameString', name: 'FieldNameString')
    FilterCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#FilterCondition', name: 'FilterCondition')
    FilterConditionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#FilterConditionList', name: 'FilterConditionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    GetDataCellsFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetDataCellsFilterRequest', name: 'GetDataCellsFilterRequest')
    GetDataCellsFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetDataCellsFilterResponse', name: 'GetDataCellsFilterResponse')
    GetDataLakePrincipalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetDataLakePrincipalRequest', name: 'GetDataLakePrincipalRequest')
    GetDataLakePrincipalResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetDataLakePrincipalResponse', name: 'GetDataLakePrincipalResponse')
    GetDataLakeSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetDataLakeSettingsRequest', name: 'GetDataLakeSettingsRequest')
    GetDataLakeSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetDataLakeSettingsResponse', name: 'GetDataLakeSettingsResponse')
    GetEffectivePermissionsForPathRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetEffectivePermissionsForPathRequest', name: 'GetEffectivePermissionsForPathRequest')
    GetEffectivePermissionsForPathResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetEffectivePermissionsForPathResponse', name: 'GetEffectivePermissionsForPathResponse')
    GetLFTagExpressionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetLFTagExpressionRequest', name: 'GetLFTagExpressionRequest')
    GetLFTagExpressionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetLFTagExpressionResponse', name: 'GetLFTagExpressionResponse')
    GetLFTagRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetLFTagRequest', name: 'GetLFTagRequest')
    GetLFTagResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetLFTagResponse', name: 'GetLFTagResponse')
    GetQueryStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetQueryStateRequest', name: 'GetQueryStateRequest')
    GetQueryStateRequestQueryIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#GetQueryStateRequestQueryIdString', name: 'GetQueryStateRequestQueryIdString', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    GetQueryStateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetQueryStateResponse', name: 'GetQueryStateResponse')
    GetQueryStatisticsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetQueryStatisticsRequest', name: 'GetQueryStatisticsRequest')
    GetQueryStatisticsRequestQueryIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#GetQueryStatisticsRequestQueryIdString', name: 'GetQueryStatisticsRequestQueryIdString', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    GetQueryStatisticsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetQueryStatisticsResponse', name: 'GetQueryStatisticsResponse')
    GetResourceLFTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetResourceLFTagsRequest', name: 'GetResourceLFTagsRequest')
    GetResourceLFTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetResourceLFTagsResponse', name: 'GetResourceLFTagsResponse')
    GetTableObjectsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetTableObjectsRequest', name: 'GetTableObjectsRequest')
    GetTableObjectsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetTableObjectsResponse', name: 'GetTableObjectsResponse')
    GetTemporaryGluePartitionCredentialsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetTemporaryGluePartitionCredentialsRequest', name: 'GetTemporaryGluePartitionCredentialsRequest')
    GetTemporaryGluePartitionCredentialsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetTemporaryGluePartitionCredentialsResponse', name: 'GetTemporaryGluePartitionCredentialsResponse')
    GetTemporaryGlueTableCredentialsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetTemporaryGlueTableCredentialsRequest', name: 'GetTemporaryGlueTableCredentialsRequest')
    GetTemporaryGlueTableCredentialsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetTemporaryGlueTableCredentialsResponse', name: 'GetTemporaryGlueTableCredentialsResponse')
    GetWorkUnitResultsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetWorkUnitResultsRequest', name: 'GetWorkUnitResultsRequest')
    GetWorkUnitResultsRequestQueryIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#GetWorkUnitResultsRequestQueryIdString', name: 'GetWorkUnitResultsRequestQueryIdString', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    GetWorkUnitResultsRequestWorkUnitIdLong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lakeformation#GetWorkUnitResultsRequestWorkUnitIdLong', name: 'GetWorkUnitResultsRequestWorkUnitIdLong', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    GetWorkUnitResultsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetWorkUnitResultsResponse', name: 'GetWorkUnitResultsResponse')
    GetWorkUnitsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetWorkUnitsRequest', name: 'GetWorkUnitsRequest')
    GetWorkUnitsRequestQueryIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#GetWorkUnitsRequestQueryIdString', name: 'GetWorkUnitsRequestQueryIdString', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    GetWorkUnitsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GetWorkUnitsResponse', name: 'GetWorkUnitsResponse')
    GlueEncryptionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GlueEncryptionException', name: 'GlueEncryptionException', traits: {"smithy.api#error" => "client"})
    GrantPermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GrantPermissionsRequest', name: 'GrantPermissionsRequest')
    GrantPermissionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#GrantPermissionsResponse', name: 'GrantPermissionsResponse')
    HashString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#HashString', name: 'HashString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    IAMRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#IAMRoleArn', name: 'IAMRoleArn', traits: {"smithy.api#pattern" => "^arn:aws:iam::[0-9]*:role/"})
    IAMSAMLProviderArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#IAMSAMLProviderArn', name: 'IAMSAMLProviderArn', traits: {"smithy.api#pattern" => "^arn:aws:iam::[0-9]*:saml-provider/"})
    Identifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#Identifier', name: 'Identifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    IdentityCenterInstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#IdentityCenterInstanceArn', name: 'IdentityCenterInstanceArn')
    IdentityString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#IdentityString', name: 'IdentityString')
    InternalServiceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#InternalServiceException', name: 'InternalServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidInputException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KeyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#KeyString', name: 'KeyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    LFTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#LFTag', name: 'LFTag')
    LFTagError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#LFTagError', name: 'LFTagError')
    LFTagErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#LFTagErrors', name: 'LFTagErrors')
    LFTagExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#LFTagExpression', name: 'LFTagExpression')
    LFTagExpressionResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#LFTagExpressionResource', name: 'LFTagExpressionResource')
    LFTagExpressionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#LFTagExpressionsList', name: 'LFTagExpressionsList')
    LFTagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#LFTagKey', name: 'LFTagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@%]*)$"})
    LFTagKeyResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#LFTagKeyResource', name: 'LFTagKeyResource')
    LFTagPair = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#LFTagPair', name: 'LFTagPair')
    LFTagPolicyResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#LFTagPolicyResource', name: 'LFTagPolicyResource')
    LFTagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#LFTagValue', name: 'LFTagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\*\\/=+\\-@%]*)$"})
    LFTagsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#LFTagsList', name: 'LFTagsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    LakeFormationOptInsInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#LakeFormationOptInsInfo', name: 'LakeFormationOptInsInfo')
    LakeFormationOptInsInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#LakeFormationOptInsInfoList', name: 'LakeFormationOptInsInfoList')
    LastModifiedTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.lakeformation#LastModifiedTimestamp', name: 'LastModifiedTimestamp')
    ListDataCellsFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListDataCellsFilterRequest', name: 'ListDataCellsFilterRequest')
    ListDataCellsFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListDataCellsFilterResponse', name: 'ListDataCellsFilterResponse')
    ListLFTagExpressionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListLFTagExpressionsRequest', name: 'ListLFTagExpressionsRequest')
    ListLFTagExpressionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListLFTagExpressionsResponse', name: 'ListLFTagExpressionsResponse')
    ListLFTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListLFTagsRequest', name: 'ListLFTagsRequest')
    ListLFTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListLFTagsResponse', name: 'ListLFTagsResponse')
    ListLakeFormationOptInsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListLakeFormationOptInsRequest', name: 'ListLakeFormationOptInsRequest')
    ListLakeFormationOptInsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListLakeFormationOptInsResponse', name: 'ListLakeFormationOptInsResponse')
    ListPermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListPermissionsRequest', name: 'ListPermissionsRequest')
    ListPermissionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListPermissionsResponse', name: 'ListPermissionsResponse')
    ListResourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListResourcesRequest', name: 'ListResourcesRequest')
    ListResourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListResourcesResponse', name: 'ListResourcesResponse')
    ListTableStorageOptimizersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListTableStorageOptimizersRequest', name: 'ListTableStorageOptimizersRequest')
    ListTableStorageOptimizersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListTableStorageOptimizersResponse', name: 'ListTableStorageOptimizersResponse')
    ListTransactionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListTransactionsRequest', name: 'ListTransactionsRequest')
    ListTransactionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ListTransactionsResponse', name: 'ListTransactionsResponse')
    MessageString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#MessageString', name: 'MessageString')
    NameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#NameString', name: 'NameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    NullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.lakeformation#NullableBoolean', name: 'NullableBoolean')
    NullableString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#NullableString', name: 'NullableString')
    NumberOfBytes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lakeformation#NumberOfBytes', name: 'NumberOfBytes', traits: {"smithy.api#default" => 0})
    NumberOfItems = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lakeformation#NumberOfItems', name: 'NumberOfItems', traits: {"smithy.api#default" => 0})
    NumberOfMilliseconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lakeformation#NumberOfMilliseconds', name: 'NumberOfMilliseconds', traits: {"smithy.api#default" => 0})
    ObjectSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lakeformation#ObjectSize', name: 'ObjectSize', traits: {"smithy.api#default" => 0})
    OperationTimeoutException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#OperationTimeoutException', name: 'OperationTimeoutException', traits: {"smithy.api#error" => "client"})
    OptimizerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#OptimizerType', name: 'OptimizerType')
    PageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lakeformation#PageSize', name: 'PageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ParametersMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.lakeformation#ParametersMap', name: 'ParametersMap')
    ParametersMapValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#ParametersMapValue', name: 'ParametersMapValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 512000}})
    PartitionObjects = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#PartitionObjects', name: 'PartitionObjects')
    PartitionValueList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#PartitionValueList', name: 'PartitionValueList')
    PartitionValueString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#PartitionValueString', name: 'PartitionValueString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PartitionValuesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#PartitionValuesList', name: 'PartitionValuesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PartitionedTableObjectsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#PartitionedTableObjectsList', name: 'PartitionedTableObjectsList')
    PathString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#PathString', name: 'PathString')
    PathStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#PathStringList', name: 'PathStringList')
    Permission = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#Permission', name: 'Permission')
    PermissionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#PermissionList', name: 'PermissionList')
    PermissionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#PermissionType', name: 'PermissionType')
    PermissionTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#PermissionTypeList', name: 'PermissionTypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PermissionTypeMismatchException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#PermissionTypeMismatchException', name: 'PermissionTypeMismatchException', traits: {"smithy.api#error" => "client"})
    PlanningStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#PlanningStatistics', name: 'PlanningStatistics')
    PredicateString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#PredicateString', name: 'PredicateString', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    PrincipalPermissions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#PrincipalPermissions', name: 'PrincipalPermissions')
    PrincipalPermissionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#PrincipalPermissionsList', name: 'PrincipalPermissionsList')
    PrincipalResourcePermissions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#PrincipalResourcePermissions', name: 'PrincipalResourcePermissions')
    PrincipalResourcePermissionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#PrincipalResourcePermissionsList', name: 'PrincipalResourcePermissionsList')
    PutDataLakeSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#PutDataLakeSettingsRequest', name: 'PutDataLakeSettingsRequest')
    PutDataLakeSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#PutDataLakeSettingsResponse', name: 'PutDataLakeSettingsResponse')
    QueryIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#QueryIdString', name: 'QueryIdString')
    QueryParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.lakeformation#QueryParameterMap', name: 'QueryParameterMap')
    QueryPlanningContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#QueryPlanningContext', name: 'QueryPlanningContext')
    QueryPlanningContextDatabaseNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#QueryPlanningContextDatabaseNameString', name: 'QueryPlanningContextDatabaseNameString', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    QuerySessionContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#QuerySessionContext', name: 'QuerySessionContext')
    QueryStateString = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#QueryStateString', name: 'QueryStateString')
    RAMResourceShareArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#RAMResourceShareArn', name: 'RAMResourceShareArn')
    RegisterResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#RegisterResourceRequest', name: 'RegisterResourceRequest')
    RegisterResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#RegisterResourceResponse', name: 'RegisterResourceResponse')
    RemoveLFTagsFromResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#RemoveLFTagsFromResourceRequest', name: 'RemoveLFTagsFromResourceRequest')
    RemoveLFTagsFromResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#RemoveLFTagsFromResourceResponse', name: 'RemoveLFTagsFromResourceResponse')
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#Resource', name: 'Resource')
    ResourceArnString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#ResourceArnString', name: 'ResourceArnString')
    ResourceInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ResourceInfo', name: 'ResourceInfo')
    ResourceInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#ResourceInfoList', name: 'ResourceInfoList')
    ResourceNotReadyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ResourceNotReadyException', name: 'ResourceNotReadyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNumberLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ResourceNumberLimitExceededException', name: 'ResourceNumberLimitExceededException', traits: {"smithy.api#error" => "client"})
    ResourceShareList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#ResourceShareList', name: 'ResourceShareList')
    ResourceShareType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#ResourceShareType', name: 'ResourceShareType')
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#ResourceType', name: 'ResourceType')
    Result = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#Result', name: 'Result')
    ResultStream = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.lakeformation#ResultStream', name: 'ResultStream', traits: {"smithy.api#streaming" => {}})
    RevokePermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#RevokePermissionsRequest', name: 'RevokePermissionsRequest')
    RevokePermissionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#RevokePermissionsResponse', name: 'RevokePermissionsResponse')
    RowFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#RowFilter', name: 'RowFilter')
    SAMLAssertionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#SAMLAssertionString', name: 'SAMLAssertionString', traits: {"smithy.api#length" => {"min" => 4, "max" => 100000}})
    ScopeTarget = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#ScopeTarget', name: 'ScopeTarget')
    ScopeTargets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#ScopeTargets', name: 'ScopeTargets')
    SearchDatabasesByLFTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#SearchDatabasesByLFTagsRequest', name: 'SearchDatabasesByLFTagsRequest')
    SearchDatabasesByLFTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#SearchDatabasesByLFTagsResponse', name: 'SearchDatabasesByLFTagsResponse')
    SearchPageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lakeformation#SearchPageSize', name: 'SearchPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    SearchTablesByLFTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#SearchTablesByLFTagsRequest', name: 'SearchTablesByLFTagsRequest')
    SearchTablesByLFTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#SearchTablesByLFTagsResponse', name: 'SearchTablesByLFTagsResponse')
    SecretAccessKeyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#SecretAccessKeyString', name: 'SecretAccessKeyString')
    SessionTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#SessionTokenString', name: 'SessionTokenString')
    StartQueryPlanningRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#StartQueryPlanningRequest', name: 'StartQueryPlanningRequest')
    StartQueryPlanningResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#StartQueryPlanningResponse', name: 'StartQueryPlanningResponse')
    StartTransactionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#StartTransactionRequest', name: 'StartTransactionRequest')
    StartTransactionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#StartTransactionResponse', name: 'StartTransactionResponse')
    StatisticsNotReadyYetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#StatisticsNotReadyYetException', name: 'StatisticsNotReadyYetException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    StorageOptimizer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#StorageOptimizer', name: 'StorageOptimizer')
    StorageOptimizerConfig = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.lakeformation#StorageOptimizerConfig', name: 'StorageOptimizerConfig')
    StorageOptimizerConfigKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#StorageOptimizerConfigKey', name: 'StorageOptimizerConfigKey')
    StorageOptimizerConfigMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.lakeformation#StorageOptimizerConfigMap', name: 'StorageOptimizerConfigMap')
    StorageOptimizerConfigValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#StorageOptimizerConfigValue', name: 'StorageOptimizerConfigValue')
    StorageOptimizerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#StorageOptimizerList', name: 'StorageOptimizerList')
    StringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#StringValue', name: 'StringValue')
    StringValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#StringValueList', name: 'StringValueList')
    SyntheticGetWorkUnitResultsRequestWorkUnitTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#SyntheticGetWorkUnitResultsRequestWorkUnitTokenString', name: 'SyntheticGetWorkUnitResultsRequestWorkUnitTokenString', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    SyntheticStartQueryPlanningRequestQueryString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#SyntheticStartQueryPlanningRequestQueryString', name: 'SyntheticStartQueryPlanningRequestQueryString', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    TableLFTagsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#TableLFTagsList', name: 'TableLFTagsList')
    TableObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#TableObject', name: 'TableObject')
    TableObjectList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#TableObjectList', name: 'TableObjectList')
    TableResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#TableResource', name: 'TableResource')
    TableWildcard = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#TableWildcard', name: 'TableWildcard')
    TableWithColumnsResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#TableWithColumnsResource', name: 'TableWithColumnsResource')
    TagValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#TagValueList', name: 'TagValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TaggedDatabase = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#TaggedDatabase', name: 'TaggedDatabase')
    TaggedTable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#TaggedTable', name: 'TaggedTable')
    ThrottledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#ThrottledException', name: 'ThrottledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.lakeformation#Timestamp', name: 'Timestamp')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#Token', name: 'Token')
    TokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#TokenString', name: 'TokenString', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    TransactionCanceledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#TransactionCanceledException', name: 'TransactionCanceledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TransactionCommitInProgressException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#TransactionCommitInProgressException', name: 'TransactionCommitInProgressException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TransactionCommittedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#TransactionCommittedException', name: 'TransactionCommittedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TransactionDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#TransactionDescription', name: 'TransactionDescription')
    TransactionDescriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#TransactionDescriptionList', name: 'TransactionDescriptionList')
    TransactionIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#TransactionIdString', name: 'TransactionIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{P}]*$"})
    TransactionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#TransactionStatus', name: 'TransactionStatus')
    TransactionStatusFilter = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#TransactionStatusFilter', name: 'TransactionStatusFilter')
    TransactionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lakeformation#TransactionType', name: 'TransactionType')
    TrueFalseString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#TrueFalseString', name: 'TrueFalseString', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    TrustedResourceOwners = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#TrustedResourceOwners', name: 'TrustedResourceOwners')
    URI = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#URI', name: 'URI', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    UpdateDataCellsFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateDataCellsFilterRequest', name: 'UpdateDataCellsFilterRequest')
    UpdateDataCellsFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateDataCellsFilterResponse', name: 'UpdateDataCellsFilterResponse')
    UpdateLFTagExpressionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateLFTagExpressionRequest', name: 'UpdateLFTagExpressionRequest')
    UpdateLFTagExpressionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateLFTagExpressionResponse', name: 'UpdateLFTagExpressionResponse')
    UpdateLFTagRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateLFTagRequest', name: 'UpdateLFTagRequest')
    UpdateLFTagResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateLFTagResponse', name: 'UpdateLFTagResponse')
    UpdateLakeFormationIdentityCenterConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateLakeFormationIdentityCenterConfigurationRequest', name: 'UpdateLakeFormationIdentityCenterConfigurationRequest')
    UpdateLakeFormationIdentityCenterConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateLakeFormationIdentityCenterConfigurationResponse', name: 'UpdateLakeFormationIdentityCenterConfigurationResponse')
    UpdateResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateResourceRequest', name: 'UpdateResourceRequest')
    UpdateResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateResourceResponse', name: 'UpdateResourceResponse')
    UpdateTableObjectsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateTableObjectsRequest', name: 'UpdateTableObjectsRequest')
    UpdateTableObjectsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateTableObjectsResponse', name: 'UpdateTableObjectsResponse')
    UpdateTableStorageOptimizerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateTableStorageOptimizerRequest', name: 'UpdateTableStorageOptimizerRequest')
    UpdateTableStorageOptimizerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#UpdateTableStorageOptimizerResponse', name: 'UpdateTableStorageOptimizerResponse')
    ValueString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#ValueString', name: 'ValueString')
    ValueStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#ValueStringList', name: 'ValueStringList', traits: {"smithy.api#length" => {"min" => 1}})
    VersionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#VersionString', name: 'VersionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    VirtualObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#VirtualObject', name: 'VirtualObject')
    VirtualObjectList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#VirtualObjectList', name: 'VirtualObjectList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WorkUnitIdLong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lakeformation#WorkUnitIdLong', name: 'WorkUnitIdLong', traits: {"smithy.api#default" => 0})
    WorkUnitRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#WorkUnitRange', name: 'WorkUnitRange')
    WorkUnitRangeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#WorkUnitRangeList', name: 'WorkUnitRangeList')
    WorkUnitTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lakeformation#WorkUnitTokenString', name: 'WorkUnitTokenString')
    WorkUnitsNotReadyYetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#WorkUnitsNotReadyYetException', name: 'WorkUnitsNotReadyYetException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    WriteOperation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lakeformation#WriteOperation', name: 'WriteOperation')
    WriteOperationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lakeformation#WriteOperationList', name: 'WriteOperationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AddLFTagsToResourceRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    AddLFTagsToResourceRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The database, table, or column resource to which to attach an LF-tag.</p>", "smithy.api#required" => {}}))
    AddLFTagsToResourceRequest.add_member(:lf_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagsList, location_name: 'LFTags', traits: {"smithy.api#documentation" => "<p>The LF-tags to attach to the resource.</p>", "smithy.api#required" => {}}))
    AddLFTagsToResourceRequest.type = Types::AddLFTagsToResourceRequest
    AddLFTagsToResourceResponse.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagErrors, location_name: 'Failures', traits: {"smithy.api#documentation" => "<p>A list of failures to tag the resource.</p>"}))
    AddLFTagsToResourceResponse.type = Types::AddLFTagsToResourceResponse
    AddObjectInput.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'Uri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the object.</p>", "smithy.api#required" => {}}))
    AddObjectInput.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: ETagString, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>", "smithy.api#required" => {}}))
    AddObjectInput.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectSize, location_name: 'Size', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the Amazon S3 object in bytes.</p>", "smithy.api#required" => {}}))
    AddObjectInput.add_member(:partition_values, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionValuesList, location_name: 'PartitionValues', traits: {"smithy.api#documentation" => "<p>A list of partition values for the object. A value must be specified for each partition key associated with the table.</p>\n         <p>The supported data types are integer, long, date(yyyy-MM-dd), timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss\"), string and decimal.</p>"}))
    AddObjectInput.type = Types::AddObjectInput
    AdditionalContextMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ContextKey)
    AdditionalContextMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ContextValue)
    AllRowsWildcard.type = Types::AllRowsWildcard
    AlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>"}))
    AlreadyExistsException.type = Types::AlreadyExistsException
    ApplicationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ApplicationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AssumeDecoratedRoleWithSAMLRequest.add_member(:saml_assertion, Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLAssertionString, location_name: 'SAMLAssertion', traits: {"smithy.api#documentation" => "<p>A SAML assertion consisting of an assertion statement for the user who needs temporary credentials. This must match the SAML assertion that was issued to IAM. This must be Base64 encoded.</p>", "smithy.api#required" => {}}))
    AssumeDecoratedRoleWithSAMLRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The role that represents an IAM principal whose scope down policy allows it to call credential vending APIs such as <code>GetTemporaryTableCredentials</code>. The caller must also have iam:PassRole permission on this role.  </p>", "smithy.api#required" => {}}))
    AssumeDecoratedRoleWithSAMLRequest.add_member(:principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMSAMLProviderArn, location_name: 'PrincipalArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the SAML provider in IAM that describes the IdP.</p>", "smithy.api#required" => {}}))
    AssumeDecoratedRoleWithSAMLRequest.add_member(:duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialTimeoutDurationSecondInteger, location_name: 'DurationSeconds', traits: {"smithy.api#documentation" => "<p>The time period, between 900 and 43,200 seconds, for the timeout of the temporary credentials.</p>"}))
    AssumeDecoratedRoleWithSAMLRequest.type = Types::AssumeDecoratedRoleWithSAMLRequest
    AssumeDecoratedRoleWithSAMLResponse.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKeyIdString, location_name: 'AccessKeyId', traits: {"smithy.api#documentation" => "<p>The access key ID for the temporary credentials. (The access key consists of an access key ID and a secret key).</p>"}))
    AssumeDecoratedRoleWithSAMLResponse.add_member(:secret_access_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretAccessKeyString, location_name: 'SecretAccessKey', traits: {"smithy.api#documentation" => "<p>The secret key for the temporary credentials. (The access key consists of an access key ID and a secret key).</p>"}))
    AssumeDecoratedRoleWithSAMLResponse.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTokenString, location_name: 'SessionToken', traits: {"smithy.api#documentation" => "<p>The session token for the temporary credentials.</p>"}))
    AssumeDecoratedRoleWithSAMLResponse.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationTimestamp, location_name: 'Expiration', traits: {"smithy.api#documentation" => "<p>The date and time when the temporary credentials expire.</p>"}))
    AssumeDecoratedRoleWithSAMLResponse.type = Types::AssumeDecoratedRoleWithSAMLResponse
    AuditContext.add_member(:additional_audit_context, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditContextString, location_name: 'AdditionalAuditContext', traits: {"smithy.api#documentation" => "<p>The filter engine can populate the 'AdditionalAuditContext' information with the request ID for you to track. This information will be displayed in CloudTrail log in your account.</p>"}))
    AuditContext.type = Types::AuditContext
    AuthorizedSessionTagValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NameString)
    BatchGrantPermissionsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    BatchGrantPermissionsRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntryList, location_name: 'Entries', traits: {"smithy.api#documentation" => "<p>A list of up to 20 entries for resource permissions to be granted by batch operation to the principal.</p>", "smithy.api#required" => {}}))
    BatchGrantPermissionsRequest.type = Types::BatchGrantPermissionsRequest
    BatchGrantPermissionsResponse.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPermissionsFailureList, location_name: 'Failures', traits: {"smithy.api#documentation" => "<p>A list of failures to grant permissions to the resources.</p>"}))
    BatchGrantPermissionsResponse.type = Types::BatchGrantPermissionsResponse
    BatchPermissionsFailureEntry.add_member(:request_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntry, location_name: 'RequestEntry', traits: {"smithy.api#documentation" => "<p>An identifier for an entry of the batch request.</p>"}))
    BatchPermissionsFailureEntry.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>An error message that applies to the failure of the entry.</p>"}))
    BatchPermissionsFailureEntry.type = Types::BatchPermissionsFailureEntry
    BatchPermissionsFailureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPermissionsFailureEntry)
    BatchPermissionsRequestEntry.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique identifier for the batch permissions request entry.</p>", "smithy.api#required" => {}}))
    BatchPermissionsRequestEntry.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The principal to be granted a permission.</p>"}))
    BatchPermissionsRequestEntry.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The resource to which the principal is to be granted a permission.</p>"}))
    BatchPermissionsRequestEntry.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The permissions to be granted.</p>"}))
    BatchPermissionsRequestEntry.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition'))
    BatchPermissionsRequestEntry.add_member(:permissions_with_grant_option, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'PermissionsWithGrantOption', traits: {"smithy.api#documentation" => "<p>Indicates if the option to pass permissions is granted.</p>"}))
    BatchPermissionsRequestEntry.type = Types::BatchPermissionsRequestEntry
    BatchPermissionsRequestEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntry)
    BatchRevokePermissionsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    BatchRevokePermissionsRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntryList, location_name: 'Entries', traits: {"smithy.api#documentation" => "<p>A list of up to 20 entries for resource permissions to be revoked by batch operation to the principal.</p>", "smithy.api#required" => {}}))
    BatchRevokePermissionsRequest.type = Types::BatchRevokePermissionsRequest
    BatchRevokePermissionsResponse.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPermissionsFailureList, location_name: 'Failures', traits: {"smithy.api#documentation" => "<p>A list of failures to revoke permissions to the resources.</p>"}))
    BatchRevokePermissionsResponse.type = Types::BatchRevokePermissionsResponse
    CancelTransactionRequest.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The transaction to cancel.</p>", "smithy.api#required" => {}}))
    CancelTransactionRequest.type = Types::CancelTransactionRequest
    CancelTransactionResponse.type = Types::CancelTransactionResponse
    CatalogResource.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>An identifier for the catalog resource.</p>"}))
    CatalogResource.type = Types::CatalogResource
    ColumnLFTag.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a column resource.</p>"}))
    ColumnLFTag.add_member(:lf_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagsList, location_name: 'LFTags', traits: {"smithy.api#documentation" => "<p>The LF-tags attached to a column resource.</p>"}))
    ColumnLFTag.type = Types::ColumnLFTag
    ColumnLFTagsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnLFTag)
    ColumnNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NameString)
    ColumnWildcard.add_member(:excluded_column_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnNames, location_name: 'ExcludedColumnNames', traits: {"smithy.api#documentation" => "<p>Excludes column names. Any column with this name will be excluded.</p>"}))
    ColumnWildcard.type = Types::ColumnWildcard
    CommitTransactionRequest.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The transaction to commit.</p>", "smithy.api#required" => {}}))
    CommitTransactionRequest.type = Types::CommitTransactionRequest
    CommitTransactionResponse.add_member(:transaction_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionStatus, location_name: 'TransactionStatus', traits: {"smithy.api#documentation" => "<p>The status of the transaction.</p>"}))
    CommitTransactionResponse.type = Types::CommitTransactionResponse
    ComparisonOperator.add_member(:eq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQ', traits: {"smithy.api#enumValue" => "EQ"}))
    ComparisonOperator.add_member(:ne, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NE', traits: {"smithy.api#enumValue" => "NE"}))
    ComparisonOperator.add_member(:le, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LE', traits: {"smithy.api#enumValue" => "LE"}))
    ComparisonOperator.add_member(:lt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LT', traits: {"smithy.api#enumValue" => "LT"}))
    ComparisonOperator.add_member(:ge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GE', traits: {"smithy.api#enumValue" => "GE"}))
    ComparisonOperator.add_member(:gt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GT', traits: {"smithy.api#enumValue" => "GT"}))
    ComparisonOperator.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    ComparisonOperator.add_member(:not_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_CONTAINS', traits: {"smithy.api#enumValue" => "NOT_CONTAINS"}))
    ComparisonOperator.add_member(:begins_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEGINS_WITH', traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    ComparisonOperator.add_member(:in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN', traits: {"smithy.api#enumValue" => "IN"}))
    ComparisonOperator.add_member(:between, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BETWEEN', traits: {"smithy.api#enumValue" => "BETWEEN"}))
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>"}))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    Condition.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionString, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>An expression written based on the Cedar Policy Language used to match the principal attributes.</p>"}))
    Condition.type = Types::Condition
    CreateDataCellsFilterRequest.add_member(:table_data, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCellsFilter, location_name: 'TableData', traits: {"smithy.api#documentation" => "<p>A <code>DataCellsFilter</code> structure containing information about the data cells filter.</p>", "smithy.api#required" => {}}))
    CreateDataCellsFilterRequest.type = Types::CreateDataCellsFilterRequest
    CreateDataCellsFilterResponse.type = Types::CreateDataCellsFilterResponse
    CreateLFTagExpressionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the expression.</p>", "smithy.api#required" => {}}))
    CreateLFTagExpressionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description with information about the LF-Tag expression.</p>"}))
    CreateLFTagExpressionRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    CreateLFTagExpressionRequest.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>A list of LF-Tag conditions (key-value pairs).</p>", "smithy.api#required" => {}}))
    CreateLFTagExpressionRequest.type = Types::CreateLFTagExpressionRequest
    CreateLFTagExpressionResponse.type = Types::CreateLFTagExpressionResponse
    CreateLFTagRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    CreateLFTagRequest.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The key-name for the LF-tag.</p>", "smithy.api#required" => {}}))
    CreateLFTagRequest.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A list of possible values an attribute can take.</p>", "smithy.api#required" => {}}))
    CreateLFTagRequest.type = Types::CreateLFTagRequest
    CreateLFTagResponse.type = Types::CreateLFTagResponse
    CreateLakeFormationIdentityCenterConfigurationRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the\n         persistent metadata store. It contains database definitions, table definitions, view\n         definitions, and other control information to manage your Lake Formation\n         environment.</p>"}))
    CreateLakeFormationIdentityCenterConfigurationRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance for which the operation will be executed.\n         For more information about ARNs, see Amazon Resource Names (ARNs) and Amazon Web Services Service\n         Namespaces in the Amazon Web Services General Reference.</p>"}))
    CreateLakeFormationIdentityCenterConfigurationRequest.add_member(:external_filtering, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalFilteringConfiguration, location_name: 'ExternalFiltering', traits: {"smithy.api#documentation" => "<p>A list of the account IDs of Amazon Web Services accounts of third-party applications\n         that are allowed to access data managed by Lake Formation.</p>"}))
    CreateLakeFormationIdentityCenterConfigurationRequest.add_member(:share_recipients, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipalList, location_name: 'ShareRecipients', traits: {"smithy.api#documentation" => "<p>A list of Amazon Web Services account IDs and/or Amazon Web Services organization/organizational unit ARNs\n         that are allowed to access data managed by Lake Formation. </p>\n         <p>If the <code>ShareRecipients</code> list includes valid values, a resource share is created with the principals you want to have access to the resources.</p>\n         <p>If the <code>ShareRecipients</code> value is null or the list is empty, no resource share is created.</p>"}))
    CreateLakeFormationIdentityCenterConfigurationRequest.type = Types::CreateLakeFormationIdentityCenterConfigurationRequest
    CreateLakeFormationIdentityCenterConfigurationResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lake Formation application integrated with IAM Identity Center.</p>"}))
    CreateLakeFormationIdentityCenterConfigurationResponse.type = Types::CreateLakeFormationIdentityCenterConfigurationResponse
    CreateLakeFormationOptInRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: 'Principal', traits: {"smithy.api#required" => {}}))
    CreateLakeFormationOptInRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#required" => {}}))
    CreateLakeFormationOptInRequest.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition'))
    CreateLakeFormationOptInRequest.type = Types::CreateLakeFormationOptInRequest
    CreateLakeFormationOptInResponse.type = Types::CreateLakeFormationOptInResponse
    DataCellsFilter.add_member(:table_catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'TableCatalogId', traits: {"smithy.api#documentation" => "<p>The ID of the catalog to which the table belongs.</p>", "smithy.api#required" => {}}))
    DataCellsFilter.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>A database in the Glue Data Catalog.</p>", "smithy.api#required" => {}}))
    DataCellsFilter.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>A table in the database.</p>", "smithy.api#required" => {}}))
    DataCellsFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name given by the user to the data filter cell.</p>", "smithy.api#required" => {}}))
    DataCellsFilter.add_member(:row_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: RowFilter, location_name: 'RowFilter', traits: {"smithy.api#documentation" => "<p>A PartiQL predicate.</p>"}))
    DataCellsFilter.add_member(:column_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnNames, location_name: 'ColumnNames', traits: {"smithy.api#documentation" => "<p>A list of column names and/or nested column attributes. When specifying nested attributes, use a qualified dot (.) delimited format such as \"address\".\"zip\". Nested attributes within this list may not exceed a depth of 5.</p>"}))
    DataCellsFilter.add_member(:column_wildcard, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnWildcard, location_name: 'ColumnWildcard', traits: {"smithy.api#documentation" => "<p>A wildcard with exclusions.</p>\n         <p>You must specify either a <code>ColumnNames</code> list or the\n      <code>ColumnWildCard</code>. </p>"}))
    DataCellsFilter.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'VersionId', traits: {"smithy.api#documentation" => "<p>The ID of the data cells filter version.</p>"}))
    DataCellsFilter.type = Types::DataCellsFilter
    DataCellsFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataCellsFilter)
    DataCellsFilterResource.add_member(:table_catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'TableCatalogId', traits: {"smithy.api#documentation" => "<p>The ID of the catalog to which the table belongs.</p>"}))
    DataCellsFilterResource.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>A database in the Glue Data Catalog.</p>"}))
    DataCellsFilterResource.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of the table.</p>"}))
    DataCellsFilterResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data cells filter. </p>"}))
    DataCellsFilterResource.type = Types::DataCellsFilterResource
    DataLakePrincipal.add_member(:data_lake_principal_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipalString, location_name: 'DataLakePrincipalIdentifier', traits: {"smithy.api#documentation" => "<p>An identifier for the Lake Formation principal.</p>"}))
    DataLakePrincipal.type = Types::DataLakePrincipal
    DataLakePrincipalList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipal)
    DataLakeResourceType.add_member(:catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CATALOG', traits: {"smithy.api#enumValue" => "CATALOG"}))
    DataLakeResourceType.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATABASE', traits: {"smithy.api#enumValue" => "DATABASE"}))
    DataLakeResourceType.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE', traits: {"smithy.api#enumValue" => "TABLE"}))
    DataLakeResourceType.add_member(:data_location, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_LOCATION', traits: {"smithy.api#enumValue" => "DATA_LOCATION"}))
    DataLakeResourceType.add_member(:lf_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LF_TAG', traits: {"smithy.api#enumValue" => "LF_TAG"}))
    DataLakeResourceType.add_member(:lf_tag_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LF_TAG_POLICY', traits: {"smithy.api#enumValue" => "LF_TAG_POLICY"}))
    DataLakeResourceType.add_member(:lf_tag_policy_database, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LF_TAG_POLICY_DATABASE', traits: {"smithy.api#enumValue" => "LF_TAG_POLICY_DATABASE"}))
    DataLakeResourceType.add_member(:lf_tag_policy_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LF_TAG_POLICY_TABLE', traits: {"smithy.api#enumValue" => "LF_TAG_POLICY_TABLE"}))
    DataLakeResourceType.add_member(:lf_named_tag_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LF_NAMED_TAG_EXPRESSION', traits: {"smithy.api#enumValue" => "LF_NAMED_TAG_EXPRESSION"}))
    DataLakeSettings.add_member(:data_lake_admins, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipalList, location_name: 'DataLakeAdmins', traits: {"smithy.api#documentation" => "<p>A list of Lake Formation principals. Supported principals are IAM users or IAM roles.</p>"}))
    DataLakeSettings.add_member(:read_only_admins, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipalList, location_name: 'ReadOnlyAdmins', traits: {"smithy.api#documentation" => "<p>A list of Lake Formation principals with only view access to the resources, without the ability to make changes. Supported principals are IAM users or IAM roles.</p>"}))
    DataLakeSettings.add_member(:create_database_default_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: 'CreateDatabaseDefaultPermissions', traits: {"smithy.api#documentation" => "<p>Specifies whether access control on newly created database is managed by Lake Formation permissions or exclusively by IAM permissions.</p>\n         <p>A null value indicates access control by Lake Formation permissions. A value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access control by IAM permissions. This is referred to as the setting \"Use only IAM access control,\" and is for backward compatibility with the Glue permission model implemented by IAM permissions.</p>\n         <p>The only permitted values are an empty array or an array that contains a single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html\">Changing the Default Security Settings for Your Data Lake</a>.</p>"}))
    DataLakeSettings.add_member(:create_table_default_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: 'CreateTableDefaultPermissions', traits: {"smithy.api#documentation" => "<p>Specifies whether access control on newly created table is managed by Lake Formation permissions or exclusively by IAM permissions.</p>\n         <p>A null value indicates access control by Lake Formation permissions. A value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access control by IAM permissions. This is referred to as the setting \"Use only IAM access control,\" and is for backward compatibility with the Glue permission model implemented by IAM permissions.</p>\n         <p>The only permitted values are an empty array or an array that contains a single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html\">Changing the Default Security Settings for Your Data Lake</a>.</p>"}))
    DataLakeSettings.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A key-value map that provides an additional configuration on your data lake. CROSS_ACCOUNT_VERSION is the key you can configure in the Parameters field. Accepted values for the CrossAccountVersion key are 1, 2, 3, and 4.</p>"}))
    DataLakeSettings.add_member(:trusted_resource_owners, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedResourceOwners, location_name: 'TrustedResourceOwners', traits: {"smithy.api#documentation" => "<p>A list of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs). The user ARNs can be logged in the resource owner's CloudTrail log.</p>\n         <p>You may want to specify this property when you are in a high-trust boundary, such as the same team or company. </p>"}))
    DataLakeSettings.add_member(:allow_external_data_filtering, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'AllowExternalDataFiltering', traits: {"smithy.api#documentation" => "<p>Whether to allow Amazon EMR clusters to access data managed by Lake Formation. </p>\n         <p>If true, you allow Amazon EMR clusters to access data in Amazon S3 locations that are registered with Lake Formation.</p>\n         <p>If false or null, no Amazon EMR clusters will be able to access data in Amazon S3 locations that are registered with Lake Formation.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lake-formation/latest/dg/initial-LF-setup.html#external-data-filter\">(Optional) Allow external data filtering</a>.</p>"}))
    DataLakeSettings.add_member(:allow_full_table_external_data_access, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'AllowFullTableExternalDataAccess', traits: {"smithy.api#documentation" => "<p>Whether to allow a third-party query engine to get data access credentials without session tags when a caller has full data access permissions.</p>"}))
    DataLakeSettings.add_member(:external_data_filtering_allow_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipalList, location_name: 'ExternalDataFilteringAllowList', traits: {"smithy.api#documentation" => "<p>A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.></p>"}))
    DataLakeSettings.add_member(:authorized_session_tag_value_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedSessionTagValueList, location_name: 'AuthorizedSessionTagValueList', traits: {"smithy.api#documentation" => "<p>Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it. Lake Formation will publish the acceptable key-value pair, for example key = \"LakeFormationTrustedCaller\" and value = \"TRUE\" and the third party integrator must properly tag the temporary security credentials that will be used to call Lake Formation's administrative APIs.</p>"}))
    DataLakeSettings.type = Types::DataLakeSettings
    DataLocationResource.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.</p>"}))
    DataLocationResource.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the data location resource.</p>", "smithy.api#required" => {}}))
    DataLocationResource.type = Types::DataLocationResource
    DatabaseLFTagsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaggedDatabase)
    DatabaseResource.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"}))
    DatabaseResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the database resource. Unique to the Data Catalog.</p>", "smithy.api#required" => {}}))
    DatabaseResource.type = Types::DatabaseResource
    DeleteDataCellsFilterRequest.add_member(:table_catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'TableCatalogId', traits: {"smithy.api#documentation" => "<p>The ID of the catalog to which the table belongs.</p>"}))
    DeleteDataCellsFilterRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>A database in the Glue Data Catalog.</p>"}))
    DeleteDataCellsFilterRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>A table in the database.</p>"}))
    DeleteDataCellsFilterRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name given by the user to the data filter cell.</p>"}))
    DeleteDataCellsFilterRequest.type = Types::DeleteDataCellsFilterRequest
    DeleteDataCellsFilterResponse.type = Types::DeleteDataCellsFilterResponse
    DeleteLFTagExpressionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the LF-Tag expression.</p>", "smithy.api#required" => {}}))
    DeleteLFTagExpressionRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID in which the LF-Tag expression is saved. </p>"}))
    DeleteLFTagExpressionRequest.type = Types::DeleteLFTagExpressionRequest
    DeleteLFTagExpressionResponse.type = Types::DeleteLFTagExpressionResponse
    DeleteLFTagRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    DeleteLFTagRequest.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The key-name for the LF-tag to delete.</p>", "smithy.api#required" => {}}))
    DeleteLFTagRequest.type = Types::DeleteLFTagRequest
    DeleteLFTagResponse.type = Types::DeleteLFTagResponse
    DeleteLakeFormationIdentityCenterConfigurationRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the\n         persistent metadata store. It contains database definitions, table definitions, view\n         definition, and other control information to manage your Lake Formation environment.</p>"}))
    DeleteLakeFormationIdentityCenterConfigurationRequest.type = Types::DeleteLakeFormationIdentityCenterConfigurationRequest
    DeleteLakeFormationIdentityCenterConfigurationResponse.type = Types::DeleteLakeFormationIdentityCenterConfigurationResponse
    DeleteLakeFormationOptInRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: 'Principal', traits: {"smithy.api#required" => {}}))
    DeleteLakeFormationOptInRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#required" => {}}))
    DeleteLakeFormationOptInRequest.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition'))
    DeleteLakeFormationOptInRequest.type = Types::DeleteLakeFormationOptInRequest
    DeleteLakeFormationOptInResponse.type = Types::DeleteLakeFormationOptInResponse
    DeleteObjectInput.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'Uri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the object to delete.</p>", "smithy.api#required" => {}}))
    DeleteObjectInput.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: ETagString, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>"}))
    DeleteObjectInput.add_member(:partition_values, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionValuesList, location_name: 'PartitionValues', traits: {"smithy.api#documentation" => "<p>A list of partition values for the object. A value must be specified for each partition key associated with the governed table.</p>"}))
    DeleteObjectInput.type = Types::DeleteObjectInput
    DeleteObjectsOnCancelRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The Glue data catalog that contains the governed table. Defaults to the current account ID.</p>"}))
    DeleteObjectsOnCancelRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The database that contains the governed table.</p>", "smithy.api#required" => {}}))
    DeleteObjectsOnCancelRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of the governed table.</p>", "smithy.api#required" => {}}))
    DeleteObjectsOnCancelRequest.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>ID of the transaction that the writes occur in.</p>", "smithy.api#required" => {}}))
    DeleteObjectsOnCancelRequest.add_member(:objects, Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualObjectList, location_name: 'Objects', traits: {"smithy.api#documentation" => "<p>A list of VirtualObject structures, which indicates the Amazon S3 objects to be deleted if the transaction cancels.</p>", "smithy.api#required" => {}}))
    DeleteObjectsOnCancelRequest.type = Types::DeleteObjectsOnCancelRequest
    DeleteObjectsOnCancelResponse.type = Types::DeleteObjectsOnCancelResponse
    DeregisterResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to deregister.</p>", "smithy.api#required" => {}}))
    DeregisterResourceRequest.type = Types::DeregisterResourceRequest
    DeregisterResourceResponse.type = Types::DeregisterResourceResponse
    DescribeLakeFormationIdentityCenterConfigurationRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.</p>"}))
    DescribeLakeFormationIdentityCenterConfigurationRequest.type = Types::DescribeLakeFormationIdentityCenterConfigurationRequest
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.</p>"}))
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection.</p>"}))
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lake Formation application integrated with IAM Identity Center.</p>"}))
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:external_filtering, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalFilteringConfiguration, location_name: 'ExternalFiltering', traits: {"smithy.api#documentation" => "<p>Indicates if external filtering is enabled.</p>"}))
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:share_recipients, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipalList, location_name: 'ShareRecipients', traits: {"smithy.api#documentation" => "<p>A list of Amazon Web Services account IDs or Amazon Web Services organization/organizational unit ARNs that\n         are allowed to access data managed by Lake Formation. </p>\n         <p>If the <code>ShareRecipients</code> list includes valid values, a resource share is created with the principals you want to have access to the resources as the <code>ShareRecipients</code>.</p>\n         <p>If the <code>ShareRecipients</code> value is null or the list is empty, no resource share is created.</p>"}))
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:resource_share, Smithy::Schema::Shapes::ShapeRef.new(shape: RAMResourceShareArn, location_name: 'ResourceShare', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the RAM share.</p>"}))
    DescribeLakeFormationIdentityCenterConfigurationResponse.type = Types::DescribeLakeFormationIdentityCenterConfigurationResponse
    DescribeResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resource ARN.</p>", "smithy.api#required" => {}}))
    DescribeResourceRequest.type = Types::DescribeResourceRequest
    DescribeResourceResponse.add_member(:resource_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInfo, location_name: 'ResourceInfo', traits: {"smithy.api#documentation" => "<p>A structure containing information about an Lake Formation resource.</p>"}))
    DescribeResourceResponse.type = Types::DescribeResourceResponse
    DescribeTransactionRequest.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The transaction for which to return status.</p>", "smithy.api#required" => {}}))
    DescribeTransactionRequest.type = Types::DescribeTransactionRequest
    DescribeTransactionResponse.add_member(:transaction_description, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionDescription, location_name: 'TransactionDescription', traits: {"smithy.api#documentation" => "<p>Returns a <code>TransactionDescription</code> object containing information about the transaction.</p>"}))
    DescribeTransactionResponse.type = Types::DescribeTransactionResponse
    DetailsMap.add_member(:resource_share, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareList, location_name: 'ResourceShare', traits: {"smithy.api#documentation" => "<p>A resource share ARN for a catalog resource shared through RAM.</p>"}))
    DetailsMap.type = Types::DetailsMap
    EnableStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EnableStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    EntityNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>"}))
    EntityNotFoundException.type = Types::EntityNotFoundException
    ErrorDetail.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The code associated with this error.</p>"}))
    ErrorDetail.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>A message describing the error.</p>"}))
    ErrorDetail.type = Types::ErrorDetail
    ExecutionStatistics.add_member(:average_execution_time_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfMilliseconds, location_name: 'AverageExecutionTimeMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The average time the request took to be executed.</p>"}))
    ExecutionStatistics.add_member(:data_scanned_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfBytes, location_name: 'DataScannedBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of data that was scanned in bytes.</p>"}))
    ExecutionStatistics.add_member(:work_units_executed_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfItems, location_name: 'WorkUnitsExecutedCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of work units executed.</p>"}))
    ExecutionStatistics.type = Types::ExecutionStatistics
    ExpiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the error.</p>"}))
    ExpiredException.type = Types::ExpiredException
    Expression.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LFTag)
    ExtendTransactionRequest.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The transaction to extend.</p>"}))
    ExtendTransactionRequest.type = Types::ExtendTransactionRequest
    ExtendTransactionResponse.type = Types::ExtendTransactionResponse
    ExternalFilteringConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Allows to enable or disable the third-party applications that are allowed to access data\n         managed by Lake Formation.</p>", "smithy.api#required" => {}}))
    ExternalFilteringConfiguration.add_member(:authorized_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeTargets, location_name: 'AuthorizedTargets', traits: {"smithy.api#documentation" => "<p>List of third-party application <code>ARNs</code> integrated with Lake Formation.</p>", "smithy.api#required" => {}}))
    ExternalFilteringConfiguration.type = Types::ExternalFilteringConfiguration
    FieldNameString.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_ARN', traits: {"smithy.api#enumValue" => "RESOURCE_ARN"}))
    FieldNameString.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLE_ARN', traits: {"smithy.api#enumValue" => "ROLE_ARN"}))
    FieldNameString.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST_MODIFIED', traits: {"smithy.api#enumValue" => "LAST_MODIFIED"}))
    FilterCondition.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameString, location_name: 'Field', traits: {"smithy.api#documentation" => "<p>The field to filter in the filter condition.</p>"}))
    FilterCondition.add_member(:comparison_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'ComparisonOperator', traits: {"smithy.api#documentation" => "<p>The comparison operator used in the filter condition.</p>"}))
    FilterCondition.add_member(:string_value_list, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueList, location_name: 'StringValueList', traits: {"smithy.api#documentation" => "<p>A string with values used in evaluating the filter condition.</p>"}))
    FilterCondition.type = Types::FilterCondition
    FilterConditionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCondition)
    GetDataCellsFilterRequest.add_member(:table_catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'TableCatalogId', traits: {"smithy.api#documentation" => "<p>The ID of the catalog to which the table belongs.</p>", "smithy.api#required" => {}}))
    GetDataCellsFilterRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>A database in the Glue Data Catalog.</p>", "smithy.api#required" => {}}))
    GetDataCellsFilterRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>A table in the database.</p>", "smithy.api#required" => {}}))
    GetDataCellsFilterRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name given by the user to the data filter cell.</p>", "smithy.api#required" => {}}))
    GetDataCellsFilterRequest.type = Types::GetDataCellsFilterRequest
    GetDataCellsFilterResponse.add_member(:data_cells_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCellsFilter, location_name: 'DataCellsFilter', traits: {"smithy.api#documentation" => "<p>A structure that describes certain columns on certain rows.</p>"}))
    GetDataCellsFilterResponse.type = Types::GetDataCellsFilterResponse
    GetDataLakePrincipalRequest.type = Types::GetDataLakePrincipalRequest
    GetDataLakePrincipalResponse.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityString, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>A unique identifier of the invoking principal.</p>"}))
    GetDataLakePrincipalResponse.type = Types::GetDataLakePrincipalResponse
    GetDataLakeSettingsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    GetDataLakeSettingsRequest.type = Types::GetDataLakeSettingsRequest
    GetDataLakeSettingsResponse.add_member(:data_lake_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeSettings, location_name: 'DataLakeSettings', traits: {"smithy.api#documentation" => "<p>A structure representing a list of Lake Formation principals designated as data lake administrators.</p>"}))
    GetDataLakeSettingsResponse.type = Types::GetDataLakeSettingsResponse
    GetEffectivePermissionsForPathRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    GetEffectivePermissionsForPathRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which you want to get permissions.</p>", "smithy.api#required" => {}}))
    GetEffectivePermissionsForPathRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve this list.</p>"}))
    GetEffectivePermissionsForPathRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    GetEffectivePermissionsForPathRequest.type = Types::GetEffectivePermissionsForPathRequest
    GetEffectivePermissionsForPathResponse.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalResourcePermissionsList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>A list of the permissions for the specified table or database resource located at the path in Amazon S3.</p>"}))
    GetEffectivePermissionsForPathResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve this list.</p>"}))
    GetEffectivePermissionsForPathResponse.type = Types::GetEffectivePermissionsForPathResponse
    GetLFTagExpressionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the LF-Tag expression</p>", "smithy.api#required" => {}}))
    GetLFTagExpressionRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID.</p>"}))
    GetLFTagExpressionRequest.type = Types::GetLFTagExpressionRequest
    GetLFTagExpressionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the LF-Tag expression. </p>"}))
    GetLFTagExpressionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description with information about the LF-Tag expression.</p>"}))
    GetLFTagExpressionResponse.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID in which the LF-Tag expression is saved.</p>"}))
    GetLFTagExpressionResponse.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>The body of the LF-Tag expression. It is composed of one or more LF-Tag key-value pairs.</p>"}))
    GetLFTagExpressionResponse.type = Types::GetLFTagExpressionResponse
    GetLFTagRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    GetLFTagRequest.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The key-name for the LF-tag.</p>", "smithy.api#required" => {}}))
    GetLFTagRequest.type = Types::GetLFTagRequest
    GetLFTagResponse.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    GetLFTagResponse.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The key-name for the LF-tag.</p>"}))
    GetLFTagResponse.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A list of possible values an attribute can take.</p>"}))
    GetLFTagResponse.type = Types::GetLFTagResponse
    GetQueryStateRequest.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryStateRequestQueryIdString, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of the plan query operation.</p>", "smithy.api#required" => {}}))
    GetQueryStateRequest.type = Types::GetQueryStateRequest
    GetQueryStateResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>An error message when the operation fails.</p>"}))
    GetQueryStateResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStateString, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of a query previously submitted. The possible states are:</p>\n         <ul>\n            <li>\n               <p>PENDING: the query is pending.</p>\n            </li>\n            <li>\n               <p>WORKUNITS_AVAILABLE: some work units are ready for retrieval and execution.</p>\n            </li>\n            <li>\n               <p>FINISHED: the query planning finished successfully, and all work units are ready for retrieval and execution.</p>\n            </li>\n            <li>\n               <p>ERROR: an error occurred with the query, such as an invalid query ID or a backend error.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    GetQueryStateResponse.type = Types::GetQueryStateResponse
    GetQueryStatisticsRequest.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryStatisticsRequestQueryIdString, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of the plan query operation.</p>", "smithy.api#required" => {}}))
    GetQueryStatisticsRequest.type = Types::GetQueryStatisticsRequest
    GetQueryStatisticsResponse.add_member(:execution_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatistics, location_name: 'ExecutionStatistics', traits: {"smithy.api#documentation" => "<p>An <code>ExecutionStatistics</code> structure containing execution statistics.</p>"}))
    GetQueryStatisticsResponse.add_member(:planning_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: PlanningStatistics, location_name: 'PlanningStatistics', traits: {"smithy.api#documentation" => "<p>A <code>PlanningStatistics</code> structure containing query planning statistics.</p>"}))
    GetQueryStatisticsResponse.add_member(:query_submission_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'QuerySubmissionTime', traits: {"smithy.api#documentation" => "<p>The time that the query was submitted.</p>"}))
    GetQueryStatisticsResponse.type = Types::GetQueryStatisticsResponse
    GetResourceLFTagsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    GetResourceLFTagsRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The database, table, or column resource for which you want to return LF-tags.</p>", "smithy.api#required" => {}}))
    GetResourceLFTagsRequest.add_member(:show_assigned_lf_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanNullable, location_name: 'ShowAssignedLFTags', traits: {"smithy.api#documentation" => "<p>Indicates whether to show the assigned LF-tags.</p>"}))
    GetResourceLFTagsRequest.type = Types::GetResourceLFTagsRequest
    GetResourceLFTagsResponse.add_member(:lf_tag_on_database, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagsList, location_name: 'LFTagOnDatabase', traits: {"smithy.api#documentation" => "<p>A list of LF-tags applied to a database resource.</p>"}))
    GetResourceLFTagsResponse.add_member(:lf_tags_on_table, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagsList, location_name: 'LFTagsOnTable', traits: {"smithy.api#documentation" => "<p>A list of LF-tags applied to a table resource.</p>"}))
    GetResourceLFTagsResponse.add_member(:lf_tags_on_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnLFTagsList, location_name: 'LFTagsOnColumns', traits: {"smithy.api#documentation" => "<p>A list of LF-tags applied to a column resource.</p>"}))
    GetResourceLFTagsResponse.type = Types::GetResourceLFTagsResponse
    GetTableObjectsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The catalog containing the governed table. Defaults to the caller’s account.</p>"}))
    GetTableObjectsRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The database containing the governed table.</p>", "smithy.api#required" => {}}))
    GetTableObjectsRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The governed table for which to retrieve objects.</p>", "smithy.api#required" => {}}))
    GetTableObjectsRequest.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The transaction ID at which to read the governed table contents. If this transaction has aborted, an error is returned. If not set, defaults to the most recent committed transaction. Cannot be specified along with <code>QueryAsOfTime</code>.</p>"}))
    GetTableObjectsRequest.add_member(:query_as_of_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'QueryAsOfTime', traits: {"smithy.api#documentation" => "<p>The time as of when to read the governed table contents. If not set, the most recent transaction commit time is used. Cannot be specified along with <code>TransactionId</code>.</p>"}))
    GetTableObjectsRequest.add_member(:partition_predicate, Smithy::Schema::Shapes::ShapeRef.new(shape: PredicateString, location_name: 'PartitionPredicate', traits: {"smithy.api#documentation" => "<p>A predicate to filter the objects returned based on the partition keys defined in the governed table.</p>\n         <ul>\n            <li>\n               <p>The comparison operators supported are: =, >, <, >=, <=</p>\n            </li>\n            <li>\n               <p>The logical operators supported are: AND</p>\n            </li>\n            <li>\n               <p>The data types supported are integer, long, date(yyyy-MM-dd), timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss\"), string and decimal.</p>\n            </li>\n         </ul>"}))
    GetTableObjectsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies how many values to return in a page.</p>"}))
    GetTableObjectsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token if this is not the first call to retrieve these objects.</p>"}))
    GetTableObjectsRequest.type = Types::GetTableObjectsRequest
    GetTableObjectsResponse.add_member(:objects, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionedTableObjectsList, location_name: 'Objects', traits: {"smithy.api#documentation" => "<p>A list of objects organized by partition keys.</p>"}))
    GetTableObjectsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token indicating whether additional data is available.</p>"}))
    GetTableObjectsResponse.type = Types::GetTableObjectsResponse
    GetTemporaryGluePartitionCredentialsRequest.add_member(:table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: 'TableArn', traits: {"smithy.api#documentation" => "<p>The ARN of the partitions' table.</p>", "smithy.api#required" => {}}))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:partition, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionValueList, location_name: 'Partition', traits: {"smithy.api#documentation" => "<p>A list of partition values identifying a single partition.</p>", "smithy.api#required" => {}}))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>"}))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialTimeoutDurationSecondInteger, location_name: 'DurationSeconds', traits: {"smithy.api#documentation" => "<p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>"}))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:audit_context, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditContext, location_name: 'AuditContext', traits: {"smithy.api#documentation" => "<p>A structure representing context to access a resource (column names, query ID, etc).</p>"}))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:supported_permission_types, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionTypeList, location_name: 'SupportedPermissionTypes', traits: {"smithy.api#documentation" => "<p>A list of supported permission types for the partition. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>"}))
    GetTemporaryGluePartitionCredentialsRequest.type = Types::GetTemporaryGluePartitionCredentialsRequest
    GetTemporaryGluePartitionCredentialsResponse.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKeyIdString, location_name: 'AccessKeyId', traits: {"smithy.api#documentation" => "<p>The access key ID for the temporary credentials.</p>"}))
    GetTemporaryGluePartitionCredentialsResponse.add_member(:secret_access_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretAccessKeyString, location_name: 'SecretAccessKey', traits: {"smithy.api#documentation" => "<p>The secret key for the temporary credentials.</p>"}))
    GetTemporaryGluePartitionCredentialsResponse.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTokenString, location_name: 'SessionToken', traits: {"smithy.api#documentation" => "<p>The session token for the temporary credentials.</p>"}))
    GetTemporaryGluePartitionCredentialsResponse.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationTimestamp, location_name: 'Expiration', traits: {"smithy.api#documentation" => "<p>The date and time when the temporary credentials expire.</p>"}))
    GetTemporaryGluePartitionCredentialsResponse.type = Types::GetTemporaryGluePartitionCredentialsResponse
    GetTemporaryGlueTableCredentialsRequest.add_member(:table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: 'TableArn', traits: {"smithy.api#documentation" => "<p>The ARN identifying a table in the Data Catalog for the temporary credentials request.</p>", "smithy.api#required" => {}}))
    GetTemporaryGlueTableCredentialsRequest.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>"}))
    GetTemporaryGlueTableCredentialsRequest.add_member(:duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialTimeoutDurationSecondInteger, location_name: 'DurationSeconds', traits: {"smithy.api#documentation" => "<p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>"}))
    GetTemporaryGlueTableCredentialsRequest.add_member(:audit_context, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditContext, location_name: 'AuditContext', traits: {"smithy.api#documentation" => "<p>A structure representing context to access a resource (column names, query ID, etc).</p>"}))
    GetTemporaryGlueTableCredentialsRequest.add_member(:supported_permission_types, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionTypeList, location_name: 'SupportedPermissionTypes', traits: {"smithy.api#documentation" => "<p>A list of supported permission types for the table. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>"}))
    GetTemporaryGlueTableCredentialsRequest.add_member(:s3_path, Smithy::Schema::Shapes::ShapeRef.new(shape: PathString, location_name: 'S3Path', traits: {"smithy.api#documentation" => "<p>The Amazon S3 path for the table.</p>"}))
    GetTemporaryGlueTableCredentialsRequest.add_member(:query_session_context, Smithy::Schema::Shapes::ShapeRef.new(shape: QuerySessionContext, location_name: 'QuerySessionContext', traits: {"smithy.api#documentation" => "<p>A structure used as a protocol between query engines and Lake Formation or Glue. Contains both a Lake Formation generated authorization identifier and information from the request's authorization context.</p>"}))
    GetTemporaryGlueTableCredentialsRequest.type = Types::GetTemporaryGlueTableCredentialsRequest
    GetTemporaryGlueTableCredentialsResponse.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKeyIdString, location_name: 'AccessKeyId', traits: {"smithy.api#documentation" => "<p>The access key ID for the temporary credentials.</p>"}))
    GetTemporaryGlueTableCredentialsResponse.add_member(:secret_access_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretAccessKeyString, location_name: 'SecretAccessKey', traits: {"smithy.api#documentation" => "<p>The secret key for the temporary credentials.</p>"}))
    GetTemporaryGlueTableCredentialsResponse.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTokenString, location_name: 'SessionToken', traits: {"smithy.api#documentation" => "<p>The session token for the temporary credentials.</p>"}))
    GetTemporaryGlueTableCredentialsResponse.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationTimestamp, location_name: 'Expiration', traits: {"smithy.api#documentation" => "<p>The date and time when the temporary credentials expire.</p>"}))
    GetTemporaryGlueTableCredentialsResponse.add_member(:vended_s3_path, Smithy::Schema::Shapes::ShapeRef.new(shape: PathStringList, location_name: 'VendedS3Path', traits: {"smithy.api#documentation" => "<p>The Amazon S3 path for the temporary credentials.</p>"}))
    GetTemporaryGlueTableCredentialsResponse.type = Types::GetTemporaryGlueTableCredentialsResponse
    GetWorkUnitResultsRequest.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkUnitResultsRequestQueryIdString, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of the plan query operation for which to get results.</p>", "smithy.api#required" => {}}))
    GetWorkUnitResultsRequest.add_member(:work_unit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkUnitResultsRequestWorkUnitIdLong, location_name: 'WorkUnitId', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The work unit ID for which to get results. Value generated by enumerating <code>WorkUnitIdMin</code> to <code>WorkUnitIdMax</code> (inclusive) from the <code>WorkUnitRange</code> in the output of <code>GetWorkUnits</code>.</p>", "smithy.api#required" => {}}))
    GetWorkUnitResultsRequest.add_member(:work_unit_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SyntheticGetWorkUnitResultsRequestWorkUnitTokenString, location_name: 'WorkUnitToken', traits: {"smithy.api#documentation" => "<p>A work token used to query the execution service. Token output from <code>GetWorkUnits</code>.</p>", "smithy.api#required" => {}}))
    GetWorkUnitResultsRequest.type = Types::GetWorkUnitResultsRequest
    GetWorkUnitResultsResponse.add_member(:result_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultStream, location_name: 'ResultStream', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>Rows returned from the <code>GetWorkUnitResults</code> operation as a stream of Apache Arrow v1.0 messages.</p>", "smithy.api#httpPayload" => {}}))
    GetWorkUnitResultsResponse[:http_payload] = :result_stream
    GetWorkUnitResultsResponse[:http_payload_member] = GetWorkUnitResultsResponse.member(:result_stream)
    GetWorkUnitResultsResponse.type = Types::GetWorkUnitResultsResponse
    GetWorkUnitsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is a continuation call.</p>"}))
    GetWorkUnitsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The size of each page to get in the Amazon Web Services service call. This does not affect the number of items returned in the command's output. Setting a smaller page size results in more calls to the Amazon Web Services service, retrieving fewer items in each call. This can help prevent the Amazon Web Services service calls from timing out.</p>"}))
    GetWorkUnitsRequest.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkUnitsRequestQueryIdString, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of the plan query operation.</p>", "smithy.api#required" => {}}))
    GetWorkUnitsRequest.type = Types::GetWorkUnitsRequest
    GetWorkUnitsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>"}))
    GetWorkUnitsResponse.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryIdString, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of the plan query operation.</p>", "smithy.api#required" => {}}))
    GetWorkUnitsResponse.add_member(:work_unit_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkUnitRangeList, location_name: 'WorkUnitRanges', traits: {"smithy.api#documentation" => "<p>A <code>WorkUnitRangeList</code> object that specifies the valid range of work unit IDs for querying the execution service.</p>", "smithy.api#required" => {}}))
    GetWorkUnitsResponse.type = Types::GetWorkUnitsResponse
    GlueEncryptionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>"}))
    GlueEncryptionException.type = Types::GlueEncryptionException
    GrantPermissionsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    GrantPermissionsRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles, and they are defined by their principal type and their ARN.</p>\n         <p>Note that if you define a resource with a particular ARN, then later delete, and recreate a resource with that same ARN, the resource maintains the permissions already granted. </p>", "smithy.api#required" => {}}))
    GrantPermissionsRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The resource to which permissions are to be granted. Resources in Lake Formation are the Data Catalog, databases, and tables.</p>", "smithy.api#required" => {}}))
    GrantPermissionsRequest.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The permissions granted to the principal on the resource. Lake Formation defines privileges to grant and revoke access to metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. Lake Formation requires that each principal be authorized to perform a specific task on Lake Formation resources. </p>", "smithy.api#required" => {}}))
    GrantPermissionsRequest.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition'))
    GrantPermissionsRequest.add_member(:permissions_with_grant_option, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'PermissionsWithGrantOption', traits: {"smithy.api#documentation" => "<p>Indicates a list of the granted permissions that the principal may pass to other users. These permissions may only be a subset of the permissions granted in the <code>Privileges</code>.</p>"}))
    GrantPermissionsRequest.type = Types::GrantPermissionsRequest
    GrantPermissionsResponse.type = Types::GrantPermissionsResponse
    InternalServiceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>"}))
    InternalServiceException.type = Types::InternalServiceException
    InvalidInputException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>"}))
    InvalidInputException.type = Types::InvalidInputException
    LFTag.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The key-name for the LF-tag.</p>", "smithy.api#required" => {}}))
    LFTag.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A list of possible values an attribute can take.</p>\n         <p>The maximum number of values that can be defined for a LF-Tag is 1000. A single API call\n      supports 50 values. You can use multiple API calls to add more values.</p>", "smithy.api#required" => {}}))
    LFTag.type = Types::LFTag
    LFTagError.add_member(:lf_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagPair, location_name: 'LFTag', traits: {"smithy.api#documentation" => "<p>The key-name of the LF-tag.</p>"}))
    LFTagError.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>An error that occurred with the attachment or detachment of the LF-tag.</p>"}))
    LFTagError.type = Types::LFTagError
    LFTagErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagError)
    LFTagExpression.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for saved the LF-Tag expression.</p>"}))
    LFTagExpression.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the LF-Tag expression.</p>"}))
    LFTagExpression.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. </p>"}))
    LFTagExpression.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>A logical expression composed of one or more LF-Tags.</p>"}))
    LFTagExpression.type = Types::LFTagExpression
    LFTagExpressionResource.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. </p>"}))
    LFTagExpressionResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the LF-Tag expression to grant permissions on.</p>", "smithy.api#required" => {}}))
    LFTagExpressionResource.type = Types::LFTagExpressionResource
    LFTagExpressionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagExpression)
    LFTagKeyResource.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    LFTagKeyResource.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The key-name for the LF-tag.</p>", "smithy.api#required" => {}}))
    LFTagKeyResource.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A list of possible values an attribute can take.</p>", "smithy.api#required" => {}}))
    LFTagKeyResource.type = Types::LFTagKeyResource
    LFTagPair.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    LFTagPair.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The key-name for the LF-tag.</p>", "smithy.api#required" => {}}))
    LFTagPair.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A list of possible values an attribute can take.</p>", "smithy.api#required" => {}}))
    LFTagPair.type = Types::LFTagPair
    LFTagPolicyResource.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    LFTagPolicyResource.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type for which the LF-tag policy applies.</p>", "smithy.api#required" => {}}))
    LFTagPolicyResource.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Expression', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => [], "smithy.api#documentation" => "<p>A list of LF-tag conditions or a saved expression that apply to the resource's LF-tag policy.</p>"}))
    LFTagPolicyResource.add_member(:expression_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'ExpressionName', traits: {"smithy.api#documentation" => "<p>If provided, permissions are granted to the Data Catalog resources whose assigned LF-Tags\n      match the expression body of the saved expression under the provided\n        <code>ExpressionName</code>.</p>"}))
    LFTagPolicyResource.type = Types::LFTagPolicyResource
    LFTagsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagPair)
    LakeFormationOptInsInfo.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource'))
    LakeFormationOptInsInfo.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: 'Principal'))
    LakeFormationOptInsInfo.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition', traits: {"smithy.api#documentation" => "<p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>"}))
    LakeFormationOptInsInfo.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: 'LastModified', traits: {"smithy.api#documentation" => "<p>The last modified date and time of the record.</p>"}))
    LakeFormationOptInsInfo.add_member(:last_updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'LastUpdatedBy', traits: {"smithy.api#documentation" => "<p>The user who updated the record.</p>"}))
    LakeFormationOptInsInfo.type = Types::LakeFormationOptInsInfo
    LakeFormationOptInsInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationOptInsInfo)
    ListDataCellsFilterRequest.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: TableResource, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>A table in the Glue Data Catalog.</p>"}))
    ListDataCellsFilterRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is a continuation call.</p>"}))
    ListDataCellsFilterRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of the response.</p>"}))
    ListDataCellsFilterRequest.type = Types::ListDataCellsFilterRequest
    ListDataCellsFilterResponse.add_member(:data_cells_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCellsFilterList, location_name: 'DataCellsFilters', traits: {"smithy.api#documentation" => "<p>A list of <code>DataCellFilter</code> structures.</p>"}))
    ListDataCellsFilterResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if not all requested data cell filters have been returned.</p>"}))
    ListDataCellsFilterResponse.type = Types::ListDataCellsFilterResponse
    ListLFTagExpressionsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. </p>"}))
    ListLFTagExpressionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListLFTagExpressionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve this list.</p>"}))
    ListLFTagExpressionsRequest.type = Types::ListLFTagExpressionsRequest
    ListLFTagExpressionsResponse.add_member(:lf_tag_expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagExpressionsList, location_name: 'LFTagExpressions', traits: {"smithy.api#documentation" => "<p>Logical expressions composed of one more LF-Tag key-value pairs.</p>"}))
    ListLFTagExpressionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve this list.</p>"}))
    ListLFTagExpressionsResponse.type = Types::ListLFTagExpressionsResponse
    ListLFTagsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    ListLFTagsRequest.add_member(:resource_share_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareType, location_name: 'ResourceShareType', traits: {"smithy.api#documentation" => "<p>If resource share type is <code>ALL</code>, returns both in-account LF-tags and shared LF-tags that the requester has permission to view. If resource share type is <code>FOREIGN</code>, returns all share LF-tags that the requester can view. If no resource share type is passed, lists LF-tags in the given catalog ID that the requester has permission to view.</p>"}))
    ListLFTagsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListLFTagsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve this list.</p>"}))
    ListLFTagsRequest.type = Types::ListLFTagsRequest
    ListLFTagsResponse.add_member(:lf_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagsList, location_name: 'LFTags', traits: {"smithy.api#documentation" => "<p>A list of LF-tags that the requested has permission to view.</p>"}))
    ListLFTagsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, present if the current list segment is not the last.</p>"}))
    ListLFTagsResponse.type = Types::ListLFTagsResponse
    ListLakeFormationOptInsRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: 'Principal'))
    ListLakeFormationOptInsRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>A structure for the resource.</p>"}))
    ListLakeFormationOptInsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListLakeFormationOptInsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve this list.</p>"}))
    ListLakeFormationOptInsRequest.type = Types::ListLakeFormationOptInsRequest
    ListLakeFormationOptInsResponse.add_member(:lake_formation_opt_ins_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationOptInsInfoList, location_name: 'LakeFormationOptInsInfoList', traits: {"smithy.api#documentation" => "<p>A list of principal-resource pairs that have Lake Formation permissins enforced.</p>"}))
    ListLakeFormationOptInsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve this list.</p>"}))
    ListLakeFormationOptInsResponse.type = Types::ListLakeFormationOptInsResponse
    ListPermissionsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    ListPermissionsRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>Specifies a principal to filter the permissions returned.</p>"}))
    ListPermissionsRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Specifies a resource type to filter the permissions returned.</p>"}))
    ListPermissionsRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>A resource where you will get a list of the principal permissions.</p>\n         <p>This operation does not support getting privileges on a table with columns. Instead, call this operation on the table, and the operation returns the table and the table w columns.</p>"}))
    ListPermissionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve this list.</p>"}))
    ListPermissionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    ListPermissionsRequest.add_member(:include_related, Smithy::Schema::Shapes::ShapeRef.new(shape: TrueFalseString, location_name: 'IncludeRelated', traits: {"smithy.api#documentation" => "<p>Indicates that related permissions should be included in the results.</p>"}))
    ListPermissionsRequest.type = Types::ListPermissionsRequest
    ListPermissionsResponse.add_member(:principal_resource_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalResourcePermissionsList, location_name: 'PrincipalResourcePermissions', traits: {"smithy.api#documentation" => "<p>A list of principals and their permissions on the resource for the specified principal and resource types.</p>"}))
    ListPermissionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve this list.</p>"}))
    ListPermissionsResponse.type = Types::ListPermissionsResponse
    ListResourcesRequest.add_member(:filter_condition_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterConditionList, location_name: 'FilterConditionList', traits: {"smithy.api#documentation" => "<p>Any applicable row-level and/or column-level filtering conditions for the resources.</p>"}))
    ListResourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of resource results.</p>"}))
    ListResourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve these resources.</p>"}))
    ListResourcesRequest.type = Types::ListResourcesRequest
    ListResourcesResponse.add_member(:resource_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInfoList, location_name: 'ResourceInfoList', traits: {"smithy.api#documentation" => "<p>A summary of the data lake resources.</p>"}))
    ListResourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve these resources.</p>"}))
    ListResourcesResponse.type = Types::ListResourcesResponse
    ListTableStorageOptimizersRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The Catalog ID of the table.</p>"}))
    ListTableStorageOptimizersRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>Name of the database where the table is present.</p>", "smithy.api#required" => {}}))
    ListTableStorageOptimizersRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>Name of the table.</p>", "smithy.api#required" => {}}))
    ListTableStorageOptimizersRequest.add_member(:storage_optimizer_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OptimizerType, location_name: 'StorageOptimizerType', traits: {"smithy.api#documentation" => "<p>The specific type of storage optimizers to list. The supported value is <code>compaction</code>.</p>"}))
    ListTableStorageOptimizersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of storage optimizers to return on each call.</p>"}))
    ListTableStorageOptimizersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is a continuation call.</p>"}))
    ListTableStorageOptimizersRequest.type = Types::ListTableStorageOptimizersRequest
    ListTableStorageOptimizersResponse.add_member(:storage_optimizer_list, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageOptimizerList, location_name: 'StorageOptimizerList', traits: {"smithy.api#documentation" => "<p>A list of the storage optimizers associated with a table.</p>"}))
    ListTableStorageOptimizersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>"}))
    ListTableStorageOptimizersResponse.type = Types::ListTableStorageOptimizersResponse
    ListTransactionsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The catalog for which to list transactions. Defaults to the account ID of the caller.</p>"}))
    ListTransactionsRequest.add_member(:status_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionStatusFilter, location_name: 'StatusFilter', traits: {"smithy.api#documentation" => "<p> A filter indicating the status of transactions to return. Options are ALL | COMPLETED | COMMITTED | ABORTED | ACTIVE. The default is <code>ALL</code>.</p>"}))
    ListTransactionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of transactions to return in a single call.</p>"}))
    ListTransactionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token if this is not the first call to retrieve transactions.</p>"}))
    ListTransactionsRequest.type = Types::ListTransactionsRequest
    ListTransactionsResponse.add_member(:transactions, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionDescriptionList, location_name: 'Transactions', traits: {"smithy.api#documentation" => "<p>A list of transactions. The record for each transaction is a <code>TransactionDescription</code> object.</p>"}))
    ListTransactionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token indicating whether additional data is available.</p>"}))
    ListTransactionsResponse.type = Types::ListTransactionsResponse
    OperationTimeoutException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>"}))
    OperationTimeoutException.type = Types::OperationTimeoutException
    OptimizerType.add_member(:compaction, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPACTION', traits: {"smithy.api#enumValue" => "COMPACTION"}))
    OptimizerType.add_member(:garbage_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GARBAGE_COLLECTION', traits: {"smithy.api#enumValue" => "GARBAGE_COLLECTION"}))
    OptimizerType.add_member(:generic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERIC', traits: {"smithy.api#enumValue" => "ALL"}))
    ParametersMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyString)
    ParametersMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMapValue)
    PartitionObjects.add_member(:partition_values, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionValuesList, location_name: 'PartitionValues', traits: {"smithy.api#documentation" => "<p>A list of partition values.</p>"}))
    PartitionObjects.add_member(:objects, Smithy::Schema::Shapes::ShapeRef.new(shape: TableObjectList, location_name: 'Objects', traits: {"smithy.api#documentation" => "<p>A list of table objects</p>"}))
    PartitionObjects.type = Types::PartitionObjects
    PartitionValueList.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueStringList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The list of partition values.</p>", "smithy.api#required" => {}}))
    PartitionValueList.type = Types::PartitionValueList
    PartitionValuesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionValueString)
    PartitionedTableObjectsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionObjects)
    PathStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PathString)
    Permission.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    Permission.add_member(:select, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELECT', traits: {"smithy.api#enumValue" => "SELECT"}))
    Permission.add_member(:alter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALTER', traits: {"smithy.api#enumValue" => "ALTER"}))
    Permission.add_member(:drop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DROP', traits: {"smithy.api#enumValue" => "DROP"}))
    Permission.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    Permission.add_member(:insert, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSERT', traits: {"smithy.api#enumValue" => "INSERT"}))
    Permission.add_member(:describe, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCRIBE', traits: {"smithy.api#enumValue" => "DESCRIBE"}))
    Permission.add_member(:create_database, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_DATABASE', traits: {"smithy.api#enumValue" => "CREATE_DATABASE"}))
    Permission.add_member(:create_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_TABLE', traits: {"smithy.api#enumValue" => "CREATE_TABLE"}))
    Permission.add_member(:data_location_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_LOCATION_ACCESS', traits: {"smithy.api#enumValue" => "DATA_LOCATION_ACCESS"}))
    Permission.add_member(:create_lf_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_LF_TAG', traits: {"smithy.api#enumValue" => "CREATE_LF_TAG"}))
    Permission.add_member(:associate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATE', traits: {"smithy.api#enumValue" => "ASSOCIATE"}))
    Permission.add_member(:grant_with_lf_tag_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRANT_WITH_LF_TAG_EXPRESSION', traits: {"smithy.api#enumValue" => "GRANT_WITH_LF_TAG_EXPRESSION"}))
    Permission.add_member(:create_lf_tag_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_LF_TAG_EXPRESSION', traits: {"smithy.api#enumValue" => "CREATE_LF_TAG_EXPRESSION"}))
    Permission.add_member(:create_catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_CATALOG', traits: {"smithy.api#enumValue" => "CREATE_CATALOG"}))
    Permission.add_member(:super_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPER_USER', traits: {"smithy.api#enumValue" => "SUPER_USER"}))
    PermissionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Permission)
    PermissionType.add_member(:column_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLUMN_PERMISSION', traits: {"smithy.api#enumValue" => "COLUMN_PERMISSION"}))
    PermissionType.add_member(:cell_filter_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CELL_FILTER_PERMISSION', traits: {"smithy.api#enumValue" => "CELL_FILTER_PERMISSION"}))
    PermissionType.add_member(:nested_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NESTED_PERMISSION', traits: {"smithy.api#enumValue" => "NESTED_PERMISSION"}))
    PermissionType.add_member(:nested_cell_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NESTED_CELL_PERMISSION', traits: {"smithy.api#enumValue" => "NESTED_CELL_PERMISSION"}))
    PermissionTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType)
    PermissionTypeMismatchException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>"}))
    PermissionTypeMismatchException.type = Types::PermissionTypeMismatchException
    PlanningStatistics.add_member(:estimated_data_to_scan_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfBytes, location_name: 'EstimatedDataToScanBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An estimate of the data that was scanned in bytes.</p>"}))
    PlanningStatistics.add_member(:planning_time_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfMilliseconds, location_name: 'PlanningTimeMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time that it took to process the request.</p>"}))
    PlanningStatistics.add_member(:queue_time_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfMilliseconds, location_name: 'QueueTimeMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time the request was in queue to be processed.</p>"}))
    PlanningStatistics.add_member(:work_units_generated_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfItems, location_name: 'WorkUnitsGeneratedCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of work units generated.</p>"}))
    PlanningStatistics.type = Types::PlanningStatistics
    PrincipalPermissions.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The principal who is granted permissions.</p>"}))
    PrincipalPermissions.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The permissions that are granted to the principal.</p>"}))
    PrincipalPermissions.type = Types::PrincipalPermissions
    PrincipalPermissionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalPermissions)
    PrincipalResourcePermissions.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The Data Lake principal to be granted or revoked permissions.</p>"}))
    PrincipalResourcePermissions.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The resource where permissions are to be granted or revoked.</p>"}))
    PrincipalResourcePermissions.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition', traits: {"smithy.api#documentation" => "<p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>"}))
    PrincipalResourcePermissions.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The permissions to be granted or revoked on the resource.</p>"}))
    PrincipalResourcePermissions.add_member(:permissions_with_grant_option, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'PermissionsWithGrantOption', traits: {"smithy.api#documentation" => "<p>Indicates whether to grant the ability to grant permissions (as a subset of permissions granted).</p>"}))
    PrincipalResourcePermissions.add_member(:additional_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsMap, location_name: 'AdditionalDetails', traits: {"smithy.api#documentation" => "<p>This attribute can be used to return any additional details of <code>PrincipalResourcePermissions</code>. Currently returns only as a RAM resource share ARN.</p>"}))
    PrincipalResourcePermissions.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: 'LastUpdated', traits: {"smithy.api#documentation" => "<p>The date and time when the resource was last updated.</p>"}))
    PrincipalResourcePermissions.add_member(:last_updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'LastUpdatedBy', traits: {"smithy.api#documentation" => "<p>The user who updated the record.</p>"}))
    PrincipalResourcePermissions.type = Types::PrincipalResourcePermissions
    PrincipalResourcePermissionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalResourcePermissions)
    PutDataLakeSettingsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    PutDataLakeSettingsRequest.add_member(:data_lake_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeSettings, location_name: 'DataLakeSettings', traits: {"smithy.api#documentation" => "<p>A structure representing a list of Lake Formation principals designated as data lake administrators.</p>", "smithy.api#required" => {}}))
    PutDataLakeSettingsRequest.type = Types::PutDataLakeSettingsRequest
    PutDataLakeSettingsResponse.type = Types::PutDataLakeSettingsResponse
    QueryParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    QueryParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    QueryPlanningContext.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The ID of the Data Catalog where the partition in question resides. If none is provided, the Amazon Web Services account ID is used by default.</p>"}))
    QueryPlanningContext.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryPlanningContextDatabaseNameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The database containing the table.</p>", "smithy.api#required" => {}}))
    QueryPlanningContext.add_member(:query_as_of_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'QueryAsOfTime', traits: {"smithy.api#documentation" => "<p>The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>"}))
    QueryPlanningContext.add_member(:query_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryParameterMap, location_name: 'QueryParameters', traits: {"smithy.api#documentation" => "<p>A map consisting of key-value pairs.</p>"}))
    QueryPlanningContext.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The transaction ID at which to read the table contents. If this transaction is not committed, the read will be treated as part of that transaction and will see its writes. If this transaction has aborted, an error will be returned. If not set, defaults to the most recent committed transaction. Cannot be specified along with <code>QueryAsOfTime</code>.</p>"}))
    QueryPlanningContext.type = Types::QueryPlanningContext
    QuerySessionContext.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HashString, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>A unique identifier generated by the query engine for the query.</p>"}))
    QuerySessionContext.add_member(:query_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'QueryStartTime', traits: {"smithy.api#documentation" => "<p>A timestamp provided by the query engine for when the query started.</p>"}))
    QuerySessionContext.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableString, location_name: 'ClusterId', traits: {"smithy.api#documentation" => "<p>An identifier string for the consumer cluster.</p>"}))
    QuerySessionContext.add_member(:query_authorization_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HashString, location_name: 'QueryAuthorizationId', traits: {"smithy.api#documentation" => "<p>A cryptographically generated query identifier generated by Glue or Lake Formation.</p>"}))
    QuerySessionContext.add_member(:additional_context, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalContextMap, location_name: 'AdditionalContext', traits: {"smithy.api#documentation" => "<p>An opaque string-string map passed by the query engine.</p>"}))
    QuerySessionContext.type = Types::QuerySessionContext
    QueryStateString.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    QueryStateString.add_member(:workunits_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKUNITS_AVAILABLE', traits: {"smithy.api#enumValue" => "WORKUNITS_AVAILABLE"}))
    QueryStateString.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    QueryStateString.add_member(:finished, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINISHED', traits: {"smithy.api#enumValue" => "FINISHED"}))
    QueryStateString.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    RegisterResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to register.</p>", "smithy.api#required" => {}}))
    RegisterResourceRequest.add_member(:use_service_linked_role, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'UseServiceLinkedRole', traits: {"smithy.api#documentation" => "<p>Designates an Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog. A service-linked role is a unique type of IAM role that is linked directly to Lake Formation.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html\">Using Service-Linked Roles for Lake Formation</a>.</p>"}))
    RegisterResourceRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The identifier for the role that registers the resource.</p>"}))
    RegisterResourceRequest.add_member(:with_federation, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'WithFederation', traits: {"smithy.api#documentation" => "<p>Whether or not the resource is a federated resource.</p>"}))
    RegisterResourceRequest.add_member(:hybrid_access_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'HybridAccessEnabled', traits: {"smithy.api#documentation" => "<p>\n    Specifies whether the data access of tables pointing to the location can be managed by both Lake Formation permissions as well as Amazon S3 bucket policies.\n  </p>"}))
    RegisterResourceRequest.add_member(:with_privileged_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'WithPrivilegedAccess', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Grants the calling principal the permissions to perform all supported Lake Formation operations on the registered data location. </p>"}))
    RegisterResourceRequest.type = Types::RegisterResourceRequest
    RegisterResourceResponse.type = Types::RegisterResourceResponse
    RemoveLFTagsFromResourceRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    RemoveLFTagsFromResourceRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The database, table, or column resource where you want to remove an LF-tag.</p>", "smithy.api#required" => {}}))
    RemoveLFTagsFromResourceRequest.add_member(:lf_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagsList, location_name: 'LFTags', traits: {"smithy.api#documentation" => "<p>The LF-tags to be removed from the resource.</p>", "smithy.api#required" => {}}))
    RemoveLFTagsFromResourceRequest.type = Types::RemoveLFTagsFromResourceRequest
    RemoveLFTagsFromResourceResponse.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagErrors, location_name: 'Failures', traits: {"smithy.api#documentation" => "<p>A list of failures to untag a resource.</p>"}))
    RemoveLFTagsFromResourceResponse.type = Types::RemoveLFTagsFromResourceResponse
    Resource.add_member(:catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogResource, location_name: 'Catalog', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    Resource.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseResource, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The database for the resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database permissions to a principal. </p>"}))
    Resource.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: TableResource, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>The table for the resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>"}))
    Resource.add_member(:table_with_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: TableWithColumnsResource, location_name: 'TableWithColumns', traits: {"smithy.api#documentation" => "<p>The table with columns for the resource. A principal with permissions to this resource can select metadata from the columns of a table in the Data Catalog and the underlying data in Amazon S3.</p>"}))
    Resource.add_member(:data_location, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLocationResource, location_name: 'DataLocation', traits: {"smithy.api#documentation" => "<p>The location of an Amazon S3 path where permissions are granted or revoked. </p>"}))
    Resource.add_member(:data_cells_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCellsFilterResource, location_name: 'DataCellsFilter', traits: {"smithy.api#documentation" => "<p>A data cell filter.</p>"}))
    Resource.add_member(:lf_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagKeyResource, location_name: 'LFTag', traits: {"smithy.api#documentation" => "<p>The LF-tag key and values attached to a resource.</p>"}))
    Resource.add_member(:lf_tag_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagPolicyResource, location_name: 'LFTagPolicy', traits: {"smithy.api#documentation" => "<p>A list of LF-tag conditions or saved LF-Tag expressions that define a resource's LF-tag policy.</p>"}))
    Resource.add_member(:lf_tag_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagExpressionResource, location_name: 'LFTagExpression', traits: {"smithy.api#documentation" => "<p>LF-Tag expression resource. A logical expression composed of one or more LF-Tag key:value pairs.</p>"}))
    Resource.type = Types::Resource
    ResourceInfo.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>"}))
    ResourceInfo.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The IAM role that registered a resource.</p>"}))
    ResourceInfo.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: 'LastModified', traits: {"smithy.api#documentation" => "<p>The date and time the resource was last modified.</p>"}))
    ResourceInfo.add_member(:with_federation, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'WithFederation', traits: {"smithy.api#documentation" => "<p>Whether or not the resource is a federated resource.</p>"}))
    ResourceInfo.add_member(:hybrid_access_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'HybridAccessEnabled', traits: {"smithy.api#documentation" => "<p>\n      Indicates whether the data access of tables pointing to the location can be managed by both Lake Formation permissions as well as Amazon S3 bucket policies.\n    </p>"}))
    ResourceInfo.add_member(:with_privileged_access, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'WithPrivilegedAccess', traits: {"smithy.api#documentation" => "<p>Grants the calling principal the permissions to perform all supported Lake Formation operations on the registered data location. </p>"}))
    ResourceInfo.type = Types::ResourceInfo
    ResourceInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInfo)
    ResourceNotReadyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the error.</p>"}))
    ResourceNotReadyException.type = Types::ResourceNotReadyException
    ResourceNumberLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>"}))
    ResourceNumberLimitExceededException.type = Types::ResourceNumberLimitExceededException
    ResourceShareList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RAMResourceShareArn)
    ResourceShareType.add_member(:foreign, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOREIGN', traits: {"smithy.api#enumValue" => "FOREIGN"}))
    ResourceShareType.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ResourceType.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATABASE', traits: {"smithy.api#enumValue" => "DATABASE"}))
    ResourceType.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE', traits: {"smithy.api#enumValue" => "TABLE"}))
    RevokePermissionsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    RevokePermissionsRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The principal to be revoked permissions on the resource.</p>", "smithy.api#required" => {}}))
    RevokePermissionsRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The resource to which permissions are to be revoked.</p>", "smithy.api#required" => {}}))
    RevokePermissionsRequest.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The permissions revoked to the principal on the resource. For information about permissions, see <a href=\"https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html\">Security\n      and Access Control to Metadata and Data</a>.</p>", "smithy.api#required" => {}}))
    RevokePermissionsRequest.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition'))
    RevokePermissionsRequest.add_member(:permissions_with_grant_option, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'PermissionsWithGrantOption', traits: {"smithy.api#documentation" => "<p>Indicates a list of permissions for which to revoke the grant option allowing the principal to pass permissions to other principals.</p>"}))
    RevokePermissionsRequest.type = Types::RevokePermissionsRequest
    RevokePermissionsResponse.type = Types::RevokePermissionsResponse
    RowFilter.add_member(:filter_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: PredicateString, location_name: 'FilterExpression', traits: {"smithy.api#documentation" => "<p>A filter expression.</p>"}))
    RowFilter.add_member(:all_rows_wildcard, Smithy::Schema::Shapes::ShapeRef.new(shape: AllRowsWildcard, location_name: 'AllRowsWildcard', traits: {"smithy.api#documentation" => "<p>A wildcard for all rows.</p>"}))
    RowFilter.type = Types::RowFilter
    ScopeTargets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeTarget)
    SearchDatabasesByLFTagsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve this list.</p>"}))
    SearchDatabasesByLFTagsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    SearchDatabasesByLFTagsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    SearchDatabasesByLFTagsRequest.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>A list of conditions (<code>LFTag</code> structures) to search for in database resources.</p>", "smithy.api#required" => {}}))
    SearchDatabasesByLFTagsRequest.type = Types::SearchDatabasesByLFTagsRequest
    SearchDatabasesByLFTagsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, present if the current list segment is not the last.</p>"}))
    SearchDatabasesByLFTagsResponse.add_member(:database_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseLFTagsList, location_name: 'DatabaseList', traits: {"smithy.api#documentation" => "<p>A list of databases that meet the LF-tag conditions.</p>"}))
    SearchDatabasesByLFTagsResponse.type = Types::SearchDatabasesByLFTagsResponse
    SearchTablesByLFTagsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, if this is not the first call to retrieve this list.</p>"}))
    SearchTablesByLFTagsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    SearchTablesByLFTagsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    SearchTablesByLFTagsRequest.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>A list of conditions (<code>LFTag</code> structures) to search for in table resources.</p>", "smithy.api#required" => {}}))
    SearchTablesByLFTagsRequest.type = Types::SearchTablesByLFTagsRequest
    SearchTablesByLFTagsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A continuation token, present if the current list segment is not the last. On the first run, if you include a not null (a value) token you can get empty pages.</p>"}))
    SearchTablesByLFTagsResponse.add_member(:table_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TableLFTagsList, location_name: 'TableList', traits: {"smithy.api#documentation" => "<p>A list of tables that meet the LF-tag conditions.</p>"}))
    SearchTablesByLFTagsResponse.type = Types::SearchTablesByLFTagsResponse
    StartQueryPlanningRequest.add_member(:query_planning_context, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryPlanningContext, location_name: 'QueryPlanningContext', traits: {"smithy.api#documentation" => "<p>A structure containing information about the query plan.</p>", "smithy.api#required" => {}}))
    StartQueryPlanningRequest.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: SyntheticStartQueryPlanningRequestQueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>A PartiQL query statement used as an input to the planner service.</p>", "smithy.api#required" => {}}))
    StartQueryPlanningRequest.type = Types::StartQueryPlanningRequest
    StartQueryPlanningResponse.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryIdString, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of the plan query operation can be used to fetch the actual work unit descriptors that are produced as the result of the operation. The ID is also used to get the query state and as an input to the <code>Execute</code> operation.</p>", "smithy.api#required" => {}}))
    StartQueryPlanningResponse.type = Types::StartQueryPlanningResponse
    StartTransactionRequest.add_member(:transaction_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionType, location_name: 'TransactionType', traits: {"smithy.api#documentation" => "<p>Indicates whether this transaction should be read only or read and write. Writes made using a read-only transaction ID will be rejected. Read-only transactions do not need to be committed. </p>"}))
    StartTransactionRequest.type = Types::StartTransactionRequest
    StartTransactionResponse.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>An opaque identifier for the transaction.</p>"}))
    StartTransactionResponse.type = Types::StartTransactionResponse
    StatisticsNotReadyYetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the error.</p>"}))
    StatisticsNotReadyYetException.type = Types::StatisticsNotReadyYetException
    StorageOptimizer.add_member(:storage_optimizer_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OptimizerType, location_name: 'StorageOptimizerType', traits: {"smithy.api#documentation" => "<p>The specific type of storage optimizer. The supported value is <code>compaction</code>.</p>"}))
    StorageOptimizer.add_member(:config, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageOptimizerConfig, location_name: 'Config', traits: {"smithy.api#documentation" => "<p>A map of the storage optimizer configuration. Currently contains only one key-value pair: <code>is_enabled</code> indicates true or false for acceleration.</p>"}))
    StorageOptimizer.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>A message that contains information about any error (if present).</p>\n         <p>When an acceleration result has an enabled status, the error message is empty.</p>\n         <p>When an acceleration result has a disabled status, the message describes an error or simply indicates \"disabled by the user\".</p>"}))
    StorageOptimizer.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Warnings', traits: {"smithy.api#documentation" => "<p>A message that contains information about any warnings (if present).</p>"}))
    StorageOptimizer.add_member(:last_run_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'LastRunDetails', traits: {"smithy.api#documentation" => "<p>When an acceleration result has an enabled status, contains the details of the last job run.</p>"}))
    StorageOptimizer.type = Types::StorageOptimizer
    StorageOptimizerConfig.key = Smithy::Schema::Shapes::ShapeRef.new(shape: StorageOptimizerConfigKey)
    StorageOptimizerConfig.value = Smithy::Schema::Shapes::ShapeRef.new(shape: StorageOptimizerConfigValue)
    StorageOptimizerConfigMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: OptimizerType)
    StorageOptimizerConfigMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: StorageOptimizerConfig)
    StorageOptimizerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StorageOptimizer)
    StringValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue)
    TableLFTagsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaggedTable)
    TableObject.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'Uri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the object.</p>"}))
    TableObject.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: ETagString, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>"}))
    TableObject.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectSize, location_name: 'Size', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the Amazon S3 object in bytes.</p>"}))
    TableObject.type = Types::TableObject
    TableObjectList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TableObject)
    TableResource.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"}))
    TableResource.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>", "smithy.api#required" => {}}))
    TableResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the table.</p>"}))
    TableResource.add_member(:table_wildcard, Smithy::Schema::Shapes::ShapeRef.new(shape: TableWildcard, location_name: 'TableWildcard', traits: {"smithy.api#documentation" => "<p>A wildcard object representing every table under a database.</p>\n         <p>At least one of <code>TableResource$Name</code> or <code>TableResource$TableWildcard</code> is required.</p>"}))
    TableResource.type = Types::TableResource
    TableWildcard.type = Types::TableWildcard
    TableWithColumnsResource.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"}))
    TableWithColumnsResource.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database for the table with columns resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>", "smithy.api#required" => {}}))
    TableWithColumnsResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the table resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>", "smithy.api#required" => {}}))
    TableWithColumnsResource.add_member(:column_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnNames, location_name: 'ColumnNames', traits: {"smithy.api#documentation" => "<p>The list of column names for the table. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>"}))
    TableWithColumnsResource.add_member(:column_wildcard, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnWildcard, location_name: 'ColumnWildcard', traits: {"smithy.api#documentation" => "<p>A wildcard specified by a <code>ColumnWildcard</code> object. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>"}))
    TableWithColumnsResource.type = Types::TableWithColumnsResource
    TagValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagValue)
    TaggedDatabase.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseResource, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>A database that has LF-tags attached to it.</p>"}))
    TaggedDatabase.add_member(:lf_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagsList, location_name: 'LFTags', traits: {"smithy.api#documentation" => "<p>A list of LF-tags attached to the database.</p>"}))
    TaggedDatabase.type = Types::TaggedDatabase
    TaggedTable.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: TableResource, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>A table that has LF-tags attached to it.</p>"}))
    TaggedTable.add_member(:lf_tag_on_database, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagsList, location_name: 'LFTagOnDatabase', traits: {"smithy.api#documentation" => "<p>A list of LF-tags attached to the database where the table resides.</p>"}))
    TaggedTable.add_member(:lf_tags_on_table, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagsList, location_name: 'LFTagsOnTable', traits: {"smithy.api#documentation" => "<p>A list of LF-tags attached to the table.</p>"}))
    TaggedTable.add_member(:lf_tags_on_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnLFTagsList, location_name: 'LFTagsOnColumns', traits: {"smithy.api#documentation" => "<p>A list of LF-tags attached to columns in the table.</p>"}))
    TaggedTable.type = Types::TaggedTable
    ThrottledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the error.</p>"}))
    ThrottledException.type = Types::ThrottledException
    TransactionCanceledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the error.</p>"}))
    TransactionCanceledException.type = Types::TransactionCanceledException
    TransactionCommitInProgressException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the error.</p>"}))
    TransactionCommitInProgressException.type = Types::TransactionCommitInProgressException
    TransactionCommittedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the error.</p>"}))
    TransactionCommittedException.type = Types::TransactionCommittedException
    TransactionDescription.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The ID of the transaction.</p>"}))
    TransactionDescription.add_member(:transaction_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionStatus, location_name: 'TransactionStatus', traits: {"smithy.api#documentation" => "<p>A status of ACTIVE, COMMITTED, or ABORTED.</p>"}))
    TransactionDescription.add_member(:transaction_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TransactionStartTime', traits: {"smithy.api#documentation" => "<p>The time when the transaction started.</p>"}))
    TransactionDescription.add_member(:transaction_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TransactionEndTime', traits: {"smithy.api#documentation" => "<p>The time when the transaction committed or aborted, if it is not currently active.</p>"}))
    TransactionDescription.type = Types::TransactionDescription
    TransactionDescriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionDescription)
    TransactionStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TransactionStatus.add_member(:committed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMITTED', traits: {"smithy.api#enumValue" => "COMMITTED"}))
    TransactionStatus.add_member(:aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTED', traits: {"smithy.api#enumValue" => "ABORTED"}))
    TransactionStatus.add_member(:commit_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMIT_IN_PROGRESS', traits: {"smithy.api#enumValue" => "COMMIT_IN_PROGRESS"}))
    TransactionStatusFilter.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    TransactionStatusFilter.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    TransactionStatusFilter.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TransactionStatusFilter.add_member(:committed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMITTED', traits: {"smithy.api#enumValue" => "COMMITTED"}))
    TransactionStatusFilter.add_member(:aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTED', traits: {"smithy.api#enumValue" => "ABORTED"}))
    TransactionType.add_member(:read_and_write, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_AND_WRITE', traits: {"smithy.api#enumValue" => "READ_AND_WRITE"}))
    TransactionType.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_ONLY', traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    TrustedResourceOwners.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString)
    UpdateDataCellsFilterRequest.add_member(:table_data, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCellsFilter, location_name: 'TableData', traits: {"smithy.api#documentation" => "<p>A <code>DataCellsFilter</code> structure containing information about the data cells filter.</p>", "smithy.api#required" => {}}))
    UpdateDataCellsFilterRequest.type = Types::UpdateDataCellsFilterRequest
    UpdateDataCellsFilterResponse.type = Types::UpdateDataCellsFilterResponse
    UpdateLFTagExpressionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the LF-Tag expression.</p>", "smithy.api#required" => {}}))
    UpdateLFTagExpressionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description with information about the saved LF-Tag expression.</p>"}))
    UpdateLFTagExpressionRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. </p>"}))
    UpdateLFTagExpressionRequest.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>The LF-Tag expression body composed of one more LF-Tag key-value pairs.</p>", "smithy.api#required" => {}}))
    UpdateLFTagExpressionRequest.type = Types::UpdateLFTagExpressionRequest
    UpdateLFTagExpressionResponse.type = Types::UpdateLFTagExpressionResponse
    UpdateLFTagRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>"}))
    UpdateLFTagRequest.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The key-name for the LF-tag for which to add or delete values.</p>", "smithy.api#required" => {}}))
    UpdateLFTagRequest.add_member(:tag_values_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValuesToDelete', traits: {"smithy.api#documentation" => "<p>A list of LF-tag values to delete from the LF-tag.</p>"}))
    UpdateLFTagRequest.add_member(:tag_values_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValuesToAdd', traits: {"smithy.api#documentation" => "<p>A list of LF-tag values to add from the LF-tag.</p>"}))
    UpdateLFTagRequest.type = Types::UpdateLFTagRequest
    UpdateLFTagResponse.type = Types::UpdateLFTagResponse
    UpdateLakeFormationIdentityCenterConfigurationRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the\n         persistent metadata store. It contains database definitions, table definitions, view\n         definitions, and other control information to manage your Lake Formation\n         environment.</p>"}))
    UpdateLakeFormationIdentityCenterConfigurationRequest.add_member(:share_recipients, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakePrincipalList, location_name: 'ShareRecipients', traits: {"smithy.api#documentation" => "<p>A list of Amazon Web Services account IDs or Amazon Web Services organization/organizational unit ARNs that\n         are allowed to access to access data managed by Lake Formation. </p>\n         <p>If the <code>ShareRecipients</code> list includes valid values, then the resource share is updated with the principals you want to have access to the resources.</p>\n         <p>If the <code>ShareRecipients</code> value is null, both the list of share recipients and\n         the resource share remain unchanged.</p>\n         <p>If the <code>ShareRecipients</code> value is an empty list, then the existing share\n         recipients list will be cleared, and the resource share will be deleted.</p>"}))
    UpdateLakeFormationIdentityCenterConfigurationRequest.add_member(:application_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'ApplicationStatus', traits: {"smithy.api#documentation" => "<p>Allows to enable or disable the IAM Identity Center connection.</p>"}))
    UpdateLakeFormationIdentityCenterConfigurationRequest.add_member(:external_filtering, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalFilteringConfiguration, location_name: 'ExternalFiltering', traits: {"smithy.api#documentation" => "<p>A list of the account IDs of Amazon Web Services accounts of third-party applications\n         that are allowed to access data managed by Lake Formation.</p>"}))
    UpdateLakeFormationIdentityCenterConfigurationRequest.type = Types::UpdateLakeFormationIdentityCenterConfigurationRequest
    UpdateLakeFormationIdentityCenterConfigurationResponse.type = Types::UpdateLakeFormationIdentityCenterConfigurationResponse
    UpdateResourceRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The new role to use for the given resource registered in Lake Formation.</p>", "smithy.api#required" => {}}))
    UpdateResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resource ARN.</p>", "smithy.api#required" => {}}))
    UpdateResourceRequest.add_member(:with_federation, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'WithFederation', traits: {"smithy.api#documentation" => "<p>Whether or not the resource is a federated resource.</p>"}))
    UpdateResourceRequest.add_member(:hybrid_access_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'HybridAccessEnabled', traits: {"smithy.api#documentation" => "<p>\n      Specifies whether the data access of tables pointing to the location can be managed by both Lake Formation permissions as well as Amazon S3 bucket policies.\n    </p>"}))
    UpdateResourceRequest.type = Types::UpdateResourceRequest
    UpdateResourceResponse.type = Types::UpdateResourceResponse
    UpdateTableObjectsRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The catalog containing the governed table to update. Defaults to the caller’s account ID.</p>"}))
    UpdateTableObjectsRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The database containing the governed table to update.</p>", "smithy.api#required" => {}}))
    UpdateTableObjectsRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The governed table to update.</p>", "smithy.api#required" => {}}))
    UpdateTableObjectsRequest.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The transaction at which to do the write.</p>"}))
    UpdateTableObjectsRequest.add_member(:write_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: WriteOperationList, location_name: 'WriteOperations', traits: {"smithy.api#documentation" => "<p>A list of <code>WriteOperation</code> objects that define an object to add to or delete from the manifest for a governed table.</p>", "smithy.api#required" => {}}))
    UpdateTableObjectsRequest.type = Types::UpdateTableObjectsRequest
    UpdateTableObjectsResponse.type = Types::UpdateTableObjectsResponse
    UpdateTableStorageOptimizerRequest.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogIdString, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The Catalog ID of the table.</p>"}))
    UpdateTableStorageOptimizerRequest.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>Name of the database where the table is present.</p>", "smithy.api#required" => {}}))
    UpdateTableStorageOptimizerRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>Name of the table for which to enable the storage optimizer.</p>", "smithy.api#required" => {}}))
    UpdateTableStorageOptimizerRequest.add_member(:storage_optimizer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageOptimizerConfigMap, location_name: 'StorageOptimizerConfig', traits: {"smithy.api#documentation" => "<p>Name of the configuration for the storage optimizer.</p>", "smithy.api#required" => {}}))
    UpdateTableStorageOptimizerRequest.type = Types::UpdateTableStorageOptimizerRequest
    UpdateTableStorageOptimizerResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: Result, location_name: 'Result', traits: {"smithy.api#documentation" => "<p>A response indicating the success of failure of the operation.</p>"}))
    UpdateTableStorageOptimizerResponse.type = Types::UpdateTableStorageOptimizerResponse
    ValueStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValueString)
    VirtualObject.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'Uri', traits: {"smithy.api#documentation" => "<p>The path to the Amazon S3 object. Must start with s3://</p>", "smithy.api#required" => {}}))
    VirtualObject.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: ETagString, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The ETag of the Amazon S3 object.</p>"}))
    VirtualObject.type = Types::VirtualObject
    VirtualObjectList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualObject)
    WorkUnitRange.add_member(:work_unit_id_max, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkUnitIdLong, location_name: 'WorkUnitIdMax', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Defines the maximum work unit ID in the range. The maximum value is inclusive.</p>", "smithy.api#required" => {}}))
    WorkUnitRange.add_member(:work_unit_id_min, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkUnitIdLong, location_name: 'WorkUnitIdMin', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Defines the minimum work unit ID in the range.</p>", "smithy.api#required" => {}}))
    WorkUnitRange.add_member(:work_unit_token, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkUnitTokenString, location_name: 'WorkUnitToken', traits: {"smithy.api#documentation" => "<p>A work token used to query the execution service.</p>", "smithy.api#required" => {}}))
    WorkUnitRange.type = Types::WorkUnitRange
    WorkUnitRangeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkUnitRange)
    WorkUnitsNotReadyYetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message describing the error.</p>"}))
    WorkUnitsNotReadyYetException.type = Types::WorkUnitsNotReadyYetException
    WriteOperation.add_member(:add_object, Smithy::Schema::Shapes::ShapeRef.new(shape: AddObjectInput, location_name: 'AddObject', traits: {"smithy.api#documentation" => "<p>A new object to add to the governed table.</p>"}))
    WriteOperation.add_member(:delete_object, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteObjectInput, location_name: 'DeleteObject', traits: {"smithy.api#documentation" => "<p>An object to delete from the governed table.</p>"}))
    WriteOperation.type = Types::WriteOperation
    WriteOperationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WriteOperation)

    AWSLakeFormation = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lakeformation#AWSLakeFormation"
      service.name = "AWSLakeFormation"
      service.version = "2017-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "LakeFormation", "arnNamespace" => "lakeformation", "cloudFormationName" => "LakeFormation", "cloudTrailEventSource" => "lakeformation.amazonaws.com", "endpointPrefix" => "lakeformation"}, "aws.auth#sigv4" => {"name" => "lakeformation"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Lake Formation"}
      service.add_operation(:add_lf_tags_to_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#AddLFTagsToResource"
        operation.name = "AddLFTagsToResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddLFTagsToResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddLFTagsToResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/AddLFTagsToResource", "code" => 200}}
      end)
      service.add_operation(:assume_decorated_role_with_saml, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#AssumeDecoratedRoleWithSAML"
        operation.name = "AssumeDecoratedRoleWithSAML"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeDecoratedRoleWithSAMLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeDecoratedRoleWithSAMLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/AssumeDecoratedRoleWithSAML", "code" => 200}}
      end)
      service.add_operation(:batch_grant_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#BatchGrantPermissions"
        operation.name = "BatchGrantPermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGrantPermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGrantPermissionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGrantPermissions", "code" => 200}}
      end)
      service.add_operation(:batch_revoke_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#BatchRevokePermissions"
        operation.name = "BatchRevokePermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRevokePermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRevokePermissionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchRevokePermissions", "code" => 200}}
      end)
      service.add_operation(:cancel_transaction, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CancelTransaction"
        operation.name = "CancelTransaction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTransactionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTransactionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCommitInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCommittedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CancelTransaction", "code" => 200}}
      end)
      service.add_operation(:commit_transaction, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CommitTransaction"
        operation.name = "CommitTransaction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CommitTransactionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CommitTransactionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCanceledException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CommitTransaction", "code" => 200}}
      end)
      service.add_operation(:create_data_cells_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CreateDataCellsFilter"
        operation.name = "CreateDataCellsFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataCellsFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataCellsFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateDataCellsFilter", "code" => 200}}
      end)
      service.add_operation(:create_lf_tag, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CreateLFTag"
        operation.name = "CreateLFTag"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLFTagRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLFTagResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateLFTag", "code" => 200}}
      end)
      service.add_operation(:create_lf_tag_expression, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CreateLFTagExpression"
        operation.name = "CreateLFTagExpression"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLFTagExpressionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLFTagExpressionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateLFTagExpression", "code" => 200}}
      end)
      service.add_operation(:create_lake_formation_identity_center_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CreateLakeFormationIdentityCenterConfiguration"
        operation.name = "CreateLakeFormationIdentityCenterConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLakeFormationIdentityCenterConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLakeFormationIdentityCenterConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateLakeFormationIdentityCenterConfiguration", "code" => 200}}
      end)
      service.add_operation(:create_lake_formation_opt_in, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CreateLakeFormationOptIn"
        operation.name = "CreateLakeFormationOptIn"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLakeFormationOptInRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLakeFormationOptInResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateLakeFormationOptIn", "code" => 200}}
      end)
      service.add_operation(:delete_data_cells_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteDataCellsFilter"
        operation.name = "DeleteDataCellsFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataCellsFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataCellsFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteDataCellsFilter", "code" => 200}}
      end)
      service.add_operation(:delete_lf_tag, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteLFTag"
        operation.name = "DeleteLFTag"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLFTagRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLFTagResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLFTag", "code" => 200}}
      end)
      service.add_operation(:delete_lf_tag_expression, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteLFTagExpression"
        operation.name = "DeleteLFTagExpression"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLFTagExpressionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLFTagExpressionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLFTagExpression", "code" => 200}}
      end)
      service.add_operation(:delete_lake_formation_identity_center_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteLakeFormationIdentityCenterConfiguration"
        operation.name = "DeleteLakeFormationIdentityCenterConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLakeFormationIdentityCenterConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLakeFormationIdentityCenterConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLakeFormationIdentityCenterConfiguration", "code" => 200}}
      end)
      service.add_operation(:delete_lake_formation_opt_in, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteLakeFormationOptIn"
        operation.name = "DeleteLakeFormationOptIn"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLakeFormationOptInRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLakeFormationOptInResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLakeFormationOptIn", "code" => 200}}
      end)
      service.add_operation(:delete_objects_on_cancel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteObjectsOnCancel"
        operation.name = "DeleteObjectsOnCancel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteObjectsOnCancelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteObjectsOnCancelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCanceledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCommittedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteObjectsOnCancel", "code" => 200}}
      end)
      service.add_operation(:deregister_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeregisterResource"
        operation.name = "DeregisterResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeregisterResource", "code" => 200}}
      end)
      service.add_operation(:describe_lake_formation_identity_center_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DescribeLakeFormationIdentityCenterConfiguration"
        operation.name = "DescribeLakeFormationIdentityCenterConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLakeFormationIdentityCenterConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLakeFormationIdentityCenterConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeLakeFormationIdentityCenterConfiguration", "code" => 200}}
      end)
      service.add_operation(:describe_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DescribeResource"
        operation.name = "DescribeResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeResource", "code" => 200}}
      end)
      service.add_operation(:describe_transaction, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DescribeTransaction"
        operation.name = "DescribeTransaction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTransactionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTransactionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeTransaction", "code" => 200}}
      end)
      service.add_operation(:extend_transaction, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ExtendTransaction"
        operation.name = "ExtendTransaction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendTransactionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendTransactionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCanceledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCommitInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCommittedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ExtendTransaction", "code" => 200}}
      end)
      service.add_operation(:get_data_cells_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetDataCellsFilter"
        operation.name = "GetDataCellsFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataCellsFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataCellsFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDataCellsFilter", "code" => 200}}
      end)
      service.add_operation(:get_data_lake_principal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetDataLakePrincipal"
        operation.name = "GetDataLakePrincipal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakePrincipalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakePrincipalResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDataLakePrincipal", "code" => 200}}
      end)
      service.add_operation(:get_data_lake_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetDataLakeSettings"
        operation.name = "GetDataLakeSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDataLakeSettings", "code" => 200}}
      end)
      service.add_operation(:get_effective_permissions_for_path, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetEffectivePermissionsForPath"
        operation.name = "GetEffectivePermissionsForPath"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEffectivePermissionsForPathRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEffectivePermissionsForPathResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetEffectivePermissionsForPath", "code" => 200}}
        operation[:paginator] = Paginators::GetEffectivePermissionsForPath.new
      end)
      service.add_operation(:get_lf_tag, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetLFTag"
        operation.name = "GetLFTag"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLFTagRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLFTagResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetLFTag", "code" => 200}}
      end)
      service.add_operation(:get_lf_tag_expression, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetLFTagExpression"
        operation.name = "GetLFTagExpression"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLFTagExpressionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLFTagExpressionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetLFTagExpression", "code" => 200}}
      end)
      service.add_operation(:get_query_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetQueryState"
        operation.name = "GetQueryState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryStateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryStateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "query-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetQueryState", "code" => 200}}
      end)
      service.add_operation(:get_query_statistics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetQueryStatistics"
        operation.name = "GetQueryStatistics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryStatisticsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryStatisticsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticsNotReadyYetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "query-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetQueryStatistics", "code" => 200}}
      end)
      service.add_operation(:get_resource_lf_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetResourceLFTags"
        operation.name = "GetResourceLFTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceLFTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceLFTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GlueEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetResourceLFTags", "code" => 200}}
      end)
      service.add_operation(:get_table_objects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetTableObjects"
        operation.name = "GetTableObjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableObjectsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableObjectsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCanceledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCommittedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTableObjects", "code" => 200}}
        operation[:paginator] = Paginators::GetTableObjects.new
      end)
      service.add_operation(:get_temporary_glue_partition_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetTemporaryGluePartitionCredentials"
        operation.name = "GetTemporaryGluePartitionCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemporaryGluePartitionCredentialsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemporaryGluePartitionCredentialsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionTypeMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTemporaryGluePartitionCredentials", "code" => 200}}
      end)
      service.add_operation(:get_temporary_glue_table_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetTemporaryGlueTableCredentials"
        operation.name = "GetTemporaryGlueTableCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemporaryGlueTableCredentialsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemporaryGlueTableCredentialsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionTypeMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTemporaryGlueTableCredentials", "code" => 200}}
      end)
      service.add_operation(:get_work_unit_results, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetWorkUnitResults"
        operation.name = "GetWorkUnitResults"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkUnitResultsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkUnitResultsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetWorkUnitResults", "code" => 200}}
      end)
      service.add_operation(:get_work_units, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetWorkUnits"
        operation.name = "GetWorkUnits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkUnitsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkUnitsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WorkUnitsNotReadyYetException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "query-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetWorkUnits", "code" => 200}}
        operation[:paginator] = Paginators::GetWorkUnits.new
      end)
      service.add_operation(:grant_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GrantPermissions"
        operation.name = "GrantPermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GrantPermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GrantPermissionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GrantPermissions", "code" => 200}}
      end)
      service.add_operation(:list_data_cells_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListDataCellsFilter"
        operation.name = "ListDataCellsFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataCellsFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataCellsFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListDataCellsFilter", "code" => 200}}
        operation[:paginator] = Paginators::ListDataCellsFilter.new
      end)
      service.add_operation(:list_lf_tag_expressions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListLFTagExpressions"
        operation.name = "ListLFTagExpressions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLFTagExpressionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLFTagExpressionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLFTagExpressions", "code" => 200}}
        operation[:paginator] = Paginators::ListLFTagExpressions.new
      end)
      service.add_operation(:list_lf_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListLFTags"
        operation.name = "ListLFTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLFTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLFTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLFTags", "code" => 200}}
        operation[:paginator] = Paginators::ListLFTags.new
      end)
      service.add_operation(:list_lake_formation_opt_ins, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListLakeFormationOptIns"
        operation.name = "ListLakeFormationOptIns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLakeFormationOptInsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLakeFormationOptInsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLakeFormationOptIns", "code" => 200}}
        operation[:paginator] = Paginators::ListLakeFormationOptIns.new
      end)
      service.add_operation(:list_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListPermissions"
        operation.name = "ListPermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPermissions", "code" => 200}}
        operation[:paginator] = Paginators::ListPermissions.new
      end)
      service.add_operation(:list_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListResources"
        operation.name = "ListResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResources", "code" => 200}}
        operation[:paginator] = Paginators::ListResources.new
      end)
      service.add_operation(:list_table_storage_optimizers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListTableStorageOptimizers"
        operation.name = "ListTableStorageOptimizers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTableStorageOptimizersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTableStorageOptimizersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTableStorageOptimizers", "code" => 200}}
        operation[:paginator] = Paginators::ListTableStorageOptimizers.new
      end)
      service.add_operation(:list_transactions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListTransactions"
        operation.name = "ListTransactions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTransactionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTransactionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTransactions", "code" => 200}}
        operation[:paginator] = Paginators::ListTransactions.new
      end)
      service.add_operation(:put_data_lake_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#PutDataLakeSettings"
        operation.name = "PutDataLakeSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDataLakeSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDataLakeSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutDataLakeSettings", "code" => 200}}
      end)
      service.add_operation(:register_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#RegisterResource"
        operation.name = "RegisterResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/RegisterResource", "code" => 200}}
      end)
      service.add_operation(:remove_lf_tags_from_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#RemoveLFTagsFromResource"
        operation.name = "RemoveLFTagsFromResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveLFTagsFromResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveLFTagsFromResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GlueEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/RemoveLFTagsFromResource", "code" => 200}}
      end)
      service.add_operation(:revoke_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#RevokePermissions"
        operation.name = "RevokePermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokePermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokePermissionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/RevokePermissions", "code" => 200}}
      end)
      service.add_operation(:search_databases_by_lf_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#SearchDatabasesByLFTags"
        operation.name = "SearchDatabasesByLFTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchDatabasesByLFTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchDatabasesByLFTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GlueEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SearchDatabasesByLFTags", "code" => 200}}
        operation[:paginator] = Paginators::SearchDatabasesByLFTags.new
      end)
      service.add_operation(:search_tables_by_lf_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#SearchTablesByLFTags"
        operation.name = "SearchTablesByLFTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchTablesByLFTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchTablesByLFTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GlueEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SearchTablesByLFTags", "code" => 200}}
        operation[:paginator] = Paginators::SearchTablesByLFTags.new
      end)
      service.add_operation(:start_query_planning, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#StartQueryPlanning"
        operation.name = "StartQueryPlanning"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryPlanningRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryPlanningResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "query-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/StartQueryPlanning", "code" => 200}}
      end)
      service.add_operation(:start_transaction, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#StartTransaction"
        operation.name = "StartTransaction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTransactionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTransactionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartTransaction", "code" => 200}}
      end)
      service.add_operation(:update_data_cells_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateDataCellsFilter"
        operation.name = "UpdateDataCellsFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataCellsFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataCellsFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateDataCellsFilter", "code" => 200}}
      end)
      service.add_operation(:update_lf_tag, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateLFTag"
        operation.name = "UpdateLFTag"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLFTagRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLFTagResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateLFTag", "code" => 200}}
      end)
      service.add_operation(:update_lf_tag_expression, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateLFTagExpression"
        operation.name = "UpdateLFTagExpression"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLFTagExpressionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLFTagExpressionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateLFTagExpression", "code" => 200}}
      end)
      service.add_operation(:update_lake_formation_identity_center_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateLakeFormationIdentityCenterConfiguration"
        operation.name = "UpdateLakeFormationIdentityCenterConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLakeFormationIdentityCenterConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLakeFormationIdentityCenterConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateLakeFormationIdentityCenterConfiguration", "code" => 200}}
      end)
      service.add_operation(:update_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateResource"
        operation.name = "UpdateResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateResource", "code" => 200}}
      end)
      service.add_operation(:update_table_objects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateTableObjects"
        operation.name = "UpdateTableObjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableObjectsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableObjectsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCanceledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCommitInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCommittedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTableObjects", "code" => 200}}
      end)
      service.add_operation(:update_table_storage_optimizer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateTableStorageOptimizer"
        operation.name = "UpdateTableStorageOptimizer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableStorageOptimizerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableStorageOptimizerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTableStorageOptimizer", "code" => 200}}
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
