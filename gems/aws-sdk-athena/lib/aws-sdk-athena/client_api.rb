# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Athena
  # @api private
  module ClientApi

    include Seahorse::Model

    AclConfiguration = Shapes::StructureShape.new(name: 'AclConfiguration')
    Age = Shapes::IntegerShape.new(name: 'Age')
    AllocatedDpusInteger = Shapes::IntegerShape.new(name: 'AllocatedDpusInteger')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    ApplicationDPUSizes = Shapes::StructureShape.new(name: 'ApplicationDPUSizes')
    ApplicationDPUSizesList = Shapes::ListShape.new(name: 'ApplicationDPUSizesList')
    AthenaError = Shapes::StructureShape.new(name: 'AthenaError')
    AuthToken = Shapes::StringShape.new(name: 'AuthToken')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    BatchGetNamedQueryInput = Shapes::StructureShape.new(name: 'BatchGetNamedQueryInput')
    BatchGetNamedQueryOutput = Shapes::StructureShape.new(name: 'BatchGetNamedQueryOutput')
    BatchGetPreparedStatementInput = Shapes::StructureShape.new(name: 'BatchGetPreparedStatementInput')
    BatchGetPreparedStatementOutput = Shapes::StructureShape.new(name: 'BatchGetPreparedStatementOutput')
    BatchGetQueryExecutionInput = Shapes::StructureShape.new(name: 'BatchGetQueryExecutionInput')
    BatchGetQueryExecutionOutput = Shapes::StructureShape.new(name: 'BatchGetQueryExecutionOutput')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BytesScannedCutoffValue = Shapes::IntegerShape.new(name: 'BytesScannedCutoffValue')
    CalculationConfiguration = Shapes::StructureShape.new(name: 'CalculationConfiguration')
    CalculationExecutionId = Shapes::StringShape.new(name: 'CalculationExecutionId')
    CalculationExecutionState = Shapes::StringShape.new(name: 'CalculationExecutionState')
    CalculationResult = Shapes::StructureShape.new(name: 'CalculationResult')
    CalculationResultType = Shapes::StringShape.new(name: 'CalculationResultType')
    CalculationStatistics = Shapes::StructureShape.new(name: 'CalculationStatistics')
    CalculationStatus = Shapes::StructureShape.new(name: 'CalculationStatus')
    CalculationSummary = Shapes::StructureShape.new(name: 'CalculationSummary')
    CalculationsList = Shapes::ListShape.new(name: 'CalculationsList')
    CancelCapacityReservationInput = Shapes::StructureShape.new(name: 'CancelCapacityReservationInput')
    CancelCapacityReservationOutput = Shapes::StructureShape.new(name: 'CancelCapacityReservationOutput')
    CapacityAllocation = Shapes::StructureShape.new(name: 'CapacityAllocation')
    CapacityAllocationStatus = Shapes::StringShape.new(name: 'CapacityAllocationStatus')
    CapacityAssignment = Shapes::StructureShape.new(name: 'CapacityAssignment')
    CapacityAssignmentConfiguration = Shapes::StructureShape.new(name: 'CapacityAssignmentConfiguration')
    CapacityAssignmentsList = Shapes::ListShape.new(name: 'CapacityAssignmentsList')
    CapacityReservation = Shapes::StructureShape.new(name: 'CapacityReservation')
    CapacityReservationName = Shapes::StringShape.new(name: 'CapacityReservationName')
    CapacityReservationStatus = Shapes::StringShape.new(name: 'CapacityReservationStatus')
    CapacityReservationsList = Shapes::ListShape.new(name: 'CapacityReservationsList')
    CatalogNameString = Shapes::StringShape.new(name: 'CatalogNameString')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    CodeBlock = Shapes::StringShape.new(name: 'CodeBlock')
    Column = Shapes::StructureShape.new(name: 'Column')
    ColumnInfo = Shapes::StructureShape.new(name: 'ColumnInfo')
    ColumnInfoList = Shapes::ListShape.new(name: 'ColumnInfoList')
    ColumnList = Shapes::ListShape.new(name: 'ColumnList')
    ColumnNullable = Shapes::StringShape.new(name: 'ColumnNullable')
    CommentString = Shapes::StringShape.new(name: 'CommentString')
    CoordinatorDpuSize = Shapes::IntegerShape.new(name: 'CoordinatorDpuSize')
    CreateCapacityReservationInput = Shapes::StructureShape.new(name: 'CreateCapacityReservationInput')
    CreateCapacityReservationOutput = Shapes::StructureShape.new(name: 'CreateCapacityReservationOutput')
    CreateDataCatalogInput = Shapes::StructureShape.new(name: 'CreateDataCatalogInput')
    CreateDataCatalogOutput = Shapes::StructureShape.new(name: 'CreateDataCatalogOutput')
    CreateNamedQueryInput = Shapes::StructureShape.new(name: 'CreateNamedQueryInput')
    CreateNamedQueryOutput = Shapes::StructureShape.new(name: 'CreateNamedQueryOutput')
    CreateNotebookInput = Shapes::StructureShape.new(name: 'CreateNotebookInput')
    CreateNotebookOutput = Shapes::StructureShape.new(name: 'CreateNotebookOutput')
    CreatePreparedStatementInput = Shapes::StructureShape.new(name: 'CreatePreparedStatementInput')
    CreatePreparedStatementOutput = Shapes::StructureShape.new(name: 'CreatePreparedStatementOutput')
    CreatePresignedNotebookUrlRequest = Shapes::StructureShape.new(name: 'CreatePresignedNotebookUrlRequest')
    CreatePresignedNotebookUrlResponse = Shapes::StructureShape.new(name: 'CreatePresignedNotebookUrlResponse')
    CreateWorkGroupInput = Shapes::StructureShape.new(name: 'CreateWorkGroupInput')
    CreateWorkGroupOutput = Shapes::StructureShape.new(name: 'CreateWorkGroupOutput')
    CustomerContentEncryptionConfiguration = Shapes::StructureShape.new(name: 'CustomerContentEncryptionConfiguration')
    DataCatalog = Shapes::StructureShape.new(name: 'DataCatalog')
    DataCatalogSummary = Shapes::StructureShape.new(name: 'DataCatalogSummary')
    DataCatalogSummaryList = Shapes::ListShape.new(name: 'DataCatalogSummaryList')
    DataCatalogType = Shapes::StringShape.new(name: 'DataCatalogType')
    Database = Shapes::StructureShape.new(name: 'Database')
    DatabaseList = Shapes::ListShape.new(name: 'DatabaseList')
    DatabaseString = Shapes::StringShape.new(name: 'DatabaseString')
    Date = Shapes::TimestampShape.new(name: 'Date')
    Datum = Shapes::StructureShape.new(name: 'Datum')
    DefaultExecutorDpuSize = Shapes::IntegerShape.new(name: 'DefaultExecutorDpuSize')
    DeleteCapacityReservationInput = Shapes::StructureShape.new(name: 'DeleteCapacityReservationInput')
    DeleteCapacityReservationOutput = Shapes::StructureShape.new(name: 'DeleteCapacityReservationOutput')
    DeleteDataCatalogInput = Shapes::StructureShape.new(name: 'DeleteDataCatalogInput')
    DeleteDataCatalogOutput = Shapes::StructureShape.new(name: 'DeleteDataCatalogOutput')
    DeleteNamedQueryInput = Shapes::StructureShape.new(name: 'DeleteNamedQueryInput')
    DeleteNamedQueryOutput = Shapes::StructureShape.new(name: 'DeleteNamedQueryOutput')
    DeleteNotebookInput = Shapes::StructureShape.new(name: 'DeleteNotebookInput')
    DeleteNotebookOutput = Shapes::StructureShape.new(name: 'DeleteNotebookOutput')
    DeletePreparedStatementInput = Shapes::StructureShape.new(name: 'DeletePreparedStatementInput')
    DeletePreparedStatementOutput = Shapes::StructureShape.new(name: 'DeletePreparedStatementOutput')
    DeleteWorkGroupInput = Shapes::StructureShape.new(name: 'DeleteWorkGroupInput')
    DeleteWorkGroupOutput = Shapes::StructureShape.new(name: 'DeleteWorkGroupOutput')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionOption = Shapes::StringShape.new(name: 'EncryptionOption')
    EngineConfiguration = Shapes::StructureShape.new(name: 'EngineConfiguration')
    EngineVersion = Shapes::StructureShape.new(name: 'EngineVersion')
    EngineVersionsList = Shapes::ListShape.new(name: 'EngineVersionsList')
    ErrorCategory = Shapes::IntegerShape.new(name: 'ErrorCategory')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorType = Shapes::IntegerShape.new(name: 'ErrorType')
    ExecutionParameter = Shapes::StringShape.new(name: 'ExecutionParameter')
    ExecutionParameters = Shapes::ListShape.new(name: 'ExecutionParameters')
    ExecutorId = Shapes::StringShape.new(name: 'ExecutorId')
    ExecutorState = Shapes::StringShape.new(name: 'ExecutorState')
    ExecutorType = Shapes::StringShape.new(name: 'ExecutorType')
    ExecutorsSummary = Shapes::StructureShape.new(name: 'ExecutorsSummary')
    ExecutorsSummaryList = Shapes::ListShape.new(name: 'ExecutorsSummaryList')
    ExportNotebookInput = Shapes::StructureShape.new(name: 'ExportNotebookInput')
    ExportNotebookOutput = Shapes::StructureShape.new(name: 'ExportNotebookOutput')
    ExpressionString = Shapes::StringShape.new(name: 'ExpressionString')
    FilterDefinition = Shapes::StructureShape.new(name: 'FilterDefinition')
    GetCalculationExecutionCodeRequest = Shapes::StructureShape.new(name: 'GetCalculationExecutionCodeRequest')
    GetCalculationExecutionCodeResponse = Shapes::StructureShape.new(name: 'GetCalculationExecutionCodeResponse')
    GetCalculationExecutionRequest = Shapes::StructureShape.new(name: 'GetCalculationExecutionRequest')
    GetCalculationExecutionResponse = Shapes::StructureShape.new(name: 'GetCalculationExecutionResponse')
    GetCalculationExecutionStatusRequest = Shapes::StructureShape.new(name: 'GetCalculationExecutionStatusRequest')
    GetCalculationExecutionStatusResponse = Shapes::StructureShape.new(name: 'GetCalculationExecutionStatusResponse')
    GetCapacityAssignmentConfigurationInput = Shapes::StructureShape.new(name: 'GetCapacityAssignmentConfigurationInput')
    GetCapacityAssignmentConfigurationOutput = Shapes::StructureShape.new(name: 'GetCapacityAssignmentConfigurationOutput')
    GetCapacityReservationInput = Shapes::StructureShape.new(name: 'GetCapacityReservationInput')
    GetCapacityReservationOutput = Shapes::StructureShape.new(name: 'GetCapacityReservationOutput')
    GetDataCatalogInput = Shapes::StructureShape.new(name: 'GetDataCatalogInput')
    GetDataCatalogOutput = Shapes::StructureShape.new(name: 'GetDataCatalogOutput')
    GetDatabaseInput = Shapes::StructureShape.new(name: 'GetDatabaseInput')
    GetDatabaseOutput = Shapes::StructureShape.new(name: 'GetDatabaseOutput')
    GetNamedQueryInput = Shapes::StructureShape.new(name: 'GetNamedQueryInput')
    GetNamedQueryOutput = Shapes::StructureShape.new(name: 'GetNamedQueryOutput')
    GetNotebookMetadataInput = Shapes::StructureShape.new(name: 'GetNotebookMetadataInput')
    GetNotebookMetadataOutput = Shapes::StructureShape.new(name: 'GetNotebookMetadataOutput')
    GetPreparedStatementInput = Shapes::StructureShape.new(name: 'GetPreparedStatementInput')
    GetPreparedStatementOutput = Shapes::StructureShape.new(name: 'GetPreparedStatementOutput')
    GetQueryExecutionInput = Shapes::StructureShape.new(name: 'GetQueryExecutionInput')
    GetQueryExecutionOutput = Shapes::StructureShape.new(name: 'GetQueryExecutionOutput')
    GetQueryResultsInput = Shapes::StructureShape.new(name: 'GetQueryResultsInput')
    GetQueryResultsOutput = Shapes::StructureShape.new(name: 'GetQueryResultsOutput')
    GetQueryRuntimeStatisticsInput = Shapes::StructureShape.new(name: 'GetQueryRuntimeStatisticsInput')
    GetQueryRuntimeStatisticsOutput = Shapes::StructureShape.new(name: 'GetQueryRuntimeStatisticsOutput')
    GetSessionRequest = Shapes::StructureShape.new(name: 'GetSessionRequest')
    GetSessionResponse = Shapes::StructureShape.new(name: 'GetSessionResponse')
    GetSessionStatusRequest = Shapes::StructureShape.new(name: 'GetSessionStatusRequest')
    GetSessionStatusResponse = Shapes::StructureShape.new(name: 'GetSessionStatusResponse')
    GetTableMetadataInput = Shapes::StructureShape.new(name: 'GetTableMetadataInput')
    GetTableMetadataOutput = Shapes::StructureShape.new(name: 'GetTableMetadataOutput')
    GetWorkGroupInput = Shapes::StructureShape.new(name: 'GetWorkGroupInput')
    GetWorkGroupOutput = Shapes::StructureShape.new(name: 'GetWorkGroupOutput')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    ImportNotebookInput = Shapes::StructureShape.new(name: 'ImportNotebookInput')
    ImportNotebookOutput = Shapes::StructureShape.new(name: 'ImportNotebookOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    KeyString = Shapes::StringShape.new(name: 'KeyString')
    KmsKey = Shapes::StringShape.new(name: 'KmsKey')
    ListApplicationDPUSizesInput = Shapes::StructureShape.new(name: 'ListApplicationDPUSizesInput')
    ListApplicationDPUSizesOutput = Shapes::StructureShape.new(name: 'ListApplicationDPUSizesOutput')
    ListCalculationExecutionsRequest = Shapes::StructureShape.new(name: 'ListCalculationExecutionsRequest')
    ListCalculationExecutionsResponse = Shapes::StructureShape.new(name: 'ListCalculationExecutionsResponse')
    ListCapacityReservationsInput = Shapes::StructureShape.new(name: 'ListCapacityReservationsInput')
    ListCapacityReservationsOutput = Shapes::StructureShape.new(name: 'ListCapacityReservationsOutput')
    ListDataCatalogsInput = Shapes::StructureShape.new(name: 'ListDataCatalogsInput')
    ListDataCatalogsOutput = Shapes::StructureShape.new(name: 'ListDataCatalogsOutput')
    ListDatabasesInput = Shapes::StructureShape.new(name: 'ListDatabasesInput')
    ListDatabasesOutput = Shapes::StructureShape.new(name: 'ListDatabasesOutput')
    ListEngineVersionsInput = Shapes::StructureShape.new(name: 'ListEngineVersionsInput')
    ListEngineVersionsOutput = Shapes::StructureShape.new(name: 'ListEngineVersionsOutput')
    ListExecutorsRequest = Shapes::StructureShape.new(name: 'ListExecutorsRequest')
    ListExecutorsResponse = Shapes::StructureShape.new(name: 'ListExecutorsResponse')
    ListNamedQueriesInput = Shapes::StructureShape.new(name: 'ListNamedQueriesInput')
    ListNamedQueriesOutput = Shapes::StructureShape.new(name: 'ListNamedQueriesOutput')
    ListNotebookMetadataInput = Shapes::StructureShape.new(name: 'ListNotebookMetadataInput')
    ListNotebookMetadataOutput = Shapes::StructureShape.new(name: 'ListNotebookMetadataOutput')
    ListNotebookSessionsRequest = Shapes::StructureShape.new(name: 'ListNotebookSessionsRequest')
    ListNotebookSessionsResponse = Shapes::StructureShape.new(name: 'ListNotebookSessionsResponse')
    ListPreparedStatementsInput = Shapes::StructureShape.new(name: 'ListPreparedStatementsInput')
    ListPreparedStatementsOutput = Shapes::StructureShape.new(name: 'ListPreparedStatementsOutput')
    ListQueryExecutionsInput = Shapes::StructureShape.new(name: 'ListQueryExecutionsInput')
    ListQueryExecutionsOutput = Shapes::StructureShape.new(name: 'ListQueryExecutionsOutput')
    ListSessionsRequest = Shapes::StructureShape.new(name: 'ListSessionsRequest')
    ListSessionsResponse = Shapes::StructureShape.new(name: 'ListSessionsResponse')
    ListTableMetadataInput = Shapes::StructureShape.new(name: 'ListTableMetadataInput')
    ListTableMetadataOutput = Shapes::StructureShape.new(name: 'ListTableMetadataOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListWorkGroupsInput = Shapes::StructureShape.new(name: 'ListWorkGroupsInput')
    ListWorkGroupsOutput = Shapes::StructureShape.new(name: 'ListWorkGroupsOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxApplicationDPUSizesCount = Shapes::IntegerShape.new(name: 'MaxApplicationDPUSizesCount')
    MaxCalculationsCount = Shapes::IntegerShape.new(name: 'MaxCalculationsCount')
    MaxCapacityReservationsCount = Shapes::IntegerShape.new(name: 'MaxCapacityReservationsCount')
    MaxConcurrentDpus = Shapes::IntegerShape.new(name: 'MaxConcurrentDpus')
    MaxDataCatalogsCount = Shapes::IntegerShape.new(name: 'MaxDataCatalogsCount')
    MaxDatabasesCount = Shapes::IntegerShape.new(name: 'MaxDatabasesCount')
    MaxEngineVersionsCount = Shapes::IntegerShape.new(name: 'MaxEngineVersionsCount')
    MaxListExecutorsCount = Shapes::IntegerShape.new(name: 'MaxListExecutorsCount')
    MaxNamedQueriesCount = Shapes::IntegerShape.new(name: 'MaxNamedQueriesCount')
    MaxNotebooksCount = Shapes::IntegerShape.new(name: 'MaxNotebooksCount')
    MaxPreparedStatementsCount = Shapes::IntegerShape.new(name: 'MaxPreparedStatementsCount')
    MaxQueryExecutionsCount = Shapes::IntegerShape.new(name: 'MaxQueryExecutionsCount')
    MaxQueryResults = Shapes::IntegerShape.new(name: 'MaxQueryResults')
    MaxSessionsCount = Shapes::IntegerShape.new(name: 'MaxSessionsCount')
    MaxTableMetadataCount = Shapes::IntegerShape.new(name: 'MaxTableMetadataCount')
    MaxTagsCount = Shapes::IntegerShape.new(name: 'MaxTagsCount')
    MaxWorkGroupsCount = Shapes::IntegerShape.new(name: 'MaxWorkGroupsCount')
    MetadataException = Shapes::StructureShape.new(name: 'MetadataException')
    NameString = Shapes::StringShape.new(name: 'NameString')
    NamedQuery = Shapes::StructureShape.new(name: 'NamedQuery')
    NamedQueryDescriptionString = Shapes::StringShape.new(name: 'NamedQueryDescriptionString')
    NamedQueryId = Shapes::StringShape.new(name: 'NamedQueryId')
    NamedQueryIdList = Shapes::ListShape.new(name: 'NamedQueryIdList')
    NamedQueryList = Shapes::ListShape.new(name: 'NamedQueryList')
    NotebookId = Shapes::StringShape.new(name: 'NotebookId')
    NotebookMetadata = Shapes::StructureShape.new(name: 'NotebookMetadata')
    NotebookMetadataArray = Shapes::ListShape.new(name: 'NotebookMetadataArray')
    NotebookName = Shapes::StringShape.new(name: 'NotebookName')
    NotebookSessionSummary = Shapes::StructureShape.new(name: 'NotebookSessionSummary')
    NotebookSessionsList = Shapes::ListShape.new(name: 'NotebookSessionsList')
    NotebookType = Shapes::StringShape.new(name: 'NotebookType')
    ParametersMap = Shapes::MapShape.new(name: 'ParametersMap')
    ParametersMapValue = Shapes::StringShape.new(name: 'ParametersMapValue')
    Payload = Shapes::StringShape.new(name: 'Payload')
    PreparedStatement = Shapes::StructureShape.new(name: 'PreparedStatement')
    PreparedStatementDetailsList = Shapes::ListShape.new(name: 'PreparedStatementDetailsList')
    PreparedStatementNameList = Shapes::ListShape.new(name: 'PreparedStatementNameList')
    PreparedStatementSummary = Shapes::StructureShape.new(name: 'PreparedStatementSummary')
    PreparedStatementsList = Shapes::ListShape.new(name: 'PreparedStatementsList')
    PutCapacityAssignmentConfigurationInput = Shapes::StructureShape.new(name: 'PutCapacityAssignmentConfigurationInput')
    PutCapacityAssignmentConfigurationOutput = Shapes::StructureShape.new(name: 'PutCapacityAssignmentConfigurationOutput')
    QueryExecution = Shapes::StructureShape.new(name: 'QueryExecution')
    QueryExecutionContext = Shapes::StructureShape.new(name: 'QueryExecutionContext')
    QueryExecutionId = Shapes::StringShape.new(name: 'QueryExecutionId')
    QueryExecutionIdList = Shapes::ListShape.new(name: 'QueryExecutionIdList')
    QueryExecutionList = Shapes::ListShape.new(name: 'QueryExecutionList')
    QueryExecutionState = Shapes::StringShape.new(name: 'QueryExecutionState')
    QueryExecutionStatistics = Shapes::StructureShape.new(name: 'QueryExecutionStatistics')
    QueryExecutionStatus = Shapes::StructureShape.new(name: 'QueryExecutionStatus')
    QueryRuntimeStatistics = Shapes::StructureShape.new(name: 'QueryRuntimeStatistics')
    QueryRuntimeStatisticsRows = Shapes::StructureShape.new(name: 'QueryRuntimeStatisticsRows')
    QueryRuntimeStatisticsTimeline = Shapes::StructureShape.new(name: 'QueryRuntimeStatisticsTimeline')
    QueryStage = Shapes::StructureShape.new(name: 'QueryStage')
    QueryStagePlanNode = Shapes::StructureShape.new(name: 'QueryStagePlanNode')
    QueryStagePlanNodes = Shapes::ListShape.new(name: 'QueryStagePlanNodes')
    QueryStages = Shapes::ListShape.new(name: 'QueryStages')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultConfiguration = Shapes::StructureShape.new(name: 'ResultConfiguration')
    ResultConfigurationUpdates = Shapes::StructureShape.new(name: 'ResultConfigurationUpdates')
    ResultOutputLocation = Shapes::StringShape.new(name: 'ResultOutputLocation')
    ResultReuseByAgeConfiguration = Shapes::StructureShape.new(name: 'ResultReuseByAgeConfiguration')
    ResultReuseConfiguration = Shapes::StructureShape.new(name: 'ResultReuseConfiguration')
    ResultReuseInformation = Shapes::StructureShape.new(name: 'ResultReuseInformation')
    ResultSet = Shapes::StructureShape.new(name: 'ResultSet')
    ResultSetMetadata = Shapes::StructureShape.new(name: 'ResultSetMetadata')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Row = Shapes::StructureShape.new(name: 'Row')
    RowList = Shapes::ListShape.new(name: 'RowList')
    S3AclOption = Shapes::StringShape.new(name: 'S3AclOption')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SessionAlreadyExistsException = Shapes::StructureShape.new(name: 'SessionAlreadyExistsException')
    SessionConfiguration = Shapes::StructureShape.new(name: 'SessionConfiguration')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionIdleTimeoutInMinutes = Shapes::IntegerShape.new(name: 'SessionIdleTimeoutInMinutes')
    SessionManagerToken = Shapes::StringShape.new(name: 'SessionManagerToken')
    SessionState = Shapes::StringShape.new(name: 'SessionState')
    SessionStatistics = Shapes::StructureShape.new(name: 'SessionStatistics')
    SessionStatus = Shapes::StructureShape.new(name: 'SessionStatus')
    SessionSummary = Shapes::StructureShape.new(name: 'SessionSummary')
    SessionsList = Shapes::ListShape.new(name: 'SessionsList')
    StartCalculationExecutionRequest = Shapes::StructureShape.new(name: 'StartCalculationExecutionRequest')
    StartCalculationExecutionResponse = Shapes::StructureShape.new(name: 'StartCalculationExecutionResponse')
    StartQueryExecutionInput = Shapes::StructureShape.new(name: 'StartQueryExecutionInput')
    StartQueryExecutionOutput = Shapes::StructureShape.new(name: 'StartQueryExecutionOutput')
    StartSessionRequest = Shapes::StructureShape.new(name: 'StartSessionRequest')
    StartSessionResponse = Shapes::StructureShape.new(name: 'StartSessionResponse')
    StatementName = Shapes::StringShape.new(name: 'StatementName')
    StatementType = Shapes::StringShape.new(name: 'StatementType')
    StopCalculationExecutionRequest = Shapes::StructureShape.new(name: 'StopCalculationExecutionRequest')
    StopCalculationExecutionResponse = Shapes::StructureShape.new(name: 'StopCalculationExecutionResponse')
    StopQueryExecutionInput = Shapes::StructureShape.new(name: 'StopQueryExecutionInput')
    StopQueryExecutionOutput = Shapes::StructureShape.new(name: 'StopQueryExecutionOutput')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SupportedDPUSizeList = Shapes::ListShape.new(name: 'SupportedDPUSizeList')
    TableMetadata = Shapes::StructureShape.new(name: 'TableMetadata')
    TableMetadataList = Shapes::ListShape.new(name: 'TableMetadataList')
    TableTypeString = Shapes::StringShape.new(name: 'TableTypeString')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetDpusInteger = Shapes::IntegerShape.new(name: 'TargetDpusInteger')
    TerminateSessionRequest = Shapes::StructureShape.new(name: 'TerminateSessionRequest')
    TerminateSessionResponse = Shapes::StructureShape.new(name: 'TerminateSessionResponse')
    ThrottleReason = Shapes::StringShape.new(name: 'ThrottleReason')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TypeString = Shapes::StringShape.new(name: 'TypeString')
    UnprocessedNamedQueryId = Shapes::StructureShape.new(name: 'UnprocessedNamedQueryId')
    UnprocessedNamedQueryIdList = Shapes::ListShape.new(name: 'UnprocessedNamedQueryIdList')
    UnprocessedPreparedStatementName = Shapes::StructureShape.new(name: 'UnprocessedPreparedStatementName')
    UnprocessedPreparedStatementNameList = Shapes::ListShape.new(name: 'UnprocessedPreparedStatementNameList')
    UnprocessedQueryExecutionId = Shapes::StructureShape.new(name: 'UnprocessedQueryExecutionId')
    UnprocessedQueryExecutionIdList = Shapes::ListShape.new(name: 'UnprocessedQueryExecutionIdList')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateCapacityReservationInput = Shapes::StructureShape.new(name: 'UpdateCapacityReservationInput')
    UpdateCapacityReservationOutput = Shapes::StructureShape.new(name: 'UpdateCapacityReservationOutput')
    UpdateDataCatalogInput = Shapes::StructureShape.new(name: 'UpdateDataCatalogInput')
    UpdateDataCatalogOutput = Shapes::StructureShape.new(name: 'UpdateDataCatalogOutput')
    UpdateNamedQueryInput = Shapes::StructureShape.new(name: 'UpdateNamedQueryInput')
    UpdateNamedQueryOutput = Shapes::StructureShape.new(name: 'UpdateNamedQueryOutput')
    UpdateNotebookInput = Shapes::StructureShape.new(name: 'UpdateNotebookInput')
    UpdateNotebookMetadataInput = Shapes::StructureShape.new(name: 'UpdateNotebookMetadataInput')
    UpdateNotebookMetadataOutput = Shapes::StructureShape.new(name: 'UpdateNotebookMetadataOutput')
    UpdateNotebookOutput = Shapes::StructureShape.new(name: 'UpdateNotebookOutput')
    UpdatePreparedStatementInput = Shapes::StructureShape.new(name: 'UpdatePreparedStatementInput')
    UpdatePreparedStatementOutput = Shapes::StructureShape.new(name: 'UpdatePreparedStatementOutput')
    UpdateWorkGroupInput = Shapes::StructureShape.new(name: 'UpdateWorkGroupInput')
    UpdateWorkGroupOutput = Shapes::StructureShape.new(name: 'UpdateWorkGroupOutput')
    WorkGroup = Shapes::StructureShape.new(name: 'WorkGroup')
    WorkGroupConfiguration = Shapes::StructureShape.new(name: 'WorkGroupConfiguration')
    WorkGroupConfigurationUpdates = Shapes::StructureShape.new(name: 'WorkGroupConfigurationUpdates')
    WorkGroupDescriptionString = Shapes::StringShape.new(name: 'WorkGroupDescriptionString')
    WorkGroupName = Shapes::StringShape.new(name: 'WorkGroupName')
    WorkGroupNamesList = Shapes::ListShape.new(name: 'WorkGroupNamesList')
    WorkGroupState = Shapes::StringShape.new(name: 'WorkGroupState')
    WorkGroupSummary = Shapes::StructureShape.new(name: 'WorkGroupSummary')
    WorkGroupsList = Shapes::ListShape.new(name: 'WorkGroupsList')
    datumList = Shapes::ListShape.new(name: 'datumList')
    datumString = Shapes::StringShape.new(name: 'datumString')

    AclConfiguration.add_member(:s3_acl_option, Shapes::ShapeRef.new(shape: S3AclOption, required: true, location_name: "S3AclOption"))
    AclConfiguration.struct_class = Types::AclConfiguration

    ApplicationDPUSizes.add_member(:application_runtime_id, Shapes::ShapeRef.new(shape: NameString, location_name: "ApplicationRuntimeId"))
    ApplicationDPUSizes.add_member(:supported_dpu_sizes, Shapes::ShapeRef.new(shape: SupportedDPUSizeList, location_name: "SupportedDPUSizes"))
    ApplicationDPUSizes.struct_class = Types::ApplicationDPUSizes

    ApplicationDPUSizesList.member = Shapes::ShapeRef.new(shape: ApplicationDPUSizes)

    AthenaError.add_member(:error_category, Shapes::ShapeRef.new(shape: ErrorCategory, location_name: "ErrorCategory"))
    AthenaError.add_member(:error_type, Shapes::ShapeRef.new(shape: ErrorType, location_name: "ErrorType"))
    AthenaError.add_member(:retryable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Retryable"))
    AthenaError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    AthenaError.struct_class = Types::AthenaError

    BatchGetNamedQueryInput.add_member(:named_query_ids, Shapes::ShapeRef.new(shape: NamedQueryIdList, required: true, location_name: "NamedQueryIds"))
    BatchGetNamedQueryInput.struct_class = Types::BatchGetNamedQueryInput

    BatchGetNamedQueryOutput.add_member(:named_queries, Shapes::ShapeRef.new(shape: NamedQueryList, location_name: "NamedQueries"))
    BatchGetNamedQueryOutput.add_member(:unprocessed_named_query_ids, Shapes::ShapeRef.new(shape: UnprocessedNamedQueryIdList, location_name: "UnprocessedNamedQueryIds"))
    BatchGetNamedQueryOutput.struct_class = Types::BatchGetNamedQueryOutput

    BatchGetPreparedStatementInput.add_member(:prepared_statement_names, Shapes::ShapeRef.new(shape: PreparedStatementNameList, required: true, location_name: "PreparedStatementNames"))
    BatchGetPreparedStatementInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    BatchGetPreparedStatementInput.struct_class = Types::BatchGetPreparedStatementInput

    BatchGetPreparedStatementOutput.add_member(:prepared_statements, Shapes::ShapeRef.new(shape: PreparedStatementDetailsList, location_name: "PreparedStatements"))
    BatchGetPreparedStatementOutput.add_member(:unprocessed_prepared_statement_names, Shapes::ShapeRef.new(shape: UnprocessedPreparedStatementNameList, location_name: "UnprocessedPreparedStatementNames"))
    BatchGetPreparedStatementOutput.struct_class = Types::BatchGetPreparedStatementOutput

    BatchGetQueryExecutionInput.add_member(:query_execution_ids, Shapes::ShapeRef.new(shape: QueryExecutionIdList, required: true, location_name: "QueryExecutionIds"))
    BatchGetQueryExecutionInput.struct_class = Types::BatchGetQueryExecutionInput

    BatchGetQueryExecutionOutput.add_member(:query_executions, Shapes::ShapeRef.new(shape: QueryExecutionList, location_name: "QueryExecutions"))
    BatchGetQueryExecutionOutput.add_member(:unprocessed_query_execution_ids, Shapes::ShapeRef.new(shape: UnprocessedQueryExecutionIdList, location_name: "UnprocessedQueryExecutionIds"))
    BatchGetQueryExecutionOutput.struct_class = Types::BatchGetQueryExecutionOutput

    CalculationConfiguration.add_member(:code_block, Shapes::ShapeRef.new(shape: CodeBlock, location_name: "CodeBlock"))
    CalculationConfiguration.struct_class = Types::CalculationConfiguration

    CalculationResult.add_member(:std_out_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "StdOutS3Uri"))
    CalculationResult.add_member(:std_error_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "StdErrorS3Uri"))
    CalculationResult.add_member(:result_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "ResultS3Uri"))
    CalculationResult.add_member(:result_type, Shapes::ShapeRef.new(shape: CalculationResultType, location_name: "ResultType"))
    CalculationResult.struct_class = Types::CalculationResult

    CalculationStatistics.add_member(:dpu_execution_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "DpuExecutionInMillis"))
    CalculationStatistics.add_member(:progress, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Progress"))
    CalculationStatistics.struct_class = Types::CalculationStatistics

    CalculationStatus.add_member(:submission_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "SubmissionDateTime"))
    CalculationStatus.add_member(:completion_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CompletionDateTime"))
    CalculationStatus.add_member(:state, Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: "State"))
    CalculationStatus.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "StateChangeReason"))
    CalculationStatus.struct_class = Types::CalculationStatus

    CalculationSummary.add_member(:calculation_execution_id, Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: "CalculationExecutionId"))
    CalculationSummary.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CalculationSummary.add_member(:status, Shapes::ShapeRef.new(shape: CalculationStatus, location_name: "Status"))
    CalculationSummary.struct_class = Types::CalculationSummary

    CalculationsList.member = Shapes::ShapeRef.new(shape: CalculationSummary)

    CancelCapacityReservationInput.add_member(:name, Shapes::ShapeRef.new(shape: CapacityReservationName, required: true, location_name: "Name"))
    CancelCapacityReservationInput.struct_class = Types::CancelCapacityReservationInput

    CancelCapacityReservationOutput.struct_class = Types::CancelCapacityReservationOutput

    CapacityAllocation.add_member(:status, Shapes::ShapeRef.new(shape: CapacityAllocationStatus, required: true, location_name: "Status"))
    CapacityAllocation.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    CapacityAllocation.add_member(:request_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "RequestTime"))
    CapacityAllocation.add_member(:request_completion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RequestCompletionTime"))
    CapacityAllocation.struct_class = Types::CapacityAllocation

    CapacityAssignment.add_member(:work_group_names, Shapes::ShapeRef.new(shape: WorkGroupNamesList, location_name: "WorkGroupNames"))
    CapacityAssignment.struct_class = Types::CapacityAssignment

    CapacityAssignmentConfiguration.add_member(:capacity_reservation_name, Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: "CapacityReservationName"))
    CapacityAssignmentConfiguration.add_member(:capacity_assignments, Shapes::ShapeRef.new(shape: CapacityAssignmentsList, location_name: "CapacityAssignments"))
    CapacityAssignmentConfiguration.struct_class = Types::CapacityAssignmentConfiguration

    CapacityAssignmentsList.member = Shapes::ShapeRef.new(shape: CapacityAssignment)

    CapacityReservation.add_member(:name, Shapes::ShapeRef.new(shape: CapacityReservationName, required: true, location_name: "Name"))
    CapacityReservation.add_member(:status, Shapes::ShapeRef.new(shape: CapacityReservationStatus, required: true, location_name: "Status"))
    CapacityReservation.add_member(:target_dpus, Shapes::ShapeRef.new(shape: TargetDpusInteger, required: true, location_name: "TargetDpus"))
    CapacityReservation.add_member(:allocated_dpus, Shapes::ShapeRef.new(shape: AllocatedDpusInteger, required: true, location_name: "AllocatedDpus"))
    CapacityReservation.add_member(:last_allocation, Shapes::ShapeRef.new(shape: CapacityAllocation, location_name: "LastAllocation"))
    CapacityReservation.add_member(:last_successful_allocation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastSuccessfulAllocationTime"))
    CapacityReservation.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    CapacityReservation.struct_class = Types::CapacityReservation

    CapacityReservationsList.member = Shapes::ShapeRef.new(shape: CapacityReservation)

    Column.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    Column.add_member(:type, Shapes::ShapeRef.new(shape: TypeString, location_name: "Type"))
    Column.add_member(:comment, Shapes::ShapeRef.new(shape: CommentString, location_name: "Comment"))
    Column.struct_class = Types::Column

    ColumnInfo.add_member(:catalog_name, Shapes::ShapeRef.new(shape: String, location_name: "CatalogName"))
    ColumnInfo.add_member(:schema_name, Shapes::ShapeRef.new(shape: String, location_name: "SchemaName"))
    ColumnInfo.add_member(:table_name, Shapes::ShapeRef.new(shape: String, location_name: "TableName"))
    ColumnInfo.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ColumnInfo.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "Label"))
    ColumnInfo.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Type"))
    ColumnInfo.add_member(:precision, Shapes::ShapeRef.new(shape: Integer, location_name: "Precision"))
    ColumnInfo.add_member(:scale, Shapes::ShapeRef.new(shape: Integer, location_name: "Scale"))
    ColumnInfo.add_member(:nullable, Shapes::ShapeRef.new(shape: ColumnNullable, location_name: "Nullable"))
    ColumnInfo.add_member(:case_sensitive, Shapes::ShapeRef.new(shape: Boolean, location_name: "CaseSensitive"))
    ColumnInfo.struct_class = Types::ColumnInfo

    ColumnInfoList.member = Shapes::ShapeRef.new(shape: ColumnInfo)

    ColumnList.member = Shapes::ShapeRef.new(shape: Column)

    CreateCapacityReservationInput.add_member(:target_dpus, Shapes::ShapeRef.new(shape: TargetDpusInteger, required: true, location_name: "TargetDpus"))
    CreateCapacityReservationInput.add_member(:name, Shapes::ShapeRef.new(shape: CapacityReservationName, required: true, location_name: "Name"))
    CreateCapacityReservationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateCapacityReservationInput.struct_class = Types::CreateCapacityReservationInput

    CreateCapacityReservationOutput.struct_class = Types::CreateCapacityReservationOutput

    CreateDataCatalogInput.add_member(:name, Shapes::ShapeRef.new(shape: CatalogNameString, required: true, location_name: "Name"))
    CreateDataCatalogInput.add_member(:type, Shapes::ShapeRef.new(shape: DataCatalogType, required: true, location_name: "Type"))
    CreateDataCatalogInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateDataCatalogInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    CreateDataCatalogInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataCatalogInput.struct_class = Types::CreateDataCatalogInput

    CreateDataCatalogOutput.struct_class = Types::CreateDataCatalogOutput

    CreateNamedQueryInput.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateNamedQueryInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateNamedQueryInput.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseString, required: true, location_name: "Database"))
    CreateNamedQueryInput.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    CreateNamedQueryInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateNamedQueryInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    CreateNamedQueryInput.struct_class = Types::CreateNamedQueryInput

    CreateNamedQueryOutput.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, location_name: "NamedQueryId"))
    CreateNamedQueryOutput.struct_class = Types::CreateNamedQueryOutput

    CreateNotebookInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    CreateNotebookInput.add_member(:name, Shapes::ShapeRef.new(shape: NotebookName, required: true, location_name: "Name"))
    CreateNotebookInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    CreateNotebookInput.struct_class = Types::CreateNotebookInput

    CreateNotebookOutput.add_member(:notebook_id, Shapes::ShapeRef.new(shape: NotebookId, location_name: "NotebookId"))
    CreateNotebookOutput.struct_class = Types::CreateNotebookOutput

    CreatePreparedStatementInput.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementName, required: true, location_name: "StatementName"))
    CreatePreparedStatementInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    CreatePreparedStatementInput.add_member(:query_statement, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryStatement"))
    CreatePreparedStatementInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreatePreparedStatementInput.struct_class = Types::CreatePreparedStatementInput

    CreatePreparedStatementOutput.struct_class = Types::CreatePreparedStatementOutput

    CreatePresignedNotebookUrlRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    CreatePresignedNotebookUrlRequest.struct_class = Types::CreatePresignedNotebookUrlRequest

    CreatePresignedNotebookUrlResponse.add_member(:notebook_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "NotebookUrl"))
    CreatePresignedNotebookUrlResponse.add_member(:auth_token, Shapes::ShapeRef.new(shape: AuthToken, required: true, location_name: "AuthToken"))
    CreatePresignedNotebookUrlResponse.add_member(:auth_token_expiration_time, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "AuthTokenExpirationTime"))
    CreatePresignedNotebookUrlResponse.struct_class = Types::CreatePresignedNotebookUrlResponse

    CreateWorkGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "Name"))
    CreateWorkGroupInput.add_member(:configuration, Shapes::ShapeRef.new(shape: WorkGroupConfiguration, location_name: "Configuration"))
    CreateWorkGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: "Description"))
    CreateWorkGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWorkGroupInput.struct_class = Types::CreateWorkGroupInput

    CreateWorkGroupOutput.struct_class = Types::CreateWorkGroupOutput

    CustomerContentEncryptionConfiguration.add_member(:kms_key, Shapes::ShapeRef.new(shape: KmsKey, required: true, location_name: "KmsKey"))
    CustomerContentEncryptionConfiguration.struct_class = Types::CustomerContentEncryptionConfiguration

    DataCatalog.add_member(:name, Shapes::ShapeRef.new(shape: CatalogNameString, required: true, location_name: "Name"))
    DataCatalog.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    DataCatalog.add_member(:type, Shapes::ShapeRef.new(shape: DataCatalogType, required: true, location_name: "Type"))
    DataCatalog.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    DataCatalog.struct_class = Types::DataCatalog

    DataCatalogSummary.add_member(:catalog_name, Shapes::ShapeRef.new(shape: CatalogNameString, location_name: "CatalogName"))
    DataCatalogSummary.add_member(:type, Shapes::ShapeRef.new(shape: DataCatalogType, location_name: "Type"))
    DataCatalogSummary.struct_class = Types::DataCatalogSummary

    DataCatalogSummaryList.member = Shapes::ShapeRef.new(shape: DataCatalogSummary)

    Database.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    Database.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Database.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    Database.struct_class = Types::Database

    DatabaseList.member = Shapes::ShapeRef.new(shape: Database)

    Datum.add_member(:var_char_value, Shapes::ShapeRef.new(shape: datumString, location_name: "VarCharValue"))
    Datum.struct_class = Types::Datum

    DeleteCapacityReservationInput.add_member(:name, Shapes::ShapeRef.new(shape: CapacityReservationName, required: true, location_name: "Name"))
    DeleteCapacityReservationInput.struct_class = Types::DeleteCapacityReservationInput

    DeleteCapacityReservationOutput.struct_class = Types::DeleteCapacityReservationOutput

    DeleteDataCatalogInput.add_member(:name, Shapes::ShapeRef.new(shape: CatalogNameString, required: true, location_name: "Name"))
    DeleteDataCatalogInput.struct_class = Types::DeleteDataCatalogInput

    DeleteDataCatalogOutput.struct_class = Types::DeleteDataCatalogOutput

    DeleteNamedQueryInput.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, required: true, location_name: "NamedQueryId", metadata: {"idempotencyToken"=>true}))
    DeleteNamedQueryInput.struct_class = Types::DeleteNamedQueryInput

    DeleteNamedQueryOutput.struct_class = Types::DeleteNamedQueryOutput

    DeleteNotebookInput.add_member(:notebook_id, Shapes::ShapeRef.new(shape: NotebookId, required: true, location_name: "NotebookId"))
    DeleteNotebookInput.struct_class = Types::DeleteNotebookInput

    DeleteNotebookOutput.struct_class = Types::DeleteNotebookOutput

    DeletePreparedStatementInput.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementName, required: true, location_name: "StatementName"))
    DeletePreparedStatementInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    DeletePreparedStatementInput.struct_class = Types::DeletePreparedStatementInput

    DeletePreparedStatementOutput.struct_class = Types::DeletePreparedStatementOutput

    DeleteWorkGroupInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    DeleteWorkGroupInput.add_member(:recursive_delete_option, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RecursiveDeleteOption"))
    DeleteWorkGroupInput.struct_class = Types::DeleteWorkGroupInput

    DeleteWorkGroupOutput.struct_class = Types::DeleteWorkGroupOutput

    EncryptionConfiguration.add_member(:encryption_option, Shapes::ShapeRef.new(shape: EncryptionOption, required: true, location_name: "EncryptionOption"))
    EncryptionConfiguration.add_member(:kms_key, Shapes::ShapeRef.new(shape: String, location_name: "KmsKey"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    EngineConfiguration.add_member(:coordinator_dpu_size, Shapes::ShapeRef.new(shape: CoordinatorDpuSize, location_name: "CoordinatorDpuSize"))
    EngineConfiguration.add_member(:max_concurrent_dpus, Shapes::ShapeRef.new(shape: MaxConcurrentDpus, required: true, location_name: "MaxConcurrentDpus"))
    EngineConfiguration.add_member(:default_executor_dpu_size, Shapes::ShapeRef.new(shape: DefaultExecutorDpuSize, location_name: "DefaultExecutorDpuSize"))
    EngineConfiguration.add_member(:additional_configs, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "AdditionalConfigs"))
    EngineConfiguration.add_member(:spark_properties, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "SparkProperties"))
    EngineConfiguration.struct_class = Types::EngineConfiguration

    EngineVersion.add_member(:selected_engine_version, Shapes::ShapeRef.new(shape: NameString, location_name: "SelectedEngineVersion"))
    EngineVersion.add_member(:effective_engine_version, Shapes::ShapeRef.new(shape: NameString, location_name: "EffectiveEngineVersion"))
    EngineVersion.struct_class = Types::EngineVersion

    EngineVersionsList.member = Shapes::ShapeRef.new(shape: EngineVersion)

    ExecutionParameters.member = Shapes::ShapeRef.new(shape: ExecutionParameter)

    ExecutorsSummary.add_member(:executor_id, Shapes::ShapeRef.new(shape: ExecutorId, required: true, location_name: "ExecutorId"))
    ExecutorsSummary.add_member(:executor_type, Shapes::ShapeRef.new(shape: ExecutorType, location_name: "ExecutorType"))
    ExecutorsSummary.add_member(:start_date_time, Shapes::ShapeRef.new(shape: Long, location_name: "StartDateTime"))
    ExecutorsSummary.add_member(:termination_date_time, Shapes::ShapeRef.new(shape: Long, location_name: "TerminationDateTime"))
    ExecutorsSummary.add_member(:executor_state, Shapes::ShapeRef.new(shape: ExecutorState, location_name: "ExecutorState"))
    ExecutorsSummary.add_member(:executor_size, Shapes::ShapeRef.new(shape: Long, location_name: "ExecutorSize"))
    ExecutorsSummary.struct_class = Types::ExecutorsSummary

    ExecutorsSummaryList.member = Shapes::ShapeRef.new(shape: ExecutorsSummary)

    ExportNotebookInput.add_member(:notebook_id, Shapes::ShapeRef.new(shape: NotebookId, required: true, location_name: "NotebookId"))
    ExportNotebookInput.struct_class = Types::ExportNotebookInput

    ExportNotebookOutput.add_member(:notebook_metadata, Shapes::ShapeRef.new(shape: NotebookMetadata, location_name: "NotebookMetadata"))
    ExportNotebookOutput.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "Payload"))
    ExportNotebookOutput.struct_class = Types::ExportNotebookOutput

    FilterDefinition.add_member(:name, Shapes::ShapeRef.new(shape: NotebookName, location_name: "Name"))
    FilterDefinition.struct_class = Types::FilterDefinition

    GetCalculationExecutionCodeRequest.add_member(:calculation_execution_id, Shapes::ShapeRef.new(shape: CalculationExecutionId, required: true, location_name: "CalculationExecutionId"))
    GetCalculationExecutionCodeRequest.struct_class = Types::GetCalculationExecutionCodeRequest

    GetCalculationExecutionCodeResponse.add_member(:code_block, Shapes::ShapeRef.new(shape: CodeBlock, location_name: "CodeBlock"))
    GetCalculationExecutionCodeResponse.struct_class = Types::GetCalculationExecutionCodeResponse

    GetCalculationExecutionRequest.add_member(:calculation_execution_id, Shapes::ShapeRef.new(shape: CalculationExecutionId, required: true, location_name: "CalculationExecutionId"))
    GetCalculationExecutionRequest.struct_class = Types::GetCalculationExecutionRequest

    GetCalculationExecutionResponse.add_member(:calculation_execution_id, Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: "CalculationExecutionId"))
    GetCalculationExecutionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    GetCalculationExecutionResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    GetCalculationExecutionResponse.add_member(:working_directory, Shapes::ShapeRef.new(shape: S3Uri, location_name: "WorkingDirectory"))
    GetCalculationExecutionResponse.add_member(:status, Shapes::ShapeRef.new(shape: CalculationStatus, location_name: "Status"))
    GetCalculationExecutionResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: CalculationStatistics, location_name: "Statistics"))
    GetCalculationExecutionResponse.add_member(:result, Shapes::ShapeRef.new(shape: CalculationResult, location_name: "Result"))
    GetCalculationExecutionResponse.struct_class = Types::GetCalculationExecutionResponse

    GetCalculationExecutionStatusRequest.add_member(:calculation_execution_id, Shapes::ShapeRef.new(shape: CalculationExecutionId, required: true, location_name: "CalculationExecutionId"))
    GetCalculationExecutionStatusRequest.struct_class = Types::GetCalculationExecutionStatusRequest

    GetCalculationExecutionStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: CalculationStatus, location_name: "Status"))
    GetCalculationExecutionStatusResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: CalculationStatistics, location_name: "Statistics"))
    GetCalculationExecutionStatusResponse.struct_class = Types::GetCalculationExecutionStatusResponse

    GetCapacityAssignmentConfigurationInput.add_member(:capacity_reservation_name, Shapes::ShapeRef.new(shape: CapacityReservationName, required: true, location_name: "CapacityReservationName"))
    GetCapacityAssignmentConfigurationInput.struct_class = Types::GetCapacityAssignmentConfigurationInput

    GetCapacityAssignmentConfigurationOutput.add_member(:capacity_assignment_configuration, Shapes::ShapeRef.new(shape: CapacityAssignmentConfiguration, required: true, location_name: "CapacityAssignmentConfiguration"))
    GetCapacityAssignmentConfigurationOutput.struct_class = Types::GetCapacityAssignmentConfigurationOutput

    GetCapacityReservationInput.add_member(:name, Shapes::ShapeRef.new(shape: CapacityReservationName, required: true, location_name: "Name"))
    GetCapacityReservationInput.struct_class = Types::GetCapacityReservationInput

    GetCapacityReservationOutput.add_member(:capacity_reservation, Shapes::ShapeRef.new(shape: CapacityReservation, required: true, location_name: "CapacityReservation"))
    GetCapacityReservationOutput.struct_class = Types::GetCapacityReservationOutput

    GetDataCatalogInput.add_member(:name, Shapes::ShapeRef.new(shape: CatalogNameString, required: true, location_name: "Name"))
    GetDataCatalogInput.struct_class = Types::GetDataCatalogInput

    GetDataCatalogOutput.add_member(:data_catalog, Shapes::ShapeRef.new(shape: DataCatalog, location_name: "DataCatalog"))
    GetDataCatalogOutput.struct_class = Types::GetDataCatalogOutput

    GetDatabaseInput.add_member(:catalog_name, Shapes::ShapeRef.new(shape: CatalogNameString, required: true, location_name: "CatalogName"))
    GetDatabaseInput.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetDatabaseInput.struct_class = Types::GetDatabaseInput

    GetDatabaseOutput.add_member(:database, Shapes::ShapeRef.new(shape: Database, location_name: "Database"))
    GetDatabaseOutput.struct_class = Types::GetDatabaseOutput

    GetNamedQueryInput.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, required: true, location_name: "NamedQueryId"))
    GetNamedQueryInput.struct_class = Types::GetNamedQueryInput

    GetNamedQueryOutput.add_member(:named_query, Shapes::ShapeRef.new(shape: NamedQuery, location_name: "NamedQuery"))
    GetNamedQueryOutput.struct_class = Types::GetNamedQueryOutput

    GetNotebookMetadataInput.add_member(:notebook_id, Shapes::ShapeRef.new(shape: NotebookId, required: true, location_name: "NotebookId"))
    GetNotebookMetadataInput.struct_class = Types::GetNotebookMetadataInput

    GetNotebookMetadataOutput.add_member(:notebook_metadata, Shapes::ShapeRef.new(shape: NotebookMetadata, location_name: "NotebookMetadata"))
    GetNotebookMetadataOutput.struct_class = Types::GetNotebookMetadataOutput

    GetPreparedStatementInput.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementName, required: true, location_name: "StatementName"))
    GetPreparedStatementInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    GetPreparedStatementInput.struct_class = Types::GetPreparedStatementInput

    GetPreparedStatementOutput.add_member(:prepared_statement, Shapes::ShapeRef.new(shape: PreparedStatement, location_name: "PreparedStatement"))
    GetPreparedStatementOutput.struct_class = Types::GetPreparedStatementOutput

    GetQueryExecutionInput.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, required: true, location_name: "QueryExecutionId"))
    GetQueryExecutionInput.struct_class = Types::GetQueryExecutionInput

    GetQueryExecutionOutput.add_member(:query_execution, Shapes::ShapeRef.new(shape: QueryExecution, location_name: "QueryExecution"))
    GetQueryExecutionOutput.struct_class = Types::GetQueryExecutionOutput

    GetQueryResultsInput.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, required: true, location_name: "QueryExecutionId"))
    GetQueryResultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetQueryResultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: "MaxResults"))
    GetQueryResultsInput.struct_class = Types::GetQueryResultsInput

    GetQueryResultsOutput.add_member(:update_count, Shapes::ShapeRef.new(shape: Long, location_name: "UpdateCount"))
    GetQueryResultsOutput.add_member(:result_set, Shapes::ShapeRef.new(shape: ResultSet, location_name: "ResultSet"))
    GetQueryResultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetQueryResultsOutput.struct_class = Types::GetQueryResultsOutput

    GetQueryRuntimeStatisticsInput.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, required: true, location_name: "QueryExecutionId"))
    GetQueryRuntimeStatisticsInput.struct_class = Types::GetQueryRuntimeStatisticsInput

    GetQueryRuntimeStatisticsOutput.add_member(:query_runtime_statistics, Shapes::ShapeRef.new(shape: QueryRuntimeStatistics, location_name: "QueryRuntimeStatistics"))
    GetQueryRuntimeStatisticsOutput.struct_class = Types::GetQueryRuntimeStatisticsOutput

    GetSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    GetSessionRequest.struct_class = Types::GetSessionRequest

    GetSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    GetSessionResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    GetSessionResponse.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    GetSessionResponse.add_member(:engine_version, Shapes::ShapeRef.new(shape: NameString, location_name: "EngineVersion"))
    GetSessionResponse.add_member(:engine_configuration, Shapes::ShapeRef.new(shape: EngineConfiguration, location_name: "EngineConfiguration"))
    GetSessionResponse.add_member(:notebook_version, Shapes::ShapeRef.new(shape: NameString, location_name: "NotebookVersion"))
    GetSessionResponse.add_member(:session_configuration, Shapes::ShapeRef.new(shape: SessionConfiguration, location_name: "SessionConfiguration"))
    GetSessionResponse.add_member(:status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "Status"))
    GetSessionResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: SessionStatistics, location_name: "Statistics"))
    GetSessionResponse.struct_class = Types::GetSessionResponse

    GetSessionStatusRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    GetSessionStatusRequest.struct_class = Types::GetSessionStatusRequest

    GetSessionStatusResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    GetSessionStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "Status"))
    GetSessionStatusResponse.struct_class = Types::GetSessionStatusResponse

    GetTableMetadataInput.add_member(:catalog_name, Shapes::ShapeRef.new(shape: CatalogNameString, required: true, location_name: "CatalogName"))
    GetTableMetadataInput.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetTableMetadataInput.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetTableMetadataInput.struct_class = Types::GetTableMetadataInput

    GetTableMetadataOutput.add_member(:table_metadata, Shapes::ShapeRef.new(shape: TableMetadata, location_name: "TableMetadata"))
    GetTableMetadataOutput.struct_class = Types::GetTableMetadataOutput

    GetWorkGroupInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    GetWorkGroupInput.struct_class = Types::GetWorkGroupInput

    GetWorkGroupOutput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroup, location_name: "WorkGroup"))
    GetWorkGroupOutput.struct_class = Types::GetWorkGroupOutput

    ImportNotebookInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    ImportNotebookInput.add_member(:name, Shapes::ShapeRef.new(shape: NotebookName, required: true, location_name: "Name"))
    ImportNotebookInput.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, required: true, location_name: "Payload"))
    ImportNotebookInput.add_member(:type, Shapes::ShapeRef.new(shape: NotebookType, required: true, location_name: "Type"))
    ImportNotebookInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    ImportNotebookInput.struct_class = Types::ImportNotebookInput

    ImportNotebookOutput.add_member(:notebook_id, Shapes::ShapeRef.new(shape: NotebookId, location_name: "NotebookId"))
    ImportNotebookOutput.struct_class = Types::ImportNotebookOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidRequestException.add_member(:athena_error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "AthenaErrorCode"))
    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListApplicationDPUSizesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxApplicationDPUSizesCount, location_name: "MaxResults"))
    ListApplicationDPUSizesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationDPUSizesInput.struct_class = Types::ListApplicationDPUSizesInput

    ListApplicationDPUSizesOutput.add_member(:application_dpu_sizes, Shapes::ShapeRef.new(shape: ApplicationDPUSizesList, location_name: "ApplicationDPUSizes"))
    ListApplicationDPUSizesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationDPUSizesOutput.struct_class = Types::ListApplicationDPUSizesOutput

    ListCalculationExecutionsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    ListCalculationExecutionsRequest.add_member(:state_filter, Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: "StateFilter"))
    ListCalculationExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxCalculationsCount, location_name: "MaxResults"))
    ListCalculationExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: "NextToken"))
    ListCalculationExecutionsRequest.struct_class = Types::ListCalculationExecutionsRequest

    ListCalculationExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: "NextToken"))
    ListCalculationExecutionsResponse.add_member(:calculations, Shapes::ShapeRef.new(shape: CalculationsList, location_name: "Calculations"))
    ListCalculationExecutionsResponse.struct_class = Types::ListCalculationExecutionsResponse

    ListCapacityReservationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCapacityReservationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxCapacityReservationsCount, location_name: "MaxResults"))
    ListCapacityReservationsInput.struct_class = Types::ListCapacityReservationsInput

    ListCapacityReservationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCapacityReservationsOutput.add_member(:capacity_reservations, Shapes::ShapeRef.new(shape: CapacityReservationsList, required: true, location_name: "CapacityReservations"))
    ListCapacityReservationsOutput.struct_class = Types::ListCapacityReservationsOutput

    ListDataCatalogsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDataCatalogsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxDataCatalogsCount, location_name: "MaxResults"))
    ListDataCatalogsInput.struct_class = Types::ListDataCatalogsInput

    ListDataCatalogsOutput.add_member(:data_catalogs_summary, Shapes::ShapeRef.new(shape: DataCatalogSummaryList, location_name: "DataCatalogsSummary"))
    ListDataCatalogsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDataCatalogsOutput.struct_class = Types::ListDataCatalogsOutput

    ListDatabasesInput.add_member(:catalog_name, Shapes::ShapeRef.new(shape: CatalogNameString, required: true, location_name: "CatalogName"))
    ListDatabasesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDatabasesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxDatabasesCount, location_name: "MaxResults"))
    ListDatabasesInput.struct_class = Types::ListDatabasesInput

    ListDatabasesOutput.add_member(:database_list, Shapes::ShapeRef.new(shape: DatabaseList, location_name: "DatabaseList"))
    ListDatabasesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDatabasesOutput.struct_class = Types::ListDatabasesOutput

    ListEngineVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListEngineVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxEngineVersionsCount, location_name: "MaxResults"))
    ListEngineVersionsInput.struct_class = Types::ListEngineVersionsInput

    ListEngineVersionsOutput.add_member(:engine_versions, Shapes::ShapeRef.new(shape: EngineVersionsList, location_name: "EngineVersions"))
    ListEngineVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListEngineVersionsOutput.struct_class = Types::ListEngineVersionsOutput

    ListExecutorsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    ListExecutorsRequest.add_member(:executor_state_filter, Shapes::ShapeRef.new(shape: ExecutorState, location_name: "ExecutorStateFilter"))
    ListExecutorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListExecutorsCount, location_name: "MaxResults"))
    ListExecutorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: "NextToken"))
    ListExecutorsRequest.struct_class = Types::ListExecutorsRequest

    ListExecutorsResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    ListExecutorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: "NextToken"))
    ListExecutorsResponse.add_member(:executors_summary, Shapes::ShapeRef.new(shape: ExecutorsSummaryList, location_name: "ExecutorsSummary"))
    ListExecutorsResponse.struct_class = Types::ListExecutorsResponse

    ListNamedQueriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListNamedQueriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxNamedQueriesCount, location_name: "MaxResults"))
    ListNamedQueriesInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    ListNamedQueriesInput.struct_class = Types::ListNamedQueriesInput

    ListNamedQueriesOutput.add_member(:named_query_ids, Shapes::ShapeRef.new(shape: NamedQueryIdList, location_name: "NamedQueryIds"))
    ListNamedQueriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListNamedQueriesOutput.struct_class = Types::ListNamedQueriesOutput

    ListNotebookMetadataInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterDefinition, location_name: "Filters"))
    ListNotebookMetadataInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListNotebookMetadataInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxNotebooksCount, location_name: "MaxResults"))
    ListNotebookMetadataInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    ListNotebookMetadataInput.struct_class = Types::ListNotebookMetadataInput

    ListNotebookMetadataOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListNotebookMetadataOutput.add_member(:notebook_metadata_list, Shapes::ShapeRef.new(shape: NotebookMetadataArray, location_name: "NotebookMetadataList"))
    ListNotebookMetadataOutput.struct_class = Types::ListNotebookMetadataOutput

    ListNotebookSessionsRequest.add_member(:notebook_id, Shapes::ShapeRef.new(shape: NotebookId, required: true, location_name: "NotebookId"))
    ListNotebookSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSessionsCount, location_name: "MaxResults"))
    ListNotebookSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListNotebookSessionsRequest.struct_class = Types::ListNotebookSessionsRequest

    ListNotebookSessionsResponse.add_member(:notebook_sessions_list, Shapes::ShapeRef.new(shape: NotebookSessionsList, required: true, location_name: "NotebookSessionsList"))
    ListNotebookSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListNotebookSessionsResponse.struct_class = Types::ListNotebookSessionsResponse

    ListPreparedStatementsInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    ListPreparedStatementsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPreparedStatementsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPreparedStatementsCount, location_name: "MaxResults"))
    ListPreparedStatementsInput.struct_class = Types::ListPreparedStatementsInput

    ListPreparedStatementsOutput.add_member(:prepared_statements, Shapes::ShapeRef.new(shape: PreparedStatementsList, location_name: "PreparedStatements"))
    ListPreparedStatementsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPreparedStatementsOutput.struct_class = Types::ListPreparedStatementsOutput

    ListQueryExecutionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListQueryExecutionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxQueryExecutionsCount, location_name: "MaxResults"))
    ListQueryExecutionsInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    ListQueryExecutionsInput.struct_class = Types::ListQueryExecutionsInput

    ListQueryExecutionsOutput.add_member(:query_execution_ids, Shapes::ShapeRef.new(shape: QueryExecutionIdList, location_name: "QueryExecutionIds"))
    ListQueryExecutionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListQueryExecutionsOutput.struct_class = Types::ListQueryExecutionsOutput

    ListSessionsRequest.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    ListSessionsRequest.add_member(:state_filter, Shapes::ShapeRef.new(shape: SessionState, location_name: "StateFilter"))
    ListSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSessionsCount, location_name: "MaxResults"))
    ListSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: "NextToken"))
    ListSessionsRequest.struct_class = Types::ListSessionsRequest

    ListSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: "NextToken"))
    ListSessionsResponse.add_member(:sessions, Shapes::ShapeRef.new(shape: SessionsList, location_name: "Sessions"))
    ListSessionsResponse.struct_class = Types::ListSessionsResponse

    ListTableMetadataInput.add_member(:catalog_name, Shapes::ShapeRef.new(shape: CatalogNameString, required: true, location_name: "CatalogName"))
    ListTableMetadataInput.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    ListTableMetadataInput.add_member(:expression, Shapes::ShapeRef.new(shape: ExpressionString, location_name: "Expression"))
    ListTableMetadataInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTableMetadataInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxTableMetadataCount, location_name: "MaxResults"))
    ListTableMetadataInput.struct_class = Types::ListTableMetadataInput

    ListTableMetadataOutput.add_member(:table_metadata_list, Shapes::ShapeRef.new(shape: TableMetadataList, location_name: "TableMetadataList"))
    ListTableMetadataOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTableMetadataOutput.struct_class = Types::ListTableMetadataOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTagsForResourceInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxTagsCount, location_name: "MaxResults"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListWorkGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListWorkGroupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxWorkGroupsCount, location_name: "MaxResults"))
    ListWorkGroupsInput.struct_class = Types::ListWorkGroupsInput

    ListWorkGroupsOutput.add_member(:work_groups, Shapes::ShapeRef.new(shape: WorkGroupsList, location_name: "WorkGroups"))
    ListWorkGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListWorkGroupsOutput.struct_class = Types::ListWorkGroupsOutput

    MetadataException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    MetadataException.struct_class = Types::MetadataException

    NamedQuery.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    NamedQuery.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    NamedQuery.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseString, required: true, location_name: "Database"))
    NamedQuery.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    NamedQuery.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, location_name: "NamedQueryId"))
    NamedQuery.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    NamedQuery.struct_class = Types::NamedQuery

    NamedQueryIdList.member = Shapes::ShapeRef.new(shape: NamedQueryId)

    NamedQueryList.member = Shapes::ShapeRef.new(shape: NamedQuery)

    NotebookMetadata.add_member(:notebook_id, Shapes::ShapeRef.new(shape: NotebookId, location_name: "NotebookId"))
    NotebookMetadata.add_member(:name, Shapes::ShapeRef.new(shape: NotebookName, location_name: "Name"))
    NotebookMetadata.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    NotebookMetadata.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    NotebookMetadata.add_member(:type, Shapes::ShapeRef.new(shape: NotebookType, location_name: "Type"))
    NotebookMetadata.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedTime"))
    NotebookMetadata.struct_class = Types::NotebookMetadata

    NotebookMetadataArray.member = Shapes::ShapeRef.new(shape: NotebookMetadata)

    NotebookSessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    NotebookSessionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    NotebookSessionSummary.struct_class = Types::NotebookSessionSummary

    NotebookSessionsList.member = Shapes::ShapeRef.new(shape: NotebookSessionSummary)

    ParametersMap.key = Shapes::ShapeRef.new(shape: KeyString)
    ParametersMap.value = Shapes::ShapeRef.new(shape: ParametersMapValue)

    PreparedStatement.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementName, location_name: "StatementName"))
    PreparedStatement.add_member(:query_statement, Shapes::ShapeRef.new(shape: QueryString, location_name: "QueryStatement"))
    PreparedStatement.add_member(:work_group_name, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroupName"))
    PreparedStatement.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    PreparedStatement.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedTime"))
    PreparedStatement.struct_class = Types::PreparedStatement

    PreparedStatementDetailsList.member = Shapes::ShapeRef.new(shape: PreparedStatement)

    PreparedStatementNameList.member = Shapes::ShapeRef.new(shape: StatementName)

    PreparedStatementSummary.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementName, location_name: "StatementName"))
    PreparedStatementSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedTime"))
    PreparedStatementSummary.struct_class = Types::PreparedStatementSummary

    PreparedStatementsList.member = Shapes::ShapeRef.new(shape: PreparedStatementSummary)

    PutCapacityAssignmentConfigurationInput.add_member(:capacity_reservation_name, Shapes::ShapeRef.new(shape: CapacityReservationName, required: true, location_name: "CapacityReservationName"))
    PutCapacityAssignmentConfigurationInput.add_member(:capacity_assignments, Shapes::ShapeRef.new(shape: CapacityAssignmentsList, required: true, location_name: "CapacityAssignments"))
    PutCapacityAssignmentConfigurationInput.struct_class = Types::PutCapacityAssignmentConfigurationInput

    PutCapacityAssignmentConfigurationOutput.struct_class = Types::PutCapacityAssignmentConfigurationOutput

    QueryExecution.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: "QueryExecutionId"))
    QueryExecution.add_member(:query, Shapes::ShapeRef.new(shape: QueryString, location_name: "Query"))
    QueryExecution.add_member(:statement_type, Shapes::ShapeRef.new(shape: StatementType, location_name: "StatementType"))
    QueryExecution.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: "ResultConfiguration"))
    QueryExecution.add_member(:result_reuse_configuration, Shapes::ShapeRef.new(shape: ResultReuseConfiguration, location_name: "ResultReuseConfiguration"))
    QueryExecution.add_member(:query_execution_context, Shapes::ShapeRef.new(shape: QueryExecutionContext, location_name: "QueryExecutionContext"))
    QueryExecution.add_member(:status, Shapes::ShapeRef.new(shape: QueryExecutionStatus, location_name: "Status"))
    QueryExecution.add_member(:statistics, Shapes::ShapeRef.new(shape: QueryExecutionStatistics, location_name: "Statistics"))
    QueryExecution.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    QueryExecution.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "EngineVersion"))
    QueryExecution.add_member(:execution_parameters, Shapes::ShapeRef.new(shape: ExecutionParameters, location_name: "ExecutionParameters"))
    QueryExecution.add_member(:substatement_type, Shapes::ShapeRef.new(shape: String, location_name: "SubstatementType"))
    QueryExecution.struct_class = Types::QueryExecution

    QueryExecutionContext.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseString, location_name: "Database"))
    QueryExecutionContext.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogNameString, location_name: "Catalog"))
    QueryExecutionContext.struct_class = Types::QueryExecutionContext

    QueryExecutionIdList.member = Shapes::ShapeRef.new(shape: QueryExecutionId)

    QueryExecutionList.member = Shapes::ShapeRef.new(shape: QueryExecution)

    QueryExecutionStatistics.add_member(:engine_execution_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "EngineExecutionTimeInMillis"))
    QueryExecutionStatistics.add_member(:data_scanned_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "DataScannedInBytes"))
    QueryExecutionStatistics.add_member(:data_manifest_location, Shapes::ShapeRef.new(shape: String, location_name: "DataManifestLocation"))
    QueryExecutionStatistics.add_member(:total_execution_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "TotalExecutionTimeInMillis"))
    QueryExecutionStatistics.add_member(:query_queue_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "QueryQueueTimeInMillis"))
    QueryExecutionStatistics.add_member(:query_planning_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "QueryPlanningTimeInMillis"))
    QueryExecutionStatistics.add_member(:service_processing_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "ServiceProcessingTimeInMillis"))
    QueryExecutionStatistics.add_member(:result_reuse_information, Shapes::ShapeRef.new(shape: ResultReuseInformation, location_name: "ResultReuseInformation"))
    QueryExecutionStatistics.struct_class = Types::QueryExecutionStatistics

    QueryExecutionStatus.add_member(:state, Shapes::ShapeRef.new(shape: QueryExecutionState, location_name: "State"))
    QueryExecutionStatus.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: String, location_name: "StateChangeReason"))
    QueryExecutionStatus.add_member(:submission_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "SubmissionDateTime"))
    QueryExecutionStatus.add_member(:completion_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CompletionDateTime"))
    QueryExecutionStatus.add_member(:athena_error, Shapes::ShapeRef.new(shape: AthenaError, location_name: "AthenaError"))
    QueryExecutionStatus.struct_class = Types::QueryExecutionStatus

    QueryRuntimeStatistics.add_member(:timeline, Shapes::ShapeRef.new(shape: QueryRuntimeStatisticsTimeline, location_name: "Timeline"))
    QueryRuntimeStatistics.add_member(:rows, Shapes::ShapeRef.new(shape: QueryRuntimeStatisticsRows, location_name: "Rows"))
    QueryRuntimeStatistics.add_member(:output_stage, Shapes::ShapeRef.new(shape: QueryStage, location_name: "OutputStage"))
    QueryRuntimeStatistics.struct_class = Types::QueryRuntimeStatistics

    QueryRuntimeStatisticsRows.add_member(:input_rows, Shapes::ShapeRef.new(shape: Long, location_name: "InputRows"))
    QueryRuntimeStatisticsRows.add_member(:input_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "InputBytes"))
    QueryRuntimeStatisticsRows.add_member(:output_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "OutputBytes"))
    QueryRuntimeStatisticsRows.add_member(:output_rows, Shapes::ShapeRef.new(shape: Long, location_name: "OutputRows"))
    QueryRuntimeStatisticsRows.struct_class = Types::QueryRuntimeStatisticsRows

    QueryRuntimeStatisticsTimeline.add_member(:query_queue_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "QueryQueueTimeInMillis"))
    QueryRuntimeStatisticsTimeline.add_member(:query_planning_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "QueryPlanningTimeInMillis"))
    QueryRuntimeStatisticsTimeline.add_member(:engine_execution_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "EngineExecutionTimeInMillis"))
    QueryRuntimeStatisticsTimeline.add_member(:service_processing_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "ServiceProcessingTimeInMillis"))
    QueryRuntimeStatisticsTimeline.add_member(:total_execution_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "TotalExecutionTimeInMillis"))
    QueryRuntimeStatisticsTimeline.struct_class = Types::QueryRuntimeStatisticsTimeline

    QueryStage.add_member(:stage_id, Shapes::ShapeRef.new(shape: Long, location_name: "StageId"))
    QueryStage.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    QueryStage.add_member(:output_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "OutputBytes"))
    QueryStage.add_member(:output_rows, Shapes::ShapeRef.new(shape: Long, location_name: "OutputRows"))
    QueryStage.add_member(:input_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "InputBytes"))
    QueryStage.add_member(:input_rows, Shapes::ShapeRef.new(shape: Long, location_name: "InputRows"))
    QueryStage.add_member(:execution_time, Shapes::ShapeRef.new(shape: Long, location_name: "ExecutionTime"))
    QueryStage.add_member(:query_stage_plan, Shapes::ShapeRef.new(shape: QueryStagePlanNode, location_name: "QueryStagePlan"))
    QueryStage.add_member(:sub_stages, Shapes::ShapeRef.new(shape: QueryStages, location_name: "SubStages"))
    QueryStage.struct_class = Types::QueryStage

    QueryStagePlanNode.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    QueryStagePlanNode.add_member(:identifier, Shapes::ShapeRef.new(shape: String, location_name: "Identifier"))
    QueryStagePlanNode.add_member(:children, Shapes::ShapeRef.new(shape: QueryStagePlanNodes, location_name: "Children"))
    QueryStagePlanNode.add_member(:remote_sources, Shapes::ShapeRef.new(shape: StringList, location_name: "RemoteSources"))
    QueryStagePlanNode.struct_class = Types::QueryStagePlanNode

    QueryStagePlanNodes.member = Shapes::ShapeRef.new(shape: QueryStagePlanNode)

    QueryStages.member = Shapes::ShapeRef.new(shape: QueryStage)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceName"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResultConfiguration.add_member(:output_location, Shapes::ShapeRef.new(shape: ResultOutputLocation, location_name: "OutputLocation"))
    ResultConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    ResultConfiguration.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "ExpectedBucketOwner"))
    ResultConfiguration.add_member(:acl_configuration, Shapes::ShapeRef.new(shape: AclConfiguration, location_name: "AclConfiguration"))
    ResultConfiguration.struct_class = Types::ResultConfiguration

    ResultConfigurationUpdates.add_member(:output_location, Shapes::ShapeRef.new(shape: ResultOutputLocation, location_name: "OutputLocation"))
    ResultConfigurationUpdates.add_member(:remove_output_location, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RemoveOutputLocation"))
    ResultConfigurationUpdates.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    ResultConfigurationUpdates.add_member(:remove_encryption_configuration, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RemoveEncryptionConfiguration"))
    ResultConfigurationUpdates.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "ExpectedBucketOwner"))
    ResultConfigurationUpdates.add_member(:remove_expected_bucket_owner, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RemoveExpectedBucketOwner"))
    ResultConfigurationUpdates.add_member(:acl_configuration, Shapes::ShapeRef.new(shape: AclConfiguration, location_name: "AclConfiguration"))
    ResultConfigurationUpdates.add_member(:remove_acl_configuration, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RemoveAclConfiguration"))
    ResultConfigurationUpdates.struct_class = Types::ResultConfigurationUpdates

    ResultReuseByAgeConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    ResultReuseByAgeConfiguration.add_member(:max_age_in_minutes, Shapes::ShapeRef.new(shape: Age, location_name: "MaxAgeInMinutes"))
    ResultReuseByAgeConfiguration.struct_class = Types::ResultReuseByAgeConfiguration

    ResultReuseConfiguration.add_member(:result_reuse_by_age_configuration, Shapes::ShapeRef.new(shape: ResultReuseByAgeConfiguration, location_name: "ResultReuseByAgeConfiguration"))
    ResultReuseConfiguration.struct_class = Types::ResultReuseConfiguration

    ResultReuseInformation.add_member(:reused_previous_result, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ReusedPreviousResult"))
    ResultReuseInformation.struct_class = Types::ResultReuseInformation

    ResultSet.add_member(:rows, Shapes::ShapeRef.new(shape: RowList, location_name: "Rows"))
    ResultSet.add_member(:result_set_metadata, Shapes::ShapeRef.new(shape: ResultSetMetadata, location_name: "ResultSetMetadata"))
    ResultSet.struct_class = Types::ResultSet

    ResultSetMetadata.add_member(:column_info, Shapes::ShapeRef.new(shape: ColumnInfoList, location_name: "ColumnInfo"))
    ResultSetMetadata.struct_class = Types::ResultSetMetadata

    Row.add_member(:data, Shapes::ShapeRef.new(shape: datumList, location_name: "Data"))
    Row.struct_class = Types::Row

    RowList.member = Shapes::ShapeRef.new(shape: Row)

    SessionAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    SessionAlreadyExistsException.struct_class = Types::SessionAlreadyExistsException

    SessionConfiguration.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "ExecutionRole"))
    SessionConfiguration.add_member(:working_directory, Shapes::ShapeRef.new(shape: ResultOutputLocation, location_name: "WorkingDirectory"))
    SessionConfiguration.add_member(:idle_timeout_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "IdleTimeoutSeconds"))
    SessionConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    SessionConfiguration.struct_class = Types::SessionConfiguration

    SessionStatistics.add_member(:dpu_execution_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "DpuExecutionInMillis"))
    SessionStatistics.struct_class = Types::SessionStatistics

    SessionStatus.add_member(:start_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartDateTime"))
    SessionStatus.add_member(:last_modified_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDateTime"))
    SessionStatus.add_member(:end_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndDateTime"))
    SessionStatus.add_member(:idle_since_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "IdleSinceDateTime"))
    SessionStatus.add_member(:state, Shapes::ShapeRef.new(shape: SessionState, location_name: "State"))
    SessionStatus.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "StateChangeReason"))
    SessionStatus.struct_class = Types::SessionStatus

    SessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    SessionSummary.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    SessionSummary.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "EngineVersion"))
    SessionSummary.add_member(:notebook_version, Shapes::ShapeRef.new(shape: NameString, location_name: "NotebookVersion"))
    SessionSummary.add_member(:status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "Status"))
    SessionSummary.struct_class = Types::SessionSummary

    SessionsList.member = Shapes::ShapeRef.new(shape: SessionSummary)

    StartCalculationExecutionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    StartCalculationExecutionRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    StartCalculationExecutionRequest.add_member(:calculation_configuration, Shapes::ShapeRef.new(shape: CalculationConfiguration, deprecated: true, location_name: "CalculationConfiguration", metadata: {"deprecatedMessage"=>"Kepler Post GA Tasks : https://sim.amazon.com/issues/ATHENA-39828"}))
    StartCalculationExecutionRequest.add_member(:code_block, Shapes::ShapeRef.new(shape: CodeBlock, location_name: "CodeBlock"))
    StartCalculationExecutionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientRequestToken"))
    StartCalculationExecutionRequest.struct_class = Types::StartCalculationExecutionRequest

    StartCalculationExecutionResponse.add_member(:calculation_execution_id, Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: "CalculationExecutionId"))
    StartCalculationExecutionResponse.add_member(:state, Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: "State"))
    StartCalculationExecutionResponse.struct_class = Types::StartCalculationExecutionResponse

    StartQueryExecutionInput.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    StartQueryExecutionInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartQueryExecutionInput.add_member(:query_execution_context, Shapes::ShapeRef.new(shape: QueryExecutionContext, location_name: "QueryExecutionContext"))
    StartQueryExecutionInput.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: "ResultConfiguration"))
    StartQueryExecutionInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "WorkGroup"))
    StartQueryExecutionInput.add_member(:execution_parameters, Shapes::ShapeRef.new(shape: ExecutionParameters, location_name: "ExecutionParameters"))
    StartQueryExecutionInput.add_member(:result_reuse_configuration, Shapes::ShapeRef.new(shape: ResultReuseConfiguration, location_name: "ResultReuseConfiguration"))
    StartQueryExecutionInput.struct_class = Types::StartQueryExecutionInput

    StartQueryExecutionOutput.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: "QueryExecutionId"))
    StartQueryExecutionOutput.struct_class = Types::StartQueryExecutionOutput

    StartSessionRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    StartSessionRequest.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    StartSessionRequest.add_member(:engine_configuration, Shapes::ShapeRef.new(shape: EngineConfiguration, required: true, location_name: "EngineConfiguration"))
    StartSessionRequest.add_member(:notebook_version, Shapes::ShapeRef.new(shape: NameString, location_name: "NotebookVersion"))
    StartSessionRequest.add_member(:session_idle_timeout_in_minutes, Shapes::ShapeRef.new(shape: SessionIdleTimeoutInMinutes, location_name: "SessionIdleTimeoutInMinutes"))
    StartSessionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientRequestToken"))
    StartSessionRequest.struct_class = Types::StartSessionRequest

    StartSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    StartSessionResponse.add_member(:state, Shapes::ShapeRef.new(shape: SessionState, location_name: "State"))
    StartSessionResponse.struct_class = Types::StartSessionResponse

    StopCalculationExecutionRequest.add_member(:calculation_execution_id, Shapes::ShapeRef.new(shape: CalculationExecutionId, required: true, location_name: "CalculationExecutionId"))
    StopCalculationExecutionRequest.struct_class = Types::StopCalculationExecutionRequest

    StopCalculationExecutionResponse.add_member(:state, Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: "State"))
    StopCalculationExecutionResponse.struct_class = Types::StopCalculationExecutionResponse

    StopQueryExecutionInput.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, required: true, location_name: "QueryExecutionId", metadata: {"idempotencyToken"=>true}))
    StopQueryExecutionInput.struct_class = Types::StopQueryExecutionInput

    StopQueryExecutionOutput.struct_class = Types::StopQueryExecutionOutput

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SupportedDPUSizeList.member = Shapes::ShapeRef.new(shape: Integer)

    TableMetadata.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    TableMetadata.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    TableMetadata.add_member(:last_access_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAccessTime"))
    TableMetadata.add_member(:table_type, Shapes::ShapeRef.new(shape: TableTypeString, location_name: "TableType"))
    TableMetadata.add_member(:columns, Shapes::ShapeRef.new(shape: ColumnList, location_name: "Columns"))
    TableMetadata.add_member(:partition_keys, Shapes::ShapeRef.new(shape: ColumnList, location_name: "PartitionKeys"))
    TableMetadata.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    TableMetadata.struct_class = Types::TableMetadata

    TableMetadataList.member = Shapes::ShapeRef.new(shape: TableMetadata)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TerminateSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    TerminateSessionRequest.struct_class = Types::TerminateSessionRequest

    TerminateSessionResponse.add_member(:state, Shapes::ShapeRef.new(shape: SessionState, location_name: "State"))
    TerminateSessionResponse.struct_class = Types::TerminateSessionResponse

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TooManyRequestsException.add_member(:reason, Shapes::ShapeRef.new(shape: ThrottleReason, location_name: "Reason"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnprocessedNamedQueryId.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, location_name: "NamedQueryId"))
    UnprocessedNamedQueryId.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    UnprocessedNamedQueryId.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    UnprocessedNamedQueryId.struct_class = Types::UnprocessedNamedQueryId

    UnprocessedNamedQueryIdList.member = Shapes::ShapeRef.new(shape: UnprocessedNamedQueryId)

    UnprocessedPreparedStatementName.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementName, location_name: "StatementName"))
    UnprocessedPreparedStatementName.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    UnprocessedPreparedStatementName.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    UnprocessedPreparedStatementName.struct_class = Types::UnprocessedPreparedStatementName

    UnprocessedPreparedStatementNameList.member = Shapes::ShapeRef.new(shape: UnprocessedPreparedStatementName)

    UnprocessedQueryExecutionId.add_member(:query_execution_id, Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: "QueryExecutionId"))
    UnprocessedQueryExecutionId.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    UnprocessedQueryExecutionId.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    UnprocessedQueryExecutionId.struct_class = Types::UnprocessedQueryExecutionId

    UnprocessedQueryExecutionIdList.member = Shapes::ShapeRef.new(shape: UnprocessedQueryExecutionId)

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateCapacityReservationInput.add_member(:target_dpus, Shapes::ShapeRef.new(shape: TargetDpusInteger, required: true, location_name: "TargetDpus"))
    UpdateCapacityReservationInput.add_member(:name, Shapes::ShapeRef.new(shape: CapacityReservationName, required: true, location_name: "Name"))
    UpdateCapacityReservationInput.struct_class = Types::UpdateCapacityReservationInput

    UpdateCapacityReservationOutput.struct_class = Types::UpdateCapacityReservationOutput

    UpdateDataCatalogInput.add_member(:name, Shapes::ShapeRef.new(shape: CatalogNameString, required: true, location_name: "Name"))
    UpdateDataCatalogInput.add_member(:type, Shapes::ShapeRef.new(shape: DataCatalogType, required: true, location_name: "Type"))
    UpdateDataCatalogInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    UpdateDataCatalogInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    UpdateDataCatalogInput.struct_class = Types::UpdateDataCatalogInput

    UpdateDataCatalogOutput.struct_class = Types::UpdateDataCatalogOutput

    UpdateNamedQueryInput.add_member(:named_query_id, Shapes::ShapeRef.new(shape: NamedQueryId, required: true, location_name: "NamedQueryId"))
    UpdateNamedQueryInput.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateNamedQueryInput.add_member(:description, Shapes::ShapeRef.new(shape: NamedQueryDescriptionString, location_name: "Description"))
    UpdateNamedQueryInput.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    UpdateNamedQueryInput.struct_class = Types::UpdateNamedQueryInput

    UpdateNamedQueryOutput.struct_class = Types::UpdateNamedQueryOutput

    UpdateNotebookInput.add_member(:notebook_id, Shapes::ShapeRef.new(shape: NotebookId, required: true, location_name: "NotebookId"))
    UpdateNotebookInput.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, required: true, location_name: "Payload"))
    UpdateNotebookInput.add_member(:type, Shapes::ShapeRef.new(shape: NotebookType, required: true, location_name: "Type"))
    UpdateNotebookInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    UpdateNotebookInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    UpdateNotebookInput.struct_class = Types::UpdateNotebookInput

    UpdateNotebookMetadataInput.add_member(:notebook_id, Shapes::ShapeRef.new(shape: NotebookId, required: true, location_name: "NotebookId"))
    UpdateNotebookMetadataInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    UpdateNotebookMetadataInput.add_member(:name, Shapes::ShapeRef.new(shape: NotebookName, required: true, location_name: "Name"))
    UpdateNotebookMetadataInput.struct_class = Types::UpdateNotebookMetadataInput

    UpdateNotebookMetadataOutput.struct_class = Types::UpdateNotebookMetadataOutput

    UpdateNotebookOutput.struct_class = Types::UpdateNotebookOutput

    UpdatePreparedStatementInput.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementName, required: true, location_name: "StatementName"))
    UpdatePreparedStatementInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    UpdatePreparedStatementInput.add_member(:query_statement, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryStatement"))
    UpdatePreparedStatementInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    UpdatePreparedStatementInput.struct_class = Types::UpdatePreparedStatementInput

    UpdatePreparedStatementOutput.struct_class = Types::UpdatePreparedStatementOutput

    UpdateWorkGroupInput.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "WorkGroup"))
    UpdateWorkGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: "Description"))
    UpdateWorkGroupInput.add_member(:configuration_updates, Shapes::ShapeRef.new(shape: WorkGroupConfigurationUpdates, location_name: "ConfigurationUpdates"))
    UpdateWorkGroupInput.add_member(:state, Shapes::ShapeRef.new(shape: WorkGroupState, location_name: "State"))
    UpdateWorkGroupInput.struct_class = Types::UpdateWorkGroupInput

    UpdateWorkGroupOutput.struct_class = Types::UpdateWorkGroupOutput

    WorkGroup.add_member(:name, Shapes::ShapeRef.new(shape: WorkGroupName, required: true, location_name: "Name"))
    WorkGroup.add_member(:state, Shapes::ShapeRef.new(shape: WorkGroupState, location_name: "State"))
    WorkGroup.add_member(:configuration, Shapes::ShapeRef.new(shape: WorkGroupConfiguration, location_name: "Configuration"))
    WorkGroup.add_member(:description, Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: "Description"))
    WorkGroup.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    WorkGroup.struct_class = Types::WorkGroup

    WorkGroupConfiguration.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: "ResultConfiguration"))
    WorkGroupConfiguration.add_member(:enforce_work_group_configuration, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "EnforceWorkGroupConfiguration"))
    WorkGroupConfiguration.add_member(:publish_cloud_watch_metrics_enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "PublishCloudWatchMetricsEnabled"))
    WorkGroupConfiguration.add_member(:bytes_scanned_cutoff_per_query, Shapes::ShapeRef.new(shape: BytesScannedCutoffValue, location_name: "BytesScannedCutoffPerQuery"))
    WorkGroupConfiguration.add_member(:requester_pays_enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RequesterPaysEnabled"))
    WorkGroupConfiguration.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "EngineVersion"))
    WorkGroupConfiguration.add_member(:additional_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "AdditionalConfiguration"))
    WorkGroupConfiguration.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "ExecutionRole"))
    WorkGroupConfiguration.add_member(:customer_content_encryption_configuration, Shapes::ShapeRef.new(shape: CustomerContentEncryptionConfiguration, location_name: "CustomerContentEncryptionConfiguration"))
    WorkGroupConfiguration.add_member(:enable_minimum_encryption_configuration, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "EnableMinimumEncryptionConfiguration"))
    WorkGroupConfiguration.struct_class = Types::WorkGroupConfiguration

    WorkGroupConfigurationUpdates.add_member(:enforce_work_group_configuration, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "EnforceWorkGroupConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:result_configuration_updates, Shapes::ShapeRef.new(shape: ResultConfigurationUpdates, location_name: "ResultConfigurationUpdates"))
    WorkGroupConfigurationUpdates.add_member(:publish_cloud_watch_metrics_enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "PublishCloudWatchMetricsEnabled"))
    WorkGroupConfigurationUpdates.add_member(:bytes_scanned_cutoff_per_query, Shapes::ShapeRef.new(shape: BytesScannedCutoffValue, location_name: "BytesScannedCutoffPerQuery"))
    WorkGroupConfigurationUpdates.add_member(:remove_bytes_scanned_cutoff_per_query, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RemoveBytesScannedCutoffPerQuery"))
    WorkGroupConfigurationUpdates.add_member(:requester_pays_enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RequesterPaysEnabled"))
    WorkGroupConfigurationUpdates.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "EngineVersion"))
    WorkGroupConfigurationUpdates.add_member(:remove_customer_content_encryption_configuration, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "RemoveCustomerContentEncryptionConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:additional_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "AdditionalConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "ExecutionRole"))
    WorkGroupConfigurationUpdates.add_member(:customer_content_encryption_configuration, Shapes::ShapeRef.new(shape: CustomerContentEncryptionConfiguration, location_name: "CustomerContentEncryptionConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:enable_minimum_encryption_configuration, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "EnableMinimumEncryptionConfiguration"))
    WorkGroupConfigurationUpdates.struct_class = Types::WorkGroupConfigurationUpdates

    WorkGroupNamesList.member = Shapes::ShapeRef.new(shape: WorkGroupName)

    WorkGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: WorkGroupName, location_name: "Name"))
    WorkGroupSummary.add_member(:state, Shapes::ShapeRef.new(shape: WorkGroupState, location_name: "State"))
    WorkGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: "Description"))
    WorkGroupSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    WorkGroupSummary.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "EngineVersion"))
    WorkGroupSummary.struct_class = Types::WorkGroupSummary

    WorkGroupsList.member = Shapes::ShapeRef.new(shape: WorkGroupSummary)

    datumList.member = Shapes::ShapeRef.new(shape: Datum)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-05-18"

      api.metadata = {
        "apiVersion" => "2017-05-18",
        "endpointPrefix" => "athena",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Athena",
        "serviceId" => "Athena",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonAthena",
        "uid" => "athena-2017-05-18",
      }

      api.add_operation(:batch_get_named_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetNamedQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetNamedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetNamedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:batch_get_prepared_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetPreparedStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetPreparedStatementInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetPreparedStatementOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:batch_get_query_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetQueryExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetQueryExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetQueryExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:cancel_capacity_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelCapacityReservation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelCapacityReservationInput)
        o.output = Shapes::ShapeRef.new(shape: CancelCapacityReservationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_capacity_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCapacityReservation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCapacityReservationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCapacityReservationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_data_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataCatalogInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDataCatalogOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_named_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNamedQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateNamedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: CreateNamedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_notebook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotebook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateNotebookInput)
        o.output = Shapes::ShapeRef.new(shape: CreateNotebookOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_prepared_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePreparedStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePreparedStatementInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePreparedStatementOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_presigned_notebook_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePresignedNotebookUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePresignedNotebookUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePresignedNotebookUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_work_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_capacity_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCapacityReservation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCapacityReservationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteCapacityReservationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_data_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataCatalogInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataCatalogOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_named_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNamedQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNamedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteNamedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_notebook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotebook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotebookInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteNotebookOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_prepared_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePreparedStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePreparedStatementInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePreparedStatementOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_work_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:export_notebook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportNotebook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExportNotebookInput)
        o.output = Shapes::ShapeRef.new(shape: ExportNotebookOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_calculation_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCalculationExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCalculationExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCalculationExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_calculation_execution_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCalculationExecutionCode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCalculationExecutionCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCalculationExecutionCodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_calculation_execution_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCalculationExecutionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCalculationExecutionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCalculationExecutionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_capacity_assignment_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCapacityAssignmentConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCapacityAssignmentConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: GetCapacityAssignmentConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_capacity_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCapacityReservation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCapacityReservationInput)
        o.output = Shapes::ShapeRef.new(shape: GetCapacityReservationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_data_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataCatalogInput)
        o.output = Shapes::ShapeRef.new(shape: GetDataCatalogOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: GetDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MetadataException)
      end)

      api.add_operation(:get_named_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNamedQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetNamedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: GetNamedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_notebook_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNotebookMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetNotebookMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: GetNotebookMetadataOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_prepared_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPreparedStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPreparedStatementInput)
        o.output = Shapes::ShapeRef.new(shape: GetPreparedStatementOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_query_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueryExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_query_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueryResultsInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryResultsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_query_runtime_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryRuntimeStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueryRuntimeStatisticsInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryRuntimeStatisticsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_session_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSessionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSessionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_table_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTableMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: GetTableMetadataOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MetadataException)
      end)

      api.add_operation(:get_work_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkGroupInput)
        o.output = Shapes::ShapeRef.new(shape: GetWorkGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:import_notebook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportNotebook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportNotebookInput)
        o.output = Shapes::ShapeRef.new(shape: ImportNotebookOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_application_dpu_sizes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationDPUSizes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationDPUSizesInput)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationDPUSizesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_calculation_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCalculationExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCalculationExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCalculationExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_capacity_reservations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCapacityReservations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCapacityReservationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCapacityReservationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_catalogs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataCatalogs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDataCatalogsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDataCatalogsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatabases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDatabasesInput)
        o.output = Shapes::ShapeRef.new(shape: ListDatabasesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MetadataException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_engine_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngineVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngineVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEngineVersionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_executors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExecutors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExecutorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExecutorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_named_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNamedQueries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNamedQueriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListNamedQueriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notebook_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotebookMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNotebookMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: ListNotebookMetadataOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_notebook_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotebookSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNotebookSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNotebookSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_prepared_statements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPreparedStatements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPreparedStatementsInput)
        o.output = Shapes::ShapeRef.new(shape: ListPreparedStatementsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_query_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueryExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListQueryExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListQueryExecutionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_table_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTableMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTableMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: ListTableMetadataOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MetadataException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_work_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListWorkGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_capacity_assignment_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutCapacityAssignmentConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutCapacityAssignmentConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: PutCapacityAssignmentConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_calculation_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCalculationExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartCalculationExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCalculationExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_query_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQueryExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartQueryExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StartQueryExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: SessionAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:stop_calculation_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopCalculationExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopCalculationExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopCalculationExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:stop_query_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopQueryExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopQueryExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StopQueryExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:terminate_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_capacity_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCapacityReservation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCapacityReservationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCapacityReservationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_data_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataCatalogInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataCatalogOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_named_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNamedQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNamedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateNamedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_notebook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotebook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotebookInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotebookOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_notebook_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotebookMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotebookMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotebookMetadataOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_prepared_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePreparedStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePreparedStatementInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePreparedStatementOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_work_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkGroupInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)
    end

  end
end
