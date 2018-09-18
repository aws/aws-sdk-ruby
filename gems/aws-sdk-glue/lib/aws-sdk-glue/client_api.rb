# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glue
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Action = Shapes::StructureShape.new(name: 'Action')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    AttemptCount = Shapes::IntegerShape.new(name: 'AttemptCount')
    BatchCreatePartitionRequest = Shapes::StructureShape.new(name: 'BatchCreatePartitionRequest')
    BatchCreatePartitionResponse = Shapes::StructureShape.new(name: 'BatchCreatePartitionResponse')
    BatchDeleteConnectionRequest = Shapes::StructureShape.new(name: 'BatchDeleteConnectionRequest')
    BatchDeleteConnectionResponse = Shapes::StructureShape.new(name: 'BatchDeleteConnectionResponse')
    BatchDeletePartitionRequest = Shapes::StructureShape.new(name: 'BatchDeletePartitionRequest')
    BatchDeletePartitionResponse = Shapes::StructureShape.new(name: 'BatchDeletePartitionResponse')
    BatchDeletePartitionValueList = Shapes::ListShape.new(name: 'BatchDeletePartitionValueList')
    BatchDeleteTableNameList = Shapes::ListShape.new(name: 'BatchDeleteTableNameList')
    BatchDeleteTableRequest = Shapes::StructureShape.new(name: 'BatchDeleteTableRequest')
    BatchDeleteTableResponse = Shapes::StructureShape.new(name: 'BatchDeleteTableResponse')
    BatchDeleteTableVersionList = Shapes::ListShape.new(name: 'BatchDeleteTableVersionList')
    BatchDeleteTableVersionRequest = Shapes::StructureShape.new(name: 'BatchDeleteTableVersionRequest')
    BatchDeleteTableVersionResponse = Shapes::StructureShape.new(name: 'BatchDeleteTableVersionResponse')
    BatchGetPartitionRequest = Shapes::StructureShape.new(name: 'BatchGetPartitionRequest')
    BatchGetPartitionResponse = Shapes::StructureShape.new(name: 'BatchGetPartitionResponse')
    BatchGetPartitionValueList = Shapes::ListShape.new(name: 'BatchGetPartitionValueList')
    BatchStopJobRunError = Shapes::StructureShape.new(name: 'BatchStopJobRunError')
    BatchStopJobRunErrorList = Shapes::ListShape.new(name: 'BatchStopJobRunErrorList')
    BatchStopJobRunJobRunIdList = Shapes::ListShape.new(name: 'BatchStopJobRunJobRunIdList')
    BatchStopJobRunRequest = Shapes::StructureShape.new(name: 'BatchStopJobRunRequest')
    BatchStopJobRunResponse = Shapes::StructureShape.new(name: 'BatchStopJobRunResponse')
    BatchStopJobRunSuccessfulSubmission = Shapes::StructureShape.new(name: 'BatchStopJobRunSuccessfulSubmission')
    BatchStopJobRunSuccessfulSubmissionList = Shapes::ListShape.new(name: 'BatchStopJobRunSuccessfulSubmissionList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanNullable = Shapes::BooleanShape.new(name: 'BooleanNullable')
    BooleanValue = Shapes::BooleanShape.new(name: 'BooleanValue')
    BoundedPartitionValueList = Shapes::ListShape.new(name: 'BoundedPartitionValueList')
    CatalogEncryptionMode = Shapes::StringShape.new(name: 'CatalogEncryptionMode')
    CatalogEntries = Shapes::ListShape.new(name: 'CatalogEntries')
    CatalogEntry = Shapes::StructureShape.new(name: 'CatalogEntry')
    CatalogIdString = Shapes::StringShape.new(name: 'CatalogIdString')
    CatalogImportStatus = Shapes::StructureShape.new(name: 'CatalogImportStatus')
    Classification = Shapes::StringShape.new(name: 'Classification')
    Classifier = Shapes::StructureShape.new(name: 'Classifier')
    ClassifierList = Shapes::ListShape.new(name: 'ClassifierList')
    ClassifierNameList = Shapes::ListShape.new(name: 'ClassifierNameList')
    CloudWatchEncryption = Shapes::StructureShape.new(name: 'CloudWatchEncryption')
    CloudWatchEncryptionMode = Shapes::StringShape.new(name: 'CloudWatchEncryptionMode')
    CodeGenArgName = Shapes::StringShape.new(name: 'CodeGenArgName')
    CodeGenArgValue = Shapes::StringShape.new(name: 'CodeGenArgValue')
    CodeGenEdge = Shapes::StructureShape.new(name: 'CodeGenEdge')
    CodeGenIdentifier = Shapes::StringShape.new(name: 'CodeGenIdentifier')
    CodeGenNode = Shapes::StructureShape.new(name: 'CodeGenNode')
    CodeGenNodeArg = Shapes::StructureShape.new(name: 'CodeGenNodeArg')
    CodeGenNodeArgs = Shapes::ListShape.new(name: 'CodeGenNodeArgs')
    CodeGenNodeType = Shapes::StringShape.new(name: 'CodeGenNodeType')
    Column = Shapes::StructureShape.new(name: 'Column')
    ColumnList = Shapes::ListShape.new(name: 'ColumnList')
    ColumnTypeString = Shapes::StringShape.new(name: 'ColumnTypeString')
    ColumnValueStringList = Shapes::ListShape.new(name: 'ColumnValueStringList')
    ColumnValuesString = Shapes::StringShape.new(name: 'ColumnValuesString')
    CommentString = Shapes::StringShape.new(name: 'CommentString')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConcurrentRunsExceededException = Shapes::StructureShape.new(name: 'ConcurrentRunsExceededException')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConditionList = Shapes::ListShape.new(name: 'ConditionList')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionInput = Shapes::StructureShape.new(name: 'ConnectionInput')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    ConnectionName = Shapes::StringShape.new(name: 'ConnectionName')
    ConnectionProperties = Shapes::MapShape.new(name: 'ConnectionProperties')
    ConnectionPropertyKey = Shapes::StringShape.new(name: 'ConnectionPropertyKey')
    ConnectionType = Shapes::StringShape.new(name: 'ConnectionType')
    ConnectionsList = Shapes::StructureShape.new(name: 'ConnectionsList')
    Crawler = Shapes::StructureShape.new(name: 'Crawler')
    CrawlerConfiguration = Shapes::StringShape.new(name: 'CrawlerConfiguration')
    CrawlerList = Shapes::ListShape.new(name: 'CrawlerList')
    CrawlerMetrics = Shapes::StructureShape.new(name: 'CrawlerMetrics')
    CrawlerMetricsList = Shapes::ListShape.new(name: 'CrawlerMetricsList')
    CrawlerNameList = Shapes::ListShape.new(name: 'CrawlerNameList')
    CrawlerNotRunningException = Shapes::StructureShape.new(name: 'CrawlerNotRunningException')
    CrawlerRunningException = Shapes::StructureShape.new(name: 'CrawlerRunningException')
    CrawlerSecurityConfiguration = Shapes::StringShape.new(name: 'CrawlerSecurityConfiguration')
    CrawlerState = Shapes::StringShape.new(name: 'CrawlerState')
    CrawlerStoppingException = Shapes::StructureShape.new(name: 'CrawlerStoppingException')
    CrawlerTargets = Shapes::StructureShape.new(name: 'CrawlerTargets')
    CreateClassifierRequest = Shapes::StructureShape.new(name: 'CreateClassifierRequest')
    CreateClassifierResponse = Shapes::StructureShape.new(name: 'CreateClassifierResponse')
    CreateConnectionRequest = Shapes::StructureShape.new(name: 'CreateConnectionRequest')
    CreateConnectionResponse = Shapes::StructureShape.new(name: 'CreateConnectionResponse')
    CreateCrawlerRequest = Shapes::StructureShape.new(name: 'CreateCrawlerRequest')
    CreateCrawlerResponse = Shapes::StructureShape.new(name: 'CreateCrawlerResponse')
    CreateDatabaseRequest = Shapes::StructureShape.new(name: 'CreateDatabaseRequest')
    CreateDatabaseResponse = Shapes::StructureShape.new(name: 'CreateDatabaseResponse')
    CreateDevEndpointRequest = Shapes::StructureShape.new(name: 'CreateDevEndpointRequest')
    CreateDevEndpointResponse = Shapes::StructureShape.new(name: 'CreateDevEndpointResponse')
    CreateGrokClassifierRequest = Shapes::StructureShape.new(name: 'CreateGrokClassifierRequest')
    CreateJobRequest = Shapes::StructureShape.new(name: 'CreateJobRequest')
    CreateJobResponse = Shapes::StructureShape.new(name: 'CreateJobResponse')
    CreateJsonClassifierRequest = Shapes::StructureShape.new(name: 'CreateJsonClassifierRequest')
    CreatePartitionRequest = Shapes::StructureShape.new(name: 'CreatePartitionRequest')
    CreatePartitionResponse = Shapes::StructureShape.new(name: 'CreatePartitionResponse')
    CreateScriptRequest = Shapes::StructureShape.new(name: 'CreateScriptRequest')
    CreateScriptResponse = Shapes::StructureShape.new(name: 'CreateScriptResponse')
    CreateSecurityConfigurationRequest = Shapes::StructureShape.new(name: 'CreateSecurityConfigurationRequest')
    CreateSecurityConfigurationResponse = Shapes::StructureShape.new(name: 'CreateSecurityConfigurationResponse')
    CreateTableRequest = Shapes::StructureShape.new(name: 'CreateTableRequest')
    CreateTableResponse = Shapes::StructureShape.new(name: 'CreateTableResponse')
    CreateTriggerRequest = Shapes::StructureShape.new(name: 'CreateTriggerRequest')
    CreateTriggerResponse = Shapes::StructureShape.new(name: 'CreateTriggerResponse')
    CreateUserDefinedFunctionRequest = Shapes::StructureShape.new(name: 'CreateUserDefinedFunctionRequest')
    CreateUserDefinedFunctionResponse = Shapes::StructureShape.new(name: 'CreateUserDefinedFunctionResponse')
    CreateXMLClassifierRequest = Shapes::StructureShape.new(name: 'CreateXMLClassifierRequest')
    CronExpression = Shapes::StringShape.new(name: 'CronExpression')
    CustomPatterns = Shapes::StringShape.new(name: 'CustomPatterns')
    DagEdges = Shapes::ListShape.new(name: 'DagEdges')
    DagNodes = Shapes::ListShape.new(name: 'DagNodes')
    DataCatalogEncryptionSettings = Shapes::StructureShape.new(name: 'DataCatalogEncryptionSettings')
    Database = Shapes::StructureShape.new(name: 'Database')
    DatabaseInput = Shapes::StructureShape.new(name: 'DatabaseInput')
    DatabaseList = Shapes::ListShape.new(name: 'DatabaseList')
    DatabaseName = Shapes::StringShape.new(name: 'DatabaseName')
    DeleteBehavior = Shapes::StringShape.new(name: 'DeleteBehavior')
    DeleteClassifierRequest = Shapes::StructureShape.new(name: 'DeleteClassifierRequest')
    DeleteClassifierResponse = Shapes::StructureShape.new(name: 'DeleteClassifierResponse')
    DeleteConnectionNameList = Shapes::ListShape.new(name: 'DeleteConnectionNameList')
    DeleteConnectionRequest = Shapes::StructureShape.new(name: 'DeleteConnectionRequest')
    DeleteConnectionResponse = Shapes::StructureShape.new(name: 'DeleteConnectionResponse')
    DeleteCrawlerRequest = Shapes::StructureShape.new(name: 'DeleteCrawlerRequest')
    DeleteCrawlerResponse = Shapes::StructureShape.new(name: 'DeleteCrawlerResponse')
    DeleteDatabaseRequest = Shapes::StructureShape.new(name: 'DeleteDatabaseRequest')
    DeleteDatabaseResponse = Shapes::StructureShape.new(name: 'DeleteDatabaseResponse')
    DeleteDevEndpointRequest = Shapes::StructureShape.new(name: 'DeleteDevEndpointRequest')
    DeleteDevEndpointResponse = Shapes::StructureShape.new(name: 'DeleteDevEndpointResponse')
    DeleteJobRequest = Shapes::StructureShape.new(name: 'DeleteJobRequest')
    DeleteJobResponse = Shapes::StructureShape.new(name: 'DeleteJobResponse')
    DeletePartitionRequest = Shapes::StructureShape.new(name: 'DeletePartitionRequest')
    DeletePartitionResponse = Shapes::StructureShape.new(name: 'DeletePartitionResponse')
    DeleteSecurityConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteSecurityConfigurationRequest')
    DeleteSecurityConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteSecurityConfigurationResponse')
    DeleteTableRequest = Shapes::StructureShape.new(name: 'DeleteTableRequest')
    DeleteTableResponse = Shapes::StructureShape.new(name: 'DeleteTableResponse')
    DeleteTableVersionRequest = Shapes::StructureShape.new(name: 'DeleteTableVersionRequest')
    DeleteTableVersionResponse = Shapes::StructureShape.new(name: 'DeleteTableVersionResponse')
    DeleteTriggerRequest = Shapes::StructureShape.new(name: 'DeleteTriggerRequest')
    DeleteTriggerResponse = Shapes::StructureShape.new(name: 'DeleteTriggerResponse')
    DeleteUserDefinedFunctionRequest = Shapes::StructureShape.new(name: 'DeleteUserDefinedFunctionRequest')
    DeleteUserDefinedFunctionResponse = Shapes::StructureShape.new(name: 'DeleteUserDefinedFunctionResponse')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    DescriptionStringRemovable = Shapes::StringShape.new(name: 'DescriptionStringRemovable')
    DevEndpoint = Shapes::StructureShape.new(name: 'DevEndpoint')
    DevEndpointCustomLibraries = Shapes::StructureShape.new(name: 'DevEndpointCustomLibraries')
    DevEndpointList = Shapes::ListShape.new(name: 'DevEndpointList')
    DynamoDBTarget = Shapes::StructureShape.new(name: 'DynamoDBTarget')
    DynamoDBTargetList = Shapes::ListShape.new(name: 'DynamoDBTargetList')
    EncryptionAtRest = Shapes::StructureShape.new(name: 'EncryptionAtRest')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EntityNotFoundException = Shapes::StructureShape.new(name: 'EntityNotFoundException')
    ErrorByName = Shapes::MapShape.new(name: 'ErrorByName')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorString = Shapes::StringShape.new(name: 'ErrorString')
    ExecutionProperty = Shapes::StructureShape.new(name: 'ExecutionProperty')
    ExecutionTime = Shapes::IntegerShape.new(name: 'ExecutionTime')
    FieldType = Shapes::StringShape.new(name: 'FieldType')
    FilterString = Shapes::StringShape.new(name: 'FilterString')
    FormatString = Shapes::StringShape.new(name: 'FormatString')
    GenericMap = Shapes::MapShape.new(name: 'GenericMap')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GetCatalogImportStatusRequest = Shapes::StructureShape.new(name: 'GetCatalogImportStatusRequest')
    GetCatalogImportStatusResponse = Shapes::StructureShape.new(name: 'GetCatalogImportStatusResponse')
    GetClassifierRequest = Shapes::StructureShape.new(name: 'GetClassifierRequest')
    GetClassifierResponse = Shapes::StructureShape.new(name: 'GetClassifierResponse')
    GetClassifiersRequest = Shapes::StructureShape.new(name: 'GetClassifiersRequest')
    GetClassifiersResponse = Shapes::StructureShape.new(name: 'GetClassifiersResponse')
    GetConnectionRequest = Shapes::StructureShape.new(name: 'GetConnectionRequest')
    GetConnectionResponse = Shapes::StructureShape.new(name: 'GetConnectionResponse')
    GetConnectionsFilter = Shapes::StructureShape.new(name: 'GetConnectionsFilter')
    GetConnectionsRequest = Shapes::StructureShape.new(name: 'GetConnectionsRequest')
    GetConnectionsResponse = Shapes::StructureShape.new(name: 'GetConnectionsResponse')
    GetCrawlerMetricsRequest = Shapes::StructureShape.new(name: 'GetCrawlerMetricsRequest')
    GetCrawlerMetricsResponse = Shapes::StructureShape.new(name: 'GetCrawlerMetricsResponse')
    GetCrawlerRequest = Shapes::StructureShape.new(name: 'GetCrawlerRequest')
    GetCrawlerResponse = Shapes::StructureShape.new(name: 'GetCrawlerResponse')
    GetCrawlersRequest = Shapes::StructureShape.new(name: 'GetCrawlersRequest')
    GetCrawlersResponse = Shapes::StructureShape.new(name: 'GetCrawlersResponse')
    GetDatabaseRequest = Shapes::StructureShape.new(name: 'GetDatabaseRequest')
    GetDatabaseResponse = Shapes::StructureShape.new(name: 'GetDatabaseResponse')
    GetDatabasesRequest = Shapes::StructureShape.new(name: 'GetDatabasesRequest')
    GetDatabasesResponse = Shapes::StructureShape.new(name: 'GetDatabasesResponse')
    GetDataflowGraphRequest = Shapes::StructureShape.new(name: 'GetDataflowGraphRequest')
    GetDataflowGraphResponse = Shapes::StructureShape.new(name: 'GetDataflowGraphResponse')
    GetDevEndpointRequest = Shapes::StructureShape.new(name: 'GetDevEndpointRequest')
    GetDevEndpointResponse = Shapes::StructureShape.new(name: 'GetDevEndpointResponse')
    GetDevEndpointsRequest = Shapes::StructureShape.new(name: 'GetDevEndpointsRequest')
    GetDevEndpointsResponse = Shapes::StructureShape.new(name: 'GetDevEndpointsResponse')
    GetJobRequest = Shapes::StructureShape.new(name: 'GetJobRequest')
    GetJobResponse = Shapes::StructureShape.new(name: 'GetJobResponse')
    GetJobRunRequest = Shapes::StructureShape.new(name: 'GetJobRunRequest')
    GetJobRunResponse = Shapes::StructureShape.new(name: 'GetJobRunResponse')
    GetJobRunsRequest = Shapes::StructureShape.new(name: 'GetJobRunsRequest')
    GetJobRunsResponse = Shapes::StructureShape.new(name: 'GetJobRunsResponse')
    GetJobsRequest = Shapes::StructureShape.new(name: 'GetJobsRequest')
    GetJobsResponse = Shapes::StructureShape.new(name: 'GetJobsResponse')
    GetMappingRequest = Shapes::StructureShape.new(name: 'GetMappingRequest')
    GetMappingResponse = Shapes::StructureShape.new(name: 'GetMappingResponse')
    GetPartitionRequest = Shapes::StructureShape.new(name: 'GetPartitionRequest')
    GetPartitionResponse = Shapes::StructureShape.new(name: 'GetPartitionResponse')
    GetPartitionsRequest = Shapes::StructureShape.new(name: 'GetPartitionsRequest')
    GetPartitionsResponse = Shapes::StructureShape.new(name: 'GetPartitionsResponse')
    GetPlanRequest = Shapes::StructureShape.new(name: 'GetPlanRequest')
    GetPlanResponse = Shapes::StructureShape.new(name: 'GetPlanResponse')
    GetSecurityConfigurationRequest = Shapes::StructureShape.new(name: 'GetSecurityConfigurationRequest')
    GetSecurityConfigurationResponse = Shapes::StructureShape.new(name: 'GetSecurityConfigurationResponse')
    GetSecurityConfigurationsRequest = Shapes::StructureShape.new(name: 'GetSecurityConfigurationsRequest')
    GetSecurityConfigurationsResponse = Shapes::StructureShape.new(name: 'GetSecurityConfigurationsResponse')
    GetTableRequest = Shapes::StructureShape.new(name: 'GetTableRequest')
    GetTableResponse = Shapes::StructureShape.new(name: 'GetTableResponse')
    GetTableVersionRequest = Shapes::StructureShape.new(name: 'GetTableVersionRequest')
    GetTableVersionResponse = Shapes::StructureShape.new(name: 'GetTableVersionResponse')
    GetTableVersionsList = Shapes::ListShape.new(name: 'GetTableVersionsList')
    GetTableVersionsRequest = Shapes::StructureShape.new(name: 'GetTableVersionsRequest')
    GetTableVersionsResponse = Shapes::StructureShape.new(name: 'GetTableVersionsResponse')
    GetTablesRequest = Shapes::StructureShape.new(name: 'GetTablesRequest')
    GetTablesResponse = Shapes::StructureShape.new(name: 'GetTablesResponse')
    GetTriggerRequest = Shapes::StructureShape.new(name: 'GetTriggerRequest')
    GetTriggerResponse = Shapes::StructureShape.new(name: 'GetTriggerResponse')
    GetTriggersRequest = Shapes::StructureShape.new(name: 'GetTriggersRequest')
    GetTriggersResponse = Shapes::StructureShape.new(name: 'GetTriggersResponse')
    GetUserDefinedFunctionRequest = Shapes::StructureShape.new(name: 'GetUserDefinedFunctionRequest')
    GetUserDefinedFunctionResponse = Shapes::StructureShape.new(name: 'GetUserDefinedFunctionResponse')
    GetUserDefinedFunctionsRequest = Shapes::StructureShape.new(name: 'GetUserDefinedFunctionsRequest')
    GetUserDefinedFunctionsResponse = Shapes::StructureShape.new(name: 'GetUserDefinedFunctionsResponse')
    GlueEncryptionException = Shapes::StructureShape.new(name: 'GlueEncryptionException')
    GrokClassifier = Shapes::StructureShape.new(name: 'GrokClassifier')
    GrokPattern = Shapes::StringShape.new(name: 'GrokPattern')
    IdString = Shapes::StringShape.new(name: 'IdString')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    ImportCatalogToGlueRequest = Shapes::StructureShape.new(name: 'ImportCatalogToGlueRequest')
    ImportCatalogToGlueResponse = Shapes::StructureShape.new(name: 'ImportCatalogToGlueResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerFlag = Shapes::IntegerShape.new(name: 'IntegerFlag')
    IntegerValue = Shapes::IntegerShape.new(name: 'IntegerValue')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    JdbcTarget = Shapes::StructureShape.new(name: 'JdbcTarget')
    JdbcTargetList = Shapes::ListShape.new(name: 'JdbcTargetList')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobBookmarkEntry = Shapes::StructureShape.new(name: 'JobBookmarkEntry')
    JobBookmarksEncryption = Shapes::StructureShape.new(name: 'JobBookmarksEncryption')
    JobBookmarksEncryptionMode = Shapes::StringShape.new(name: 'JobBookmarksEncryptionMode')
    JobCommand = Shapes::StructureShape.new(name: 'JobCommand')
    JobList = Shapes::ListShape.new(name: 'JobList')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobRun = Shapes::StructureShape.new(name: 'JobRun')
    JobRunList = Shapes::ListShape.new(name: 'JobRunList')
    JobRunState = Shapes::StringShape.new(name: 'JobRunState')
    JobUpdate = Shapes::StructureShape.new(name: 'JobUpdate')
    JsonClassifier = Shapes::StructureShape.new(name: 'JsonClassifier')
    JsonPath = Shapes::StringShape.new(name: 'JsonPath')
    JsonValue = Shapes::StringShape.new(name: 'JsonValue')
    KeyString = Shapes::StringShape.new(name: 'KeyString')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    Language = Shapes::StringShape.new(name: 'Language')
    LastCrawlInfo = Shapes::StructureShape.new(name: 'LastCrawlInfo')
    LastCrawlStatus = Shapes::StringShape.new(name: 'LastCrawlStatus')
    Location = Shapes::StructureShape.new(name: 'Location')
    LocationMap = Shapes::MapShape.new(name: 'LocationMap')
    LocationString = Shapes::StringShape.new(name: 'LocationString')
    LogGroup = Shapes::StringShape.new(name: 'LogGroup')
    LogStream = Shapes::StringShape.new(name: 'LogStream')
    Logical = Shapes::StringShape.new(name: 'Logical')
    LogicalOperator = Shapes::StringShape.new(name: 'LogicalOperator')
    MappingEntry = Shapes::StructureShape.new(name: 'MappingEntry')
    MappingList = Shapes::ListShape.new(name: 'MappingList')
    MatchCriteria = Shapes::ListShape.new(name: 'MatchCriteria')
    MaxConcurrentRuns = Shapes::IntegerShape.new(name: 'MaxConcurrentRuns')
    MaxRetries = Shapes::IntegerShape.new(name: 'MaxRetries')
    MessagePrefix = Shapes::StringShape.new(name: 'MessagePrefix')
    MessageString = Shapes::StringShape.new(name: 'MessageString')
    MillisecondsCount = Shapes::IntegerShape.new(name: 'MillisecondsCount')
    NameString = Shapes::StringShape.new(name: 'NameString')
    NameStringList = Shapes::ListShape.new(name: 'NameStringList')
    NoScheduleException = Shapes::StructureShape.new(name: 'NoScheduleException')
    NonNegativeDouble = Shapes::FloatShape.new(name: 'NonNegativeDouble')
    NonNegativeInteger = Shapes::IntegerShape.new(name: 'NonNegativeInteger')
    NotificationProperty = Shapes::StructureShape.new(name: 'NotificationProperty')
    NotifyDelayAfter = Shapes::IntegerShape.new(name: 'NotifyDelayAfter')
    OperationTimeoutException = Shapes::StructureShape.new(name: 'OperationTimeoutException')
    Order = Shapes::StructureShape.new(name: 'Order')
    OrderList = Shapes::ListShape.new(name: 'OrderList')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    ParametersMap = Shapes::MapShape.new(name: 'ParametersMap')
    ParametersMapValue = Shapes::StringShape.new(name: 'ParametersMapValue')
    Partition = Shapes::StructureShape.new(name: 'Partition')
    PartitionError = Shapes::StructureShape.new(name: 'PartitionError')
    PartitionErrors = Shapes::ListShape.new(name: 'PartitionErrors')
    PartitionInput = Shapes::StructureShape.new(name: 'PartitionInput')
    PartitionInputList = Shapes::ListShape.new(name: 'PartitionInputList')
    PartitionList = Shapes::ListShape.new(name: 'PartitionList')
    PartitionValueList = Shapes::StructureShape.new(name: 'PartitionValueList')
    Path = Shapes::StringShape.new(name: 'Path')
    PathList = Shapes::ListShape.new(name: 'PathList')
    PhysicalConnectionRequirements = Shapes::StructureShape.new(name: 'PhysicalConnectionRequirements')
    Predecessor = Shapes::StructureShape.new(name: 'Predecessor')
    PredecessorList = Shapes::ListShape.new(name: 'PredecessorList')
    Predicate = Shapes::StructureShape.new(name: 'Predicate')
    PredicateString = Shapes::StringShape.new(name: 'PredicateString')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    PublicKeysList = Shapes::ListShape.new(name: 'PublicKeysList')
    PutDataCatalogEncryptionSettingsRequest = Shapes::StructureShape.new(name: 'PutDataCatalogEncryptionSettingsRequest')
    PutDataCatalogEncryptionSettingsResponse = Shapes::StructureShape.new(name: 'PutDataCatalogEncryptionSettingsResponse')
    PythonScript = Shapes::StringShape.new(name: 'PythonScript')
    ResetJobBookmarkRequest = Shapes::StructureShape.new(name: 'ResetJobBookmarkRequest')
    ResetJobBookmarkResponse = Shapes::StructureShape.new(name: 'ResetJobBookmarkResponse')
    ResourceNumberLimitExceededException = Shapes::StructureShape.new(name: 'ResourceNumberLimitExceededException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceUri = Shapes::StructureShape.new(name: 'ResourceUri')
    ResourceUriList = Shapes::ListShape.new(name: 'ResourceUriList')
    Role = Shapes::StringShape.new(name: 'Role')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RoleString = Shapes::StringShape.new(name: 'RoleString')
    RowTag = Shapes::StringShape.new(name: 'RowTag')
    S3Encryption = Shapes::StructureShape.new(name: 'S3Encryption')
    S3EncryptionList = Shapes::ListShape.new(name: 'S3EncryptionList')
    S3EncryptionMode = Shapes::StringShape.new(name: 'S3EncryptionMode')
    S3Target = Shapes::StructureShape.new(name: 'S3Target')
    S3TargetList = Shapes::ListShape.new(name: 'S3TargetList')
    ScalaCode = Shapes::StringShape.new(name: 'ScalaCode')
    Schedule = Shapes::StructureShape.new(name: 'Schedule')
    ScheduleState = Shapes::StringShape.new(name: 'ScheduleState')
    SchedulerNotRunningException = Shapes::StructureShape.new(name: 'SchedulerNotRunningException')
    SchedulerRunningException = Shapes::StructureShape.new(name: 'SchedulerRunningException')
    SchedulerTransitioningException = Shapes::StructureShape.new(name: 'SchedulerTransitioningException')
    SchemaChangePolicy = Shapes::StructureShape.new(name: 'SchemaChangePolicy')
    SchemaPathString = Shapes::StringShape.new(name: 'SchemaPathString')
    ScriptLocationString = Shapes::StringShape.new(name: 'ScriptLocationString')
    SecurityConfiguration = Shapes::StructureShape.new(name: 'SecurityConfiguration')
    SecurityConfigurationList = Shapes::ListShape.new(name: 'SecurityConfigurationList')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    Segment = Shapes::StructureShape.new(name: 'Segment')
    SerDeInfo = Shapes::StructureShape.new(name: 'SerDeInfo')
    SkewedInfo = Shapes::StructureShape.new(name: 'SkewedInfo')
    StartCrawlerRequest = Shapes::StructureShape.new(name: 'StartCrawlerRequest')
    StartCrawlerResponse = Shapes::StructureShape.new(name: 'StartCrawlerResponse')
    StartCrawlerScheduleRequest = Shapes::StructureShape.new(name: 'StartCrawlerScheduleRequest')
    StartCrawlerScheduleResponse = Shapes::StructureShape.new(name: 'StartCrawlerScheduleResponse')
    StartJobRunRequest = Shapes::StructureShape.new(name: 'StartJobRunRequest')
    StartJobRunResponse = Shapes::StructureShape.new(name: 'StartJobRunResponse')
    StartTriggerRequest = Shapes::StructureShape.new(name: 'StartTriggerRequest')
    StartTriggerResponse = Shapes::StructureShape.new(name: 'StartTriggerResponse')
    StopCrawlerRequest = Shapes::StructureShape.new(name: 'StopCrawlerRequest')
    StopCrawlerResponse = Shapes::StructureShape.new(name: 'StopCrawlerResponse')
    StopCrawlerScheduleRequest = Shapes::StructureShape.new(name: 'StopCrawlerScheduleRequest')
    StopCrawlerScheduleResponse = Shapes::StructureShape.new(name: 'StopCrawlerScheduleResponse')
    StopTriggerRequest = Shapes::StructureShape.new(name: 'StopTriggerRequest')
    StopTriggerResponse = Shapes::StructureShape.new(name: 'StopTriggerResponse')
    StorageDescriptor = Shapes::StructureShape.new(name: 'StorageDescriptor')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Table = Shapes::StructureShape.new(name: 'Table')
    TableError = Shapes::StructureShape.new(name: 'TableError')
    TableErrors = Shapes::ListShape.new(name: 'TableErrors')
    TableInput = Shapes::StructureShape.new(name: 'TableInput')
    TableList = Shapes::ListShape.new(name: 'TableList')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TablePrefix = Shapes::StringShape.new(name: 'TablePrefix')
    TableTypeString = Shapes::StringShape.new(name: 'TableTypeString')
    TableVersion = Shapes::StructureShape.new(name: 'TableVersion')
    TableVersionError = Shapes::StructureShape.new(name: 'TableVersionError')
    TableVersionErrors = Shapes::ListShape.new(name: 'TableVersionErrors')
    Timeout = Shapes::IntegerShape.new(name: 'Timeout')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampValue = Shapes::TimestampShape.new(name: 'TimestampValue')
    Token = Shapes::StringShape.new(name: 'Token')
    TotalSegmentsInteger = Shapes::IntegerShape.new(name: 'TotalSegmentsInteger')
    Trigger = Shapes::StructureShape.new(name: 'Trigger')
    TriggerList = Shapes::ListShape.new(name: 'TriggerList')
    TriggerState = Shapes::StringShape.new(name: 'TriggerState')
    TriggerType = Shapes::StringShape.new(name: 'TriggerType')
    TriggerUpdate = Shapes::StructureShape.new(name: 'TriggerUpdate')
    URI = Shapes::StringShape.new(name: 'URI')
    UpdateBehavior = Shapes::StringShape.new(name: 'UpdateBehavior')
    UpdateClassifierRequest = Shapes::StructureShape.new(name: 'UpdateClassifierRequest')
    UpdateClassifierResponse = Shapes::StructureShape.new(name: 'UpdateClassifierResponse')
    UpdateConnectionRequest = Shapes::StructureShape.new(name: 'UpdateConnectionRequest')
    UpdateConnectionResponse = Shapes::StructureShape.new(name: 'UpdateConnectionResponse')
    UpdateCrawlerRequest = Shapes::StructureShape.new(name: 'UpdateCrawlerRequest')
    UpdateCrawlerResponse = Shapes::StructureShape.new(name: 'UpdateCrawlerResponse')
    UpdateCrawlerScheduleRequest = Shapes::StructureShape.new(name: 'UpdateCrawlerScheduleRequest')
    UpdateCrawlerScheduleResponse = Shapes::StructureShape.new(name: 'UpdateCrawlerScheduleResponse')
    UpdateDatabaseRequest = Shapes::StructureShape.new(name: 'UpdateDatabaseRequest')
    UpdateDatabaseResponse = Shapes::StructureShape.new(name: 'UpdateDatabaseResponse')
    UpdateDevEndpointRequest = Shapes::StructureShape.new(name: 'UpdateDevEndpointRequest')
    UpdateDevEndpointResponse = Shapes::StructureShape.new(name: 'UpdateDevEndpointResponse')
    UpdateGrokClassifierRequest = Shapes::StructureShape.new(name: 'UpdateGrokClassifierRequest')
    UpdateJobRequest = Shapes::StructureShape.new(name: 'UpdateJobRequest')
    UpdateJobResponse = Shapes::StructureShape.new(name: 'UpdateJobResponse')
    UpdateJsonClassifierRequest = Shapes::StructureShape.new(name: 'UpdateJsonClassifierRequest')
    UpdatePartitionRequest = Shapes::StructureShape.new(name: 'UpdatePartitionRequest')
    UpdatePartitionResponse = Shapes::StructureShape.new(name: 'UpdatePartitionResponse')
    UpdateTableRequest = Shapes::StructureShape.new(name: 'UpdateTableRequest')
    UpdateTableResponse = Shapes::StructureShape.new(name: 'UpdateTableResponse')
    UpdateTriggerRequest = Shapes::StructureShape.new(name: 'UpdateTriggerRequest')
    UpdateTriggerResponse = Shapes::StructureShape.new(name: 'UpdateTriggerResponse')
    UpdateUserDefinedFunctionRequest = Shapes::StructureShape.new(name: 'UpdateUserDefinedFunctionRequest')
    UpdateUserDefinedFunctionResponse = Shapes::StructureShape.new(name: 'UpdateUserDefinedFunctionResponse')
    UpdateXMLClassifierRequest = Shapes::StructureShape.new(name: 'UpdateXMLClassifierRequest')
    UriString = Shapes::StringShape.new(name: 'UriString')
    UserDefinedFunction = Shapes::StructureShape.new(name: 'UserDefinedFunction')
    UserDefinedFunctionInput = Shapes::StructureShape.new(name: 'UserDefinedFunctionInput')
    UserDefinedFunctionList = Shapes::ListShape.new(name: 'UserDefinedFunctionList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValueString = Shapes::StringShape.new(name: 'ValueString')
    ValueStringList = Shapes::ListShape.new(name: 'ValueStringList')
    VersionId = Shapes::IntegerShape.new(name: 'VersionId')
    VersionMismatchException = Shapes::StructureShape.new(name: 'VersionMismatchException')
    VersionString = Shapes::StringShape.new(name: 'VersionString')
    ViewTextString = Shapes::StringShape.new(name: 'ViewTextString')
    XMLClassifier = Shapes::StructureShape.new(name: 'XMLClassifier')

    Action.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    Action.add_member(:arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "Arguments"))
    Action.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    Action.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    Action.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    Action.struct_class = Types::Action

    ActionList.member = Shapes::ShapeRef.new(shape: Action)

    BatchCreatePartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchCreatePartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    BatchCreatePartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    BatchCreatePartitionRequest.add_member(:partition_input_list, Shapes::ShapeRef.new(shape: PartitionInputList, required: true, location_name: "PartitionInputList"))
    BatchCreatePartitionRequest.struct_class = Types::BatchCreatePartitionRequest

    BatchCreatePartitionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: PartitionErrors, location_name: "Errors"))
    BatchCreatePartitionResponse.struct_class = Types::BatchCreatePartitionResponse

    BatchDeleteConnectionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchDeleteConnectionRequest.add_member(:connection_name_list, Shapes::ShapeRef.new(shape: DeleteConnectionNameList, required: true, location_name: "ConnectionNameList"))
    BatchDeleteConnectionRequest.struct_class = Types::BatchDeleteConnectionRequest

    BatchDeleteConnectionResponse.add_member(:succeeded, Shapes::ShapeRef.new(shape: NameStringList, location_name: "Succeeded"))
    BatchDeleteConnectionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: ErrorByName, location_name: "Errors"))
    BatchDeleteConnectionResponse.struct_class = Types::BatchDeleteConnectionResponse

    BatchDeletePartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchDeletePartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    BatchDeletePartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    BatchDeletePartitionRequest.add_member(:partitions_to_delete, Shapes::ShapeRef.new(shape: BatchDeletePartitionValueList, required: true, location_name: "PartitionsToDelete"))
    BatchDeletePartitionRequest.struct_class = Types::BatchDeletePartitionRequest

    BatchDeletePartitionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: PartitionErrors, location_name: "Errors"))
    BatchDeletePartitionResponse.struct_class = Types::BatchDeletePartitionResponse

    BatchDeletePartitionValueList.member = Shapes::ShapeRef.new(shape: PartitionValueList)

    BatchDeleteTableNameList.member = Shapes::ShapeRef.new(shape: NameString)

    BatchDeleteTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchDeleteTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    BatchDeleteTableRequest.add_member(:tables_to_delete, Shapes::ShapeRef.new(shape: BatchDeleteTableNameList, required: true, location_name: "TablesToDelete"))
    BatchDeleteTableRequest.struct_class = Types::BatchDeleteTableRequest

    BatchDeleteTableResponse.add_member(:errors, Shapes::ShapeRef.new(shape: TableErrors, location_name: "Errors"))
    BatchDeleteTableResponse.struct_class = Types::BatchDeleteTableResponse

    BatchDeleteTableVersionList.member = Shapes::ShapeRef.new(shape: VersionString)

    BatchDeleteTableVersionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchDeleteTableVersionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    BatchDeleteTableVersionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    BatchDeleteTableVersionRequest.add_member(:version_ids, Shapes::ShapeRef.new(shape: BatchDeleteTableVersionList, required: true, location_name: "VersionIds"))
    BatchDeleteTableVersionRequest.struct_class = Types::BatchDeleteTableVersionRequest

    BatchDeleteTableVersionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: TableVersionErrors, location_name: "Errors"))
    BatchDeleteTableVersionResponse.struct_class = Types::BatchDeleteTableVersionResponse

    BatchGetPartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchGetPartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    BatchGetPartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    BatchGetPartitionRequest.add_member(:partitions_to_get, Shapes::ShapeRef.new(shape: BatchGetPartitionValueList, required: true, location_name: "PartitionsToGet"))
    BatchGetPartitionRequest.struct_class = Types::BatchGetPartitionRequest

    BatchGetPartitionResponse.add_member(:partitions, Shapes::ShapeRef.new(shape: PartitionList, location_name: "Partitions"))
    BatchGetPartitionResponse.add_member(:unprocessed_keys, Shapes::ShapeRef.new(shape: BatchGetPartitionValueList, location_name: "UnprocessedKeys"))
    BatchGetPartitionResponse.struct_class = Types::BatchGetPartitionResponse

    BatchGetPartitionValueList.member = Shapes::ShapeRef.new(shape: PartitionValueList)

    BatchStopJobRunError.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    BatchStopJobRunError.add_member(:job_run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "JobRunId"))
    BatchStopJobRunError.add_member(:error_detail, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "ErrorDetail"))
    BatchStopJobRunError.struct_class = Types::BatchStopJobRunError

    BatchStopJobRunErrorList.member = Shapes::ShapeRef.new(shape: BatchStopJobRunError)

    BatchStopJobRunJobRunIdList.member = Shapes::ShapeRef.new(shape: IdString)

    BatchStopJobRunRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "JobName"))
    BatchStopJobRunRequest.add_member(:job_run_ids, Shapes::ShapeRef.new(shape: BatchStopJobRunJobRunIdList, required: true, location_name: "JobRunIds"))
    BatchStopJobRunRequest.struct_class = Types::BatchStopJobRunRequest

    BatchStopJobRunResponse.add_member(:successful_submissions, Shapes::ShapeRef.new(shape: BatchStopJobRunSuccessfulSubmissionList, location_name: "SuccessfulSubmissions"))
    BatchStopJobRunResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchStopJobRunErrorList, location_name: "Errors"))
    BatchStopJobRunResponse.struct_class = Types::BatchStopJobRunResponse

    BatchStopJobRunSuccessfulSubmission.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    BatchStopJobRunSuccessfulSubmission.add_member(:job_run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "JobRunId"))
    BatchStopJobRunSuccessfulSubmission.struct_class = Types::BatchStopJobRunSuccessfulSubmission

    BatchStopJobRunSuccessfulSubmissionList.member = Shapes::ShapeRef.new(shape: BatchStopJobRunSuccessfulSubmission)

    BoundedPartitionValueList.member = Shapes::ShapeRef.new(shape: ValueString)

    CatalogEntries.member = Shapes::ShapeRef.new(shape: CatalogEntry)

    CatalogEntry.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CatalogEntry.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    CatalogEntry.struct_class = Types::CatalogEntry

    CatalogImportStatus.add_member(:import_completed, Shapes::ShapeRef.new(shape: Boolean, location_name: "ImportCompleted"))
    CatalogImportStatus.add_member(:import_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ImportTime"))
    CatalogImportStatus.add_member(:imported_by, Shapes::ShapeRef.new(shape: NameString, location_name: "ImportedBy"))
    CatalogImportStatus.struct_class = Types::CatalogImportStatus

    Classifier.add_member(:grok_classifier, Shapes::ShapeRef.new(shape: GrokClassifier, location_name: "GrokClassifier"))
    Classifier.add_member(:xml_classifier, Shapes::ShapeRef.new(shape: XMLClassifier, location_name: "XMLClassifier"))
    Classifier.add_member(:json_classifier, Shapes::ShapeRef.new(shape: JsonClassifier, location_name: "JsonClassifier"))
    Classifier.struct_class = Types::Classifier

    ClassifierList.member = Shapes::ShapeRef.new(shape: Classifier)

    ClassifierNameList.member = Shapes::ShapeRef.new(shape: NameString)

    CloudWatchEncryption.add_member(:cloud_watch_encryption_mode, Shapes::ShapeRef.new(shape: CloudWatchEncryptionMode, location_name: "CloudWatchEncryptionMode"))
    CloudWatchEncryption.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    CloudWatchEncryption.struct_class = Types::CloudWatchEncryption

    CodeGenEdge.add_member(:source, Shapes::ShapeRef.new(shape: CodeGenIdentifier, required: true, location_name: "Source"))
    CodeGenEdge.add_member(:target, Shapes::ShapeRef.new(shape: CodeGenIdentifier, required: true, location_name: "Target"))
    CodeGenEdge.add_member(:target_parameter, Shapes::ShapeRef.new(shape: CodeGenArgName, location_name: "TargetParameter"))
    CodeGenEdge.struct_class = Types::CodeGenEdge

    CodeGenNode.add_member(:id, Shapes::ShapeRef.new(shape: CodeGenIdentifier, required: true, location_name: "Id"))
    CodeGenNode.add_member(:node_type, Shapes::ShapeRef.new(shape: CodeGenNodeType, required: true, location_name: "NodeType"))
    CodeGenNode.add_member(:args, Shapes::ShapeRef.new(shape: CodeGenNodeArgs, required: true, location_name: "Args"))
    CodeGenNode.add_member(:line_number, Shapes::ShapeRef.new(shape: Integer, location_name: "LineNumber"))
    CodeGenNode.struct_class = Types::CodeGenNode

    CodeGenNodeArg.add_member(:name, Shapes::ShapeRef.new(shape: CodeGenArgName, required: true, location_name: "Name"))
    CodeGenNodeArg.add_member(:value, Shapes::ShapeRef.new(shape: CodeGenArgValue, required: true, location_name: "Value"))
    CodeGenNodeArg.add_member(:param, Shapes::ShapeRef.new(shape: Boolean, location_name: "Param"))
    CodeGenNodeArg.struct_class = Types::CodeGenNodeArg

    CodeGenNodeArgs.member = Shapes::ShapeRef.new(shape: CodeGenNodeArg)

    Column.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    Column.add_member(:type, Shapes::ShapeRef.new(shape: ColumnTypeString, location_name: "Type"))
    Column.add_member(:comment, Shapes::ShapeRef.new(shape: CommentString, location_name: "Comment"))
    Column.struct_class = Types::Column

    ColumnList.member = Shapes::ShapeRef.new(shape: Column)

    ColumnValueStringList.member = Shapes::ShapeRef.new(shape: ColumnValuesString)

    Condition.add_member(:logical_operator, Shapes::ShapeRef.new(shape: LogicalOperator, location_name: "LogicalOperator"))
    Condition.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    Condition.add_member(:state, Shapes::ShapeRef.new(shape: JobRunState, location_name: "State"))
    Condition.struct_class = Types::Condition

    ConditionList.member = Shapes::ShapeRef.new(shape: Condition)

    Connection.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    Connection.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Connection.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "ConnectionType"))
    Connection.add_member(:match_criteria, Shapes::ShapeRef.new(shape: MatchCriteria, location_name: "MatchCriteria"))
    Connection.add_member(:connection_properties, Shapes::ShapeRef.new(shape: ConnectionProperties, location_name: "ConnectionProperties"))
    Connection.add_member(:physical_connection_requirements, Shapes::ShapeRef.new(shape: PhysicalConnectionRequirements, location_name: "PhysicalConnectionRequirements"))
    Connection.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Connection.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    Connection.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: NameString, location_name: "LastUpdatedBy"))
    Connection.struct_class = Types::Connection

    ConnectionInput.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    ConnectionInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    ConnectionInput.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, required: true, location_name: "ConnectionType"))
    ConnectionInput.add_member(:match_criteria, Shapes::ShapeRef.new(shape: MatchCriteria, location_name: "MatchCriteria"))
    ConnectionInput.add_member(:connection_properties, Shapes::ShapeRef.new(shape: ConnectionProperties, required: true, location_name: "ConnectionProperties"))
    ConnectionInput.add_member(:physical_connection_requirements, Shapes::ShapeRef.new(shape: PhysicalConnectionRequirements, location_name: "PhysicalConnectionRequirements"))
    ConnectionInput.struct_class = Types::ConnectionInput

    ConnectionList.member = Shapes::ShapeRef.new(shape: Connection)

    ConnectionProperties.key = Shapes::ShapeRef.new(shape: ConnectionPropertyKey)
    ConnectionProperties.value = Shapes::ShapeRef.new(shape: ValueString)

    ConnectionsList.add_member(:connections, Shapes::ShapeRef.new(shape: StringList, location_name: "Connections"))
    ConnectionsList.struct_class = Types::ConnectionsList

    Crawler.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    Crawler.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    Crawler.add_member(:targets, Shapes::ShapeRef.new(shape: CrawlerTargets, location_name: "Targets"))
    Crawler.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "DatabaseName"))
    Crawler.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Crawler.add_member(:classifiers, Shapes::ShapeRef.new(shape: ClassifierNameList, location_name: "Classifiers"))
    Crawler.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: SchemaChangePolicy, location_name: "SchemaChangePolicy"))
    Crawler.add_member(:state, Shapes::ShapeRef.new(shape: CrawlerState, location_name: "State"))
    Crawler.add_member(:table_prefix, Shapes::ShapeRef.new(shape: TablePrefix, location_name: "TablePrefix"))
    Crawler.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "Schedule"))
    Crawler.add_member(:crawl_elapsed_time, Shapes::ShapeRef.new(shape: MillisecondsCount, location_name: "CrawlElapsedTime"))
    Crawler.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Crawler.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    Crawler.add_member(:last_crawl, Shapes::ShapeRef.new(shape: LastCrawlInfo, location_name: "LastCrawl"))
    Crawler.add_member(:version, Shapes::ShapeRef.new(shape: VersionId, location_name: "Version"))
    Crawler.add_member(:configuration, Shapes::ShapeRef.new(shape: CrawlerConfiguration, location_name: "Configuration"))
    Crawler.add_member(:crawler_security_configuration, Shapes::ShapeRef.new(shape: CrawlerSecurityConfiguration, location_name: "CrawlerSecurityConfiguration"))
    Crawler.struct_class = Types::Crawler

    CrawlerList.member = Shapes::ShapeRef.new(shape: Crawler)

    CrawlerMetrics.add_member(:crawler_name, Shapes::ShapeRef.new(shape: NameString, location_name: "CrawlerName"))
    CrawlerMetrics.add_member(:time_left_seconds, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "TimeLeftSeconds"))
    CrawlerMetrics.add_member(:still_estimating, Shapes::ShapeRef.new(shape: Boolean, location_name: "StillEstimating"))
    CrawlerMetrics.add_member(:last_runtime_seconds, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "LastRuntimeSeconds"))
    CrawlerMetrics.add_member(:median_runtime_seconds, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "MedianRuntimeSeconds"))
    CrawlerMetrics.add_member(:tables_created, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "TablesCreated"))
    CrawlerMetrics.add_member(:tables_updated, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "TablesUpdated"))
    CrawlerMetrics.add_member(:tables_deleted, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "TablesDeleted"))
    CrawlerMetrics.struct_class = Types::CrawlerMetrics

    CrawlerMetricsList.member = Shapes::ShapeRef.new(shape: CrawlerMetrics)

    CrawlerNameList.member = Shapes::ShapeRef.new(shape: NameString)

    CrawlerTargets.add_member(:s3_targets, Shapes::ShapeRef.new(shape: S3TargetList, location_name: "S3Targets"))
    CrawlerTargets.add_member(:jdbc_targets, Shapes::ShapeRef.new(shape: JdbcTargetList, location_name: "JdbcTargets"))
    CrawlerTargets.add_member(:dynamo_db_targets, Shapes::ShapeRef.new(shape: DynamoDBTargetList, location_name: "DynamoDBTargets"))
    CrawlerTargets.struct_class = Types::CrawlerTargets

    CreateClassifierRequest.add_member(:grok_classifier, Shapes::ShapeRef.new(shape: CreateGrokClassifierRequest, location_name: "GrokClassifier"))
    CreateClassifierRequest.add_member(:xml_classifier, Shapes::ShapeRef.new(shape: CreateXMLClassifierRequest, location_name: "XMLClassifier"))
    CreateClassifierRequest.add_member(:json_classifier, Shapes::ShapeRef.new(shape: CreateJsonClassifierRequest, location_name: "JsonClassifier"))
    CreateClassifierRequest.struct_class = Types::CreateClassifierRequest

    CreateClassifierResponse.struct_class = Types::CreateClassifierResponse

    CreateConnectionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateConnectionRequest.add_member(:connection_input, Shapes::ShapeRef.new(shape: ConnectionInput, required: true, location_name: "ConnectionInput"))
    CreateConnectionRequest.struct_class = Types::CreateConnectionRequest

    CreateConnectionResponse.struct_class = Types::CreateConnectionResponse

    CreateCrawlerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateCrawlerRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    CreateCrawlerRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location_name: "DatabaseName"))
    CreateCrawlerRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateCrawlerRequest.add_member(:targets, Shapes::ShapeRef.new(shape: CrawlerTargets, required: true, location_name: "Targets"))
    CreateCrawlerRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: CronExpression, location_name: "Schedule"))
    CreateCrawlerRequest.add_member(:classifiers, Shapes::ShapeRef.new(shape: ClassifierNameList, location_name: "Classifiers"))
    CreateCrawlerRequest.add_member(:table_prefix, Shapes::ShapeRef.new(shape: TablePrefix, location_name: "TablePrefix"))
    CreateCrawlerRequest.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: SchemaChangePolicy, location_name: "SchemaChangePolicy"))
    CreateCrawlerRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: CrawlerConfiguration, location_name: "Configuration"))
    CreateCrawlerRequest.add_member(:crawler_security_configuration, Shapes::ShapeRef.new(shape: CrawlerSecurityConfiguration, location_name: "CrawlerSecurityConfiguration"))
    CreateCrawlerRequest.struct_class = Types::CreateCrawlerRequest

    CreateCrawlerResponse.struct_class = Types::CreateCrawlerResponse

    CreateDatabaseRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateDatabaseRequest.add_member(:database_input, Shapes::ShapeRef.new(shape: DatabaseInput, required: true, location_name: "DatabaseInput"))
    CreateDatabaseRequest.struct_class = Types::CreateDatabaseRequest

    CreateDatabaseResponse.struct_class = Types::CreateDatabaseResponse

    CreateDevEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointName"))
    CreateDevEndpointRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateDevEndpointRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroupIds"))
    CreateDevEndpointRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "SubnetId"))
    CreateDevEndpointRequest.add_member(:public_key, Shapes::ShapeRef.new(shape: GenericString, location_name: "PublicKey"))
    CreateDevEndpointRequest.add_member(:public_keys, Shapes::ShapeRef.new(shape: PublicKeysList, location_name: "PublicKeys"))
    CreateDevEndpointRequest.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "NumberOfNodes"))
    CreateDevEndpointRequest.add_member(:extra_python_libs_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraPythonLibsS3Path"))
    CreateDevEndpointRequest.add_member(:extra_jars_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraJarsS3Path"))
    CreateDevEndpointRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    CreateDevEndpointRequest.struct_class = Types::CreateDevEndpointRequest

    CreateDevEndpointResponse.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointName"))
    CreateDevEndpointResponse.add_member(:status, Shapes::ShapeRef.new(shape: GenericString, location_name: "Status"))
    CreateDevEndpointResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroupIds"))
    CreateDevEndpointResponse.add_member(:subnet_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "SubnetId"))
    CreateDevEndpointResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CreateDevEndpointResponse.add_member(:yarn_endpoint_address, Shapes::ShapeRef.new(shape: GenericString, location_name: "YarnEndpointAddress"))
    CreateDevEndpointResponse.add_member(:zeppelin_remote_spark_interpreter_port, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "ZeppelinRemoteSparkInterpreterPort"))
    CreateDevEndpointResponse.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "NumberOfNodes"))
    CreateDevEndpointResponse.add_member(:availability_zone, Shapes::ShapeRef.new(shape: GenericString, location_name: "AvailabilityZone"))
    CreateDevEndpointResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "VpcId"))
    CreateDevEndpointResponse.add_member(:extra_python_libs_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraPythonLibsS3Path"))
    CreateDevEndpointResponse.add_member(:extra_jars_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraJarsS3Path"))
    CreateDevEndpointResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "FailureReason"))
    CreateDevEndpointResponse.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    CreateDevEndpointResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedTimestamp"))
    CreateDevEndpointResponse.struct_class = Types::CreateDevEndpointResponse

    CreateGrokClassifierRequest.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, required: true, location_name: "Classification"))
    CreateGrokClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateGrokClassifierRequest.add_member(:grok_pattern, Shapes::ShapeRef.new(shape: GrokPattern, required: true, location_name: "GrokPattern"))
    CreateGrokClassifierRequest.add_member(:custom_patterns, Shapes::ShapeRef.new(shape: CustomPatterns, location_name: "CustomPatterns"))
    CreateGrokClassifierRequest.struct_class = Types::CreateGrokClassifierRequest

    CreateJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateJobRequest.add_member(:log_uri, Shapes::ShapeRef.new(shape: UriString, location_name: "LogUri"))
    CreateJobRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, required: true, location_name: "Role"))
    CreateJobRequest.add_member(:execution_property, Shapes::ShapeRef.new(shape: ExecutionProperty, location_name: "ExecutionProperty"))
    CreateJobRequest.add_member(:command, Shapes::ShapeRef.new(shape: JobCommand, required: true, location_name: "Command"))
    CreateJobRequest.add_member(:default_arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "DefaultArguments"))
    CreateJobRequest.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionsList, location_name: "Connections"))
    CreateJobRequest.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    CreateJobRequest.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "AllocatedCapacity"))
    CreateJobRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    CreateJobRequest.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    CreateJobRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    CreateJobRequest.struct_class = Types::CreateJobRequest

    CreateJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateJobResponse.struct_class = Types::CreateJobResponse

    CreateJsonClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateJsonClassifierRequest.add_member(:json_path, Shapes::ShapeRef.new(shape: JsonPath, required: true, location_name: "JsonPath"))
    CreateJsonClassifierRequest.struct_class = Types::CreateJsonClassifierRequest

    CreatePartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreatePartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CreatePartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    CreatePartitionRequest.add_member(:partition_input, Shapes::ShapeRef.new(shape: PartitionInput, required: true, location_name: "PartitionInput"))
    CreatePartitionRequest.struct_class = Types::CreatePartitionRequest

    CreatePartitionResponse.struct_class = Types::CreatePartitionResponse

    CreateScriptRequest.add_member(:dag_nodes, Shapes::ShapeRef.new(shape: DagNodes, location_name: "DagNodes"))
    CreateScriptRequest.add_member(:dag_edges, Shapes::ShapeRef.new(shape: DagEdges, location_name: "DagEdges"))
    CreateScriptRequest.add_member(:language, Shapes::ShapeRef.new(shape: Language, location_name: "Language"))
    CreateScriptRequest.struct_class = Types::CreateScriptRequest

    CreateScriptResponse.add_member(:python_script, Shapes::ShapeRef.new(shape: PythonScript, location_name: "PythonScript"))
    CreateScriptResponse.add_member(:scala_code, Shapes::ShapeRef.new(shape: ScalaCode, location_name: "ScalaCode"))
    CreateScriptResponse.struct_class = Types::CreateScriptResponse

    CreateSecurityConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateSecurityConfigurationRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, required: true, location_name: "EncryptionConfiguration"))
    CreateSecurityConfigurationRequest.struct_class = Types::CreateSecurityConfigurationRequest

    CreateSecurityConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateSecurityConfigurationResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedTimestamp"))
    CreateSecurityConfigurationResponse.struct_class = Types::CreateSecurityConfigurationResponse

    CreateTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CreateTableRequest.add_member(:table_input, Shapes::ShapeRef.new(shape: TableInput, required: true, location_name: "TableInput"))
    CreateTableRequest.struct_class = Types::CreateTableRequest

    CreateTableResponse.struct_class = Types::CreateTableResponse

    CreateTriggerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateTriggerRequest.add_member(:type, Shapes::ShapeRef.new(shape: TriggerType, required: true, location_name: "Type"))
    CreateTriggerRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: GenericString, location_name: "Schedule"))
    CreateTriggerRequest.add_member(:predicate, Shapes::ShapeRef.new(shape: Predicate, location_name: "Predicate"))
    CreateTriggerRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, required: true, location_name: "Actions"))
    CreateTriggerRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateTriggerRequest.add_member(:start_on_creation, Shapes::ShapeRef.new(shape: BooleanValue, location_name: "StartOnCreation"))
    CreateTriggerRequest.struct_class = Types::CreateTriggerRequest

    CreateTriggerResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateTriggerResponse.struct_class = Types::CreateTriggerResponse

    CreateUserDefinedFunctionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateUserDefinedFunctionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CreateUserDefinedFunctionRequest.add_member(:function_input, Shapes::ShapeRef.new(shape: UserDefinedFunctionInput, required: true, location_name: "FunctionInput"))
    CreateUserDefinedFunctionRequest.struct_class = Types::CreateUserDefinedFunctionRequest

    CreateUserDefinedFunctionResponse.struct_class = Types::CreateUserDefinedFunctionResponse

    CreateXMLClassifierRequest.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, required: true, location_name: "Classification"))
    CreateXMLClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateXMLClassifierRequest.add_member(:row_tag, Shapes::ShapeRef.new(shape: RowTag, location_name: "RowTag"))
    CreateXMLClassifierRequest.struct_class = Types::CreateXMLClassifierRequest

    DagEdges.member = Shapes::ShapeRef.new(shape: CodeGenEdge)

    DagNodes.member = Shapes::ShapeRef.new(shape: CodeGenNode)

    DataCatalogEncryptionSettings.add_member(:encryption_at_rest, Shapes::ShapeRef.new(shape: EncryptionAtRest, location_name: "EncryptionAtRest"))
    DataCatalogEncryptionSettings.struct_class = Types::DataCatalogEncryptionSettings

    Database.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    Database.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Database.add_member(:location_uri, Shapes::ShapeRef.new(shape: URI, location_name: "LocationUri"))
    Database.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    Database.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    Database.struct_class = Types::Database

    DatabaseInput.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DatabaseInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    DatabaseInput.add_member(:location_uri, Shapes::ShapeRef.new(shape: URI, location_name: "LocationUri"))
    DatabaseInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    DatabaseInput.struct_class = Types::DatabaseInput

    DatabaseList.member = Shapes::ShapeRef.new(shape: Database)

    DeleteClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteClassifierRequest.struct_class = Types::DeleteClassifierRequest

    DeleteClassifierResponse.struct_class = Types::DeleteClassifierResponse

    DeleteConnectionNameList.member = Shapes::ShapeRef.new(shape: NameString)

    DeleteConnectionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteConnectionRequest.add_member(:connection_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "ConnectionName"))
    DeleteConnectionRequest.struct_class = Types::DeleteConnectionRequest

    DeleteConnectionResponse.struct_class = Types::DeleteConnectionResponse

    DeleteCrawlerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteCrawlerRequest.struct_class = Types::DeleteCrawlerRequest

    DeleteCrawlerResponse.struct_class = Types::DeleteCrawlerResponse

    DeleteDatabaseRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteDatabaseRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteDatabaseRequest.struct_class = Types::DeleteDatabaseRequest

    DeleteDatabaseResponse.struct_class = Types::DeleteDatabaseResponse

    DeleteDevEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointName"))
    DeleteDevEndpointRequest.struct_class = Types::DeleteDevEndpointRequest

    DeleteDevEndpointResponse.struct_class = Types::DeleteDevEndpointResponse

    DeleteJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "JobName"))
    DeleteJobRequest.struct_class = Types::DeleteJobRequest

    DeleteJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    DeleteJobResponse.struct_class = Types::DeleteJobResponse

    DeletePartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeletePartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeletePartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DeletePartitionRequest.add_member(:partition_values, Shapes::ShapeRef.new(shape: ValueStringList, required: true, location_name: "PartitionValues"))
    DeletePartitionRequest.struct_class = Types::DeletePartitionRequest

    DeletePartitionResponse.struct_class = Types::DeletePartitionResponse

    DeleteSecurityConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteSecurityConfigurationRequest.struct_class = Types::DeleteSecurityConfigurationRequest

    DeleteSecurityConfigurationResponse.struct_class = Types::DeleteSecurityConfigurationResponse

    DeleteTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeleteTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteTableRequest.struct_class = Types::DeleteTableRequest

    DeleteTableResponse.struct_class = Types::DeleteTableResponse

    DeleteTableVersionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteTableVersionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeleteTableVersionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DeleteTableVersionRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: VersionString, required: true, location_name: "VersionId"))
    DeleteTableVersionRequest.struct_class = Types::DeleteTableVersionRequest

    DeleteTableVersionResponse.struct_class = Types::DeleteTableVersionResponse

    DeleteTriggerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteTriggerRequest.struct_class = Types::DeleteTriggerRequest

    DeleteTriggerResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    DeleteTriggerResponse.struct_class = Types::DeleteTriggerResponse

    DeleteUserDefinedFunctionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteUserDefinedFunctionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeleteUserDefinedFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "FunctionName"))
    DeleteUserDefinedFunctionRequest.struct_class = Types::DeleteUserDefinedFunctionRequest

    DeleteUserDefinedFunctionResponse.struct_class = Types::DeleteUserDefinedFunctionResponse

    DevEndpoint.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointName"))
    DevEndpoint.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DevEndpoint.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroupIds"))
    DevEndpoint.add_member(:subnet_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "SubnetId"))
    DevEndpoint.add_member(:yarn_endpoint_address, Shapes::ShapeRef.new(shape: GenericString, location_name: "YarnEndpointAddress"))
    DevEndpoint.add_member(:private_address, Shapes::ShapeRef.new(shape: GenericString, location_name: "PrivateAddress"))
    DevEndpoint.add_member(:zeppelin_remote_spark_interpreter_port, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "ZeppelinRemoteSparkInterpreterPort"))
    DevEndpoint.add_member(:public_address, Shapes::ShapeRef.new(shape: GenericString, location_name: "PublicAddress"))
    DevEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: GenericString, location_name: "Status"))
    DevEndpoint.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "NumberOfNodes"))
    DevEndpoint.add_member(:availability_zone, Shapes::ShapeRef.new(shape: GenericString, location_name: "AvailabilityZone"))
    DevEndpoint.add_member(:vpc_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "VpcId"))
    DevEndpoint.add_member(:extra_python_libs_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraPythonLibsS3Path"))
    DevEndpoint.add_member(:extra_jars_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraJarsS3Path"))
    DevEndpoint.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "FailureReason"))
    DevEndpoint.add_member(:last_update_status, Shapes::ShapeRef.new(shape: GenericString, location_name: "LastUpdateStatus"))
    DevEndpoint.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedTimestamp"))
    DevEndpoint.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "LastModifiedTimestamp"))
    DevEndpoint.add_member(:public_key, Shapes::ShapeRef.new(shape: GenericString, location_name: "PublicKey"))
    DevEndpoint.add_member(:public_keys, Shapes::ShapeRef.new(shape: PublicKeysList, location_name: "PublicKeys"))
    DevEndpoint.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    DevEndpoint.struct_class = Types::DevEndpoint

    DevEndpointCustomLibraries.add_member(:extra_python_libs_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraPythonLibsS3Path"))
    DevEndpointCustomLibraries.add_member(:extra_jars_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraJarsS3Path"))
    DevEndpointCustomLibraries.struct_class = Types::DevEndpointCustomLibraries

    DevEndpointList.member = Shapes::ShapeRef.new(shape: DevEndpoint)

    DynamoDBTarget.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    DynamoDBTarget.struct_class = Types::DynamoDBTarget

    DynamoDBTargetList.member = Shapes::ShapeRef.new(shape: DynamoDBTarget)

    EncryptionAtRest.add_member(:catalog_encryption_mode, Shapes::ShapeRef.new(shape: CatalogEncryptionMode, required: true, location_name: "CatalogEncryptionMode"))
    EncryptionAtRest.add_member(:sse_aws_kms_key_id, Shapes::ShapeRef.new(shape: NameString, location_name: "SseAwsKmsKeyId"))
    EncryptionAtRest.struct_class = Types::EncryptionAtRest

    EncryptionConfiguration.add_member(:s3_encryption, Shapes::ShapeRef.new(shape: S3EncryptionList, location_name: "S3Encryption"))
    EncryptionConfiguration.add_member(:cloud_watch_encryption, Shapes::ShapeRef.new(shape: CloudWatchEncryption, location_name: "CloudWatchEncryption"))
    EncryptionConfiguration.add_member(:job_bookmarks_encryption, Shapes::ShapeRef.new(shape: JobBookmarksEncryption, location_name: "JobBookmarksEncryption"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    ErrorByName.key = Shapes::ShapeRef.new(shape: NameString)
    ErrorByName.value = Shapes::ShapeRef.new(shape: ErrorDetail)

    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: NameString, location_name: "ErrorCode"))
    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ExecutionProperty.add_member(:max_concurrent_runs, Shapes::ShapeRef.new(shape: MaxConcurrentRuns, location_name: "MaxConcurrentRuns"))
    ExecutionProperty.struct_class = Types::ExecutionProperty

    GenericMap.key = Shapes::ShapeRef.new(shape: GenericString)
    GenericMap.value = Shapes::ShapeRef.new(shape: GenericString)

    GetCatalogImportStatusRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetCatalogImportStatusRequest.struct_class = Types::GetCatalogImportStatusRequest

    GetCatalogImportStatusResponse.add_member(:import_status, Shapes::ShapeRef.new(shape: CatalogImportStatus, location_name: "ImportStatus"))
    GetCatalogImportStatusResponse.struct_class = Types::GetCatalogImportStatusResponse

    GetClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetClassifierRequest.struct_class = Types::GetClassifierRequest

    GetClassifierResponse.add_member(:classifier, Shapes::ShapeRef.new(shape: Classifier, location_name: "Classifier"))
    GetClassifierResponse.struct_class = Types::GetClassifierResponse

    GetClassifiersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetClassifiersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetClassifiersRequest.struct_class = Types::GetClassifiersRequest

    GetClassifiersResponse.add_member(:classifiers, Shapes::ShapeRef.new(shape: ClassifierList, location_name: "Classifiers"))
    GetClassifiersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetClassifiersResponse.struct_class = Types::GetClassifiersResponse

    GetConnectionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetConnectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetConnectionRequest.struct_class = Types::GetConnectionRequest

    GetConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    GetConnectionResponse.struct_class = Types::GetConnectionResponse

    GetConnectionsFilter.add_member(:match_criteria, Shapes::ShapeRef.new(shape: MatchCriteria, location_name: "MatchCriteria"))
    GetConnectionsFilter.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "ConnectionType"))
    GetConnectionsFilter.struct_class = Types::GetConnectionsFilter

    GetConnectionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetConnectionsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: GetConnectionsFilter, location_name: "Filter"))
    GetConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetConnectionsRequest.struct_class = Types::GetConnectionsRequest

    GetConnectionsResponse.add_member(:connection_list, Shapes::ShapeRef.new(shape: ConnectionList, location_name: "ConnectionList"))
    GetConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetConnectionsResponse.struct_class = Types::GetConnectionsResponse

    GetCrawlerMetricsRequest.add_member(:crawler_name_list, Shapes::ShapeRef.new(shape: CrawlerNameList, location_name: "CrawlerNameList"))
    GetCrawlerMetricsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetCrawlerMetricsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetCrawlerMetricsRequest.struct_class = Types::GetCrawlerMetricsRequest

    GetCrawlerMetricsResponse.add_member(:crawler_metrics_list, Shapes::ShapeRef.new(shape: CrawlerMetricsList, location_name: "CrawlerMetricsList"))
    GetCrawlerMetricsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetCrawlerMetricsResponse.struct_class = Types::GetCrawlerMetricsResponse

    GetCrawlerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetCrawlerRequest.struct_class = Types::GetCrawlerRequest

    GetCrawlerResponse.add_member(:crawler, Shapes::ShapeRef.new(shape: Crawler, location_name: "Crawler"))
    GetCrawlerResponse.struct_class = Types::GetCrawlerResponse

    GetCrawlersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetCrawlersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetCrawlersRequest.struct_class = Types::GetCrawlersRequest

    GetCrawlersResponse.add_member(:crawlers, Shapes::ShapeRef.new(shape: CrawlerList, location_name: "Crawlers"))
    GetCrawlersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetCrawlersResponse.struct_class = Types::GetCrawlersResponse

    GetDatabaseRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetDatabaseRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetDatabaseRequest.struct_class = Types::GetDatabaseRequest

    GetDatabaseResponse.add_member(:database, Shapes::ShapeRef.new(shape: Database, location_name: "Database"))
    GetDatabaseResponse.struct_class = Types::GetDatabaseResponse

    GetDatabasesRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetDatabasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetDatabasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetDatabasesRequest.struct_class = Types::GetDatabasesRequest

    GetDatabasesResponse.add_member(:database_list, Shapes::ShapeRef.new(shape: DatabaseList, required: true, location_name: "DatabaseList"))
    GetDatabasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetDatabasesResponse.struct_class = Types::GetDatabasesResponse

    GetDataflowGraphRequest.add_member(:python_script, Shapes::ShapeRef.new(shape: PythonScript, location_name: "PythonScript"))
    GetDataflowGraphRequest.struct_class = Types::GetDataflowGraphRequest

    GetDataflowGraphResponse.add_member(:dag_nodes, Shapes::ShapeRef.new(shape: DagNodes, location_name: "DagNodes"))
    GetDataflowGraphResponse.add_member(:dag_edges, Shapes::ShapeRef.new(shape: DagEdges, location_name: "DagEdges"))
    GetDataflowGraphResponse.struct_class = Types::GetDataflowGraphResponse

    GetDevEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointName"))
    GetDevEndpointRequest.struct_class = Types::GetDevEndpointRequest

    GetDevEndpointResponse.add_member(:dev_endpoint, Shapes::ShapeRef.new(shape: DevEndpoint, location_name: "DevEndpoint"))
    GetDevEndpointResponse.struct_class = Types::GetDevEndpointResponse

    GetDevEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetDevEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetDevEndpointsRequest.struct_class = Types::GetDevEndpointsRequest

    GetDevEndpointsResponse.add_member(:dev_endpoints, Shapes::ShapeRef.new(shape: DevEndpointList, location_name: "DevEndpoints"))
    GetDevEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetDevEndpointsResponse.struct_class = Types::GetDevEndpointsResponse

    GetJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "JobName"))
    GetJobRequest.struct_class = Types::GetJobRequest

    GetJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "Job"))
    GetJobResponse.struct_class = Types::GetJobResponse

    GetJobRunRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "JobName"))
    GetJobRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    GetJobRunRequest.add_member(:predecessors_included, Shapes::ShapeRef.new(shape: BooleanValue, location_name: "PredecessorsIncluded"))
    GetJobRunRequest.struct_class = Types::GetJobRunRequest

    GetJobRunResponse.add_member(:job_run, Shapes::ShapeRef.new(shape: JobRun, location_name: "JobRun"))
    GetJobRunResponse.struct_class = Types::GetJobRunResponse

    GetJobRunsRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "JobName"))
    GetJobRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetJobRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetJobRunsRequest.struct_class = Types::GetJobRunsRequest

    GetJobRunsResponse.add_member(:job_runs, Shapes::ShapeRef.new(shape: JobRunList, location_name: "JobRuns"))
    GetJobRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetJobRunsResponse.struct_class = Types::GetJobRunsResponse

    GetJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetJobsRequest.struct_class = Types::GetJobsRequest

    GetJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: JobList, location_name: "Jobs"))
    GetJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetJobsResponse.struct_class = Types::GetJobsResponse

    GetMappingRequest.add_member(:source, Shapes::ShapeRef.new(shape: CatalogEntry, required: true, location_name: "Source"))
    GetMappingRequest.add_member(:sinks, Shapes::ShapeRef.new(shape: CatalogEntries, location_name: "Sinks"))
    GetMappingRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    GetMappingRequest.struct_class = Types::GetMappingRequest

    GetMappingResponse.add_member(:mapping, Shapes::ShapeRef.new(shape: MappingList, required: true, location_name: "Mapping"))
    GetMappingResponse.struct_class = Types::GetMappingResponse

    GetPartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetPartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetPartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetPartitionRequest.add_member(:partition_values, Shapes::ShapeRef.new(shape: ValueStringList, required: true, location_name: "PartitionValues"))
    GetPartitionRequest.struct_class = Types::GetPartitionRequest

    GetPartitionResponse.add_member(:partition, Shapes::ShapeRef.new(shape: Partition, location_name: "Partition"))
    GetPartitionResponse.struct_class = Types::GetPartitionResponse

    GetPartitionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetPartitionsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetPartitionsRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetPartitionsRequest.add_member(:expression, Shapes::ShapeRef.new(shape: PredicateString, location_name: "Expression"))
    GetPartitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetPartitionsRequest.add_member(:segment, Shapes::ShapeRef.new(shape: Segment, location_name: "Segment"))
    GetPartitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetPartitionsRequest.struct_class = Types::GetPartitionsRequest

    GetPartitionsResponse.add_member(:partitions, Shapes::ShapeRef.new(shape: PartitionList, location_name: "Partitions"))
    GetPartitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetPartitionsResponse.struct_class = Types::GetPartitionsResponse

    GetPlanRequest.add_member(:mapping, Shapes::ShapeRef.new(shape: MappingList, required: true, location_name: "Mapping"))
    GetPlanRequest.add_member(:source, Shapes::ShapeRef.new(shape: CatalogEntry, required: true, location_name: "Source"))
    GetPlanRequest.add_member(:sinks, Shapes::ShapeRef.new(shape: CatalogEntries, location_name: "Sinks"))
    GetPlanRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    GetPlanRequest.add_member(:language, Shapes::ShapeRef.new(shape: Language, location_name: "Language"))
    GetPlanRequest.struct_class = Types::GetPlanRequest

    GetPlanResponse.add_member(:python_script, Shapes::ShapeRef.new(shape: PythonScript, location_name: "PythonScript"))
    GetPlanResponse.add_member(:scala_code, Shapes::ShapeRef.new(shape: ScalaCode, location_name: "ScalaCode"))
    GetPlanResponse.struct_class = Types::GetPlanResponse

    GetSecurityConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetSecurityConfigurationRequest.struct_class = Types::GetSecurityConfigurationRequest

    GetSecurityConfigurationResponse.add_member(:security_configuration, Shapes::ShapeRef.new(shape: SecurityConfiguration, location_name: "SecurityConfiguration"))
    GetSecurityConfigurationResponse.struct_class = Types::GetSecurityConfigurationResponse

    GetSecurityConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetSecurityConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetSecurityConfigurationsRequest.struct_class = Types::GetSecurityConfigurationsRequest

    GetSecurityConfigurationsResponse.add_member(:security_configurations, Shapes::ShapeRef.new(shape: SecurityConfigurationList, location_name: "SecurityConfigurations"))
    GetSecurityConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetSecurityConfigurationsResponse.struct_class = Types::GetSecurityConfigurationsResponse

    GetTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetTableRequest.struct_class = Types::GetTableRequest

    GetTableResponse.add_member(:table, Shapes::ShapeRef.new(shape: Table, location_name: "Table"))
    GetTableResponse.struct_class = Types::GetTableResponse

    GetTableVersionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetTableVersionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetTableVersionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetTableVersionRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: VersionString, location_name: "VersionId"))
    GetTableVersionRequest.struct_class = Types::GetTableVersionRequest

    GetTableVersionResponse.add_member(:table_version, Shapes::ShapeRef.new(shape: TableVersion, location_name: "TableVersion"))
    GetTableVersionResponse.struct_class = Types::GetTableVersionResponse

    GetTableVersionsList.member = Shapes::ShapeRef.new(shape: TableVersion)

    GetTableVersionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetTableVersionsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetTableVersionsRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetTableVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetTableVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetTableVersionsRequest.struct_class = Types::GetTableVersionsRequest

    GetTableVersionsResponse.add_member(:table_versions, Shapes::ShapeRef.new(shape: GetTableVersionsList, location_name: "TableVersions"))
    GetTableVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetTableVersionsResponse.struct_class = Types::GetTableVersionsResponse

    GetTablesRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetTablesRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetTablesRequest.add_member(:expression, Shapes::ShapeRef.new(shape: FilterString, location_name: "Expression"))
    GetTablesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetTablesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetTablesRequest.struct_class = Types::GetTablesRequest

    GetTablesResponse.add_member(:table_list, Shapes::ShapeRef.new(shape: TableList, location_name: "TableList"))
    GetTablesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetTablesResponse.struct_class = Types::GetTablesResponse

    GetTriggerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetTriggerRequest.struct_class = Types::GetTriggerRequest

    GetTriggerResponse.add_member(:trigger, Shapes::ShapeRef.new(shape: Trigger, location_name: "Trigger"))
    GetTriggerResponse.struct_class = Types::GetTriggerResponse

    GetTriggersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetTriggersRequest.add_member(:dependent_job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DependentJobName"))
    GetTriggersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetTriggersRequest.struct_class = Types::GetTriggersRequest

    GetTriggersResponse.add_member(:triggers, Shapes::ShapeRef.new(shape: TriggerList, location_name: "Triggers"))
    GetTriggersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetTriggersResponse.struct_class = Types::GetTriggersResponse

    GetUserDefinedFunctionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetUserDefinedFunctionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetUserDefinedFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "FunctionName"))
    GetUserDefinedFunctionRequest.struct_class = Types::GetUserDefinedFunctionRequest

    GetUserDefinedFunctionResponse.add_member(:user_defined_function, Shapes::ShapeRef.new(shape: UserDefinedFunction, location_name: "UserDefinedFunction"))
    GetUserDefinedFunctionResponse.struct_class = Types::GetUserDefinedFunctionResponse

    GetUserDefinedFunctionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetUserDefinedFunctionsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetUserDefinedFunctionsRequest.add_member(:pattern, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Pattern"))
    GetUserDefinedFunctionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetUserDefinedFunctionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetUserDefinedFunctionsRequest.struct_class = Types::GetUserDefinedFunctionsRequest

    GetUserDefinedFunctionsResponse.add_member(:user_defined_functions, Shapes::ShapeRef.new(shape: UserDefinedFunctionList, location_name: "UserDefinedFunctions"))
    GetUserDefinedFunctionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetUserDefinedFunctionsResponse.struct_class = Types::GetUserDefinedFunctionsResponse

    GrokClassifier.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GrokClassifier.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, required: true, location_name: "Classification"))
    GrokClassifier.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    GrokClassifier.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    GrokClassifier.add_member(:version, Shapes::ShapeRef.new(shape: VersionId, location_name: "Version"))
    GrokClassifier.add_member(:grok_pattern, Shapes::ShapeRef.new(shape: GrokPattern, required: true, location_name: "GrokPattern"))
    GrokClassifier.add_member(:custom_patterns, Shapes::ShapeRef.new(shape: CustomPatterns, location_name: "CustomPatterns"))
    GrokClassifier.struct_class = Types::GrokClassifier

    ImportCatalogToGlueRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    ImportCatalogToGlueRequest.struct_class = Types::ImportCatalogToGlueRequest

    ImportCatalogToGlueResponse.struct_class = Types::ImportCatalogToGlueResponse

    JdbcTarget.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    JdbcTarget.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    JdbcTarget.add_member(:exclusions, Shapes::ShapeRef.new(shape: PathList, location_name: "Exclusions"))
    JdbcTarget.struct_class = Types::JdbcTarget

    JdbcTargetList.member = Shapes::ShapeRef.new(shape: JdbcTarget)

    Job.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    Job.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Job.add_member(:log_uri, Shapes::ShapeRef.new(shape: UriString, location_name: "LogUri"))
    Job.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, location_name: "Role"))
    Job.add_member(:created_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedOn"))
    Job.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "LastModifiedOn"))
    Job.add_member(:execution_property, Shapes::ShapeRef.new(shape: ExecutionProperty, location_name: "ExecutionProperty"))
    Job.add_member(:command, Shapes::ShapeRef.new(shape: JobCommand, location_name: "Command"))
    Job.add_member(:default_arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "DefaultArguments"))
    Job.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionsList, location_name: "Connections"))
    Job.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    Job.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "AllocatedCapacity"))
    Job.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    Job.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    Job.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    Job.struct_class = Types::Job

    JobBookmarkEntry.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    JobBookmarkEntry.add_member(:version, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "Version"))
    JobBookmarkEntry.add_member(:run, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "Run"))
    JobBookmarkEntry.add_member(:attempt, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "Attempt"))
    JobBookmarkEntry.add_member(:job_bookmark, Shapes::ShapeRef.new(shape: JsonValue, location_name: "JobBookmark"))
    JobBookmarkEntry.struct_class = Types::JobBookmarkEntry

    JobBookmarksEncryption.add_member(:job_bookmarks_encryption_mode, Shapes::ShapeRef.new(shape: JobBookmarksEncryptionMode, location_name: "JobBookmarksEncryptionMode"))
    JobBookmarksEncryption.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    JobBookmarksEncryption.struct_class = Types::JobBookmarksEncryption

    JobCommand.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    JobCommand.add_member(:script_location, Shapes::ShapeRef.new(shape: ScriptLocationString, location_name: "ScriptLocation"))
    JobCommand.struct_class = Types::JobCommand

    JobList.member = Shapes::ShapeRef.new(shape: Job)

    JobRun.add_member(:id, Shapes::ShapeRef.new(shape: IdString, location_name: "Id"))
    JobRun.add_member(:attempt, Shapes::ShapeRef.new(shape: AttemptCount, location_name: "Attempt"))
    JobRun.add_member(:previous_run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "PreviousRunId"))
    JobRun.add_member(:trigger_name, Shapes::ShapeRef.new(shape: NameString, location_name: "TriggerName"))
    JobRun.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    JobRun.add_member(:started_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "StartedOn"))
    JobRun.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "LastModifiedOn"))
    JobRun.add_member(:completed_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CompletedOn"))
    JobRun.add_member(:job_run_state, Shapes::ShapeRef.new(shape: JobRunState, location_name: "JobRunState"))
    JobRun.add_member(:arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "Arguments"))
    JobRun.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorString, location_name: "ErrorMessage"))
    JobRun.add_member(:predecessor_runs, Shapes::ShapeRef.new(shape: PredecessorList, location_name: "PredecessorRuns"))
    JobRun.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "AllocatedCapacity"))
    JobRun.add_member(:execution_time, Shapes::ShapeRef.new(shape: ExecutionTime, location_name: "ExecutionTime"))
    JobRun.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    JobRun.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    JobRun.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    JobRun.add_member(:log_group_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "LogGroupName"))
    JobRun.struct_class = Types::JobRun

    JobRunList.member = Shapes::ShapeRef.new(shape: JobRun)

    JobUpdate.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    JobUpdate.add_member(:log_uri, Shapes::ShapeRef.new(shape: UriString, location_name: "LogUri"))
    JobUpdate.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, location_name: "Role"))
    JobUpdate.add_member(:execution_property, Shapes::ShapeRef.new(shape: ExecutionProperty, location_name: "ExecutionProperty"))
    JobUpdate.add_member(:command, Shapes::ShapeRef.new(shape: JobCommand, location_name: "Command"))
    JobUpdate.add_member(:default_arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "DefaultArguments"))
    JobUpdate.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionsList, location_name: "Connections"))
    JobUpdate.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    JobUpdate.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "AllocatedCapacity"))
    JobUpdate.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    JobUpdate.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    JobUpdate.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    JobUpdate.struct_class = Types::JobUpdate

    JsonClassifier.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    JsonClassifier.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    JsonClassifier.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    JsonClassifier.add_member(:version, Shapes::ShapeRef.new(shape: VersionId, location_name: "Version"))
    JsonClassifier.add_member(:json_path, Shapes::ShapeRef.new(shape: JsonPath, required: true, location_name: "JsonPath"))
    JsonClassifier.struct_class = Types::JsonClassifier

    LastCrawlInfo.add_member(:status, Shapes::ShapeRef.new(shape: LastCrawlStatus, location_name: "Status"))
    LastCrawlInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    LastCrawlInfo.add_member(:log_group, Shapes::ShapeRef.new(shape: LogGroup, location_name: "LogGroup"))
    LastCrawlInfo.add_member(:log_stream, Shapes::ShapeRef.new(shape: LogStream, location_name: "LogStream"))
    LastCrawlInfo.add_member(:message_prefix, Shapes::ShapeRef.new(shape: MessagePrefix, location_name: "MessagePrefix"))
    LastCrawlInfo.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    LastCrawlInfo.struct_class = Types::LastCrawlInfo

    Location.add_member(:jdbc, Shapes::ShapeRef.new(shape: CodeGenNodeArgs, location_name: "Jdbc"))
    Location.add_member(:s3, Shapes::ShapeRef.new(shape: CodeGenNodeArgs, location_name: "S3"))
    Location.add_member(:dynamo_db, Shapes::ShapeRef.new(shape: CodeGenNodeArgs, location_name: "DynamoDB"))
    Location.struct_class = Types::Location

    LocationMap.key = Shapes::ShapeRef.new(shape: ColumnValuesString)
    LocationMap.value = Shapes::ShapeRef.new(shape: ColumnValuesString)

    MappingEntry.add_member(:source_table, Shapes::ShapeRef.new(shape: TableName, location_name: "SourceTable"))
    MappingEntry.add_member(:source_path, Shapes::ShapeRef.new(shape: SchemaPathString, location_name: "SourcePath"))
    MappingEntry.add_member(:source_type, Shapes::ShapeRef.new(shape: FieldType, location_name: "SourceType"))
    MappingEntry.add_member(:target_table, Shapes::ShapeRef.new(shape: TableName, location_name: "TargetTable"))
    MappingEntry.add_member(:target_path, Shapes::ShapeRef.new(shape: SchemaPathString, location_name: "TargetPath"))
    MappingEntry.add_member(:target_type, Shapes::ShapeRef.new(shape: FieldType, location_name: "TargetType"))
    MappingEntry.struct_class = Types::MappingEntry

    MappingList.member = Shapes::ShapeRef.new(shape: MappingEntry)

    MatchCriteria.member = Shapes::ShapeRef.new(shape: NameString)

    NameStringList.member = Shapes::ShapeRef.new(shape: NameString)

    NotificationProperty.add_member(:notify_delay_after, Shapes::ShapeRef.new(shape: NotifyDelayAfter, location_name: "NotifyDelayAfter"))
    NotificationProperty.struct_class = Types::NotificationProperty

    Order.add_member(:column, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Column"))
    Order.add_member(:sort_order, Shapes::ShapeRef.new(shape: IntegerFlag, required: true, location_name: "SortOrder"))
    Order.struct_class = Types::Order

    OrderList.member = Shapes::ShapeRef.new(shape: Order)

    ParametersMap.key = Shapes::ShapeRef.new(shape: KeyString)
    ParametersMap.value = Shapes::ShapeRef.new(shape: ParametersMapValue)

    Partition.add_member(:values, Shapes::ShapeRef.new(shape: ValueStringList, location_name: "Values"))
    Partition.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DatabaseName"))
    Partition.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, location_name: "TableName"))
    Partition.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Partition.add_member(:last_access_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAccessTime"))
    Partition.add_member(:storage_descriptor, Shapes::ShapeRef.new(shape: StorageDescriptor, location_name: "StorageDescriptor"))
    Partition.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    Partition.add_member(:last_analyzed_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAnalyzedTime"))
    Partition.struct_class = Types::Partition

    PartitionError.add_member(:partition_values, Shapes::ShapeRef.new(shape: ValueStringList, location_name: "PartitionValues"))
    PartitionError.add_member(:error_detail, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "ErrorDetail"))
    PartitionError.struct_class = Types::PartitionError

    PartitionErrors.member = Shapes::ShapeRef.new(shape: PartitionError)

    PartitionInput.add_member(:values, Shapes::ShapeRef.new(shape: ValueStringList, location_name: "Values"))
    PartitionInput.add_member(:last_access_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAccessTime"))
    PartitionInput.add_member(:storage_descriptor, Shapes::ShapeRef.new(shape: StorageDescriptor, location_name: "StorageDescriptor"))
    PartitionInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    PartitionInput.add_member(:last_analyzed_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAnalyzedTime"))
    PartitionInput.struct_class = Types::PartitionInput

    PartitionInputList.member = Shapes::ShapeRef.new(shape: PartitionInput)

    PartitionList.member = Shapes::ShapeRef.new(shape: Partition)

    PartitionValueList.add_member(:values, Shapes::ShapeRef.new(shape: ValueStringList, required: true, location_name: "Values"))
    PartitionValueList.struct_class = Types::PartitionValueList

    PathList.member = Shapes::ShapeRef.new(shape: Path)

    PhysicalConnectionRequirements.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NameString, location_name: "SubnetId"))
    PhysicalConnectionRequirements.add_member(:security_group_id_list, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "SecurityGroupIdList"))
    PhysicalConnectionRequirements.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NameString, location_name: "AvailabilityZone"))
    PhysicalConnectionRequirements.struct_class = Types::PhysicalConnectionRequirements

    Predecessor.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    Predecessor.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    Predecessor.struct_class = Types::Predecessor

    PredecessorList.member = Shapes::ShapeRef.new(shape: Predecessor)

    Predicate.add_member(:logical, Shapes::ShapeRef.new(shape: Logical, location_name: "Logical"))
    Predicate.add_member(:conditions, Shapes::ShapeRef.new(shape: ConditionList, location_name: "Conditions"))
    Predicate.struct_class = Types::Predicate

    PublicKeysList.member = Shapes::ShapeRef.new(shape: GenericString)

    PutDataCatalogEncryptionSettingsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    PutDataCatalogEncryptionSettingsRequest.add_member(:data_catalog_encryption_settings, Shapes::ShapeRef.new(shape: DataCatalogEncryptionSettings, required: true, location_name: "DataCatalogEncryptionSettings"))
    PutDataCatalogEncryptionSettingsRequest.struct_class = Types::PutDataCatalogEncryptionSettingsRequest

    PutDataCatalogEncryptionSettingsResponse.struct_class = Types::PutDataCatalogEncryptionSettingsResponse

    ResetJobBookmarkRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "JobName"))
    ResetJobBookmarkRequest.struct_class = Types::ResetJobBookmarkRequest

    ResetJobBookmarkResponse.add_member(:job_bookmark_entry, Shapes::ShapeRef.new(shape: JobBookmarkEntry, location_name: "JobBookmarkEntry"))
    ResetJobBookmarkResponse.struct_class = Types::ResetJobBookmarkResponse

    ResourceUri.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceUri.add_member(:uri, Shapes::ShapeRef.new(shape: URI, location_name: "Uri"))
    ResourceUri.struct_class = Types::ResourceUri

    ResourceUriList.member = Shapes::ShapeRef.new(shape: ResourceUri)

    S3Encryption.add_member(:s3_encryption_mode, Shapes::ShapeRef.new(shape: S3EncryptionMode, location_name: "S3EncryptionMode"))
    S3Encryption.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    S3Encryption.struct_class = Types::S3Encryption

    S3EncryptionList.member = Shapes::ShapeRef.new(shape: S3Encryption)

    S3Target.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    S3Target.add_member(:exclusions, Shapes::ShapeRef.new(shape: PathList, location_name: "Exclusions"))
    S3Target.struct_class = Types::S3Target

    S3TargetList.member = Shapes::ShapeRef.new(shape: S3Target)

    Schedule.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: CronExpression, location_name: "ScheduleExpression"))
    Schedule.add_member(:state, Shapes::ShapeRef.new(shape: ScheduleState, location_name: "State"))
    Schedule.struct_class = Types::Schedule

    SchemaChangePolicy.add_member(:update_behavior, Shapes::ShapeRef.new(shape: UpdateBehavior, location_name: "UpdateBehavior"))
    SchemaChangePolicy.add_member(:delete_behavior, Shapes::ShapeRef.new(shape: DeleteBehavior, location_name: "DeleteBehavior"))
    SchemaChangePolicy.struct_class = Types::SchemaChangePolicy

    SecurityConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    SecurityConfiguration.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedTimeStamp"))
    SecurityConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    SecurityConfiguration.struct_class = Types::SecurityConfiguration

    SecurityConfigurationList.member = Shapes::ShapeRef.new(shape: SecurityConfiguration)

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: NameString)

    Segment.add_member(:segment_number, Shapes::ShapeRef.new(shape: NonNegativeInteger, required: true, location_name: "SegmentNumber"))
    Segment.add_member(:total_segments, Shapes::ShapeRef.new(shape: TotalSegmentsInteger, required: true, location_name: "TotalSegments"))
    Segment.struct_class = Types::Segment

    SerDeInfo.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    SerDeInfo.add_member(:serialization_library, Shapes::ShapeRef.new(shape: NameString, location_name: "SerializationLibrary"))
    SerDeInfo.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    SerDeInfo.struct_class = Types::SerDeInfo

    SkewedInfo.add_member(:skewed_column_names, Shapes::ShapeRef.new(shape: NameStringList, location_name: "SkewedColumnNames"))
    SkewedInfo.add_member(:skewed_column_values, Shapes::ShapeRef.new(shape: ColumnValueStringList, location_name: "SkewedColumnValues"))
    SkewedInfo.add_member(:skewed_column_value_location_maps, Shapes::ShapeRef.new(shape: LocationMap, location_name: "SkewedColumnValueLocationMaps"))
    SkewedInfo.struct_class = Types::SkewedInfo

    StartCrawlerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    StartCrawlerRequest.struct_class = Types::StartCrawlerRequest

    StartCrawlerResponse.struct_class = Types::StartCrawlerResponse

    StartCrawlerScheduleRequest.add_member(:crawler_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "CrawlerName"))
    StartCrawlerScheduleRequest.struct_class = Types::StartCrawlerScheduleRequest

    StartCrawlerScheduleResponse.struct_class = Types::StartCrawlerScheduleResponse

    StartJobRunRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "JobName"))
    StartJobRunRequest.add_member(:job_run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "JobRunId"))
    StartJobRunRequest.add_member(:arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "Arguments"))
    StartJobRunRequest.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "AllocatedCapacity"))
    StartJobRunRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    StartJobRunRequest.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    StartJobRunRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    StartJobRunRequest.struct_class = Types::StartJobRunRequest

    StartJobRunResponse.add_member(:job_run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "JobRunId"))
    StartJobRunResponse.struct_class = Types::StartJobRunResponse

    StartTriggerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    StartTriggerRequest.struct_class = Types::StartTriggerRequest

    StartTriggerResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    StartTriggerResponse.struct_class = Types::StartTriggerResponse

    StopCrawlerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    StopCrawlerRequest.struct_class = Types::StopCrawlerRequest

    StopCrawlerResponse.struct_class = Types::StopCrawlerResponse

    StopCrawlerScheduleRequest.add_member(:crawler_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "CrawlerName"))
    StopCrawlerScheduleRequest.struct_class = Types::StopCrawlerScheduleRequest

    StopCrawlerScheduleResponse.struct_class = Types::StopCrawlerScheduleResponse

    StopTriggerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    StopTriggerRequest.struct_class = Types::StopTriggerRequest

    StopTriggerResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    StopTriggerResponse.struct_class = Types::StopTriggerResponse

    StorageDescriptor.add_member(:columns, Shapes::ShapeRef.new(shape: ColumnList, location_name: "Columns"))
    StorageDescriptor.add_member(:location, Shapes::ShapeRef.new(shape: LocationString, location_name: "Location"))
    StorageDescriptor.add_member(:input_format, Shapes::ShapeRef.new(shape: FormatString, location_name: "InputFormat"))
    StorageDescriptor.add_member(:output_format, Shapes::ShapeRef.new(shape: FormatString, location_name: "OutputFormat"))
    StorageDescriptor.add_member(:compressed, Shapes::ShapeRef.new(shape: Boolean, location_name: "Compressed"))
    StorageDescriptor.add_member(:number_of_buckets, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfBuckets"))
    StorageDescriptor.add_member(:serde_info, Shapes::ShapeRef.new(shape: SerDeInfo, location_name: "SerdeInfo"))
    StorageDescriptor.add_member(:bucket_columns, Shapes::ShapeRef.new(shape: NameStringList, location_name: "BucketColumns"))
    StorageDescriptor.add_member(:sort_columns, Shapes::ShapeRef.new(shape: OrderList, location_name: "SortColumns"))
    StorageDescriptor.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    StorageDescriptor.add_member(:skewed_info, Shapes::ShapeRef.new(shape: SkewedInfo, location_name: "SkewedInfo"))
    StorageDescriptor.add_member(:stored_as_sub_directories, Shapes::ShapeRef.new(shape: Boolean, location_name: "StoredAsSubDirectories"))
    StorageDescriptor.struct_class = Types::StorageDescriptor

    StringList.member = Shapes::ShapeRef.new(shape: GenericString)

    Table.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    Table.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DatabaseName"))
    Table.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Table.add_member(:owner, Shapes::ShapeRef.new(shape: NameString, location_name: "Owner"))
    Table.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    Table.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    Table.add_member(:last_access_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAccessTime"))
    Table.add_member(:last_analyzed_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAnalyzedTime"))
    Table.add_member(:retention, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Retention"))
    Table.add_member(:storage_descriptor, Shapes::ShapeRef.new(shape: StorageDescriptor, location_name: "StorageDescriptor"))
    Table.add_member(:partition_keys, Shapes::ShapeRef.new(shape: ColumnList, location_name: "PartitionKeys"))
    Table.add_member(:view_original_text, Shapes::ShapeRef.new(shape: ViewTextString, location_name: "ViewOriginalText"))
    Table.add_member(:view_expanded_text, Shapes::ShapeRef.new(shape: ViewTextString, location_name: "ViewExpandedText"))
    Table.add_member(:table_type, Shapes::ShapeRef.new(shape: TableTypeString, location_name: "TableType"))
    Table.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    Table.add_member(:created_by, Shapes::ShapeRef.new(shape: NameString, location_name: "CreatedBy"))
    Table.struct_class = Types::Table

    TableError.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, location_name: "TableName"))
    TableError.add_member(:error_detail, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "ErrorDetail"))
    TableError.struct_class = Types::TableError

    TableErrors.member = Shapes::ShapeRef.new(shape: TableError)

    TableInput.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    TableInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    TableInput.add_member(:owner, Shapes::ShapeRef.new(shape: NameString, location_name: "Owner"))
    TableInput.add_member(:last_access_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAccessTime"))
    TableInput.add_member(:last_analyzed_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAnalyzedTime"))
    TableInput.add_member(:retention, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "Retention"))
    TableInput.add_member(:storage_descriptor, Shapes::ShapeRef.new(shape: StorageDescriptor, location_name: "StorageDescriptor"))
    TableInput.add_member(:partition_keys, Shapes::ShapeRef.new(shape: ColumnList, location_name: "PartitionKeys"))
    TableInput.add_member(:view_original_text, Shapes::ShapeRef.new(shape: ViewTextString, location_name: "ViewOriginalText"))
    TableInput.add_member(:view_expanded_text, Shapes::ShapeRef.new(shape: ViewTextString, location_name: "ViewExpandedText"))
    TableInput.add_member(:table_type, Shapes::ShapeRef.new(shape: TableTypeString, location_name: "TableType"))
    TableInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    TableInput.struct_class = Types::TableInput

    TableList.member = Shapes::ShapeRef.new(shape: Table)

    TableVersion.add_member(:table, Shapes::ShapeRef.new(shape: Table, location_name: "Table"))
    TableVersion.add_member(:version_id, Shapes::ShapeRef.new(shape: VersionString, location_name: "VersionId"))
    TableVersion.struct_class = Types::TableVersion

    TableVersionError.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, location_name: "TableName"))
    TableVersionError.add_member(:version_id, Shapes::ShapeRef.new(shape: VersionString, location_name: "VersionId"))
    TableVersionError.add_member(:error_detail, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "ErrorDetail"))
    TableVersionError.struct_class = Types::TableVersionError

    TableVersionErrors.member = Shapes::ShapeRef.new(shape: TableVersionError)

    Trigger.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    Trigger.add_member(:id, Shapes::ShapeRef.new(shape: IdString, location_name: "Id"))
    Trigger.add_member(:type, Shapes::ShapeRef.new(shape: TriggerType, location_name: "Type"))
    Trigger.add_member(:state, Shapes::ShapeRef.new(shape: TriggerState, location_name: "State"))
    Trigger.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Trigger.add_member(:schedule, Shapes::ShapeRef.new(shape: GenericString, location_name: "Schedule"))
    Trigger.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, location_name: "Actions"))
    Trigger.add_member(:predicate, Shapes::ShapeRef.new(shape: Predicate, location_name: "Predicate"))
    Trigger.struct_class = Types::Trigger

    TriggerList.member = Shapes::ShapeRef.new(shape: Trigger)

    TriggerUpdate.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    TriggerUpdate.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    TriggerUpdate.add_member(:schedule, Shapes::ShapeRef.new(shape: GenericString, location_name: "Schedule"))
    TriggerUpdate.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, location_name: "Actions"))
    TriggerUpdate.add_member(:predicate, Shapes::ShapeRef.new(shape: Predicate, location_name: "Predicate"))
    TriggerUpdate.struct_class = Types::TriggerUpdate

    UpdateClassifierRequest.add_member(:grok_classifier, Shapes::ShapeRef.new(shape: UpdateGrokClassifierRequest, location_name: "GrokClassifier"))
    UpdateClassifierRequest.add_member(:xml_classifier, Shapes::ShapeRef.new(shape: UpdateXMLClassifierRequest, location_name: "XMLClassifier"))
    UpdateClassifierRequest.add_member(:json_classifier, Shapes::ShapeRef.new(shape: UpdateJsonClassifierRequest, location_name: "JsonClassifier"))
    UpdateClassifierRequest.struct_class = Types::UpdateClassifierRequest

    UpdateClassifierResponse.struct_class = Types::UpdateClassifierResponse

    UpdateConnectionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateConnectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateConnectionRequest.add_member(:connection_input, Shapes::ShapeRef.new(shape: ConnectionInput, required: true, location_name: "ConnectionInput"))
    UpdateConnectionRequest.struct_class = Types::UpdateConnectionRequest

    UpdateConnectionResponse.struct_class = Types::UpdateConnectionResponse

    UpdateCrawlerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateCrawlerRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    UpdateCrawlerRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "DatabaseName"))
    UpdateCrawlerRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionStringRemovable, location_name: "Description"))
    UpdateCrawlerRequest.add_member(:targets, Shapes::ShapeRef.new(shape: CrawlerTargets, location_name: "Targets"))
    UpdateCrawlerRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: CronExpression, location_name: "Schedule"))
    UpdateCrawlerRequest.add_member(:classifiers, Shapes::ShapeRef.new(shape: ClassifierNameList, location_name: "Classifiers"))
    UpdateCrawlerRequest.add_member(:table_prefix, Shapes::ShapeRef.new(shape: TablePrefix, location_name: "TablePrefix"))
    UpdateCrawlerRequest.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: SchemaChangePolicy, location_name: "SchemaChangePolicy"))
    UpdateCrawlerRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: CrawlerConfiguration, location_name: "Configuration"))
    UpdateCrawlerRequest.add_member(:crawler_security_configuration, Shapes::ShapeRef.new(shape: CrawlerSecurityConfiguration, location_name: "CrawlerSecurityConfiguration"))
    UpdateCrawlerRequest.struct_class = Types::UpdateCrawlerRequest

    UpdateCrawlerResponse.struct_class = Types::UpdateCrawlerResponse

    UpdateCrawlerScheduleRequest.add_member(:crawler_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "CrawlerName"))
    UpdateCrawlerScheduleRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: CronExpression, location_name: "Schedule"))
    UpdateCrawlerScheduleRequest.struct_class = Types::UpdateCrawlerScheduleRequest

    UpdateCrawlerScheduleResponse.struct_class = Types::UpdateCrawlerScheduleResponse

    UpdateDatabaseRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateDatabaseRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateDatabaseRequest.add_member(:database_input, Shapes::ShapeRef.new(shape: DatabaseInput, required: true, location_name: "DatabaseInput"))
    UpdateDatabaseRequest.struct_class = Types::UpdateDatabaseRequest

    UpdateDatabaseResponse.struct_class = Types::UpdateDatabaseResponse

    UpdateDevEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointName"))
    UpdateDevEndpointRequest.add_member(:public_key, Shapes::ShapeRef.new(shape: GenericString, location_name: "PublicKey"))
    UpdateDevEndpointRequest.add_member(:add_public_keys, Shapes::ShapeRef.new(shape: PublicKeysList, location_name: "AddPublicKeys"))
    UpdateDevEndpointRequest.add_member(:delete_public_keys, Shapes::ShapeRef.new(shape: PublicKeysList, location_name: "DeletePublicKeys"))
    UpdateDevEndpointRequest.add_member(:custom_libraries, Shapes::ShapeRef.new(shape: DevEndpointCustomLibraries, location_name: "CustomLibraries"))
    UpdateDevEndpointRequest.add_member(:update_etl_libraries, Shapes::ShapeRef.new(shape: BooleanValue, location_name: "UpdateEtlLibraries"))
    UpdateDevEndpointRequest.struct_class = Types::UpdateDevEndpointRequest

    UpdateDevEndpointResponse.struct_class = Types::UpdateDevEndpointResponse

    UpdateGrokClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateGrokClassifierRequest.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, location_name: "Classification"))
    UpdateGrokClassifierRequest.add_member(:grok_pattern, Shapes::ShapeRef.new(shape: GrokPattern, location_name: "GrokPattern"))
    UpdateGrokClassifierRequest.add_member(:custom_patterns, Shapes::ShapeRef.new(shape: CustomPatterns, location_name: "CustomPatterns"))
    UpdateGrokClassifierRequest.struct_class = Types::UpdateGrokClassifierRequest

    UpdateJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "JobName"))
    UpdateJobRequest.add_member(:job_update, Shapes::ShapeRef.new(shape: JobUpdate, required: true, location_name: "JobUpdate"))
    UpdateJobRequest.struct_class = Types::UpdateJobRequest

    UpdateJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    UpdateJobResponse.struct_class = Types::UpdateJobResponse

    UpdateJsonClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateJsonClassifierRequest.add_member(:json_path, Shapes::ShapeRef.new(shape: JsonPath, location_name: "JsonPath"))
    UpdateJsonClassifierRequest.struct_class = Types::UpdateJsonClassifierRequest

    UpdatePartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdatePartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdatePartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    UpdatePartitionRequest.add_member(:partition_value_list, Shapes::ShapeRef.new(shape: BoundedPartitionValueList, required: true, location_name: "PartitionValueList"))
    UpdatePartitionRequest.add_member(:partition_input, Shapes::ShapeRef.new(shape: PartitionInput, required: true, location_name: "PartitionInput"))
    UpdatePartitionRequest.struct_class = Types::UpdatePartitionRequest

    UpdatePartitionResponse.struct_class = Types::UpdatePartitionResponse

    UpdateTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdateTableRequest.add_member(:table_input, Shapes::ShapeRef.new(shape: TableInput, required: true, location_name: "TableInput"))
    UpdateTableRequest.add_member(:skip_archive, Shapes::ShapeRef.new(shape: BooleanNullable, location_name: "SkipArchive"))
    UpdateTableRequest.struct_class = Types::UpdateTableRequest

    UpdateTableResponse.struct_class = Types::UpdateTableResponse

    UpdateTriggerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateTriggerRequest.add_member(:trigger_update, Shapes::ShapeRef.new(shape: TriggerUpdate, required: true, location_name: "TriggerUpdate"))
    UpdateTriggerRequest.struct_class = Types::UpdateTriggerRequest

    UpdateTriggerResponse.add_member(:trigger, Shapes::ShapeRef.new(shape: Trigger, location_name: "Trigger"))
    UpdateTriggerResponse.struct_class = Types::UpdateTriggerResponse

    UpdateUserDefinedFunctionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateUserDefinedFunctionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdateUserDefinedFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "FunctionName"))
    UpdateUserDefinedFunctionRequest.add_member(:function_input, Shapes::ShapeRef.new(shape: UserDefinedFunctionInput, required: true, location_name: "FunctionInput"))
    UpdateUserDefinedFunctionRequest.struct_class = Types::UpdateUserDefinedFunctionRequest

    UpdateUserDefinedFunctionResponse.struct_class = Types::UpdateUserDefinedFunctionResponse

    UpdateXMLClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateXMLClassifierRequest.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, location_name: "Classification"))
    UpdateXMLClassifierRequest.add_member(:row_tag, Shapes::ShapeRef.new(shape: RowTag, location_name: "RowTag"))
    UpdateXMLClassifierRequest.struct_class = Types::UpdateXMLClassifierRequest

    UserDefinedFunction.add_member(:function_name, Shapes::ShapeRef.new(shape: NameString, location_name: "FunctionName"))
    UserDefinedFunction.add_member(:class_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ClassName"))
    UserDefinedFunction.add_member(:owner_name, Shapes::ShapeRef.new(shape: NameString, location_name: "OwnerName"))
    UserDefinedFunction.add_member(:owner_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "OwnerType"))
    UserDefinedFunction.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    UserDefinedFunction.add_member(:resource_uris, Shapes::ShapeRef.new(shape: ResourceUriList, location_name: "ResourceUris"))
    UserDefinedFunction.struct_class = Types::UserDefinedFunction

    UserDefinedFunctionInput.add_member(:function_name, Shapes::ShapeRef.new(shape: NameString, location_name: "FunctionName"))
    UserDefinedFunctionInput.add_member(:class_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ClassName"))
    UserDefinedFunctionInput.add_member(:owner_name, Shapes::ShapeRef.new(shape: NameString, location_name: "OwnerName"))
    UserDefinedFunctionInput.add_member(:owner_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "OwnerType"))
    UserDefinedFunctionInput.add_member(:resource_uris, Shapes::ShapeRef.new(shape: ResourceUriList, location_name: "ResourceUris"))
    UserDefinedFunctionInput.struct_class = Types::UserDefinedFunctionInput

    UserDefinedFunctionList.member = Shapes::ShapeRef.new(shape: UserDefinedFunction)

    ValueStringList.member = Shapes::ShapeRef.new(shape: ValueString)

    XMLClassifier.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    XMLClassifier.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, required: true, location_name: "Classification"))
    XMLClassifier.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    XMLClassifier.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    XMLClassifier.add_member(:version, Shapes::ShapeRef.new(shape: VersionId, location_name: "Version"))
    XMLClassifier.add_member(:row_tag, Shapes::ShapeRef.new(shape: RowTag, location_name: "RowTag"))
    XMLClassifier.struct_class = Types::XMLClassifier


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-03-31"

      api.metadata = {
        "apiVersion" => "2017-03-31",
        "endpointPrefix" => "glue",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Glue",
        "serviceId" => "Glue",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSGlue",
        "uid" => "glue-2017-03-31",
      }

      api.add_operation(:batch_create_partition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreatePartition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchCreatePartitionRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreatePartitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:batch_delete_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:batch_delete_partition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeletePartition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeletePartitionRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeletePartitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:batch_delete_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteTableRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:batch_delete_table_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteTableVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteTableVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteTableVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:batch_get_partition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetPartition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetPartitionRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetPartitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:batch_stop_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchStopJobRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchStopJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchStopJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:create_classifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateClassifier"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClassifierRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClassifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:create_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:create_crawler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCrawler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCrawlerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCrawlerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
      end)

      api.add_operation(:create_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatabaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:create_dev_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDevEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDevEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDevEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
      end)

      api.add_operation(:create_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_partition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePartition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePartitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePartitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:create_script, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScript"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateScriptRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateScriptResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:create_security_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSecurityConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSecurityConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSecurityConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
      end)

      api.add_operation(:create_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTableRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:create_trigger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrigger"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTriggerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTriggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_user_defined_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserDefinedFunction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserDefinedFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserDefinedFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:delete_classifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteClassifier"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClassifierRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClassifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:delete_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:delete_crawler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCrawler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCrawlerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCrawlerResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CrawlerRunningException)
        o.errors << Shapes::ShapeRef.new(shape: SchedulerTransitioningException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:delete_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatabaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:delete_dev_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDevEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDevEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDevEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:delete_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:delete_partition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePartition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePartitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePartitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:delete_security_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSecurityConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSecurityConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSecurityConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:delete_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:delete_table_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTableVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTableVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:delete_trigger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrigger"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTriggerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTriggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_user_defined_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserDefinedFunction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserDefinedFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserDefinedFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_catalog_import_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCatalogImportStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCatalogImportStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCatalogImportStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_classifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetClassifier"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetClassifierRequest)
        o.output = Shapes::ShapeRef.new(shape: GetClassifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_classifiers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetClassifiers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetClassifiersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetClassifiersResponse)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:get_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_crawler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCrawler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCrawlerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCrawlerResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_crawler_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCrawlerMetrics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCrawlerMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCrawlerMetricsResponse)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_crawlers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCrawlers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCrawlersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCrawlersResponse)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatabaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:get_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatabases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDatabasesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatabasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_dataflow_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataflowGraph"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataflowGraphRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataflowGraphResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_dev_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDevEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDevEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_dev_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDevEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDevEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_job_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetJobRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMapping"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMappingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:get_partition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPartition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPartitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPartitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:get_partitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPartitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPartitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPartitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_security_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSecurityConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSecurityConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSecurityConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_security_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSecurityConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSecurityConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSecurityConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTableRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:get_table_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTableVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:get_table_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTableVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTables"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTablesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTablesResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_trigger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrigger"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTriggerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTriggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_triggers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTriggers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTriggersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTriggersResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
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

      api.add_operation(:get_user_defined_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserDefinedFunction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUserDefinedFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserDefinedFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:get_user_defined_functions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserDefinedFunctions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUserDefinedFunctionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserDefinedFunctionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:import_catalog_to_glue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportCatalogToGlue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportCatalogToGlueRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportCatalogToGlueResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:put_data_catalog_encryption_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDataCatalogEncryptionSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDataCatalogEncryptionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDataCatalogEncryptionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:reset_job_bookmark, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetJobBookmark"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetJobBookmarkRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetJobBookmarkResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:start_crawler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCrawler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartCrawlerRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCrawlerResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CrawlerRunningException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:start_crawler_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCrawlerSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartCrawlerScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCrawlerScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: SchedulerRunningException)
        o.errors << Shapes::ShapeRef.new(shape: SchedulerTransitioningException)
        o.errors << Shapes::ShapeRef.new(shape: NoScheduleException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:start_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartJobRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentRunsExceededException)
      end)

      api.add_operation(:start_trigger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTrigger"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTriggerRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTriggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentRunsExceededException)
      end)

      api.add_operation(:stop_crawler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopCrawler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopCrawlerRequest)
        o.output = Shapes::ShapeRef.new(shape: StopCrawlerResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CrawlerNotRunningException)
        o.errors << Shapes::ShapeRef.new(shape: CrawlerStoppingException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:stop_crawler_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopCrawlerSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopCrawlerScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: StopCrawlerScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: SchedulerNotRunningException)
        o.errors << Shapes::ShapeRef.new(shape: SchedulerTransitioningException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:stop_trigger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTrigger"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTriggerRequest)
        o.output = Shapes::ShapeRef.new(shape: StopTriggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_classifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateClassifier"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateClassifierRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClassifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: VersionMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:update_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:update_crawler, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCrawler"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCrawlerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCrawlerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: VersionMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CrawlerRunningException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:update_crawler_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCrawlerSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCrawlerScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCrawlerScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: VersionMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: SchedulerTransitioningException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:update_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatabaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:update_dev_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDevEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDevEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDevEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_partition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePartition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePartitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePartitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:update_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTableRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:update_trigger, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrigger"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTriggerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTriggerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_user_defined_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserDefinedFunction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserDefinedFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserDefinedFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)
    end

  end
end
