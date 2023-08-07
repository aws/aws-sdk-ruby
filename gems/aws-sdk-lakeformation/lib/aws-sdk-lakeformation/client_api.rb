# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LakeFormation
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessKeyIdString = Shapes::StringShape.new(name: 'AccessKeyIdString')
    AddLFTagsToResourceRequest = Shapes::StructureShape.new(name: 'AddLFTagsToResourceRequest')
    AddLFTagsToResourceResponse = Shapes::StructureShape.new(name: 'AddLFTagsToResourceResponse')
    AddObjectInput = Shapes::StructureShape.new(name: 'AddObjectInput')
    AllRowsWildcard = Shapes::StructureShape.new(name: 'AllRowsWildcard')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    AssumeDecoratedRoleWithSAMLRequest = Shapes::StructureShape.new(name: 'AssumeDecoratedRoleWithSAMLRequest')
    AssumeDecoratedRoleWithSAMLResponse = Shapes::StructureShape.new(name: 'AssumeDecoratedRoleWithSAMLResponse')
    AuditContext = Shapes::StructureShape.new(name: 'AuditContext')
    AuditContextString = Shapes::StringShape.new(name: 'AuditContextString')
    AuthorizedSessionTagValueList = Shapes::ListShape.new(name: 'AuthorizedSessionTagValueList')
    BatchGrantPermissionsRequest = Shapes::StructureShape.new(name: 'BatchGrantPermissionsRequest')
    BatchGrantPermissionsResponse = Shapes::StructureShape.new(name: 'BatchGrantPermissionsResponse')
    BatchPermissionsFailureEntry = Shapes::StructureShape.new(name: 'BatchPermissionsFailureEntry')
    BatchPermissionsFailureList = Shapes::ListShape.new(name: 'BatchPermissionsFailureList')
    BatchPermissionsRequestEntry = Shapes::StructureShape.new(name: 'BatchPermissionsRequestEntry')
    BatchPermissionsRequestEntryList = Shapes::ListShape.new(name: 'BatchPermissionsRequestEntryList')
    BatchRevokePermissionsRequest = Shapes::StructureShape.new(name: 'BatchRevokePermissionsRequest')
    BatchRevokePermissionsResponse = Shapes::StructureShape.new(name: 'BatchRevokePermissionsResponse')
    BooleanNullable = Shapes::BooleanShape.new(name: 'BooleanNullable')
    CancelTransactionRequest = Shapes::StructureShape.new(name: 'CancelTransactionRequest')
    CancelTransactionResponse = Shapes::StructureShape.new(name: 'CancelTransactionResponse')
    CatalogIdString = Shapes::StringShape.new(name: 'CatalogIdString')
    CatalogResource = Shapes::StructureShape.new(name: 'CatalogResource')
    ColumnLFTag = Shapes::StructureShape.new(name: 'ColumnLFTag')
    ColumnLFTagsList = Shapes::ListShape.new(name: 'ColumnLFTagsList')
    ColumnNames = Shapes::ListShape.new(name: 'ColumnNames')
    ColumnWildcard = Shapes::StructureShape.new(name: 'ColumnWildcard')
    CommitTransactionRequest = Shapes::StructureShape.new(name: 'CommitTransactionRequest')
    CommitTransactionResponse = Shapes::StructureShape.new(name: 'CommitTransactionResponse')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CreateDataCellsFilterRequest = Shapes::StructureShape.new(name: 'CreateDataCellsFilterRequest')
    CreateDataCellsFilterResponse = Shapes::StructureShape.new(name: 'CreateDataCellsFilterResponse')
    CreateLFTagRequest = Shapes::StructureShape.new(name: 'CreateLFTagRequest')
    CreateLFTagResponse = Shapes::StructureShape.new(name: 'CreateLFTagResponse')
    CredentialTimeoutDurationSecondInteger = Shapes::IntegerShape.new(name: 'CredentialTimeoutDurationSecondInteger')
    DataCellsFilter = Shapes::StructureShape.new(name: 'DataCellsFilter')
    DataCellsFilterList = Shapes::ListShape.new(name: 'DataCellsFilterList')
    DataCellsFilterResource = Shapes::StructureShape.new(name: 'DataCellsFilterResource')
    DataLakePrincipal = Shapes::StructureShape.new(name: 'DataLakePrincipal')
    DataLakePrincipalList = Shapes::ListShape.new(name: 'DataLakePrincipalList')
    DataLakePrincipalString = Shapes::StringShape.new(name: 'DataLakePrincipalString')
    DataLakeResourceType = Shapes::StringShape.new(name: 'DataLakeResourceType')
    DataLakeSettings = Shapes::StructureShape.new(name: 'DataLakeSettings')
    DataLocationResource = Shapes::StructureShape.new(name: 'DataLocationResource')
    DatabaseLFTagsList = Shapes::ListShape.new(name: 'DatabaseLFTagsList')
    DatabaseResource = Shapes::StructureShape.new(name: 'DatabaseResource')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DeleteDataCellsFilterRequest = Shapes::StructureShape.new(name: 'DeleteDataCellsFilterRequest')
    DeleteDataCellsFilterResponse = Shapes::StructureShape.new(name: 'DeleteDataCellsFilterResponse')
    DeleteLFTagRequest = Shapes::StructureShape.new(name: 'DeleteLFTagRequest')
    DeleteLFTagResponse = Shapes::StructureShape.new(name: 'DeleteLFTagResponse')
    DeleteObjectInput = Shapes::StructureShape.new(name: 'DeleteObjectInput')
    DeleteObjectsOnCancelRequest = Shapes::StructureShape.new(name: 'DeleteObjectsOnCancelRequest')
    DeleteObjectsOnCancelResponse = Shapes::StructureShape.new(name: 'DeleteObjectsOnCancelResponse')
    DeregisterResourceRequest = Shapes::StructureShape.new(name: 'DeregisterResourceRequest')
    DeregisterResourceResponse = Shapes::StructureShape.new(name: 'DeregisterResourceResponse')
    DescribeResourceRequest = Shapes::StructureShape.new(name: 'DescribeResourceRequest')
    DescribeResourceResponse = Shapes::StructureShape.new(name: 'DescribeResourceResponse')
    DescribeTransactionRequest = Shapes::StructureShape.new(name: 'DescribeTransactionRequest')
    DescribeTransactionResponse = Shapes::StructureShape.new(name: 'DescribeTransactionResponse')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    DetailsMap = Shapes::StructureShape.new(name: 'DetailsMap')
    ETagString = Shapes::StringShape.new(name: 'ETagString')
    EntityNotFoundException = Shapes::StructureShape.new(name: 'EntityNotFoundException')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorMessageString = Shapes::StringShape.new(name: 'ErrorMessageString')
    ExecutionStatistics = Shapes::StructureShape.new(name: 'ExecutionStatistics')
    ExpirationTimestamp = Shapes::TimestampShape.new(name: 'ExpirationTimestamp')
    ExpiredException = Shapes::StructureShape.new(name: 'ExpiredException')
    Expression = Shapes::ListShape.new(name: 'Expression')
    ExtendTransactionRequest = Shapes::StructureShape.new(name: 'ExtendTransactionRequest')
    ExtendTransactionResponse = Shapes::StructureShape.new(name: 'ExtendTransactionResponse')
    FieldNameString = Shapes::StringShape.new(name: 'FieldNameString')
    FilterCondition = Shapes::StructureShape.new(name: 'FilterCondition')
    FilterConditionList = Shapes::ListShape.new(name: 'FilterConditionList')
    GetDataCellsFilterRequest = Shapes::StructureShape.new(name: 'GetDataCellsFilterRequest')
    GetDataCellsFilterResponse = Shapes::StructureShape.new(name: 'GetDataCellsFilterResponse')
    GetDataLakeSettingsRequest = Shapes::StructureShape.new(name: 'GetDataLakeSettingsRequest')
    GetDataLakeSettingsResponse = Shapes::StructureShape.new(name: 'GetDataLakeSettingsResponse')
    GetEffectivePermissionsForPathRequest = Shapes::StructureShape.new(name: 'GetEffectivePermissionsForPathRequest')
    GetEffectivePermissionsForPathResponse = Shapes::StructureShape.new(name: 'GetEffectivePermissionsForPathResponse')
    GetLFTagRequest = Shapes::StructureShape.new(name: 'GetLFTagRequest')
    GetLFTagResponse = Shapes::StructureShape.new(name: 'GetLFTagResponse')
    GetQueryStateRequest = Shapes::StructureShape.new(name: 'GetQueryStateRequest')
    GetQueryStateRequestQueryIdString = Shapes::StringShape.new(name: 'GetQueryStateRequestQueryIdString')
    GetQueryStateResponse = Shapes::StructureShape.new(name: 'GetQueryStateResponse')
    GetQueryStatisticsRequest = Shapes::StructureShape.new(name: 'GetQueryStatisticsRequest')
    GetQueryStatisticsRequestQueryIdString = Shapes::StringShape.new(name: 'GetQueryStatisticsRequestQueryIdString')
    GetQueryStatisticsResponse = Shapes::StructureShape.new(name: 'GetQueryStatisticsResponse')
    GetResourceLFTagsRequest = Shapes::StructureShape.new(name: 'GetResourceLFTagsRequest')
    GetResourceLFTagsResponse = Shapes::StructureShape.new(name: 'GetResourceLFTagsResponse')
    GetTableObjectsRequest = Shapes::StructureShape.new(name: 'GetTableObjectsRequest')
    GetTableObjectsResponse = Shapes::StructureShape.new(name: 'GetTableObjectsResponse')
    GetTemporaryGluePartitionCredentialsRequest = Shapes::StructureShape.new(name: 'GetTemporaryGluePartitionCredentialsRequest')
    GetTemporaryGluePartitionCredentialsResponse = Shapes::StructureShape.new(name: 'GetTemporaryGluePartitionCredentialsResponse')
    GetTemporaryGlueTableCredentialsRequest = Shapes::StructureShape.new(name: 'GetTemporaryGlueTableCredentialsRequest')
    GetTemporaryGlueTableCredentialsResponse = Shapes::StructureShape.new(name: 'GetTemporaryGlueTableCredentialsResponse')
    GetWorkUnitResultsRequest = Shapes::StructureShape.new(name: 'GetWorkUnitResultsRequest')
    GetWorkUnitResultsRequestQueryIdString = Shapes::StringShape.new(name: 'GetWorkUnitResultsRequestQueryIdString')
    GetWorkUnitResultsRequestWorkUnitIdLong = Shapes::IntegerShape.new(name: 'GetWorkUnitResultsRequestWorkUnitIdLong')
    GetWorkUnitResultsResponse = Shapes::StructureShape.new(name: 'GetWorkUnitResultsResponse')
    GetWorkUnitsRequest = Shapes::StructureShape.new(name: 'GetWorkUnitsRequest')
    GetWorkUnitsRequestQueryIdString = Shapes::StringShape.new(name: 'GetWorkUnitsRequestQueryIdString')
    GetWorkUnitsResponse = Shapes::StructureShape.new(name: 'GetWorkUnitsResponse')
    GlueEncryptionException = Shapes::StructureShape.new(name: 'GlueEncryptionException')
    GrantPermissionsRequest = Shapes::StructureShape.new(name: 'GrantPermissionsRequest')
    GrantPermissionsResponse = Shapes::StructureShape.new(name: 'GrantPermissionsResponse')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    IAMSAMLProviderArn = Shapes::StringShape.new(name: 'IAMSAMLProviderArn')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    KeyString = Shapes::StringShape.new(name: 'KeyString')
    LFTag = Shapes::StructureShape.new(name: 'LFTag')
    LFTagError = Shapes::StructureShape.new(name: 'LFTagError')
    LFTagErrors = Shapes::ListShape.new(name: 'LFTagErrors')
    LFTagKey = Shapes::StringShape.new(name: 'LFTagKey')
    LFTagKeyResource = Shapes::StructureShape.new(name: 'LFTagKeyResource')
    LFTagPair = Shapes::StructureShape.new(name: 'LFTagPair')
    LFTagPolicyResource = Shapes::StructureShape.new(name: 'LFTagPolicyResource')
    LFTagValue = Shapes::StringShape.new(name: 'LFTagValue')
    LFTagsList = Shapes::ListShape.new(name: 'LFTagsList')
    LastModifiedTimestamp = Shapes::TimestampShape.new(name: 'LastModifiedTimestamp')
    ListDataCellsFilterRequest = Shapes::StructureShape.new(name: 'ListDataCellsFilterRequest')
    ListDataCellsFilterResponse = Shapes::StructureShape.new(name: 'ListDataCellsFilterResponse')
    ListLFTagsRequest = Shapes::StructureShape.new(name: 'ListLFTagsRequest')
    ListLFTagsResponse = Shapes::StructureShape.new(name: 'ListLFTagsResponse')
    ListPermissionsRequest = Shapes::StructureShape.new(name: 'ListPermissionsRequest')
    ListPermissionsResponse = Shapes::StructureShape.new(name: 'ListPermissionsResponse')
    ListResourcesRequest = Shapes::StructureShape.new(name: 'ListResourcesRequest')
    ListResourcesResponse = Shapes::StructureShape.new(name: 'ListResourcesResponse')
    ListTableStorageOptimizersRequest = Shapes::StructureShape.new(name: 'ListTableStorageOptimizersRequest')
    ListTableStorageOptimizersResponse = Shapes::StructureShape.new(name: 'ListTableStorageOptimizersResponse')
    ListTransactionsRequest = Shapes::StructureShape.new(name: 'ListTransactionsRequest')
    ListTransactionsResponse = Shapes::StructureShape.new(name: 'ListTransactionsResponse')
    MessageString = Shapes::StringShape.new(name: 'MessageString')
    NameString = Shapes::StringShape.new(name: 'NameString')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NumberOfBytes = Shapes::IntegerShape.new(name: 'NumberOfBytes')
    NumberOfItems = Shapes::IntegerShape.new(name: 'NumberOfItems')
    NumberOfMilliseconds = Shapes::IntegerShape.new(name: 'NumberOfMilliseconds')
    ObjectSize = Shapes::IntegerShape.new(name: 'ObjectSize')
    OperationTimeoutException = Shapes::StructureShape.new(name: 'OperationTimeoutException')
    OptimizerType = Shapes::StringShape.new(name: 'OptimizerType')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    ParametersMap = Shapes::MapShape.new(name: 'ParametersMap')
    ParametersMapValue = Shapes::StringShape.new(name: 'ParametersMapValue')
    PartitionObjects = Shapes::StructureShape.new(name: 'PartitionObjects')
    PartitionValueList = Shapes::StructureShape.new(name: 'PartitionValueList')
    PartitionValueString = Shapes::StringShape.new(name: 'PartitionValueString')
    PartitionValuesList = Shapes::ListShape.new(name: 'PartitionValuesList')
    PartitionedTableObjectsList = Shapes::ListShape.new(name: 'PartitionedTableObjectsList')
    Permission = Shapes::StringShape.new(name: 'Permission')
    PermissionList = Shapes::ListShape.new(name: 'PermissionList')
    PermissionType = Shapes::StringShape.new(name: 'PermissionType')
    PermissionTypeList = Shapes::ListShape.new(name: 'PermissionTypeList')
    PermissionTypeMismatchException = Shapes::StructureShape.new(name: 'PermissionTypeMismatchException')
    PlanningStatistics = Shapes::StructureShape.new(name: 'PlanningStatistics')
    PredicateString = Shapes::StringShape.new(name: 'PredicateString')
    PrincipalPermissions = Shapes::StructureShape.new(name: 'PrincipalPermissions')
    PrincipalPermissionsList = Shapes::ListShape.new(name: 'PrincipalPermissionsList')
    PrincipalResourcePermissions = Shapes::StructureShape.new(name: 'PrincipalResourcePermissions')
    PrincipalResourcePermissionsList = Shapes::ListShape.new(name: 'PrincipalResourcePermissionsList')
    PutDataLakeSettingsRequest = Shapes::StructureShape.new(name: 'PutDataLakeSettingsRequest')
    PutDataLakeSettingsResponse = Shapes::StructureShape.new(name: 'PutDataLakeSettingsResponse')
    QueryIdString = Shapes::StringShape.new(name: 'QueryIdString')
    QueryParameterMap = Shapes::MapShape.new(name: 'QueryParameterMap')
    QueryPlanningContext = Shapes::StructureShape.new(name: 'QueryPlanningContext')
    QueryPlanningContextDatabaseNameString = Shapes::StringShape.new(name: 'QueryPlanningContextDatabaseNameString')
    QueryStateString = Shapes::StringShape.new(name: 'QueryStateString')
    RAMResourceShareArn = Shapes::StringShape.new(name: 'RAMResourceShareArn')
    RegisterResourceRequest = Shapes::StructureShape.new(name: 'RegisterResourceRequest')
    RegisterResourceResponse = Shapes::StructureShape.new(name: 'RegisterResourceResponse')
    RemoveLFTagsFromResourceRequest = Shapes::StructureShape.new(name: 'RemoveLFTagsFromResourceRequest')
    RemoveLFTagsFromResourceResponse = Shapes::StructureShape.new(name: 'RemoveLFTagsFromResourceResponse')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceArnString = Shapes::StringShape.new(name: 'ResourceArnString')
    ResourceInfo = Shapes::StructureShape.new(name: 'ResourceInfo')
    ResourceInfoList = Shapes::ListShape.new(name: 'ResourceInfoList')
    ResourceNotReadyException = Shapes::StructureShape.new(name: 'ResourceNotReadyException')
    ResourceNumberLimitExceededException = Shapes::StructureShape.new(name: 'ResourceNumberLimitExceededException')
    ResourceShareList = Shapes::ListShape.new(name: 'ResourceShareList')
    ResourceShareType = Shapes::StringShape.new(name: 'ResourceShareType')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Result = Shapes::StringShape.new(name: 'Result')
    ResultStream = Shapes::BlobShape.new(name: 'ResultStream', streaming: true)
    RevokePermissionsRequest = Shapes::StructureShape.new(name: 'RevokePermissionsRequest')
    RevokePermissionsResponse = Shapes::StructureShape.new(name: 'RevokePermissionsResponse')
    RowFilter = Shapes::StructureShape.new(name: 'RowFilter')
    SAMLAssertionString = Shapes::StringShape.new(name: 'SAMLAssertionString')
    SearchDatabasesByLFTagsRequest = Shapes::StructureShape.new(name: 'SearchDatabasesByLFTagsRequest')
    SearchDatabasesByLFTagsResponse = Shapes::StructureShape.new(name: 'SearchDatabasesByLFTagsResponse')
    SearchPageSize = Shapes::IntegerShape.new(name: 'SearchPageSize')
    SearchTablesByLFTagsRequest = Shapes::StructureShape.new(name: 'SearchTablesByLFTagsRequest')
    SearchTablesByLFTagsResponse = Shapes::StructureShape.new(name: 'SearchTablesByLFTagsResponse')
    SecretAccessKeyString = Shapes::StringShape.new(name: 'SecretAccessKeyString')
    SessionTokenString = Shapes::StringShape.new(name: 'SessionTokenString')
    StartQueryPlanningRequest = Shapes::StructureShape.new(name: 'StartQueryPlanningRequest')
    StartQueryPlanningResponse = Shapes::StructureShape.new(name: 'StartQueryPlanningResponse')
    StartTransactionRequest = Shapes::StructureShape.new(name: 'StartTransactionRequest')
    StartTransactionResponse = Shapes::StructureShape.new(name: 'StartTransactionResponse')
    StatisticsNotReadyYetException = Shapes::StructureShape.new(name: 'StatisticsNotReadyYetException')
    StorageOptimizer = Shapes::StructureShape.new(name: 'StorageOptimizer')
    StorageOptimizerConfig = Shapes::MapShape.new(name: 'StorageOptimizerConfig')
    StorageOptimizerConfigKey = Shapes::StringShape.new(name: 'StorageOptimizerConfigKey')
    StorageOptimizerConfigMap = Shapes::MapShape.new(name: 'StorageOptimizerConfigMap')
    StorageOptimizerConfigValue = Shapes::StringShape.new(name: 'StorageOptimizerConfigValue')
    StorageOptimizerList = Shapes::ListShape.new(name: 'StorageOptimizerList')
    String = Shapes::StringShape.new(name: 'String')
    StringValue = Shapes::StringShape.new(name: 'StringValue')
    StringValueList = Shapes::ListShape.new(name: 'StringValueList')
    SyntheticGetWorkUnitResultsRequestWorkUnitTokenString = Shapes::StringShape.new(name: 'SyntheticGetWorkUnitResultsRequestWorkUnitTokenString')
    SyntheticStartQueryPlanningRequestQueryString = Shapes::StringShape.new(name: 'SyntheticStartQueryPlanningRequestQueryString')
    TableLFTagsList = Shapes::ListShape.new(name: 'TableLFTagsList')
    TableObject = Shapes::StructureShape.new(name: 'TableObject')
    TableObjectList = Shapes::ListShape.new(name: 'TableObjectList')
    TableResource = Shapes::StructureShape.new(name: 'TableResource')
    TableWildcard = Shapes::StructureShape.new(name: 'TableWildcard')
    TableWithColumnsResource = Shapes::StructureShape.new(name: 'TableWithColumnsResource')
    TagValueList = Shapes::ListShape.new(name: 'TagValueList')
    TaggedDatabase = Shapes::StructureShape.new(name: 'TaggedDatabase')
    TaggedTable = Shapes::StructureShape.new(name: 'TaggedTable')
    ThrottledException = Shapes::StructureShape.new(name: 'ThrottledException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    TokenString = Shapes::StringShape.new(name: 'TokenString')
    TransactionCanceledException = Shapes::StructureShape.new(name: 'TransactionCanceledException')
    TransactionCommitInProgressException = Shapes::StructureShape.new(name: 'TransactionCommitInProgressException')
    TransactionCommittedException = Shapes::StructureShape.new(name: 'TransactionCommittedException')
    TransactionDescription = Shapes::StructureShape.new(name: 'TransactionDescription')
    TransactionDescriptionList = Shapes::ListShape.new(name: 'TransactionDescriptionList')
    TransactionIdString = Shapes::StringShape.new(name: 'TransactionIdString')
    TransactionStatus = Shapes::StringShape.new(name: 'TransactionStatus')
    TransactionStatusFilter = Shapes::StringShape.new(name: 'TransactionStatusFilter')
    TransactionType = Shapes::StringShape.new(name: 'TransactionType')
    TrueFalseString = Shapes::StringShape.new(name: 'TrueFalseString')
    TrustedResourceOwners = Shapes::ListShape.new(name: 'TrustedResourceOwners')
    URI = Shapes::StringShape.new(name: 'URI')
    UpdateDataCellsFilterRequest = Shapes::StructureShape.new(name: 'UpdateDataCellsFilterRequest')
    UpdateDataCellsFilterResponse = Shapes::StructureShape.new(name: 'UpdateDataCellsFilterResponse')
    UpdateLFTagRequest = Shapes::StructureShape.new(name: 'UpdateLFTagRequest')
    UpdateLFTagResponse = Shapes::StructureShape.new(name: 'UpdateLFTagResponse')
    UpdateResourceRequest = Shapes::StructureShape.new(name: 'UpdateResourceRequest')
    UpdateResourceResponse = Shapes::StructureShape.new(name: 'UpdateResourceResponse')
    UpdateTableObjectsRequest = Shapes::StructureShape.new(name: 'UpdateTableObjectsRequest')
    UpdateTableObjectsResponse = Shapes::StructureShape.new(name: 'UpdateTableObjectsResponse')
    UpdateTableStorageOptimizerRequest = Shapes::StructureShape.new(name: 'UpdateTableStorageOptimizerRequest')
    UpdateTableStorageOptimizerResponse = Shapes::StructureShape.new(name: 'UpdateTableStorageOptimizerResponse')
    ValueString = Shapes::StringShape.new(name: 'ValueString')
    ValueStringList = Shapes::ListShape.new(name: 'ValueStringList')
    VersionString = Shapes::StringShape.new(name: 'VersionString')
    VirtualObject = Shapes::StructureShape.new(name: 'VirtualObject')
    VirtualObjectList = Shapes::ListShape.new(name: 'VirtualObjectList')
    WorkUnitIdLong = Shapes::IntegerShape.new(name: 'WorkUnitIdLong')
    WorkUnitRange = Shapes::StructureShape.new(name: 'WorkUnitRange')
    WorkUnitRangeList = Shapes::ListShape.new(name: 'WorkUnitRangeList')
    WorkUnitTokenString = Shapes::StringShape.new(name: 'WorkUnitTokenString')
    WorkUnitsNotReadyYetException = Shapes::StructureShape.new(name: 'WorkUnitsNotReadyYetException')
    WriteOperation = Shapes::StructureShape.new(name: 'WriteOperation')
    WriteOperationList = Shapes::ListShape.new(name: 'WriteOperationList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddLFTagsToResourceRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    AddLFTagsToResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    AddLFTagsToResourceRequest.add_member(:lf_tags, Shapes::ShapeRef.new(shape: LFTagsList, required: true, location_name: "LFTags"))
    AddLFTagsToResourceRequest.struct_class = Types::AddLFTagsToResourceRequest

    AddLFTagsToResourceResponse.add_member(:failures, Shapes::ShapeRef.new(shape: LFTagErrors, location_name: "Failures"))
    AddLFTagsToResourceResponse.struct_class = Types::AddLFTagsToResourceResponse

    AddObjectInput.add_member(:uri, Shapes::ShapeRef.new(shape: URI, required: true, location_name: "Uri"))
    AddObjectInput.add_member(:etag, Shapes::ShapeRef.new(shape: ETagString, required: true, location_name: "ETag"))
    AddObjectInput.add_member(:size, Shapes::ShapeRef.new(shape: ObjectSize, required: true, location_name: "Size"))
    AddObjectInput.add_member(:partition_values, Shapes::ShapeRef.new(shape: PartitionValuesList, location_name: "PartitionValues"))
    AddObjectInput.struct_class = Types::AddObjectInput

    AllRowsWildcard.struct_class = Types::AllRowsWildcard

    AlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    AssumeDecoratedRoleWithSAMLRequest.add_member(:saml_assertion, Shapes::ShapeRef.new(shape: SAMLAssertionString, required: true, location_name: "SAMLAssertion"))
    AssumeDecoratedRoleWithSAMLRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "RoleArn"))
    AssumeDecoratedRoleWithSAMLRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: IAMSAMLProviderArn, required: true, location_name: "PrincipalArn"))
    AssumeDecoratedRoleWithSAMLRequest.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: CredentialTimeoutDurationSecondInteger, location_name: "DurationSeconds"))
    AssumeDecoratedRoleWithSAMLRequest.struct_class = Types::AssumeDecoratedRoleWithSAMLRequest

    AssumeDecoratedRoleWithSAMLResponse.add_member(:access_key_id, Shapes::ShapeRef.new(shape: AccessKeyIdString, location_name: "AccessKeyId"))
    AssumeDecoratedRoleWithSAMLResponse.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: SecretAccessKeyString, location_name: "SecretAccessKey"))
    AssumeDecoratedRoleWithSAMLResponse.add_member(:session_token, Shapes::ShapeRef.new(shape: SessionTokenString, location_name: "SessionToken"))
    AssumeDecoratedRoleWithSAMLResponse.add_member(:expiration, Shapes::ShapeRef.new(shape: ExpirationTimestamp, location_name: "Expiration"))
    AssumeDecoratedRoleWithSAMLResponse.struct_class = Types::AssumeDecoratedRoleWithSAMLResponse

    AuditContext.add_member(:additional_audit_context, Shapes::ShapeRef.new(shape: AuditContextString, location_name: "AdditionalAuditContext"))
    AuditContext.struct_class = Types::AuditContext

    AuthorizedSessionTagValueList.member = Shapes::ShapeRef.new(shape: NameString)

    BatchGrantPermissionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchGrantPermissionsRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntryList, required: true, location_name: "Entries"))
    BatchGrantPermissionsRequest.struct_class = Types::BatchGrantPermissionsRequest

    BatchGrantPermissionsResponse.add_member(:failures, Shapes::ShapeRef.new(shape: BatchPermissionsFailureList, location_name: "Failures"))
    BatchGrantPermissionsResponse.struct_class = Types::BatchGrantPermissionsResponse

    BatchPermissionsFailureEntry.add_member(:request_entry, Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntry, location_name: "RequestEntry"))
    BatchPermissionsFailureEntry.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "Error"))
    BatchPermissionsFailureEntry.struct_class = Types::BatchPermissionsFailureEntry

    BatchPermissionsFailureList.member = Shapes::ShapeRef.new(shape: BatchPermissionsFailureEntry)

    BatchPermissionsRequestEntry.add_member(:id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Id"))
    BatchPermissionsRequestEntry.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: "Principal"))
    BatchPermissionsRequestEntry.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, location_name: "Resource"))
    BatchPermissionsRequestEntry.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    BatchPermissionsRequestEntry.add_member(:permissions_with_grant_option, Shapes::ShapeRef.new(shape: PermissionList, location_name: "PermissionsWithGrantOption"))
    BatchPermissionsRequestEntry.struct_class = Types::BatchPermissionsRequestEntry

    BatchPermissionsRequestEntryList.member = Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntry)

    BatchRevokePermissionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchRevokePermissionsRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntryList, required: true, location_name: "Entries"))
    BatchRevokePermissionsRequest.struct_class = Types::BatchRevokePermissionsRequest

    BatchRevokePermissionsResponse.add_member(:failures, Shapes::ShapeRef.new(shape: BatchPermissionsFailureList, location_name: "Failures"))
    BatchRevokePermissionsResponse.struct_class = Types::BatchRevokePermissionsResponse

    CancelTransactionRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, required: true, location_name: "TransactionId"))
    CancelTransactionRequest.struct_class = Types::CancelTransactionRequest

    CancelTransactionResponse.struct_class = Types::CancelTransactionResponse

    CatalogResource.struct_class = Types::CatalogResource

    ColumnLFTag.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    ColumnLFTag.add_member(:lf_tags, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTags"))
    ColumnLFTag.struct_class = Types::ColumnLFTag

    ColumnLFTagsList.member = Shapes::ShapeRef.new(shape: ColumnLFTag)

    ColumnNames.member = Shapes::ShapeRef.new(shape: NameString)

    ColumnWildcard.add_member(:excluded_column_names, Shapes::ShapeRef.new(shape: ColumnNames, location_name: "ExcludedColumnNames"))
    ColumnWildcard.struct_class = Types::ColumnWildcard

    CommitTransactionRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, required: true, location_name: "TransactionId"))
    CommitTransactionRequest.struct_class = Types::CommitTransactionRequest

    CommitTransactionResponse.add_member(:transaction_status, Shapes::ShapeRef.new(shape: TransactionStatus, location_name: "TransactionStatus"))
    CommitTransactionResponse.struct_class = Types::CommitTransactionResponse

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    CreateDataCellsFilterRequest.add_member(:table_data, Shapes::ShapeRef.new(shape: DataCellsFilter, required: true, location_name: "TableData"))
    CreateDataCellsFilterRequest.struct_class = Types::CreateDataCellsFilterRequest

    CreateDataCellsFilterResponse.struct_class = Types::CreateDataCellsFilterResponse

    CreateLFTagRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateLFTagRequest.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    CreateLFTagRequest.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, required: true, location_name: "TagValues"))
    CreateLFTagRequest.struct_class = Types::CreateLFTagRequest

    CreateLFTagResponse.struct_class = Types::CreateLFTagResponse

    DataCellsFilter.add_member(:table_catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "TableCatalogId"))
    DataCellsFilter.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DataCellsFilter.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DataCellsFilter.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DataCellsFilter.add_member(:row_filter, Shapes::ShapeRef.new(shape: RowFilter, location_name: "RowFilter"))
    DataCellsFilter.add_member(:column_names, Shapes::ShapeRef.new(shape: ColumnNames, location_name: "ColumnNames"))
    DataCellsFilter.add_member(:column_wildcard, Shapes::ShapeRef.new(shape: ColumnWildcard, location_name: "ColumnWildcard"))
    DataCellsFilter.add_member(:version_id, Shapes::ShapeRef.new(shape: VersionString, location_name: "VersionId"))
    DataCellsFilter.struct_class = Types::DataCellsFilter

    DataCellsFilterList.member = Shapes::ShapeRef.new(shape: DataCellsFilter)

    DataCellsFilterResource.add_member(:table_catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "TableCatalogId"))
    DataCellsFilterResource.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DatabaseName"))
    DataCellsFilterResource.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, location_name: "TableName"))
    DataCellsFilterResource.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    DataCellsFilterResource.struct_class = Types::DataCellsFilterResource

    DataLakePrincipal.add_member(:data_lake_principal_identifier, Shapes::ShapeRef.new(shape: DataLakePrincipalString, location_name: "DataLakePrincipalIdentifier"))
    DataLakePrincipal.struct_class = Types::DataLakePrincipal

    DataLakePrincipalList.member = Shapes::ShapeRef.new(shape: DataLakePrincipal)

    DataLakeSettings.add_member(:data_lake_admins, Shapes::ShapeRef.new(shape: DataLakePrincipalList, location_name: "DataLakeAdmins"))
    DataLakeSettings.add_member(:read_only_admins, Shapes::ShapeRef.new(shape: DataLakePrincipalList, location_name: "ReadOnlyAdmins"))
    DataLakeSettings.add_member(:create_database_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateDatabaseDefaultPermissions"))
    DataLakeSettings.add_member(:create_table_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateTableDefaultPermissions"))
    DataLakeSettings.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    DataLakeSettings.add_member(:trusted_resource_owners, Shapes::ShapeRef.new(shape: TrustedResourceOwners, location_name: "TrustedResourceOwners"))
    DataLakeSettings.add_member(:allow_external_data_filtering, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "AllowExternalDataFiltering"))
    DataLakeSettings.add_member(:allow_full_table_external_data_access, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "AllowFullTableExternalDataAccess"))
    DataLakeSettings.add_member(:external_data_filtering_allow_list, Shapes::ShapeRef.new(shape: DataLakePrincipalList, location_name: "ExternalDataFilteringAllowList"))
    DataLakeSettings.add_member(:authorized_session_tag_value_list, Shapes::ShapeRef.new(shape: AuthorizedSessionTagValueList, location_name: "AuthorizedSessionTagValueList"))
    DataLakeSettings.struct_class = Types::DataLakeSettings

    DataLocationResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DataLocationResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    DataLocationResource.struct_class = Types::DataLocationResource

    DatabaseLFTagsList.member = Shapes::ShapeRef.new(shape: TaggedDatabase)

    DatabaseResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DatabaseResource.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DatabaseResource.struct_class = Types::DatabaseResource

    DeleteDataCellsFilterRequest.add_member(:table_catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "TableCatalogId"))
    DeleteDataCellsFilterRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DatabaseName"))
    DeleteDataCellsFilterRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, location_name: "TableName"))
    DeleteDataCellsFilterRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    DeleteDataCellsFilterRequest.struct_class = Types::DeleteDataCellsFilterRequest

    DeleteDataCellsFilterResponse.struct_class = Types::DeleteDataCellsFilterResponse

    DeleteLFTagRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteLFTagRequest.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    DeleteLFTagRequest.struct_class = Types::DeleteLFTagRequest

    DeleteLFTagResponse.struct_class = Types::DeleteLFTagResponse

    DeleteObjectInput.add_member(:uri, Shapes::ShapeRef.new(shape: URI, required: true, location_name: "Uri"))
    DeleteObjectInput.add_member(:etag, Shapes::ShapeRef.new(shape: ETagString, location_name: "ETag"))
    DeleteObjectInput.add_member(:partition_values, Shapes::ShapeRef.new(shape: PartitionValuesList, location_name: "PartitionValues"))
    DeleteObjectInput.struct_class = Types::DeleteObjectInput

    DeleteObjectsOnCancelRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteObjectsOnCancelRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeleteObjectsOnCancelRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DeleteObjectsOnCancelRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, required: true, location_name: "TransactionId"))
    DeleteObjectsOnCancelRequest.add_member(:objects, Shapes::ShapeRef.new(shape: VirtualObjectList, required: true, location_name: "Objects"))
    DeleteObjectsOnCancelRequest.struct_class = Types::DeleteObjectsOnCancelRequest

    DeleteObjectsOnCancelResponse.struct_class = Types::DeleteObjectsOnCancelResponse

    DeregisterResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    DeregisterResourceRequest.struct_class = Types::DeregisterResourceRequest

    DeregisterResourceResponse.struct_class = Types::DeregisterResourceResponse

    DescribeResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    DescribeResourceRequest.struct_class = Types::DescribeResourceRequest

    DescribeResourceResponse.add_member(:resource_info, Shapes::ShapeRef.new(shape: ResourceInfo, location_name: "ResourceInfo"))
    DescribeResourceResponse.struct_class = Types::DescribeResourceResponse

    DescribeTransactionRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, required: true, location_name: "TransactionId"))
    DescribeTransactionRequest.struct_class = Types::DescribeTransactionRequest

    DescribeTransactionResponse.add_member(:transaction_description, Shapes::ShapeRef.new(shape: TransactionDescription, location_name: "TransactionDescription"))
    DescribeTransactionResponse.struct_class = Types::DescribeTransactionResponse

    DetailsMap.add_member(:resource_share, Shapes::ShapeRef.new(shape: ResourceShareList, location_name: "ResourceShare"))
    DetailsMap.struct_class = Types::DetailsMap

    EntityNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    EntityNotFoundException.struct_class = Types::EntityNotFoundException

    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: NameString, location_name: "ErrorCode"))
    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ExecutionStatistics.add_member(:average_execution_time_millis, Shapes::ShapeRef.new(shape: NumberOfMilliseconds, location_name: "AverageExecutionTimeMillis"))
    ExecutionStatistics.add_member(:data_scanned_bytes, Shapes::ShapeRef.new(shape: NumberOfBytes, location_name: "DataScannedBytes"))
    ExecutionStatistics.add_member(:work_units_executed_count, Shapes::ShapeRef.new(shape: NumberOfItems, location_name: "WorkUnitsExecutedCount"))
    ExecutionStatistics.struct_class = Types::ExecutionStatistics

    ExpiredException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ExpiredException.struct_class = Types::ExpiredException

    Expression.member = Shapes::ShapeRef.new(shape: LFTag)

    ExtendTransactionRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
    ExtendTransactionRequest.struct_class = Types::ExtendTransactionRequest

    ExtendTransactionResponse.struct_class = Types::ExtendTransactionResponse

    FilterCondition.add_member(:field, Shapes::ShapeRef.new(shape: FieldNameString, location_name: "Field"))
    FilterCondition.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator"))
    FilterCondition.add_member(:string_value_list, Shapes::ShapeRef.new(shape: StringValueList, location_name: "StringValueList"))
    FilterCondition.struct_class = Types::FilterCondition

    FilterConditionList.member = Shapes::ShapeRef.new(shape: FilterCondition)

    GetDataCellsFilterRequest.add_member(:table_catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "TableCatalogId"))
    GetDataCellsFilterRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetDataCellsFilterRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetDataCellsFilterRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetDataCellsFilterRequest.struct_class = Types::GetDataCellsFilterRequest

    GetDataCellsFilterResponse.add_member(:data_cells_filter, Shapes::ShapeRef.new(shape: DataCellsFilter, location_name: "DataCellsFilter"))
    GetDataCellsFilterResponse.struct_class = Types::GetDataCellsFilterResponse

    GetDataLakeSettingsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetDataLakeSettingsRequest.struct_class = Types::GetDataLakeSettingsRequest

    GetDataLakeSettingsResponse.add_member(:data_lake_settings, Shapes::ShapeRef.new(shape: DataLakeSettings, location_name: "DataLakeSettings"))
    GetDataLakeSettingsResponse.struct_class = Types::GetDataLakeSettingsResponse

    GetEffectivePermissionsForPathRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetEffectivePermissionsForPathRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    GetEffectivePermissionsForPathRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetEffectivePermissionsForPathRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetEffectivePermissionsForPathRequest.struct_class = Types::GetEffectivePermissionsForPathRequest

    GetEffectivePermissionsForPathResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: PrincipalResourcePermissionsList, location_name: "Permissions"))
    GetEffectivePermissionsForPathResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetEffectivePermissionsForPathResponse.struct_class = Types::GetEffectivePermissionsForPathResponse

    GetLFTagRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetLFTagRequest.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    GetLFTagRequest.struct_class = Types::GetLFTagRequest

    GetLFTagResponse.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetLFTagResponse.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, location_name: "TagKey"))
    GetLFTagResponse.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    GetLFTagResponse.struct_class = Types::GetLFTagResponse

    GetQueryStateRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: GetQueryStateRequestQueryIdString, required: true, location_name: "QueryId"))
    GetQueryStateRequest.struct_class = Types::GetQueryStateRequest

    GetQueryStateResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: "Error"))
    GetQueryStateResponse.add_member(:state, Shapes::ShapeRef.new(shape: QueryStateString, required: true, location_name: "State"))
    GetQueryStateResponse.struct_class = Types::GetQueryStateResponse

    GetQueryStatisticsRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: GetQueryStatisticsRequestQueryIdString, required: true, location_name: "QueryId"))
    GetQueryStatisticsRequest.struct_class = Types::GetQueryStatisticsRequest

    GetQueryStatisticsResponse.add_member(:execution_statistics, Shapes::ShapeRef.new(shape: ExecutionStatistics, location_name: "ExecutionStatistics"))
    GetQueryStatisticsResponse.add_member(:planning_statistics, Shapes::ShapeRef.new(shape: PlanningStatistics, location_name: "PlanningStatistics"))
    GetQueryStatisticsResponse.add_member(:query_submission_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "QuerySubmissionTime"))
    GetQueryStatisticsResponse.struct_class = Types::GetQueryStatisticsResponse

    GetResourceLFTagsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetResourceLFTagsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    GetResourceLFTagsRequest.add_member(:show_assigned_lf_tags, Shapes::ShapeRef.new(shape: BooleanNullable, location_name: "ShowAssignedLFTags"))
    GetResourceLFTagsRequest.struct_class = Types::GetResourceLFTagsRequest

    GetResourceLFTagsResponse.add_member(:lf_tag_on_database, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTagOnDatabase"))
    GetResourceLFTagsResponse.add_member(:lf_tags_on_table, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTagsOnTable"))
    GetResourceLFTagsResponse.add_member(:lf_tags_on_columns, Shapes::ShapeRef.new(shape: ColumnLFTagsList, location_name: "LFTagsOnColumns"))
    GetResourceLFTagsResponse.struct_class = Types::GetResourceLFTagsResponse

    GetTableObjectsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetTableObjectsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetTableObjectsRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetTableObjectsRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
    GetTableObjectsRequest.add_member(:query_as_of_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "QueryAsOfTime"))
    GetTableObjectsRequest.add_member(:partition_predicate, Shapes::ShapeRef.new(shape: PredicateString, location_name: "PartitionPredicate"))
    GetTableObjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetTableObjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: TokenString, location_name: "NextToken"))
    GetTableObjectsRequest.struct_class = Types::GetTableObjectsRequest

    GetTableObjectsResponse.add_member(:objects, Shapes::ShapeRef.new(shape: PartitionedTableObjectsList, location_name: "Objects"))
    GetTableObjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: TokenString, location_name: "NextToken"))
    GetTableObjectsResponse.struct_class = Types::GetTableObjectsResponse

    GetTemporaryGluePartitionCredentialsRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "TableArn"))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:partition, Shapes::ShapeRef.new(shape: PartitionValueList, required: true, location_name: "Partition"))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: CredentialTimeoutDurationSecondInteger, location_name: "DurationSeconds"))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:audit_context, Shapes::ShapeRef.new(shape: AuditContext, location_name: "AuditContext"))
    GetTemporaryGluePartitionCredentialsRequest.add_member(:supported_permission_types, Shapes::ShapeRef.new(shape: PermissionTypeList, location_name: "SupportedPermissionTypes"))
    GetTemporaryGluePartitionCredentialsRequest.struct_class = Types::GetTemporaryGluePartitionCredentialsRequest

    GetTemporaryGluePartitionCredentialsResponse.add_member(:access_key_id, Shapes::ShapeRef.new(shape: AccessKeyIdString, location_name: "AccessKeyId"))
    GetTemporaryGluePartitionCredentialsResponse.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: SecretAccessKeyString, location_name: "SecretAccessKey"))
    GetTemporaryGluePartitionCredentialsResponse.add_member(:session_token, Shapes::ShapeRef.new(shape: SessionTokenString, location_name: "SessionToken"))
    GetTemporaryGluePartitionCredentialsResponse.add_member(:expiration, Shapes::ShapeRef.new(shape: ExpirationTimestamp, location_name: "Expiration"))
    GetTemporaryGluePartitionCredentialsResponse.struct_class = Types::GetTemporaryGluePartitionCredentialsResponse

    GetTemporaryGlueTableCredentialsRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "TableArn"))
    GetTemporaryGlueTableCredentialsRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    GetTemporaryGlueTableCredentialsRequest.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: CredentialTimeoutDurationSecondInteger, location_name: "DurationSeconds"))
    GetTemporaryGlueTableCredentialsRequest.add_member(:audit_context, Shapes::ShapeRef.new(shape: AuditContext, location_name: "AuditContext"))
    GetTemporaryGlueTableCredentialsRequest.add_member(:supported_permission_types, Shapes::ShapeRef.new(shape: PermissionTypeList, location_name: "SupportedPermissionTypes"))
    GetTemporaryGlueTableCredentialsRequest.struct_class = Types::GetTemporaryGlueTableCredentialsRequest

    GetTemporaryGlueTableCredentialsResponse.add_member(:access_key_id, Shapes::ShapeRef.new(shape: AccessKeyIdString, location_name: "AccessKeyId"))
    GetTemporaryGlueTableCredentialsResponse.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: SecretAccessKeyString, location_name: "SecretAccessKey"))
    GetTemporaryGlueTableCredentialsResponse.add_member(:session_token, Shapes::ShapeRef.new(shape: SessionTokenString, location_name: "SessionToken"))
    GetTemporaryGlueTableCredentialsResponse.add_member(:expiration, Shapes::ShapeRef.new(shape: ExpirationTimestamp, location_name: "Expiration"))
    GetTemporaryGlueTableCredentialsResponse.struct_class = Types::GetTemporaryGlueTableCredentialsResponse

    GetWorkUnitResultsRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: GetWorkUnitResultsRequestQueryIdString, required: true, location_name: "QueryId"))
    GetWorkUnitResultsRequest.add_member(:work_unit_id, Shapes::ShapeRef.new(shape: GetWorkUnitResultsRequestWorkUnitIdLong, required: true, location_name: "WorkUnitId"))
    GetWorkUnitResultsRequest.add_member(:work_unit_token, Shapes::ShapeRef.new(shape: SyntheticGetWorkUnitResultsRequestWorkUnitTokenString, required: true, location_name: "WorkUnitToken"))
    GetWorkUnitResultsRequest.struct_class = Types::GetWorkUnitResultsRequest

    GetWorkUnitResultsResponse.add_member(:result_stream, Shapes::ShapeRef.new(shape: ResultStream, location_name: "ResultStream"))
    GetWorkUnitResultsResponse.struct_class = Types::GetWorkUnitResultsResponse
    GetWorkUnitResultsResponse[:payload] = :result_stream
    GetWorkUnitResultsResponse[:payload_member] = GetWorkUnitResultsResponse.member(:result_stream)

    GetWorkUnitsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetWorkUnitsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: Integer, location_name: "PageSize"))
    GetWorkUnitsRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: GetWorkUnitsRequestQueryIdString, required: true, location_name: "QueryId"))
    GetWorkUnitsRequest.struct_class = Types::GetWorkUnitsRequest

    GetWorkUnitsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetWorkUnitsResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryIdString, required: true, location_name: "QueryId"))
    GetWorkUnitsResponse.add_member(:work_unit_ranges, Shapes::ShapeRef.new(shape: WorkUnitRangeList, required: true, location_name: "WorkUnitRanges"))
    GetWorkUnitsResponse.struct_class = Types::GetWorkUnitsResponse

    GlueEncryptionException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    GlueEncryptionException.struct_class = Types::GlueEncryptionException

    GrantPermissionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GrantPermissionsRequest.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, required: true, location_name: "Principal"))
    GrantPermissionsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    GrantPermissionsRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, required: true, location_name: "Permissions"))
    GrantPermissionsRequest.add_member(:permissions_with_grant_option, Shapes::ShapeRef.new(shape: PermissionList, location_name: "PermissionsWithGrantOption"))
    GrantPermissionsRequest.struct_class = Types::GrantPermissionsRequest

    GrantPermissionsResponse.struct_class = Types::GrantPermissionsResponse

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    LFTag.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    LFTag.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, required: true, location_name: "TagValues"))
    LFTag.struct_class = Types::LFTag

    LFTagError.add_member(:lf_tag, Shapes::ShapeRef.new(shape: LFTagPair, location_name: "LFTag"))
    LFTagError.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "Error"))
    LFTagError.struct_class = Types::LFTagError

    LFTagErrors.member = Shapes::ShapeRef.new(shape: LFTagError)

    LFTagKeyResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    LFTagKeyResource.add_member(:tag_key, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TagKey"))
    LFTagKeyResource.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, required: true, location_name: "TagValues"))
    LFTagKeyResource.struct_class = Types::LFTagKeyResource

    LFTagPair.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    LFTagPair.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    LFTagPair.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, required: true, location_name: "TagValues"))
    LFTagPair.struct_class = Types::LFTagPair

    LFTagPolicyResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    LFTagPolicyResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    LFTagPolicyResource.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    LFTagPolicyResource.struct_class = Types::LFTagPolicyResource

    LFTagsList.member = Shapes::ShapeRef.new(shape: LFTagPair)

    ListDataCellsFilterRequest.add_member(:table, Shapes::ShapeRef.new(shape: TableResource, location_name: "Table"))
    ListDataCellsFilterRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDataCellsFilterRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListDataCellsFilterRequest.struct_class = Types::ListDataCellsFilterRequest

    ListDataCellsFilterResponse.add_member(:data_cells_filters, Shapes::ShapeRef.new(shape: DataCellsFilterList, location_name: "DataCellsFilters"))
    ListDataCellsFilterResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDataCellsFilterResponse.struct_class = Types::ListDataCellsFilterResponse

    ListLFTagsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    ListLFTagsRequest.add_member(:resource_share_type, Shapes::ShapeRef.new(shape: ResourceShareType, location_name: "ResourceShareType"))
    ListLFTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListLFTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListLFTagsRequest.struct_class = Types::ListLFTagsRequest

    ListLFTagsResponse.add_member(:lf_tags, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTags"))
    ListLFTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListLFTagsResponse.struct_class = Types::ListLFTagsResponse

    ListPermissionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    ListPermissionsRequest.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: "Principal"))
    ListPermissionsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: DataLakeResourceType, location_name: "ResourceType"))
    ListPermissionsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, location_name: "Resource"))
    ListPermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListPermissionsRequest.add_member(:include_related, Shapes::ShapeRef.new(shape: TrueFalseString, location_name: "IncludeRelated"))
    ListPermissionsRequest.struct_class = Types::ListPermissionsRequest

    ListPermissionsResponse.add_member(:principal_resource_permissions, Shapes::ShapeRef.new(shape: PrincipalResourcePermissionsList, location_name: "PrincipalResourcePermissions"))
    ListPermissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionsResponse.struct_class = Types::ListPermissionsResponse

    ListResourcesRequest.add_member(:filter_condition_list, Shapes::ShapeRef.new(shape: FilterConditionList, location_name: "FilterConditionList"))
    ListResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListResourcesRequest.struct_class = Types::ListResourcesRequest

    ListResourcesResponse.add_member(:resource_info_list, Shapes::ShapeRef.new(shape: ResourceInfoList, location_name: "ResourceInfoList"))
    ListResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListResourcesResponse.struct_class = Types::ListResourcesResponse

    ListTableStorageOptimizersRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    ListTableStorageOptimizersRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    ListTableStorageOptimizersRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    ListTableStorageOptimizersRequest.add_member(:storage_optimizer_type, Shapes::ShapeRef.new(shape: OptimizerType, location_name: "StorageOptimizerType"))
    ListTableStorageOptimizersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListTableStorageOptimizersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTableStorageOptimizersRequest.struct_class = Types::ListTableStorageOptimizersRequest

    ListTableStorageOptimizersResponse.add_member(:storage_optimizer_list, Shapes::ShapeRef.new(shape: StorageOptimizerList, location_name: "StorageOptimizerList"))
    ListTableStorageOptimizersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTableStorageOptimizersResponse.struct_class = Types::ListTableStorageOptimizersResponse

    ListTransactionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    ListTransactionsRequest.add_member(:status_filter, Shapes::ShapeRef.new(shape: TransactionStatusFilter, location_name: "StatusFilter"))
    ListTransactionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListTransactionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: TokenString, location_name: "NextToken"))
    ListTransactionsRequest.struct_class = Types::ListTransactionsRequest

    ListTransactionsResponse.add_member(:transactions, Shapes::ShapeRef.new(shape: TransactionDescriptionList, location_name: "Transactions"))
    ListTransactionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: TokenString, location_name: "NextToken"))
    ListTransactionsResponse.struct_class = Types::ListTransactionsResponse

    OperationTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    OperationTimeoutException.struct_class = Types::OperationTimeoutException

    ParametersMap.key = Shapes::ShapeRef.new(shape: KeyString)
    ParametersMap.value = Shapes::ShapeRef.new(shape: ParametersMapValue)

    PartitionObjects.add_member(:partition_values, Shapes::ShapeRef.new(shape: PartitionValuesList, location_name: "PartitionValues"))
    PartitionObjects.add_member(:objects, Shapes::ShapeRef.new(shape: TableObjectList, location_name: "Objects"))
    PartitionObjects.struct_class = Types::PartitionObjects

    PartitionValueList.add_member(:values, Shapes::ShapeRef.new(shape: ValueStringList, required: true, location_name: "Values"))
    PartitionValueList.struct_class = Types::PartitionValueList

    PartitionValuesList.member = Shapes::ShapeRef.new(shape: PartitionValueString)

    PartitionedTableObjectsList.member = Shapes::ShapeRef.new(shape: PartitionObjects)

    PermissionList.member = Shapes::ShapeRef.new(shape: Permission)

    PermissionTypeList.member = Shapes::ShapeRef.new(shape: PermissionType)

    PermissionTypeMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    PermissionTypeMismatchException.struct_class = Types::PermissionTypeMismatchException

    PlanningStatistics.add_member(:estimated_data_to_scan_bytes, Shapes::ShapeRef.new(shape: NumberOfBytes, location_name: "EstimatedDataToScanBytes"))
    PlanningStatistics.add_member(:planning_time_millis, Shapes::ShapeRef.new(shape: NumberOfMilliseconds, location_name: "PlanningTimeMillis"))
    PlanningStatistics.add_member(:queue_time_millis, Shapes::ShapeRef.new(shape: NumberOfMilliseconds, location_name: "QueueTimeMillis"))
    PlanningStatistics.add_member(:work_units_generated_count, Shapes::ShapeRef.new(shape: NumberOfItems, location_name: "WorkUnitsGeneratedCount"))
    PlanningStatistics.struct_class = Types::PlanningStatistics

    PrincipalPermissions.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: "Principal"))
    PrincipalPermissions.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    PrincipalPermissions.struct_class = Types::PrincipalPermissions

    PrincipalPermissionsList.member = Shapes::ShapeRef.new(shape: PrincipalPermissions)

    PrincipalResourcePermissions.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: "Principal"))
    PrincipalResourcePermissions.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, location_name: "Resource"))
    PrincipalResourcePermissions.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    PrincipalResourcePermissions.add_member(:permissions_with_grant_option, Shapes::ShapeRef.new(shape: PermissionList, location_name: "PermissionsWithGrantOption"))
    PrincipalResourcePermissions.add_member(:additional_details, Shapes::ShapeRef.new(shape: DetailsMap, location_name: "AdditionalDetails"))
    PrincipalResourcePermissions.struct_class = Types::PrincipalResourcePermissions

    PrincipalResourcePermissionsList.member = Shapes::ShapeRef.new(shape: PrincipalResourcePermissions)

    PutDataLakeSettingsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    PutDataLakeSettingsRequest.add_member(:data_lake_settings, Shapes::ShapeRef.new(shape: DataLakeSettings, required: true, location_name: "DataLakeSettings"))
    PutDataLakeSettingsRequest.struct_class = Types::PutDataLakeSettingsRequest

    PutDataLakeSettingsResponse.struct_class = Types::PutDataLakeSettingsResponse

    QueryParameterMap.key = Shapes::ShapeRef.new(shape: String)
    QueryParameterMap.value = Shapes::ShapeRef.new(shape: String)

    QueryPlanningContext.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    QueryPlanningContext.add_member(:database_name, Shapes::ShapeRef.new(shape: QueryPlanningContextDatabaseNameString, required: true, location_name: "DatabaseName"))
    QueryPlanningContext.add_member(:query_as_of_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "QueryAsOfTime"))
    QueryPlanningContext.add_member(:query_parameters, Shapes::ShapeRef.new(shape: QueryParameterMap, location_name: "QueryParameters"))
    QueryPlanningContext.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
    QueryPlanningContext.struct_class = Types::QueryPlanningContext

    RegisterResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    RegisterResourceRequest.add_member(:use_service_linked_role, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "UseServiceLinkedRole"))
    RegisterResourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "RoleArn"))
    RegisterResourceRequest.add_member(:with_federation, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "WithFederation"))
    RegisterResourceRequest.struct_class = Types::RegisterResourceRequest

    RegisterResourceResponse.struct_class = Types::RegisterResourceResponse

    RemoveLFTagsFromResourceRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    RemoveLFTagsFromResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    RemoveLFTagsFromResourceRequest.add_member(:lf_tags, Shapes::ShapeRef.new(shape: LFTagsList, required: true, location_name: "LFTags"))
    RemoveLFTagsFromResourceRequest.struct_class = Types::RemoveLFTagsFromResourceRequest

    RemoveLFTagsFromResourceResponse.add_member(:failures, Shapes::ShapeRef.new(shape: LFTagErrors, location_name: "Failures"))
    RemoveLFTagsFromResourceResponse.struct_class = Types::RemoveLFTagsFromResourceResponse

    Resource.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogResource, location_name: "Catalog"))
    Resource.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseResource, location_name: "Database"))
    Resource.add_member(:table, Shapes::ShapeRef.new(shape: TableResource, location_name: "Table"))
    Resource.add_member(:table_with_columns, Shapes::ShapeRef.new(shape: TableWithColumnsResource, location_name: "TableWithColumns"))
    Resource.add_member(:data_location, Shapes::ShapeRef.new(shape: DataLocationResource, location_name: "DataLocation"))
    Resource.add_member(:data_cells_filter, Shapes::ShapeRef.new(shape: DataCellsFilterResource, location_name: "DataCellsFilter"))
    Resource.add_member(:lf_tag, Shapes::ShapeRef.new(shape: LFTagKeyResource, location_name: "LFTag"))
    Resource.add_member(:lf_tag_policy, Shapes::ShapeRef.new(shape: LFTagPolicyResource, location_name: "LFTagPolicy"))
    Resource.struct_class = Types::Resource

    ResourceInfo.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "ResourceArn"))
    ResourceInfo.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "RoleArn"))
    ResourceInfo.add_member(:last_modified, Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: "LastModified"))
    ResourceInfo.add_member(:with_federation, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "WithFederation"))
    ResourceInfo.struct_class = Types::ResourceInfo

    ResourceInfoList.member = Shapes::ShapeRef.new(shape: ResourceInfo)

    ResourceNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ResourceNotReadyException.struct_class = Types::ResourceNotReadyException

    ResourceNumberLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ResourceNumberLimitExceededException.struct_class = Types::ResourceNumberLimitExceededException

    ResourceShareList.member = Shapes::ShapeRef.new(shape: RAMResourceShareArn)

    RevokePermissionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    RevokePermissionsRequest.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, required: true, location_name: "Principal"))
    RevokePermissionsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    RevokePermissionsRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, required: true, location_name: "Permissions"))
    RevokePermissionsRequest.add_member(:permissions_with_grant_option, Shapes::ShapeRef.new(shape: PermissionList, location_name: "PermissionsWithGrantOption"))
    RevokePermissionsRequest.struct_class = Types::RevokePermissionsRequest

    RevokePermissionsResponse.struct_class = Types::RevokePermissionsResponse

    RowFilter.add_member(:filter_expression, Shapes::ShapeRef.new(shape: PredicateString, location_name: "FilterExpression"))
    RowFilter.add_member(:all_rows_wildcard, Shapes::ShapeRef.new(shape: AllRowsWildcard, location_name: "AllRowsWildcard"))
    RowFilter.struct_class = Types::RowFilter

    SearchDatabasesByLFTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchDatabasesByLFTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchPageSize, location_name: "MaxResults"))
    SearchDatabasesByLFTagsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    SearchDatabasesByLFTagsRequest.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    SearchDatabasesByLFTagsRequest.struct_class = Types::SearchDatabasesByLFTagsRequest

    SearchDatabasesByLFTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchDatabasesByLFTagsResponse.add_member(:database_list, Shapes::ShapeRef.new(shape: DatabaseLFTagsList, location_name: "DatabaseList"))
    SearchDatabasesByLFTagsResponse.struct_class = Types::SearchDatabasesByLFTagsResponse

    SearchTablesByLFTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchTablesByLFTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchPageSize, location_name: "MaxResults"))
    SearchTablesByLFTagsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    SearchTablesByLFTagsRequest.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    SearchTablesByLFTagsRequest.struct_class = Types::SearchTablesByLFTagsRequest

    SearchTablesByLFTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchTablesByLFTagsResponse.add_member(:table_list, Shapes::ShapeRef.new(shape: TableLFTagsList, location_name: "TableList"))
    SearchTablesByLFTagsResponse.struct_class = Types::SearchTablesByLFTagsResponse

    StartQueryPlanningRequest.add_member(:query_planning_context, Shapes::ShapeRef.new(shape: QueryPlanningContext, required: true, location_name: "QueryPlanningContext"))
    StartQueryPlanningRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: SyntheticStartQueryPlanningRequestQueryString, required: true, location_name: "QueryString"))
    StartQueryPlanningRequest.struct_class = Types::StartQueryPlanningRequest

    StartQueryPlanningResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryIdString, required: true, location_name: "QueryId"))
    StartQueryPlanningResponse.struct_class = Types::StartQueryPlanningResponse

    StartTransactionRequest.add_member(:transaction_type, Shapes::ShapeRef.new(shape: TransactionType, location_name: "TransactionType"))
    StartTransactionRequest.struct_class = Types::StartTransactionRequest

    StartTransactionResponse.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
    StartTransactionResponse.struct_class = Types::StartTransactionResponse

    StatisticsNotReadyYetException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    StatisticsNotReadyYetException.struct_class = Types::StatisticsNotReadyYetException

    StorageOptimizer.add_member(:storage_optimizer_type, Shapes::ShapeRef.new(shape: OptimizerType, location_name: "StorageOptimizerType"))
    StorageOptimizer.add_member(:config, Shapes::ShapeRef.new(shape: StorageOptimizerConfig, location_name: "Config"))
    StorageOptimizer.add_member(:error_message, Shapes::ShapeRef.new(shape: MessageString, location_name: "ErrorMessage"))
    StorageOptimizer.add_member(:warnings, Shapes::ShapeRef.new(shape: MessageString, location_name: "Warnings"))
    StorageOptimizer.add_member(:last_run_details, Shapes::ShapeRef.new(shape: MessageString, location_name: "LastRunDetails"))
    StorageOptimizer.struct_class = Types::StorageOptimizer

    StorageOptimizerConfig.key = Shapes::ShapeRef.new(shape: StorageOptimizerConfigKey)
    StorageOptimizerConfig.value = Shapes::ShapeRef.new(shape: StorageOptimizerConfigValue)

    StorageOptimizerConfigMap.key = Shapes::ShapeRef.new(shape: OptimizerType)
    StorageOptimizerConfigMap.value = Shapes::ShapeRef.new(shape: StorageOptimizerConfig)

    StorageOptimizerList.member = Shapes::ShapeRef.new(shape: StorageOptimizer)

    StringValueList.member = Shapes::ShapeRef.new(shape: StringValue)

    TableLFTagsList.member = Shapes::ShapeRef.new(shape: TaggedTable)

    TableObject.add_member(:uri, Shapes::ShapeRef.new(shape: URI, location_name: "Uri"))
    TableObject.add_member(:etag, Shapes::ShapeRef.new(shape: ETagString, location_name: "ETag"))
    TableObject.add_member(:size, Shapes::ShapeRef.new(shape: ObjectSize, location_name: "Size"))
    TableObject.struct_class = Types::TableObject

    TableObjectList.member = Shapes::ShapeRef.new(shape: TableObject)

    TableResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    TableResource.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    TableResource.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    TableResource.add_member(:table_wildcard, Shapes::ShapeRef.new(shape: TableWildcard, location_name: "TableWildcard"))
    TableResource.struct_class = Types::TableResource

    TableWildcard.struct_class = Types::TableWildcard

    TableWithColumnsResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    TableWithColumnsResource.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    TableWithColumnsResource.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    TableWithColumnsResource.add_member(:column_names, Shapes::ShapeRef.new(shape: ColumnNames, location_name: "ColumnNames"))
    TableWithColumnsResource.add_member(:column_wildcard, Shapes::ShapeRef.new(shape: ColumnWildcard, location_name: "ColumnWildcard"))
    TableWithColumnsResource.struct_class = Types::TableWithColumnsResource

    TagValueList.member = Shapes::ShapeRef.new(shape: LFTagValue)

    TaggedDatabase.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseResource, location_name: "Database"))
    TaggedDatabase.add_member(:lf_tags, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTags"))
    TaggedDatabase.struct_class = Types::TaggedDatabase

    TaggedTable.add_member(:table, Shapes::ShapeRef.new(shape: TableResource, location_name: "Table"))
    TaggedTable.add_member(:lf_tag_on_database, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTagOnDatabase"))
    TaggedTable.add_member(:lf_tags_on_table, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTagsOnTable"))
    TaggedTable.add_member(:lf_tags_on_columns, Shapes::ShapeRef.new(shape: ColumnLFTagsList, location_name: "LFTagsOnColumns"))
    TaggedTable.struct_class = Types::TaggedTable

    ThrottledException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ThrottledException.struct_class = Types::ThrottledException

    TransactionCanceledException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    TransactionCanceledException.struct_class = Types::TransactionCanceledException

    TransactionCommitInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    TransactionCommitInProgressException.struct_class = Types::TransactionCommitInProgressException

    TransactionCommittedException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    TransactionCommittedException.struct_class = Types::TransactionCommittedException

    TransactionDescription.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
    TransactionDescription.add_member(:transaction_status, Shapes::ShapeRef.new(shape: TransactionStatus, location_name: "TransactionStatus"))
    TransactionDescription.add_member(:transaction_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TransactionStartTime"))
    TransactionDescription.add_member(:transaction_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TransactionEndTime"))
    TransactionDescription.struct_class = Types::TransactionDescription

    TransactionDescriptionList.member = Shapes::ShapeRef.new(shape: TransactionDescription)

    TrustedResourceOwners.member = Shapes::ShapeRef.new(shape: CatalogIdString)

    UpdateDataCellsFilterRequest.add_member(:table_data, Shapes::ShapeRef.new(shape: DataCellsFilter, required: true, location_name: "TableData"))
    UpdateDataCellsFilterRequest.struct_class = Types::UpdateDataCellsFilterRequest

    UpdateDataCellsFilterResponse.struct_class = Types::UpdateDataCellsFilterResponse

    UpdateLFTagRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateLFTagRequest.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    UpdateLFTagRequest.add_member(:tag_values_to_delete, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValuesToDelete"))
    UpdateLFTagRequest.add_member(:tag_values_to_add, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValuesToAdd"))
    UpdateLFTagRequest.struct_class = Types::UpdateLFTagRequest

    UpdateLFTagResponse.struct_class = Types::UpdateLFTagResponse

    UpdateResourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "RoleArn"))
    UpdateResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    UpdateResourceRequest.add_member(:with_federation, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "WithFederation"))
    UpdateResourceRequest.struct_class = Types::UpdateResourceRequest

    UpdateResourceResponse.struct_class = Types::UpdateResourceResponse

    UpdateTableObjectsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateTableObjectsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdateTableObjectsRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    UpdateTableObjectsRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
    UpdateTableObjectsRequest.add_member(:write_operations, Shapes::ShapeRef.new(shape: WriteOperationList, required: true, location_name: "WriteOperations"))
    UpdateTableObjectsRequest.struct_class = Types::UpdateTableObjectsRequest

    UpdateTableObjectsResponse.struct_class = Types::UpdateTableObjectsResponse

    UpdateTableStorageOptimizerRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateTableStorageOptimizerRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdateTableStorageOptimizerRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    UpdateTableStorageOptimizerRequest.add_member(:storage_optimizer_config, Shapes::ShapeRef.new(shape: StorageOptimizerConfigMap, required: true, location_name: "StorageOptimizerConfig"))
    UpdateTableStorageOptimizerRequest.struct_class = Types::UpdateTableStorageOptimizerRequest

    UpdateTableStorageOptimizerResponse.add_member(:result, Shapes::ShapeRef.new(shape: Result, location_name: "Result"))
    UpdateTableStorageOptimizerResponse.struct_class = Types::UpdateTableStorageOptimizerResponse

    ValueStringList.member = Shapes::ShapeRef.new(shape: ValueString)

    VirtualObject.add_member(:uri, Shapes::ShapeRef.new(shape: URI, required: true, location_name: "Uri"))
    VirtualObject.add_member(:etag, Shapes::ShapeRef.new(shape: ETagString, location_name: "ETag"))
    VirtualObject.struct_class = Types::VirtualObject

    VirtualObjectList.member = Shapes::ShapeRef.new(shape: VirtualObject)

    WorkUnitRange.add_member(:work_unit_id_max, Shapes::ShapeRef.new(shape: WorkUnitIdLong, required: true, location_name: "WorkUnitIdMax"))
    WorkUnitRange.add_member(:work_unit_id_min, Shapes::ShapeRef.new(shape: WorkUnitIdLong, required: true, location_name: "WorkUnitIdMin"))
    WorkUnitRange.add_member(:work_unit_token, Shapes::ShapeRef.new(shape: WorkUnitTokenString, required: true, location_name: "WorkUnitToken"))
    WorkUnitRange.struct_class = Types::WorkUnitRange

    WorkUnitRangeList.member = Shapes::ShapeRef.new(shape: WorkUnitRange)

    WorkUnitsNotReadyYetException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    WorkUnitsNotReadyYetException.struct_class = Types::WorkUnitsNotReadyYetException

    WriteOperation.add_member(:add_object, Shapes::ShapeRef.new(shape: AddObjectInput, location_name: "AddObject"))
    WriteOperation.add_member(:delete_object, Shapes::ShapeRef.new(shape: DeleteObjectInput, location_name: "DeleteObject"))
    WriteOperation.struct_class = Types::WriteOperation

    WriteOperationList.member = Shapes::ShapeRef.new(shape: WriteOperation)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-03-31"

      api.metadata = {
        "apiVersion" => "2017-03-31",
        "endpointPrefix" => "lakeformation",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Lake Formation",
        "serviceId" => "LakeFormation",
        "signatureVersion" => "v4",
        "signingName" => "lakeformation",
        "uid" => "lakeformation-2017-03-31",
      }

      api.add_operation(:add_lf_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddLFTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/AddLFTagsToResource"
        o.input = Shapes::ShapeRef.new(shape: AddLFTagsToResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AddLFTagsToResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:assume_decorated_role_with_saml, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssumeDecoratedRoleWithSAML"
        o.http_method = "POST"
        o.http_request_uri = "/AssumeDecoratedRoleWithSAML"
        o.input = Shapes::ShapeRef.new(shape: AssumeDecoratedRoleWithSAMLRequest)
        o.output = Shapes::ShapeRef.new(shape: AssumeDecoratedRoleWithSAMLResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_grant_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGrantPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGrantPermissions"
        o.input = Shapes::ShapeRef.new(shape: BatchGrantPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGrantPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:batch_revoke_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchRevokePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/BatchRevokePermissions"
        o.input = Shapes::ShapeRef.new(shape: BatchRevokePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchRevokePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:cancel_transaction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelTransaction"
        o.http_method = "POST"
        o.http_request_uri = "/CancelTransaction"
        o.input = Shapes::ShapeRef.new(shape: CancelTransactionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelTransactionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCommittedException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCommitInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:commit_transaction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CommitTransaction"
        o.http_method = "POST"
        o.http_request_uri = "/CommitTransaction"
        o.input = Shapes::ShapeRef.new(shape: CommitTransactionRequest)
        o.output = Shapes::ShapeRef.new(shape: CommitTransactionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCanceledException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_data_cells_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataCellsFilter"
        o.http_method = "POST"
        o.http_request_uri = "/CreateDataCellsFilter"
        o.input = Shapes::ShapeRef.new(shape: CreateDataCellsFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataCellsFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_lf_tag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLFTag"
        o.http_method = "POST"
        o.http_request_uri = "/CreateLFTag"
        o.input = Shapes::ShapeRef.new(shape: CreateLFTagRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLFTagResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_data_cells_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataCellsFilter"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteDataCellsFilter"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataCellsFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataCellsFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_lf_tag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLFTag"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteLFTag"
        o.input = Shapes::ShapeRef.new(shape: DeleteLFTagRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLFTagResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_objects_on_cancel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteObjectsOnCancel"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteObjectsOnCancel"
        o.input = Shapes::ShapeRef.new(shape: DeleteObjectsOnCancelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteObjectsOnCancelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCommittedException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCanceledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:deregister_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterResource"
        o.http_method = "POST"
        o.http_request_uri = "/DeregisterResource"
        o.input = Shapes::ShapeRef.new(shape: DeregisterResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:describe_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResource"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeResource"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:describe_transaction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTransaction"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeTransaction"
        o.input = Shapes::ShapeRef.new(shape: DescribeTransactionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTransactionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:extend_transaction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExtendTransaction"
        o.http_method = "POST"
        o.http_request_uri = "/ExtendTransaction"
        o.input = Shapes::ShapeRef.new(shape: ExtendTransactionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExtendTransactionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCommittedException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCanceledException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCommitInProgressException)
      end)

      api.add_operation(:get_data_cells_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataCellsFilter"
        o.http_method = "POST"
        o.http_request_uri = "/GetDataCellsFilter"
        o.input = Shapes::ShapeRef.new(shape: GetDataCellsFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataCellsFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_data_lake_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataLakeSettings"
        o.http_method = "POST"
        o.http_request_uri = "/GetDataLakeSettings"
        o.input = Shapes::ShapeRef.new(shape: GetDataLakeSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataLakeSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:get_effective_permissions_for_path, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEffectivePermissionsForPath"
        o.http_method = "POST"
        o.http_request_uri = "/GetEffectivePermissionsForPath"
        o.input = Shapes::ShapeRef.new(shape: GetEffectivePermissionsForPathRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEffectivePermissionsForPathResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_lf_tag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLFTag"
        o.http_method = "POST"
        o.http_request_uri = "/GetLFTag"
        o.input = Shapes::ShapeRef.new(shape: GetLFTagRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLFTagResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_query_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryState"
        o.http_method = "POST"
        o.http_request_uri = "/GetQueryState"
        o.endpoint_pattern = {
          "hostPrefix" => "query-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetQueryStateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueryStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_query_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/GetQueryStatistics"
        o.endpoint_pattern = {
          "hostPrefix" => "query-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetQueryStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueryStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: StatisticsNotReadyYetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:get_resource_lf_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceLFTags"
        o.http_method = "POST"
        o.http_request_uri = "/GetResourceLFTags"
        o.input = Shapes::ShapeRef.new(shape: GetResourceLFTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceLFTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_table_objects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableObjects"
        o.http_method = "POST"
        o.http_request_uri = "/GetTableObjects"
        o.input = Shapes::ShapeRef.new(shape: GetTableObjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableObjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCommittedException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCanceledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_temporary_glue_partition_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemporaryGluePartitionCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/GetTemporaryGluePartitionCredentials"
        o.input = Shapes::ShapeRef.new(shape: GetTemporaryGluePartitionCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTemporaryGluePartitionCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: PermissionTypeMismatchException)
      end)

      api.add_operation(:get_temporary_glue_table_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemporaryGlueTableCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/GetTemporaryGlueTableCredentials"
        o.input = Shapes::ShapeRef.new(shape: GetTemporaryGlueTableCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTemporaryGlueTableCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: PermissionTypeMismatchException)
      end)

      api.add_operation(:get_work_unit_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkUnitResults"
        o.http_method = "POST"
        o.http_request_uri = "/GetWorkUnitResults"
        o.endpoint_pattern = {
          "hostPrefix" => "data-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetWorkUnitResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkUnitResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:get_work_units, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkUnits"
        o.http_method = "POST"
        o.http_request_uri = "/GetWorkUnits"
        o.endpoint_pattern = {
          "hostPrefix" => "query-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetWorkUnitsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkUnitsResponse)
        o.errors << Shapes::ShapeRef.new(shape: WorkUnitsNotReadyYetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:grant_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GrantPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/GrantPermissions"
        o.input = Shapes::ShapeRef.new(shape: GrantPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GrantPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:list_data_cells_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataCellsFilter"
        o.http_method = "POST"
        o.http_request_uri = "/ListDataCellsFilter"
        o.input = Shapes::ShapeRef.new(shape: ListDataCellsFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataCellsFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_lf_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLFTags"
        o.http_method = "POST"
        o.http_request_uri = "/ListLFTags"
        o.input = Shapes::ShapeRef.new(shape: ListLFTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLFTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/ListPermissions"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResources"
        o.http_method = "POST"
        o.http_request_uri = "/ListResources"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_table_storage_optimizers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTableStorageOptimizers"
        o.http_method = "POST"
        o.http_request_uri = "/ListTableStorageOptimizers"
        o.input = Shapes::ShapeRef.new(shape: ListTableStorageOptimizersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTableStorageOptimizersResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_transactions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTransactions"
        o.http_method = "POST"
        o.http_request_uri = "/ListTransactions"
        o.input = Shapes::ShapeRef.new(shape: ListTransactionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTransactionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_data_lake_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDataLakeSettings"
        o.http_method = "POST"
        o.http_request_uri = "/PutDataLakeSettings"
        o.input = Shapes::ShapeRef.new(shape: PutDataLakeSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDataLakeSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:register_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterResource"
        o.http_method = "POST"
        o.http_request_uri = "/RegisterResource"
        o.input = Shapes::ShapeRef.new(shape: RegisterResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:remove_lf_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveLFTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/RemoveLFTagsFromResource"
        o.input = Shapes::ShapeRef.new(shape: RemoveLFTagsFromResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveLFTagsFromResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:revoke_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/RevokePermissions"
        o.input = Shapes::ShapeRef.new(shape: RevokePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:search_databases_by_lf_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchDatabasesByLFTags"
        o.http_method = "POST"
        o.http_request_uri = "/SearchDatabasesByLFTags"
        o.input = Shapes::ShapeRef.new(shape: SearchDatabasesByLFTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchDatabasesByLFTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_tables_by_lf_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchTablesByLFTags"
        o.http_method = "POST"
        o.http_request_uri = "/SearchTablesByLFTags"
        o.input = Shapes::ShapeRef.new(shape: SearchTablesByLFTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchTablesByLFTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_query_planning, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQueryPlanning"
        o.http_method = "POST"
        o.http_request_uri = "/StartQueryPlanning"
        o.endpoint_pattern = {
          "hostPrefix" => "query-",
        }
        o.input = Shapes::ShapeRef.new(shape: StartQueryPlanningRequest)
        o.output = Shapes::ShapeRef.new(shape: StartQueryPlanningResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:start_transaction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTransaction"
        o.http_method = "POST"
        o.http_request_uri = "/StartTransaction"
        o.input = Shapes::ShapeRef.new(shape: StartTransactionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTransactionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:update_data_cells_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataCellsFilter"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateDataCellsFilter"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataCellsFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataCellsFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_lf_tag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLFTag"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateLFTag"
        o.input = Shapes::ShapeRef.new(shape: UpdateLFTagRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLFTagResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResource"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateResource"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:update_table_objects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTableObjects"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateTableObjects"
        o.input = Shapes::ShapeRef.new(shape: UpdateTableObjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTableObjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCommittedException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCanceledException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCommitInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_table_storage_optimizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTableStorageOptimizer"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateTableStorageOptimizer"
        o.input = Shapes::ShapeRef.new(shape: UpdateTableStorageOptimizerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTableStorageOptimizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)
    end

  end
end
