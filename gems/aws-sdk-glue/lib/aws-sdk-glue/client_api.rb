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
    BatchGetCrawlersRequest = Shapes::StructureShape.new(name: 'BatchGetCrawlersRequest')
    BatchGetCrawlersResponse = Shapes::StructureShape.new(name: 'BatchGetCrawlersResponse')
    BatchGetDevEndpointsRequest = Shapes::StructureShape.new(name: 'BatchGetDevEndpointsRequest')
    BatchGetDevEndpointsResponse = Shapes::StructureShape.new(name: 'BatchGetDevEndpointsResponse')
    BatchGetJobsRequest = Shapes::StructureShape.new(name: 'BatchGetJobsRequest')
    BatchGetJobsResponse = Shapes::StructureShape.new(name: 'BatchGetJobsResponse')
    BatchGetPartitionRequest = Shapes::StructureShape.new(name: 'BatchGetPartitionRequest')
    BatchGetPartitionResponse = Shapes::StructureShape.new(name: 'BatchGetPartitionResponse')
    BatchGetPartitionValueList = Shapes::ListShape.new(name: 'BatchGetPartitionValueList')
    BatchGetTriggersRequest = Shapes::StructureShape.new(name: 'BatchGetTriggersRequest')
    BatchGetTriggersResponse = Shapes::StructureShape.new(name: 'BatchGetTriggersResponse')
    BatchGetWorkflowsRequest = Shapes::StructureShape.new(name: 'BatchGetWorkflowsRequest')
    BatchGetWorkflowsResponse = Shapes::StructureShape.new(name: 'BatchGetWorkflowsResponse')
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
    CancelMLTaskRunRequest = Shapes::StructureShape.new(name: 'CancelMLTaskRunRequest')
    CancelMLTaskRunResponse = Shapes::StructureShape.new(name: 'CancelMLTaskRunResponse')
    CatalogEncryptionMode = Shapes::StringShape.new(name: 'CatalogEncryptionMode')
    CatalogEntries = Shapes::ListShape.new(name: 'CatalogEntries')
    CatalogEntry = Shapes::StructureShape.new(name: 'CatalogEntry')
    CatalogIdString = Shapes::StringShape.new(name: 'CatalogIdString')
    CatalogImportStatus = Shapes::StructureShape.new(name: 'CatalogImportStatus')
    CatalogTablesList = Shapes::ListShape.new(name: 'CatalogTablesList')
    CatalogTarget = Shapes::StructureShape.new(name: 'CatalogTarget')
    CatalogTargetList = Shapes::ListShape.new(name: 'CatalogTargetList')
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
    ColumnNameString = Shapes::StringShape.new(name: 'ColumnNameString')
    ColumnTypeString = Shapes::StringShape.new(name: 'ColumnTypeString')
    ColumnValueStringList = Shapes::ListShape.new(name: 'ColumnValueStringList')
    ColumnValuesString = Shapes::StringShape.new(name: 'ColumnValuesString')
    CommentString = Shapes::StringShape.new(name: 'CommentString')
    Comparator = Shapes::StringShape.new(name: 'Comparator')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConcurrentRunsExceededException = Shapes::StructureShape.new(name: 'ConcurrentRunsExceededException')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConditionCheckFailureException = Shapes::StructureShape.new(name: 'ConditionCheckFailureException')
    ConditionList = Shapes::ListShape.new(name: 'ConditionList')
    ConfusionMatrix = Shapes::StructureShape.new(name: 'ConfusionMatrix')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionInput = Shapes::StructureShape.new(name: 'ConnectionInput')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    ConnectionName = Shapes::StringShape.new(name: 'ConnectionName')
    ConnectionPasswordEncryption = Shapes::StructureShape.new(name: 'ConnectionPasswordEncryption')
    ConnectionProperties = Shapes::MapShape.new(name: 'ConnectionProperties')
    ConnectionPropertyKey = Shapes::StringShape.new(name: 'ConnectionPropertyKey')
    ConnectionType = Shapes::StringShape.new(name: 'ConnectionType')
    ConnectionsList = Shapes::StructureShape.new(name: 'ConnectionsList')
    Crawl = Shapes::StructureShape.new(name: 'Crawl')
    CrawlList = Shapes::ListShape.new(name: 'CrawlList')
    CrawlState = Shapes::StringShape.new(name: 'CrawlState')
    Crawler = Shapes::StructureShape.new(name: 'Crawler')
    CrawlerConfiguration = Shapes::StringShape.new(name: 'CrawlerConfiguration')
    CrawlerList = Shapes::ListShape.new(name: 'CrawlerList')
    CrawlerMetrics = Shapes::StructureShape.new(name: 'CrawlerMetrics')
    CrawlerMetricsList = Shapes::ListShape.new(name: 'CrawlerMetricsList')
    CrawlerNameList = Shapes::ListShape.new(name: 'CrawlerNameList')
    CrawlerNodeDetails = Shapes::StructureShape.new(name: 'CrawlerNodeDetails')
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
    CreateCsvClassifierRequest = Shapes::StructureShape.new(name: 'CreateCsvClassifierRequest')
    CreateDatabaseRequest = Shapes::StructureShape.new(name: 'CreateDatabaseRequest')
    CreateDatabaseResponse = Shapes::StructureShape.new(name: 'CreateDatabaseResponse')
    CreateDevEndpointRequest = Shapes::StructureShape.new(name: 'CreateDevEndpointRequest')
    CreateDevEndpointResponse = Shapes::StructureShape.new(name: 'CreateDevEndpointResponse')
    CreateGrokClassifierRequest = Shapes::StructureShape.new(name: 'CreateGrokClassifierRequest')
    CreateJobRequest = Shapes::StructureShape.new(name: 'CreateJobRequest')
    CreateJobResponse = Shapes::StructureShape.new(name: 'CreateJobResponse')
    CreateJsonClassifierRequest = Shapes::StructureShape.new(name: 'CreateJsonClassifierRequest')
    CreateMLTransformRequest = Shapes::StructureShape.new(name: 'CreateMLTransformRequest')
    CreateMLTransformResponse = Shapes::StructureShape.new(name: 'CreateMLTransformResponse')
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
    CreateWorkflowRequest = Shapes::StructureShape.new(name: 'CreateWorkflowRequest')
    CreateWorkflowResponse = Shapes::StructureShape.new(name: 'CreateWorkflowResponse')
    CreateXMLClassifierRequest = Shapes::StructureShape.new(name: 'CreateXMLClassifierRequest')
    CronExpression = Shapes::StringShape.new(name: 'CronExpression')
    CsvClassifier = Shapes::StructureShape.new(name: 'CsvClassifier')
    CsvColumnDelimiter = Shapes::StringShape.new(name: 'CsvColumnDelimiter')
    CsvHeader = Shapes::ListShape.new(name: 'CsvHeader')
    CsvHeaderOption = Shapes::StringShape.new(name: 'CsvHeaderOption')
    CsvQuoteSymbol = Shapes::StringShape.new(name: 'CsvQuoteSymbol')
    CustomPatterns = Shapes::StringShape.new(name: 'CustomPatterns')
    DagEdges = Shapes::ListShape.new(name: 'DagEdges')
    DagNodes = Shapes::ListShape.new(name: 'DagNodes')
    DataCatalogEncryptionSettings = Shapes::StructureShape.new(name: 'DataCatalogEncryptionSettings')
    DataLakePrincipal = Shapes::StructureShape.new(name: 'DataLakePrincipal')
    DataLakePrincipalString = Shapes::StringShape.new(name: 'DataLakePrincipalString')
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
    DeleteMLTransformRequest = Shapes::StructureShape.new(name: 'DeleteMLTransformRequest')
    DeleteMLTransformResponse = Shapes::StructureShape.new(name: 'DeleteMLTransformResponse')
    DeletePartitionRequest = Shapes::StructureShape.new(name: 'DeletePartitionRequest')
    DeletePartitionResponse = Shapes::StructureShape.new(name: 'DeletePartitionResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
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
    DeleteWorkflowRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowRequest')
    DeleteWorkflowResponse = Shapes::StructureShape.new(name: 'DeleteWorkflowResponse')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    DescriptionStringRemovable = Shapes::StringShape.new(name: 'DescriptionStringRemovable')
    DevEndpoint = Shapes::StructureShape.new(name: 'DevEndpoint')
    DevEndpointCustomLibraries = Shapes::StructureShape.new(name: 'DevEndpointCustomLibraries')
    DevEndpointList = Shapes::ListShape.new(name: 'DevEndpointList')
    DevEndpointNameList = Shapes::ListShape.new(name: 'DevEndpointNameList')
    DevEndpointNames = Shapes::ListShape.new(name: 'DevEndpointNames')
    DynamoDBTarget = Shapes::StructureShape.new(name: 'DynamoDBTarget')
    DynamoDBTargetList = Shapes::ListShape.new(name: 'DynamoDBTargetList')
    Edge = Shapes::StructureShape.new(name: 'Edge')
    EdgeList = Shapes::ListShape.new(name: 'EdgeList')
    EncryptionAtRest = Shapes::StructureShape.new(name: 'EncryptionAtRest')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EntityNotFoundException = Shapes::StructureShape.new(name: 'EntityNotFoundException')
    ErrorByName = Shapes::MapShape.new(name: 'ErrorByName')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorString = Shapes::StringShape.new(name: 'ErrorString')
    EvaluationMetrics = Shapes::StructureShape.new(name: 'EvaluationMetrics')
    ExecutionProperty = Shapes::StructureShape.new(name: 'ExecutionProperty')
    ExecutionTime = Shapes::IntegerShape.new(name: 'ExecutionTime')
    ExistCondition = Shapes::StringShape.new(name: 'ExistCondition')
    ExportLabelsTaskRunProperties = Shapes::StructureShape.new(name: 'ExportLabelsTaskRunProperties')
    FieldType = Shapes::StringShape.new(name: 'FieldType')
    FilterString = Shapes::StringShape.new(name: 'FilterString')
    FindMatchesMetrics = Shapes::StructureShape.new(name: 'FindMatchesMetrics')
    FindMatchesParameters = Shapes::StructureShape.new(name: 'FindMatchesParameters')
    FindMatchesTaskRunProperties = Shapes::StructureShape.new(name: 'FindMatchesTaskRunProperties')
    FormatString = Shapes::StringShape.new(name: 'FormatString')
    GenericBoundedDouble = Shapes::FloatShape.new(name: 'GenericBoundedDouble')
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
    GetDataCatalogEncryptionSettingsRequest = Shapes::StructureShape.new(name: 'GetDataCatalogEncryptionSettingsRequest')
    GetDataCatalogEncryptionSettingsResponse = Shapes::StructureShape.new(name: 'GetDataCatalogEncryptionSettingsResponse')
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
    GetJobBookmarkRequest = Shapes::StructureShape.new(name: 'GetJobBookmarkRequest')
    GetJobBookmarkResponse = Shapes::StructureShape.new(name: 'GetJobBookmarkResponse')
    GetJobRequest = Shapes::StructureShape.new(name: 'GetJobRequest')
    GetJobResponse = Shapes::StructureShape.new(name: 'GetJobResponse')
    GetJobRunRequest = Shapes::StructureShape.new(name: 'GetJobRunRequest')
    GetJobRunResponse = Shapes::StructureShape.new(name: 'GetJobRunResponse')
    GetJobRunsRequest = Shapes::StructureShape.new(name: 'GetJobRunsRequest')
    GetJobRunsResponse = Shapes::StructureShape.new(name: 'GetJobRunsResponse')
    GetJobsRequest = Shapes::StructureShape.new(name: 'GetJobsRequest')
    GetJobsResponse = Shapes::StructureShape.new(name: 'GetJobsResponse')
    GetMLTaskRunRequest = Shapes::StructureShape.new(name: 'GetMLTaskRunRequest')
    GetMLTaskRunResponse = Shapes::StructureShape.new(name: 'GetMLTaskRunResponse')
    GetMLTaskRunsRequest = Shapes::StructureShape.new(name: 'GetMLTaskRunsRequest')
    GetMLTaskRunsResponse = Shapes::StructureShape.new(name: 'GetMLTaskRunsResponse')
    GetMLTransformRequest = Shapes::StructureShape.new(name: 'GetMLTransformRequest')
    GetMLTransformResponse = Shapes::StructureShape.new(name: 'GetMLTransformResponse')
    GetMLTransformsRequest = Shapes::StructureShape.new(name: 'GetMLTransformsRequest')
    GetMLTransformsResponse = Shapes::StructureShape.new(name: 'GetMLTransformsResponse')
    GetMappingRequest = Shapes::StructureShape.new(name: 'GetMappingRequest')
    GetMappingResponse = Shapes::StructureShape.new(name: 'GetMappingResponse')
    GetPartitionRequest = Shapes::StructureShape.new(name: 'GetPartitionRequest')
    GetPartitionResponse = Shapes::StructureShape.new(name: 'GetPartitionResponse')
    GetPartitionsRequest = Shapes::StructureShape.new(name: 'GetPartitionsRequest')
    GetPartitionsResponse = Shapes::StructureShape.new(name: 'GetPartitionsResponse')
    GetPlanRequest = Shapes::StructureShape.new(name: 'GetPlanRequest')
    GetPlanResponse = Shapes::StructureShape.new(name: 'GetPlanResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
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
    GetTagsRequest = Shapes::StructureShape.new(name: 'GetTagsRequest')
    GetTagsResponse = Shapes::StructureShape.new(name: 'GetTagsResponse')
    GetTriggerRequest = Shapes::StructureShape.new(name: 'GetTriggerRequest')
    GetTriggerResponse = Shapes::StructureShape.new(name: 'GetTriggerResponse')
    GetTriggersRequest = Shapes::StructureShape.new(name: 'GetTriggersRequest')
    GetTriggersResponse = Shapes::StructureShape.new(name: 'GetTriggersResponse')
    GetUserDefinedFunctionRequest = Shapes::StructureShape.new(name: 'GetUserDefinedFunctionRequest')
    GetUserDefinedFunctionResponse = Shapes::StructureShape.new(name: 'GetUserDefinedFunctionResponse')
    GetUserDefinedFunctionsRequest = Shapes::StructureShape.new(name: 'GetUserDefinedFunctionsRequest')
    GetUserDefinedFunctionsResponse = Shapes::StructureShape.new(name: 'GetUserDefinedFunctionsResponse')
    GetWorkflowRequest = Shapes::StructureShape.new(name: 'GetWorkflowRequest')
    GetWorkflowResponse = Shapes::StructureShape.new(name: 'GetWorkflowResponse')
    GetWorkflowRunPropertiesRequest = Shapes::StructureShape.new(name: 'GetWorkflowRunPropertiesRequest')
    GetWorkflowRunPropertiesResponse = Shapes::StructureShape.new(name: 'GetWorkflowRunPropertiesResponse')
    GetWorkflowRunRequest = Shapes::StructureShape.new(name: 'GetWorkflowRunRequest')
    GetWorkflowRunResponse = Shapes::StructureShape.new(name: 'GetWorkflowRunResponse')
    GetWorkflowRunsRequest = Shapes::StructureShape.new(name: 'GetWorkflowRunsRequest')
    GetWorkflowRunsResponse = Shapes::StructureShape.new(name: 'GetWorkflowRunsResponse')
    GlueEncryptionException = Shapes::StructureShape.new(name: 'GlueEncryptionException')
    GlueResourceArn = Shapes::StringShape.new(name: 'GlueResourceArn')
    GlueTable = Shapes::StructureShape.new(name: 'GlueTable')
    GlueTables = Shapes::ListShape.new(name: 'GlueTables')
    GlueVersionString = Shapes::StringShape.new(name: 'GlueVersionString')
    GrokClassifier = Shapes::StructureShape.new(name: 'GrokClassifier')
    GrokPattern = Shapes::StringShape.new(name: 'GrokPattern')
    HashString = Shapes::StringShape.new(name: 'HashString')
    IdString = Shapes::StringShape.new(name: 'IdString')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    IllegalWorkflowStateException = Shapes::StructureShape.new(name: 'IllegalWorkflowStateException')
    ImportCatalogToGlueRequest = Shapes::StructureShape.new(name: 'ImportCatalogToGlueRequest')
    ImportCatalogToGlueResponse = Shapes::StructureShape.new(name: 'ImportCatalogToGlueResponse')
    ImportLabelsTaskRunProperties = Shapes::StructureShape.new(name: 'ImportLabelsTaskRunProperties')
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
    JobNameList = Shapes::ListShape.new(name: 'JobNameList')
    JobNodeDetails = Shapes::StructureShape.new(name: 'JobNodeDetails')
    JobRun = Shapes::StructureShape.new(name: 'JobRun')
    JobRunList = Shapes::ListShape.new(name: 'JobRunList')
    JobRunState = Shapes::StringShape.new(name: 'JobRunState')
    JobUpdate = Shapes::StructureShape.new(name: 'JobUpdate')
    JsonClassifier = Shapes::StructureShape.new(name: 'JsonClassifier')
    JsonPath = Shapes::StringShape.new(name: 'JsonPath')
    JsonValue = Shapes::StringShape.new(name: 'JsonValue')
    KeyString = Shapes::StringShape.new(name: 'KeyString')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LabelCount = Shapes::IntegerShape.new(name: 'LabelCount')
    LabelingSetGenerationTaskRunProperties = Shapes::StructureShape.new(name: 'LabelingSetGenerationTaskRunProperties')
    Language = Shapes::StringShape.new(name: 'Language')
    LastCrawlInfo = Shapes::StructureShape.new(name: 'LastCrawlInfo')
    LastCrawlStatus = Shapes::StringShape.new(name: 'LastCrawlStatus')
    ListCrawlersRequest = Shapes::StructureShape.new(name: 'ListCrawlersRequest')
    ListCrawlersResponse = Shapes::StructureShape.new(name: 'ListCrawlersResponse')
    ListDevEndpointsRequest = Shapes::StructureShape.new(name: 'ListDevEndpointsRequest')
    ListDevEndpointsResponse = Shapes::StructureShape.new(name: 'ListDevEndpointsResponse')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResponse = Shapes::StructureShape.new(name: 'ListJobsResponse')
    ListMLTransformsRequest = Shapes::StructureShape.new(name: 'ListMLTransformsRequest')
    ListMLTransformsResponse = Shapes::StructureShape.new(name: 'ListMLTransformsResponse')
    ListTriggersRequest = Shapes::StructureShape.new(name: 'ListTriggersRequest')
    ListTriggersResponse = Shapes::StructureShape.new(name: 'ListTriggersResponse')
    ListWorkflowsRequest = Shapes::StructureShape.new(name: 'ListWorkflowsRequest')
    ListWorkflowsResponse = Shapes::StructureShape.new(name: 'ListWorkflowsResponse')
    Location = Shapes::StructureShape.new(name: 'Location')
    LocationMap = Shapes::MapShape.new(name: 'LocationMap')
    LocationString = Shapes::StringShape.new(name: 'LocationString')
    LogGroup = Shapes::StringShape.new(name: 'LogGroup')
    LogStream = Shapes::StringShape.new(name: 'LogStream')
    Logical = Shapes::StringShape.new(name: 'Logical')
    LogicalOperator = Shapes::StringShape.new(name: 'LogicalOperator')
    MLTransform = Shapes::StructureShape.new(name: 'MLTransform')
    MLTransformNotReadyException = Shapes::StructureShape.new(name: 'MLTransformNotReadyException')
    MapValue = Shapes::MapShape.new(name: 'MapValue')
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
    Node = Shapes::StructureShape.new(name: 'Node')
    NodeList = Shapes::ListShape.new(name: 'NodeList')
    NodeType = Shapes::StringShape.new(name: 'NodeType')
    NonNegativeDouble = Shapes::FloatShape.new(name: 'NonNegativeDouble')
    NonNegativeInteger = Shapes::IntegerShape.new(name: 'NonNegativeInteger')
    NotificationProperty = Shapes::StructureShape.new(name: 'NotificationProperty')
    NotifyDelayAfter = Shapes::IntegerShape.new(name: 'NotifyDelayAfter')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NullableDouble = Shapes::FloatShape.new(name: 'NullableDouble')
    NullableInteger = Shapes::IntegerShape.new(name: 'NullableInteger')
    OperationTimeoutException = Shapes::StructureShape.new(name: 'OperationTimeoutException')
    OrchestrationStringList = Shapes::ListShape.new(name: 'OrchestrationStringList')
    Order = Shapes::StructureShape.new(name: 'Order')
    OrderList = Shapes::ListShape.new(name: 'OrderList')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
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
    Permission = Shapes::StringShape.new(name: 'Permission')
    PermissionList = Shapes::ListShape.new(name: 'PermissionList')
    PhysicalConnectionRequirements = Shapes::StructureShape.new(name: 'PhysicalConnectionRequirements')
    PolicyJsonString = Shapes::StringShape.new(name: 'PolicyJsonString')
    Predecessor = Shapes::StructureShape.new(name: 'Predecessor')
    PredecessorList = Shapes::ListShape.new(name: 'PredecessorList')
    Predicate = Shapes::StructureShape.new(name: 'Predicate')
    PredicateString = Shapes::StringShape.new(name: 'PredicateString')
    PrincipalPermissions = Shapes::StructureShape.new(name: 'PrincipalPermissions')
    PrincipalPermissionsList = Shapes::ListShape.new(name: 'PrincipalPermissionsList')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    PropertyPredicate = Shapes::StructureShape.new(name: 'PropertyPredicate')
    PublicKeysList = Shapes::ListShape.new(name: 'PublicKeysList')
    PutDataCatalogEncryptionSettingsRequest = Shapes::StructureShape.new(name: 'PutDataCatalogEncryptionSettingsRequest')
    PutDataCatalogEncryptionSettingsResponse = Shapes::StructureShape.new(name: 'PutDataCatalogEncryptionSettingsResponse')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    PutWorkflowRunPropertiesRequest = Shapes::StructureShape.new(name: 'PutWorkflowRunPropertiesRequest')
    PutWorkflowRunPropertiesResponse = Shapes::StructureShape.new(name: 'PutWorkflowRunPropertiesResponse')
    PythonScript = Shapes::StringShape.new(name: 'PythonScript')
    PythonVersionString = Shapes::StringShape.new(name: 'PythonVersionString')
    RecordsCount = Shapes::IntegerShape.new(name: 'RecordsCount')
    ReplaceBoolean = Shapes::BooleanShape.new(name: 'ReplaceBoolean')
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
    RunId = Shapes::StringShape.new(name: 'RunId')
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
    SchemaColumn = Shapes::StructureShape.new(name: 'SchemaColumn')
    SchemaPathString = Shapes::StringShape.new(name: 'SchemaPathString')
    ScriptLocationString = Shapes::StringShape.new(name: 'ScriptLocationString')
    SearchPropertyPredicates = Shapes::ListShape.new(name: 'SearchPropertyPredicates')
    SearchTablesRequest = Shapes::StructureShape.new(name: 'SearchTablesRequest')
    SearchTablesResponse = Shapes::StructureShape.new(name: 'SearchTablesResponse')
    SecurityConfiguration = Shapes::StructureShape.new(name: 'SecurityConfiguration')
    SecurityConfigurationList = Shapes::ListShape.new(name: 'SecurityConfigurationList')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    Segment = Shapes::StructureShape.new(name: 'Segment')
    SerDeInfo = Shapes::StructureShape.new(name: 'SerDeInfo')
    SkewedInfo = Shapes::StructureShape.new(name: 'SkewedInfo')
    Sort = Shapes::StringShape.new(name: 'Sort')
    SortCriteria = Shapes::ListShape.new(name: 'SortCriteria')
    SortCriterion = Shapes::StructureShape.new(name: 'SortCriterion')
    SortDirectionType = Shapes::StringShape.new(name: 'SortDirectionType')
    StartCrawlerRequest = Shapes::StructureShape.new(name: 'StartCrawlerRequest')
    StartCrawlerResponse = Shapes::StructureShape.new(name: 'StartCrawlerResponse')
    StartCrawlerScheduleRequest = Shapes::StructureShape.new(name: 'StartCrawlerScheduleRequest')
    StartCrawlerScheduleResponse = Shapes::StructureShape.new(name: 'StartCrawlerScheduleResponse')
    StartExportLabelsTaskRunRequest = Shapes::StructureShape.new(name: 'StartExportLabelsTaskRunRequest')
    StartExportLabelsTaskRunResponse = Shapes::StructureShape.new(name: 'StartExportLabelsTaskRunResponse')
    StartImportLabelsTaskRunRequest = Shapes::StructureShape.new(name: 'StartImportLabelsTaskRunRequest')
    StartImportLabelsTaskRunResponse = Shapes::StructureShape.new(name: 'StartImportLabelsTaskRunResponse')
    StartJobRunRequest = Shapes::StructureShape.new(name: 'StartJobRunRequest')
    StartJobRunResponse = Shapes::StructureShape.new(name: 'StartJobRunResponse')
    StartMLEvaluationTaskRunRequest = Shapes::StructureShape.new(name: 'StartMLEvaluationTaskRunRequest')
    StartMLEvaluationTaskRunResponse = Shapes::StructureShape.new(name: 'StartMLEvaluationTaskRunResponse')
    StartMLLabelingSetGenerationTaskRunRequest = Shapes::StructureShape.new(name: 'StartMLLabelingSetGenerationTaskRunRequest')
    StartMLLabelingSetGenerationTaskRunResponse = Shapes::StructureShape.new(name: 'StartMLLabelingSetGenerationTaskRunResponse')
    StartTriggerRequest = Shapes::StructureShape.new(name: 'StartTriggerRequest')
    StartTriggerResponse = Shapes::StructureShape.new(name: 'StartTriggerResponse')
    StartWorkflowRunRequest = Shapes::StructureShape.new(name: 'StartWorkflowRunRequest')
    StartWorkflowRunResponse = Shapes::StructureShape.new(name: 'StartWorkflowRunResponse')
    StopCrawlerRequest = Shapes::StructureShape.new(name: 'StopCrawlerRequest')
    StopCrawlerResponse = Shapes::StructureShape.new(name: 'StopCrawlerResponse')
    StopCrawlerScheduleRequest = Shapes::StructureShape.new(name: 'StopCrawlerScheduleRequest')
    StopCrawlerScheduleResponse = Shapes::StructureShape.new(name: 'StopCrawlerScheduleResponse')
    StopTriggerRequest = Shapes::StructureShape.new(name: 'StopTriggerRequest')
    StopTriggerResponse = Shapes::StructureShape.new(name: 'StopTriggerResponse')
    StopWorkflowRunRequest = Shapes::StructureShape.new(name: 'StopWorkflowRunRequest')
    StopWorkflowRunResponse = Shapes::StructureShape.new(name: 'StopWorkflowRunResponse')
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
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeysList = Shapes::ListShape.new(name: 'TagKeysList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TaskRun = Shapes::StructureShape.new(name: 'TaskRun')
    TaskRunFilterCriteria = Shapes::StructureShape.new(name: 'TaskRunFilterCriteria')
    TaskRunList = Shapes::ListShape.new(name: 'TaskRunList')
    TaskRunProperties = Shapes::StructureShape.new(name: 'TaskRunProperties')
    TaskRunSortColumnType = Shapes::StringShape.new(name: 'TaskRunSortColumnType')
    TaskRunSortCriteria = Shapes::StructureShape.new(name: 'TaskRunSortCriteria')
    TaskStatusType = Shapes::StringShape.new(name: 'TaskStatusType')
    TaskType = Shapes::StringShape.new(name: 'TaskType')
    Timeout = Shapes::IntegerShape.new(name: 'Timeout')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampValue = Shapes::TimestampShape.new(name: 'TimestampValue')
    Token = Shapes::StringShape.new(name: 'Token')
    TotalSegmentsInteger = Shapes::IntegerShape.new(name: 'TotalSegmentsInteger')
    TransformFilterCriteria = Shapes::StructureShape.new(name: 'TransformFilterCriteria')
    TransformIdList = Shapes::ListShape.new(name: 'TransformIdList')
    TransformList = Shapes::ListShape.new(name: 'TransformList')
    TransformParameters = Shapes::StructureShape.new(name: 'TransformParameters')
    TransformSchema = Shapes::ListShape.new(name: 'TransformSchema')
    TransformSortColumnType = Shapes::StringShape.new(name: 'TransformSortColumnType')
    TransformSortCriteria = Shapes::StructureShape.new(name: 'TransformSortCriteria')
    TransformStatusType = Shapes::StringShape.new(name: 'TransformStatusType')
    TransformType = Shapes::StringShape.new(name: 'TransformType')
    Trigger = Shapes::StructureShape.new(name: 'Trigger')
    TriggerList = Shapes::ListShape.new(name: 'TriggerList')
    TriggerNameList = Shapes::ListShape.new(name: 'TriggerNameList')
    TriggerNodeDetails = Shapes::StructureShape.new(name: 'TriggerNodeDetails')
    TriggerState = Shapes::StringShape.new(name: 'TriggerState')
    TriggerType = Shapes::StringShape.new(name: 'TriggerType')
    TriggerUpdate = Shapes::StructureShape.new(name: 'TriggerUpdate')
    URI = Shapes::StringShape.new(name: 'URI')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateBehavior = Shapes::StringShape.new(name: 'UpdateBehavior')
    UpdateClassifierRequest = Shapes::StructureShape.new(name: 'UpdateClassifierRequest')
    UpdateClassifierResponse = Shapes::StructureShape.new(name: 'UpdateClassifierResponse')
    UpdateConnectionRequest = Shapes::StructureShape.new(name: 'UpdateConnectionRequest')
    UpdateConnectionResponse = Shapes::StructureShape.new(name: 'UpdateConnectionResponse')
    UpdateCrawlerRequest = Shapes::StructureShape.new(name: 'UpdateCrawlerRequest')
    UpdateCrawlerResponse = Shapes::StructureShape.new(name: 'UpdateCrawlerResponse')
    UpdateCrawlerScheduleRequest = Shapes::StructureShape.new(name: 'UpdateCrawlerScheduleRequest')
    UpdateCrawlerScheduleResponse = Shapes::StructureShape.new(name: 'UpdateCrawlerScheduleResponse')
    UpdateCsvClassifierRequest = Shapes::StructureShape.new(name: 'UpdateCsvClassifierRequest')
    UpdateDatabaseRequest = Shapes::StructureShape.new(name: 'UpdateDatabaseRequest')
    UpdateDatabaseResponse = Shapes::StructureShape.new(name: 'UpdateDatabaseResponse')
    UpdateDevEndpointRequest = Shapes::StructureShape.new(name: 'UpdateDevEndpointRequest')
    UpdateDevEndpointResponse = Shapes::StructureShape.new(name: 'UpdateDevEndpointResponse')
    UpdateGrokClassifierRequest = Shapes::StructureShape.new(name: 'UpdateGrokClassifierRequest')
    UpdateJobRequest = Shapes::StructureShape.new(name: 'UpdateJobRequest')
    UpdateJobResponse = Shapes::StructureShape.new(name: 'UpdateJobResponse')
    UpdateJsonClassifierRequest = Shapes::StructureShape.new(name: 'UpdateJsonClassifierRequest')
    UpdateMLTransformRequest = Shapes::StructureShape.new(name: 'UpdateMLTransformRequest')
    UpdateMLTransformResponse = Shapes::StructureShape.new(name: 'UpdateMLTransformResponse')
    UpdatePartitionRequest = Shapes::StructureShape.new(name: 'UpdatePartitionRequest')
    UpdatePartitionResponse = Shapes::StructureShape.new(name: 'UpdatePartitionResponse')
    UpdateTableRequest = Shapes::StructureShape.new(name: 'UpdateTableRequest')
    UpdateTableResponse = Shapes::StructureShape.new(name: 'UpdateTableResponse')
    UpdateTriggerRequest = Shapes::StructureShape.new(name: 'UpdateTriggerRequest')
    UpdateTriggerResponse = Shapes::StructureShape.new(name: 'UpdateTriggerResponse')
    UpdateUserDefinedFunctionRequest = Shapes::StructureShape.new(name: 'UpdateUserDefinedFunctionRequest')
    UpdateUserDefinedFunctionResponse = Shapes::StructureShape.new(name: 'UpdateUserDefinedFunctionResponse')
    UpdateWorkflowRequest = Shapes::StructureShape.new(name: 'UpdateWorkflowRequest')
    UpdateWorkflowResponse = Shapes::StructureShape.new(name: 'UpdateWorkflowResponse')
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
    WorkerType = Shapes::StringShape.new(name: 'WorkerType')
    Workflow = Shapes::StructureShape.new(name: 'Workflow')
    WorkflowGraph = Shapes::StructureShape.new(name: 'WorkflowGraph')
    WorkflowNames = Shapes::ListShape.new(name: 'WorkflowNames')
    WorkflowRun = Shapes::StructureShape.new(name: 'WorkflowRun')
    WorkflowRunProperties = Shapes::MapShape.new(name: 'WorkflowRunProperties')
    WorkflowRunStatistics = Shapes::StructureShape.new(name: 'WorkflowRunStatistics')
    WorkflowRunStatus = Shapes::StringShape.new(name: 'WorkflowRunStatus')
    WorkflowRuns = Shapes::ListShape.new(name: 'WorkflowRuns')
    Workflows = Shapes::ListShape.new(name: 'Workflows')
    XMLClassifier = Shapes::StructureShape.new(name: 'XMLClassifier')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Action.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    Action.add_member(:arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "Arguments"))
    Action.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    Action.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    Action.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    Action.add_member(:crawler_name, Shapes::ShapeRef.new(shape: NameString, location_name: "CrawlerName"))
    Action.struct_class = Types::Action

    ActionList.member = Shapes::ShapeRef.new(shape: Action)

    AlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    AlreadyExistsException.struct_class = Types::AlreadyExistsException

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

    BatchGetCrawlersRequest.add_member(:crawler_names, Shapes::ShapeRef.new(shape: CrawlerNameList, required: true, location_name: "CrawlerNames"))
    BatchGetCrawlersRequest.struct_class = Types::BatchGetCrawlersRequest

    BatchGetCrawlersResponse.add_member(:crawlers, Shapes::ShapeRef.new(shape: CrawlerList, location_name: "Crawlers"))
    BatchGetCrawlersResponse.add_member(:crawlers_not_found, Shapes::ShapeRef.new(shape: CrawlerNameList, location_name: "CrawlersNotFound"))
    BatchGetCrawlersResponse.struct_class = Types::BatchGetCrawlersResponse

    BatchGetDevEndpointsRequest.add_member(:dev_endpoint_names, Shapes::ShapeRef.new(shape: DevEndpointNames, required: true, location_name: "DevEndpointNames"))
    BatchGetDevEndpointsRequest.struct_class = Types::BatchGetDevEndpointsRequest

    BatchGetDevEndpointsResponse.add_member(:dev_endpoints, Shapes::ShapeRef.new(shape: DevEndpointList, location_name: "DevEndpoints"))
    BatchGetDevEndpointsResponse.add_member(:dev_endpoints_not_found, Shapes::ShapeRef.new(shape: DevEndpointNames, location_name: "DevEndpointsNotFound"))
    BatchGetDevEndpointsResponse.struct_class = Types::BatchGetDevEndpointsResponse

    BatchGetJobsRequest.add_member(:job_names, Shapes::ShapeRef.new(shape: JobNameList, required: true, location_name: "JobNames"))
    BatchGetJobsRequest.struct_class = Types::BatchGetJobsRequest

    BatchGetJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: JobList, location_name: "Jobs"))
    BatchGetJobsResponse.add_member(:jobs_not_found, Shapes::ShapeRef.new(shape: JobNameList, location_name: "JobsNotFound"))
    BatchGetJobsResponse.struct_class = Types::BatchGetJobsResponse

    BatchGetPartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchGetPartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    BatchGetPartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    BatchGetPartitionRequest.add_member(:partitions_to_get, Shapes::ShapeRef.new(shape: BatchGetPartitionValueList, required: true, location_name: "PartitionsToGet"))
    BatchGetPartitionRequest.struct_class = Types::BatchGetPartitionRequest

    BatchGetPartitionResponse.add_member(:partitions, Shapes::ShapeRef.new(shape: PartitionList, location_name: "Partitions"))
    BatchGetPartitionResponse.add_member(:unprocessed_keys, Shapes::ShapeRef.new(shape: BatchGetPartitionValueList, location_name: "UnprocessedKeys"))
    BatchGetPartitionResponse.struct_class = Types::BatchGetPartitionResponse

    BatchGetPartitionValueList.member = Shapes::ShapeRef.new(shape: PartitionValueList)

    BatchGetTriggersRequest.add_member(:trigger_names, Shapes::ShapeRef.new(shape: TriggerNameList, required: true, location_name: "TriggerNames"))
    BatchGetTriggersRequest.struct_class = Types::BatchGetTriggersRequest

    BatchGetTriggersResponse.add_member(:triggers, Shapes::ShapeRef.new(shape: TriggerList, location_name: "Triggers"))
    BatchGetTriggersResponse.add_member(:triggers_not_found, Shapes::ShapeRef.new(shape: TriggerNameList, location_name: "TriggersNotFound"))
    BatchGetTriggersResponse.struct_class = Types::BatchGetTriggersResponse

    BatchGetWorkflowsRequest.add_member(:names, Shapes::ShapeRef.new(shape: WorkflowNames, required: true, location_name: "Names"))
    BatchGetWorkflowsRequest.add_member(:include_graph, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeGraph"))
    BatchGetWorkflowsRequest.struct_class = Types::BatchGetWorkflowsRequest

    BatchGetWorkflowsResponse.add_member(:workflows, Shapes::ShapeRef.new(shape: Workflows, location_name: "Workflows"))
    BatchGetWorkflowsResponse.add_member(:missing_workflows, Shapes::ShapeRef.new(shape: WorkflowNames, location_name: "MissingWorkflows"))
    BatchGetWorkflowsResponse.struct_class = Types::BatchGetWorkflowsResponse

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

    CancelMLTaskRunRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    CancelMLTaskRunRequest.add_member(:task_run_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TaskRunId"))
    CancelMLTaskRunRequest.struct_class = Types::CancelMLTaskRunRequest

    CancelMLTaskRunResponse.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TransformId"))
    CancelMLTaskRunResponse.add_member(:task_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TaskRunId"))
    CancelMLTaskRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatusType, location_name: "Status"))
    CancelMLTaskRunResponse.struct_class = Types::CancelMLTaskRunResponse

    CatalogEntries.member = Shapes::ShapeRef.new(shape: CatalogEntry)

    CatalogEntry.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CatalogEntry.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    CatalogEntry.struct_class = Types::CatalogEntry

    CatalogImportStatus.add_member(:import_completed, Shapes::ShapeRef.new(shape: Boolean, location_name: "ImportCompleted"))
    CatalogImportStatus.add_member(:import_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ImportTime"))
    CatalogImportStatus.add_member(:imported_by, Shapes::ShapeRef.new(shape: NameString, location_name: "ImportedBy"))
    CatalogImportStatus.struct_class = Types::CatalogImportStatus

    CatalogTablesList.member = Shapes::ShapeRef.new(shape: NameString)

    CatalogTarget.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CatalogTarget.add_member(:tables, Shapes::ShapeRef.new(shape: CatalogTablesList, required: true, location_name: "Tables"))
    CatalogTarget.struct_class = Types::CatalogTarget

    CatalogTargetList.member = Shapes::ShapeRef.new(shape: CatalogTarget)

    Classifier.add_member(:grok_classifier, Shapes::ShapeRef.new(shape: GrokClassifier, location_name: "GrokClassifier"))
    Classifier.add_member(:xml_classifier, Shapes::ShapeRef.new(shape: XMLClassifier, location_name: "XMLClassifier"))
    Classifier.add_member(:json_classifier, Shapes::ShapeRef.new(shape: JsonClassifier, location_name: "JsonClassifier"))
    Classifier.add_member(:csv_classifier, Shapes::ShapeRef.new(shape: CsvClassifier, location_name: "CsvClassifier"))
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
    Column.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    Column.struct_class = Types::Column

    ColumnList.member = Shapes::ShapeRef.new(shape: Column)

    ColumnValueStringList.member = Shapes::ShapeRef.new(shape: ColumnValuesString)

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConcurrentRunsExceededException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ConcurrentRunsExceededException.struct_class = Types::ConcurrentRunsExceededException

    Condition.add_member(:logical_operator, Shapes::ShapeRef.new(shape: LogicalOperator, location_name: "LogicalOperator"))
    Condition.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    Condition.add_member(:state, Shapes::ShapeRef.new(shape: JobRunState, location_name: "State"))
    Condition.add_member(:crawler_name, Shapes::ShapeRef.new(shape: NameString, location_name: "CrawlerName"))
    Condition.add_member(:crawl_state, Shapes::ShapeRef.new(shape: CrawlState, location_name: "CrawlState"))
    Condition.struct_class = Types::Condition

    ConditionCheckFailureException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ConditionCheckFailureException.struct_class = Types::ConditionCheckFailureException

    ConditionList.member = Shapes::ShapeRef.new(shape: Condition)

    ConfusionMatrix.add_member(:num_true_positives, Shapes::ShapeRef.new(shape: RecordsCount, location_name: "NumTruePositives"))
    ConfusionMatrix.add_member(:num_false_positives, Shapes::ShapeRef.new(shape: RecordsCount, location_name: "NumFalsePositives"))
    ConfusionMatrix.add_member(:num_true_negatives, Shapes::ShapeRef.new(shape: RecordsCount, location_name: "NumTrueNegatives"))
    ConfusionMatrix.add_member(:num_false_negatives, Shapes::ShapeRef.new(shape: RecordsCount, location_name: "NumFalseNegatives"))
    ConfusionMatrix.struct_class = Types::ConfusionMatrix

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

    ConnectionPasswordEncryption.add_member(:return_connection_password_encrypted, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ReturnConnectionPasswordEncrypted"))
    ConnectionPasswordEncryption.add_member(:aws_kms_key_id, Shapes::ShapeRef.new(shape: NameString, location_name: "AwsKmsKeyId"))
    ConnectionPasswordEncryption.struct_class = Types::ConnectionPasswordEncryption

    ConnectionProperties.key = Shapes::ShapeRef.new(shape: ConnectionPropertyKey)
    ConnectionProperties.value = Shapes::ShapeRef.new(shape: ValueString)

    ConnectionsList.add_member(:connections, Shapes::ShapeRef.new(shape: OrchestrationStringList, location_name: "Connections"))
    ConnectionsList.struct_class = Types::ConnectionsList

    Crawl.add_member(:state, Shapes::ShapeRef.new(shape: CrawlState, location_name: "State"))
    Crawl.add_member(:started_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "StartedOn"))
    Crawl.add_member(:completed_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CompletedOn"))
    Crawl.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    Crawl.add_member(:log_group, Shapes::ShapeRef.new(shape: LogGroup, location_name: "LogGroup"))
    Crawl.add_member(:log_stream, Shapes::ShapeRef.new(shape: LogStream, location_name: "LogStream"))
    Crawl.struct_class = Types::Crawl

    CrawlList.member = Shapes::ShapeRef.new(shape: Crawl)

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

    CrawlerNodeDetails.add_member(:crawls, Shapes::ShapeRef.new(shape: CrawlList, location_name: "Crawls"))
    CrawlerNodeDetails.struct_class = Types::CrawlerNodeDetails

    CrawlerNotRunningException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    CrawlerNotRunningException.struct_class = Types::CrawlerNotRunningException

    CrawlerRunningException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    CrawlerRunningException.struct_class = Types::CrawlerRunningException

    CrawlerStoppingException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    CrawlerStoppingException.struct_class = Types::CrawlerStoppingException

    CrawlerTargets.add_member(:s3_targets, Shapes::ShapeRef.new(shape: S3TargetList, location_name: "S3Targets"))
    CrawlerTargets.add_member(:jdbc_targets, Shapes::ShapeRef.new(shape: JdbcTargetList, location_name: "JdbcTargets"))
    CrawlerTargets.add_member(:dynamo_db_targets, Shapes::ShapeRef.new(shape: DynamoDBTargetList, location_name: "DynamoDBTargets"))
    CrawlerTargets.add_member(:catalog_targets, Shapes::ShapeRef.new(shape: CatalogTargetList, location_name: "CatalogTargets"))
    CrawlerTargets.struct_class = Types::CrawlerTargets

    CreateClassifierRequest.add_member(:grok_classifier, Shapes::ShapeRef.new(shape: CreateGrokClassifierRequest, location_name: "GrokClassifier"))
    CreateClassifierRequest.add_member(:xml_classifier, Shapes::ShapeRef.new(shape: CreateXMLClassifierRequest, location_name: "XMLClassifier"))
    CreateClassifierRequest.add_member(:json_classifier, Shapes::ShapeRef.new(shape: CreateJsonClassifierRequest, location_name: "JsonClassifier"))
    CreateClassifierRequest.add_member(:csv_classifier, Shapes::ShapeRef.new(shape: CreateCsvClassifierRequest, location_name: "CsvClassifier"))
    CreateClassifierRequest.struct_class = Types::CreateClassifierRequest

    CreateClassifierResponse.struct_class = Types::CreateClassifierResponse

    CreateConnectionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateConnectionRequest.add_member(:connection_input, Shapes::ShapeRef.new(shape: ConnectionInput, required: true, location_name: "ConnectionInput"))
    CreateConnectionRequest.struct_class = Types::CreateConnectionRequest

    CreateConnectionResponse.struct_class = Types::CreateConnectionResponse

    CreateCrawlerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateCrawlerRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    CreateCrawlerRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "DatabaseName"))
    CreateCrawlerRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateCrawlerRequest.add_member(:targets, Shapes::ShapeRef.new(shape: CrawlerTargets, required: true, location_name: "Targets"))
    CreateCrawlerRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: CronExpression, location_name: "Schedule"))
    CreateCrawlerRequest.add_member(:classifiers, Shapes::ShapeRef.new(shape: ClassifierNameList, location_name: "Classifiers"))
    CreateCrawlerRequest.add_member(:table_prefix, Shapes::ShapeRef.new(shape: TablePrefix, location_name: "TablePrefix"))
    CreateCrawlerRequest.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: SchemaChangePolicy, location_name: "SchemaChangePolicy"))
    CreateCrawlerRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: CrawlerConfiguration, location_name: "Configuration"))
    CreateCrawlerRequest.add_member(:crawler_security_configuration, Shapes::ShapeRef.new(shape: CrawlerSecurityConfiguration, location_name: "CrawlerSecurityConfiguration"))
    CreateCrawlerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateCrawlerRequest.struct_class = Types::CreateCrawlerRequest

    CreateCrawlerResponse.struct_class = Types::CreateCrawlerResponse

    CreateCsvClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateCsvClassifierRequest.add_member(:delimiter, Shapes::ShapeRef.new(shape: CsvColumnDelimiter, location_name: "Delimiter"))
    CreateCsvClassifierRequest.add_member(:quote_symbol, Shapes::ShapeRef.new(shape: CsvQuoteSymbol, location_name: "QuoteSymbol"))
    CreateCsvClassifierRequest.add_member(:contains_header, Shapes::ShapeRef.new(shape: CsvHeaderOption, location_name: "ContainsHeader"))
    CreateCsvClassifierRequest.add_member(:header, Shapes::ShapeRef.new(shape: CsvHeader, location_name: "Header"))
    CreateCsvClassifierRequest.add_member(:disable_value_trimming, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "DisableValueTrimming"))
    CreateCsvClassifierRequest.add_member(:allow_single_column, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "AllowSingleColumn"))
    CreateCsvClassifierRequest.struct_class = Types::CreateCsvClassifierRequest

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
    CreateDevEndpointRequest.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    CreateDevEndpointRequest.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    CreateDevEndpointRequest.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    CreateDevEndpointRequest.add_member(:extra_python_libs_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraPythonLibsS3Path"))
    CreateDevEndpointRequest.add_member(:extra_jars_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraJarsS3Path"))
    CreateDevEndpointRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    CreateDevEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateDevEndpointRequest.add_member(:arguments, Shapes::ShapeRef.new(shape: MapValue, location_name: "Arguments"))
    CreateDevEndpointRequest.struct_class = Types::CreateDevEndpointRequest

    CreateDevEndpointResponse.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointName"))
    CreateDevEndpointResponse.add_member(:status, Shapes::ShapeRef.new(shape: GenericString, location_name: "Status"))
    CreateDevEndpointResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroupIds"))
    CreateDevEndpointResponse.add_member(:subnet_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "SubnetId"))
    CreateDevEndpointResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CreateDevEndpointResponse.add_member(:yarn_endpoint_address, Shapes::ShapeRef.new(shape: GenericString, location_name: "YarnEndpointAddress"))
    CreateDevEndpointResponse.add_member(:zeppelin_remote_spark_interpreter_port, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "ZeppelinRemoteSparkInterpreterPort"))
    CreateDevEndpointResponse.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "NumberOfNodes"))
    CreateDevEndpointResponse.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    CreateDevEndpointResponse.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    CreateDevEndpointResponse.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    CreateDevEndpointResponse.add_member(:availability_zone, Shapes::ShapeRef.new(shape: GenericString, location_name: "AvailabilityZone"))
    CreateDevEndpointResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "VpcId"))
    CreateDevEndpointResponse.add_member(:extra_python_libs_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraPythonLibsS3Path"))
    CreateDevEndpointResponse.add_member(:extra_jars_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraJarsS3Path"))
    CreateDevEndpointResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "FailureReason"))
    CreateDevEndpointResponse.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    CreateDevEndpointResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedTimestamp"))
    CreateDevEndpointResponse.add_member(:arguments, Shapes::ShapeRef.new(shape: MapValue, location_name: "Arguments"))
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
    CreateJobRequest.add_member(:non_overridable_arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "NonOverridableArguments"))
    CreateJobRequest.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionsList, location_name: "Connections"))
    CreateJobRequest.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    CreateJobRequest.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, deprecated: true, location_name: "AllocatedCapacity", metadata: {"deprecatedMessage"=>"This property is deprecated, use MaxCapacity instead."}))
    CreateJobRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    CreateJobRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    CreateJobRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    CreateJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateJobRequest.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    CreateJobRequest.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    CreateJobRequest.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    CreateJobRequest.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    CreateJobRequest.struct_class = Types::CreateJobRequest

    CreateJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateJobResponse.struct_class = Types::CreateJobResponse

    CreateJsonClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateJsonClassifierRequest.add_member(:json_path, Shapes::ShapeRef.new(shape: JsonPath, required: true, location_name: "JsonPath"))
    CreateJsonClassifierRequest.struct_class = Types::CreateJsonClassifierRequest

    CreateMLTransformRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateMLTransformRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateMLTransformRequest.add_member(:input_record_tables, Shapes::ShapeRef.new(shape: GlueTables, required: true, location_name: "InputRecordTables"))
    CreateMLTransformRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: TransformParameters, required: true, location_name: "Parameters"))
    CreateMLTransformRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, required: true, location_name: "Role"))
    CreateMLTransformRequest.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    CreateMLTransformRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    CreateMLTransformRequest.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    CreateMLTransformRequest.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    CreateMLTransformRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    CreateMLTransformRequest.add_member(:max_retries, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaxRetries"))
    CreateMLTransformRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateMLTransformRequest.struct_class = Types::CreateMLTransformRequest

    CreateMLTransformResponse.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TransformId"))
    CreateMLTransformResponse.struct_class = Types::CreateMLTransformResponse

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
    CreateTriggerRequest.add_member(:workflow_name, Shapes::ShapeRef.new(shape: NameString, location_name: "WorkflowName"))
    CreateTriggerRequest.add_member(:type, Shapes::ShapeRef.new(shape: TriggerType, required: true, location_name: "Type"))
    CreateTriggerRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: GenericString, location_name: "Schedule"))
    CreateTriggerRequest.add_member(:predicate, Shapes::ShapeRef.new(shape: Predicate, location_name: "Predicate"))
    CreateTriggerRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, required: true, location_name: "Actions"))
    CreateTriggerRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateTriggerRequest.add_member(:start_on_creation, Shapes::ShapeRef.new(shape: BooleanValue, location_name: "StartOnCreation"))
    CreateTriggerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateTriggerRequest.struct_class = Types::CreateTriggerRequest

    CreateTriggerResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateTriggerResponse.struct_class = Types::CreateTriggerResponse

    CreateUserDefinedFunctionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateUserDefinedFunctionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CreateUserDefinedFunctionRequest.add_member(:function_input, Shapes::ShapeRef.new(shape: UserDefinedFunctionInput, required: true, location_name: "FunctionInput"))
    CreateUserDefinedFunctionRequest.struct_class = Types::CreateUserDefinedFunctionRequest

    CreateUserDefinedFunctionResponse.struct_class = Types::CreateUserDefinedFunctionResponse

    CreateWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    CreateWorkflowRequest.add_member(:default_run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, location_name: "DefaultRunProperties"))
    CreateWorkflowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateWorkflowRequest.struct_class = Types::CreateWorkflowRequest

    CreateWorkflowResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateWorkflowResponse.struct_class = Types::CreateWorkflowResponse

    CreateXMLClassifierRequest.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, required: true, location_name: "Classification"))
    CreateXMLClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateXMLClassifierRequest.add_member(:row_tag, Shapes::ShapeRef.new(shape: RowTag, location_name: "RowTag"))
    CreateXMLClassifierRequest.struct_class = Types::CreateXMLClassifierRequest

    CsvClassifier.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CsvClassifier.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    CsvClassifier.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    CsvClassifier.add_member(:version, Shapes::ShapeRef.new(shape: VersionId, location_name: "Version"))
    CsvClassifier.add_member(:delimiter, Shapes::ShapeRef.new(shape: CsvColumnDelimiter, location_name: "Delimiter"))
    CsvClassifier.add_member(:quote_symbol, Shapes::ShapeRef.new(shape: CsvQuoteSymbol, location_name: "QuoteSymbol"))
    CsvClassifier.add_member(:contains_header, Shapes::ShapeRef.new(shape: CsvHeaderOption, location_name: "ContainsHeader"))
    CsvClassifier.add_member(:header, Shapes::ShapeRef.new(shape: CsvHeader, location_name: "Header"))
    CsvClassifier.add_member(:disable_value_trimming, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "DisableValueTrimming"))
    CsvClassifier.add_member(:allow_single_column, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "AllowSingleColumn"))
    CsvClassifier.struct_class = Types::CsvClassifier

    CsvHeader.member = Shapes::ShapeRef.new(shape: NameString)

    DagEdges.member = Shapes::ShapeRef.new(shape: CodeGenEdge)

    DagNodes.member = Shapes::ShapeRef.new(shape: CodeGenNode)

    DataCatalogEncryptionSettings.add_member(:encryption_at_rest, Shapes::ShapeRef.new(shape: EncryptionAtRest, location_name: "EncryptionAtRest"))
    DataCatalogEncryptionSettings.add_member(:connection_password_encryption, Shapes::ShapeRef.new(shape: ConnectionPasswordEncryption, location_name: "ConnectionPasswordEncryption"))
    DataCatalogEncryptionSettings.struct_class = Types::DataCatalogEncryptionSettings

    DataLakePrincipal.add_member(:data_lake_principal_identifier, Shapes::ShapeRef.new(shape: DataLakePrincipalString, location_name: "DataLakePrincipalIdentifier"))
    DataLakePrincipal.struct_class = Types::DataLakePrincipal

    Database.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    Database.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Database.add_member(:location_uri, Shapes::ShapeRef.new(shape: URI, location_name: "LocationUri"))
    Database.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    Database.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    Database.add_member(:create_table_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateTableDefaultPermissions"))
    Database.struct_class = Types::Database

    DatabaseInput.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DatabaseInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    DatabaseInput.add_member(:location_uri, Shapes::ShapeRef.new(shape: URI, location_name: "LocationUri"))
    DatabaseInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    DatabaseInput.add_member(:create_table_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateTableDefaultPermissions"))
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

    DeleteMLTransformRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    DeleteMLTransformRequest.struct_class = Types::DeleteMLTransformRequest

    DeleteMLTransformResponse.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TransformId"))
    DeleteMLTransformResponse.struct_class = Types::DeleteMLTransformResponse

    DeletePartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeletePartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeletePartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DeletePartitionRequest.add_member(:partition_values, Shapes::ShapeRef.new(shape: ValueStringList, required: true, location_name: "PartitionValues"))
    DeletePartitionRequest.struct_class = Types::DeletePartitionRequest

    DeletePartitionResponse.struct_class = Types::DeletePartitionResponse

    DeleteResourcePolicyRequest.add_member(:policy_hash_condition, Shapes::ShapeRef.new(shape: HashString, location_name: "PolicyHashCondition"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

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

    DeleteWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteWorkflowRequest.struct_class = Types::DeleteWorkflowRequest

    DeleteWorkflowResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    DeleteWorkflowResponse.struct_class = Types::DeleteWorkflowResponse

    DevEndpoint.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointName"))
    DevEndpoint.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DevEndpoint.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroupIds"))
    DevEndpoint.add_member(:subnet_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "SubnetId"))
    DevEndpoint.add_member(:yarn_endpoint_address, Shapes::ShapeRef.new(shape: GenericString, location_name: "YarnEndpointAddress"))
    DevEndpoint.add_member(:private_address, Shapes::ShapeRef.new(shape: GenericString, location_name: "PrivateAddress"))
    DevEndpoint.add_member(:zeppelin_remote_spark_interpreter_port, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "ZeppelinRemoteSparkInterpreterPort"))
    DevEndpoint.add_member(:public_address, Shapes::ShapeRef.new(shape: GenericString, location_name: "PublicAddress"))
    DevEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: GenericString, location_name: "Status"))
    DevEndpoint.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    DevEndpoint.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    DevEndpoint.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
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
    DevEndpoint.add_member(:arguments, Shapes::ShapeRef.new(shape: MapValue, location_name: "Arguments"))
    DevEndpoint.struct_class = Types::DevEndpoint

    DevEndpointCustomLibraries.add_member(:extra_python_libs_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraPythonLibsS3Path"))
    DevEndpointCustomLibraries.add_member(:extra_jars_s3_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExtraJarsS3Path"))
    DevEndpointCustomLibraries.struct_class = Types::DevEndpointCustomLibraries

    DevEndpointList.member = Shapes::ShapeRef.new(shape: DevEndpoint)

    DevEndpointNameList.member = Shapes::ShapeRef.new(shape: NameString)

    DevEndpointNames.member = Shapes::ShapeRef.new(shape: GenericString)

    DynamoDBTarget.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    DynamoDBTarget.struct_class = Types::DynamoDBTarget

    DynamoDBTargetList.member = Shapes::ShapeRef.new(shape: DynamoDBTarget)

    Edge.add_member(:source_id, Shapes::ShapeRef.new(shape: NameString, location_name: "SourceId"))
    Edge.add_member(:destination_id, Shapes::ShapeRef.new(shape: NameString, location_name: "DestinationId"))
    Edge.struct_class = Types::Edge

    EdgeList.member = Shapes::ShapeRef.new(shape: Edge)

    EncryptionAtRest.add_member(:catalog_encryption_mode, Shapes::ShapeRef.new(shape: CatalogEncryptionMode, required: true, location_name: "CatalogEncryptionMode"))
    EncryptionAtRest.add_member(:sse_aws_kms_key_id, Shapes::ShapeRef.new(shape: NameString, location_name: "SseAwsKmsKeyId"))
    EncryptionAtRest.struct_class = Types::EncryptionAtRest

    EncryptionConfiguration.add_member(:s3_encryption, Shapes::ShapeRef.new(shape: S3EncryptionList, location_name: "S3Encryption"))
    EncryptionConfiguration.add_member(:cloud_watch_encryption, Shapes::ShapeRef.new(shape: CloudWatchEncryption, location_name: "CloudWatchEncryption"))
    EncryptionConfiguration.add_member(:job_bookmarks_encryption, Shapes::ShapeRef.new(shape: JobBookmarksEncryption, location_name: "JobBookmarksEncryption"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    EntityNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    EntityNotFoundException.struct_class = Types::EntityNotFoundException

    ErrorByName.key = Shapes::ShapeRef.new(shape: NameString)
    ErrorByName.value = Shapes::ShapeRef.new(shape: ErrorDetail)

    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: NameString, location_name: "ErrorCode"))
    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    ErrorDetail.struct_class = Types::ErrorDetail

    EvaluationMetrics.add_member(:transform_type, Shapes::ShapeRef.new(shape: TransformType, required: true, location_name: "TransformType"))
    EvaluationMetrics.add_member(:find_matches_metrics, Shapes::ShapeRef.new(shape: FindMatchesMetrics, location_name: "FindMatchesMetrics"))
    EvaluationMetrics.struct_class = Types::EvaluationMetrics

    ExecutionProperty.add_member(:max_concurrent_runs, Shapes::ShapeRef.new(shape: MaxConcurrentRuns, location_name: "MaxConcurrentRuns"))
    ExecutionProperty.struct_class = Types::ExecutionProperty

    ExportLabelsTaskRunProperties.add_member(:output_s3_path, Shapes::ShapeRef.new(shape: UriString, location_name: "OutputS3Path"))
    ExportLabelsTaskRunProperties.struct_class = Types::ExportLabelsTaskRunProperties

    FindMatchesMetrics.add_member(:area_under_pr_curve, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "AreaUnderPRCurve"))
    FindMatchesMetrics.add_member(:precision, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "Precision"))
    FindMatchesMetrics.add_member(:recall, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "Recall"))
    FindMatchesMetrics.add_member(:f1, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "F1"))
    FindMatchesMetrics.add_member(:confusion_matrix, Shapes::ShapeRef.new(shape: ConfusionMatrix, location_name: "ConfusionMatrix"))
    FindMatchesMetrics.struct_class = Types::FindMatchesMetrics

    FindMatchesParameters.add_member(:primary_key_column_name, Shapes::ShapeRef.new(shape: ColumnNameString, location_name: "PrimaryKeyColumnName"))
    FindMatchesParameters.add_member(:precision_recall_tradeoff, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "PrecisionRecallTradeoff"))
    FindMatchesParameters.add_member(:accuracy_cost_tradeoff, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "AccuracyCostTradeoff"))
    FindMatchesParameters.add_member(:enforce_provided_labels, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "EnforceProvidedLabels"))
    FindMatchesParameters.struct_class = Types::FindMatchesParameters

    FindMatchesTaskRunProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: HashString, location_name: "JobId"))
    FindMatchesTaskRunProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    FindMatchesTaskRunProperties.add_member(:job_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "JobRunId"))
    FindMatchesTaskRunProperties.struct_class = Types::FindMatchesTaskRunProperties

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
    GetConnectionRequest.add_member(:hide_password, Shapes::ShapeRef.new(shape: Boolean, location_name: "HidePassword"))
    GetConnectionRequest.struct_class = Types::GetConnectionRequest

    GetConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    GetConnectionResponse.struct_class = Types::GetConnectionResponse

    GetConnectionsFilter.add_member(:match_criteria, Shapes::ShapeRef.new(shape: MatchCriteria, location_name: "MatchCriteria"))
    GetConnectionsFilter.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "ConnectionType"))
    GetConnectionsFilter.struct_class = Types::GetConnectionsFilter

    GetConnectionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetConnectionsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: GetConnectionsFilter, location_name: "Filter"))
    GetConnectionsRequest.add_member(:hide_password, Shapes::ShapeRef.new(shape: Boolean, location_name: "HidePassword"))
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

    GetDataCatalogEncryptionSettingsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetDataCatalogEncryptionSettingsRequest.struct_class = Types::GetDataCatalogEncryptionSettingsRequest

    GetDataCatalogEncryptionSettingsResponse.add_member(:data_catalog_encryption_settings, Shapes::ShapeRef.new(shape: DataCatalogEncryptionSettings, location_name: "DataCatalogEncryptionSettings"))
    GetDataCatalogEncryptionSettingsResponse.struct_class = Types::GetDataCatalogEncryptionSettingsResponse

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

    GetJobBookmarkRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "JobName"))
    GetJobBookmarkRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: RunId, location_name: "RunId"))
    GetJobBookmarkRequest.struct_class = Types::GetJobBookmarkRequest

    GetJobBookmarkResponse.add_member(:job_bookmark_entry, Shapes::ShapeRef.new(shape: JobBookmarkEntry, location_name: "JobBookmarkEntry"))
    GetJobBookmarkResponse.struct_class = Types::GetJobBookmarkResponse

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

    GetMLTaskRunRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    GetMLTaskRunRequest.add_member(:task_run_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TaskRunId"))
    GetMLTaskRunRequest.struct_class = Types::GetMLTaskRunRequest

    GetMLTaskRunResponse.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TransformId"))
    GetMLTaskRunResponse.add_member(:task_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TaskRunId"))
    GetMLTaskRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatusType, location_name: "Status"))
    GetMLTaskRunResponse.add_member(:log_group_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "LogGroupName"))
    GetMLTaskRunResponse.add_member(:properties, Shapes::ShapeRef.new(shape: TaskRunProperties, location_name: "Properties"))
    GetMLTaskRunResponse.add_member(:error_string, Shapes::ShapeRef.new(shape: GenericString, location_name: "ErrorString"))
    GetMLTaskRunResponse.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedOn"))
    GetMLTaskRunResponse.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedOn"))
    GetMLTaskRunResponse.add_member(:completed_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedOn"))
    GetMLTaskRunResponse.add_member(:execution_time, Shapes::ShapeRef.new(shape: ExecutionTime, location_name: "ExecutionTime"))
    GetMLTaskRunResponse.struct_class = Types::GetMLTaskRunResponse

    GetMLTaskRunsRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    GetMLTaskRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetMLTaskRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetMLTaskRunsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: TaskRunFilterCriteria, location_name: "Filter"))
    GetMLTaskRunsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: TaskRunSortCriteria, location_name: "Sort"))
    GetMLTaskRunsRequest.struct_class = Types::GetMLTaskRunsRequest

    GetMLTaskRunsResponse.add_member(:task_runs, Shapes::ShapeRef.new(shape: TaskRunList, location_name: "TaskRuns"))
    GetMLTaskRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetMLTaskRunsResponse.struct_class = Types::GetMLTaskRunsResponse

    GetMLTransformRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    GetMLTransformRequest.struct_class = Types::GetMLTransformRequest

    GetMLTransformResponse.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TransformId"))
    GetMLTransformResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    GetMLTransformResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    GetMLTransformResponse.add_member(:status, Shapes::ShapeRef.new(shape: TransformStatusType, location_name: "Status"))
    GetMLTransformResponse.add_member(:created_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedOn"))
    GetMLTransformResponse.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedOn"))
    GetMLTransformResponse.add_member(:input_record_tables, Shapes::ShapeRef.new(shape: GlueTables, location_name: "InputRecordTables"))
    GetMLTransformResponse.add_member(:parameters, Shapes::ShapeRef.new(shape: TransformParameters, location_name: "Parameters"))
    GetMLTransformResponse.add_member(:evaluation_metrics, Shapes::ShapeRef.new(shape: EvaluationMetrics, location_name: "EvaluationMetrics"))
    GetMLTransformResponse.add_member(:label_count, Shapes::ShapeRef.new(shape: LabelCount, location_name: "LabelCount"))
    GetMLTransformResponse.add_member(:schema, Shapes::ShapeRef.new(shape: TransformSchema, location_name: "Schema"))
    GetMLTransformResponse.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, location_name: "Role"))
    GetMLTransformResponse.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    GetMLTransformResponse.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    GetMLTransformResponse.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    GetMLTransformResponse.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    GetMLTransformResponse.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    GetMLTransformResponse.add_member(:max_retries, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaxRetries"))
    GetMLTransformResponse.struct_class = Types::GetMLTransformResponse

    GetMLTransformsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetMLTransformsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetMLTransformsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: TransformFilterCriteria, location_name: "Filter"))
    GetMLTransformsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: TransformSortCriteria, location_name: "Sort"))
    GetMLTransformsRequest.struct_class = Types::GetMLTransformsRequest

    GetMLTransformsResponse.add_member(:transforms, Shapes::ShapeRef.new(shape: TransformList, required: true, location_name: "Transforms"))
    GetMLTransformsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetMLTransformsResponse.struct_class = Types::GetMLTransformsResponse

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

    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:policy_in_json, Shapes::ShapeRef.new(shape: PolicyJsonString, location_name: "PolicyInJson"))
    GetResourcePolicyResponse.add_member(:policy_hash, Shapes::ShapeRef.new(shape: HashString, location_name: "PolicyHash"))
    GetResourcePolicyResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    GetResourcePolicyResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

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

    GetTagsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, required: true, location_name: "ResourceArn"))
    GetTagsRequest.struct_class = Types::GetTagsRequest

    GetTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    GetTagsResponse.struct_class = Types::GetTagsResponse

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
    GetUserDefinedFunctionsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DatabaseName"))
    GetUserDefinedFunctionsRequest.add_member(:pattern, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Pattern"))
    GetUserDefinedFunctionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetUserDefinedFunctionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetUserDefinedFunctionsRequest.struct_class = Types::GetUserDefinedFunctionsRequest

    GetUserDefinedFunctionsResponse.add_member(:user_defined_functions, Shapes::ShapeRef.new(shape: UserDefinedFunctionList, location_name: "UserDefinedFunctions"))
    GetUserDefinedFunctionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetUserDefinedFunctionsResponse.struct_class = Types::GetUserDefinedFunctionsResponse

    GetWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetWorkflowRequest.add_member(:include_graph, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeGraph"))
    GetWorkflowRequest.struct_class = Types::GetWorkflowRequest

    GetWorkflowResponse.add_member(:workflow, Shapes::ShapeRef.new(shape: Workflow, location_name: "Workflow"))
    GetWorkflowResponse.struct_class = Types::GetWorkflowResponse

    GetWorkflowRunPropertiesRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetWorkflowRunPropertiesRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    GetWorkflowRunPropertiesRequest.struct_class = Types::GetWorkflowRunPropertiesRequest

    GetWorkflowRunPropertiesResponse.add_member(:run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, location_name: "RunProperties"))
    GetWorkflowRunPropertiesResponse.struct_class = Types::GetWorkflowRunPropertiesResponse

    GetWorkflowRunRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetWorkflowRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    GetWorkflowRunRequest.add_member(:include_graph, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeGraph"))
    GetWorkflowRunRequest.struct_class = Types::GetWorkflowRunRequest

    GetWorkflowRunResponse.add_member(:run, Shapes::ShapeRef.new(shape: WorkflowRun, location_name: "Run"))
    GetWorkflowRunResponse.struct_class = Types::GetWorkflowRunResponse

    GetWorkflowRunsRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetWorkflowRunsRequest.add_member(:include_graph, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeGraph"))
    GetWorkflowRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetWorkflowRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetWorkflowRunsRequest.struct_class = Types::GetWorkflowRunsRequest

    GetWorkflowRunsResponse.add_member(:runs, Shapes::ShapeRef.new(shape: WorkflowRuns, location_name: "Runs"))
    GetWorkflowRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetWorkflowRunsResponse.struct_class = Types::GetWorkflowRunsResponse

    GlueEncryptionException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    GlueEncryptionException.struct_class = Types::GlueEncryptionException

    GlueTable.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GlueTable.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GlueTable.add_member(:catalog_id, Shapes::ShapeRef.new(shape: NameString, location_name: "CatalogId"))
    GlueTable.add_member(:connection_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionName"))
    GlueTable.struct_class = Types::GlueTable

    GlueTables.member = Shapes::ShapeRef.new(shape: GlueTable)

    GrokClassifier.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GrokClassifier.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, required: true, location_name: "Classification"))
    GrokClassifier.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    GrokClassifier.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    GrokClassifier.add_member(:version, Shapes::ShapeRef.new(shape: VersionId, location_name: "Version"))
    GrokClassifier.add_member(:grok_pattern, Shapes::ShapeRef.new(shape: GrokPattern, required: true, location_name: "GrokPattern"))
    GrokClassifier.add_member(:custom_patterns, Shapes::ShapeRef.new(shape: CustomPatterns, location_name: "CustomPatterns"))
    GrokClassifier.struct_class = Types::GrokClassifier

    IdempotentParameterMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    IllegalWorkflowStateException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    IllegalWorkflowStateException.struct_class = Types::IllegalWorkflowStateException

    ImportCatalogToGlueRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    ImportCatalogToGlueRequest.struct_class = Types::ImportCatalogToGlueRequest

    ImportCatalogToGlueResponse.struct_class = Types::ImportCatalogToGlueResponse

    ImportLabelsTaskRunProperties.add_member(:input_s3_path, Shapes::ShapeRef.new(shape: UriString, location_name: "InputS3Path"))
    ImportLabelsTaskRunProperties.add_member(:replace, Shapes::ShapeRef.new(shape: ReplaceBoolean, location_name: "Replace"))
    ImportLabelsTaskRunProperties.struct_class = Types::ImportLabelsTaskRunProperties

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    InvalidInputException.struct_class = Types::InvalidInputException

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
    Job.add_member(:non_overridable_arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "NonOverridableArguments"))
    Job.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionsList, location_name: "Connections"))
    Job.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    Job.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, deprecated: true, location_name: "AllocatedCapacity", metadata: {"deprecatedMessage"=>"This property is deprecated, use MaxCapacity instead."}))
    Job.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    Job.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    Job.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    Job.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    Job.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    Job.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    Job.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    Job.struct_class = Types::Job

    JobBookmarkEntry.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    JobBookmarkEntry.add_member(:version, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "Version"))
    JobBookmarkEntry.add_member(:run, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "Run"))
    JobBookmarkEntry.add_member(:attempt, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "Attempt"))
    JobBookmarkEntry.add_member(:previous_run_id, Shapes::ShapeRef.new(shape: RunId, location_name: "PreviousRunId"))
    JobBookmarkEntry.add_member(:run_id, Shapes::ShapeRef.new(shape: RunId, location_name: "RunId"))
    JobBookmarkEntry.add_member(:job_bookmark, Shapes::ShapeRef.new(shape: JsonValue, location_name: "JobBookmark"))
    JobBookmarkEntry.struct_class = Types::JobBookmarkEntry

    JobBookmarksEncryption.add_member(:job_bookmarks_encryption_mode, Shapes::ShapeRef.new(shape: JobBookmarksEncryptionMode, location_name: "JobBookmarksEncryptionMode"))
    JobBookmarksEncryption.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    JobBookmarksEncryption.struct_class = Types::JobBookmarksEncryption

    JobCommand.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    JobCommand.add_member(:script_location, Shapes::ShapeRef.new(shape: ScriptLocationString, location_name: "ScriptLocation"))
    JobCommand.add_member(:python_version, Shapes::ShapeRef.new(shape: PythonVersionString, location_name: "PythonVersion"))
    JobCommand.struct_class = Types::JobCommand

    JobList.member = Shapes::ShapeRef.new(shape: Job)

    JobNameList.member = Shapes::ShapeRef.new(shape: NameString)

    JobNodeDetails.add_member(:job_runs, Shapes::ShapeRef.new(shape: JobRunList, location_name: "JobRuns"))
    JobNodeDetails.struct_class = Types::JobNodeDetails

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
    JobRun.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, deprecated: true, location_name: "AllocatedCapacity", metadata: {"deprecatedMessage"=>"This property is deprecated, use MaxCapacity instead."}))
    JobRun.add_member(:execution_time, Shapes::ShapeRef.new(shape: ExecutionTime, location_name: "ExecutionTime"))
    JobRun.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    JobRun.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    JobRun.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    JobRun.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    JobRun.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    JobRun.add_member(:log_group_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "LogGroupName"))
    JobRun.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    JobRun.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    JobRun.struct_class = Types::JobRun

    JobRunList.member = Shapes::ShapeRef.new(shape: JobRun)

    JobUpdate.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    JobUpdate.add_member(:log_uri, Shapes::ShapeRef.new(shape: UriString, location_name: "LogUri"))
    JobUpdate.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, location_name: "Role"))
    JobUpdate.add_member(:execution_property, Shapes::ShapeRef.new(shape: ExecutionProperty, location_name: "ExecutionProperty"))
    JobUpdate.add_member(:command, Shapes::ShapeRef.new(shape: JobCommand, location_name: "Command"))
    JobUpdate.add_member(:default_arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "DefaultArguments"))
    JobUpdate.add_member(:non_overridable_arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "NonOverridableArguments"))
    JobUpdate.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionsList, location_name: "Connections"))
    JobUpdate.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    JobUpdate.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, deprecated: true, location_name: "AllocatedCapacity", metadata: {"deprecatedMessage"=>"This property is deprecated, use MaxCapacity instead."}))
    JobUpdate.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    JobUpdate.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    JobUpdate.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    JobUpdate.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    JobUpdate.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    JobUpdate.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    JobUpdate.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    JobUpdate.struct_class = Types::JobUpdate

    JsonClassifier.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    JsonClassifier.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    JsonClassifier.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    JsonClassifier.add_member(:version, Shapes::ShapeRef.new(shape: VersionId, location_name: "Version"))
    JsonClassifier.add_member(:json_path, Shapes::ShapeRef.new(shape: JsonPath, required: true, location_name: "JsonPath"))
    JsonClassifier.struct_class = Types::JsonClassifier

    LabelingSetGenerationTaskRunProperties.add_member(:output_s3_path, Shapes::ShapeRef.new(shape: UriString, location_name: "OutputS3Path"))
    LabelingSetGenerationTaskRunProperties.struct_class = Types::LabelingSetGenerationTaskRunProperties

    LastCrawlInfo.add_member(:status, Shapes::ShapeRef.new(shape: LastCrawlStatus, location_name: "Status"))
    LastCrawlInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    LastCrawlInfo.add_member(:log_group, Shapes::ShapeRef.new(shape: LogGroup, location_name: "LogGroup"))
    LastCrawlInfo.add_member(:log_stream, Shapes::ShapeRef.new(shape: LogStream, location_name: "LogStream"))
    LastCrawlInfo.add_member(:message_prefix, Shapes::ShapeRef.new(shape: MessagePrefix, location_name: "MessagePrefix"))
    LastCrawlInfo.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    LastCrawlInfo.struct_class = Types::LastCrawlInfo

    ListCrawlersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListCrawlersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCrawlersRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListCrawlersRequest.struct_class = Types::ListCrawlersRequest

    ListCrawlersResponse.add_member(:crawler_names, Shapes::ShapeRef.new(shape: CrawlerNameList, location_name: "CrawlerNames"))
    ListCrawlersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCrawlersResponse.struct_class = Types::ListCrawlersResponse

    ListDevEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListDevEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListDevEndpointsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListDevEndpointsRequest.struct_class = Types::ListDevEndpointsRequest

    ListDevEndpointsResponse.add_member(:dev_endpoint_names, Shapes::ShapeRef.new(shape: DevEndpointNameList, location_name: "DevEndpointNames"))
    ListDevEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListDevEndpointsResponse.struct_class = Types::ListDevEndpointsResponse

    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListJobsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResponse.add_member(:job_names, Shapes::ShapeRef.new(shape: JobNameList, location_name: "JobNames"))
    ListJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListJobsResponse.struct_class = Types::ListJobsResponse

    ListMLTransformsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMLTransformsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListMLTransformsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: TransformFilterCriteria, location_name: "Filter"))
    ListMLTransformsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: TransformSortCriteria, location_name: "Sort"))
    ListMLTransformsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListMLTransformsRequest.struct_class = Types::ListMLTransformsRequest

    ListMLTransformsResponse.add_member(:transform_ids, Shapes::ShapeRef.new(shape: TransformIdList, required: true, location_name: "TransformIds"))
    ListMLTransformsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMLTransformsResponse.struct_class = Types::ListMLTransformsResponse

    ListTriggersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListTriggersRequest.add_member(:dependent_job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DependentJobName"))
    ListTriggersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListTriggersRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListTriggersRequest.struct_class = Types::ListTriggersRequest

    ListTriggersResponse.add_member(:trigger_names, Shapes::ShapeRef.new(shape: TriggerNameList, location_name: "TriggerNames"))
    ListTriggersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListTriggersResponse.struct_class = Types::ListTriggersResponse

    ListWorkflowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListWorkflowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListWorkflowsRequest.struct_class = Types::ListWorkflowsRequest

    ListWorkflowsResponse.add_member(:workflows, Shapes::ShapeRef.new(shape: WorkflowNames, location_name: "Workflows"))
    ListWorkflowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListWorkflowsResponse.struct_class = Types::ListWorkflowsResponse

    Location.add_member(:jdbc, Shapes::ShapeRef.new(shape: CodeGenNodeArgs, location_name: "Jdbc"))
    Location.add_member(:s3, Shapes::ShapeRef.new(shape: CodeGenNodeArgs, location_name: "S3"))
    Location.add_member(:dynamo_db, Shapes::ShapeRef.new(shape: CodeGenNodeArgs, location_name: "DynamoDB"))
    Location.struct_class = Types::Location

    LocationMap.key = Shapes::ShapeRef.new(shape: ColumnValuesString)
    LocationMap.value = Shapes::ShapeRef.new(shape: ColumnValuesString)

    MLTransform.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TransformId"))
    MLTransform.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    MLTransform.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    MLTransform.add_member(:status, Shapes::ShapeRef.new(shape: TransformStatusType, location_name: "Status"))
    MLTransform.add_member(:created_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedOn"))
    MLTransform.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedOn"))
    MLTransform.add_member(:input_record_tables, Shapes::ShapeRef.new(shape: GlueTables, location_name: "InputRecordTables"))
    MLTransform.add_member(:parameters, Shapes::ShapeRef.new(shape: TransformParameters, location_name: "Parameters"))
    MLTransform.add_member(:evaluation_metrics, Shapes::ShapeRef.new(shape: EvaluationMetrics, location_name: "EvaluationMetrics"))
    MLTransform.add_member(:label_count, Shapes::ShapeRef.new(shape: LabelCount, location_name: "LabelCount"))
    MLTransform.add_member(:schema, Shapes::ShapeRef.new(shape: TransformSchema, location_name: "Schema"))
    MLTransform.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, location_name: "Role"))
    MLTransform.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    MLTransform.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    MLTransform.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    MLTransform.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    MLTransform.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    MLTransform.add_member(:max_retries, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaxRetries"))
    MLTransform.struct_class = Types::MLTransform

    MLTransformNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    MLTransformNotReadyException.struct_class = Types::MLTransformNotReadyException

    MapValue.key = Shapes::ShapeRef.new(shape: GenericString)
    MapValue.value = Shapes::ShapeRef.new(shape: GenericString)

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

    NoScheduleException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    NoScheduleException.struct_class = Types::NoScheduleException

    Node.add_member(:type, Shapes::ShapeRef.new(shape: NodeType, location_name: "Type"))
    Node.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    Node.add_member(:unique_id, Shapes::ShapeRef.new(shape: NameString, location_name: "UniqueId"))
    Node.add_member(:trigger_details, Shapes::ShapeRef.new(shape: TriggerNodeDetails, location_name: "TriggerDetails"))
    Node.add_member(:job_details, Shapes::ShapeRef.new(shape: JobNodeDetails, location_name: "JobDetails"))
    Node.add_member(:crawler_details, Shapes::ShapeRef.new(shape: CrawlerNodeDetails, location_name: "CrawlerDetails"))
    Node.struct_class = Types::Node

    NodeList.member = Shapes::ShapeRef.new(shape: Node)

    NotificationProperty.add_member(:notify_delay_after, Shapes::ShapeRef.new(shape: NotifyDelayAfter, location_name: "NotifyDelayAfter"))
    NotificationProperty.struct_class = Types::NotificationProperty

    OperationTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    OperationTimeoutException.struct_class = Types::OperationTimeoutException

    OrchestrationStringList.member = Shapes::ShapeRef.new(shape: GenericString)

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

    PermissionList.member = Shapes::ShapeRef.new(shape: Permission)

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

    PrincipalPermissions.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: "Principal"))
    PrincipalPermissions.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    PrincipalPermissions.struct_class = Types::PrincipalPermissions

    PrincipalPermissionsList.member = Shapes::ShapeRef.new(shape: PrincipalPermissions)

    PropertyPredicate.add_member(:key, Shapes::ShapeRef.new(shape: ValueString, location_name: "Key"))
    PropertyPredicate.add_member(:value, Shapes::ShapeRef.new(shape: ValueString, location_name: "Value"))
    PropertyPredicate.add_member(:comparator, Shapes::ShapeRef.new(shape: Comparator, location_name: "Comparator"))
    PropertyPredicate.struct_class = Types::PropertyPredicate

    PublicKeysList.member = Shapes::ShapeRef.new(shape: GenericString)

    PutDataCatalogEncryptionSettingsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    PutDataCatalogEncryptionSettingsRequest.add_member(:data_catalog_encryption_settings, Shapes::ShapeRef.new(shape: DataCatalogEncryptionSettings, required: true, location_name: "DataCatalogEncryptionSettings"))
    PutDataCatalogEncryptionSettingsRequest.struct_class = Types::PutDataCatalogEncryptionSettingsRequest

    PutDataCatalogEncryptionSettingsResponse.struct_class = Types::PutDataCatalogEncryptionSettingsResponse

    PutResourcePolicyRequest.add_member(:policy_in_json, Shapes::ShapeRef.new(shape: PolicyJsonString, required: true, location_name: "PolicyInJson"))
    PutResourcePolicyRequest.add_member(:policy_hash_condition, Shapes::ShapeRef.new(shape: HashString, location_name: "PolicyHashCondition"))
    PutResourcePolicyRequest.add_member(:policy_exists_condition, Shapes::ShapeRef.new(shape: ExistCondition, location_name: "PolicyExistsCondition"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:policy_hash, Shapes::ShapeRef.new(shape: HashString, location_name: "PolicyHash"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    PutWorkflowRunPropertiesRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    PutWorkflowRunPropertiesRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    PutWorkflowRunPropertiesRequest.add_member(:run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, required: true, location_name: "RunProperties"))
    PutWorkflowRunPropertiesRequest.struct_class = Types::PutWorkflowRunPropertiesRequest

    PutWorkflowRunPropertiesResponse.struct_class = Types::PutWorkflowRunPropertiesResponse

    ResetJobBookmarkRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "JobName"))
    ResetJobBookmarkRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: RunId, location_name: "RunId"))
    ResetJobBookmarkRequest.struct_class = Types::ResetJobBookmarkRequest

    ResetJobBookmarkResponse.add_member(:job_bookmark_entry, Shapes::ShapeRef.new(shape: JobBookmarkEntry, location_name: "JobBookmarkEntry"))
    ResetJobBookmarkResponse.struct_class = Types::ResetJobBookmarkResponse

    ResourceNumberLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ResourceNumberLimitExceededException.struct_class = Types::ResourceNumberLimitExceededException

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

    SchedulerNotRunningException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    SchedulerNotRunningException.struct_class = Types::SchedulerNotRunningException

    SchedulerRunningException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    SchedulerRunningException.struct_class = Types::SchedulerRunningException

    SchedulerTransitioningException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    SchedulerTransitioningException.struct_class = Types::SchedulerTransitioningException

    SchemaChangePolicy.add_member(:update_behavior, Shapes::ShapeRef.new(shape: UpdateBehavior, location_name: "UpdateBehavior"))
    SchemaChangePolicy.add_member(:delete_behavior, Shapes::ShapeRef.new(shape: DeleteBehavior, location_name: "DeleteBehavior"))
    SchemaChangePolicy.struct_class = Types::SchemaChangePolicy

    SchemaColumn.add_member(:name, Shapes::ShapeRef.new(shape: ColumnNameString, location_name: "Name"))
    SchemaColumn.add_member(:data_type, Shapes::ShapeRef.new(shape: ColumnTypeString, location_name: "DataType"))
    SchemaColumn.struct_class = Types::SchemaColumn

    SearchPropertyPredicates.member = Shapes::ShapeRef.new(shape: PropertyPredicate)

    SearchTablesRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    SearchTablesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchTablesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchPropertyPredicates, location_name: "Filters"))
    SearchTablesRequest.add_member(:search_text, Shapes::ShapeRef.new(shape: ValueString, location_name: "SearchText"))
    SearchTablesRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "SortCriteria"))
    SearchTablesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    SearchTablesRequest.struct_class = Types::SearchTablesRequest

    SearchTablesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchTablesResponse.add_member(:table_list, Shapes::ShapeRef.new(shape: TableList, location_name: "TableList"))
    SearchTablesResponse.struct_class = Types::SearchTablesResponse

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

    SortCriteria.member = Shapes::ShapeRef.new(shape: SortCriterion)

    SortCriterion.add_member(:field_name, Shapes::ShapeRef.new(shape: ValueString, location_name: "FieldName"))
    SortCriterion.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location_name: "Sort"))
    SortCriterion.struct_class = Types::SortCriterion

    StartCrawlerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    StartCrawlerRequest.struct_class = Types::StartCrawlerRequest

    StartCrawlerResponse.struct_class = Types::StartCrawlerResponse

    StartCrawlerScheduleRequest.add_member(:crawler_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "CrawlerName"))
    StartCrawlerScheduleRequest.struct_class = Types::StartCrawlerScheduleRequest

    StartCrawlerScheduleResponse.struct_class = Types::StartCrawlerScheduleResponse

    StartExportLabelsTaskRunRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    StartExportLabelsTaskRunRequest.add_member(:output_s3_path, Shapes::ShapeRef.new(shape: UriString, required: true, location_name: "OutputS3Path"))
    StartExportLabelsTaskRunRequest.struct_class = Types::StartExportLabelsTaskRunRequest

    StartExportLabelsTaskRunResponse.add_member(:task_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TaskRunId"))
    StartExportLabelsTaskRunResponse.struct_class = Types::StartExportLabelsTaskRunResponse

    StartImportLabelsTaskRunRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    StartImportLabelsTaskRunRequest.add_member(:input_s3_path, Shapes::ShapeRef.new(shape: UriString, required: true, location_name: "InputS3Path"))
    StartImportLabelsTaskRunRequest.add_member(:replace_all_labels, Shapes::ShapeRef.new(shape: ReplaceBoolean, location_name: "ReplaceAllLabels"))
    StartImportLabelsTaskRunRequest.struct_class = Types::StartImportLabelsTaskRunRequest

    StartImportLabelsTaskRunResponse.add_member(:task_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TaskRunId"))
    StartImportLabelsTaskRunResponse.struct_class = Types::StartImportLabelsTaskRunResponse

    StartJobRunRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "JobName"))
    StartJobRunRequest.add_member(:job_run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "JobRunId"))
    StartJobRunRequest.add_member(:arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "Arguments"))
    StartJobRunRequest.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, deprecated: true, location_name: "AllocatedCapacity", metadata: {"deprecatedMessage"=>"This property is deprecated, use MaxCapacity instead."}))
    StartJobRunRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    StartJobRunRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    StartJobRunRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    StartJobRunRequest.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    StartJobRunRequest.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    StartJobRunRequest.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    StartJobRunRequest.struct_class = Types::StartJobRunRequest

    StartJobRunResponse.add_member(:job_run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "JobRunId"))
    StartJobRunResponse.struct_class = Types::StartJobRunResponse

    StartMLEvaluationTaskRunRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    StartMLEvaluationTaskRunRequest.struct_class = Types::StartMLEvaluationTaskRunRequest

    StartMLEvaluationTaskRunResponse.add_member(:task_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TaskRunId"))
    StartMLEvaluationTaskRunResponse.struct_class = Types::StartMLEvaluationTaskRunResponse

    StartMLLabelingSetGenerationTaskRunRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    StartMLLabelingSetGenerationTaskRunRequest.add_member(:output_s3_path, Shapes::ShapeRef.new(shape: UriString, required: true, location_name: "OutputS3Path"))
    StartMLLabelingSetGenerationTaskRunRequest.struct_class = Types::StartMLLabelingSetGenerationTaskRunRequest

    StartMLLabelingSetGenerationTaskRunResponse.add_member(:task_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TaskRunId"))
    StartMLLabelingSetGenerationTaskRunResponse.struct_class = Types::StartMLLabelingSetGenerationTaskRunResponse

    StartTriggerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    StartTriggerRequest.struct_class = Types::StartTriggerRequest

    StartTriggerResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    StartTriggerResponse.struct_class = Types::StartTriggerResponse

    StartWorkflowRunRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    StartWorkflowRunRequest.struct_class = Types::StartWorkflowRunRequest

    StartWorkflowRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    StartWorkflowRunResponse.struct_class = Types::StartWorkflowRunResponse

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

    StopWorkflowRunRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    StopWorkflowRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    StopWorkflowRunRequest.struct_class = Types::StopWorkflowRunRequest

    StopWorkflowRunResponse.struct_class = Types::StopWorkflowRunResponse

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
    Table.add_member(:is_registered_with_lake_formation, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRegisteredWithLakeFormation"))
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

    TagKeysList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags_to_add, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "TagsToAdd"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TaskRun.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TransformId"))
    TaskRun.add_member(:task_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TaskRunId"))
    TaskRun.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatusType, location_name: "Status"))
    TaskRun.add_member(:log_group_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "LogGroupName"))
    TaskRun.add_member(:properties, Shapes::ShapeRef.new(shape: TaskRunProperties, location_name: "Properties"))
    TaskRun.add_member(:error_string, Shapes::ShapeRef.new(shape: GenericString, location_name: "ErrorString"))
    TaskRun.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedOn"))
    TaskRun.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedOn"))
    TaskRun.add_member(:completed_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedOn"))
    TaskRun.add_member(:execution_time, Shapes::ShapeRef.new(shape: ExecutionTime, location_name: "ExecutionTime"))
    TaskRun.struct_class = Types::TaskRun

    TaskRunFilterCriteria.add_member(:task_run_type, Shapes::ShapeRef.new(shape: TaskType, location_name: "TaskRunType"))
    TaskRunFilterCriteria.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatusType, location_name: "Status"))
    TaskRunFilterCriteria.add_member(:started_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedBefore"))
    TaskRunFilterCriteria.add_member(:started_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedAfter"))
    TaskRunFilterCriteria.struct_class = Types::TaskRunFilterCriteria

    TaskRunList.member = Shapes::ShapeRef.new(shape: TaskRun)

    TaskRunProperties.add_member(:task_type, Shapes::ShapeRef.new(shape: TaskType, location_name: "TaskType"))
    TaskRunProperties.add_member(:import_labels_task_run_properties, Shapes::ShapeRef.new(shape: ImportLabelsTaskRunProperties, location_name: "ImportLabelsTaskRunProperties"))
    TaskRunProperties.add_member(:export_labels_task_run_properties, Shapes::ShapeRef.new(shape: ExportLabelsTaskRunProperties, location_name: "ExportLabelsTaskRunProperties"))
    TaskRunProperties.add_member(:labeling_set_generation_task_run_properties, Shapes::ShapeRef.new(shape: LabelingSetGenerationTaskRunProperties, location_name: "LabelingSetGenerationTaskRunProperties"))
    TaskRunProperties.add_member(:find_matches_task_run_properties, Shapes::ShapeRef.new(shape: FindMatchesTaskRunProperties, location_name: "FindMatchesTaskRunProperties"))
    TaskRunProperties.struct_class = Types::TaskRunProperties

    TaskRunSortCriteria.add_member(:column, Shapes::ShapeRef.new(shape: TaskRunSortColumnType, required: true, location_name: "Column"))
    TaskRunSortCriteria.add_member(:sort_direction, Shapes::ShapeRef.new(shape: SortDirectionType, required: true, location_name: "SortDirection"))
    TaskRunSortCriteria.struct_class = Types::TaskRunSortCriteria

    TransformFilterCriteria.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    TransformFilterCriteria.add_member(:transform_type, Shapes::ShapeRef.new(shape: TransformType, location_name: "TransformType"))
    TransformFilterCriteria.add_member(:status, Shapes::ShapeRef.new(shape: TransformStatusType, location_name: "Status"))
    TransformFilterCriteria.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    TransformFilterCriteria.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    TransformFilterCriteria.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    TransformFilterCriteria.add_member(:last_modified_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedBefore"))
    TransformFilterCriteria.add_member(:last_modified_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedAfter"))
    TransformFilterCriteria.add_member(:schema, Shapes::ShapeRef.new(shape: TransformSchema, location_name: "Schema"))
    TransformFilterCriteria.struct_class = Types::TransformFilterCriteria

    TransformIdList.member = Shapes::ShapeRef.new(shape: HashString)

    TransformList.member = Shapes::ShapeRef.new(shape: MLTransform)

    TransformParameters.add_member(:transform_type, Shapes::ShapeRef.new(shape: TransformType, required: true, location_name: "TransformType"))
    TransformParameters.add_member(:find_matches_parameters, Shapes::ShapeRef.new(shape: FindMatchesParameters, location_name: "FindMatchesParameters"))
    TransformParameters.struct_class = Types::TransformParameters

    TransformSchema.member = Shapes::ShapeRef.new(shape: SchemaColumn)

    TransformSortCriteria.add_member(:column, Shapes::ShapeRef.new(shape: TransformSortColumnType, required: true, location_name: "Column"))
    TransformSortCriteria.add_member(:sort_direction, Shapes::ShapeRef.new(shape: SortDirectionType, required: true, location_name: "SortDirection"))
    TransformSortCriteria.struct_class = Types::TransformSortCriteria

    Trigger.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    Trigger.add_member(:workflow_name, Shapes::ShapeRef.new(shape: NameString, location_name: "WorkflowName"))
    Trigger.add_member(:id, Shapes::ShapeRef.new(shape: IdString, location_name: "Id"))
    Trigger.add_member(:type, Shapes::ShapeRef.new(shape: TriggerType, location_name: "Type"))
    Trigger.add_member(:state, Shapes::ShapeRef.new(shape: TriggerState, location_name: "State"))
    Trigger.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Trigger.add_member(:schedule, Shapes::ShapeRef.new(shape: GenericString, location_name: "Schedule"))
    Trigger.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, location_name: "Actions"))
    Trigger.add_member(:predicate, Shapes::ShapeRef.new(shape: Predicate, location_name: "Predicate"))
    Trigger.struct_class = Types::Trigger

    TriggerList.member = Shapes::ShapeRef.new(shape: Trigger)

    TriggerNameList.member = Shapes::ShapeRef.new(shape: NameString)

    TriggerNodeDetails.add_member(:trigger, Shapes::ShapeRef.new(shape: Trigger, location_name: "Trigger"))
    TriggerNodeDetails.struct_class = Types::TriggerNodeDetails

    TriggerUpdate.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    TriggerUpdate.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    TriggerUpdate.add_member(:schedule, Shapes::ShapeRef.new(shape: GenericString, location_name: "Schedule"))
    TriggerUpdate.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, location_name: "Actions"))
    TriggerUpdate.add_member(:predicate, Shapes::ShapeRef.new(shape: Predicate, location_name: "Predicate"))
    TriggerUpdate.struct_class = Types::TriggerUpdate

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tags_to_remove, Shapes::ShapeRef.new(shape: TagKeysList, required: true, location_name: "TagsToRemove"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateClassifierRequest.add_member(:grok_classifier, Shapes::ShapeRef.new(shape: UpdateGrokClassifierRequest, location_name: "GrokClassifier"))
    UpdateClassifierRequest.add_member(:xml_classifier, Shapes::ShapeRef.new(shape: UpdateXMLClassifierRequest, location_name: "XMLClassifier"))
    UpdateClassifierRequest.add_member(:json_classifier, Shapes::ShapeRef.new(shape: UpdateJsonClassifierRequest, location_name: "JsonClassifier"))
    UpdateClassifierRequest.add_member(:csv_classifier, Shapes::ShapeRef.new(shape: UpdateCsvClassifierRequest, location_name: "CsvClassifier"))
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

    UpdateCsvClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateCsvClassifierRequest.add_member(:delimiter, Shapes::ShapeRef.new(shape: CsvColumnDelimiter, location_name: "Delimiter"))
    UpdateCsvClassifierRequest.add_member(:quote_symbol, Shapes::ShapeRef.new(shape: CsvQuoteSymbol, location_name: "QuoteSymbol"))
    UpdateCsvClassifierRequest.add_member(:contains_header, Shapes::ShapeRef.new(shape: CsvHeaderOption, location_name: "ContainsHeader"))
    UpdateCsvClassifierRequest.add_member(:header, Shapes::ShapeRef.new(shape: CsvHeader, location_name: "Header"))
    UpdateCsvClassifierRequest.add_member(:disable_value_trimming, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "DisableValueTrimming"))
    UpdateCsvClassifierRequest.add_member(:allow_single_column, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "AllowSingleColumn"))
    UpdateCsvClassifierRequest.struct_class = Types::UpdateCsvClassifierRequest

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
    UpdateDevEndpointRequest.add_member(:delete_arguments, Shapes::ShapeRef.new(shape: StringList, location_name: "DeleteArguments"))
    UpdateDevEndpointRequest.add_member(:add_arguments, Shapes::ShapeRef.new(shape: MapValue, location_name: "AddArguments"))
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

    UpdateMLTransformRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    UpdateMLTransformRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    UpdateMLTransformRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    UpdateMLTransformRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: TransformParameters, location_name: "Parameters"))
    UpdateMLTransformRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, location_name: "Role"))
    UpdateMLTransformRequest.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    UpdateMLTransformRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    UpdateMLTransformRequest.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    UpdateMLTransformRequest.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    UpdateMLTransformRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    UpdateMLTransformRequest.add_member(:max_retries, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaxRetries"))
    UpdateMLTransformRequest.struct_class = Types::UpdateMLTransformRequest

    UpdateMLTransformResponse.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TransformId"))
    UpdateMLTransformResponse.struct_class = Types::UpdateMLTransformResponse

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

    UpdateWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    UpdateWorkflowRequest.add_member(:default_run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, location_name: "DefaultRunProperties"))
    UpdateWorkflowRequest.struct_class = Types::UpdateWorkflowRequest

    UpdateWorkflowResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    UpdateWorkflowResponse.struct_class = Types::UpdateWorkflowResponse

    UpdateXMLClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateXMLClassifierRequest.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, location_name: "Classification"))
    UpdateXMLClassifierRequest.add_member(:row_tag, Shapes::ShapeRef.new(shape: RowTag, location_name: "RowTag"))
    UpdateXMLClassifierRequest.struct_class = Types::UpdateXMLClassifierRequest

    UserDefinedFunction.add_member(:function_name, Shapes::ShapeRef.new(shape: NameString, location_name: "FunctionName"))
    UserDefinedFunction.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DatabaseName"))
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

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    ValueStringList.member = Shapes::ShapeRef.new(shape: ValueString)

    VersionMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    VersionMismatchException.struct_class = Types::VersionMismatchException

    Workflow.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    Workflow.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    Workflow.add_member(:default_run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, location_name: "DefaultRunProperties"))
    Workflow.add_member(:created_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedOn"))
    Workflow.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "LastModifiedOn"))
    Workflow.add_member(:last_run, Shapes::ShapeRef.new(shape: WorkflowRun, location_name: "LastRun"))
    Workflow.add_member(:graph, Shapes::ShapeRef.new(shape: WorkflowGraph, location_name: "Graph"))
    Workflow.struct_class = Types::Workflow

    WorkflowGraph.add_member(:nodes, Shapes::ShapeRef.new(shape: NodeList, location_name: "Nodes"))
    WorkflowGraph.add_member(:edges, Shapes::ShapeRef.new(shape: EdgeList, location_name: "Edges"))
    WorkflowGraph.struct_class = Types::WorkflowGraph

    WorkflowNames.member = Shapes::ShapeRef.new(shape: NameString)

    WorkflowRun.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    WorkflowRun.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "WorkflowRunId"))
    WorkflowRun.add_member(:workflow_run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, location_name: "WorkflowRunProperties"))
    WorkflowRun.add_member(:started_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "StartedOn"))
    WorkflowRun.add_member(:completed_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CompletedOn"))
    WorkflowRun.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowRunStatus, location_name: "Status"))
    WorkflowRun.add_member(:statistics, Shapes::ShapeRef.new(shape: WorkflowRunStatistics, location_name: "Statistics"))
    WorkflowRun.add_member(:graph, Shapes::ShapeRef.new(shape: WorkflowGraph, location_name: "Graph"))
    WorkflowRun.struct_class = Types::WorkflowRun

    WorkflowRunProperties.key = Shapes::ShapeRef.new(shape: IdString)
    WorkflowRunProperties.value = Shapes::ShapeRef.new(shape: GenericString)

    WorkflowRunStatistics.add_member(:total_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "TotalActions"))
    WorkflowRunStatistics.add_member(:timeout_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "TimeoutActions"))
    WorkflowRunStatistics.add_member(:failed_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "FailedActions"))
    WorkflowRunStatistics.add_member(:stopped_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "StoppedActions"))
    WorkflowRunStatistics.add_member(:succeeded_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "SucceededActions"))
    WorkflowRunStatistics.add_member(:running_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "RunningActions"))
    WorkflowRunStatistics.struct_class = Types::WorkflowRunStatistics

    WorkflowRuns.member = Shapes::ShapeRef.new(shape: WorkflowRun)

    Workflows.member = Shapes::ShapeRef.new(shape: Workflow)

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

      api.add_operation(:batch_get_crawlers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetCrawlers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetCrawlersRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetCrawlersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:batch_get_dev_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetDevEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetDevEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetDevEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:batch_get_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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

      api.add_operation(:batch_get_triggers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetTriggers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetTriggersRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetTriggersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:batch_get_workflows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetWorkflows"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetWorkflowsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetWorkflowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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

      api.add_operation(:cancel_ml_task_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelMLTaskRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelMLTaskRunRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelMLTaskRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:create_ml_transform, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMLTransform"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMLTransformRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMLTransformResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
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
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
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

      api.add_operation(:create_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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

      api.add_operation(:delete_ml_transform, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMLTransform"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMLTransformRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMLTransformResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ConditionCheckFailureException)
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

      api.add_operation(:delete_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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

      api.add_operation(:get_data_catalog_encryption_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataCatalogEncryptionSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataCatalogEncryptionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataCatalogEncryptionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
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

      api.add_operation(:get_job_bookmark, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobBookmark"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetJobBookmarkRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobBookmarkResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:get_ml_task_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMLTaskRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMLTaskRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMLTaskRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_ml_task_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMLTaskRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMLTaskRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMLTaskRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
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

      api.add_operation(:get_ml_transform, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMLTransform"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMLTransformRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMLTransformResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_ml_transforms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMLTransforms"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMLTransformsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMLTransformsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
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

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:get_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
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

      api.add_operation(:get_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_workflow_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_workflow_run_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowRunProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowRunPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowRunPropertiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_workflow_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowRunsResponse)
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

      api.add_operation(:import_catalog_to_glue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportCatalogToGlue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportCatalogToGlueRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportCatalogToGlueResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:list_crawlers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCrawlers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCrawlersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCrawlersResponse)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dev_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDevEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevEndpointsResponse)
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

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsResponse)
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

      api.add_operation(:list_ml_transforms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMLTransforms"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMLTransformsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMLTransformsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
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

      api.add_operation(:list_triggers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTriggers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTriggersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTriggersResponse)
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

      api.add_operation(:list_workflows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflows"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowsResponse)
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

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ConditionCheckFailureException)
      end)

      api.add_operation(:put_workflow_run_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutWorkflowRunProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutWorkflowRunPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutWorkflowRunPropertiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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

      api.add_operation(:search_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchTables"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchTablesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchTablesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:start_export_labels_task_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExportLabelsTaskRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartExportLabelsTaskRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartExportLabelsTaskRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:start_import_labels_task_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImportLabelsTaskRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartImportLabelsTaskRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartImportLabelsTaskRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:start_ml_evaluation_task_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMLEvaluationTaskRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMLEvaluationTaskRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMLEvaluationTaskRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentRunsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MLTransformNotReadyException)
      end)

      api.add_operation(:start_ml_labeling_set_generation_task_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMLLabelingSetGenerationTaskRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMLLabelingSetGenerationTaskRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMLLabelingSetGenerationTaskRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:start_workflow_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartWorkflowRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartWorkflowRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartWorkflowRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:stop_workflow_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopWorkflowRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopWorkflowRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StopWorkflowRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalWorkflowStateException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
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

      api.add_operation(:update_ml_transform, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMLTransform"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMLTransformRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMLTransformResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:update_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)
    end

  end
end
