# frozen_string_literal: true

# This is generated code!

module Aws::LakeFormation
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessKeyIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#AccessKeyIdString", name: "AccessKeyIdString")
    AddLFTagsToResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#AddLFTagsToResourceRequest", name: "AddLFTagsToResourceRequest")
    AddLFTagsToResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#AddLFTagsToResourceResponse", name: "AddLFTagsToResourceResponse")
    AddObjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#AddObjectInput", name: "AddObjectInput")
    AdditionalContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lakeformation#AdditionalContextMap", name: "AdditionalContextMap")
    AllRowsWildcard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#AllRowsWildcard", name: "AllRowsWildcard")
    AlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#AlreadyExistsException", name: "AlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#ApplicationArn", name: "ApplicationArn")
    ApplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#ApplicationStatus", name: "ApplicationStatus")
    AssumeDecoratedRoleWithSAMLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#AssumeDecoratedRoleWithSAMLRequest", name: "AssumeDecoratedRoleWithSAMLRequest")
    AssumeDecoratedRoleWithSAMLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#AssumeDecoratedRoleWithSAMLResponse", name: "AssumeDecoratedRoleWithSAMLResponse")
    AuditContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#AuditContext", name: "AuditContext")
    AuditContextString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#AuditContextString", name: "AuditContextString", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    AuthorizedSessionTagValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#AuthorizedSessionTagValueList", name: "AuthorizedSessionTagValueList")
    BatchGrantPermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#BatchGrantPermissionsRequest", name: "BatchGrantPermissionsRequest")
    BatchGrantPermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#BatchGrantPermissionsResponse", name: "BatchGrantPermissionsResponse")
    BatchPermissionsFailureEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#BatchPermissionsFailureEntry", name: "BatchPermissionsFailureEntry")
    BatchPermissionsFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#BatchPermissionsFailureList", name: "BatchPermissionsFailureList")
    BatchPermissionsRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#BatchPermissionsRequestEntry", name: "BatchPermissionsRequestEntry")
    BatchPermissionsRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#BatchPermissionsRequestEntryList", name: "BatchPermissionsRequestEntryList")
    BatchRevokePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#BatchRevokePermissionsRequest", name: "BatchRevokePermissionsRequest")
    BatchRevokePermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#BatchRevokePermissionsResponse", name: "BatchRevokePermissionsResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lakeformation#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BooleanNullable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lakeformation#BooleanNullable", name: "BooleanNullable")
    CancelTransactionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CancelTransactionRequest", name: "CancelTransactionRequest")
    CancelTransactionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CancelTransactionResponse", name: "CancelTransactionResponse")
    CatalogIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#CatalogIdString", name: "CatalogIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    CatalogResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CatalogResource", name: "CatalogResource")
    ColumnLFTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ColumnLFTag", name: "ColumnLFTag")
    ColumnLFTagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#ColumnLFTagsList", name: "ColumnLFTagsList")
    ColumnNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#ColumnNames", name: "ColumnNames")
    ColumnWildcard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ColumnWildcard", name: "ColumnWildcard")
    CommitTransactionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CommitTransactionRequest", name: "CommitTransactionRequest")
    CommitTransactionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CommitTransactionResponse", name: "CommitTransactionResponse")
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#ComparisonOperator", name: "ComparisonOperator")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client"})
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#Condition", name: "Condition")
    ContextKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#ContextKey", name: "ContextKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ContextValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#ContextValue", name: "ContextValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CreateDataCellsFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CreateDataCellsFilterRequest", name: "CreateDataCellsFilterRequest")
    CreateDataCellsFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CreateDataCellsFilterResponse", name: "CreateDataCellsFilterResponse")
    CreateLFTagExpressionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CreateLFTagExpressionRequest", name: "CreateLFTagExpressionRequest")
    CreateLFTagExpressionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CreateLFTagExpressionResponse", name: "CreateLFTagExpressionResponse")
    CreateLFTagRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CreateLFTagRequest", name: "CreateLFTagRequest")
    CreateLFTagResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CreateLFTagResponse", name: "CreateLFTagResponse")
    CreateLakeFormationIdentityCenterConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CreateLakeFormationIdentityCenterConfigurationRequest", name: "CreateLakeFormationIdentityCenterConfigurationRequest")
    CreateLakeFormationIdentityCenterConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CreateLakeFormationIdentityCenterConfigurationResponse", name: "CreateLakeFormationIdentityCenterConfigurationResponse")
    CreateLakeFormationOptInRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CreateLakeFormationOptInRequest", name: "CreateLakeFormationOptInRequest")
    CreateLakeFormationOptInResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#CreateLakeFormationOptInResponse", name: "CreateLakeFormationOptInResponse")
    CredentialTimeoutDurationSecondInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lakeformation#CredentialTimeoutDurationSecondInteger", name: "CredentialTimeoutDurationSecondInteger", traits: {"smithy.api#range" => {"min" => 900, "max" => 43200}})
    DataCellsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DataCellsFilter", name: "DataCellsFilter")
    DataCellsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#DataCellsFilterList", name: "DataCellsFilterList")
    DataCellsFilterResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DataCellsFilterResource", name: "DataCellsFilterResource")
    DataLakePrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DataLakePrincipal", name: "DataLakePrincipal")
    DataLakePrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#DataLakePrincipalList", name: "DataLakePrincipalList", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    DataLakePrincipalString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#DataLakePrincipalString", name: "DataLakePrincipalString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DataLakeResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#DataLakeResourceType", name: "DataLakeResourceType")
    DataLakeSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DataLakeSettings", name: "DataLakeSettings")
    DataLocationResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DataLocationResource", name: "DataLocationResource")
    DatabaseLFTagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#DatabaseLFTagsList", name: "DatabaseLFTagsList")
    DatabaseResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DatabaseResource", name: "DatabaseResource")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lakeformation#DateTime", name: "DateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteDataCellsFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteDataCellsFilterRequest", name: "DeleteDataCellsFilterRequest")
    DeleteDataCellsFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteDataCellsFilterResponse", name: "DeleteDataCellsFilterResponse")
    DeleteLFTagExpressionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteLFTagExpressionRequest", name: "DeleteLFTagExpressionRequest")
    DeleteLFTagExpressionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteLFTagExpressionResponse", name: "DeleteLFTagExpressionResponse")
    DeleteLFTagRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteLFTagRequest", name: "DeleteLFTagRequest")
    DeleteLFTagResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteLFTagResponse", name: "DeleteLFTagResponse")
    DeleteLakeFormationIdentityCenterConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteLakeFormationIdentityCenterConfigurationRequest", name: "DeleteLakeFormationIdentityCenterConfigurationRequest")
    DeleteLakeFormationIdentityCenterConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteLakeFormationIdentityCenterConfigurationResponse", name: "DeleteLakeFormationIdentityCenterConfigurationResponse")
    DeleteLakeFormationOptInRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteLakeFormationOptInRequest", name: "DeleteLakeFormationOptInRequest")
    DeleteLakeFormationOptInResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteLakeFormationOptInResponse", name: "DeleteLakeFormationOptInResponse")
    DeleteObjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteObjectInput", name: "DeleteObjectInput")
    DeleteObjectsOnCancelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteObjectsOnCancelRequest", name: "DeleteObjectsOnCancelRequest")
    DeleteObjectsOnCancelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeleteObjectsOnCancelResponse", name: "DeleteObjectsOnCancelResponse")
    DeregisterResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeregisterResourceRequest", name: "DeregisterResourceRequest")
    DeregisterResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DeregisterResourceResponse", name: "DeregisterResourceResponse")
    DescribeLakeFormationIdentityCenterConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DescribeLakeFormationIdentityCenterConfigurationRequest", name: "DescribeLakeFormationIdentityCenterConfigurationRequest")
    DescribeLakeFormationIdentityCenterConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DescribeLakeFormationIdentityCenterConfigurationResponse", name: "DescribeLakeFormationIdentityCenterConfigurationResponse")
    DescribeResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DescribeResourceRequest", name: "DescribeResourceRequest")
    DescribeResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DescribeResourceResponse", name: "DescribeResourceResponse")
    DescribeTransactionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DescribeTransactionRequest", name: "DescribeTransactionRequest")
    DescribeTransactionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DescribeTransactionResponse", name: "DescribeTransactionResponse")
    DescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#DescriptionString", name: "DescriptionString", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    DetailsMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#DetailsMap", name: "DetailsMap")
    ETagString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#ETagString", name: "ETagString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{P}]*$"})
    EnableStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#EnableStatus", name: "EnableStatus")
    EntityNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#EntityNotFoundException", name: "EntityNotFoundException", traits: {"smithy.api#error" => "client"})
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ErrorDetail", name: "ErrorDetail")
    ErrorMessageString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#ErrorMessageString", name: "ErrorMessageString")
    ExecutionStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ExecutionStatistics", name: "ExecutionStatistics")
    ExpirationTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lakeformation#ExpirationTimestamp", name: "ExpirationTimestamp")
    ExpiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ExpiredException", name: "ExpiredException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    Expression = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#Expression", name: "Expression")
    ExpressionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#ExpressionString", name: "ExpressionString", traits: {"smithy.api#length" => {"min" => 0, "max" => 3000}})
    ExtendTransactionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ExtendTransactionRequest", name: "ExtendTransactionRequest")
    ExtendTransactionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ExtendTransactionResponse", name: "ExtendTransactionResponse")
    ExternalFilteringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ExternalFilteringConfiguration", name: "ExternalFilteringConfiguration")
    FieldNameString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#FieldNameString", name: "FieldNameString")
    FilterCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#FilterCondition", name: "FilterCondition")
    FilterConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#FilterConditionList", name: "FilterConditionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    GetDataCellsFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetDataCellsFilterRequest", name: "GetDataCellsFilterRequest")
    GetDataCellsFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetDataCellsFilterResponse", name: "GetDataCellsFilterResponse")
    GetDataLakePrincipalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetDataLakePrincipalRequest", name: "GetDataLakePrincipalRequest")
    GetDataLakePrincipalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetDataLakePrincipalResponse", name: "GetDataLakePrincipalResponse")
    GetDataLakeSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetDataLakeSettingsRequest", name: "GetDataLakeSettingsRequest")
    GetDataLakeSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetDataLakeSettingsResponse", name: "GetDataLakeSettingsResponse")
    GetEffectivePermissionsForPathRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetEffectivePermissionsForPathRequest", name: "GetEffectivePermissionsForPathRequest")
    GetEffectivePermissionsForPathResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetEffectivePermissionsForPathResponse", name: "GetEffectivePermissionsForPathResponse")
    GetLFTagExpressionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetLFTagExpressionRequest", name: "GetLFTagExpressionRequest")
    GetLFTagExpressionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetLFTagExpressionResponse", name: "GetLFTagExpressionResponse")
    GetLFTagRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetLFTagRequest", name: "GetLFTagRequest")
    GetLFTagResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetLFTagResponse", name: "GetLFTagResponse")
    GetQueryStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetQueryStateRequest", name: "GetQueryStateRequest")
    GetQueryStateRequestQueryIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#GetQueryStateRequestQueryIdString", name: "GetQueryStateRequestQueryIdString", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    GetQueryStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetQueryStateResponse", name: "GetQueryStateResponse")
    GetQueryStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetQueryStatisticsRequest", name: "GetQueryStatisticsRequest")
    GetQueryStatisticsRequestQueryIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#GetQueryStatisticsRequestQueryIdString", name: "GetQueryStatisticsRequestQueryIdString", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    GetQueryStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetQueryStatisticsResponse", name: "GetQueryStatisticsResponse")
    GetResourceLFTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetResourceLFTagsRequest", name: "GetResourceLFTagsRequest")
    GetResourceLFTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetResourceLFTagsResponse", name: "GetResourceLFTagsResponse")
    GetTableObjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetTableObjectsRequest", name: "GetTableObjectsRequest")
    GetTableObjectsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetTableObjectsResponse", name: "GetTableObjectsResponse")
    GetTemporaryGluePartitionCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetTemporaryGluePartitionCredentialsRequest", name: "GetTemporaryGluePartitionCredentialsRequest")
    GetTemporaryGluePartitionCredentialsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetTemporaryGluePartitionCredentialsResponse", name: "GetTemporaryGluePartitionCredentialsResponse")
    GetTemporaryGlueTableCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetTemporaryGlueTableCredentialsRequest", name: "GetTemporaryGlueTableCredentialsRequest")
    GetTemporaryGlueTableCredentialsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetTemporaryGlueTableCredentialsResponse", name: "GetTemporaryGlueTableCredentialsResponse")
    GetWorkUnitResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetWorkUnitResultsRequest", name: "GetWorkUnitResultsRequest")
    GetWorkUnitResultsRequestQueryIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#GetWorkUnitResultsRequestQueryIdString", name: "GetWorkUnitResultsRequestQueryIdString", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    GetWorkUnitResultsRequestWorkUnitIdLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lakeformation#GetWorkUnitResultsRequestWorkUnitIdLong", name: "GetWorkUnitResultsRequestWorkUnitIdLong", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    GetWorkUnitResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetWorkUnitResultsResponse", name: "GetWorkUnitResultsResponse")
    GetWorkUnitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetWorkUnitsRequest", name: "GetWorkUnitsRequest")
    GetWorkUnitsRequestQueryIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#GetWorkUnitsRequestQueryIdString", name: "GetWorkUnitsRequestQueryIdString", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    GetWorkUnitsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GetWorkUnitsResponse", name: "GetWorkUnitsResponse")
    GlueEncryptionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GlueEncryptionException", name: "GlueEncryptionException", traits: {"smithy.api#error" => "client"})
    GrantPermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GrantPermissionsRequest", name: "GrantPermissionsRequest")
    GrantPermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#GrantPermissionsResponse", name: "GrantPermissionsResponse")
    HashString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#HashString", name: "HashString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    IAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#IAMRoleArn", name: "IAMRoleArn", traits: {"smithy.api#pattern" => "^arn:aws:iam::[0-9]*:role/"})
    IAMSAMLProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#IAMSAMLProviderArn", name: "IAMSAMLProviderArn", traits: {"smithy.api#pattern" => "^arn:aws:iam::[0-9]*:saml-provider/"})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    IdentityCenterInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#IdentityCenterInstanceArn", name: "IdentityCenterInstanceArn")
    IdentityString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#IdentityString", name: "IdentityString")
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#InternalServiceException", name: "InternalServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KeyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#KeyString", name: "KeyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    LFTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#LFTag", name: "LFTag")
    LFTagError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#LFTagError", name: "LFTagError")
    LFTagErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#LFTagErrors", name: "LFTagErrors")
    LFTagExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#LFTagExpression", name: "LFTagExpression")
    LFTagExpressionResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#LFTagExpressionResource", name: "LFTagExpressionResource")
    LFTagExpressionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#LFTagExpressionsList", name: "LFTagExpressionsList")
    LFTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#LFTagKey", name: "LFTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@%]*)$"})
    LFTagKeyResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#LFTagKeyResource", name: "LFTagKeyResource")
    LFTagPair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#LFTagPair", name: "LFTagPair")
    LFTagPolicyResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#LFTagPolicyResource", name: "LFTagPolicyResource")
    LFTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#LFTagValue", name: "LFTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\*\\/=+\\-@%]*)$"})
    LFTagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#LFTagsList", name: "LFTagsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    LakeFormationOptInsInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#LakeFormationOptInsInfo", name: "LakeFormationOptInsInfo")
    LakeFormationOptInsInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#LakeFormationOptInsInfoList", name: "LakeFormationOptInsInfoList")
    LastModifiedTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lakeformation#LastModifiedTimestamp", name: "LastModifiedTimestamp")
    ListDataCellsFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListDataCellsFilterRequest", name: "ListDataCellsFilterRequest")
    ListDataCellsFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListDataCellsFilterResponse", name: "ListDataCellsFilterResponse")
    ListLFTagExpressionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListLFTagExpressionsRequest", name: "ListLFTagExpressionsRequest")
    ListLFTagExpressionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListLFTagExpressionsResponse", name: "ListLFTagExpressionsResponse")
    ListLFTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListLFTagsRequest", name: "ListLFTagsRequest")
    ListLFTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListLFTagsResponse", name: "ListLFTagsResponse")
    ListLakeFormationOptInsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListLakeFormationOptInsRequest", name: "ListLakeFormationOptInsRequest")
    ListLakeFormationOptInsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListLakeFormationOptInsResponse", name: "ListLakeFormationOptInsResponse")
    ListPermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListPermissionsRequest", name: "ListPermissionsRequest")
    ListPermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListPermissionsResponse", name: "ListPermissionsResponse")
    ListResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListResourcesRequest", name: "ListResourcesRequest")
    ListResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListResourcesResponse", name: "ListResourcesResponse")
    ListTableStorageOptimizersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListTableStorageOptimizersRequest", name: "ListTableStorageOptimizersRequest")
    ListTableStorageOptimizersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListTableStorageOptimizersResponse", name: "ListTableStorageOptimizersResponse")
    ListTransactionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListTransactionsRequest", name: "ListTransactionsRequest")
    ListTransactionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ListTransactionsResponse", name: "ListTransactionsResponse")
    MessageString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#MessageString", name: "MessageString")
    NameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#NameString", name: "NameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lakeformation#NullableBoolean", name: "NullableBoolean")
    NullableString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#NullableString", name: "NullableString")
    NumberOfBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lakeformation#NumberOfBytes", name: "NumberOfBytes", traits: {"smithy.api#default" => 0})
    NumberOfItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lakeformation#NumberOfItems", name: "NumberOfItems", traits: {"smithy.api#default" => 0})
    NumberOfMilliseconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lakeformation#NumberOfMilliseconds", name: "NumberOfMilliseconds", traits: {"smithy.api#default" => 0})
    ObjectSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lakeformation#ObjectSize", name: "ObjectSize", traits: {"smithy.api#default" => 0})
    OperationTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#OperationTimeoutException", name: "OperationTimeoutException", traits: {"smithy.api#error" => "client"})
    OptimizerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#OptimizerType", name: "OptimizerType")
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lakeformation#PageSize", name: "PageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lakeformation#ParametersMap", name: "ParametersMap")
    ParametersMapValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#ParametersMapValue", name: "ParametersMapValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 512000}})
    PartitionObjects = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#PartitionObjects", name: "PartitionObjects")
    PartitionValueList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#PartitionValueList", name: "PartitionValueList")
    PartitionValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#PartitionValueString", name: "PartitionValueString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PartitionValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#PartitionValuesList", name: "PartitionValuesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PartitionedTableObjectsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#PartitionedTableObjectsList", name: "PartitionedTableObjectsList")
    PathString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#PathString", name: "PathString")
    PathStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#PathStringList", name: "PathStringList")
    Permission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#Permission", name: "Permission")
    PermissionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#PermissionList", name: "PermissionList")
    PermissionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#PermissionType", name: "PermissionType")
    PermissionTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#PermissionTypeList", name: "PermissionTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PermissionTypeMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#PermissionTypeMismatchException", name: "PermissionTypeMismatchException", traits: {"smithy.api#error" => "client"})
    PlanningStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#PlanningStatistics", name: "PlanningStatistics")
    PredicateString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#PredicateString", name: "PredicateString", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    PrincipalPermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#PrincipalPermissions", name: "PrincipalPermissions")
    PrincipalPermissionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#PrincipalPermissionsList", name: "PrincipalPermissionsList")
    PrincipalResourcePermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#PrincipalResourcePermissions", name: "PrincipalResourcePermissions")
    PrincipalResourcePermissionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#PrincipalResourcePermissionsList", name: "PrincipalResourcePermissionsList")
    PutDataLakeSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#PutDataLakeSettingsRequest", name: "PutDataLakeSettingsRequest")
    PutDataLakeSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#PutDataLakeSettingsResponse", name: "PutDataLakeSettingsResponse")
    QueryIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#QueryIdString", name: "QueryIdString")
    QueryParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lakeformation#QueryParameterMap", name: "QueryParameterMap")
    QueryPlanningContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#QueryPlanningContext", name: "QueryPlanningContext")
    QueryPlanningContextDatabaseNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#QueryPlanningContextDatabaseNameString", name: "QueryPlanningContextDatabaseNameString", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    QuerySessionContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#QuerySessionContext", name: "QuerySessionContext")
    QueryStateString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#QueryStateString", name: "QueryStateString")
    RAMResourceShareArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#RAMResourceShareArn", name: "RAMResourceShareArn")
    RegisterResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#RegisterResourceRequest", name: "RegisterResourceRequest")
    RegisterResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#RegisterResourceResponse", name: "RegisterResourceResponse")
    RemoveLFTagsFromResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#RemoveLFTagsFromResourceRequest", name: "RemoveLFTagsFromResourceRequest")
    RemoveLFTagsFromResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#RemoveLFTagsFromResourceResponse", name: "RemoveLFTagsFromResourceResponse")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#Resource", name: "Resource")
    ResourceArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#ResourceArnString", name: "ResourceArnString")
    ResourceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ResourceInfo", name: "ResourceInfo")
    ResourceInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#ResourceInfoList", name: "ResourceInfoList")
    ResourceNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ResourceNotReadyException", name: "ResourceNotReadyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNumberLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ResourceNumberLimitExceededException", name: "ResourceNumberLimitExceededException", traits: {"smithy.api#error" => "client"})
    ResourceShareList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#ResourceShareList", name: "ResourceShareList")
    ResourceShareType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#ResourceShareType", name: "ResourceShareType")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#ResourceType", name: "ResourceType")
    Result = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#Result", name: "Result")
    ResultStream = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lakeformation#ResultStream", name: "ResultStream", traits: {"smithy.api#streaming" => {}})
    RevokePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#RevokePermissionsRequest", name: "RevokePermissionsRequest")
    RevokePermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#RevokePermissionsResponse", name: "RevokePermissionsResponse")
    RowFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#RowFilter", name: "RowFilter")
    SAMLAssertionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#SAMLAssertionString", name: "SAMLAssertionString", traits: {"smithy.api#length" => {"min" => 4, "max" => 100000}})
    ScopeTarget = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#ScopeTarget", name: "ScopeTarget")
    ScopeTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#ScopeTargets", name: "ScopeTargets")
    SearchDatabasesByLFTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#SearchDatabasesByLFTagsRequest", name: "SearchDatabasesByLFTagsRequest")
    SearchDatabasesByLFTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#SearchDatabasesByLFTagsResponse", name: "SearchDatabasesByLFTagsResponse")
    SearchPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lakeformation#SearchPageSize", name: "SearchPageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    SearchTablesByLFTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#SearchTablesByLFTagsRequest", name: "SearchTablesByLFTagsRequest")
    SearchTablesByLFTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#SearchTablesByLFTagsResponse", name: "SearchTablesByLFTagsResponse")
    SecretAccessKeyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#SecretAccessKeyString", name: "SecretAccessKeyString")
    SessionTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#SessionTokenString", name: "SessionTokenString")
    StartQueryPlanningRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#StartQueryPlanningRequest", name: "StartQueryPlanningRequest")
    StartQueryPlanningResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#StartQueryPlanningResponse", name: "StartQueryPlanningResponse")
    StartTransactionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#StartTransactionRequest", name: "StartTransactionRequest")
    StartTransactionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#StartTransactionResponse", name: "StartTransactionResponse")
    StatisticsNotReadyYetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#StatisticsNotReadyYetException", name: "StatisticsNotReadyYetException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    StorageOptimizer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#StorageOptimizer", name: "StorageOptimizer")
    StorageOptimizerConfig = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lakeformation#StorageOptimizerConfig", name: "StorageOptimizerConfig")
    StorageOptimizerConfigKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#StorageOptimizerConfigKey", name: "StorageOptimizerConfigKey")
    StorageOptimizerConfigMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lakeformation#StorageOptimizerConfigMap", name: "StorageOptimizerConfigMap")
    StorageOptimizerConfigValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#StorageOptimizerConfigValue", name: "StorageOptimizerConfigValue")
    StorageOptimizerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#StorageOptimizerList", name: "StorageOptimizerList")
    StringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#StringValue", name: "StringValue")
    StringValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#StringValueList", name: "StringValueList")
    SyntheticGetWorkUnitResultsRequestWorkUnitTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#SyntheticGetWorkUnitResultsRequestWorkUnitTokenString", name: "SyntheticGetWorkUnitResultsRequestWorkUnitTokenString", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    SyntheticStartQueryPlanningRequestQueryString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#SyntheticStartQueryPlanningRequestQueryString", name: "SyntheticStartQueryPlanningRequestQueryString", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    TableLFTagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#TableLFTagsList", name: "TableLFTagsList")
    TableObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#TableObject", name: "TableObject")
    TableObjectList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#TableObjectList", name: "TableObjectList")
    TableResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#TableResource", name: "TableResource")
    TableWildcard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#TableWildcard", name: "TableWildcard")
    TableWithColumnsResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#TableWithColumnsResource", name: "TableWithColumnsResource")
    TagValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#TagValueList", name: "TagValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TaggedDatabase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#TaggedDatabase", name: "TaggedDatabase")
    TaggedTable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#TaggedTable", name: "TaggedTable")
    ThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#ThrottledException", name: "ThrottledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lakeformation#Timestamp", name: "Timestamp")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#Token", name: "Token")
    TokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#TokenString", name: "TokenString", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    TransactionCanceledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#TransactionCanceledException", name: "TransactionCanceledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TransactionCommitInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#TransactionCommitInProgressException", name: "TransactionCommitInProgressException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TransactionCommittedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#TransactionCommittedException", name: "TransactionCommittedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TransactionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#TransactionDescription", name: "TransactionDescription")
    TransactionDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#TransactionDescriptionList", name: "TransactionDescriptionList")
    TransactionIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#TransactionIdString", name: "TransactionIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{P}]*$"})
    TransactionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#TransactionStatus", name: "TransactionStatus")
    TransactionStatusFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#TransactionStatusFilter", name: "TransactionStatusFilter")
    TransactionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lakeformation#TransactionType", name: "TransactionType")
    TrueFalseString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#TrueFalseString", name: "TrueFalseString", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    TrustedResourceOwners = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#TrustedResourceOwners", name: "TrustedResourceOwners")
    URI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#URI", name: "URI", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    UpdateDataCellsFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateDataCellsFilterRequest", name: "UpdateDataCellsFilterRequest")
    UpdateDataCellsFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateDataCellsFilterResponse", name: "UpdateDataCellsFilterResponse")
    UpdateLFTagExpressionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateLFTagExpressionRequest", name: "UpdateLFTagExpressionRequest")
    UpdateLFTagExpressionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateLFTagExpressionResponse", name: "UpdateLFTagExpressionResponse")
    UpdateLFTagRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateLFTagRequest", name: "UpdateLFTagRequest")
    UpdateLFTagResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateLFTagResponse", name: "UpdateLFTagResponse")
    UpdateLakeFormationIdentityCenterConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateLakeFormationIdentityCenterConfigurationRequest", name: "UpdateLakeFormationIdentityCenterConfigurationRequest")
    UpdateLakeFormationIdentityCenterConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateLakeFormationIdentityCenterConfigurationResponse", name: "UpdateLakeFormationIdentityCenterConfigurationResponse")
    UpdateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateResourceRequest", name: "UpdateResourceRequest")
    UpdateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateResourceResponse", name: "UpdateResourceResponse")
    UpdateTableObjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateTableObjectsRequest", name: "UpdateTableObjectsRequest")
    UpdateTableObjectsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateTableObjectsResponse", name: "UpdateTableObjectsResponse")
    UpdateTableStorageOptimizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateTableStorageOptimizerRequest", name: "UpdateTableStorageOptimizerRequest")
    UpdateTableStorageOptimizerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#UpdateTableStorageOptimizerResponse", name: "UpdateTableStorageOptimizerResponse")
    ValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#ValueString", name: "ValueString")
    ValueStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#ValueStringList", name: "ValueStringList", traits: {"smithy.api#length" => {"min" => 1}})
    VersionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#VersionString", name: "VersionString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    VirtualObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#VirtualObject", name: "VirtualObject")
    VirtualObjectList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#VirtualObjectList", name: "VirtualObjectList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WorkUnitIdLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lakeformation#WorkUnitIdLong", name: "WorkUnitIdLong", traits: {"smithy.api#default" => 0})
    WorkUnitRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#WorkUnitRange", name: "WorkUnitRange")
    WorkUnitRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#WorkUnitRangeList", name: "WorkUnitRangeList")
    WorkUnitTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lakeformation#WorkUnitTokenString", name: "WorkUnitTokenString")
    WorkUnitsNotReadyYetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#WorkUnitsNotReadyYetException", name: "WorkUnitsNotReadyYetException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    WriteOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lakeformation#WriteOperation", name: "WriteOperation")
    WriteOperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lakeformation#WriteOperationList", name: "WriteOperationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AddLFTagsToResourceRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    AddLFTagsToResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource", traits: {"smithy.api#required" => {}}))
    AddLFTagsToResourceRequest.add_member(:lf_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagsList, name: "LFTags", traits: {"smithy.api#required" => {}}))
    AddLFTagsToResourceRequest.type = Types::AddLFTagsToResourceRequest
    AddLFTagsToResourceResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagErrors, name: "Failures"))
    AddLFTagsToResourceResponse.type = Types::AddLFTagsToResourceResponse
    AddObjectInput.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "Uri", traits: {"smithy.api#required" => {}}))
    AddObjectInput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETagString, name: "ETag", traits: {"smithy.api#required" => {}}))
    AddObjectInput.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSize, name: "Size", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AddObjectInput.add_member(:partition_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionValuesList, name: "PartitionValues"))
    AddObjectInput.type = Types::AddObjectInput
    AdditionalContextMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKey, name: "key"))
    AdditionalContextMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextValue, name: "value"))
    AllRowsWildcard.type = Types::AllRowsWildcard
    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    AlreadyExistsException.type = Types::AlreadyExistsException
    ApplicationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ApplicationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AssumeDecoratedRoleWithSAMLRequest.add_member(:saml_assertion, ::Smithy::Schema::Shapes::MemberShape.new(target: SAMLAssertionString, name: "SAMLAssertion", traits: {"smithy.api#required" => {}}))
    AssumeDecoratedRoleWithSAMLRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    AssumeDecoratedRoleWithSAMLRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMSAMLProviderArn, name: "PrincipalArn", traits: {"smithy.api#required" => {}}))
    AssumeDecoratedRoleWithSAMLRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialTimeoutDurationSecondInteger, name: "DurationSeconds"))
    AssumeDecoratedRoleWithSAMLRequest.type = Types::AssumeDecoratedRoleWithSAMLRequest
    AssumeDecoratedRoleWithSAMLResponse.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdString, name: "AccessKeyId"))
    AssumeDecoratedRoleWithSAMLResponse.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretAccessKeyString, name: "SecretAccessKey"))
    AssumeDecoratedRoleWithSAMLResponse.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTokenString, name: "SessionToken"))
    AssumeDecoratedRoleWithSAMLResponse.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationTimestamp, name: "Expiration"))
    AssumeDecoratedRoleWithSAMLResponse.type = Types::AssumeDecoratedRoleWithSAMLResponse
    AuditContext.add_member(:additional_audit_context, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditContextString, name: "AdditionalAuditContext"))
    AuditContext.type = Types::AuditContext
    AuthorizedSessionTagValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "member"))
    BatchGrantPermissionsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    BatchGrantPermissionsRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPermissionsRequestEntryList, name: "Entries", traits: {"smithy.api#required" => {}}))
    BatchGrantPermissionsRequest.type = Types::BatchGrantPermissionsRequest
    BatchGrantPermissionsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPermissionsFailureList, name: "Failures"))
    BatchGrantPermissionsResponse.type = Types::BatchGrantPermissionsResponse
    BatchPermissionsFailureEntry.add_member(:request_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPermissionsRequestEntry, name: "RequestEntry"))
    BatchPermissionsFailureEntry.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "Error"))
    BatchPermissionsFailureEntry.type = Types::BatchPermissionsFailureEntry
    BatchPermissionsFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPermissionsFailureEntry, name: "member"))
    BatchPermissionsRequestEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Id", traits: {"smithy.api#required" => {}}))
    BatchPermissionsRequestEntry.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipal, name: "Principal"))
    BatchPermissionsRequestEntry.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource"))
    BatchPermissionsRequestEntry.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "Permissions"))
    BatchPermissionsRequestEntry.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "Condition"))
    BatchPermissionsRequestEntry.add_member(:permissions_with_grant_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "PermissionsWithGrantOption"))
    BatchPermissionsRequestEntry.type = Types::BatchPermissionsRequestEntry
    BatchPermissionsRequestEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPermissionsRequestEntry, name: "member"))
    BatchRevokePermissionsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    BatchRevokePermissionsRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPermissionsRequestEntryList, name: "Entries", traits: {"smithy.api#required" => {}}))
    BatchRevokePermissionsRequest.type = Types::BatchRevokePermissionsRequest
    BatchRevokePermissionsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPermissionsFailureList, name: "Failures"))
    BatchRevokePermissionsResponse.type = Types::BatchRevokePermissionsResponse
    CancelTransactionRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionIdString, name: "TransactionId", traits: {"smithy.api#required" => {}}))
    CancelTransactionRequest.type = Types::CancelTransactionRequest
    CancelTransactionResponse.type = Types::CancelTransactionResponse
    CatalogResource.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "Id"))
    CatalogResource.type = Types::CatalogResource
    ColumnLFTag.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name"))
    ColumnLFTag.add_member(:lf_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagsList, name: "LFTags"))
    ColumnLFTag.type = Types::ColumnLFTag
    ColumnLFTagsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnLFTag, name: "member"))
    ColumnNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "member"))
    ColumnWildcard.add_member(:excluded_column_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnNames, name: "ExcludedColumnNames"))
    ColumnWildcard.type = Types::ColumnWildcard
    CommitTransactionRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionIdString, name: "TransactionId", traits: {"smithy.api#required" => {}}))
    CommitTransactionRequest.type = Types::CommitTransactionRequest
    CommitTransactionResponse.add_member(:transaction_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionStatus, name: "TransactionStatus"))
    CommitTransactionResponse.type = Types::CommitTransactionResponse
    ComparisonOperator.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQ", traits: {"smithy.api#enumValue" => "EQ"}))
    ComparisonOperator.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NE", traits: {"smithy.api#enumValue" => "NE"}))
    ComparisonOperator.add_member(:le, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LE", traits: {"smithy.api#enumValue" => "LE"}))
    ComparisonOperator.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    ComparisonOperator.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    ComparisonOperator.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    ComparisonOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    ComparisonOperator.add_member(:not_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CONTAINS", traits: {"smithy.api#enumValue" => "NOT_CONTAINS"}))
    ComparisonOperator.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    ComparisonOperator.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN", traits: {"smithy.api#enumValue" => "IN"}))
    ComparisonOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    Condition.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionString, name: "Expression"))
    Condition.type = Types::Condition
    CreateDataCellsFilterRequest.add_member(:table_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCellsFilter, name: "TableData", traits: {"smithy.api#required" => {}}))
    CreateDataCellsFilterRequest.type = Types::CreateDataCellsFilterRequest
    CreateDataCellsFilterResponse.type = Types::CreateDataCellsFilterResponse
    CreateLFTagExpressionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateLFTagExpressionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    CreateLFTagExpressionRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    CreateLFTagExpressionRequest.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#required" => {}}))
    CreateLFTagExpressionRequest.type = Types::CreateLFTagExpressionRequest
    CreateLFTagExpressionResponse.type = Types::CreateLFTagExpressionResponse
    CreateLFTagRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    CreateLFTagRequest.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagKey, name: "TagKey", traits: {"smithy.api#required" => {}}))
    CreateLFTagRequest.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues", traits: {"smithy.api#required" => {}}))
    CreateLFTagRequest.type = Types::CreateLFTagRequest
    CreateLFTagResponse.type = Types::CreateLFTagResponse
    CreateLakeFormationIdentityCenterConfigurationRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    CreateLakeFormationIdentityCenterConfigurationRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "InstanceArn"))
    CreateLakeFormationIdentityCenterConfigurationRequest.add_member(:external_filtering, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalFilteringConfiguration, name: "ExternalFiltering"))
    CreateLakeFormationIdentityCenterConfigurationRequest.add_member(:share_recipients, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipalList, name: "ShareRecipients"))
    CreateLakeFormationIdentityCenterConfigurationRequest.type = Types::CreateLakeFormationIdentityCenterConfigurationRequest
    CreateLakeFormationIdentityCenterConfigurationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn"))
    CreateLakeFormationIdentityCenterConfigurationResponse.type = Types::CreateLakeFormationIdentityCenterConfigurationResponse
    CreateLakeFormationOptInRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipal, name: "Principal", traits: {"smithy.api#required" => {}}))
    CreateLakeFormationOptInRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource", traits: {"smithy.api#required" => {}}))
    CreateLakeFormationOptInRequest.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "Condition"))
    CreateLakeFormationOptInRequest.type = Types::CreateLakeFormationOptInRequest
    CreateLakeFormationOptInResponse.type = Types::CreateLakeFormationOptInResponse
    DataCellsFilter.add_member(:table_catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "TableCatalogId", traits: {"smithy.api#required" => {}}))
    DataCellsFilter.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    DataCellsFilter.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "TableName", traits: {"smithy.api#required" => {}}))
    DataCellsFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    DataCellsFilter.add_member(:row_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: RowFilter, name: "RowFilter"))
    DataCellsFilter.add_member(:column_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnNames, name: "ColumnNames"))
    DataCellsFilter.add_member(:column_wildcard, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnWildcard, name: "ColumnWildcard"))
    DataCellsFilter.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionString, name: "VersionId"))
    DataCellsFilter.type = Types::DataCellsFilter
    DataCellsFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCellsFilter, name: "member"))
    DataCellsFilterResource.add_member(:table_catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "TableCatalogId"))
    DataCellsFilterResource.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName"))
    DataCellsFilterResource.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "TableName"))
    DataCellsFilterResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name"))
    DataCellsFilterResource.type = Types::DataCellsFilterResource
    DataLakePrincipal.add_member(:data_lake_principal_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipalString, name: "DataLakePrincipalIdentifier"))
    DataLakePrincipal.type = Types::DataLakePrincipal
    DataLakePrincipalList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipal, name: "member"))
    DataLakeResourceType.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CATALOG", traits: {"smithy.api#enumValue" => "CATALOG"}))
    DataLakeResourceType.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE", traits: {"smithy.api#enumValue" => "DATABASE"}))
    DataLakeResourceType.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE", traits: {"smithy.api#enumValue" => "TABLE"}))
    DataLakeResourceType.add_member(:data_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_LOCATION", traits: {"smithy.api#enumValue" => "DATA_LOCATION"}))
    DataLakeResourceType.add_member(:lf_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LF_TAG", traits: {"smithy.api#enumValue" => "LF_TAG"}))
    DataLakeResourceType.add_member(:lf_tag_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LF_TAG_POLICY", traits: {"smithy.api#enumValue" => "LF_TAG_POLICY"}))
    DataLakeResourceType.add_member(:lf_tag_policy_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LF_TAG_POLICY_DATABASE", traits: {"smithy.api#enumValue" => "LF_TAG_POLICY_DATABASE"}))
    DataLakeResourceType.add_member(:lf_tag_policy_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LF_TAG_POLICY_TABLE", traits: {"smithy.api#enumValue" => "LF_TAG_POLICY_TABLE"}))
    DataLakeResourceType.add_member(:lf_named_tag_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LF_NAMED_TAG_EXPRESSION", traits: {"smithy.api#enumValue" => "LF_NAMED_TAG_EXPRESSION"}))
    DataLakeSettings.add_member(:data_lake_admins, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipalList, name: "DataLakeAdmins"))
    DataLakeSettings.add_member(:read_only_admins, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipalList, name: "ReadOnlyAdmins"))
    DataLakeSettings.add_member(:create_database_default_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalPermissionsList, name: "CreateDatabaseDefaultPermissions"))
    DataLakeSettings.add_member(:create_table_default_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalPermissionsList, name: "CreateTableDefaultPermissions"))
    DataLakeSettings.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "Parameters"))
    DataLakeSettings.add_member(:trusted_resource_owners, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedResourceOwners, name: "TrustedResourceOwners"))
    DataLakeSettings.add_member(:allow_external_data_filtering, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "AllowExternalDataFiltering"))
    DataLakeSettings.add_member(:allow_full_table_external_data_access, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "AllowFullTableExternalDataAccess"))
    DataLakeSettings.add_member(:external_data_filtering_allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipalList, name: "ExternalDataFilteringAllowList"))
    DataLakeSettings.add_member(:authorized_session_tag_value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizedSessionTagValueList, name: "AuthorizedSessionTagValueList"))
    DataLakeSettings.type = Types::DataLakeSettings
    DataLocationResource.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    DataLocationResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DataLocationResource.type = Types::DataLocationResource
    DatabaseLFTagsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggedDatabase, name: "member"))
    DatabaseResource.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    DatabaseResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    DatabaseResource.type = Types::DatabaseResource
    DeleteDataCellsFilterRequest.add_member(:table_catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "TableCatalogId"))
    DeleteDataCellsFilterRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName"))
    DeleteDataCellsFilterRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "TableName"))
    DeleteDataCellsFilterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name"))
    DeleteDataCellsFilterRequest.type = Types::DeleteDataCellsFilterRequest
    DeleteDataCellsFilterResponse.type = Types::DeleteDataCellsFilterResponse
    DeleteLFTagExpressionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteLFTagExpressionRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    DeleteLFTagExpressionRequest.type = Types::DeleteLFTagExpressionRequest
    DeleteLFTagExpressionResponse.type = Types::DeleteLFTagExpressionResponse
    DeleteLFTagRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    DeleteLFTagRequest.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagKey, name: "TagKey", traits: {"smithy.api#required" => {}}))
    DeleteLFTagRequest.type = Types::DeleteLFTagRequest
    DeleteLFTagResponse.type = Types::DeleteLFTagResponse
    DeleteLakeFormationIdentityCenterConfigurationRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    DeleteLakeFormationIdentityCenterConfigurationRequest.type = Types::DeleteLakeFormationIdentityCenterConfigurationRequest
    DeleteLakeFormationIdentityCenterConfigurationResponse.type = Types::DeleteLakeFormationIdentityCenterConfigurationResponse
    DeleteLakeFormationOptInRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipal, name: "Principal", traits: {"smithy.api#required" => {}}))
    DeleteLakeFormationOptInRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource", traits: {"smithy.api#required" => {}}))
    DeleteLakeFormationOptInRequest.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "Condition"))
    DeleteLakeFormationOptInRequest.type = Types::DeleteLakeFormationOptInRequest
    DeleteLakeFormationOptInResponse.type = Types::DeleteLakeFormationOptInResponse
    DeleteObjectInput.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "Uri", traits: {"smithy.api#required" => {}}))
    DeleteObjectInput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETagString, name: "ETag"))
    DeleteObjectInput.add_member(:partition_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionValuesList, name: "PartitionValues"))
    DeleteObjectInput.type = Types::DeleteObjectInput
    DeleteObjectsOnCancelRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    DeleteObjectsOnCancelRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    DeleteObjectsOnCancelRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "TableName", traits: {"smithy.api#required" => {}}))
    DeleteObjectsOnCancelRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionIdString, name: "TransactionId", traits: {"smithy.api#required" => {}}))
    DeleteObjectsOnCancelRequest.add_member(:objects, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualObjectList, name: "Objects", traits: {"smithy.api#required" => {}}))
    DeleteObjectsOnCancelRequest.type = Types::DeleteObjectsOnCancelRequest
    DeleteObjectsOnCancelResponse.type = Types::DeleteObjectsOnCancelResponse
    DeregisterResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeregisterResourceRequest.type = Types::DeregisterResourceRequest
    DeregisterResourceResponse.type = Types::DeregisterResourceResponse
    DescribeLakeFormationIdentityCenterConfigurationRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    DescribeLakeFormationIdentityCenterConfigurationRequest.type = Types::DescribeLakeFormationIdentityCenterConfigurationRequest
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "InstanceArn"))
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn"))
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:external_filtering, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalFilteringConfiguration, name: "ExternalFiltering"))
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:share_recipients, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipalList, name: "ShareRecipients"))
    DescribeLakeFormationIdentityCenterConfigurationResponse.add_member(:resource_share, ::Smithy::Schema::Shapes::MemberShape.new(target: RAMResourceShareArn, name: "ResourceShare"))
    DescribeLakeFormationIdentityCenterConfigurationResponse.type = Types::DescribeLakeFormationIdentityCenterConfigurationResponse
    DescribeResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DescribeResourceRequest.type = Types::DescribeResourceRequest
    DescribeResourceResponse.add_member(:resource_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceInfo, name: "ResourceInfo"))
    DescribeResourceResponse.type = Types::DescribeResourceResponse
    DescribeTransactionRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionIdString, name: "TransactionId", traits: {"smithy.api#required" => {}}))
    DescribeTransactionRequest.type = Types::DescribeTransactionRequest
    DescribeTransactionResponse.add_member(:transaction_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionDescription, name: "TransactionDescription"))
    DescribeTransactionResponse.type = Types::DescribeTransactionResponse
    DetailsMap.add_member(:resource_share, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceShareList, name: "ResourceShare"))
    DetailsMap.type = Types::DetailsMap
    EnableStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EnableStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EntityNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    EntityNotFoundException.type = Types::EntityNotFoundException
    ErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "ErrorCode"))
    ErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "ErrorMessage"))
    ErrorDetail.type = Types::ErrorDetail
    ExecutionStatistics.add_member(:average_execution_time_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfMilliseconds, name: "AverageExecutionTimeMillis", traits: {"smithy.api#default" => 0}))
    ExecutionStatistics.add_member(:data_scanned_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfBytes, name: "DataScannedBytes", traits: {"smithy.api#default" => 0}))
    ExecutionStatistics.add_member(:work_units_executed_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfItems, name: "WorkUnitsExecutedCount", traits: {"smithy.api#default" => 0}))
    ExecutionStatistics.type = Types::ExecutionStatistics
    ExpiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    ExpiredException.type = Types::ExpiredException
    Expression.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTag, name: "member"))
    ExtendTransactionRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionIdString, name: "TransactionId"))
    ExtendTransactionRequest.type = Types::ExtendTransactionRequest
    ExtendTransactionResponse.type = Types::ExtendTransactionResponse
    ExternalFilteringConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ExternalFilteringConfiguration.add_member(:authorized_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTargets, name: "AuthorizedTargets", traits: {"smithy.api#required" => {}}))
    ExternalFilteringConfiguration.type = Types::ExternalFilteringConfiguration
    FieldNameString.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ARN", traits: {"smithy.api#enumValue" => "RESOURCE_ARN"}))
    FieldNameString.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE_ARN", traits: {"smithy.api#enumValue" => "ROLE_ARN"}))
    FieldNameString.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_MODIFIED", traits: {"smithy.api#enumValue" => "LAST_MODIFIED"}))
    FilterCondition.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameString, name: "Field"))
    FilterCondition.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "ComparisonOperator"))
    FilterCondition.add_member(:string_value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueList, name: "StringValueList"))
    FilterCondition.type = Types::FilterCondition
    FilterConditionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCondition, name: "member"))
    GetDataCellsFilterRequest.add_member(:table_catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "TableCatalogId", traits: {"smithy.api#required" => {}}))
    GetDataCellsFilterRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    GetDataCellsFilterRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "TableName", traits: {"smithy.api#required" => {}}))
    GetDataCellsFilterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    GetDataCellsFilterRequest.type = Types::GetDataCellsFilterRequest
    GetDataCellsFilterResponse.add_member(:data_cells_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCellsFilter, name: "DataCellsFilter"))
    GetDataCellsFilterResponse.type = Types::GetDataCellsFilterResponse
    GetDataLakePrincipalRequest.type = Types::GetDataLakePrincipalRequest
    GetDataLakePrincipalResponse.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityString, name: "Identity"))
    GetDataLakePrincipalResponse.type = Types::GetDataLakePrincipalResponse
    GetDataLakeSettingsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    GetDataLakeSettingsRequest.type = Types::GetDataLakeSettingsRequest
    GetDataLakeSettingsResponse.add_member(:data_lake_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeSettings, name: "DataLakeSettings"))
    GetDataLakeSettingsResponse.type = Types::GetDataLakeSettingsResponse
    GetEffectivePermissionsForPathRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    GetEffectivePermissionsForPathRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetEffectivePermissionsForPathRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetEffectivePermissionsForPathRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    GetEffectivePermissionsForPathRequest.type = Types::GetEffectivePermissionsForPathRequest
    GetEffectivePermissionsForPathResponse.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalResourcePermissionsList, name: "Permissions"))
    GetEffectivePermissionsForPathResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetEffectivePermissionsForPathResponse.type = Types::GetEffectivePermissionsForPathResponse
    GetLFTagExpressionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    GetLFTagExpressionRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    GetLFTagExpressionRequest.type = Types::GetLFTagExpressionRequest
    GetLFTagExpressionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name"))
    GetLFTagExpressionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    GetLFTagExpressionResponse.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    GetLFTagExpressionResponse.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression"))
    GetLFTagExpressionResponse.type = Types::GetLFTagExpressionResponse
    GetLFTagRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    GetLFTagRequest.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagKey, name: "TagKey", traits: {"smithy.api#required" => {}}))
    GetLFTagRequest.type = Types::GetLFTagRequest
    GetLFTagResponse.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    GetLFTagResponse.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagKey, name: "TagKey"))
    GetLFTagResponse.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    GetLFTagResponse.type = Types::GetLFTagResponse
    GetQueryStateRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GetQueryStateRequestQueryIdString, name: "QueryId", traits: {"smithy.api#required" => {}}))
    GetQueryStateRequest.type = Types::GetQueryStateRequest
    GetQueryStateResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageString, name: "Error"))
    GetQueryStateResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStateString, name: "State", traits: {"smithy.api#required" => {}}))
    GetQueryStateResponse.type = Types::GetQueryStateResponse
    GetQueryStatisticsRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GetQueryStatisticsRequestQueryIdString, name: "QueryId", traits: {"smithy.api#required" => {}}))
    GetQueryStatisticsRequest.type = Types::GetQueryStatisticsRequest
    GetQueryStatisticsResponse.add_member(:execution_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatistics, name: "ExecutionStatistics"))
    GetQueryStatisticsResponse.add_member(:planning_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: PlanningStatistics, name: "PlanningStatistics"))
    GetQueryStatisticsResponse.add_member(:query_submission_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "QuerySubmissionTime"))
    GetQueryStatisticsResponse.type = Types::GetQueryStatisticsResponse
    GetResourceLFTagsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    GetResourceLFTagsRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource", traits: {"smithy.api#required" => {}}))
    GetResourceLFTagsRequest.add_member(:show_assigned_lf_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanNullable, name: "ShowAssignedLFTags"))
    GetResourceLFTagsRequest.type = Types::GetResourceLFTagsRequest
    GetResourceLFTagsResponse.add_member(:lf_tag_on_database, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagsList, name: "LFTagOnDatabase"))
    GetResourceLFTagsResponse.add_member(:lf_tags_on_table, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagsList, name: "LFTagsOnTable"))
    GetResourceLFTagsResponse.add_member(:lf_tags_on_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnLFTagsList, name: "LFTagsOnColumns"))
    GetResourceLFTagsResponse.type = Types::GetResourceLFTagsResponse
    GetTableObjectsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    GetTableObjectsRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    GetTableObjectsRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "TableName", traits: {"smithy.api#required" => {}}))
    GetTableObjectsRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionIdString, name: "TransactionId"))
    GetTableObjectsRequest.add_member(:query_as_of_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "QueryAsOfTime"))
    GetTableObjectsRequest.add_member(:partition_predicate, ::Smithy::Schema::Shapes::MemberShape.new(target: PredicateString, name: "PartitionPredicate"))
    GetTableObjectsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    GetTableObjectsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenString, name: "NextToken"))
    GetTableObjectsRequest.type = Types::GetTableObjectsRequest
    GetTableObjectsResponse.add_member(:objects, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionedTableObjectsList, name: "Objects"))
    GetTableObjectsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenString, name: "NextToken"))
    GetTableObjectsResponse.type = Types::GetTableObjectsResponse
    GetTemporaryGluePartitionCredentialsRequest.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "TableArn", traits: {"smithy.api#required" => {}}))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:partition, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionValueList, name: "Partition", traits: {"smithy.api#required" => {}}))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "Permissions"))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialTimeoutDurationSecondInteger, name: "DurationSeconds"))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:audit_context, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditContext, name: "AuditContext"))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:supported_permission_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionTypeList, name: "SupportedPermissionTypes"))
    GetTemporaryGluePartitionCredentialsRequest.type = Types::GetTemporaryGluePartitionCredentialsRequest
    GetTemporaryGluePartitionCredentialsResponse.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdString, name: "AccessKeyId"))
    GetTemporaryGluePartitionCredentialsResponse.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretAccessKeyString, name: "SecretAccessKey"))
    GetTemporaryGluePartitionCredentialsResponse.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTokenString, name: "SessionToken"))
    GetTemporaryGluePartitionCredentialsResponse.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationTimestamp, name: "Expiration"))
    GetTemporaryGluePartitionCredentialsResponse.type = Types::GetTemporaryGluePartitionCredentialsResponse
    GetTemporaryGlueTableCredentialsRequest.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "TableArn", traits: {"smithy.api#required" => {}}))
    GetTemporaryGlueTableCredentialsRequest.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "Permissions"))
    GetTemporaryGlueTableCredentialsRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialTimeoutDurationSecondInteger, name: "DurationSeconds"))
    GetTemporaryGlueTableCredentialsRequest.add_member(:audit_context, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditContext, name: "AuditContext"))
    GetTemporaryGlueTableCredentialsRequest.add_member(:supported_permission_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionTypeList, name: "SupportedPermissionTypes"))
    GetTemporaryGlueTableCredentialsRequest.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathString, name: "S3Path"))
    GetTemporaryGlueTableCredentialsRequest.add_member(:query_session_context, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySessionContext, name: "QuerySessionContext"))
    GetTemporaryGlueTableCredentialsRequest.type = Types::GetTemporaryGlueTableCredentialsRequest
    GetTemporaryGlueTableCredentialsResponse.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdString, name: "AccessKeyId"))
    GetTemporaryGlueTableCredentialsResponse.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretAccessKeyString, name: "SecretAccessKey"))
    GetTemporaryGlueTableCredentialsResponse.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTokenString, name: "SessionToken"))
    GetTemporaryGlueTableCredentialsResponse.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationTimestamp, name: "Expiration"))
    GetTemporaryGlueTableCredentialsResponse.add_member(:vended_s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathStringList, name: "VendedS3Path"))
    GetTemporaryGlueTableCredentialsResponse.type = Types::GetTemporaryGlueTableCredentialsResponse
    GetWorkUnitResultsRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GetWorkUnitResultsRequestQueryIdString, name: "QueryId", traits: {"smithy.api#required" => {}}))
    GetWorkUnitResultsRequest.add_member(:work_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GetWorkUnitResultsRequestWorkUnitIdLong, name: "WorkUnitId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetWorkUnitResultsRequest.add_member(:work_unit_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SyntheticGetWorkUnitResultsRequestWorkUnitTokenString, name: "WorkUnitToken", traits: {"smithy.api#required" => {}}))
    GetWorkUnitResultsRequest.type = Types::GetWorkUnitResultsRequest
    GetWorkUnitResultsResponse.add_member(:result_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultStream, name: "ResultStream", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetWorkUnitResultsResponse[:http_payload] = :result_stream
    GetWorkUnitResultsResponse[:http_payload_member] = GetWorkUnitResultsResponse.member(:result_stream)
    GetWorkUnitResultsResponse.type = Types::GetWorkUnitResultsResponse
    GetWorkUnitsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetWorkUnitsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "PageSize"))
    GetWorkUnitsRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GetWorkUnitsRequestQueryIdString, name: "QueryId", traits: {"smithy.api#required" => {}}))
    GetWorkUnitsRequest.type = Types::GetWorkUnitsRequest
    GetWorkUnitsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetWorkUnitsResponse.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryIdString, name: "QueryId", traits: {"smithy.api#required" => {}}))
    GetWorkUnitsResponse.add_member(:work_unit_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkUnitRangeList, name: "WorkUnitRanges", traits: {"smithy.api#required" => {}}))
    GetWorkUnitsResponse.type = Types::GetWorkUnitsResponse
    GlueEncryptionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    GlueEncryptionException.type = Types::GlueEncryptionException
    GrantPermissionsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    GrantPermissionsRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipal, name: "Principal", traits: {"smithy.api#required" => {}}))
    GrantPermissionsRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource", traits: {"smithy.api#required" => {}}))
    GrantPermissionsRequest.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "Permissions", traits: {"smithy.api#required" => {}}))
    GrantPermissionsRequest.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "Condition"))
    GrantPermissionsRequest.add_member(:permissions_with_grant_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "PermissionsWithGrantOption"))
    GrantPermissionsRequest.type = Types::GrantPermissionsRequest
    GrantPermissionsResponse.type = Types::GrantPermissionsResponse
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    InternalServiceException.type = Types::InternalServiceException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    InvalidInputException.type = Types::InvalidInputException
    LFTag.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagKey, name: "TagKey", traits: {"smithy.api#required" => {}}))
    LFTag.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues", traits: {"smithy.api#required" => {}}))
    LFTag.type = Types::LFTag
    LFTagError.add_member(:lf_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagPair, name: "LFTag"))
    LFTagError.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "Error"))
    LFTagError.type = Types::LFTagError
    LFTagErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagError, name: "member"))
    LFTagExpression.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name"))
    LFTagExpression.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    LFTagExpression.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    LFTagExpression.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression"))
    LFTagExpression.type = Types::LFTagExpression
    LFTagExpressionResource.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    LFTagExpressionResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    LFTagExpressionResource.type = Types::LFTagExpressionResource
    LFTagExpressionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagExpression, name: "member"))
    LFTagKeyResource.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    LFTagKeyResource.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "TagKey", traits: {"smithy.api#required" => {}}))
    LFTagKeyResource.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues", traits: {"smithy.api#required" => {}}))
    LFTagKeyResource.type = Types::LFTagKeyResource
    LFTagPair.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    LFTagPair.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagKey, name: "TagKey", traits: {"smithy.api#required" => {}}))
    LFTagPair.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues", traits: {"smithy.api#required" => {}}))
    LFTagPair.type = Types::LFTagPair
    LFTagPolicyResource.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    LFTagPolicyResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    LFTagPolicyResource.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => []}))
    LFTagPolicyResource.add_member(:expression_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "ExpressionName"))
    LFTagPolicyResource.type = Types::LFTagPolicyResource
    LFTagsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagPair, name: "member"))
    LakeFormationOptInsInfo.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource"))
    LakeFormationOptInsInfo.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipal, name: "Principal"))
    LakeFormationOptInsInfo.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "Condition"))
    LakeFormationOptInsInfo.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedTimestamp, name: "LastModified"))
    LakeFormationOptInsInfo.add_member(:last_updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "LastUpdatedBy"))
    LakeFormationOptInsInfo.type = Types::LakeFormationOptInsInfo
    LakeFormationOptInsInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LakeFormationOptInsInfo, name: "member"))
    ListDataCellsFilterRequest.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: TableResource, name: "Table"))
    ListDataCellsFilterRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListDataCellsFilterRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    ListDataCellsFilterRequest.type = Types::ListDataCellsFilterRequest
    ListDataCellsFilterResponse.add_member(:data_cells_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCellsFilterList, name: "DataCellsFilters"))
    ListDataCellsFilterResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListDataCellsFilterResponse.type = Types::ListDataCellsFilterResponse
    ListLFTagExpressionsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    ListLFTagExpressionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    ListLFTagExpressionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListLFTagExpressionsRequest.type = Types::ListLFTagExpressionsRequest
    ListLFTagExpressionsResponse.add_member(:lf_tag_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagExpressionsList, name: "LFTagExpressions"))
    ListLFTagExpressionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListLFTagExpressionsResponse.type = Types::ListLFTagExpressionsResponse
    ListLFTagsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    ListLFTagsRequest.add_member(:resource_share_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceShareType, name: "ResourceShareType"))
    ListLFTagsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    ListLFTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListLFTagsRequest.type = Types::ListLFTagsRequest
    ListLFTagsResponse.add_member(:lf_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagsList, name: "LFTags"))
    ListLFTagsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListLFTagsResponse.type = Types::ListLFTagsResponse
    ListLakeFormationOptInsRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipal, name: "Principal"))
    ListLakeFormationOptInsRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource"))
    ListLakeFormationOptInsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    ListLakeFormationOptInsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListLakeFormationOptInsRequest.type = Types::ListLakeFormationOptInsRequest
    ListLakeFormationOptInsResponse.add_member(:lake_formation_opt_ins_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LakeFormationOptInsInfoList, name: "LakeFormationOptInsInfoList"))
    ListLakeFormationOptInsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListLakeFormationOptInsResponse.type = Types::ListLakeFormationOptInsResponse
    ListPermissionsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    ListPermissionsRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipal, name: "Principal"))
    ListPermissionsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeResourceType, name: "ResourceType"))
    ListPermissionsRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource"))
    ListPermissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPermissionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    ListPermissionsRequest.add_member(:include_related, ::Smithy::Schema::Shapes::MemberShape.new(target: TrueFalseString, name: "IncludeRelated"))
    ListPermissionsRequest.type = Types::ListPermissionsRequest
    ListPermissionsResponse.add_member(:principal_resource_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalResourcePermissionsList, name: "PrincipalResourcePermissions"))
    ListPermissionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPermissionsResponse.type = Types::ListPermissionsResponse
    ListResourcesRequest.add_member(:filter_condition_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConditionList, name: "FilterConditionList"))
    ListResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    ListResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListResourcesRequest.type = Types::ListResourcesRequest
    ListResourcesResponse.add_member(:resource_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceInfoList, name: "ResourceInfoList"))
    ListResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListResourcesResponse.type = Types::ListResourcesResponse
    ListTableStorageOptimizersRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    ListTableStorageOptimizersRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    ListTableStorageOptimizersRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "TableName", traits: {"smithy.api#required" => {}}))
    ListTableStorageOptimizersRequest.add_member(:storage_optimizer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizerType, name: "StorageOptimizerType"))
    ListTableStorageOptimizersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    ListTableStorageOptimizersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListTableStorageOptimizersRequest.type = Types::ListTableStorageOptimizersRequest
    ListTableStorageOptimizersResponse.add_member(:storage_optimizer_list, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageOptimizerList, name: "StorageOptimizerList"))
    ListTableStorageOptimizersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListTableStorageOptimizersResponse.type = Types::ListTableStorageOptimizersResponse
    ListTransactionsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    ListTransactionsRequest.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionStatusFilter, name: "StatusFilter"))
    ListTransactionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    ListTransactionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenString, name: "NextToken"))
    ListTransactionsRequest.type = Types::ListTransactionsRequest
    ListTransactionsResponse.add_member(:transactions, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionDescriptionList, name: "Transactions"))
    ListTransactionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenString, name: "NextToken"))
    ListTransactionsResponse.type = Types::ListTransactionsResponse
    OperationTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    OperationTimeoutException.type = Types::OperationTimeoutException
    OptimizerType.add_member(:compaction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPACTION", traits: {"smithy.api#enumValue" => "COMPACTION"}))
    OptimizerType.add_member(:garbage_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GARBAGE_COLLECTION", traits: {"smithy.api#enumValue" => "GARBAGE_COLLECTION"}))
    OptimizerType.add_member(:generic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENERIC", traits: {"smithy.api#enumValue" => "ALL"}))
    ParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyString, name: "key"))
    ParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMapValue, name: "value"))
    PartitionObjects.add_member(:partition_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionValuesList, name: "PartitionValues"))
    PartitionObjects.add_member(:objects, ::Smithy::Schema::Shapes::MemberShape.new(target: TableObjectList, name: "Objects"))
    PartitionObjects.type = Types::PartitionObjects
    PartitionValueList.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueStringList, name: "Values", traits: {"smithy.api#required" => {}}))
    PartitionValueList.type = Types::PartitionValueList
    PartitionValuesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionValueString, name: "member"))
    PartitionedTableObjectsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionObjects, name: "member"))
    PathStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PathString, name: "member"))
    Permission.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    Permission.add_member(:select, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELECT", traits: {"smithy.api#enumValue" => "SELECT"}))
    Permission.add_member(:alter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALTER", traits: {"smithy.api#enumValue" => "ALTER"}))
    Permission.add_member(:drop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    Permission.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    Permission.add_member(:insert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSERT", traits: {"smithy.api#enumValue" => "INSERT"}))
    Permission.add_member(:describe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCRIBE", traits: {"smithy.api#enumValue" => "DESCRIBE"}))
    Permission.add_member(:create_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_DATABASE", traits: {"smithy.api#enumValue" => "CREATE_DATABASE"}))
    Permission.add_member(:create_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_TABLE", traits: {"smithy.api#enumValue" => "CREATE_TABLE"}))
    Permission.add_member(:data_location_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_LOCATION_ACCESS", traits: {"smithy.api#enumValue" => "DATA_LOCATION_ACCESS"}))
    Permission.add_member(:create_lf_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_LF_TAG", traits: {"smithy.api#enumValue" => "CREATE_LF_TAG"}))
    Permission.add_member(:associate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATE", traits: {"smithy.api#enumValue" => "ASSOCIATE"}))
    Permission.add_member(:grant_with_lf_tag_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GRANT_WITH_LF_TAG_EXPRESSION", traits: {"smithy.api#enumValue" => "GRANT_WITH_LF_TAG_EXPRESSION"}))
    Permission.add_member(:create_lf_tag_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_LF_TAG_EXPRESSION", traits: {"smithy.api#enumValue" => "CREATE_LF_TAG_EXPRESSION"}))
    Permission.add_member(:create_catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_CATALOG", traits: {"smithy.api#enumValue" => "CREATE_CATALOG"}))
    Permission.add_member(:super_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPER_USER", traits: {"smithy.api#enumValue" => "SUPER_USER"}))
    PermissionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "member"))
    PermissionType.add_member(:column_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COLUMN_PERMISSION", traits: {"smithy.api#enumValue" => "COLUMN_PERMISSION"}))
    PermissionType.add_member(:cell_filter_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CELL_FILTER_PERMISSION", traits: {"smithy.api#enumValue" => "CELL_FILTER_PERMISSION"}))
    PermissionType.add_member(:nested_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NESTED_PERMISSION", traits: {"smithy.api#enumValue" => "NESTED_PERMISSION"}))
    PermissionType.add_member(:nested_cell_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NESTED_CELL_PERMISSION", traits: {"smithy.api#enumValue" => "NESTED_CELL_PERMISSION"}))
    PermissionTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionType, name: "member"))
    PermissionTypeMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    PermissionTypeMismatchException.type = Types::PermissionTypeMismatchException
    PlanningStatistics.add_member(:estimated_data_to_scan_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfBytes, name: "EstimatedDataToScanBytes", traits: {"smithy.api#default" => 0}))
    PlanningStatistics.add_member(:planning_time_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfMilliseconds, name: "PlanningTimeMillis", traits: {"smithy.api#default" => 0}))
    PlanningStatistics.add_member(:queue_time_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfMilliseconds, name: "QueueTimeMillis", traits: {"smithy.api#default" => 0}))
    PlanningStatistics.add_member(:work_units_generated_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfItems, name: "WorkUnitsGeneratedCount", traits: {"smithy.api#default" => 0}))
    PlanningStatistics.type = Types::PlanningStatistics
    PrincipalPermissions.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipal, name: "Principal"))
    PrincipalPermissions.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "Permissions"))
    PrincipalPermissions.type = Types::PrincipalPermissions
    PrincipalPermissionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalPermissions, name: "member"))
    PrincipalResourcePermissions.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipal, name: "Principal"))
    PrincipalResourcePermissions.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource"))
    PrincipalResourcePermissions.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "Condition"))
    PrincipalResourcePermissions.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "Permissions"))
    PrincipalResourcePermissions.add_member(:permissions_with_grant_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "PermissionsWithGrantOption"))
    PrincipalResourcePermissions.add_member(:additional_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailsMap, name: "AdditionalDetails"))
    PrincipalResourcePermissions.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedTimestamp, name: "LastUpdated"))
    PrincipalResourcePermissions.add_member(:last_updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "LastUpdatedBy"))
    PrincipalResourcePermissions.type = Types::PrincipalResourcePermissions
    PrincipalResourcePermissionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalResourcePermissions, name: "member"))
    PutDataLakeSettingsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    PutDataLakeSettingsRequest.add_member(:data_lake_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeSettings, name: "DataLakeSettings", traits: {"smithy.api#required" => {}}))
    PutDataLakeSettingsRequest.type = Types::PutDataLakeSettingsRequest
    PutDataLakeSettingsResponse.type = Types::PutDataLakeSettingsResponse
    QueryParameterMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    QueryParameterMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    QueryPlanningContext.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    QueryPlanningContext.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryPlanningContextDatabaseNameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    QueryPlanningContext.add_member(:query_as_of_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "QueryAsOfTime"))
    QueryPlanningContext.add_member(:query_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParameterMap, name: "QueryParameters"))
    QueryPlanningContext.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionIdString, name: "TransactionId"))
    QueryPlanningContext.type = Types::QueryPlanningContext
    QuerySessionContext.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HashString, name: "QueryId"))
    QuerySessionContext.add_member(:query_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "QueryStartTime"))
    QuerySessionContext.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableString, name: "ClusterId"))
    QuerySessionContext.add_member(:query_authorization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HashString, name: "QueryAuthorizationId"))
    QuerySessionContext.add_member(:additional_context, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalContextMap, name: "AdditionalContext"))
    QuerySessionContext.type = Types::QuerySessionContext
    QueryStateString.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    QueryStateString.add_member(:workunits_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKUNITS_AVAILABLE", traits: {"smithy.api#enumValue" => "WORKUNITS_AVAILABLE"}))
    QueryStateString.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    QueryStateString.add_member(:finished, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINISHED", traits: {"smithy.api#enumValue" => "FINISHED"}))
    QueryStateString.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    RegisterResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    RegisterResourceRequest.add_member(:use_service_linked_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "UseServiceLinkedRole"))
    RegisterResourceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "RoleArn"))
    RegisterResourceRequest.add_member(:with_federation, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "WithFederation"))
    RegisterResourceRequest.add_member(:hybrid_access_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "HybridAccessEnabled"))
    RegisterResourceRequest.add_member(:with_privileged_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "WithPrivilegedAccess", traits: {"smithy.api#default" => false}))
    RegisterResourceRequest.type = Types::RegisterResourceRequest
    RegisterResourceResponse.type = Types::RegisterResourceResponse
    RemoveLFTagsFromResourceRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    RemoveLFTagsFromResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource", traits: {"smithy.api#required" => {}}))
    RemoveLFTagsFromResourceRequest.add_member(:lf_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagsList, name: "LFTags", traits: {"smithy.api#required" => {}}))
    RemoveLFTagsFromResourceRequest.type = Types::RemoveLFTagsFromResourceRequest
    RemoveLFTagsFromResourceResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagErrors, name: "Failures"))
    RemoveLFTagsFromResourceResponse.type = Types::RemoveLFTagsFromResourceResponse
    Resource.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogResource, name: "Catalog"))
    Resource.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseResource, name: "Database"))
    Resource.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: TableResource, name: "Table"))
    Resource.add_member(:table_with_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: TableWithColumnsResource, name: "TableWithColumns"))
    Resource.add_member(:data_location, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLocationResource, name: "DataLocation"))
    Resource.add_member(:data_cells_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCellsFilterResource, name: "DataCellsFilter"))
    Resource.add_member(:lf_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagKeyResource, name: "LFTag"))
    Resource.add_member(:lf_tag_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagPolicyResource, name: "LFTagPolicy"))
    Resource.add_member(:lf_tag_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagExpressionResource, name: "LFTagExpression"))
    Resource.type = Types::Resource
    ResourceInfo.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn"))
    ResourceInfo.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "RoleArn"))
    ResourceInfo.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedTimestamp, name: "LastModified"))
    ResourceInfo.add_member(:with_federation, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "WithFederation"))
    ResourceInfo.add_member(:hybrid_access_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "HybridAccessEnabled"))
    ResourceInfo.add_member(:with_privileged_access, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "WithPrivilegedAccess"))
    ResourceInfo.type = Types::ResourceInfo
    ResourceInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceInfo, name: "member"))
    ResourceNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    ResourceNotReadyException.type = Types::ResourceNotReadyException
    ResourceNumberLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    ResourceNumberLimitExceededException.type = Types::ResourceNumberLimitExceededException
    ResourceShareList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RAMResourceShareArn, name: "member"))
    ResourceShareType.add_member(:foreign, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOREIGN", traits: {"smithy.api#enumValue" => "FOREIGN"}))
    ResourceShareType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    ResourceType.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE", traits: {"smithy.api#enumValue" => "DATABASE"}))
    ResourceType.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE", traits: {"smithy.api#enumValue" => "TABLE"}))
    RevokePermissionsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    RevokePermissionsRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipal, name: "Principal", traits: {"smithy.api#required" => {}}))
    RevokePermissionsRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource", traits: {"smithy.api#required" => {}}))
    RevokePermissionsRequest.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "Permissions", traits: {"smithy.api#required" => {}}))
    RevokePermissionsRequest.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "Condition"))
    RevokePermissionsRequest.add_member(:permissions_with_grant_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "PermissionsWithGrantOption"))
    RevokePermissionsRequest.type = Types::RevokePermissionsRequest
    RevokePermissionsResponse.type = Types::RevokePermissionsResponse
    RowFilter.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: PredicateString, name: "FilterExpression"))
    RowFilter.add_member(:all_rows_wildcard, ::Smithy::Schema::Shapes::MemberShape.new(target: AllRowsWildcard, name: "AllRowsWildcard"))
    RowFilter.type = Types::RowFilter
    ScopeTargets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTarget, name: "member"))
    SearchDatabasesByLFTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    SearchDatabasesByLFTagsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPageSize, name: "MaxResults"))
    SearchDatabasesByLFTagsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    SearchDatabasesByLFTagsRequest.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#required" => {}}))
    SearchDatabasesByLFTagsRequest.type = Types::SearchDatabasesByLFTagsRequest
    SearchDatabasesByLFTagsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    SearchDatabasesByLFTagsResponse.add_member(:database_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseLFTagsList, name: "DatabaseList"))
    SearchDatabasesByLFTagsResponse.type = Types::SearchDatabasesByLFTagsResponse
    SearchTablesByLFTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    SearchTablesByLFTagsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPageSize, name: "MaxResults"))
    SearchTablesByLFTagsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    SearchTablesByLFTagsRequest.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#required" => {}}))
    SearchTablesByLFTagsRequest.type = Types::SearchTablesByLFTagsRequest
    SearchTablesByLFTagsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    SearchTablesByLFTagsResponse.add_member(:table_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TableLFTagsList, name: "TableList"))
    SearchTablesByLFTagsResponse.type = Types::SearchTablesByLFTagsResponse
    StartQueryPlanningRequest.add_member(:query_planning_context, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryPlanningContext, name: "QueryPlanningContext", traits: {"smithy.api#required" => {}}))
    StartQueryPlanningRequest.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SyntheticStartQueryPlanningRequestQueryString, name: "QueryString", traits: {"smithy.api#required" => {}}))
    StartQueryPlanningRequest.type = Types::StartQueryPlanningRequest
    StartQueryPlanningResponse.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryIdString, name: "QueryId", traits: {"smithy.api#required" => {}}))
    StartQueryPlanningResponse.type = Types::StartQueryPlanningResponse
    StartTransactionRequest.add_member(:transaction_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionType, name: "TransactionType"))
    StartTransactionRequest.type = Types::StartTransactionRequest
    StartTransactionResponse.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionIdString, name: "TransactionId"))
    StartTransactionResponse.type = Types::StartTransactionResponse
    StatisticsNotReadyYetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    StatisticsNotReadyYetException.type = Types::StatisticsNotReadyYetException
    StorageOptimizer.add_member(:storage_optimizer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizerType, name: "StorageOptimizerType"))
    StorageOptimizer.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageOptimizerConfig, name: "Config"))
    StorageOptimizer.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "ErrorMessage"))
    StorageOptimizer.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Warnings"))
    StorageOptimizer.add_member(:last_run_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "LastRunDetails"))
    StorageOptimizer.type = Types::StorageOptimizer
    StorageOptimizerConfig.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageOptimizerConfigKey, name: "key"))
    StorageOptimizerConfig.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageOptimizerConfigValue, name: "value"))
    StorageOptimizerConfigMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizerType, name: "key"))
    StorageOptimizerConfigMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageOptimizerConfig, name: "value"))
    StorageOptimizerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageOptimizer, name: "member"))
    StringValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue, name: "member"))
    TableLFTagsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggedTable, name: "member"))
    TableObject.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "Uri"))
    TableObject.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETagString, name: "ETag"))
    TableObject.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSize, name: "Size", traits: {"smithy.api#default" => 0}))
    TableObject.type = Types::TableObject
    TableObjectList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableObject, name: "member"))
    TableResource.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    TableResource.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    TableResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name"))
    TableResource.add_member(:table_wildcard, ::Smithy::Schema::Shapes::MemberShape.new(target: TableWildcard, name: "TableWildcard"))
    TableResource.type = Types::TableResource
    TableWildcard.type = Types::TableWildcard
    TableWithColumnsResource.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    TableWithColumnsResource.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    TableWithColumnsResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    TableWithColumnsResource.add_member(:column_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnNames, name: "ColumnNames"))
    TableWithColumnsResource.add_member(:column_wildcard, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnWildcard, name: "ColumnWildcard"))
    TableWithColumnsResource.type = Types::TableWithColumnsResource
    TagValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagValue, name: "member"))
    TaggedDatabase.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseResource, name: "Database"))
    TaggedDatabase.add_member(:lf_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagsList, name: "LFTags"))
    TaggedDatabase.type = Types::TaggedDatabase
    TaggedTable.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: TableResource, name: "Table"))
    TaggedTable.add_member(:lf_tag_on_database, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagsList, name: "LFTagOnDatabase"))
    TaggedTable.add_member(:lf_tags_on_table, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagsList, name: "LFTagsOnTable"))
    TaggedTable.add_member(:lf_tags_on_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnLFTagsList, name: "LFTagsOnColumns"))
    TaggedTable.type = Types::TaggedTable
    ThrottledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    ThrottledException.type = Types::ThrottledException
    TransactionCanceledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    TransactionCanceledException.type = Types::TransactionCanceledException
    TransactionCommitInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    TransactionCommitInProgressException.type = Types::TransactionCommitInProgressException
    TransactionCommittedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    TransactionCommittedException.type = Types::TransactionCommittedException
    TransactionDescription.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionIdString, name: "TransactionId"))
    TransactionDescription.add_member(:transaction_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionStatus, name: "TransactionStatus"))
    TransactionDescription.add_member(:transaction_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TransactionStartTime"))
    TransactionDescription.add_member(:transaction_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TransactionEndTime"))
    TransactionDescription.type = Types::TransactionDescription
    TransactionDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionDescription, name: "member"))
    TransactionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TransactionStatus.add_member(:committed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMITTED", traits: {"smithy.api#enumValue" => "COMMITTED"}))
    TransactionStatus.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    TransactionStatus.add_member(:commit_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMIT_IN_PROGRESS", traits: {"smithy.api#enumValue" => "COMMIT_IN_PROGRESS"}))
    TransactionStatusFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    TransactionStatusFilter.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    TransactionStatusFilter.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TransactionStatusFilter.add_member(:committed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMITTED", traits: {"smithy.api#enumValue" => "COMMITTED"}))
    TransactionStatusFilter.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    TransactionType.add_member(:read_and_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_AND_WRITE", traits: {"smithy.api#enumValue" => "READ_AND_WRITE"}))
    TransactionType.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_ONLY", traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    TrustedResourceOwners.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "member"))
    UpdateDataCellsFilterRequest.add_member(:table_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCellsFilter, name: "TableData", traits: {"smithy.api#required" => {}}))
    UpdateDataCellsFilterRequest.type = Types::UpdateDataCellsFilterRequest
    UpdateDataCellsFilterResponse.type = Types::UpdateDataCellsFilterResponse
    UpdateLFTagExpressionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateLFTagExpressionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    UpdateLFTagExpressionRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    UpdateLFTagExpressionRequest.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#required" => {}}))
    UpdateLFTagExpressionRequest.type = Types::UpdateLFTagExpressionRequest
    UpdateLFTagExpressionResponse.type = Types::UpdateLFTagExpressionResponse
    UpdateLFTagRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    UpdateLFTagRequest.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagKey, name: "TagKey", traits: {"smithy.api#required" => {}}))
    UpdateLFTagRequest.add_member(:tag_values_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValuesToDelete"))
    UpdateLFTagRequest.add_member(:tag_values_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValuesToAdd"))
    UpdateLFTagRequest.type = Types::UpdateLFTagRequest
    UpdateLFTagResponse.type = Types::UpdateLFTagResponse
    UpdateLakeFormationIdentityCenterConfigurationRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    UpdateLakeFormationIdentityCenterConfigurationRequest.add_member(:share_recipients, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakePrincipalList, name: "ShareRecipients"))
    UpdateLakeFormationIdentityCenterConfigurationRequest.add_member(:application_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "ApplicationStatus"))
    UpdateLakeFormationIdentityCenterConfigurationRequest.add_member(:external_filtering, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalFilteringConfiguration, name: "ExternalFiltering"))
    UpdateLakeFormationIdentityCenterConfigurationRequest.type = Types::UpdateLakeFormationIdentityCenterConfigurationRequest
    UpdateLakeFormationIdentityCenterConfigurationResponse.type = Types::UpdateLakeFormationIdentityCenterConfigurationResponse
    UpdateResourceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    UpdateResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UpdateResourceRequest.add_member(:with_federation, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "WithFederation"))
    UpdateResourceRequest.add_member(:hybrid_access_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "HybridAccessEnabled"))
    UpdateResourceRequest.type = Types::UpdateResourceRequest
    UpdateResourceResponse.type = Types::UpdateResourceResponse
    UpdateTableObjectsRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    UpdateTableObjectsRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    UpdateTableObjectsRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "TableName", traits: {"smithy.api#required" => {}}))
    UpdateTableObjectsRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionIdString, name: "TransactionId"))
    UpdateTableObjectsRequest.add_member(:write_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: WriteOperationList, name: "WriteOperations", traits: {"smithy.api#required" => {}}))
    UpdateTableObjectsRequest.type = Types::UpdateTableObjectsRequest
    UpdateTableObjectsResponse.type = Types::UpdateTableObjectsResponse
    UpdateTableStorageOptimizerRequest.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdString, name: "CatalogId"))
    UpdateTableStorageOptimizerRequest.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    UpdateTableStorageOptimizerRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "TableName", traits: {"smithy.api#required" => {}}))
    UpdateTableStorageOptimizerRequest.add_member(:storage_optimizer_config, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageOptimizerConfigMap, name: "StorageOptimizerConfig", traits: {"smithy.api#required" => {}}))
    UpdateTableStorageOptimizerRequest.type = Types::UpdateTableStorageOptimizerRequest
    UpdateTableStorageOptimizerResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Result, name: "Result"))
    UpdateTableStorageOptimizerResponse.type = Types::UpdateTableStorageOptimizerResponse
    ValueStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueString, name: "member"))
    VirtualObject.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "Uri", traits: {"smithy.api#required" => {}}))
    VirtualObject.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETagString, name: "ETag"))
    VirtualObject.type = Types::VirtualObject
    VirtualObjectList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualObject, name: "member"))
    WorkUnitRange.add_member(:work_unit_id_max, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkUnitIdLong, name: "WorkUnitIdMax", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WorkUnitRange.add_member(:work_unit_id_min, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkUnitIdLong, name: "WorkUnitIdMin", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WorkUnitRange.add_member(:work_unit_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkUnitTokenString, name: "WorkUnitToken", traits: {"smithy.api#required" => {}}))
    WorkUnitRange.type = Types::WorkUnitRange
    WorkUnitRangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkUnitRange, name: "member"))
    WorkUnitsNotReadyYetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageString, name: "Message"))
    WorkUnitsNotReadyYetException.type = Types::WorkUnitsNotReadyYetException
    WriteOperation.add_member(:add_object, ::Smithy::Schema::Shapes::MemberShape.new(target: AddObjectInput, name: "AddObject"))
    WriteOperation.add_member(:delete_object, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteObjectInput, name: "DeleteObject"))
    WriteOperation.type = Types::WriteOperation
    WriteOperationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WriteOperation, name: "member"))

    AWSLakeFormation = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lakeformation#AWSLakeFormation"
      service.name = "AWSLakeFormation"
      service.version = "2017-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "LakeFormation", "arnNamespace" => "lakeformation", "cloudFormationName" => "LakeFormation", "cloudTrailEventSource" => "lakeformation.amazonaws.com", "endpointPrefix" => "lakeformation"}, "aws.auth#sigv4" => {"name" => "lakeformation"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Lake Formation"}
      service.add_operation(:add_lf_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#AddLFTagsToResource"
        operation.name = "AddLFTagsToResource"
        operation.input = AddLFTagsToResourceRequest
        operation.output = AddLFTagsToResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/AddLFTagsToResource", "code" => 200}}
      end)
      service.add_operation(:assume_decorated_role_with_saml, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#AssumeDecoratedRoleWithSAML"
        operation.name = "AssumeDecoratedRoleWithSAML"
        operation.input = AssumeDecoratedRoleWithSAMLRequest
        operation.output = AssumeDecoratedRoleWithSAMLResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/AssumeDecoratedRoleWithSAML", "code" => 200}}
      end)
      service.add_operation(:batch_grant_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#BatchGrantPermissions"
        operation.name = "BatchGrantPermissions"
        operation.input = BatchGrantPermissionsRequest
        operation.output = BatchGrantPermissionsResponse
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGrantPermissions", "code" => 200}}
      end)
      service.add_operation(:batch_revoke_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#BatchRevokePermissions"
        operation.name = "BatchRevokePermissions"
        operation.input = BatchRevokePermissionsRequest
        operation.output = BatchRevokePermissionsResponse
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchRevokePermissions", "code" => 200}}
      end)
      service.add_operation(:cancel_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CancelTransaction"
        operation.name = "CancelTransaction"
        operation.input = CancelTransactionRequest
        operation.output = CancelTransactionResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << TransactionCommitInProgressException
        operation.errors << TransactionCommittedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CancelTransaction", "code" => 200}}
      end)
      service.add_operation(:commit_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CommitTransaction"
        operation.name = "CommitTransaction"
        operation.input = CommitTransactionRequest
        operation.output = CommitTransactionResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << TransactionCanceledException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CommitTransaction", "code" => 200}}
      end)
      service.add_operation(:create_data_cells_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CreateDataCellsFilter"
        operation.name = "CreateDataCellsFilter"
        operation.input = CreateDataCellsFilterRequest
        operation.output = CreateDataCellsFilterResponse
        operation.errors << AccessDeniedException
        operation.errors << AlreadyExistsException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNumberLimitExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateDataCellsFilter", "code" => 200}}
      end)
      service.add_operation(:create_lf_tag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CreateLFTag"
        operation.name = "CreateLFTag"
        operation.input = CreateLFTagRequest
        operation.output = CreateLFTagResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNumberLimitExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateLFTag", "code" => 200}}
      end)
      service.add_operation(:create_lf_tag_expression, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CreateLFTagExpression"
        operation.name = "CreateLFTagExpression"
        operation.input = CreateLFTagExpressionRequest
        operation.output = CreateLFTagExpressionResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNumberLimitExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateLFTagExpression", "code" => 200}}
      end)
      service.add_operation(:create_lake_formation_identity_center_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CreateLakeFormationIdentityCenterConfiguration"
        operation.name = "CreateLakeFormationIdentityCenterConfiguration"
        operation.input = CreateLakeFormationIdentityCenterConfigurationRequest
        operation.output = CreateLakeFormationIdentityCenterConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << AlreadyExistsException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateLakeFormationIdentityCenterConfiguration", "code" => 200}}
      end)
      service.add_operation(:create_lake_formation_opt_in, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#CreateLakeFormationOptIn"
        operation.name = "CreateLakeFormationOptIn"
        operation.input = CreateLakeFormationOptInRequest
        operation.output = CreateLakeFormationOptInResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNumberLimitExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateLakeFormationOptIn", "code" => 200}}
      end)
      service.add_operation(:delete_data_cells_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteDataCellsFilter"
        operation.name = "DeleteDataCellsFilter"
        operation.input = DeleteDataCellsFilterRequest
        operation.output = DeleteDataCellsFilterResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteDataCellsFilter", "code" => 200}}
      end)
      service.add_operation(:delete_lf_tag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteLFTag"
        operation.name = "DeleteLFTag"
        operation.input = DeleteLFTagRequest
        operation.output = DeleteLFTagResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLFTag", "code" => 200}}
      end)
      service.add_operation(:delete_lf_tag_expression, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteLFTagExpression"
        operation.name = "DeleteLFTagExpression"
        operation.input = DeleteLFTagExpressionRequest
        operation.output = DeleteLFTagExpressionResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLFTagExpression", "code" => 200}}
      end)
      service.add_operation(:delete_lake_formation_identity_center_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteLakeFormationIdentityCenterConfiguration"
        operation.name = "DeleteLakeFormationIdentityCenterConfiguration"
        operation.input = DeleteLakeFormationIdentityCenterConfigurationRequest
        operation.output = DeleteLakeFormationIdentityCenterConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLakeFormationIdentityCenterConfiguration", "code" => 200}}
      end)
      service.add_operation(:delete_lake_formation_opt_in, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteLakeFormationOptIn"
        operation.name = "DeleteLakeFormationOptIn"
        operation.input = DeleteLakeFormationOptInRequest
        operation.output = DeleteLakeFormationOptInResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLakeFormationOptIn", "code" => 200}}
      end)
      service.add_operation(:delete_objects_on_cancel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeleteObjectsOnCancel"
        operation.name = "DeleteObjectsOnCancel"
        operation.input = DeleteObjectsOnCancelRequest
        operation.output = DeleteObjectsOnCancelResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotReadyException
        operation.errors << TransactionCanceledException
        operation.errors << TransactionCommittedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteObjectsOnCancel", "code" => 200}}
      end)
      service.add_operation(:deregister_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DeregisterResource"
        operation.name = "DeregisterResource"
        operation.input = DeregisterResourceRequest
        operation.output = DeregisterResourceResponse
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeregisterResource", "code" => 200}}
      end)
      service.add_operation(:describe_lake_formation_identity_center_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DescribeLakeFormationIdentityCenterConfiguration"
        operation.name = "DescribeLakeFormationIdentityCenterConfiguration"
        operation.input = DescribeLakeFormationIdentityCenterConfigurationRequest
        operation.output = DescribeLakeFormationIdentityCenterConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeLakeFormationIdentityCenterConfiguration", "code" => 200}}
      end)
      service.add_operation(:describe_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DescribeResource"
        operation.name = "DescribeResource"
        operation.input = DescribeResourceRequest
        operation.output = DescribeResourceResponse
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeResource", "code" => 200}}
      end)
      service.add_operation(:describe_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#DescribeTransaction"
        operation.name = "DescribeTransaction"
        operation.input = DescribeTransactionRequest
        operation.output = DescribeTransactionResponse
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeTransaction", "code" => 200}}
      end)
      service.add_operation(:extend_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ExtendTransaction"
        operation.name = "ExtendTransaction"
        operation.input = ExtendTransactionRequest
        operation.output = ExtendTransactionResponse
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << TransactionCanceledException
        operation.errors << TransactionCommitInProgressException
        operation.errors << TransactionCommittedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ExtendTransaction", "code" => 200}}
      end)
      service.add_operation(:get_data_cells_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetDataCellsFilter"
        operation.name = "GetDataCellsFilter"
        operation.input = GetDataCellsFilterRequest
        operation.output = GetDataCellsFilterResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDataCellsFilter", "code" => 200}}
      end)
      service.add_operation(:get_data_lake_principal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetDataLakePrincipal"
        operation.name = "GetDataLakePrincipal"
        operation.input = GetDataLakePrincipalRequest
        operation.output = GetDataLakePrincipalResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDataLakePrincipal", "code" => 200}}
      end)
      service.add_operation(:get_data_lake_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetDataLakeSettings"
        operation.name = "GetDataLakeSettings"
        operation.input = GetDataLakeSettingsRequest
        operation.output = GetDataLakeSettingsResponse
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDataLakeSettings", "code" => 200}}
      end)
      service.add_operation(:get_effective_permissions_for_path, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetEffectivePermissionsForPath"
        operation.name = "GetEffectivePermissionsForPath"
        operation.input = GetEffectivePermissionsForPathRequest
        operation.output = GetEffectivePermissionsForPathResponse
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetEffectivePermissionsForPath", "code" => 200}}
        operation[:paginator] = Paginators::GetEffectivePermissionsForPath.new
      end)
      service.add_operation(:get_lf_tag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetLFTag"
        operation.name = "GetLFTag"
        operation.input = GetLFTagRequest
        operation.output = GetLFTagResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetLFTag", "code" => 200}}
      end)
      service.add_operation(:get_lf_tag_expression, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetLFTagExpression"
        operation.name = "GetLFTagExpression"
        operation.input = GetLFTagExpressionRequest
        operation.output = GetLFTagExpressionResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetLFTagExpression", "code" => 200}}
      end)
      service.add_operation(:get_query_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetQueryState"
        operation.name = "GetQueryState"
        operation.input = GetQueryStateRequest
        operation.output = GetQueryStateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "query-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetQueryState", "code" => 200}}
      end)
      service.add_operation(:get_query_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetQueryStatistics"
        operation.name = "GetQueryStatistics"
        operation.input = GetQueryStatisticsRequest
        operation.output = GetQueryStatisticsResponse
        operation.errors << AccessDeniedException
        operation.errors << ExpiredException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << StatisticsNotReadyYetException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "query-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetQueryStatistics", "code" => 200}}
      end)
      service.add_operation(:get_resource_lf_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetResourceLFTags"
        operation.name = "GetResourceLFTags"
        operation.input = GetResourceLFTagsRequest
        operation.output = GetResourceLFTagsResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << GlueEncryptionException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetResourceLFTags", "code" => 200}}
      end)
      service.add_operation(:get_table_objects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetTableObjects"
        operation.name = "GetTableObjects"
        operation.input = GetTableObjectsRequest
        operation.output = GetTableObjectsResponse
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotReadyException
        operation.errors << TransactionCanceledException
        operation.errors << TransactionCommittedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTableObjects", "code" => 200}}
        operation[:paginator] = Paginators::GetTableObjects.new
      end)
      service.add_operation(:get_temporary_glue_partition_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetTemporaryGluePartitionCredentials"
        operation.name = "GetTemporaryGluePartitionCredentials"
        operation.input = GetTemporaryGluePartitionCredentialsRequest
        operation.output = GetTemporaryGluePartitionCredentialsResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << PermissionTypeMismatchException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTemporaryGluePartitionCredentials", "code" => 200}}
      end)
      service.add_operation(:get_temporary_glue_table_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetTemporaryGlueTableCredentials"
        operation.name = "GetTemporaryGlueTableCredentials"
        operation.input = GetTemporaryGlueTableCredentialsRequest
        operation.output = GetTemporaryGlueTableCredentialsResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << PermissionTypeMismatchException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTemporaryGlueTableCredentials", "code" => 200}}
      end)
      service.add_operation(:get_work_unit_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetWorkUnitResults"
        operation.name = "GetWorkUnitResults"
        operation.input = GetWorkUnitResultsRequest
        operation.output = GetWorkUnitResultsResponse
        operation.errors << AccessDeniedException
        operation.errors << ExpiredException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetWorkUnitResults", "code" => 200}}
      end)
      service.add_operation(:get_work_units, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GetWorkUnits"
        operation.name = "GetWorkUnits"
        operation.input = GetWorkUnitsRequest
        operation.output = GetWorkUnitsResponse
        operation.errors << AccessDeniedException
        operation.errors << ExpiredException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << WorkUnitsNotReadyYetException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "query-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetWorkUnits", "code" => 200}}
        operation[:paginator] = Paginators::GetWorkUnits.new
      end)
      service.add_operation(:grant_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#GrantPermissions"
        operation.name = "GrantPermissions"
        operation.input = GrantPermissionsRequest
        operation.output = GrantPermissionsResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InvalidInputException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GrantPermissions", "code" => 200}}
      end)
      service.add_operation(:list_data_cells_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListDataCellsFilter"
        operation.name = "ListDataCellsFilter"
        operation.input = ListDataCellsFilterRequest
        operation.output = ListDataCellsFilterResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListDataCellsFilter", "code" => 200}}
        operation[:paginator] = Paginators::ListDataCellsFilter.new
      end)
      service.add_operation(:list_lf_tag_expressions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListLFTagExpressions"
        operation.name = "ListLFTagExpressions"
        operation.input = ListLFTagExpressionsRequest
        operation.output = ListLFTagExpressionsResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLFTagExpressions", "code" => 200}}
        operation[:paginator] = Paginators::ListLFTagExpressions.new
      end)
      service.add_operation(:list_lf_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListLFTags"
        operation.name = "ListLFTags"
        operation.input = ListLFTagsRequest
        operation.output = ListLFTagsResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLFTags", "code" => 200}}
        operation[:paginator] = Paginators::ListLFTags.new
      end)
      service.add_operation(:list_lake_formation_opt_ins, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListLakeFormationOptIns"
        operation.name = "ListLakeFormationOptIns"
        operation.input = ListLakeFormationOptInsRequest
        operation.output = ListLakeFormationOptInsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLakeFormationOptIns", "code" => 200}}
        operation[:paginator] = Paginators::ListLakeFormationOptIns.new
      end)
      service.add_operation(:list_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListPermissions"
        operation.name = "ListPermissions"
        operation.input = ListPermissionsRequest
        operation.output = ListPermissionsResponse
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPermissions", "code" => 200}}
        operation[:paginator] = Paginators::ListPermissions.new
      end)
      service.add_operation(:list_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListResources"
        operation.name = "ListResources"
        operation.input = ListResourcesRequest
        operation.output = ListResourcesResponse
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResources", "code" => 200}}
        operation[:paginator] = Paginators::ListResources.new
      end)
      service.add_operation(:list_table_storage_optimizers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListTableStorageOptimizers"
        operation.name = "ListTableStorageOptimizers"
        operation.input = ListTableStorageOptimizersRequest
        operation.output = ListTableStorageOptimizersResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTableStorageOptimizers", "code" => 200}}
        operation[:paginator] = Paginators::ListTableStorageOptimizers.new
      end)
      service.add_operation(:list_transactions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#ListTransactions"
        operation.name = "ListTransactions"
        operation.input = ListTransactionsRequest
        operation.output = ListTransactionsResponse
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTransactions", "code" => 200}}
        operation[:paginator] = Paginators::ListTransactions.new
      end)
      service.add_operation(:put_data_lake_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#PutDataLakeSettings"
        operation.name = "PutDataLakeSettings"
        operation.input = PutDataLakeSettingsRequest
        operation.output = PutDataLakeSettingsResponse
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutDataLakeSettings", "code" => 200}}
      end)
      service.add_operation(:register_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#RegisterResource"
        operation.name = "RegisterResource"
        operation.input = RegisterResourceRequest
        operation.output = RegisterResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << AlreadyExistsException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNumberLimitExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/RegisterResource", "code" => 200}}
      end)
      service.add_operation(:remove_lf_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#RemoveLFTagsFromResource"
        operation.name = "RemoveLFTagsFromResource"
        operation.input = RemoveLFTagsFromResourceRequest
        operation.output = RemoveLFTagsFromResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << GlueEncryptionException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/RemoveLFTagsFromResource", "code" => 200}}
      end)
      service.add_operation(:revoke_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#RevokePermissions"
        operation.name = "RevokePermissions"
        operation.input = RevokePermissionsRequest
        operation.output = RevokePermissionsResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InvalidInputException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/RevokePermissions", "code" => 200}}
      end)
      service.add_operation(:search_databases_by_lf_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#SearchDatabasesByLFTags"
        operation.name = "SearchDatabasesByLFTags"
        operation.input = SearchDatabasesByLFTagsRequest
        operation.output = SearchDatabasesByLFTagsResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << GlueEncryptionException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SearchDatabasesByLFTags", "code" => 200}}
        operation[:paginator] = Paginators::SearchDatabasesByLFTags.new
      end)
      service.add_operation(:search_tables_by_lf_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#SearchTablesByLFTags"
        operation.name = "SearchTablesByLFTags"
        operation.input = SearchTablesByLFTagsRequest
        operation.output = SearchTablesByLFTagsResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << GlueEncryptionException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SearchTablesByLFTags", "code" => 200}}
        operation[:paginator] = Paginators::SearchTablesByLFTags.new
      end)
      service.add_operation(:start_query_planning, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#StartQueryPlanning"
        operation.name = "StartQueryPlanning"
        operation.input = StartQueryPlanningRequest
        operation.output = StartQueryPlanningResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << ThrottledException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "query-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/StartQueryPlanning", "code" => 200}}
      end)
      service.add_operation(:start_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#StartTransaction"
        operation.name = "StartTransaction"
        operation.input = StartTransactionRequest
        operation.output = StartTransactionResponse
        operation.errors << InternalServiceException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartTransaction", "code" => 200}}
      end)
      service.add_operation(:update_data_cells_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateDataCellsFilter"
        operation.name = "UpdateDataCellsFilter"
        operation.input = UpdateDataCellsFilterRequest
        operation.output = UpdateDataCellsFilterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateDataCellsFilter", "code" => 200}}
      end)
      service.add_operation(:update_lf_tag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateLFTag"
        operation.name = "UpdateLFTag"
        operation.input = UpdateLFTagRequest
        operation.output = UpdateLFTagResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateLFTag", "code" => 200}}
      end)
      service.add_operation(:update_lf_tag_expression, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateLFTagExpression"
        operation.name = "UpdateLFTagExpression"
        operation.input = UpdateLFTagExpressionRequest
        operation.output = UpdateLFTagExpressionResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNumberLimitExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateLFTagExpression", "code" => 200}}
      end)
      service.add_operation(:update_lake_formation_identity_center_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateLakeFormationIdentityCenterConfiguration"
        operation.name = "UpdateLakeFormationIdentityCenterConfiguration"
        operation.input = UpdateLakeFormationIdentityCenterConfigurationRequest
        operation.output = UpdateLakeFormationIdentityCenterConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateLakeFormationIdentityCenterConfiguration", "code" => 200}}
      end)
      service.add_operation(:update_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateResource"
        operation.name = "UpdateResource"
        operation.input = UpdateResourceRequest
        operation.output = UpdateResourceResponse
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateResource", "code" => 200}}
      end)
      service.add_operation(:update_table_objects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateTableObjects"
        operation.name = "UpdateTableObjects"
        operation.input = UpdateTableObjectsRequest
        operation.output = UpdateTableObjectsResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotReadyException
        operation.errors << TransactionCanceledException
        operation.errors << TransactionCommitInProgressException
        operation.errors << TransactionCommittedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTableObjects", "code" => 200}}
      end)
      service.add_operation(:update_table_storage_optimizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lakeformation#UpdateTableStorageOptimizer"
        operation.name = "UpdateTableStorageOptimizer"
        operation.input = UpdateTableStorageOptimizerRequest
        operation.output = UpdateTableStorageOptimizerResponse
        operation.errors << AccessDeniedException
        operation.errors << EntityNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidInputException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTableStorageOptimizer", "code" => 200}}
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
