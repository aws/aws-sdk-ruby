# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Glue
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSManagedClientApplicationReference = Shapes::StringShape.new(name: 'AWSManagedClientApplicationReference')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessToken = Shapes::StringShape.new(name: 'AccessToken')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Action = Shapes::StructureShape.new(name: 'Action')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    AdditionalContextMap = Shapes::MapShape.new(name: 'AdditionalContextMap')
    AdditionalOptionKeys = Shapes::StringShape.new(name: 'AdditionalOptionKeys')
    AdditionalOptions = Shapes::MapShape.new(name: 'AdditionalOptions')
    AdditionalPlanOptionsMap = Shapes::MapShape.new(name: 'AdditionalPlanOptionsMap')
    AggFunction = Shapes::StringShape.new(name: 'AggFunction')
    Aggregate = Shapes::StructureShape.new(name: 'Aggregate')
    AggregateOperation = Shapes::StructureShape.new(name: 'AggregateOperation')
    AggregateOperations = Shapes::ListShape.new(name: 'AggregateOperations')
    AllowFullTableExternalDataAccessEnum = Shapes::StringShape.new(name: 'AllowFullTableExternalDataAccessEnum')
    AllowedValue = Shapes::StructureShape.new(name: 'AllowedValue')
    AllowedValueDescriptionString = Shapes::StringShape.new(name: 'AllowedValueDescriptionString')
    AllowedValueValueString = Shapes::StringShape.new(name: 'AllowedValueValueString')
    AllowedValues = Shapes::ListShape.new(name: 'AllowedValues')
    AllowedValuesStringList = Shapes::ListShape.new(name: 'AllowedValuesStringList')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    AmazonRedshiftAdvancedOption = Shapes::StructureShape.new(name: 'AmazonRedshiftAdvancedOption')
    AmazonRedshiftAdvancedOptions = Shapes::ListShape.new(name: 'AmazonRedshiftAdvancedOptions')
    AmazonRedshiftNodeData = Shapes::StructureShape.new(name: 'AmazonRedshiftNodeData')
    AmazonRedshiftSource = Shapes::StructureShape.new(name: 'AmazonRedshiftSource')
    AmazonRedshiftTarget = Shapes::StructureShape.new(name: 'AmazonRedshiftTarget')
    AnnotationError = Shapes::StructureShape.new(name: 'AnnotationError')
    AnnotationErrorList = Shapes::ListShape.new(name: 'AnnotationErrorList')
    AnnotationList = Shapes::ListShape.new(name: 'AnnotationList')
    ApiVersion = Shapes::StringShape.new(name: 'ApiVersion')
    ApplyMapping = Shapes::StructureShape.new(name: 'ApplyMapping')
    ArnString = Shapes::StringShape.new(name: 'ArnString')
    AthenaConnectorSource = Shapes::StructureShape.new(name: 'AthenaConnectorSource')
    AttemptCount = Shapes::IntegerShape.new(name: 'AttemptCount')
    AuditColumnNamesList = Shapes::ListShape.new(name: 'AuditColumnNamesList')
    AuditContext = Shapes::StructureShape.new(name: 'AuditContext')
    AuditContextString = Shapes::StringShape.new(name: 'AuditContextString')
    AuthConfiguration = Shapes::StructureShape.new(name: 'AuthConfiguration')
    AuthTokenString = Shapes::StringShape.new(name: 'AuthTokenString')
    AuthenticationConfiguration = Shapes::StructureShape.new(name: 'AuthenticationConfiguration')
    AuthenticationConfigurationInput = Shapes::StructureShape.new(name: 'AuthenticationConfigurationInput')
    AuthenticationType = Shapes::StringShape.new(name: 'AuthenticationType')
    AuthenticationTypes = Shapes::ListShape.new(name: 'AuthenticationTypes')
    AuthorizationCode = Shapes::StringShape.new(name: 'AuthorizationCode')
    AuthorizationCodeProperties = Shapes::StructureShape.new(name: 'AuthorizationCodeProperties')
    BackfillError = Shapes::StructureShape.new(name: 'BackfillError')
    BackfillErrorCode = Shapes::StringShape.new(name: 'BackfillErrorCode')
    BackfillErroredPartitionsList = Shapes::ListShape.new(name: 'BackfillErroredPartitionsList')
    BackfillErrors = Shapes::ListShape.new(name: 'BackfillErrors')
    BasicAuthenticationCredentials = Shapes::StructureShape.new(name: 'BasicAuthenticationCredentials')
    BasicCatalogTarget = Shapes::StructureShape.new(name: 'BasicCatalogTarget')
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
    BatchGetBlueprintNames = Shapes::ListShape.new(name: 'BatchGetBlueprintNames')
    BatchGetBlueprintsRequest = Shapes::StructureShape.new(name: 'BatchGetBlueprintsRequest')
    BatchGetBlueprintsResponse = Shapes::StructureShape.new(name: 'BatchGetBlueprintsResponse')
    BatchGetCrawlersRequest = Shapes::StructureShape.new(name: 'BatchGetCrawlersRequest')
    BatchGetCrawlersResponse = Shapes::StructureShape.new(name: 'BatchGetCrawlersResponse')
    BatchGetCustomEntityTypesRequest = Shapes::StructureShape.new(name: 'BatchGetCustomEntityTypesRequest')
    BatchGetCustomEntityTypesResponse = Shapes::StructureShape.new(name: 'BatchGetCustomEntityTypesResponse')
    BatchGetDataQualityResultRequest = Shapes::StructureShape.new(name: 'BatchGetDataQualityResultRequest')
    BatchGetDataQualityResultResponse = Shapes::StructureShape.new(name: 'BatchGetDataQualityResultResponse')
    BatchGetDevEndpointsRequest = Shapes::StructureShape.new(name: 'BatchGetDevEndpointsRequest')
    BatchGetDevEndpointsResponse = Shapes::StructureShape.new(name: 'BatchGetDevEndpointsResponse')
    BatchGetJobsRequest = Shapes::StructureShape.new(name: 'BatchGetJobsRequest')
    BatchGetJobsResponse = Shapes::StructureShape.new(name: 'BatchGetJobsResponse')
    BatchGetPartitionRequest = Shapes::StructureShape.new(name: 'BatchGetPartitionRequest')
    BatchGetPartitionResponse = Shapes::StructureShape.new(name: 'BatchGetPartitionResponse')
    BatchGetPartitionValueList = Shapes::ListShape.new(name: 'BatchGetPartitionValueList')
    BatchGetTableOptimizerEntries = Shapes::ListShape.new(name: 'BatchGetTableOptimizerEntries')
    BatchGetTableOptimizerEntry = Shapes::StructureShape.new(name: 'BatchGetTableOptimizerEntry')
    BatchGetTableOptimizerError = Shapes::StructureShape.new(name: 'BatchGetTableOptimizerError')
    BatchGetTableOptimizerErrors = Shapes::ListShape.new(name: 'BatchGetTableOptimizerErrors')
    BatchGetTableOptimizerRequest = Shapes::StructureShape.new(name: 'BatchGetTableOptimizerRequest')
    BatchGetTableOptimizerResponse = Shapes::StructureShape.new(name: 'BatchGetTableOptimizerResponse')
    BatchGetTriggersRequest = Shapes::StructureShape.new(name: 'BatchGetTriggersRequest')
    BatchGetTriggersResponse = Shapes::StructureShape.new(name: 'BatchGetTriggersResponse')
    BatchGetWorkflowsRequest = Shapes::StructureShape.new(name: 'BatchGetWorkflowsRequest')
    BatchGetWorkflowsResponse = Shapes::StructureShape.new(name: 'BatchGetWorkflowsResponse')
    BatchPutDataQualityStatisticAnnotationRequest = Shapes::StructureShape.new(name: 'BatchPutDataQualityStatisticAnnotationRequest')
    BatchPutDataQualityStatisticAnnotationResponse = Shapes::StructureShape.new(name: 'BatchPutDataQualityStatisticAnnotationResponse')
    BatchSize = Shapes::IntegerShape.new(name: 'BatchSize')
    BatchStopJobRunError = Shapes::StructureShape.new(name: 'BatchStopJobRunError')
    BatchStopJobRunErrorList = Shapes::ListShape.new(name: 'BatchStopJobRunErrorList')
    BatchStopJobRunJobRunIdList = Shapes::ListShape.new(name: 'BatchStopJobRunJobRunIdList')
    BatchStopJobRunRequest = Shapes::StructureShape.new(name: 'BatchStopJobRunRequest')
    BatchStopJobRunResponse = Shapes::StructureShape.new(name: 'BatchStopJobRunResponse')
    BatchStopJobRunSuccessfulSubmission = Shapes::StructureShape.new(name: 'BatchStopJobRunSuccessfulSubmission')
    BatchStopJobRunSuccessfulSubmissionList = Shapes::ListShape.new(name: 'BatchStopJobRunSuccessfulSubmissionList')
    BatchTableOptimizer = Shapes::StructureShape.new(name: 'BatchTableOptimizer')
    BatchTableOptimizers = Shapes::ListShape.new(name: 'BatchTableOptimizers')
    BatchUpdatePartitionFailureEntry = Shapes::StructureShape.new(name: 'BatchUpdatePartitionFailureEntry')
    BatchUpdatePartitionFailureList = Shapes::ListShape.new(name: 'BatchUpdatePartitionFailureList')
    BatchUpdatePartitionRequest = Shapes::StructureShape.new(name: 'BatchUpdatePartitionRequest')
    BatchUpdatePartitionRequestEntry = Shapes::StructureShape.new(name: 'BatchUpdatePartitionRequestEntry')
    BatchUpdatePartitionRequestEntryList = Shapes::ListShape.new(name: 'BatchUpdatePartitionRequestEntryList')
    BatchUpdatePartitionResponse = Shapes::StructureShape.new(name: 'BatchUpdatePartitionResponse')
    BatchWindow = Shapes::IntegerShape.new(name: 'BatchWindow')
    BinaryColumnStatisticsData = Shapes::StructureShape.new(name: 'BinaryColumnStatisticsData')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Blueprint = Shapes::StructureShape.new(name: 'Blueprint')
    BlueprintDetails = Shapes::StructureShape.new(name: 'BlueprintDetails')
    BlueprintNames = Shapes::ListShape.new(name: 'BlueprintNames')
    BlueprintParameterSpec = Shapes::StringShape.new(name: 'BlueprintParameterSpec')
    BlueprintParameters = Shapes::StringShape.new(name: 'BlueprintParameters')
    BlueprintRun = Shapes::StructureShape.new(name: 'BlueprintRun')
    BlueprintRunState = Shapes::StringShape.new(name: 'BlueprintRunState')
    BlueprintRuns = Shapes::ListShape.new(name: 'BlueprintRuns')
    BlueprintStatus = Shapes::StringShape.new(name: 'BlueprintStatus')
    Blueprints = Shapes::ListShape.new(name: 'Blueprints')
    Bool = Shapes::BooleanShape.new(name: 'Bool')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanColumnStatisticsData = Shapes::StructureShape.new(name: 'BooleanColumnStatisticsData')
    BooleanNullable = Shapes::BooleanShape.new(name: 'BooleanNullable')
    BooleanValue = Shapes::BooleanShape.new(name: 'BooleanValue')
    BoundedPartitionValueList = Shapes::ListShape.new(name: 'BoundedPartitionValueList')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BoxedDoubleFraction = Shapes::FloatShape.new(name: 'BoxedDoubleFraction')
    BoxedLong = Shapes::IntegerShape.new(name: 'BoxedLong')
    BoxedNonNegativeInt = Shapes::IntegerShape.new(name: 'BoxedNonNegativeInt')
    BoxedNonNegativeLong = Shapes::IntegerShape.new(name: 'BoxedNonNegativeLong')
    BoxedPositiveInt = Shapes::IntegerShape.new(name: 'BoxedPositiveInt')
    CancelDataQualityRuleRecommendationRunRequest = Shapes::StructureShape.new(name: 'CancelDataQualityRuleRecommendationRunRequest')
    CancelDataQualityRuleRecommendationRunResponse = Shapes::StructureShape.new(name: 'CancelDataQualityRuleRecommendationRunResponse')
    CancelDataQualityRulesetEvaluationRunRequest = Shapes::StructureShape.new(name: 'CancelDataQualityRulesetEvaluationRunRequest')
    CancelDataQualityRulesetEvaluationRunResponse = Shapes::StructureShape.new(name: 'CancelDataQualityRulesetEvaluationRunResponse')
    CancelMLTaskRunRequest = Shapes::StructureShape.new(name: 'CancelMLTaskRunRequest')
    CancelMLTaskRunResponse = Shapes::StructureShape.new(name: 'CancelMLTaskRunResponse')
    CancelStatementRequest = Shapes::StructureShape.new(name: 'CancelStatementRequest')
    CancelStatementResponse = Shapes::StructureShape.new(name: 'CancelStatementResponse')
    Capabilities = Shapes::StructureShape.new(name: 'Capabilities')
    Catalog = Shapes::StructureShape.new(name: 'Catalog')
    CatalogDeltaSource = Shapes::StructureShape.new(name: 'CatalogDeltaSource')
    CatalogEncryptionMode = Shapes::StringShape.new(name: 'CatalogEncryptionMode')
    CatalogEntries = Shapes::ListShape.new(name: 'CatalogEntries')
    CatalogEntry = Shapes::StructureShape.new(name: 'CatalogEntry')
    CatalogGetterPageSize = Shapes::IntegerShape.new(name: 'CatalogGetterPageSize')
    CatalogHudiSource = Shapes::StructureShape.new(name: 'CatalogHudiSource')
    CatalogIdString = Shapes::StringShape.new(name: 'CatalogIdString')
    CatalogImportStatus = Shapes::StructureShape.new(name: 'CatalogImportStatus')
    CatalogInput = Shapes::StructureShape.new(name: 'CatalogInput')
    CatalogKafkaSource = Shapes::StructureShape.new(name: 'CatalogKafkaSource')
    CatalogKinesisSource = Shapes::StructureShape.new(name: 'CatalogKinesisSource')
    CatalogList = Shapes::ListShape.new(name: 'CatalogList')
    CatalogNameString = Shapes::StringShape.new(name: 'CatalogNameString')
    CatalogProperties = Shapes::StructureShape.new(name: 'CatalogProperties')
    CatalogPropertiesOutput = Shapes::StructureShape.new(name: 'CatalogPropertiesOutput')
    CatalogSchemaChangePolicy = Shapes::StructureShape.new(name: 'CatalogSchemaChangePolicy')
    CatalogSource = Shapes::StructureShape.new(name: 'CatalogSource')
    CatalogTablesList = Shapes::ListShape.new(name: 'CatalogTablesList')
    CatalogTarget = Shapes::StructureShape.new(name: 'CatalogTarget')
    CatalogTargetList = Shapes::ListShape.new(name: 'CatalogTargetList')
    Category = Shapes::StringShape.new(name: 'Category')
    CheckSchemaVersionValidityInput = Shapes::StructureShape.new(name: 'CheckSchemaVersionValidityInput')
    CheckSchemaVersionValidityResponse = Shapes::StructureShape.new(name: 'CheckSchemaVersionValidityResponse')
    Classification = Shapes::StringShape.new(name: 'Classification')
    Classifier = Shapes::StructureShape.new(name: 'Classifier')
    ClassifierList = Shapes::ListShape.new(name: 'ClassifierList')
    ClassifierNameList = Shapes::ListShape.new(name: 'ClassifierNameList')
    CloudWatchEncryption = Shapes::StructureShape.new(name: 'CloudWatchEncryption')
    CloudWatchEncryptionMode = Shapes::StringShape.new(name: 'CloudWatchEncryptionMode')
    CodeGenArgName = Shapes::StringShape.new(name: 'CodeGenArgName')
    CodeGenArgValue = Shapes::StringShape.new(name: 'CodeGenArgValue')
    CodeGenConfigurationNode = Shapes::StructureShape.new(name: 'CodeGenConfigurationNode')
    CodeGenConfigurationNodes = Shapes::MapShape.new(name: 'CodeGenConfigurationNodes')
    CodeGenEdge = Shapes::StructureShape.new(name: 'CodeGenEdge')
    CodeGenIdentifier = Shapes::StringShape.new(name: 'CodeGenIdentifier')
    CodeGenNode = Shapes::StructureShape.new(name: 'CodeGenNode')
    CodeGenNodeArg = Shapes::StructureShape.new(name: 'CodeGenNodeArg')
    CodeGenNodeArgs = Shapes::ListShape.new(name: 'CodeGenNodeArgs')
    CodeGenNodeType = Shapes::StringShape.new(name: 'CodeGenNodeType')
    Column = Shapes::StructureShape.new(name: 'Column')
    ColumnError = Shapes::StructureShape.new(name: 'ColumnError')
    ColumnErrors = Shapes::ListShape.new(name: 'ColumnErrors')
    ColumnImportance = Shapes::StructureShape.new(name: 'ColumnImportance')
    ColumnImportanceList = Shapes::ListShape.new(name: 'ColumnImportanceList')
    ColumnList = Shapes::ListShape.new(name: 'ColumnList')
    ColumnNameList = Shapes::ListShape.new(name: 'ColumnNameList')
    ColumnNameString = Shapes::StringShape.new(name: 'ColumnNameString')
    ColumnRowFilter = Shapes::StructureShape.new(name: 'ColumnRowFilter')
    ColumnRowFilterList = Shapes::ListShape.new(name: 'ColumnRowFilterList')
    ColumnStatistics = Shapes::StructureShape.new(name: 'ColumnStatistics')
    ColumnStatisticsData = Shapes::StructureShape.new(name: 'ColumnStatisticsData')
    ColumnStatisticsError = Shapes::StructureShape.new(name: 'ColumnStatisticsError')
    ColumnStatisticsErrors = Shapes::ListShape.new(name: 'ColumnStatisticsErrors')
    ColumnStatisticsList = Shapes::ListShape.new(name: 'ColumnStatisticsList')
    ColumnStatisticsState = Shapes::StringShape.new(name: 'ColumnStatisticsState')
    ColumnStatisticsTaskNotRunningException = Shapes::StructureShape.new(name: 'ColumnStatisticsTaskNotRunningException')
    ColumnStatisticsTaskRun = Shapes::StructureShape.new(name: 'ColumnStatisticsTaskRun')
    ColumnStatisticsTaskRunIdList = Shapes::ListShape.new(name: 'ColumnStatisticsTaskRunIdList')
    ColumnStatisticsTaskRunningException = Shapes::StructureShape.new(name: 'ColumnStatisticsTaskRunningException')
    ColumnStatisticsTaskRunsList = Shapes::ListShape.new(name: 'ColumnStatisticsTaskRunsList')
    ColumnStatisticsTaskSettings = Shapes::StructureShape.new(name: 'ColumnStatisticsTaskSettings')
    ColumnStatisticsTaskStoppingException = Shapes::StructureShape.new(name: 'ColumnStatisticsTaskStoppingException')
    ColumnStatisticsType = Shapes::StringShape.new(name: 'ColumnStatisticsType')
    ColumnTypeString = Shapes::StringShape.new(name: 'ColumnTypeString')
    ColumnValueStringList = Shapes::ListShape.new(name: 'ColumnValueStringList')
    ColumnValuesString = Shapes::StringShape.new(name: 'ColumnValuesString')
    CommentString = Shapes::StringShape.new(name: 'CommentString')
    CommitIdString = Shapes::StringShape.new(name: 'CommitIdString')
    CompactionConfiguration = Shapes::StructureShape.new(name: 'CompactionConfiguration')
    CompactionMetrics = Shapes::StructureShape.new(name: 'CompactionMetrics')
    CompactionStrategy = Shapes::StringShape.new(name: 'CompactionStrategy')
    Comparator = Shapes::StringShape.new(name: 'Comparator')
    Compatibility = Shapes::StringShape.new(name: 'Compatibility')
    CompressionType = Shapes::StringShape.new(name: 'CompressionType')
    ComputationType = Shapes::StringShape.new(name: 'ComputationType')
    ComputeEnvironment = Shapes::StringShape.new(name: 'ComputeEnvironment')
    ComputeEnvironmentConfiguration = Shapes::StructureShape.new(name: 'ComputeEnvironmentConfiguration')
    ComputeEnvironmentConfigurationDescriptionString = Shapes::StringShape.new(name: 'ComputeEnvironmentConfigurationDescriptionString')
    ComputeEnvironmentConfigurationMap = Shapes::MapShape.new(name: 'ComputeEnvironmentConfigurationMap')
    ComputeEnvironmentList = Shapes::ListShape.new(name: 'ComputeEnvironmentList')
    ComputeEnvironmentName = Shapes::StringShape.new(name: 'ComputeEnvironmentName')
    ComputeEnvironments = Shapes::ListShape.new(name: 'ComputeEnvironments')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConcurrentRunsExceededException = Shapes::StructureShape.new(name: 'ConcurrentRunsExceededException')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConditionCheckFailureException = Shapes::StructureShape.new(name: 'ConditionCheckFailureException')
    ConditionExpression = Shapes::StructureShape.new(name: 'ConditionExpression')
    ConditionExpressionList = Shapes::ListShape.new(name: 'ConditionExpressionList')
    ConditionList = Shapes::ListShape.new(name: 'ConditionList')
    ConfigValueString = Shapes::StringShape.new(name: 'ConfigValueString')
    ConfigurationMap = Shapes::MapShape.new(name: 'ConfigurationMap')
    ConfigurationObject = Shapes::StructureShape.new(name: 'ConfigurationObject')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConfusionMatrix = Shapes::StructureShape.new(name: 'ConfusionMatrix')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionInput = Shapes::StructureShape.new(name: 'ConnectionInput')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    ConnectionName = Shapes::StringShape.new(name: 'ConnectionName')
    ConnectionOptions = Shapes::MapShape.new(name: 'ConnectionOptions')
    ConnectionPasswordEncryption = Shapes::StructureShape.new(name: 'ConnectionPasswordEncryption')
    ConnectionProperties = Shapes::MapShape.new(name: 'ConnectionProperties')
    ConnectionPropertyKey = Shapes::StringShape.new(name: 'ConnectionPropertyKey')
    ConnectionSchemaVersion = Shapes::IntegerShape.new(name: 'ConnectionSchemaVersion')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    ConnectionString = Shapes::StringShape.new(name: 'ConnectionString')
    ConnectionStringList = Shapes::ListShape.new(name: 'ConnectionStringList')
    ConnectionType = Shapes::StringShape.new(name: 'ConnectionType')
    ConnectionTypeBrief = Shapes::StructureShape.new(name: 'ConnectionTypeBrief')
    ConnectionTypeList = Shapes::ListShape.new(name: 'ConnectionTypeList')
    ConnectionTypeVariant = Shapes::StructureShape.new(name: 'ConnectionTypeVariant')
    ConnectionTypeVariantList = Shapes::ListShape.new(name: 'ConnectionTypeVariantList')
    ConnectionsList = Shapes::StructureShape.new(name: 'ConnectionsList')
    ConnectorDataSource = Shapes::StructureShape.new(name: 'ConnectorDataSource')
    ConnectorDataTarget = Shapes::StructureShape.new(name: 'ConnectorDataTarget')
    ConnectorOptions = Shapes::MapShape.new(name: 'ConnectorOptions')
    ContextKey = Shapes::StringShape.new(name: 'ContextKey')
    ContextValue = Shapes::StringShape.new(name: 'ContextValue')
    ContextWords = Shapes::ListShape.new(name: 'ContextWords')
    Crawl = Shapes::StructureShape.new(name: 'Crawl')
    CrawlId = Shapes::StringShape.new(name: 'CrawlId')
    CrawlList = Shapes::ListShape.new(name: 'CrawlList')
    CrawlState = Shapes::StringShape.new(name: 'CrawlState')
    Crawler = Shapes::StructureShape.new(name: 'Crawler')
    CrawlerConfiguration = Shapes::StringShape.new(name: 'CrawlerConfiguration')
    CrawlerHistory = Shapes::StructureShape.new(name: 'CrawlerHistory')
    CrawlerHistoryList = Shapes::ListShape.new(name: 'CrawlerHistoryList')
    CrawlerHistoryState = Shapes::StringShape.new(name: 'CrawlerHistoryState')
    CrawlerLineageSettings = Shapes::StringShape.new(name: 'CrawlerLineageSettings')
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
    CrawlsFilter = Shapes::StructureShape.new(name: 'CrawlsFilter')
    CrawlsFilterList = Shapes::ListShape.new(name: 'CrawlsFilterList')
    CreateBlueprintRequest = Shapes::StructureShape.new(name: 'CreateBlueprintRequest')
    CreateBlueprintResponse = Shapes::StructureShape.new(name: 'CreateBlueprintResponse')
    CreateCatalogRequest = Shapes::StructureShape.new(name: 'CreateCatalogRequest')
    CreateCatalogResponse = Shapes::StructureShape.new(name: 'CreateCatalogResponse')
    CreateClassifierRequest = Shapes::StructureShape.new(name: 'CreateClassifierRequest')
    CreateClassifierResponse = Shapes::StructureShape.new(name: 'CreateClassifierResponse')
    CreateColumnStatisticsTaskSettingsRequest = Shapes::StructureShape.new(name: 'CreateColumnStatisticsTaskSettingsRequest')
    CreateColumnStatisticsTaskSettingsResponse = Shapes::StructureShape.new(name: 'CreateColumnStatisticsTaskSettingsResponse')
    CreateConnectionRequest = Shapes::StructureShape.new(name: 'CreateConnectionRequest')
    CreateConnectionResponse = Shapes::StructureShape.new(name: 'CreateConnectionResponse')
    CreateCrawlerRequest = Shapes::StructureShape.new(name: 'CreateCrawlerRequest')
    CreateCrawlerResponse = Shapes::StructureShape.new(name: 'CreateCrawlerResponse')
    CreateCsvClassifierRequest = Shapes::StructureShape.new(name: 'CreateCsvClassifierRequest')
    CreateCustomEntityTypeRequest = Shapes::StructureShape.new(name: 'CreateCustomEntityTypeRequest')
    CreateCustomEntityTypeResponse = Shapes::StructureShape.new(name: 'CreateCustomEntityTypeResponse')
    CreateDataQualityRulesetRequest = Shapes::StructureShape.new(name: 'CreateDataQualityRulesetRequest')
    CreateDataQualityRulesetResponse = Shapes::StructureShape.new(name: 'CreateDataQualityRulesetResponse')
    CreateDatabaseRequest = Shapes::StructureShape.new(name: 'CreateDatabaseRequest')
    CreateDatabaseResponse = Shapes::StructureShape.new(name: 'CreateDatabaseResponse')
    CreateDevEndpointRequest = Shapes::StructureShape.new(name: 'CreateDevEndpointRequest')
    CreateDevEndpointResponse = Shapes::StructureShape.new(name: 'CreateDevEndpointResponse')
    CreateGrokClassifierRequest = Shapes::StructureShape.new(name: 'CreateGrokClassifierRequest')
    CreateIcebergTableInput = Shapes::StructureShape.new(name: 'CreateIcebergTableInput')
    CreateIntegrationRequest = Shapes::StructureShape.new(name: 'CreateIntegrationRequest')
    CreateIntegrationResourcePropertyRequest = Shapes::StructureShape.new(name: 'CreateIntegrationResourcePropertyRequest')
    CreateIntegrationResourcePropertyResponse = Shapes::StructureShape.new(name: 'CreateIntegrationResourcePropertyResponse')
    CreateIntegrationResponse = Shapes::StructureShape.new(name: 'CreateIntegrationResponse')
    CreateIntegrationTablePropertiesRequest = Shapes::StructureShape.new(name: 'CreateIntegrationTablePropertiesRequest')
    CreateIntegrationTablePropertiesResponse = Shapes::StructureShape.new(name: 'CreateIntegrationTablePropertiesResponse')
    CreateJobRequest = Shapes::StructureShape.new(name: 'CreateJobRequest')
    CreateJobResponse = Shapes::StructureShape.new(name: 'CreateJobResponse')
    CreateJsonClassifierRequest = Shapes::StructureShape.new(name: 'CreateJsonClassifierRequest')
    CreateMLTransformRequest = Shapes::StructureShape.new(name: 'CreateMLTransformRequest')
    CreateMLTransformResponse = Shapes::StructureShape.new(name: 'CreateMLTransformResponse')
    CreatePartitionIndexRequest = Shapes::StructureShape.new(name: 'CreatePartitionIndexRequest')
    CreatePartitionIndexResponse = Shapes::StructureShape.new(name: 'CreatePartitionIndexResponse')
    CreatePartitionRequest = Shapes::StructureShape.new(name: 'CreatePartitionRequest')
    CreatePartitionResponse = Shapes::StructureShape.new(name: 'CreatePartitionResponse')
    CreateRegistryInput = Shapes::StructureShape.new(name: 'CreateRegistryInput')
    CreateRegistryResponse = Shapes::StructureShape.new(name: 'CreateRegistryResponse')
    CreateSchemaInput = Shapes::StructureShape.new(name: 'CreateSchemaInput')
    CreateSchemaResponse = Shapes::StructureShape.new(name: 'CreateSchemaResponse')
    CreateScriptRequest = Shapes::StructureShape.new(name: 'CreateScriptRequest')
    CreateScriptResponse = Shapes::StructureShape.new(name: 'CreateScriptResponse')
    CreateSecurityConfigurationRequest = Shapes::StructureShape.new(name: 'CreateSecurityConfigurationRequest')
    CreateSecurityConfigurationResponse = Shapes::StructureShape.new(name: 'CreateSecurityConfigurationResponse')
    CreateSessionRequest = Shapes::StructureShape.new(name: 'CreateSessionRequest')
    CreateSessionResponse = Shapes::StructureShape.new(name: 'CreateSessionResponse')
    CreateTableOptimizerRequest = Shapes::StructureShape.new(name: 'CreateTableOptimizerRequest')
    CreateTableOptimizerResponse = Shapes::StructureShape.new(name: 'CreateTableOptimizerResponse')
    CreateTableRequest = Shapes::StructureShape.new(name: 'CreateTableRequest')
    CreateTableResponse = Shapes::StructureShape.new(name: 'CreateTableResponse')
    CreateTriggerRequest = Shapes::StructureShape.new(name: 'CreateTriggerRequest')
    CreateTriggerResponse = Shapes::StructureShape.new(name: 'CreateTriggerResponse')
    CreateUsageProfileRequest = Shapes::StructureShape.new(name: 'CreateUsageProfileRequest')
    CreateUsageProfileResponse = Shapes::StructureShape.new(name: 'CreateUsageProfileResponse')
    CreateUserDefinedFunctionRequest = Shapes::StructureShape.new(name: 'CreateUserDefinedFunctionRequest')
    CreateUserDefinedFunctionResponse = Shapes::StructureShape.new(name: 'CreateUserDefinedFunctionResponse')
    CreateWorkflowRequest = Shapes::StructureShape.new(name: 'CreateWorkflowRequest')
    CreateWorkflowResponse = Shapes::StructureShape.new(name: 'CreateWorkflowResponse')
    CreateXMLClassifierRequest = Shapes::StructureShape.new(name: 'CreateXMLClassifierRequest')
    CreatedTimestamp = Shapes::StringShape.new(name: 'CreatedTimestamp')
    CredentialKey = Shapes::StringShape.new(name: 'CredentialKey')
    CredentialMap = Shapes::MapShape.new(name: 'CredentialMap')
    CredentialValue = Shapes::StringShape.new(name: 'CredentialValue')
    CronExpression = Shapes::StringShape.new(name: 'CronExpression')
    CsvClassifier = Shapes::StructureShape.new(name: 'CsvClassifier')
    CsvColumnDelimiter = Shapes::StringShape.new(name: 'CsvColumnDelimiter')
    CsvHeader = Shapes::ListShape.new(name: 'CsvHeader')
    CsvHeaderOption = Shapes::StringShape.new(name: 'CsvHeaderOption')
    CsvQuoteSymbol = Shapes::StringShape.new(name: 'CsvQuoteSymbol')
    CsvSerdeOption = Shapes::StringShape.new(name: 'CsvSerdeOption')
    CustomCode = Shapes::StructureShape.new(name: 'CustomCode')
    CustomDatatypes = Shapes::ListShape.new(name: 'CustomDatatypes')
    CustomEntityType = Shapes::StructureShape.new(name: 'CustomEntityType')
    CustomEntityTypeNames = Shapes::ListShape.new(name: 'CustomEntityTypeNames')
    CustomEntityTypes = Shapes::ListShape.new(name: 'CustomEntityTypes')
    CustomPatterns = Shapes::StringShape.new(name: 'CustomPatterns')
    CustomProperties = Shapes::MapShape.new(name: 'CustomProperties')
    DQAdditionalOptions = Shapes::MapShape.new(name: 'DQAdditionalOptions')
    DQCompositeRuleEvaluationMethod = Shapes::StringShape.new(name: 'DQCompositeRuleEvaluationMethod')
    DQDLAliases = Shapes::MapShape.new(name: 'DQDLAliases')
    DQDLString = Shapes::StringShape.new(name: 'DQDLString')
    DQResultsPublishingOptions = Shapes::StructureShape.new(name: 'DQResultsPublishingOptions')
    DQStopJobOnFailureOptions = Shapes::StructureShape.new(name: 'DQStopJobOnFailureOptions')
    DQStopJobOnFailureTiming = Shapes::StringShape.new(name: 'DQStopJobOnFailureTiming')
    DQTransformOutput = Shapes::StringShape.new(name: 'DQTransformOutput')
    DagEdges = Shapes::ListShape.new(name: 'DagEdges')
    DagNodes = Shapes::ListShape.new(name: 'DagNodes')
    DataCatalogEncryptionSettings = Shapes::StructureShape.new(name: 'DataCatalogEncryptionSettings')
    DataFormat = Shapes::StringShape.new(name: 'DataFormat')
    DataLakeAccessProperties = Shapes::StructureShape.new(name: 'DataLakeAccessProperties')
    DataLakeAccessPropertiesOutput = Shapes::StructureShape.new(name: 'DataLakeAccessPropertiesOutput')
    DataLakePrincipal = Shapes::StructureShape.new(name: 'DataLakePrincipal')
    DataLakePrincipalString = Shapes::StringShape.new(name: 'DataLakePrincipalString')
    DataOperation = Shapes::StringShape.new(name: 'DataOperation')
    DataOperations = Shapes::ListShape.new(name: 'DataOperations')
    DataQualityAggregatedMetrics = Shapes::StructureShape.new(name: 'DataQualityAggregatedMetrics')
    DataQualityAnalyzerResult = Shapes::StructureShape.new(name: 'DataQualityAnalyzerResult')
    DataQualityAnalyzerResults = Shapes::ListShape.new(name: 'DataQualityAnalyzerResults')
    DataQualityEncryption = Shapes::StructureShape.new(name: 'DataQualityEncryption')
    DataQualityEncryptionMode = Shapes::StringShape.new(name: 'DataQualityEncryptionMode')
    DataQualityEvaluationRunAdditionalRunOptions = Shapes::StructureShape.new(name: 'DataQualityEvaluationRunAdditionalRunOptions')
    DataQualityMetricValues = Shapes::StructureShape.new(name: 'DataQualityMetricValues')
    DataQualityModelStatus = Shapes::StringShape.new(name: 'DataQualityModelStatus')
    DataQualityObservation = Shapes::StructureShape.new(name: 'DataQualityObservation')
    DataQualityObservationDescription = Shapes::StringShape.new(name: 'DataQualityObservationDescription')
    DataQualityObservations = Shapes::ListShape.new(name: 'DataQualityObservations')
    DataQualityResult = Shapes::StructureShape.new(name: 'DataQualityResult')
    DataQualityResultDescription = Shapes::StructureShape.new(name: 'DataQualityResultDescription')
    DataQualityResultDescriptionList = Shapes::ListShape.new(name: 'DataQualityResultDescriptionList')
    DataQualityResultFilterCriteria = Shapes::StructureShape.new(name: 'DataQualityResultFilterCriteria')
    DataQualityResultIdList = Shapes::ListShape.new(name: 'DataQualityResultIdList')
    DataQualityResultIds = Shapes::ListShape.new(name: 'DataQualityResultIds')
    DataQualityResultsList = Shapes::ListShape.new(name: 'DataQualityResultsList')
    DataQualityRuleRecommendationRunDescription = Shapes::StructureShape.new(name: 'DataQualityRuleRecommendationRunDescription')
    DataQualityRuleRecommendationRunFilter = Shapes::StructureShape.new(name: 'DataQualityRuleRecommendationRunFilter')
    DataQualityRuleRecommendationRunList = Shapes::ListShape.new(name: 'DataQualityRuleRecommendationRunList')
    DataQualityRuleResult = Shapes::StructureShape.new(name: 'DataQualityRuleResult')
    DataQualityRuleResultDescription = Shapes::StringShape.new(name: 'DataQualityRuleResultDescription')
    DataQualityRuleResultStatus = Shapes::StringShape.new(name: 'DataQualityRuleResultStatus')
    DataQualityRuleResults = Shapes::ListShape.new(name: 'DataQualityRuleResults')
    DataQualityRulesetEvaluationRunDescription = Shapes::StructureShape.new(name: 'DataQualityRulesetEvaluationRunDescription')
    DataQualityRulesetEvaluationRunFilter = Shapes::StructureShape.new(name: 'DataQualityRulesetEvaluationRunFilter')
    DataQualityRulesetEvaluationRunList = Shapes::ListShape.new(name: 'DataQualityRulesetEvaluationRunList')
    DataQualityRulesetFilterCriteria = Shapes::StructureShape.new(name: 'DataQualityRulesetFilterCriteria')
    DataQualityRulesetList = Shapes::ListShape.new(name: 'DataQualityRulesetList')
    DataQualityRulesetListDetails = Shapes::StructureShape.new(name: 'DataQualityRulesetListDetails')
    DataQualityRulesetString = Shapes::StringShape.new(name: 'DataQualityRulesetString')
    DataQualityTargetTable = Shapes::StructureShape.new(name: 'DataQualityTargetTable')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSourceMap = Shapes::MapShape.new(name: 'DataSourceMap')
    Database = Shapes::StructureShape.new(name: 'Database')
    DatabaseAttributes = Shapes::StringShape.new(name: 'DatabaseAttributes')
    DatabaseAttributesList = Shapes::ListShape.new(name: 'DatabaseAttributesList')
    DatabaseIdentifier = Shapes::StructureShape.new(name: 'DatabaseIdentifier')
    DatabaseInput = Shapes::StructureShape.new(name: 'DatabaseInput')
    DatabaseList = Shapes::ListShape.new(name: 'DatabaseList')
    DatabaseName = Shapes::StringShape.new(name: 'DatabaseName')
    DatabrewCondition = Shapes::StringShape.new(name: 'DatabrewCondition')
    DatabrewConditionValue = Shapes::StringShape.new(name: 'DatabrewConditionValue')
    DatapointInclusionAnnotation = Shapes::StructureShape.new(name: 'DatapointInclusionAnnotation')
    Datatype = Shapes::StructureShape.new(name: 'Datatype')
    DateColumnStatisticsData = Shapes::StructureShape.new(name: 'DateColumnStatisticsData')
    DecimalColumnStatisticsData = Shapes::StructureShape.new(name: 'DecimalColumnStatisticsData')
    DecimalNumber = Shapes::StructureShape.new(name: 'DecimalNumber')
    DeleteBehavior = Shapes::StringShape.new(name: 'DeleteBehavior')
    DeleteBlueprintRequest = Shapes::StructureShape.new(name: 'DeleteBlueprintRequest')
    DeleteBlueprintResponse = Shapes::StructureShape.new(name: 'DeleteBlueprintResponse')
    DeleteCatalogRequest = Shapes::StructureShape.new(name: 'DeleteCatalogRequest')
    DeleteCatalogResponse = Shapes::StructureShape.new(name: 'DeleteCatalogResponse')
    DeleteClassifierRequest = Shapes::StructureShape.new(name: 'DeleteClassifierRequest')
    DeleteClassifierResponse = Shapes::StructureShape.new(name: 'DeleteClassifierResponse')
    DeleteColumnStatisticsForPartitionRequest = Shapes::StructureShape.new(name: 'DeleteColumnStatisticsForPartitionRequest')
    DeleteColumnStatisticsForPartitionResponse = Shapes::StructureShape.new(name: 'DeleteColumnStatisticsForPartitionResponse')
    DeleteColumnStatisticsForTableRequest = Shapes::StructureShape.new(name: 'DeleteColumnStatisticsForTableRequest')
    DeleteColumnStatisticsForTableResponse = Shapes::StructureShape.new(name: 'DeleteColumnStatisticsForTableResponse')
    DeleteColumnStatisticsTaskSettingsRequest = Shapes::StructureShape.new(name: 'DeleteColumnStatisticsTaskSettingsRequest')
    DeleteColumnStatisticsTaskSettingsResponse = Shapes::StructureShape.new(name: 'DeleteColumnStatisticsTaskSettingsResponse')
    DeleteConnectionNameList = Shapes::ListShape.new(name: 'DeleteConnectionNameList')
    DeleteConnectionRequest = Shapes::StructureShape.new(name: 'DeleteConnectionRequest')
    DeleteConnectionResponse = Shapes::StructureShape.new(name: 'DeleteConnectionResponse')
    DeleteCrawlerRequest = Shapes::StructureShape.new(name: 'DeleteCrawlerRequest')
    DeleteCrawlerResponse = Shapes::StructureShape.new(name: 'DeleteCrawlerResponse')
    DeleteCustomEntityTypeRequest = Shapes::StructureShape.new(name: 'DeleteCustomEntityTypeRequest')
    DeleteCustomEntityTypeResponse = Shapes::StructureShape.new(name: 'DeleteCustomEntityTypeResponse')
    DeleteDataQualityRulesetRequest = Shapes::StructureShape.new(name: 'DeleteDataQualityRulesetRequest')
    DeleteDataQualityRulesetResponse = Shapes::StructureShape.new(name: 'DeleteDataQualityRulesetResponse')
    DeleteDatabaseRequest = Shapes::StructureShape.new(name: 'DeleteDatabaseRequest')
    DeleteDatabaseResponse = Shapes::StructureShape.new(name: 'DeleteDatabaseResponse')
    DeleteDevEndpointRequest = Shapes::StructureShape.new(name: 'DeleteDevEndpointRequest')
    DeleteDevEndpointResponse = Shapes::StructureShape.new(name: 'DeleteDevEndpointResponse')
    DeleteIntegrationRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationRequest')
    DeleteIntegrationResponse = Shapes::StructureShape.new(name: 'DeleteIntegrationResponse')
    DeleteIntegrationTablePropertiesRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationTablePropertiesRequest')
    DeleteIntegrationTablePropertiesResponse = Shapes::StructureShape.new(name: 'DeleteIntegrationTablePropertiesResponse')
    DeleteJobRequest = Shapes::StructureShape.new(name: 'DeleteJobRequest')
    DeleteJobResponse = Shapes::StructureShape.new(name: 'DeleteJobResponse')
    DeleteMLTransformRequest = Shapes::StructureShape.new(name: 'DeleteMLTransformRequest')
    DeleteMLTransformResponse = Shapes::StructureShape.new(name: 'DeleteMLTransformResponse')
    DeletePartitionIndexRequest = Shapes::StructureShape.new(name: 'DeletePartitionIndexRequest')
    DeletePartitionIndexResponse = Shapes::StructureShape.new(name: 'DeletePartitionIndexResponse')
    DeletePartitionRequest = Shapes::StructureShape.new(name: 'DeletePartitionRequest')
    DeletePartitionResponse = Shapes::StructureShape.new(name: 'DeletePartitionResponse')
    DeleteRegistryInput = Shapes::StructureShape.new(name: 'DeleteRegistryInput')
    DeleteRegistryResponse = Shapes::StructureShape.new(name: 'DeleteRegistryResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteSchemaInput = Shapes::StructureShape.new(name: 'DeleteSchemaInput')
    DeleteSchemaResponse = Shapes::StructureShape.new(name: 'DeleteSchemaResponse')
    DeleteSchemaVersionsInput = Shapes::StructureShape.new(name: 'DeleteSchemaVersionsInput')
    DeleteSchemaVersionsResponse = Shapes::StructureShape.new(name: 'DeleteSchemaVersionsResponse')
    DeleteSecurityConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteSecurityConfigurationRequest')
    DeleteSecurityConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteSecurityConfigurationResponse')
    DeleteSessionRequest = Shapes::StructureShape.new(name: 'DeleteSessionRequest')
    DeleteSessionResponse = Shapes::StructureShape.new(name: 'DeleteSessionResponse')
    DeleteTableOptimizerRequest = Shapes::StructureShape.new(name: 'DeleteTableOptimizerRequest')
    DeleteTableOptimizerResponse = Shapes::StructureShape.new(name: 'DeleteTableOptimizerResponse')
    DeleteTableRequest = Shapes::StructureShape.new(name: 'DeleteTableRequest')
    DeleteTableResponse = Shapes::StructureShape.new(name: 'DeleteTableResponse')
    DeleteTableVersionRequest = Shapes::StructureShape.new(name: 'DeleteTableVersionRequest')
    DeleteTableVersionResponse = Shapes::StructureShape.new(name: 'DeleteTableVersionResponse')
    DeleteTriggerRequest = Shapes::StructureShape.new(name: 'DeleteTriggerRequest')
    DeleteTriggerResponse = Shapes::StructureShape.new(name: 'DeleteTriggerResponse')
    DeleteUsageProfileRequest = Shapes::StructureShape.new(name: 'DeleteUsageProfileRequest')
    DeleteUsageProfileResponse = Shapes::StructureShape.new(name: 'DeleteUsageProfileResponse')
    DeleteUserDefinedFunctionRequest = Shapes::StructureShape.new(name: 'DeleteUserDefinedFunctionRequest')
    DeleteUserDefinedFunctionResponse = Shapes::StructureShape.new(name: 'DeleteUserDefinedFunctionResponse')
    DeleteWorkflowRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowRequest')
    DeleteWorkflowResponse = Shapes::StructureShape.new(name: 'DeleteWorkflowResponse')
    DeltaTarget = Shapes::StructureShape.new(name: 'DeltaTarget')
    DeltaTargetCompressionType = Shapes::StringShape.new(name: 'DeltaTargetCompressionType')
    DeltaTargetList = Shapes::ListShape.new(name: 'DeltaTargetList')
    DescribeConnectionTypeRequest = Shapes::StructureShape.new(name: 'DescribeConnectionTypeRequest')
    DescribeConnectionTypeResponse = Shapes::StructureShape.new(name: 'DescribeConnectionTypeResponse')
    DescribeEntityRequest = Shapes::StructureShape.new(name: 'DescribeEntityRequest')
    DescribeEntityResponse = Shapes::StructureShape.new(name: 'DescribeEntityResponse')
    DescribeInboundIntegrationsRequest = Shapes::StructureShape.new(name: 'DescribeInboundIntegrationsRequest')
    DescribeInboundIntegrationsResponse = Shapes::StructureShape.new(name: 'DescribeInboundIntegrationsResponse')
    DescribeIntegrationsRequest = Shapes::StructureShape.new(name: 'DescribeIntegrationsRequest')
    DescribeIntegrationsResponse = Shapes::StructureShape.new(name: 'DescribeIntegrationsResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    DescriptionStringRemovable = Shapes::StringShape.new(name: 'DescriptionStringRemovable')
    DevEndpoint = Shapes::StructureShape.new(name: 'DevEndpoint')
    DevEndpointCustomLibraries = Shapes::StructureShape.new(name: 'DevEndpointCustomLibraries')
    DevEndpointList = Shapes::ListShape.new(name: 'DevEndpointList')
    DevEndpointNameList = Shapes::ListShape.new(name: 'DevEndpointNameList')
    DevEndpointNames = Shapes::ListShape.new(name: 'DevEndpointNames')
    DirectJDBCSource = Shapes::StructureShape.new(name: 'DirectJDBCSource')
    DirectKafkaSource = Shapes::StructureShape.new(name: 'DirectKafkaSource')
    DirectKinesisSource = Shapes::StructureShape.new(name: 'DirectKinesisSource')
    DirectSchemaChangePolicy = Shapes::StructureShape.new(name: 'DirectSchemaChangePolicy')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    Double = Shapes::FloatShape.new(name: 'Double')
    DoubleColumnStatisticsData = Shapes::StructureShape.new(name: 'DoubleColumnStatisticsData')
    DoubleValue = Shapes::FloatShape.new(name: 'DoubleValue')
    DropDuplicates = Shapes::StructureShape.new(name: 'DropDuplicates')
    DropFields = Shapes::StructureShape.new(name: 'DropFields')
    DropNullFields = Shapes::StructureShape.new(name: 'DropNullFields')
    DynamicTransform = Shapes::StructureShape.new(name: 'DynamicTransform')
    DynamoDBCatalogSource = Shapes::StructureShape.new(name: 'DynamoDBCatalogSource')
    DynamoDBTarget = Shapes::StructureShape.new(name: 'DynamoDBTarget')
    DynamoDBTargetList = Shapes::ListShape.new(name: 'DynamoDBTargetList')
    Edge = Shapes::StructureShape.new(name: 'Edge')
    EdgeList = Shapes::ListShape.new(name: 'EdgeList')
    EnableAdditionalMetadata = Shapes::ListShape.new(name: 'EnableAdditionalMetadata')
    EnableHybridValues = Shapes::StringShape.new(name: 'EnableHybridValues')
    EnclosedInStringProperties = Shapes::ListShape.new(name: 'EnclosedInStringProperties')
    EnclosedInStringPropertiesMinOne = Shapes::ListShape.new(name: 'EnclosedInStringPropertiesMinOne')
    EnclosedInStringProperty = Shapes::StringShape.new(name: 'EnclosedInStringProperty')
    EnclosedInStringPropertyWithQuote = Shapes::StringShape.new(name: 'EnclosedInStringPropertyWithQuote')
    EncryptionAtRest = Shapes::StructureShape.new(name: 'EncryptionAtRest')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntityDescription = Shapes::StringShape.new(name: 'EntityDescription')
    EntityFieldName = Shapes::StringShape.new(name: 'EntityFieldName')
    EntityLabel = Shapes::StringShape.new(name: 'EntityLabel')
    EntityList = Shapes::ListShape.new(name: 'EntityList')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    EntityNotFoundException = Shapes::StructureShape.new(name: 'EntityNotFoundException')
    ErrorByName = Shapes::MapShape.new(name: 'ErrorByName')
    ErrorCodeString = Shapes::StringShape.new(name: 'ErrorCodeString')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ErrorMessageString = Shapes::StringShape.new(name: 'ErrorMessageString')
    ErrorString = Shapes::StringShape.new(name: 'ErrorString')
    EvaluateDataQuality = Shapes::StructureShape.new(name: 'EvaluateDataQuality')
    EvaluateDataQualityMultiFrame = Shapes::StructureShape.new(name: 'EvaluateDataQualityMultiFrame')
    EvaluatedMetricsMap = Shapes::MapShape.new(name: 'EvaluatedMetricsMap')
    EvaluationMetrics = Shapes::StructureShape.new(name: 'EvaluationMetrics')
    EventBatchingCondition = Shapes::StructureShape.new(name: 'EventBatchingCondition')
    EventQueueArn = Shapes::StringShape.new(name: 'EventQueueArn')
    ExecutionAttempt = Shapes::StructureShape.new(name: 'ExecutionAttempt')
    ExecutionClass = Shapes::StringShape.new(name: 'ExecutionClass')
    ExecutionProperty = Shapes::StructureShape.new(name: 'ExecutionProperty')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    ExecutionTime = Shapes::IntegerShape.new(name: 'ExecutionTime')
    ExistCondition = Shapes::StringShape.new(name: 'ExistCondition')
    ExportLabelsTaskRunProperties = Shapes::StructureShape.new(name: 'ExportLabelsTaskRunProperties')
    ExtendedString = Shapes::StringShape.new(name: 'ExtendedString')
    FederatedCatalog = Shapes::StructureShape.new(name: 'FederatedCatalog')
    FederatedDatabase = Shapes::StructureShape.new(name: 'FederatedDatabase')
    FederatedResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'FederatedResourceAlreadyExistsException')
    FederatedTable = Shapes::StructureShape.new(name: 'FederatedTable')
    FederationIdentifier = Shapes::StringShape.new(name: 'FederationIdentifier')
    FederationSourceErrorCode = Shapes::StringShape.new(name: 'FederationSourceErrorCode')
    FederationSourceException = Shapes::StructureShape.new(name: 'FederationSourceException')
    FederationSourceRetryableException = Shapes::StructureShape.new(name: 'FederationSourceRetryableException')
    Field = Shapes::StructureShape.new(name: 'Field')
    FieldDataType = Shapes::StringShape.new(name: 'FieldDataType')
    FieldDescription = Shapes::StringShape.new(name: 'FieldDescription')
    FieldFilterOperator = Shapes::StringShape.new(name: 'FieldFilterOperator')
    FieldFilterOperatorsList = Shapes::ListShape.new(name: 'FieldFilterOperatorsList')
    FieldLabel = Shapes::StringShape.new(name: 'FieldLabel')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    FieldType = Shapes::StringShape.new(name: 'FieldType')
    FieldsList = Shapes::ListShape.new(name: 'FieldsList')
    FillMissingValues = Shapes::StructureShape.new(name: 'FillMissingValues')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterExpression = Shapes::StructureShape.new(name: 'FilterExpression')
    FilterExpressions = Shapes::ListShape.new(name: 'FilterExpressions')
    FilterLogicalOperator = Shapes::StringShape.new(name: 'FilterLogicalOperator')
    FilterOperation = Shapes::StringShape.new(name: 'FilterOperation')
    FilterOperator = Shapes::StringShape.new(name: 'FilterOperator')
    FilterPredicate = Shapes::StringShape.new(name: 'FilterPredicate')
    FilterString = Shapes::StringShape.new(name: 'FilterString')
    FilterValue = Shapes::StructureShape.new(name: 'FilterValue')
    FilterValueType = Shapes::StringShape.new(name: 'FilterValueType')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    FindMatchesMetrics = Shapes::StructureShape.new(name: 'FindMatchesMetrics')
    FindMatchesParameters = Shapes::StructureShape.new(name: 'FindMatchesParameters')
    FindMatchesTaskRunProperties = Shapes::StructureShape.new(name: 'FindMatchesTaskRunProperties')
    FormatString = Shapes::StringShape.new(name: 'FormatString')
    Generic512CharString = Shapes::StringShape.new(name: 'Generic512CharString')
    GenericBoundedDouble = Shapes::FloatShape.new(name: 'GenericBoundedDouble')
    GenericLimitedString = Shapes::StringShape.new(name: 'GenericLimitedString')
    GenericMap = Shapes::MapShape.new(name: 'GenericMap')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GetBlueprintRequest = Shapes::StructureShape.new(name: 'GetBlueprintRequest')
    GetBlueprintResponse = Shapes::StructureShape.new(name: 'GetBlueprintResponse')
    GetBlueprintRunRequest = Shapes::StructureShape.new(name: 'GetBlueprintRunRequest')
    GetBlueprintRunResponse = Shapes::StructureShape.new(name: 'GetBlueprintRunResponse')
    GetBlueprintRunsRequest = Shapes::StructureShape.new(name: 'GetBlueprintRunsRequest')
    GetBlueprintRunsResponse = Shapes::StructureShape.new(name: 'GetBlueprintRunsResponse')
    GetCatalogImportStatusRequest = Shapes::StructureShape.new(name: 'GetCatalogImportStatusRequest')
    GetCatalogImportStatusResponse = Shapes::StructureShape.new(name: 'GetCatalogImportStatusResponse')
    GetCatalogRequest = Shapes::StructureShape.new(name: 'GetCatalogRequest')
    GetCatalogResponse = Shapes::StructureShape.new(name: 'GetCatalogResponse')
    GetCatalogsRequest = Shapes::StructureShape.new(name: 'GetCatalogsRequest')
    GetCatalogsResponse = Shapes::StructureShape.new(name: 'GetCatalogsResponse')
    GetClassifierRequest = Shapes::StructureShape.new(name: 'GetClassifierRequest')
    GetClassifierResponse = Shapes::StructureShape.new(name: 'GetClassifierResponse')
    GetClassifiersRequest = Shapes::StructureShape.new(name: 'GetClassifiersRequest')
    GetClassifiersResponse = Shapes::StructureShape.new(name: 'GetClassifiersResponse')
    GetColumnNamesList = Shapes::ListShape.new(name: 'GetColumnNamesList')
    GetColumnStatisticsForPartitionRequest = Shapes::StructureShape.new(name: 'GetColumnStatisticsForPartitionRequest')
    GetColumnStatisticsForPartitionResponse = Shapes::StructureShape.new(name: 'GetColumnStatisticsForPartitionResponse')
    GetColumnStatisticsForTableRequest = Shapes::StructureShape.new(name: 'GetColumnStatisticsForTableRequest')
    GetColumnStatisticsForTableResponse = Shapes::StructureShape.new(name: 'GetColumnStatisticsForTableResponse')
    GetColumnStatisticsTaskRunRequest = Shapes::StructureShape.new(name: 'GetColumnStatisticsTaskRunRequest')
    GetColumnStatisticsTaskRunResponse = Shapes::StructureShape.new(name: 'GetColumnStatisticsTaskRunResponse')
    GetColumnStatisticsTaskRunsRequest = Shapes::StructureShape.new(name: 'GetColumnStatisticsTaskRunsRequest')
    GetColumnStatisticsTaskRunsResponse = Shapes::StructureShape.new(name: 'GetColumnStatisticsTaskRunsResponse')
    GetColumnStatisticsTaskSettingsRequest = Shapes::StructureShape.new(name: 'GetColumnStatisticsTaskSettingsRequest')
    GetColumnStatisticsTaskSettingsResponse = Shapes::StructureShape.new(name: 'GetColumnStatisticsTaskSettingsResponse')
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
    GetCustomEntityTypeRequest = Shapes::StructureShape.new(name: 'GetCustomEntityTypeRequest')
    GetCustomEntityTypeResponse = Shapes::StructureShape.new(name: 'GetCustomEntityTypeResponse')
    GetDataCatalogEncryptionSettingsRequest = Shapes::StructureShape.new(name: 'GetDataCatalogEncryptionSettingsRequest')
    GetDataCatalogEncryptionSettingsResponse = Shapes::StructureShape.new(name: 'GetDataCatalogEncryptionSettingsResponse')
    GetDataQualityModelRequest = Shapes::StructureShape.new(name: 'GetDataQualityModelRequest')
    GetDataQualityModelResponse = Shapes::StructureShape.new(name: 'GetDataQualityModelResponse')
    GetDataQualityModelResultRequest = Shapes::StructureShape.new(name: 'GetDataQualityModelResultRequest')
    GetDataQualityModelResultResponse = Shapes::StructureShape.new(name: 'GetDataQualityModelResultResponse')
    GetDataQualityResultRequest = Shapes::StructureShape.new(name: 'GetDataQualityResultRequest')
    GetDataQualityResultResponse = Shapes::StructureShape.new(name: 'GetDataQualityResultResponse')
    GetDataQualityRuleRecommendationRunRequest = Shapes::StructureShape.new(name: 'GetDataQualityRuleRecommendationRunRequest')
    GetDataQualityRuleRecommendationRunResponse = Shapes::StructureShape.new(name: 'GetDataQualityRuleRecommendationRunResponse')
    GetDataQualityRulesetEvaluationRunRequest = Shapes::StructureShape.new(name: 'GetDataQualityRulesetEvaluationRunRequest')
    GetDataQualityRulesetEvaluationRunResponse = Shapes::StructureShape.new(name: 'GetDataQualityRulesetEvaluationRunResponse')
    GetDataQualityRulesetRequest = Shapes::StructureShape.new(name: 'GetDataQualityRulesetRequest')
    GetDataQualityRulesetResponse = Shapes::StructureShape.new(name: 'GetDataQualityRulesetResponse')
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
    GetEntityRecordsRequest = Shapes::StructureShape.new(name: 'GetEntityRecordsRequest')
    GetEntityRecordsResponse = Shapes::StructureShape.new(name: 'GetEntityRecordsResponse')
    GetIntegrationResourcePropertyRequest = Shapes::StructureShape.new(name: 'GetIntegrationResourcePropertyRequest')
    GetIntegrationResourcePropertyResponse = Shapes::StructureShape.new(name: 'GetIntegrationResourcePropertyResponse')
    GetIntegrationTablePropertiesRequest = Shapes::StructureShape.new(name: 'GetIntegrationTablePropertiesRequest')
    GetIntegrationTablePropertiesResponse = Shapes::StructureShape.new(name: 'GetIntegrationTablePropertiesResponse')
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
    GetPartitionIndexesRequest = Shapes::StructureShape.new(name: 'GetPartitionIndexesRequest')
    GetPartitionIndexesResponse = Shapes::StructureShape.new(name: 'GetPartitionIndexesResponse')
    GetPartitionRequest = Shapes::StructureShape.new(name: 'GetPartitionRequest')
    GetPartitionResponse = Shapes::StructureShape.new(name: 'GetPartitionResponse')
    GetPartitionsRequest = Shapes::StructureShape.new(name: 'GetPartitionsRequest')
    GetPartitionsResponse = Shapes::StructureShape.new(name: 'GetPartitionsResponse')
    GetPlanRequest = Shapes::StructureShape.new(name: 'GetPlanRequest')
    GetPlanResponse = Shapes::StructureShape.new(name: 'GetPlanResponse')
    GetRegistryInput = Shapes::StructureShape.new(name: 'GetRegistryInput')
    GetRegistryResponse = Shapes::StructureShape.new(name: 'GetRegistryResponse')
    GetResourcePoliciesRequest = Shapes::StructureShape.new(name: 'GetResourcePoliciesRequest')
    GetResourcePoliciesResponse = Shapes::StructureShape.new(name: 'GetResourcePoliciesResponse')
    GetResourcePoliciesResponseList = Shapes::ListShape.new(name: 'GetResourcePoliciesResponseList')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GetSchemaByDefinitionInput = Shapes::StructureShape.new(name: 'GetSchemaByDefinitionInput')
    GetSchemaByDefinitionResponse = Shapes::StructureShape.new(name: 'GetSchemaByDefinitionResponse')
    GetSchemaInput = Shapes::StructureShape.new(name: 'GetSchemaInput')
    GetSchemaResponse = Shapes::StructureShape.new(name: 'GetSchemaResponse')
    GetSchemaVersionInput = Shapes::StructureShape.new(name: 'GetSchemaVersionInput')
    GetSchemaVersionResponse = Shapes::StructureShape.new(name: 'GetSchemaVersionResponse')
    GetSchemaVersionsDiffInput = Shapes::StructureShape.new(name: 'GetSchemaVersionsDiffInput')
    GetSchemaVersionsDiffResponse = Shapes::StructureShape.new(name: 'GetSchemaVersionsDiffResponse')
    GetSecurityConfigurationRequest = Shapes::StructureShape.new(name: 'GetSecurityConfigurationRequest')
    GetSecurityConfigurationResponse = Shapes::StructureShape.new(name: 'GetSecurityConfigurationResponse')
    GetSecurityConfigurationsRequest = Shapes::StructureShape.new(name: 'GetSecurityConfigurationsRequest')
    GetSecurityConfigurationsResponse = Shapes::StructureShape.new(name: 'GetSecurityConfigurationsResponse')
    GetSessionRequest = Shapes::StructureShape.new(name: 'GetSessionRequest')
    GetSessionResponse = Shapes::StructureShape.new(name: 'GetSessionResponse')
    GetStatementRequest = Shapes::StructureShape.new(name: 'GetStatementRequest')
    GetStatementResponse = Shapes::StructureShape.new(name: 'GetStatementResponse')
    GetTableOptimizerRequest = Shapes::StructureShape.new(name: 'GetTableOptimizerRequest')
    GetTableOptimizerResponse = Shapes::StructureShape.new(name: 'GetTableOptimizerResponse')
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
    GetUnfilteredPartitionMetadataRequest = Shapes::StructureShape.new(name: 'GetUnfilteredPartitionMetadataRequest')
    GetUnfilteredPartitionMetadataResponse = Shapes::StructureShape.new(name: 'GetUnfilteredPartitionMetadataResponse')
    GetUnfilteredPartitionsMetadataRequest = Shapes::StructureShape.new(name: 'GetUnfilteredPartitionsMetadataRequest')
    GetUnfilteredPartitionsMetadataResponse = Shapes::StructureShape.new(name: 'GetUnfilteredPartitionsMetadataResponse')
    GetUnfilteredTableMetadataRequest = Shapes::StructureShape.new(name: 'GetUnfilteredTableMetadataRequest')
    GetUnfilteredTableMetadataResponse = Shapes::StructureShape.new(name: 'GetUnfilteredTableMetadataResponse')
    GetUsageProfileRequest = Shapes::StructureShape.new(name: 'GetUsageProfileRequest')
    GetUsageProfileResponse = Shapes::StructureShape.new(name: 'GetUsageProfileResponse')
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
    GluePolicy = Shapes::StructureShape.new(name: 'GluePolicy')
    GlueRecordType = Shapes::StringShape.new(name: 'GlueRecordType')
    GlueResourceArn = Shapes::StringShape.new(name: 'GlueResourceArn')
    GlueSchema = Shapes::StructureShape.new(name: 'GlueSchema')
    GlueSchemas = Shapes::ListShape.new(name: 'GlueSchemas')
    GlueStudioColumnNameString = Shapes::StringShape.new(name: 'GlueStudioColumnNameString')
    GlueStudioPathList = Shapes::ListShape.new(name: 'GlueStudioPathList')
    GlueStudioSchemaColumn = Shapes::StructureShape.new(name: 'GlueStudioSchemaColumn')
    GlueStudioSchemaColumnList = Shapes::ListShape.new(name: 'GlueStudioSchemaColumnList')
    GlueTable = Shapes::StructureShape.new(name: 'GlueTable')
    GlueTableAdditionalOptions = Shapes::MapShape.new(name: 'GlueTableAdditionalOptions')
    GlueTables = Shapes::ListShape.new(name: 'GlueTables')
    GlueVersionString = Shapes::StringShape.new(name: 'GlueVersionString')
    GovernedCatalogSource = Shapes::StructureShape.new(name: 'GovernedCatalogSource')
    GovernedCatalogTarget = Shapes::StructureShape.new(name: 'GovernedCatalogTarget')
    GrokClassifier = Shapes::StructureShape.new(name: 'GrokClassifier')
    GrokPattern = Shapes::StringShape.new(name: 'GrokPattern')
    HashString = Shapes::StringShape.new(name: 'HashString')
    HudiTarget = Shapes::StructureShape.new(name: 'HudiTarget')
    HudiTargetCompressionType = Shapes::StringShape.new(name: 'HudiTargetCompressionType')
    HudiTargetList = Shapes::ListShape.new(name: 'HudiTargetList')
    HyperTargetCompressionType = Shapes::StringShape.new(name: 'HyperTargetCompressionType')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    IcebergCompactionConfiguration = Shapes::StructureShape.new(name: 'IcebergCompactionConfiguration')
    IcebergCompactionMetrics = Shapes::StructureShape.new(name: 'IcebergCompactionMetrics')
    IcebergDocument = Shapes::DocumentShape.new(name: 'IcebergDocument', document: true)
    IcebergInput = Shapes::StructureShape.new(name: 'IcebergInput')
    IcebergNullOrder = Shapes::StringShape.new(name: 'IcebergNullOrder')
    IcebergOrphanFileDeletionConfiguration = Shapes::StructureShape.new(name: 'IcebergOrphanFileDeletionConfiguration')
    IcebergOrphanFileDeletionMetrics = Shapes::StructureShape.new(name: 'IcebergOrphanFileDeletionMetrics')
    IcebergPartitionField = Shapes::StructureShape.new(name: 'IcebergPartitionField')
    IcebergPartitionSpec = Shapes::StructureShape.new(name: 'IcebergPartitionSpec')
    IcebergPartitionSpecFieldList = Shapes::ListShape.new(name: 'IcebergPartitionSpecFieldList')
    IcebergRetentionConfiguration = Shapes::StructureShape.new(name: 'IcebergRetentionConfiguration')
    IcebergRetentionMetrics = Shapes::StructureShape.new(name: 'IcebergRetentionMetrics')
    IcebergSchema = Shapes::StructureShape.new(name: 'IcebergSchema')
    IcebergSortDirection = Shapes::StringShape.new(name: 'IcebergSortDirection')
    IcebergSortField = Shapes::StructureShape.new(name: 'IcebergSortField')
    IcebergSortOrder = Shapes::StructureShape.new(name: 'IcebergSortOrder')
    IcebergSortOrderFieldList = Shapes::ListShape.new(name: 'IcebergSortOrderFieldList')
    IcebergStructField = Shapes::StructureShape.new(name: 'IcebergStructField')
    IcebergStructFieldList = Shapes::ListShape.new(name: 'IcebergStructFieldList')
    IcebergStructTypeEnum = Shapes::StringShape.new(name: 'IcebergStructTypeEnum')
    IcebergTableUpdate = Shapes::StructureShape.new(name: 'IcebergTableUpdate')
    IcebergTableUpdateList = Shapes::ListShape.new(name: 'IcebergTableUpdateList')
    IcebergTarget = Shapes::StructureShape.new(name: 'IcebergTarget')
    IcebergTargetCompressionType = Shapes::StringShape.new(name: 'IcebergTargetCompressionType')
    IcebergTargetList = Shapes::ListShape.new(name: 'IcebergTargetList')
    IcebergTransformString = Shapes::StringShape.new(name: 'IcebergTransformString')
    IdString = Shapes::StringShape.new(name: 'IdString')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    IdleTimeout = Shapes::IntegerShape.new(name: 'IdleTimeout')
    IllegalBlueprintStateException = Shapes::StructureShape.new(name: 'IllegalBlueprintStateException')
    IllegalSessionStateException = Shapes::StructureShape.new(name: 'IllegalSessionStateException')
    IllegalWorkflowStateException = Shapes::StructureShape.new(name: 'IllegalWorkflowStateException')
    ImportCatalogToGlueRequest = Shapes::StructureShape.new(name: 'ImportCatalogToGlueRequest')
    ImportCatalogToGlueResponse = Shapes::StructureShape.new(name: 'ImportCatalogToGlueResponse')
    ImportLabelsTaskRunProperties = Shapes::StructureShape.new(name: 'ImportLabelsTaskRunProperties')
    InboundIntegration = Shapes::StructureShape.new(name: 'InboundIntegration')
    InboundIntegrationsList = Shapes::ListShape.new(name: 'InboundIntegrationsList')
    InclusionAnnotationList = Shapes::ListShape.new(name: 'InclusionAnnotationList')
    InclusionAnnotationValue = Shapes::StringShape.new(name: 'InclusionAnnotationValue')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerFlag = Shapes::IntegerShape.new(name: 'IntegerFlag')
    IntegerList = Shapes::ListShape.new(name: 'IntegerList')
    IntegerValue = Shapes::IntegerShape.new(name: 'IntegerValue')
    Integration = Shapes::StructureShape.new(name: 'Integration')
    IntegrationAdditionalEncryptionContextMap = Shapes::MapShape.new(name: 'IntegrationAdditionalEncryptionContextMap')
    IntegrationConfig = Shapes::StructureShape.new(name: 'IntegrationConfig')
    IntegrationConflictOperationFault = Shapes::StructureShape.new(name: 'IntegrationConflictOperationFault')
    IntegrationDescription = Shapes::StringShape.new(name: 'IntegrationDescription')
    IntegrationError = Shapes::StructureShape.new(name: 'IntegrationError')
    IntegrationErrorList = Shapes::ListShape.new(name: 'IntegrationErrorList')
    IntegrationErrorMessage = Shapes::StringShape.new(name: 'IntegrationErrorMessage')
    IntegrationFilter = Shapes::StructureShape.new(name: 'IntegrationFilter')
    IntegrationFilterList = Shapes::ListShape.new(name: 'IntegrationFilterList')
    IntegrationFilterValues = Shapes::ListShape.new(name: 'IntegrationFilterValues')
    IntegrationInteger = Shapes::IntegerShape.new(name: 'IntegrationInteger')
    IntegrationNotFoundFault = Shapes::StructureShape.new(name: 'IntegrationNotFoundFault')
    IntegrationPartition = Shapes::StructureShape.new(name: 'IntegrationPartition')
    IntegrationPartitionSpecList = Shapes::ListShape.new(name: 'IntegrationPartitionSpecList')
    IntegrationQuotaExceededFault = Shapes::StructureShape.new(name: 'IntegrationQuotaExceededFault')
    IntegrationStatus = Shapes::StringShape.new(name: 'IntegrationStatus')
    IntegrationString = Shapes::StringShape.new(name: 'IntegrationString')
    IntegrationTagsList = Shapes::ListShape.new(name: 'IntegrationTagsList')
    IntegrationTimestamp = Shapes::TimestampShape.new(name: 'IntegrationTimestamp')
    IntegrationsList = Shapes::ListShape.new(name: 'IntegrationsList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidIntegrationStateFault = Shapes::StructureShape.new(name: 'InvalidIntegrationStateFault')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    IsParentEntity = Shapes::BooleanShape.new(name: 'IsParentEntity')
    IsVersionValid = Shapes::BooleanShape.new(name: 'IsVersionValid')
    Iso8601DateTime = Shapes::TimestampShape.new(name: 'Iso8601DateTime', timestampFormat: "iso8601")
    JDBCConnectionType = Shapes::StringShape.new(name: 'JDBCConnectionType')
    JDBCConnectorOptions = Shapes::StructureShape.new(name: 'JDBCConnectorOptions')
    JDBCConnectorSource = Shapes::StructureShape.new(name: 'JDBCConnectorSource')
    JDBCConnectorTarget = Shapes::StructureShape.new(name: 'JDBCConnectorTarget')
    JDBCDataType = Shapes::StringShape.new(name: 'JDBCDataType')
    JDBCDataTypeMapping = Shapes::MapShape.new(name: 'JDBCDataTypeMapping')
    JdbcMetadataEntry = Shapes::StringShape.new(name: 'JdbcMetadataEntry')
    JdbcTarget = Shapes::StructureShape.new(name: 'JdbcTarget')
    JdbcTargetList = Shapes::ListShape.new(name: 'JdbcTargetList')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobBookmarkEntry = Shapes::StructureShape.new(name: 'JobBookmarkEntry')
    JobBookmarksEncryption = Shapes::StructureShape.new(name: 'JobBookmarksEncryption')
    JobBookmarksEncryptionMode = Shapes::StringShape.new(name: 'JobBookmarksEncryptionMode')
    JobCommand = Shapes::StructureShape.new(name: 'JobCommand')
    JobList = Shapes::ListShape.new(name: 'JobList')
    JobMode = Shapes::StringShape.new(name: 'JobMode')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobNameList = Shapes::ListShape.new(name: 'JobNameList')
    JobNodeDetails = Shapes::StructureShape.new(name: 'JobNodeDetails')
    JobRun = Shapes::StructureShape.new(name: 'JobRun')
    JobRunList = Shapes::ListShape.new(name: 'JobRunList')
    JobRunState = Shapes::StringShape.new(name: 'JobRunState')
    JobUpdate = Shapes::StructureShape.new(name: 'JobUpdate')
    Join = Shapes::StructureShape.new(name: 'Join')
    JoinColumn = Shapes::StructureShape.new(name: 'JoinColumn')
    JoinColumns = Shapes::ListShape.new(name: 'JoinColumns')
    JoinType = Shapes::StringShape.new(name: 'JoinType')
    JsonClassifier = Shapes::StructureShape.new(name: 'JsonClassifier')
    JsonPath = Shapes::StringShape.new(name: 'JsonPath')
    JsonValue = Shapes::StringShape.new(name: 'JsonValue')
    JwtToken = Shapes::StringShape.new(name: 'JwtToken')
    KMSKeyNotAccessibleFault = Shapes::StructureShape.new(name: 'KMSKeyNotAccessibleFault')
    KafkaStreamingSourceOptions = Shapes::StructureShape.new(name: 'KafkaStreamingSourceOptions')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    KeySchemaElement = Shapes::StructureShape.new(name: 'KeySchemaElement')
    KeySchemaElementList = Shapes::ListShape.new(name: 'KeySchemaElementList')
    KeyString = Shapes::StringShape.new(name: 'KeyString')
    KinesisStreamingSourceOptions = Shapes::StructureShape.new(name: 'KinesisStreamingSourceOptions')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LabelCount = Shapes::IntegerShape.new(name: 'LabelCount')
    LabelingSetGenerationTaskRunProperties = Shapes::StructureShape.new(name: 'LabelingSetGenerationTaskRunProperties')
    LakeFormationConfiguration = Shapes::StructureShape.new(name: 'LakeFormationConfiguration')
    Language = Shapes::StringShape.new(name: 'Language')
    LastActiveDefinition = Shapes::StructureShape.new(name: 'LastActiveDefinition')
    LastCrawlInfo = Shapes::StructureShape.new(name: 'LastCrawlInfo')
    LastCrawlStatus = Shapes::StringShape.new(name: 'LastCrawlStatus')
    LatestSchemaVersionBoolean = Shapes::BooleanShape.new(name: 'LatestSchemaVersionBoolean')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    LimitedPathList = Shapes::ListShape.new(name: 'LimitedPathList')
    LimitedStringList = Shapes::ListShape.new(name: 'LimitedStringList')
    LineageConfiguration = Shapes::StructureShape.new(name: 'LineageConfiguration')
    ListBlueprintsRequest = Shapes::StructureShape.new(name: 'ListBlueprintsRequest')
    ListBlueprintsResponse = Shapes::StructureShape.new(name: 'ListBlueprintsResponse')
    ListColumnStatisticsTaskRunsRequest = Shapes::StructureShape.new(name: 'ListColumnStatisticsTaskRunsRequest')
    ListColumnStatisticsTaskRunsResponse = Shapes::StructureShape.new(name: 'ListColumnStatisticsTaskRunsResponse')
    ListConnectionTypesRequest = Shapes::StructureShape.new(name: 'ListConnectionTypesRequest')
    ListConnectionTypesResponse = Shapes::StructureShape.new(name: 'ListConnectionTypesResponse')
    ListCrawlersRequest = Shapes::StructureShape.new(name: 'ListCrawlersRequest')
    ListCrawlersResponse = Shapes::StructureShape.new(name: 'ListCrawlersResponse')
    ListCrawlsRequest = Shapes::StructureShape.new(name: 'ListCrawlsRequest')
    ListCrawlsResponse = Shapes::StructureShape.new(name: 'ListCrawlsResponse')
    ListCustomEntityTypesRequest = Shapes::StructureShape.new(name: 'ListCustomEntityTypesRequest')
    ListCustomEntityTypesResponse = Shapes::StructureShape.new(name: 'ListCustomEntityTypesResponse')
    ListDataQualityResultsRequest = Shapes::StructureShape.new(name: 'ListDataQualityResultsRequest')
    ListDataQualityResultsResponse = Shapes::StructureShape.new(name: 'ListDataQualityResultsResponse')
    ListDataQualityRuleRecommendationRunsRequest = Shapes::StructureShape.new(name: 'ListDataQualityRuleRecommendationRunsRequest')
    ListDataQualityRuleRecommendationRunsResponse = Shapes::StructureShape.new(name: 'ListDataQualityRuleRecommendationRunsResponse')
    ListDataQualityRulesetEvaluationRunsRequest = Shapes::StructureShape.new(name: 'ListDataQualityRulesetEvaluationRunsRequest')
    ListDataQualityRulesetEvaluationRunsResponse = Shapes::StructureShape.new(name: 'ListDataQualityRulesetEvaluationRunsResponse')
    ListDataQualityRulesetsRequest = Shapes::StructureShape.new(name: 'ListDataQualityRulesetsRequest')
    ListDataQualityRulesetsResponse = Shapes::StructureShape.new(name: 'ListDataQualityRulesetsResponse')
    ListDataQualityStatisticAnnotationsRequest = Shapes::StructureShape.new(name: 'ListDataQualityStatisticAnnotationsRequest')
    ListDataQualityStatisticAnnotationsResponse = Shapes::StructureShape.new(name: 'ListDataQualityStatisticAnnotationsResponse')
    ListDataQualityStatisticsRequest = Shapes::StructureShape.new(name: 'ListDataQualityStatisticsRequest')
    ListDataQualityStatisticsResponse = Shapes::StructureShape.new(name: 'ListDataQualityStatisticsResponse')
    ListDevEndpointsRequest = Shapes::StructureShape.new(name: 'ListDevEndpointsRequest')
    ListDevEndpointsResponse = Shapes::StructureShape.new(name: 'ListDevEndpointsResponse')
    ListEntitiesRequest = Shapes::StructureShape.new(name: 'ListEntitiesRequest')
    ListEntitiesResponse = Shapes::StructureShape.new(name: 'ListEntitiesResponse')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResponse = Shapes::StructureShape.new(name: 'ListJobsResponse')
    ListMLTransformsRequest = Shapes::StructureShape.new(name: 'ListMLTransformsRequest')
    ListMLTransformsResponse = Shapes::StructureShape.new(name: 'ListMLTransformsResponse')
    ListOfString = Shapes::ListShape.new(name: 'ListOfString')
    ListRegistriesInput = Shapes::StructureShape.new(name: 'ListRegistriesInput')
    ListRegistriesResponse = Shapes::StructureShape.new(name: 'ListRegistriesResponse')
    ListSchemaVersionsInput = Shapes::StructureShape.new(name: 'ListSchemaVersionsInput')
    ListSchemaVersionsResponse = Shapes::StructureShape.new(name: 'ListSchemaVersionsResponse')
    ListSchemasInput = Shapes::StructureShape.new(name: 'ListSchemasInput')
    ListSchemasResponse = Shapes::StructureShape.new(name: 'ListSchemasResponse')
    ListSessionsRequest = Shapes::StructureShape.new(name: 'ListSessionsRequest')
    ListSessionsResponse = Shapes::StructureShape.new(name: 'ListSessionsResponse')
    ListStatementsRequest = Shapes::StructureShape.new(name: 'ListStatementsRequest')
    ListStatementsResponse = Shapes::StructureShape.new(name: 'ListStatementsResponse')
    ListTableOptimizerRunsRequest = Shapes::StructureShape.new(name: 'ListTableOptimizerRunsRequest')
    ListTableOptimizerRunsResponse = Shapes::StructureShape.new(name: 'ListTableOptimizerRunsResponse')
    ListTableOptimizerRunsToken = Shapes::StringShape.new(name: 'ListTableOptimizerRunsToken')
    ListTriggersRequest = Shapes::StructureShape.new(name: 'ListTriggersRequest')
    ListTriggersResponse = Shapes::StructureShape.new(name: 'ListTriggersResponse')
    ListUsageProfilesRequest = Shapes::StructureShape.new(name: 'ListUsageProfilesRequest')
    ListUsageProfilesResponse = Shapes::StructureShape.new(name: 'ListUsageProfilesResponse')
    ListWorkflowsRequest = Shapes::StructureShape.new(name: 'ListWorkflowsRequest')
    ListWorkflowsResponse = Shapes::StructureShape.new(name: 'ListWorkflowsResponse')
    Location = Shapes::StructureShape.new(name: 'Location')
    LocationMap = Shapes::MapShape.new(name: 'LocationMap')
    LocationString = Shapes::StringShape.new(name: 'LocationString')
    LocationStringList = Shapes::ListShape.new(name: 'LocationStringList')
    LogGroup = Shapes::StringShape.new(name: 'LogGroup')
    LogStream = Shapes::StringShape.new(name: 'LogStream')
    Logical = Shapes::StringShape.new(name: 'Logical')
    LogicalOperator = Shapes::StringShape.new(name: 'LogicalOperator')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongColumnStatisticsData = Shapes::StructureShape.new(name: 'LongColumnStatisticsData')
    LongValue = Shapes::IntegerShape.new(name: 'LongValue')
    LongValueString = Shapes::StringShape.new(name: 'LongValueString')
    MLTransform = Shapes::StructureShape.new(name: 'MLTransform')
    MLTransformNotReadyException = Shapes::StructureShape.new(name: 'MLTransformNotReadyException')
    MLUserDataEncryption = Shapes::StructureShape.new(name: 'MLUserDataEncryption')
    MLUserDataEncryptionModeString = Shapes::StringShape.new(name: 'MLUserDataEncryptionModeString')
    MaintenanceWindow = Shapes::StringShape.new(name: 'MaintenanceWindow')
    ManyInputs = Shapes::ListShape.new(name: 'ManyInputs')
    MapValue = Shapes::MapShape.new(name: 'MapValue')
    Mapping = Shapes::StructureShape.new(name: 'Mapping')
    MappingEntry = Shapes::StructureShape.new(name: 'MappingEntry')
    MappingList = Shapes::ListShape.new(name: 'MappingList')
    Mappings = Shapes::ListShape.new(name: 'Mappings')
    MaskValue = Shapes::StringShape.new(name: 'MaskValue')
    MatchCriteria = Shapes::ListShape.new(name: 'MatchCriteria')
    MaxConcurrentRuns = Shapes::IntegerShape.new(name: 'MaxConcurrentRuns')
    MaxListTableOptimizerRunsTokenResults = Shapes::IntegerShape.new(name: 'MaxListTableOptimizerRunsTokenResults')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxResultsNumber = Shapes::IntegerShape.new(name: 'MaxResultsNumber')
    MaxRetries = Shapes::IntegerShape.new(name: 'MaxRetries')
    Merge = Shapes::StructureShape.new(name: 'Merge')
    MessagePrefix = Shapes::StringShape.new(name: 'MessagePrefix')
    MessageString = Shapes::StringShape.new(name: 'MessageString')
    MetadataInfo = Shapes::StructureShape.new(name: 'MetadataInfo')
    MetadataInfoMap = Shapes::MapShape.new(name: 'MetadataInfoMap')
    MetadataKeyString = Shapes::StringShape.new(name: 'MetadataKeyString')
    MetadataKeyValuePair = Shapes::StructureShape.new(name: 'MetadataKeyValuePair')
    MetadataList = Shapes::ListShape.new(name: 'MetadataList')
    MetadataOperation = Shapes::StringShape.new(name: 'MetadataOperation')
    MetadataValueString = Shapes::StringShape.new(name: 'MetadataValueString')
    MetricBasedObservation = Shapes::StructureShape.new(name: 'MetricBasedObservation')
    MicrosoftSQLServerCatalogSource = Shapes::StructureShape.new(name: 'MicrosoftSQLServerCatalogSource')
    MicrosoftSQLServerCatalogTarget = Shapes::StructureShape.new(name: 'MicrosoftSQLServerCatalogTarget')
    MillisecondsCount = Shapes::IntegerShape.new(name: 'MillisecondsCount')
    ModifyIntegrationRequest = Shapes::StructureShape.new(name: 'ModifyIntegrationRequest')
    ModifyIntegrationResponse = Shapes::StructureShape.new(name: 'ModifyIntegrationResponse')
    MongoDBTarget = Shapes::StructureShape.new(name: 'MongoDBTarget')
    MongoDBTargetList = Shapes::ListShape.new(name: 'MongoDBTargetList')
    MySQLCatalogSource = Shapes::StructureShape.new(name: 'MySQLCatalogSource')
    MySQLCatalogTarget = Shapes::StructureShape.new(name: 'MySQLCatalogTarget')
    NameString = Shapes::StringShape.new(name: 'NameString')
    NameStringList = Shapes::ListShape.new(name: 'NameStringList')
    NewRules = Shapes::ListShape.new(name: 'NewRules')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoScheduleException = Shapes::StructureShape.new(name: 'NoScheduleException')
    Node = Shapes::StructureShape.new(name: 'Node')
    NodeId = Shapes::StringShape.new(name: 'NodeId')
    NodeIdList = Shapes::ListShape.new(name: 'NodeIdList')
    NodeList = Shapes::ListShape.new(name: 'NodeList')
    NodeName = Shapes::StringShape.new(name: 'NodeName')
    NodeType = Shapes::StringShape.new(name: 'NodeType')
    NonNegativeDouble = Shapes::FloatShape.new(name: 'NonNegativeDouble')
    NonNegativeInt = Shapes::IntegerShape.new(name: 'NonNegativeInt')
    NonNegativeInteger = Shapes::IntegerShape.new(name: 'NonNegativeInteger')
    NonNegativeLong = Shapes::IntegerShape.new(name: 'NonNegativeLong')
    NotificationProperty = Shapes::StructureShape.new(name: 'NotificationProperty')
    NotifyDelayAfter = Shapes::IntegerShape.new(name: 'NotifyDelayAfter')
    NullCheckBoxList = Shapes::StructureShape.new(name: 'NullCheckBoxList')
    NullValueField = Shapes::StructureShape.new(name: 'NullValueField')
    NullValueFields = Shapes::ListShape.new(name: 'NullValueFields')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NullableDouble = Shapes::FloatShape.new(name: 'NullableDouble')
    NullableInteger = Shapes::IntegerShape.new(name: 'NullableInteger')
    NullableString = Shapes::StringShape.new(name: 'NullableString')
    NumberTargetPartitionsString = Shapes::StringShape.new(name: 'NumberTargetPartitionsString')
    OAuth2ClientApplication = Shapes::StructureShape.new(name: 'OAuth2ClientApplication')
    OAuth2Credentials = Shapes::StructureShape.new(name: 'OAuth2Credentials')
    OAuth2GrantType = Shapes::StringShape.new(name: 'OAuth2GrantType')
    OAuth2Properties = Shapes::StructureShape.new(name: 'OAuth2Properties')
    OAuth2PropertiesInput = Shapes::StructureShape.new(name: 'OAuth2PropertiesInput')
    OneInput = Shapes::ListShape.new(name: 'OneInput')
    OpenTableFormatInput = Shapes::StructureShape.new(name: 'OpenTableFormatInput')
    Operation = Shapes::StringShape.new(name: 'Operation')
    OperationNotSupportedException = Shapes::StructureShape.new(name: 'OperationNotSupportedException')
    OperationTimeoutException = Shapes::StructureShape.new(name: 'OperationTimeoutException')
    Option = Shapes::StructureShape.new(name: 'Option')
    OptionKey = Shapes::StringShape.new(name: 'OptionKey')
    OptionList = Shapes::ListShape.new(name: 'OptionList')
    OptionValue = Shapes::StringShape.new(name: 'OptionValue')
    OracleSQLCatalogSource = Shapes::StructureShape.new(name: 'OracleSQLCatalogSource')
    OracleSQLCatalogTarget = Shapes::StructureShape.new(name: 'OracleSQLCatalogTarget')
    OrchestrationArgumentsMap = Shapes::MapShape.new(name: 'OrchestrationArgumentsMap')
    OrchestrationArgumentsValue = Shapes::StringShape.new(name: 'OrchestrationArgumentsValue')
    OrchestrationIAMRoleArn = Shapes::StringShape.new(name: 'OrchestrationIAMRoleArn')
    OrchestrationMessageString = Shapes::StringShape.new(name: 'OrchestrationMessageString')
    OrchestrationNameString = Shapes::StringShape.new(name: 'OrchestrationNameString')
    OrchestrationPageSize200 = Shapes::IntegerShape.new(name: 'OrchestrationPageSize200')
    OrchestrationPageSize25 = Shapes::IntegerShape.new(name: 'OrchestrationPageSize25')
    OrchestrationRoleArn = Shapes::StringShape.new(name: 'OrchestrationRoleArn')
    OrchestrationS3Location = Shapes::StringShape.new(name: 'OrchestrationS3Location')
    OrchestrationStatementCodeString = Shapes::StringShape.new(name: 'OrchestrationStatementCodeString')
    OrchestrationStringList = Shapes::ListShape.new(name: 'OrchestrationStringList')
    OrchestrationToken = Shapes::StringShape.new(name: 'OrchestrationToken')
    Order = Shapes::StructureShape.new(name: 'Order')
    OrderList = Shapes::ListShape.new(name: 'OrderList')
    OrphanFileDeletionConfiguration = Shapes::StructureShape.new(name: 'OrphanFileDeletionConfiguration')
    OrphanFileDeletionMetrics = Shapes::StructureShape.new(name: 'OrphanFileDeletionMetrics')
    OtherMetadataValueList = Shapes::ListShape.new(name: 'OtherMetadataValueList')
    OtherMetadataValueListItem = Shapes::StructureShape.new(name: 'OtherMetadataValueListItem')
    PIIDetection = Shapes::StructureShape.new(name: 'PIIDetection')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParamType = Shapes::StringShape.new(name: 'ParamType')
    ParameterMap = Shapes::MapShape.new(name: 'ParameterMap')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    ParametersMap = Shapes::MapShape.new(name: 'ParametersMap')
    ParametersMapValue = Shapes::StringShape.new(name: 'ParametersMapValue')
    ParquetCompressionType = Shapes::StringShape.new(name: 'ParquetCompressionType')
    Partition = Shapes::StructureShape.new(name: 'Partition')
    PartitionError = Shapes::StructureShape.new(name: 'PartitionError')
    PartitionErrors = Shapes::ListShape.new(name: 'PartitionErrors')
    PartitionIndex = Shapes::StructureShape.new(name: 'PartitionIndex')
    PartitionIndexDescriptor = Shapes::StructureShape.new(name: 'PartitionIndexDescriptor')
    PartitionIndexDescriptorList = Shapes::ListShape.new(name: 'PartitionIndexDescriptorList')
    PartitionIndexList = Shapes::ListShape.new(name: 'PartitionIndexList')
    PartitionIndexStatus = Shapes::StringShape.new(name: 'PartitionIndexStatus')
    PartitionInput = Shapes::StructureShape.new(name: 'PartitionInput')
    PartitionInputList = Shapes::ListShape.new(name: 'PartitionInputList')
    PartitionList = Shapes::ListShape.new(name: 'PartitionList')
    PartitionValueList = Shapes::StructureShape.new(name: 'PartitionValueList')
    Password = Shapes::StringShape.new(name: 'Password')
    Path = Shapes::StringShape.new(name: 'Path')
    PathList = Shapes::ListShape.new(name: 'PathList')
    Permission = Shapes::StringShape.new(name: 'Permission')
    PermissionList = Shapes::ListShape.new(name: 'PermissionList')
    PermissionType = Shapes::StringShape.new(name: 'PermissionType')
    PermissionTypeList = Shapes::ListShape.new(name: 'PermissionTypeList')
    PermissionTypeMismatchException = Shapes::StructureShape.new(name: 'PermissionTypeMismatchException')
    PhysicalConnectionRequirements = Shapes::StructureShape.new(name: 'PhysicalConnectionRequirements')
    PiiType = Shapes::StringShape.new(name: 'PiiType')
    PolicyJsonString = Shapes::StringShape.new(name: 'PolicyJsonString')
    PollingTime = Shapes::IntegerShape.new(name: 'PollingTime')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PositiveLong = Shapes::IntegerShape.new(name: 'PositiveLong')
    PostgreSQLCatalogSource = Shapes::StructureShape.new(name: 'PostgreSQLCatalogSource')
    PostgreSQLCatalogTarget = Shapes::StructureShape.new(name: 'PostgreSQLCatalogTarget')
    Predecessor = Shapes::StructureShape.new(name: 'Predecessor')
    PredecessorList = Shapes::ListShape.new(name: 'PredecessorList')
    Predicate = Shapes::StructureShape.new(name: 'Predicate')
    PredicateString = Shapes::StringShape.new(name: 'PredicateString')
    PrimaryKeyList = Shapes::ListShape.new(name: 'PrimaryKeyList')
    PrincipalPermissions = Shapes::StructureShape.new(name: 'PrincipalPermissions')
    PrincipalPermissionsList = Shapes::ListShape.new(name: 'PrincipalPermissionsList')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    Prob = Shapes::FloatShape.new(name: 'Prob')
    ProfileConfiguration = Shapes::StructureShape.new(name: 'ProfileConfiguration')
    PropertiesMap = Shapes::MapShape.new(name: 'PropertiesMap')
    Property = Shapes::StructureShape.new(name: 'Property')
    PropertyDescriptionString = Shapes::StringShape.new(name: 'PropertyDescriptionString')
    PropertyKey = Shapes::StringShape.new(name: 'PropertyKey')
    PropertyMap = Shapes::MapShape.new(name: 'PropertyMap')
    PropertyName = Shapes::StringShape.new(name: 'PropertyName')
    PropertyNameOverrides = Shapes::MapShape.new(name: 'PropertyNameOverrides')
    PropertyPredicate = Shapes::StructureShape.new(name: 'PropertyPredicate')
    PropertyType = Shapes::StringShape.new(name: 'PropertyType')
    PropertyTypes = Shapes::ListShape.new(name: 'PropertyTypes')
    PropertyValue = Shapes::StringShape.new(name: 'PropertyValue')
    PublicKeysList = Shapes::ListShape.new(name: 'PublicKeysList')
    PutDataCatalogEncryptionSettingsRequest = Shapes::StructureShape.new(name: 'PutDataCatalogEncryptionSettingsRequest')
    PutDataCatalogEncryptionSettingsResponse = Shapes::StructureShape.new(name: 'PutDataCatalogEncryptionSettingsResponse')
    PutDataQualityProfileAnnotationRequest = Shapes::StructureShape.new(name: 'PutDataQualityProfileAnnotationRequest')
    PutDataQualityProfileAnnotationResponse = Shapes::StructureShape.new(name: 'PutDataQualityProfileAnnotationResponse')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    PutSchemaVersionMetadataInput = Shapes::StructureShape.new(name: 'PutSchemaVersionMetadataInput')
    PutSchemaVersionMetadataResponse = Shapes::StructureShape.new(name: 'PutSchemaVersionMetadataResponse')
    PutWorkflowRunPropertiesRequest = Shapes::StructureShape.new(name: 'PutWorkflowRunPropertiesRequest')
    PutWorkflowRunPropertiesResponse = Shapes::StructureShape.new(name: 'PutWorkflowRunPropertiesResponse')
    PythonScript = Shapes::StringShape.new(name: 'PythonScript')
    PythonVersionString = Shapes::StringShape.new(name: 'PythonVersionString')
    QuerySchemaVersionMetadataInput = Shapes::StructureShape.new(name: 'QuerySchemaVersionMetadataInput')
    QuerySchemaVersionMetadataMaxResults = Shapes::IntegerShape.new(name: 'QuerySchemaVersionMetadataMaxResults')
    QuerySchemaVersionMetadataResponse = Shapes::StructureShape.new(name: 'QuerySchemaVersionMetadataResponse')
    QuerySessionContext = Shapes::StructureShape.new(name: 'QuerySessionContext')
    QuoteChar = Shapes::StringShape.new(name: 'QuoteChar')
    Recipe = Shapes::StructureShape.new(name: 'Recipe')
    RecipeAction = Shapes::StructureShape.new(name: 'RecipeAction')
    RecipeReference = Shapes::StructureShape.new(name: 'RecipeReference')
    RecipeStep = Shapes::StructureShape.new(name: 'RecipeStep')
    RecipeSteps = Shapes::ListShape.new(name: 'RecipeSteps')
    RecipeVersion = Shapes::StringShape.new(name: 'RecipeVersion')
    Record = Shapes::DocumentShape.new(name: 'Record', document: true)
    Records = Shapes::ListShape.new(name: 'Records')
    RecordsCount = Shapes::IntegerShape.new(name: 'RecordsCount')
    RecrawlBehavior = Shapes::StringShape.new(name: 'RecrawlBehavior')
    RecrawlPolicy = Shapes::StructureShape.new(name: 'RecrawlPolicy')
    RedirectUri = Shapes::StringShape.new(name: 'RedirectUri')
    RedshiftSource = Shapes::StructureShape.new(name: 'RedshiftSource')
    RedshiftTarget = Shapes::StructureShape.new(name: 'RedshiftTarget')
    ReferenceDatasetsList = Shapes::ListShape.new(name: 'ReferenceDatasetsList')
    RefreshToken = Shapes::StringShape.new(name: 'RefreshToken')
    RegisterSchemaVersionInput = Shapes::StructureShape.new(name: 'RegisterSchemaVersionInput')
    RegisterSchemaVersionResponse = Shapes::StructureShape.new(name: 'RegisterSchemaVersionResponse')
    RegistryId = Shapes::StructureShape.new(name: 'RegistryId')
    RegistryListDefinition = Shapes::ListShape.new(name: 'RegistryListDefinition')
    RegistryListItem = Shapes::StructureShape.new(name: 'RegistryListItem')
    RegistryStatus = Shapes::StringShape.new(name: 'RegistryStatus')
    RelationalCatalogSource = Shapes::StructureShape.new(name: 'RelationalCatalogSource')
    RemoveSchemaVersionMetadataInput = Shapes::StructureShape.new(name: 'RemoveSchemaVersionMetadataInput')
    RemoveSchemaVersionMetadataResponse = Shapes::StructureShape.new(name: 'RemoveSchemaVersionMetadataResponse')
    RenameField = Shapes::StructureShape.new(name: 'RenameField')
    ReplaceBoolean = Shapes::BooleanShape.new(name: 'ReplaceBoolean')
    ResetJobBookmarkRequest = Shapes::StructureShape.new(name: 'ResetJobBookmarkRequest')
    ResetJobBookmarkResponse = Shapes::StructureShape.new(name: 'ResetJobBookmarkResponse')
    ResourceAction = Shapes::StringShape.new(name: 'ResourceAction')
    ResourceArnString = Shapes::StringShape.new(name: 'ResourceArnString')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotReadyException = Shapes::StructureShape.new(name: 'ResourceNotReadyException')
    ResourceNumberLimitExceededException = Shapes::StructureShape.new(name: 'ResourceNumberLimitExceededException')
    ResourceShareType = Shapes::StringShape.new(name: 'ResourceShareType')
    ResourceState = Shapes::StringShape.new(name: 'ResourceState')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceUri = Shapes::StructureShape.new(name: 'ResourceUri')
    ResourceUriList = Shapes::ListShape.new(name: 'ResourceUriList')
    ResumeWorkflowRunRequest = Shapes::StructureShape.new(name: 'ResumeWorkflowRunRequest')
    ResumeWorkflowRunResponse = Shapes::StructureShape.new(name: 'ResumeWorkflowRunResponse')
    RetentionConfiguration = Shapes::StructureShape.new(name: 'RetentionConfiguration')
    RetentionMetrics = Shapes::StructureShape.new(name: 'RetentionMetrics')
    Role = Shapes::StringShape.new(name: 'Role')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RoleString = Shapes::StringShape.new(name: 'RoleString')
    RowTag = Shapes::StringShape.new(name: 'RowTag')
    RuleMetricsMap = Shapes::MapShape.new(name: 'RuleMetricsMap')
    RulesetNames = Shapes::ListShape.new(name: 'RulesetNames')
    RunId = Shapes::StringShape.new(name: 'RunId')
    RunIdentifier = Shapes::StructureShape.new(name: 'RunIdentifier')
    RunMetrics = Shapes::StructureShape.new(name: 'RunMetrics')
    RunStatementRequest = Shapes::StructureShape.new(name: 'RunStatementRequest')
    RunStatementResponse = Shapes::StructureShape.new(name: 'RunStatementResponse')
    RuntimeNameString = Shapes::StringShape.new(name: 'RuntimeNameString')
    S3CatalogDeltaSource = Shapes::StructureShape.new(name: 'S3CatalogDeltaSource')
    S3CatalogHudiSource = Shapes::StructureShape.new(name: 'S3CatalogHudiSource')
    S3CatalogSource = Shapes::StructureShape.new(name: 'S3CatalogSource')
    S3CatalogTarget = Shapes::StructureShape.new(name: 'S3CatalogTarget')
    S3CsvSource = Shapes::StructureShape.new(name: 'S3CsvSource')
    S3DeltaCatalogTarget = Shapes::StructureShape.new(name: 'S3DeltaCatalogTarget')
    S3DeltaDirectTarget = Shapes::StructureShape.new(name: 'S3DeltaDirectTarget')
    S3DeltaSource = Shapes::StructureShape.new(name: 'S3DeltaSource')
    S3DirectSourceAdditionalOptions = Shapes::StructureShape.new(name: 'S3DirectSourceAdditionalOptions')
    S3DirectTarget = Shapes::StructureShape.new(name: 'S3DirectTarget')
    S3Encryption = Shapes::StructureShape.new(name: 'S3Encryption')
    S3EncryptionList = Shapes::ListShape.new(name: 'S3EncryptionList')
    S3EncryptionMode = Shapes::StringShape.new(name: 'S3EncryptionMode')
    S3ExcelSource = Shapes::StructureShape.new(name: 'S3ExcelSource')
    S3GlueParquetTarget = Shapes::StructureShape.new(name: 'S3GlueParquetTarget')
    S3HudiCatalogTarget = Shapes::StructureShape.new(name: 'S3HudiCatalogTarget')
    S3HudiDirectTarget = Shapes::StructureShape.new(name: 'S3HudiDirectTarget')
    S3HudiSource = Shapes::StructureShape.new(name: 'S3HudiSource')
    S3HyperDirectTarget = Shapes::StructureShape.new(name: 'S3HyperDirectTarget')
    S3IcebergDirectTarget = Shapes::StructureShape.new(name: 'S3IcebergDirectTarget')
    S3JsonSource = Shapes::StructureShape.new(name: 'S3JsonSource')
    S3ParquetSource = Shapes::StructureShape.new(name: 'S3ParquetSource')
    S3SourceAdditionalOptions = Shapes::StructureShape.new(name: 'S3SourceAdditionalOptions')
    S3Target = Shapes::StructureShape.new(name: 'S3Target')
    S3TargetList = Shapes::ListShape.new(name: 'S3TargetList')
    SampleSizePercentage = Shapes::FloatShape.new(name: 'SampleSizePercentage')
    ScalaCode = Shapes::StringShape.new(name: 'ScalaCode')
    Schedule = Shapes::StructureShape.new(name: 'Schedule')
    ScheduleState = Shapes::StringShape.new(name: 'ScheduleState')
    ScheduleType = Shapes::StringShape.new(name: 'ScheduleType')
    SchedulerNotRunningException = Shapes::StructureShape.new(name: 'SchedulerNotRunningException')
    SchedulerRunningException = Shapes::StructureShape.new(name: 'SchedulerRunningException')
    SchedulerTransitioningException = Shapes::StructureShape.new(name: 'SchedulerTransitioningException')
    SchemaChangePolicy = Shapes::StructureShape.new(name: 'SchemaChangePolicy')
    SchemaCheckpointNumber = Shapes::IntegerShape.new(name: 'SchemaCheckpointNumber')
    SchemaColumn = Shapes::StructureShape.new(name: 'SchemaColumn')
    SchemaDefinitionDiff = Shapes::StringShape.new(name: 'SchemaDefinitionDiff')
    SchemaDefinitionString = Shapes::StringShape.new(name: 'SchemaDefinitionString')
    SchemaDiffType = Shapes::StringShape.new(name: 'SchemaDiffType')
    SchemaId = Shapes::StructureShape.new(name: 'SchemaId')
    SchemaListDefinition = Shapes::ListShape.new(name: 'SchemaListDefinition')
    SchemaListItem = Shapes::StructureShape.new(name: 'SchemaListItem')
    SchemaPathString = Shapes::StringShape.new(name: 'SchemaPathString')
    SchemaReference = Shapes::StructureShape.new(name: 'SchemaReference')
    SchemaRegistryNameString = Shapes::StringShape.new(name: 'SchemaRegistryNameString')
    SchemaRegistryTokenString = Shapes::StringShape.new(name: 'SchemaRegistryTokenString')
    SchemaStatus = Shapes::StringShape.new(name: 'SchemaStatus')
    SchemaValidationError = Shapes::StringShape.new(name: 'SchemaValidationError')
    SchemaVersionErrorItem = Shapes::StructureShape.new(name: 'SchemaVersionErrorItem')
    SchemaVersionErrorList = Shapes::ListShape.new(name: 'SchemaVersionErrorList')
    SchemaVersionIdString = Shapes::StringShape.new(name: 'SchemaVersionIdString')
    SchemaVersionList = Shapes::ListShape.new(name: 'SchemaVersionList')
    SchemaVersionListItem = Shapes::StructureShape.new(name: 'SchemaVersionListItem')
    SchemaVersionNumber = Shapes::StructureShape.new(name: 'SchemaVersionNumber')
    SchemaVersionStatus = Shapes::StringShape.new(name: 'SchemaVersionStatus')
    ScriptLocationString = Shapes::StringShape.new(name: 'ScriptLocationString')
    SearchPropertyPredicates = Shapes::ListShape.new(name: 'SearchPropertyPredicates')
    SearchTablesRequest = Shapes::StructureShape.new(name: 'SearchTablesRequest')
    SearchTablesResponse = Shapes::StructureShape.new(name: 'SearchTablesResponse')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecurityConfiguration = Shapes::StructureShape.new(name: 'SecurityConfiguration')
    SecurityConfigurationList = Shapes::ListShape.new(name: 'SecurityConfigurationList')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    Segment = Shapes::StructureShape.new(name: 'Segment')
    SelectFields = Shapes::StructureShape.new(name: 'SelectFields')
    SelectFromCollection = Shapes::StructureShape.new(name: 'SelectFromCollection')
    SelectedFields = Shapes::ListShape.new(name: 'SelectedFields')
    Separator = Shapes::StringShape.new(name: 'Separator')
    SerDeInfo = Shapes::StructureShape.new(name: 'SerDeInfo')
    Session = Shapes::StructureShape.new(name: 'Session')
    SessionCommand = Shapes::StructureShape.new(name: 'SessionCommand')
    SessionIdList = Shapes::ListShape.new(name: 'SessionIdList')
    SessionList = Shapes::ListShape.new(name: 'SessionList')
    SessionStatus = Shapes::StringShape.new(name: 'SessionStatus')
    SettingSource = Shapes::StringShape.new(name: 'SettingSource')
    SkewedInfo = Shapes::StructureShape.new(name: 'SkewedInfo')
    SnowflakeNodeData = Shapes::StructureShape.new(name: 'SnowflakeNodeData')
    SnowflakeSource = Shapes::StructureShape.new(name: 'SnowflakeSource')
    SnowflakeTarget = Shapes::StructureShape.new(name: 'SnowflakeTarget')
    Sort = Shapes::StringShape.new(name: 'Sort')
    SortCriteria = Shapes::ListShape.new(name: 'SortCriteria')
    SortCriterion = Shapes::StructureShape.new(name: 'SortCriterion')
    SortDirectionType = Shapes::StringShape.new(name: 'SortDirectionType')
    SourceControlAuthStrategy = Shapes::StringShape.new(name: 'SourceControlAuthStrategy')
    SourceControlDetails = Shapes::StructureShape.new(name: 'SourceControlDetails')
    SourceControlProvider = Shapes::StringShape.new(name: 'SourceControlProvider')
    SourceProcessingProperties = Shapes::StructureShape.new(name: 'SourceProcessingProperties')
    SourceTableConfig = Shapes::StructureShape.new(name: 'SourceTableConfig')
    SourceTableFieldsList = Shapes::ListShape.new(name: 'SourceTableFieldsList')
    SparkConnectorSource = Shapes::StructureShape.new(name: 'SparkConnectorSource')
    SparkConnectorTarget = Shapes::StructureShape.new(name: 'SparkConnectorTarget')
    SparkSQL = Shapes::StructureShape.new(name: 'SparkSQL')
    Spigot = Shapes::StructureShape.new(name: 'Spigot')
    SplitFields = Shapes::StructureShape.new(name: 'SplitFields')
    SqlAlias = Shapes::StructureShape.new(name: 'SqlAlias')
    SqlAliases = Shapes::ListShape.new(name: 'SqlAliases')
    SqlQuery = Shapes::StringShape.new(name: 'SqlQuery')
    StartBlueprintRunRequest = Shapes::StructureShape.new(name: 'StartBlueprintRunRequest')
    StartBlueprintRunResponse = Shapes::StructureShape.new(name: 'StartBlueprintRunResponse')
    StartColumnStatisticsTaskRunRequest = Shapes::StructureShape.new(name: 'StartColumnStatisticsTaskRunRequest')
    StartColumnStatisticsTaskRunResponse = Shapes::StructureShape.new(name: 'StartColumnStatisticsTaskRunResponse')
    StartColumnStatisticsTaskRunScheduleRequest = Shapes::StructureShape.new(name: 'StartColumnStatisticsTaskRunScheduleRequest')
    StartColumnStatisticsTaskRunScheduleResponse = Shapes::StructureShape.new(name: 'StartColumnStatisticsTaskRunScheduleResponse')
    StartCrawlerRequest = Shapes::StructureShape.new(name: 'StartCrawlerRequest')
    StartCrawlerResponse = Shapes::StructureShape.new(name: 'StartCrawlerResponse')
    StartCrawlerScheduleRequest = Shapes::StructureShape.new(name: 'StartCrawlerScheduleRequest')
    StartCrawlerScheduleResponse = Shapes::StructureShape.new(name: 'StartCrawlerScheduleResponse')
    StartDataQualityRuleRecommendationRunRequest = Shapes::StructureShape.new(name: 'StartDataQualityRuleRecommendationRunRequest')
    StartDataQualityRuleRecommendationRunResponse = Shapes::StructureShape.new(name: 'StartDataQualityRuleRecommendationRunResponse')
    StartDataQualityRulesetEvaluationRunRequest = Shapes::StructureShape.new(name: 'StartDataQualityRulesetEvaluationRunRequest')
    StartDataQualityRulesetEvaluationRunResponse = Shapes::StructureShape.new(name: 'StartDataQualityRulesetEvaluationRunResponse')
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
    StartingEventBatchCondition = Shapes::StructureShape.new(name: 'StartingEventBatchCondition')
    StartingPosition = Shapes::StringShape.new(name: 'StartingPosition')
    Statement = Shapes::StructureShape.new(name: 'Statement')
    StatementList = Shapes::ListShape.new(name: 'StatementList')
    StatementOutput = Shapes::StructureShape.new(name: 'StatementOutput')
    StatementOutputData = Shapes::StructureShape.new(name: 'StatementOutputData')
    StatementState = Shapes::StringShape.new(name: 'StatementState')
    StatisticAnnotation = Shapes::StructureShape.new(name: 'StatisticAnnotation')
    StatisticEvaluationLevel = Shapes::StringShape.new(name: 'StatisticEvaluationLevel')
    StatisticModelResult = Shapes::StructureShape.new(name: 'StatisticModelResult')
    StatisticModelResults = Shapes::ListShape.new(name: 'StatisticModelResults')
    StatisticNameString = Shapes::StringShape.new(name: 'StatisticNameString')
    StatisticPropertiesMap = Shapes::MapShape.new(name: 'StatisticPropertiesMap')
    StatisticSummary = Shapes::StructureShape.new(name: 'StatisticSummary')
    StatisticSummaryList = Shapes::ListShape.new(name: 'StatisticSummaryList')
    StatusDetails = Shapes::StructureShape.new(name: 'StatusDetails')
    StopColumnStatisticsTaskRunRequest = Shapes::StructureShape.new(name: 'StopColumnStatisticsTaskRunRequest')
    StopColumnStatisticsTaskRunResponse = Shapes::StructureShape.new(name: 'StopColumnStatisticsTaskRunResponse')
    StopColumnStatisticsTaskRunScheduleRequest = Shapes::StructureShape.new(name: 'StopColumnStatisticsTaskRunScheduleRequest')
    StopColumnStatisticsTaskRunScheduleResponse = Shapes::StructureShape.new(name: 'StopColumnStatisticsTaskRunScheduleResponse')
    StopCrawlerRequest = Shapes::StructureShape.new(name: 'StopCrawlerRequest')
    StopCrawlerResponse = Shapes::StructureShape.new(name: 'StopCrawlerResponse')
    StopCrawlerScheduleRequest = Shapes::StructureShape.new(name: 'StopCrawlerScheduleRequest')
    StopCrawlerScheduleResponse = Shapes::StructureShape.new(name: 'StopCrawlerScheduleResponse')
    StopSessionRequest = Shapes::StructureShape.new(name: 'StopSessionRequest')
    StopSessionResponse = Shapes::StructureShape.new(name: 'StopSessionResponse')
    StopTriggerRequest = Shapes::StructureShape.new(name: 'StopTriggerRequest')
    StopTriggerResponse = Shapes::StructureShape.new(name: 'StopTriggerResponse')
    StopWorkflowRunRequest = Shapes::StructureShape.new(name: 'StopWorkflowRunRequest')
    StopWorkflowRunResponse = Shapes::StructureShape.new(name: 'StopWorkflowRunResponse')
    StorageDescriptor = Shapes::StructureShape.new(name: 'StorageDescriptor')
    StreamingDataPreviewOptions = Shapes::StructureShape.new(name: 'StreamingDataPreviewOptions')
    String = Shapes::StringShape.new(name: 'String')
    String128 = Shapes::StringShape.new(name: 'String128')
    String2048 = Shapes::StringShape.new(name: 'String2048')
    StringColumnStatisticsData = Shapes::StructureShape.new(name: 'StringColumnStatisticsData')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringToStringMap = Shapes::MapShape.new(name: 'StringToStringMap')
    SupportedDialect = Shapes::StructureShape.new(name: 'SupportedDialect')
    Table = Shapes::StructureShape.new(name: 'Table')
    TableAttributes = Shapes::StringShape.new(name: 'TableAttributes')
    TableAttributesList = Shapes::ListShape.new(name: 'TableAttributesList')
    TableError = Shapes::StructureShape.new(name: 'TableError')
    TableErrors = Shapes::ListShape.new(name: 'TableErrors')
    TableIdentifier = Shapes::StructureShape.new(name: 'TableIdentifier')
    TableInput = Shapes::StructureShape.new(name: 'TableInput')
    TableList = Shapes::ListShape.new(name: 'TableList')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TableOptimizer = Shapes::StructureShape.new(name: 'TableOptimizer')
    TableOptimizerConfiguration = Shapes::StructureShape.new(name: 'TableOptimizerConfiguration')
    TableOptimizerEventType = Shapes::StringShape.new(name: 'TableOptimizerEventType')
    TableOptimizerRun = Shapes::StructureShape.new(name: 'TableOptimizerRun')
    TableOptimizerRunTimestamp = Shapes::TimestampShape.new(name: 'TableOptimizerRunTimestamp')
    TableOptimizerRuns = Shapes::ListShape.new(name: 'TableOptimizerRuns')
    TableOptimizerType = Shapes::StringShape.new(name: 'TableOptimizerType')
    TableOptimizerVpcConfiguration = Shapes::UnionShape.new(name: 'TableOptimizerVpcConfiguration')
    TablePrefix = Shapes::StringShape.new(name: 'TablePrefix')
    TableStatus = Shapes::StructureShape.new(name: 'TableStatus')
    TableTypeString = Shapes::StringShape.new(name: 'TableTypeString')
    TableVersion = Shapes::StructureShape.new(name: 'TableVersion')
    TableVersionError = Shapes::StructureShape.new(name: 'TableVersionError')
    TableVersionErrors = Shapes::ListShape.new(name: 'TableVersionErrors')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeysList = Shapes::ListShape.new(name: 'TagKeysList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TargetColumn = Shapes::StringShape.new(name: 'TargetColumn')
    TargetFormat = Shapes::StringShape.new(name: 'TargetFormat')
    TargetProcessingProperties = Shapes::StructureShape.new(name: 'TargetProcessingProperties')
    TargetRedshiftCatalog = Shapes::StructureShape.new(name: 'TargetRedshiftCatalog')
    TargetResourceNotFound = Shapes::StructureShape.new(name: 'TargetResourceNotFound')
    TargetTableConfig = Shapes::StructureShape.new(name: 'TargetTableConfig')
    TaskRun = Shapes::StructureShape.new(name: 'TaskRun')
    TaskRunFilterCriteria = Shapes::StructureShape.new(name: 'TaskRunFilterCriteria')
    TaskRunList = Shapes::ListShape.new(name: 'TaskRunList')
    TaskRunProperties = Shapes::StructureShape.new(name: 'TaskRunProperties')
    TaskRunSortColumnType = Shapes::StringShape.new(name: 'TaskRunSortColumnType')
    TaskRunSortCriteria = Shapes::StructureShape.new(name: 'TaskRunSortCriteria')
    TaskStatusType = Shapes::StringShape.new(name: 'TaskStatusType')
    TaskType = Shapes::StringShape.new(name: 'TaskType')
    TestConnectionInput = Shapes::StructureShape.new(name: 'TestConnectionInput')
    TestConnectionRequest = Shapes::StructureShape.new(name: 'TestConnectionRequest')
    TestConnectionResponse = Shapes::StructureShape.new(name: 'TestConnectionResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timeout = Shapes::IntegerShape.new(name: 'Timeout')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampFilter = Shapes::StructureShape.new(name: 'TimestampFilter')
    TimestampValue = Shapes::TimestampShape.new(name: 'TimestampValue')
    TimestampedInclusionAnnotation = Shapes::StructureShape.new(name: 'TimestampedInclusionAnnotation')
    Token = Shapes::StringShape.new(name: 'Token')
    TokenUrl = Shapes::StringShape.new(name: 'TokenUrl')
    TokenUrlParameterKey = Shapes::StringShape.new(name: 'TokenUrlParameterKey')
    TokenUrlParameterValue = Shapes::StringShape.new(name: 'TokenUrlParameterValue')
    TokenUrlParametersMap = Shapes::MapShape.new(name: 'TokenUrlParametersMap')
    Topk = Shapes::IntegerShape.new(name: 'Topk')
    TotalSegmentsInteger = Shapes::IntegerShape.new(name: 'TotalSegmentsInteger')
    TransactionIdString = Shapes::StringShape.new(name: 'TransactionIdString')
    TransformConfigParameter = Shapes::StructureShape.new(name: 'TransformConfigParameter')
    TransformConfigParameterList = Shapes::ListShape.new(name: 'TransformConfigParameterList')
    TransformEncryption = Shapes::StructureShape.new(name: 'TransformEncryption')
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
    TwoInputs = Shapes::ListShape.new(name: 'TwoInputs')
    TypeString = Shapes::StringShape.new(name: 'TypeString')
    URI = Shapes::StringShape.new(name: 'URI')
    UnfilteredPartition = Shapes::StructureShape.new(name: 'UnfilteredPartition')
    UnfilteredPartitionList = Shapes::ListShape.new(name: 'UnfilteredPartitionList')
    Union = Shapes::StructureShape.new(name: 'Union')
    UnionType = Shapes::StringShape.new(name: 'UnionType')
    UnnestSpec = Shapes::StringShape.new(name: 'UnnestSpec')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateBehavior = Shapes::StringShape.new(name: 'UpdateBehavior')
    UpdateBlueprintRequest = Shapes::StructureShape.new(name: 'UpdateBlueprintRequest')
    UpdateBlueprintResponse = Shapes::StructureShape.new(name: 'UpdateBlueprintResponse')
    UpdateCatalogBehavior = Shapes::StringShape.new(name: 'UpdateCatalogBehavior')
    UpdateCatalogRequest = Shapes::StructureShape.new(name: 'UpdateCatalogRequest')
    UpdateCatalogResponse = Shapes::StructureShape.new(name: 'UpdateCatalogResponse')
    UpdateClassifierRequest = Shapes::StructureShape.new(name: 'UpdateClassifierRequest')
    UpdateClassifierResponse = Shapes::StructureShape.new(name: 'UpdateClassifierResponse')
    UpdateColumnStatisticsForPartitionRequest = Shapes::StructureShape.new(name: 'UpdateColumnStatisticsForPartitionRequest')
    UpdateColumnStatisticsForPartitionResponse = Shapes::StructureShape.new(name: 'UpdateColumnStatisticsForPartitionResponse')
    UpdateColumnStatisticsForTableRequest = Shapes::StructureShape.new(name: 'UpdateColumnStatisticsForTableRequest')
    UpdateColumnStatisticsForTableResponse = Shapes::StructureShape.new(name: 'UpdateColumnStatisticsForTableResponse')
    UpdateColumnStatisticsList = Shapes::ListShape.new(name: 'UpdateColumnStatisticsList')
    UpdateColumnStatisticsTaskSettingsRequest = Shapes::StructureShape.new(name: 'UpdateColumnStatisticsTaskSettingsRequest')
    UpdateColumnStatisticsTaskSettingsResponse = Shapes::StructureShape.new(name: 'UpdateColumnStatisticsTaskSettingsResponse')
    UpdateConnectionRequest = Shapes::StructureShape.new(name: 'UpdateConnectionRequest')
    UpdateConnectionResponse = Shapes::StructureShape.new(name: 'UpdateConnectionResponse')
    UpdateCrawlerRequest = Shapes::StructureShape.new(name: 'UpdateCrawlerRequest')
    UpdateCrawlerResponse = Shapes::StructureShape.new(name: 'UpdateCrawlerResponse')
    UpdateCrawlerScheduleRequest = Shapes::StructureShape.new(name: 'UpdateCrawlerScheduleRequest')
    UpdateCrawlerScheduleResponse = Shapes::StructureShape.new(name: 'UpdateCrawlerScheduleResponse')
    UpdateCsvClassifierRequest = Shapes::StructureShape.new(name: 'UpdateCsvClassifierRequest')
    UpdateDataQualityRulesetRequest = Shapes::StructureShape.new(name: 'UpdateDataQualityRulesetRequest')
    UpdateDataQualityRulesetResponse = Shapes::StructureShape.new(name: 'UpdateDataQualityRulesetResponse')
    UpdateDatabaseRequest = Shapes::StructureShape.new(name: 'UpdateDatabaseRequest')
    UpdateDatabaseResponse = Shapes::StructureShape.new(name: 'UpdateDatabaseResponse')
    UpdateDevEndpointRequest = Shapes::StructureShape.new(name: 'UpdateDevEndpointRequest')
    UpdateDevEndpointResponse = Shapes::StructureShape.new(name: 'UpdateDevEndpointResponse')
    UpdateGrokClassifierRequest = Shapes::StructureShape.new(name: 'UpdateGrokClassifierRequest')
    UpdateIcebergInput = Shapes::StructureShape.new(name: 'UpdateIcebergInput')
    UpdateIcebergTableInput = Shapes::StructureShape.new(name: 'UpdateIcebergTableInput')
    UpdateIntegrationResourcePropertyRequest = Shapes::StructureShape.new(name: 'UpdateIntegrationResourcePropertyRequest')
    UpdateIntegrationResourcePropertyResponse = Shapes::StructureShape.new(name: 'UpdateIntegrationResourcePropertyResponse')
    UpdateIntegrationTablePropertiesRequest = Shapes::StructureShape.new(name: 'UpdateIntegrationTablePropertiesRequest')
    UpdateIntegrationTablePropertiesResponse = Shapes::StructureShape.new(name: 'UpdateIntegrationTablePropertiesResponse')
    UpdateJobFromSourceControlRequest = Shapes::StructureShape.new(name: 'UpdateJobFromSourceControlRequest')
    UpdateJobFromSourceControlResponse = Shapes::StructureShape.new(name: 'UpdateJobFromSourceControlResponse')
    UpdateJobRequest = Shapes::StructureShape.new(name: 'UpdateJobRequest')
    UpdateJobResponse = Shapes::StructureShape.new(name: 'UpdateJobResponse')
    UpdateJsonClassifierRequest = Shapes::StructureShape.new(name: 'UpdateJsonClassifierRequest')
    UpdateMLTransformRequest = Shapes::StructureShape.new(name: 'UpdateMLTransformRequest')
    UpdateMLTransformResponse = Shapes::StructureShape.new(name: 'UpdateMLTransformResponse')
    UpdateOpenTableFormatInput = Shapes::StructureShape.new(name: 'UpdateOpenTableFormatInput')
    UpdatePartitionRequest = Shapes::StructureShape.new(name: 'UpdatePartitionRequest')
    UpdatePartitionResponse = Shapes::StructureShape.new(name: 'UpdatePartitionResponse')
    UpdateRegistryInput = Shapes::StructureShape.new(name: 'UpdateRegistryInput')
    UpdateRegistryResponse = Shapes::StructureShape.new(name: 'UpdateRegistryResponse')
    UpdateSchemaInput = Shapes::StructureShape.new(name: 'UpdateSchemaInput')
    UpdateSchemaResponse = Shapes::StructureShape.new(name: 'UpdateSchemaResponse')
    UpdateSourceControlFromJobRequest = Shapes::StructureShape.new(name: 'UpdateSourceControlFromJobRequest')
    UpdateSourceControlFromJobResponse = Shapes::StructureShape.new(name: 'UpdateSourceControlFromJobResponse')
    UpdateTableOptimizerRequest = Shapes::StructureShape.new(name: 'UpdateTableOptimizerRequest')
    UpdateTableOptimizerResponse = Shapes::StructureShape.new(name: 'UpdateTableOptimizerResponse')
    UpdateTableRequest = Shapes::StructureShape.new(name: 'UpdateTableRequest')
    UpdateTableResponse = Shapes::StructureShape.new(name: 'UpdateTableResponse')
    UpdateTriggerRequest = Shapes::StructureShape.new(name: 'UpdateTriggerRequest')
    UpdateTriggerResponse = Shapes::StructureShape.new(name: 'UpdateTriggerResponse')
    UpdateUsageProfileRequest = Shapes::StructureShape.new(name: 'UpdateUsageProfileRequest')
    UpdateUsageProfileResponse = Shapes::StructureShape.new(name: 'UpdateUsageProfileResponse')
    UpdateUserDefinedFunctionRequest = Shapes::StructureShape.new(name: 'UpdateUserDefinedFunctionRequest')
    UpdateUserDefinedFunctionResponse = Shapes::StructureShape.new(name: 'UpdateUserDefinedFunctionResponse')
    UpdateWorkflowRequest = Shapes::StructureShape.new(name: 'UpdateWorkflowRequest')
    UpdateWorkflowResponse = Shapes::StructureShape.new(name: 'UpdateWorkflowResponse')
    UpdateXMLClassifierRequest = Shapes::StructureShape.new(name: 'UpdateXMLClassifierRequest')
    UpdatedTimestamp = Shapes::StringShape.new(name: 'UpdatedTimestamp')
    UpsertRedshiftTargetOptions = Shapes::StructureShape.new(name: 'UpsertRedshiftTargetOptions')
    UriString = Shapes::StringShape.new(name: 'UriString')
    UrlString = Shapes::StringShape.new(name: 'UrlString')
    UsageProfileDefinition = Shapes::StructureShape.new(name: 'UsageProfileDefinition')
    UsageProfileDefinitionList = Shapes::ListShape.new(name: 'UsageProfileDefinitionList')
    UserDefinedFunction = Shapes::StructureShape.new(name: 'UserDefinedFunction')
    UserDefinedFunctionInput = Shapes::StructureShape.new(name: 'UserDefinedFunctionInput')
    UserDefinedFunctionList = Shapes::ListShape.new(name: 'UserDefinedFunctionList')
    UserManagedClientApplicationClientId = Shapes::StringShape.new(name: 'UserManagedClientApplicationClientId')
    UserManagedClientApplicationClientSecret = Shapes::StringShape.new(name: 'UserManagedClientApplicationClientSecret')
    Username = Shapes::StringShape.new(name: 'Username')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValueString = Shapes::StringShape.new(name: 'ValueString')
    ValueStringList = Shapes::ListShape.new(name: 'ValueStringList')
    Vendor = Shapes::StringShape.new(name: 'Vendor')
    VersionId = Shapes::IntegerShape.new(name: 'VersionId')
    VersionLongNumber = Shapes::IntegerShape.new(name: 'VersionLongNumber')
    VersionMismatchException = Shapes::StructureShape.new(name: 'VersionMismatchException')
    VersionString = Shapes::StringShape.new(name: 'VersionString')
    VersionsString = Shapes::StringShape.new(name: 'VersionsString')
    ViewDefinition = Shapes::StructureShape.new(name: 'ViewDefinition')
    ViewDefinitionInput = Shapes::StructureShape.new(name: 'ViewDefinitionInput')
    ViewDialect = Shapes::StringShape.new(name: 'ViewDialect')
    ViewDialectVersionString = Shapes::StringShape.new(name: 'ViewDialectVersionString')
    ViewRepresentation = Shapes::StructureShape.new(name: 'ViewRepresentation')
    ViewRepresentationInput = Shapes::StructureShape.new(name: 'ViewRepresentationInput')
    ViewRepresentationInputList = Shapes::ListShape.new(name: 'ViewRepresentationInputList')
    ViewRepresentationList = Shapes::ListShape.new(name: 'ViewRepresentationList')
    ViewSubObjectsList = Shapes::ListShape.new(name: 'ViewSubObjectsList')
    ViewTextString = Shapes::StringShape.new(name: 'ViewTextString')
    ViewUpdateAction = Shapes::StringShape.new(name: 'ViewUpdateAction')
    ViewValidation = Shapes::StructureShape.new(name: 'ViewValidation')
    ViewValidationList = Shapes::ListShape.new(name: 'ViewValidationList')
    WorkerType = Shapes::StringShape.new(name: 'WorkerType')
    Workflow = Shapes::StructureShape.new(name: 'Workflow')
    WorkflowDescriptionString = Shapes::StringShape.new(name: 'WorkflowDescriptionString')
    WorkflowGraph = Shapes::StructureShape.new(name: 'WorkflowGraph')
    WorkflowNames = Shapes::ListShape.new(name: 'WorkflowNames')
    WorkflowRun = Shapes::StructureShape.new(name: 'WorkflowRun')
    WorkflowRunProperties = Shapes::MapShape.new(name: 'WorkflowRunProperties')
    WorkflowRunStatistics = Shapes::StructureShape.new(name: 'WorkflowRunStatistics')
    WorkflowRunStatus = Shapes::StringShape.new(name: 'WorkflowRunStatus')
    WorkflowRuns = Shapes::ListShape.new(name: 'WorkflowRuns')
    Workflows = Shapes::ListShape.new(name: 'Workflows')
    XMLClassifier = Shapes::StructureShape.new(name: 'XMLClassifier')
    databaseNameString = Shapes::StringShape.new(name: 'databaseNameString')
    double = Shapes::FloatShape.new(name: 'double')
    dpuCounts = Shapes::IntegerShape.new(name: 'dpuCounts')
    dpuDurationInHour = Shapes::FloatShape.new(name: 'dpuDurationInHour')
    dpuHours = Shapes::FloatShape.new(name: 'dpuHours')
    glueConnectionNameString = Shapes::StringShape.new(name: 'glueConnectionNameString')
    metricCounts = Shapes::IntegerShape.new(name: 'metricCounts')
    tableNameString = Shapes::StringShape.new(name: 'tableNameString')

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

    AdditionalContextMap.key = Shapes::ShapeRef.new(shape: ContextKey)
    AdditionalContextMap.value = Shapes::ShapeRef.new(shape: ContextValue)

    AdditionalOptions.key = Shapes::ShapeRef.new(shape: EnclosedInStringProperty)
    AdditionalOptions.value = Shapes::ShapeRef.new(shape: EnclosedInStringProperty)

    AdditionalPlanOptionsMap.key = Shapes::ShapeRef.new(shape: GenericString)
    AdditionalPlanOptionsMap.value = Shapes::ShapeRef.new(shape: GenericString)

    Aggregate.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    Aggregate.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    Aggregate.add_member(:groups, Shapes::ShapeRef.new(shape: GlueStudioPathList, required: true, location_name: "Groups"))
    Aggregate.add_member(:aggs, Shapes::ShapeRef.new(shape: AggregateOperations, required: true, location_name: "Aggs"))
    Aggregate.struct_class = Types::Aggregate

    AggregateOperation.add_member(:column, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, required: true, location_name: "Column"))
    AggregateOperation.add_member(:agg_func, Shapes::ShapeRef.new(shape: AggFunction, required: true, location_name: "AggFunc"))
    AggregateOperation.struct_class = Types::AggregateOperation

    AggregateOperations.member = Shapes::ShapeRef.new(shape: AggregateOperation)

    AllowedValue.add_member(:description, Shapes::ShapeRef.new(shape: AllowedValueDescriptionString, location_name: "Description"))
    AllowedValue.add_member(:value, Shapes::ShapeRef.new(shape: AllowedValueValueString, required: true, location_name: "Value"))
    AllowedValue.struct_class = Types::AllowedValue

    AllowedValues.member = Shapes::ShapeRef.new(shape: AllowedValue)

    AllowedValuesStringList.member = Shapes::ShapeRef.new(shape: ConfigValueString)

    AlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    AmazonRedshiftAdvancedOption.add_member(:key, Shapes::ShapeRef.new(shape: GenericString, location_name: "Key"))
    AmazonRedshiftAdvancedOption.add_member(:value, Shapes::ShapeRef.new(shape: GenericString, location_name: "Value"))
    AmazonRedshiftAdvancedOption.struct_class = Types::AmazonRedshiftAdvancedOption

    AmazonRedshiftAdvancedOptions.member = Shapes::ShapeRef.new(shape: AmazonRedshiftAdvancedOption)

    AmazonRedshiftNodeData.add_member(:access_type, Shapes::ShapeRef.new(shape: GenericLimitedString, location_name: "AccessType"))
    AmazonRedshiftNodeData.add_member(:source_type, Shapes::ShapeRef.new(shape: GenericLimitedString, location_name: "SourceType"))
    AmazonRedshiftNodeData.add_member(:connection, Shapes::ShapeRef.new(shape: Option, location_name: "Connection"))
    AmazonRedshiftNodeData.add_member(:schema, Shapes::ShapeRef.new(shape: Option, location_name: "Schema"))
    AmazonRedshiftNodeData.add_member(:table, Shapes::ShapeRef.new(shape: Option, location_name: "Table"))
    AmazonRedshiftNodeData.add_member(:catalog_database, Shapes::ShapeRef.new(shape: Option, location_name: "CatalogDatabase"))
    AmazonRedshiftNodeData.add_member(:catalog_table, Shapes::ShapeRef.new(shape: Option, location_name: "CatalogTable"))
    AmazonRedshiftNodeData.add_member(:catalog_redshift_schema, Shapes::ShapeRef.new(shape: GenericString, location_name: "CatalogRedshiftSchema"))
    AmazonRedshiftNodeData.add_member(:catalog_redshift_table, Shapes::ShapeRef.new(shape: GenericString, location_name: "CatalogRedshiftTable"))
    AmazonRedshiftNodeData.add_member(:temp_dir, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "TempDir"))
    AmazonRedshiftNodeData.add_member(:iam_role, Shapes::ShapeRef.new(shape: Option, location_name: "IamRole"))
    AmazonRedshiftNodeData.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AmazonRedshiftAdvancedOptions, location_name: "AdvancedOptions"))
    AmazonRedshiftNodeData.add_member(:sample_query, Shapes::ShapeRef.new(shape: GenericString, location_name: "SampleQuery"))
    AmazonRedshiftNodeData.add_member(:pre_action, Shapes::ShapeRef.new(shape: GenericString, location_name: "PreAction"))
    AmazonRedshiftNodeData.add_member(:post_action, Shapes::ShapeRef.new(shape: GenericString, location_name: "PostAction"))
    AmazonRedshiftNodeData.add_member(:action, Shapes::ShapeRef.new(shape: GenericString, location_name: "Action"))
    AmazonRedshiftNodeData.add_member(:table_prefix, Shapes::ShapeRef.new(shape: GenericLimitedString, location_name: "TablePrefix"))
    AmazonRedshiftNodeData.add_member(:upsert, Shapes::ShapeRef.new(shape: BooleanValue, location_name: "Upsert"))
    AmazonRedshiftNodeData.add_member(:merge_action, Shapes::ShapeRef.new(shape: GenericLimitedString, location_name: "MergeAction"))
    AmazonRedshiftNodeData.add_member(:merge_when_matched, Shapes::ShapeRef.new(shape: GenericLimitedString, location_name: "MergeWhenMatched"))
    AmazonRedshiftNodeData.add_member(:merge_when_not_matched, Shapes::ShapeRef.new(shape: GenericLimitedString, location_name: "MergeWhenNotMatched"))
    AmazonRedshiftNodeData.add_member(:merge_clause, Shapes::ShapeRef.new(shape: GenericString, location_name: "MergeClause"))
    AmazonRedshiftNodeData.add_member(:crawler_connection, Shapes::ShapeRef.new(shape: GenericString, location_name: "CrawlerConnection"))
    AmazonRedshiftNodeData.add_member(:table_schema, Shapes::ShapeRef.new(shape: OptionList, location_name: "TableSchema"))
    AmazonRedshiftNodeData.add_member(:staging_table, Shapes::ShapeRef.new(shape: GenericString, location_name: "StagingTable"))
    AmazonRedshiftNodeData.add_member(:selected_columns, Shapes::ShapeRef.new(shape: OptionList, location_name: "SelectedColumns"))
    AmazonRedshiftNodeData.struct_class = Types::AmazonRedshiftNodeData

    AmazonRedshiftSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, location_name: "Name"))
    AmazonRedshiftSource.add_member(:data, Shapes::ShapeRef.new(shape: AmazonRedshiftNodeData, location_name: "Data"))
    AmazonRedshiftSource.struct_class = Types::AmazonRedshiftSource

    AmazonRedshiftTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, location_name: "Name"))
    AmazonRedshiftTarget.add_member(:data, Shapes::ShapeRef.new(shape: AmazonRedshiftNodeData, location_name: "Data"))
    AmazonRedshiftTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, location_name: "Inputs"))
    AmazonRedshiftTarget.struct_class = Types::AmazonRedshiftTarget

    AnnotationError.add_member(:profile_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ProfileId"))
    AnnotationError.add_member(:statistic_id, Shapes::ShapeRef.new(shape: HashString, location_name: "StatisticId"))
    AnnotationError.add_member(:failure_reason, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "FailureReason"))
    AnnotationError.struct_class = Types::AnnotationError

    AnnotationErrorList.member = Shapes::ShapeRef.new(shape: AnnotationError)

    AnnotationList.member = Shapes::ShapeRef.new(shape: StatisticAnnotation)

    ApplyMapping.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    ApplyMapping.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    ApplyMapping.add_member(:mapping, Shapes::ShapeRef.new(shape: Mappings, required: true, location_name: "Mapping"))
    ApplyMapping.struct_class = Types::ApplyMapping

    AthenaConnectorSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    AthenaConnectorSource.add_member(:connection_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionName"))
    AthenaConnectorSource.add_member(:connector_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectorName"))
    AthenaConnectorSource.add_member(:connection_type, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionType"))
    AthenaConnectorSource.add_member(:connection_table, Shapes::ShapeRef.new(shape: EnclosedInStringPropertyWithQuote, location_name: "ConnectionTable"))
    AthenaConnectorSource.add_member(:schema_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "SchemaName"))
    AthenaConnectorSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    AthenaConnectorSource.struct_class = Types::AthenaConnectorSource

    AuditColumnNamesList.member = Shapes::ShapeRef.new(shape: ColumnNameString)

    AuditContext.add_member(:additional_audit_context, Shapes::ShapeRef.new(shape: AuditContextString, location_name: "AdditionalAuditContext"))
    AuditContext.add_member(:requested_columns, Shapes::ShapeRef.new(shape: AuditColumnNamesList, location_name: "RequestedColumns"))
    AuditContext.add_member(:all_columns_requested, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "AllColumnsRequested"))
    AuditContext.struct_class = Types::AuditContext

    AuthConfiguration.add_member(:authentication_type, Shapes::ShapeRef.new(shape: Property, required: true, location_name: "AuthenticationType"))
    AuthConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: Property, location_name: "SecretArn"))
    AuthConfiguration.add_member(:o_auth_2_properties, Shapes::ShapeRef.new(shape: PropertiesMap, location_name: "OAuth2Properties"))
    AuthConfiguration.add_member(:basic_authentication_properties, Shapes::ShapeRef.new(shape: PropertiesMap, location_name: "BasicAuthenticationProperties"))
    AuthConfiguration.add_member(:custom_authentication_properties, Shapes::ShapeRef.new(shape: PropertiesMap, location_name: "CustomAuthenticationProperties"))
    AuthConfiguration.struct_class = Types::AuthConfiguration

    AuthenticationConfiguration.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "AuthenticationType"))
    AuthenticationConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    AuthenticationConfiguration.add_member(:o_auth_2_properties, Shapes::ShapeRef.new(shape: OAuth2Properties, location_name: "OAuth2Properties"))
    AuthenticationConfiguration.struct_class = Types::AuthenticationConfiguration

    AuthenticationConfigurationInput.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "AuthenticationType"))
    AuthenticationConfigurationInput.add_member(:o_auth_2_properties, Shapes::ShapeRef.new(shape: OAuth2PropertiesInput, location_name: "OAuth2Properties"))
    AuthenticationConfigurationInput.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    AuthenticationConfigurationInput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    AuthenticationConfigurationInput.add_member(:basic_authentication_credentials, Shapes::ShapeRef.new(shape: BasicAuthenticationCredentials, location_name: "BasicAuthenticationCredentials"))
    AuthenticationConfigurationInput.add_member(:custom_authentication_credentials, Shapes::ShapeRef.new(shape: CredentialMap, location_name: "CustomAuthenticationCredentials"))
    AuthenticationConfigurationInput.struct_class = Types::AuthenticationConfigurationInput

    AuthenticationTypes.member = Shapes::ShapeRef.new(shape: AuthenticationType)

    AuthorizationCodeProperties.add_member(:authorization_code, Shapes::ShapeRef.new(shape: AuthorizationCode, location_name: "AuthorizationCode"))
    AuthorizationCodeProperties.add_member(:redirect_uri, Shapes::ShapeRef.new(shape: RedirectUri, location_name: "RedirectUri"))
    AuthorizationCodeProperties.struct_class = Types::AuthorizationCodeProperties

    BackfillError.add_member(:code, Shapes::ShapeRef.new(shape: BackfillErrorCode, location_name: "Code"))
    BackfillError.add_member(:partitions, Shapes::ShapeRef.new(shape: BackfillErroredPartitionsList, location_name: "Partitions"))
    BackfillError.struct_class = Types::BackfillError

    BackfillErroredPartitionsList.member = Shapes::ShapeRef.new(shape: PartitionValueList)

    BackfillErrors.member = Shapes::ShapeRef.new(shape: BackfillError)

    BasicAuthenticationCredentials.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    BasicAuthenticationCredentials.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    BasicAuthenticationCredentials.struct_class = Types::BasicAuthenticationCredentials

    BasicCatalogTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    BasicCatalogTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    BasicCatalogTarget.add_member(:partition_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, location_name: "PartitionKeys"))
    BasicCatalogTarget.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    BasicCatalogTarget.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    BasicCatalogTarget.struct_class = Types::BasicCatalogTarget

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
    BatchDeleteTableRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
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

    BatchGetBlueprintNames.member = Shapes::ShapeRef.new(shape: OrchestrationNameString)

    BatchGetBlueprintsRequest.add_member(:names, Shapes::ShapeRef.new(shape: BatchGetBlueprintNames, required: true, location_name: "Names"))
    BatchGetBlueprintsRequest.add_member(:include_blueprint, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeBlueprint"))
    BatchGetBlueprintsRequest.add_member(:include_parameter_spec, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeParameterSpec"))
    BatchGetBlueprintsRequest.struct_class = Types::BatchGetBlueprintsRequest

    BatchGetBlueprintsResponse.add_member(:blueprints, Shapes::ShapeRef.new(shape: Blueprints, location_name: "Blueprints"))
    BatchGetBlueprintsResponse.add_member(:missing_blueprints, Shapes::ShapeRef.new(shape: BlueprintNames, location_name: "MissingBlueprints"))
    BatchGetBlueprintsResponse.struct_class = Types::BatchGetBlueprintsResponse

    BatchGetCrawlersRequest.add_member(:crawler_names, Shapes::ShapeRef.new(shape: CrawlerNameList, required: true, location_name: "CrawlerNames"))
    BatchGetCrawlersRequest.struct_class = Types::BatchGetCrawlersRequest

    BatchGetCrawlersResponse.add_member(:crawlers, Shapes::ShapeRef.new(shape: CrawlerList, location_name: "Crawlers"))
    BatchGetCrawlersResponse.add_member(:crawlers_not_found, Shapes::ShapeRef.new(shape: CrawlerNameList, location_name: "CrawlersNotFound"))
    BatchGetCrawlersResponse.struct_class = Types::BatchGetCrawlersResponse

    BatchGetCustomEntityTypesRequest.add_member(:names, Shapes::ShapeRef.new(shape: CustomEntityTypeNames, required: true, location_name: "Names"))
    BatchGetCustomEntityTypesRequest.struct_class = Types::BatchGetCustomEntityTypesRequest

    BatchGetCustomEntityTypesResponse.add_member(:custom_entity_types, Shapes::ShapeRef.new(shape: CustomEntityTypes, location_name: "CustomEntityTypes"))
    BatchGetCustomEntityTypesResponse.add_member(:custom_entity_types_not_found, Shapes::ShapeRef.new(shape: CustomEntityTypeNames, location_name: "CustomEntityTypesNotFound"))
    BatchGetCustomEntityTypesResponse.struct_class = Types::BatchGetCustomEntityTypesResponse

    BatchGetDataQualityResultRequest.add_member(:result_ids, Shapes::ShapeRef.new(shape: DataQualityResultIds, required: true, location_name: "ResultIds"))
    BatchGetDataQualityResultRequest.struct_class = Types::BatchGetDataQualityResultRequest

    BatchGetDataQualityResultResponse.add_member(:results, Shapes::ShapeRef.new(shape: DataQualityResultsList, required: true, location_name: "Results"))
    BatchGetDataQualityResultResponse.add_member(:results_not_found, Shapes::ShapeRef.new(shape: DataQualityResultIds, location_name: "ResultsNotFound"))
    BatchGetDataQualityResultResponse.struct_class = Types::BatchGetDataQualityResultResponse

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

    BatchGetTableOptimizerEntries.member = Shapes::ShapeRef.new(shape: BatchGetTableOptimizerEntry)

    BatchGetTableOptimizerEntry.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "catalogId"))
    BatchGetTableOptimizerEntry.add_member(:database_name, Shapes::ShapeRef.new(shape: databaseNameString, location_name: "databaseName"))
    BatchGetTableOptimizerEntry.add_member(:table_name, Shapes::ShapeRef.new(shape: tableNameString, location_name: "tableName"))
    BatchGetTableOptimizerEntry.add_member(:type, Shapes::ShapeRef.new(shape: TableOptimizerType, location_name: "type"))
    BatchGetTableOptimizerEntry.struct_class = Types::BatchGetTableOptimizerEntry

    BatchGetTableOptimizerError.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    BatchGetTableOptimizerError.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "catalogId"))
    BatchGetTableOptimizerError.add_member(:database_name, Shapes::ShapeRef.new(shape: databaseNameString, location_name: "databaseName"))
    BatchGetTableOptimizerError.add_member(:table_name, Shapes::ShapeRef.new(shape: tableNameString, location_name: "tableName"))
    BatchGetTableOptimizerError.add_member(:type, Shapes::ShapeRef.new(shape: TableOptimizerType, location_name: "type"))
    BatchGetTableOptimizerError.struct_class = Types::BatchGetTableOptimizerError

    BatchGetTableOptimizerErrors.member = Shapes::ShapeRef.new(shape: BatchGetTableOptimizerError)

    BatchGetTableOptimizerRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchGetTableOptimizerEntries, required: true, location_name: "Entries"))
    BatchGetTableOptimizerRequest.struct_class = Types::BatchGetTableOptimizerRequest

    BatchGetTableOptimizerResponse.add_member(:table_optimizers, Shapes::ShapeRef.new(shape: BatchTableOptimizers, location_name: "TableOptimizers"))
    BatchGetTableOptimizerResponse.add_member(:failures, Shapes::ShapeRef.new(shape: BatchGetTableOptimizerErrors, location_name: "Failures"))
    BatchGetTableOptimizerResponse.struct_class = Types::BatchGetTableOptimizerResponse

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

    BatchPutDataQualityStatisticAnnotationRequest.add_member(:inclusion_annotations, Shapes::ShapeRef.new(shape: InclusionAnnotationList, required: true, location_name: "InclusionAnnotations"))
    BatchPutDataQualityStatisticAnnotationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: HashString, location_name: "ClientToken"))
    BatchPutDataQualityStatisticAnnotationRequest.struct_class = Types::BatchPutDataQualityStatisticAnnotationRequest

    BatchPutDataQualityStatisticAnnotationResponse.add_member(:failed_inclusion_annotations, Shapes::ShapeRef.new(shape: AnnotationErrorList, location_name: "FailedInclusionAnnotations"))
    BatchPutDataQualityStatisticAnnotationResponse.struct_class = Types::BatchPutDataQualityStatisticAnnotationResponse

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

    BatchTableOptimizer.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "catalogId"))
    BatchTableOptimizer.add_member(:database_name, Shapes::ShapeRef.new(shape: databaseNameString, location_name: "databaseName"))
    BatchTableOptimizer.add_member(:table_name, Shapes::ShapeRef.new(shape: tableNameString, location_name: "tableName"))
    BatchTableOptimizer.add_member(:table_optimizer, Shapes::ShapeRef.new(shape: TableOptimizer, location_name: "tableOptimizer"))
    BatchTableOptimizer.struct_class = Types::BatchTableOptimizer

    BatchTableOptimizers.member = Shapes::ShapeRef.new(shape: BatchTableOptimizer)

    BatchUpdatePartitionFailureEntry.add_member(:partition_value_list, Shapes::ShapeRef.new(shape: BoundedPartitionValueList, location_name: "PartitionValueList"))
    BatchUpdatePartitionFailureEntry.add_member(:error_detail, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "ErrorDetail"))
    BatchUpdatePartitionFailureEntry.struct_class = Types::BatchUpdatePartitionFailureEntry

    BatchUpdatePartitionFailureList.member = Shapes::ShapeRef.new(shape: BatchUpdatePartitionFailureEntry)

    BatchUpdatePartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchUpdatePartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    BatchUpdatePartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    BatchUpdatePartitionRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchUpdatePartitionRequestEntryList, required: true, location_name: "Entries"))
    BatchUpdatePartitionRequest.struct_class = Types::BatchUpdatePartitionRequest

    BatchUpdatePartitionRequestEntry.add_member(:partition_value_list, Shapes::ShapeRef.new(shape: BoundedPartitionValueList, required: true, location_name: "PartitionValueList"))
    BatchUpdatePartitionRequestEntry.add_member(:partition_input, Shapes::ShapeRef.new(shape: PartitionInput, required: true, location_name: "PartitionInput"))
    BatchUpdatePartitionRequestEntry.struct_class = Types::BatchUpdatePartitionRequestEntry

    BatchUpdatePartitionRequestEntryList.member = Shapes::ShapeRef.new(shape: BatchUpdatePartitionRequestEntry)

    BatchUpdatePartitionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchUpdatePartitionFailureList, location_name: "Errors"))
    BatchUpdatePartitionResponse.struct_class = Types::BatchUpdatePartitionResponse

    BinaryColumnStatisticsData.add_member(:maximum_length, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "MaximumLength"))
    BinaryColumnStatisticsData.add_member(:average_length, Shapes::ShapeRef.new(shape: NonNegativeDouble, required: true, location_name: "AverageLength"))
    BinaryColumnStatisticsData.add_member(:number_of_nulls, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfNulls"))
    BinaryColumnStatisticsData.struct_class = Types::BinaryColumnStatisticsData

    Blueprint.add_member(:name, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "Name"))
    Blueprint.add_member(:description, Shapes::ShapeRef.new(shape: Generic512CharString, location_name: "Description"))
    Blueprint.add_member(:created_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedOn"))
    Blueprint.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "LastModifiedOn"))
    Blueprint.add_member(:parameter_spec, Shapes::ShapeRef.new(shape: BlueprintParameterSpec, location_name: "ParameterSpec"))
    Blueprint.add_member(:blueprint_location, Shapes::ShapeRef.new(shape: GenericString, location_name: "BlueprintLocation"))
    Blueprint.add_member(:blueprint_service_location, Shapes::ShapeRef.new(shape: GenericString, location_name: "BlueprintServiceLocation"))
    Blueprint.add_member(:status, Shapes::ShapeRef.new(shape: BlueprintStatus, location_name: "Status"))
    Blueprint.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorString, location_name: "ErrorMessage"))
    Blueprint.add_member(:last_active_definition, Shapes::ShapeRef.new(shape: LastActiveDefinition, location_name: "LastActiveDefinition"))
    Blueprint.struct_class = Types::Blueprint

    BlueprintDetails.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "BlueprintName"))
    BlueprintDetails.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    BlueprintDetails.struct_class = Types::BlueprintDetails

    BlueprintNames.member = Shapes::ShapeRef.new(shape: OrchestrationNameString)

    BlueprintRun.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "BlueprintName"))
    BlueprintRun.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    BlueprintRun.add_member(:workflow_name, Shapes::ShapeRef.new(shape: NameString, location_name: "WorkflowName"))
    BlueprintRun.add_member(:state, Shapes::ShapeRef.new(shape: BlueprintRunState, location_name: "State"))
    BlueprintRun.add_member(:started_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "StartedOn"))
    BlueprintRun.add_member(:completed_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CompletedOn"))
    BlueprintRun.add_member(:error_message, Shapes::ShapeRef.new(shape: MessageString, location_name: "ErrorMessage"))
    BlueprintRun.add_member(:rollback_error_message, Shapes::ShapeRef.new(shape: MessageString, location_name: "RollbackErrorMessage"))
    BlueprintRun.add_member(:parameters, Shapes::ShapeRef.new(shape: BlueprintParameters, location_name: "Parameters"))
    BlueprintRun.add_member(:role_arn, Shapes::ShapeRef.new(shape: OrchestrationIAMRoleArn, location_name: "RoleArn"))
    BlueprintRun.struct_class = Types::BlueprintRun

    BlueprintRuns.member = Shapes::ShapeRef.new(shape: BlueprintRun)

    Blueprints.member = Shapes::ShapeRef.new(shape: Blueprint)

    BooleanColumnStatisticsData.add_member(:number_of_trues, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfTrues"))
    BooleanColumnStatisticsData.add_member(:number_of_falses, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfFalses"))
    BooleanColumnStatisticsData.add_member(:number_of_nulls, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfNulls"))
    BooleanColumnStatisticsData.struct_class = Types::BooleanColumnStatisticsData

    BoundedPartitionValueList.member = Shapes::ShapeRef.new(shape: ValueString)

    CancelDataQualityRuleRecommendationRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "RunId"))
    CancelDataQualityRuleRecommendationRunRequest.struct_class = Types::CancelDataQualityRuleRecommendationRunRequest

    CancelDataQualityRuleRecommendationRunResponse.struct_class = Types::CancelDataQualityRuleRecommendationRunResponse

    CancelDataQualityRulesetEvaluationRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "RunId"))
    CancelDataQualityRulesetEvaluationRunRequest.struct_class = Types::CancelDataQualityRulesetEvaluationRunRequest

    CancelDataQualityRulesetEvaluationRunResponse.struct_class = Types::CancelDataQualityRulesetEvaluationRunResponse

    CancelMLTaskRunRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    CancelMLTaskRunRequest.add_member(:task_run_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TaskRunId"))
    CancelMLTaskRunRequest.struct_class = Types::CancelMLTaskRunRequest

    CancelMLTaskRunResponse.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TransformId"))
    CancelMLTaskRunResponse.add_member(:task_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TaskRunId"))
    CancelMLTaskRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatusType, location_name: "Status"))
    CancelMLTaskRunResponse.struct_class = Types::CancelMLTaskRunResponse

    CancelStatementRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "SessionId"))
    CancelStatementRequest.add_member(:id, Shapes::ShapeRef.new(shape: IntegerValue, required: true, location_name: "Id"))
    CancelStatementRequest.add_member(:request_origin, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "RequestOrigin"))
    CancelStatementRequest.struct_class = Types::CancelStatementRequest

    CancelStatementResponse.struct_class = Types::CancelStatementResponse

    Capabilities.add_member(:supported_authentication_types, Shapes::ShapeRef.new(shape: AuthenticationTypes, required: true, location_name: "SupportedAuthenticationTypes"))
    Capabilities.add_member(:supported_data_operations, Shapes::ShapeRef.new(shape: DataOperations, required: true, location_name: "SupportedDataOperations"))
    Capabilities.add_member(:supported_compute_environments, Shapes::ShapeRef.new(shape: ComputeEnvironments, required: true, location_name: "SupportedComputeEnvironments"))
    Capabilities.struct_class = Types::Capabilities

    Catalog.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    Catalog.add_member(:name, Shapes::ShapeRef.new(shape: CatalogNameString, required: true, location_name: "Name"))
    Catalog.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "ResourceArn"))
    Catalog.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Catalog.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    Catalog.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    Catalog.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    Catalog.add_member(:target_redshift_catalog, Shapes::ShapeRef.new(shape: TargetRedshiftCatalog, location_name: "TargetRedshiftCatalog"))
    Catalog.add_member(:federated_catalog, Shapes::ShapeRef.new(shape: FederatedCatalog, location_name: "FederatedCatalog"))
    Catalog.add_member(:catalog_properties, Shapes::ShapeRef.new(shape: CatalogPropertiesOutput, location_name: "CatalogProperties"))
    Catalog.add_member(:create_table_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateTableDefaultPermissions"))
    Catalog.add_member(:create_database_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateDatabaseDefaultPermissions"))
    Catalog.add_member(:allow_full_table_external_data_access, Shapes::ShapeRef.new(shape: AllowFullTableExternalDataAccessEnum, location_name: "AllowFullTableExternalDataAccess"))
    Catalog.struct_class = Types::Catalog

    CatalogDeltaSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    CatalogDeltaSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    CatalogDeltaSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    CatalogDeltaSource.add_member(:additional_delta_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalDeltaOptions"))
    CatalogDeltaSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    CatalogDeltaSource.struct_class = Types::CatalogDeltaSource

    CatalogEntries.member = Shapes::ShapeRef.new(shape: CatalogEntry)

    CatalogEntry.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CatalogEntry.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    CatalogEntry.struct_class = Types::CatalogEntry

    CatalogHudiSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    CatalogHudiSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    CatalogHudiSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    CatalogHudiSource.add_member(:additional_hudi_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalHudiOptions"))
    CatalogHudiSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    CatalogHudiSource.struct_class = Types::CatalogHudiSource

    CatalogImportStatus.add_member(:import_completed, Shapes::ShapeRef.new(shape: Boolean, location_name: "ImportCompleted"))
    CatalogImportStatus.add_member(:import_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ImportTime"))
    CatalogImportStatus.add_member(:imported_by, Shapes::ShapeRef.new(shape: NameString, location_name: "ImportedBy"))
    CatalogImportStatus.struct_class = Types::CatalogImportStatus

    CatalogInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CatalogInput.add_member(:federated_catalog, Shapes::ShapeRef.new(shape: FederatedCatalog, location_name: "FederatedCatalog"))
    CatalogInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    CatalogInput.add_member(:target_redshift_catalog, Shapes::ShapeRef.new(shape: TargetRedshiftCatalog, location_name: "TargetRedshiftCatalog"))
    CatalogInput.add_member(:catalog_properties, Shapes::ShapeRef.new(shape: CatalogProperties, location_name: "CatalogProperties"))
    CatalogInput.add_member(:create_table_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateTableDefaultPermissions"))
    CatalogInput.add_member(:create_database_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateDatabaseDefaultPermissions"))
    CatalogInput.add_member(:allow_full_table_external_data_access, Shapes::ShapeRef.new(shape: AllowFullTableExternalDataAccessEnum, location_name: "AllowFullTableExternalDataAccess"))
    CatalogInput.struct_class = Types::CatalogInput

    CatalogKafkaSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    CatalogKafkaSource.add_member(:window_size, Shapes::ShapeRef.new(shape: BoxedPositiveInt, location_name: "WindowSize", metadata: {"box" => true}))
    CatalogKafkaSource.add_member(:detect_schema, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "DetectSchema", metadata: {"box" => true}))
    CatalogKafkaSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    CatalogKafkaSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    CatalogKafkaSource.add_member(:streaming_options, Shapes::ShapeRef.new(shape: KafkaStreamingSourceOptions, location_name: "StreamingOptions"))
    CatalogKafkaSource.add_member(:data_preview_options, Shapes::ShapeRef.new(shape: StreamingDataPreviewOptions, location_name: "DataPreviewOptions"))
    CatalogKafkaSource.struct_class = Types::CatalogKafkaSource

    CatalogKinesisSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    CatalogKinesisSource.add_member(:window_size, Shapes::ShapeRef.new(shape: BoxedPositiveInt, location_name: "WindowSize"))
    CatalogKinesisSource.add_member(:detect_schema, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "DetectSchema", metadata: {"box" => true}))
    CatalogKinesisSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    CatalogKinesisSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    CatalogKinesisSource.add_member(:streaming_options, Shapes::ShapeRef.new(shape: KinesisStreamingSourceOptions, location_name: "StreamingOptions"))
    CatalogKinesisSource.add_member(:data_preview_options, Shapes::ShapeRef.new(shape: StreamingDataPreviewOptions, location_name: "DataPreviewOptions"))
    CatalogKinesisSource.struct_class = Types::CatalogKinesisSource

    CatalogList.member = Shapes::ShapeRef.new(shape: Catalog)

    CatalogProperties.add_member(:data_lake_access_properties, Shapes::ShapeRef.new(shape: DataLakeAccessProperties, location_name: "DataLakeAccessProperties"))
    CatalogProperties.add_member(:custom_properties, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "CustomProperties"))
    CatalogProperties.struct_class = Types::CatalogProperties

    CatalogPropertiesOutput.add_member(:data_lake_access_properties, Shapes::ShapeRef.new(shape: DataLakeAccessPropertiesOutput, location_name: "DataLakeAccessProperties"))
    CatalogPropertiesOutput.add_member(:custom_properties, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "CustomProperties"))
    CatalogPropertiesOutput.struct_class = Types::CatalogPropertiesOutput

    CatalogSchemaChangePolicy.add_member(:enable_update_catalog, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "EnableUpdateCatalog"))
    CatalogSchemaChangePolicy.add_member(:update_behavior, Shapes::ShapeRef.new(shape: UpdateCatalogBehavior, location_name: "UpdateBehavior"))
    CatalogSchemaChangePolicy.struct_class = Types::CatalogSchemaChangePolicy

    CatalogSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    CatalogSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    CatalogSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    CatalogSource.struct_class = Types::CatalogSource

    CatalogTablesList.member = Shapes::ShapeRef.new(shape: NameString)

    CatalogTarget.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CatalogTarget.add_member(:tables, Shapes::ShapeRef.new(shape: CatalogTablesList, required: true, location_name: "Tables"))
    CatalogTarget.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    CatalogTarget.add_member(:event_queue_arn, Shapes::ShapeRef.new(shape: EventQueueArn, location_name: "EventQueueArn"))
    CatalogTarget.add_member(:dlq_event_queue_arn, Shapes::ShapeRef.new(shape: EventQueueArn, location_name: "DlqEventQueueArn"))
    CatalogTarget.struct_class = Types::CatalogTarget

    CatalogTargetList.member = Shapes::ShapeRef.new(shape: CatalogTarget)

    CheckSchemaVersionValidityInput.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, required: true, location_name: "DataFormat"))
    CheckSchemaVersionValidityInput.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaDefinitionString, required: true, location_name: "SchemaDefinition"))
    CheckSchemaVersionValidityInput.struct_class = Types::CheckSchemaVersionValidityInput

    CheckSchemaVersionValidityResponse.add_member(:valid, Shapes::ShapeRef.new(shape: IsVersionValid, location_name: "Valid"))
    CheckSchemaVersionValidityResponse.add_member(:error, Shapes::ShapeRef.new(shape: SchemaValidationError, location_name: "Error"))
    CheckSchemaVersionValidityResponse.struct_class = Types::CheckSchemaVersionValidityResponse

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

    CodeGenConfigurationNode.add_member(:athena_connector_source, Shapes::ShapeRef.new(shape: AthenaConnectorSource, location_name: "AthenaConnectorSource"))
    CodeGenConfigurationNode.add_member(:jdbc_connector_source, Shapes::ShapeRef.new(shape: JDBCConnectorSource, location_name: "JDBCConnectorSource"))
    CodeGenConfigurationNode.add_member(:spark_connector_source, Shapes::ShapeRef.new(shape: SparkConnectorSource, location_name: "SparkConnectorSource"))
    CodeGenConfigurationNode.add_member(:catalog_source, Shapes::ShapeRef.new(shape: CatalogSource, location_name: "CatalogSource"))
    CodeGenConfigurationNode.add_member(:redshift_source, Shapes::ShapeRef.new(shape: RedshiftSource, location_name: "RedshiftSource"))
    CodeGenConfigurationNode.add_member(:s3_catalog_source, Shapes::ShapeRef.new(shape: S3CatalogSource, location_name: "S3CatalogSource"))
    CodeGenConfigurationNode.add_member(:s3_csv_source, Shapes::ShapeRef.new(shape: S3CsvSource, location_name: "S3CsvSource"))
    CodeGenConfigurationNode.add_member(:s3_excel_source, Shapes::ShapeRef.new(shape: S3ExcelSource, location_name: "S3ExcelSource"))
    CodeGenConfigurationNode.add_member(:s3_json_source, Shapes::ShapeRef.new(shape: S3JsonSource, location_name: "S3JsonSource"))
    CodeGenConfigurationNode.add_member(:s3_parquet_source, Shapes::ShapeRef.new(shape: S3ParquetSource, location_name: "S3ParquetSource"))
    CodeGenConfigurationNode.add_member(:relational_catalog_source, Shapes::ShapeRef.new(shape: RelationalCatalogSource, location_name: "RelationalCatalogSource"))
    CodeGenConfigurationNode.add_member(:dynamo_db_catalog_source, Shapes::ShapeRef.new(shape: DynamoDBCatalogSource, location_name: "DynamoDBCatalogSource"))
    CodeGenConfigurationNode.add_member(:jdbc_connector_target, Shapes::ShapeRef.new(shape: JDBCConnectorTarget, location_name: "JDBCConnectorTarget"))
    CodeGenConfigurationNode.add_member(:spark_connector_target, Shapes::ShapeRef.new(shape: SparkConnectorTarget, location_name: "SparkConnectorTarget"))
    CodeGenConfigurationNode.add_member(:catalog_target, Shapes::ShapeRef.new(shape: BasicCatalogTarget, location_name: "CatalogTarget"))
    CodeGenConfigurationNode.add_member(:redshift_target, Shapes::ShapeRef.new(shape: RedshiftTarget, location_name: "RedshiftTarget"))
    CodeGenConfigurationNode.add_member(:s3_catalog_target, Shapes::ShapeRef.new(shape: S3CatalogTarget, location_name: "S3CatalogTarget"))
    CodeGenConfigurationNode.add_member(:s3_glue_parquet_target, Shapes::ShapeRef.new(shape: S3GlueParquetTarget, location_name: "S3GlueParquetTarget"))
    CodeGenConfigurationNode.add_member(:s3_hyper_direct_target, Shapes::ShapeRef.new(shape: S3HyperDirectTarget, location_name: "S3HyperDirectTarget"))
    CodeGenConfigurationNode.add_member(:s3_direct_target, Shapes::ShapeRef.new(shape: S3DirectTarget, location_name: "S3DirectTarget"))
    CodeGenConfigurationNode.add_member(:s3_iceberg_direct_target, Shapes::ShapeRef.new(shape: S3IcebergDirectTarget, location_name: "S3IcebergDirectTarget"))
    CodeGenConfigurationNode.add_member(:apply_mapping, Shapes::ShapeRef.new(shape: ApplyMapping, location_name: "ApplyMapping"))
    CodeGenConfigurationNode.add_member(:select_fields, Shapes::ShapeRef.new(shape: SelectFields, location_name: "SelectFields"))
    CodeGenConfigurationNode.add_member(:drop_fields, Shapes::ShapeRef.new(shape: DropFields, location_name: "DropFields"))
    CodeGenConfigurationNode.add_member(:rename_field, Shapes::ShapeRef.new(shape: RenameField, location_name: "RenameField"))
    CodeGenConfigurationNode.add_member(:spigot, Shapes::ShapeRef.new(shape: Spigot, location_name: "Spigot"))
    CodeGenConfigurationNode.add_member(:join, Shapes::ShapeRef.new(shape: Join, location_name: "Join"))
    CodeGenConfigurationNode.add_member(:split_fields, Shapes::ShapeRef.new(shape: SplitFields, location_name: "SplitFields"))
    CodeGenConfigurationNode.add_member(:select_from_collection, Shapes::ShapeRef.new(shape: SelectFromCollection, location_name: "SelectFromCollection"))
    CodeGenConfigurationNode.add_member(:fill_missing_values, Shapes::ShapeRef.new(shape: FillMissingValues, location_name: "FillMissingValues"))
    CodeGenConfigurationNode.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "Filter"))
    CodeGenConfigurationNode.add_member(:custom_code, Shapes::ShapeRef.new(shape: CustomCode, location_name: "CustomCode"))
    CodeGenConfigurationNode.add_member(:spark_sql, Shapes::ShapeRef.new(shape: SparkSQL, location_name: "SparkSQL"))
    CodeGenConfigurationNode.add_member(:direct_kinesis_source, Shapes::ShapeRef.new(shape: DirectKinesisSource, location_name: "DirectKinesisSource"))
    CodeGenConfigurationNode.add_member(:direct_kafka_source, Shapes::ShapeRef.new(shape: DirectKafkaSource, location_name: "DirectKafkaSource"))
    CodeGenConfigurationNode.add_member(:catalog_kinesis_source, Shapes::ShapeRef.new(shape: CatalogKinesisSource, location_name: "CatalogKinesisSource"))
    CodeGenConfigurationNode.add_member(:catalog_kafka_source, Shapes::ShapeRef.new(shape: CatalogKafkaSource, location_name: "CatalogKafkaSource"))
    CodeGenConfigurationNode.add_member(:drop_null_fields, Shapes::ShapeRef.new(shape: DropNullFields, location_name: "DropNullFields"))
    CodeGenConfigurationNode.add_member(:merge, Shapes::ShapeRef.new(shape: Merge, location_name: "Merge"))
    CodeGenConfigurationNode.add_member(:union, Shapes::ShapeRef.new(shape: Union, location_name: "Union"))
    CodeGenConfigurationNode.add_member(:pii_detection, Shapes::ShapeRef.new(shape: PIIDetection, location_name: "PIIDetection"))
    CodeGenConfigurationNode.add_member(:aggregate, Shapes::ShapeRef.new(shape: Aggregate, location_name: "Aggregate"))
    CodeGenConfigurationNode.add_member(:drop_duplicates, Shapes::ShapeRef.new(shape: DropDuplicates, location_name: "DropDuplicates"))
    CodeGenConfigurationNode.add_member(:governed_catalog_target, Shapes::ShapeRef.new(shape: GovernedCatalogTarget, location_name: "GovernedCatalogTarget"))
    CodeGenConfigurationNode.add_member(:governed_catalog_source, Shapes::ShapeRef.new(shape: GovernedCatalogSource, location_name: "GovernedCatalogSource"))
    CodeGenConfigurationNode.add_member(:microsoft_sql_server_catalog_source, Shapes::ShapeRef.new(shape: MicrosoftSQLServerCatalogSource, location_name: "MicrosoftSQLServerCatalogSource"))
    CodeGenConfigurationNode.add_member(:my_sql_catalog_source, Shapes::ShapeRef.new(shape: MySQLCatalogSource, location_name: "MySQLCatalogSource"))
    CodeGenConfigurationNode.add_member(:oracle_sql_catalog_source, Shapes::ShapeRef.new(shape: OracleSQLCatalogSource, location_name: "OracleSQLCatalogSource"))
    CodeGenConfigurationNode.add_member(:postgre_sql_catalog_source, Shapes::ShapeRef.new(shape: PostgreSQLCatalogSource, location_name: "PostgreSQLCatalogSource"))
    CodeGenConfigurationNode.add_member(:microsoft_sql_server_catalog_target, Shapes::ShapeRef.new(shape: MicrosoftSQLServerCatalogTarget, location_name: "MicrosoftSQLServerCatalogTarget"))
    CodeGenConfigurationNode.add_member(:my_sql_catalog_target, Shapes::ShapeRef.new(shape: MySQLCatalogTarget, location_name: "MySQLCatalogTarget"))
    CodeGenConfigurationNode.add_member(:oracle_sql_catalog_target, Shapes::ShapeRef.new(shape: OracleSQLCatalogTarget, location_name: "OracleSQLCatalogTarget"))
    CodeGenConfigurationNode.add_member(:postgre_sql_catalog_target, Shapes::ShapeRef.new(shape: PostgreSQLCatalogTarget, location_name: "PostgreSQLCatalogTarget"))
    CodeGenConfigurationNode.add_member(:dynamic_transform, Shapes::ShapeRef.new(shape: DynamicTransform, location_name: "DynamicTransform"))
    CodeGenConfigurationNode.add_member(:evaluate_data_quality, Shapes::ShapeRef.new(shape: EvaluateDataQuality, location_name: "EvaluateDataQuality"))
    CodeGenConfigurationNode.add_member(:s3_catalog_hudi_source, Shapes::ShapeRef.new(shape: S3CatalogHudiSource, location_name: "S3CatalogHudiSource"))
    CodeGenConfigurationNode.add_member(:catalog_hudi_source, Shapes::ShapeRef.new(shape: CatalogHudiSource, location_name: "CatalogHudiSource"))
    CodeGenConfigurationNode.add_member(:s3_hudi_source, Shapes::ShapeRef.new(shape: S3HudiSource, location_name: "S3HudiSource"))
    CodeGenConfigurationNode.add_member(:s3_hudi_catalog_target, Shapes::ShapeRef.new(shape: S3HudiCatalogTarget, location_name: "S3HudiCatalogTarget"))
    CodeGenConfigurationNode.add_member(:s3_hudi_direct_target, Shapes::ShapeRef.new(shape: S3HudiDirectTarget, location_name: "S3HudiDirectTarget"))
    CodeGenConfigurationNode.add_member(:direct_jdbc_source, Shapes::ShapeRef.new(shape: DirectJDBCSource, location_name: "DirectJDBCSource"))
    CodeGenConfigurationNode.add_member(:s3_catalog_delta_source, Shapes::ShapeRef.new(shape: S3CatalogDeltaSource, location_name: "S3CatalogDeltaSource"))
    CodeGenConfigurationNode.add_member(:catalog_delta_source, Shapes::ShapeRef.new(shape: CatalogDeltaSource, location_name: "CatalogDeltaSource"))
    CodeGenConfigurationNode.add_member(:s3_delta_source, Shapes::ShapeRef.new(shape: S3DeltaSource, location_name: "S3DeltaSource"))
    CodeGenConfigurationNode.add_member(:s3_delta_catalog_target, Shapes::ShapeRef.new(shape: S3DeltaCatalogTarget, location_name: "S3DeltaCatalogTarget"))
    CodeGenConfigurationNode.add_member(:s3_delta_direct_target, Shapes::ShapeRef.new(shape: S3DeltaDirectTarget, location_name: "S3DeltaDirectTarget"))
    CodeGenConfigurationNode.add_member(:amazon_redshift_source, Shapes::ShapeRef.new(shape: AmazonRedshiftSource, location_name: "AmazonRedshiftSource"))
    CodeGenConfigurationNode.add_member(:amazon_redshift_target, Shapes::ShapeRef.new(shape: AmazonRedshiftTarget, location_name: "AmazonRedshiftTarget"))
    CodeGenConfigurationNode.add_member(:evaluate_data_quality_multi_frame, Shapes::ShapeRef.new(shape: EvaluateDataQualityMultiFrame, location_name: "EvaluateDataQualityMultiFrame"))
    CodeGenConfigurationNode.add_member(:recipe, Shapes::ShapeRef.new(shape: Recipe, location_name: "Recipe"))
    CodeGenConfigurationNode.add_member(:snowflake_source, Shapes::ShapeRef.new(shape: SnowflakeSource, location_name: "SnowflakeSource"))
    CodeGenConfigurationNode.add_member(:snowflake_target, Shapes::ShapeRef.new(shape: SnowflakeTarget, location_name: "SnowflakeTarget"))
    CodeGenConfigurationNode.add_member(:connector_data_source, Shapes::ShapeRef.new(shape: ConnectorDataSource, location_name: "ConnectorDataSource"))
    CodeGenConfigurationNode.add_member(:connector_data_target, Shapes::ShapeRef.new(shape: ConnectorDataTarget, location_name: "ConnectorDataTarget"))
    CodeGenConfigurationNode.struct_class = Types::CodeGenConfigurationNode

    CodeGenConfigurationNodes.key = Shapes::ShapeRef.new(shape: NodeId)
    CodeGenConfigurationNodes.value = Shapes::ShapeRef.new(shape: CodeGenConfigurationNode)

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

    ColumnError.add_member(:column_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ColumnName"))
    ColumnError.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "Error"))
    ColumnError.struct_class = Types::ColumnError

    ColumnErrors.member = Shapes::ShapeRef.new(shape: ColumnError)

    ColumnImportance.add_member(:column_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ColumnName"))
    ColumnImportance.add_member(:importance, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "Importance"))
    ColumnImportance.struct_class = Types::ColumnImportance

    ColumnImportanceList.member = Shapes::ShapeRef.new(shape: ColumnImportance)

    ColumnList.member = Shapes::ShapeRef.new(shape: Column)

    ColumnNameList.member = Shapes::ShapeRef.new(shape: NameString)

    ColumnRowFilter.add_member(:column_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ColumnName"))
    ColumnRowFilter.add_member(:row_filter_expression, Shapes::ShapeRef.new(shape: PredicateString, location_name: "RowFilterExpression"))
    ColumnRowFilter.struct_class = Types::ColumnRowFilter

    ColumnRowFilterList.member = Shapes::ShapeRef.new(shape: ColumnRowFilter)

    ColumnStatistics.add_member(:column_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "ColumnName"))
    ColumnStatistics.add_member(:column_type, Shapes::ShapeRef.new(shape: TypeString, required: true, location_name: "ColumnType"))
    ColumnStatistics.add_member(:analyzed_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "AnalyzedTime"))
    ColumnStatistics.add_member(:statistics_data, Shapes::ShapeRef.new(shape: ColumnStatisticsData, required: true, location_name: "StatisticsData"))
    ColumnStatistics.struct_class = Types::ColumnStatistics

    ColumnStatisticsData.add_member(:type, Shapes::ShapeRef.new(shape: ColumnStatisticsType, required: true, location_name: "Type"))
    ColumnStatisticsData.add_member(:boolean_column_statistics_data, Shapes::ShapeRef.new(shape: BooleanColumnStatisticsData, location_name: "BooleanColumnStatisticsData"))
    ColumnStatisticsData.add_member(:date_column_statistics_data, Shapes::ShapeRef.new(shape: DateColumnStatisticsData, location_name: "DateColumnStatisticsData"))
    ColumnStatisticsData.add_member(:decimal_column_statistics_data, Shapes::ShapeRef.new(shape: DecimalColumnStatisticsData, location_name: "DecimalColumnStatisticsData"))
    ColumnStatisticsData.add_member(:double_column_statistics_data, Shapes::ShapeRef.new(shape: DoubleColumnStatisticsData, location_name: "DoubleColumnStatisticsData"))
    ColumnStatisticsData.add_member(:long_column_statistics_data, Shapes::ShapeRef.new(shape: LongColumnStatisticsData, location_name: "LongColumnStatisticsData"))
    ColumnStatisticsData.add_member(:string_column_statistics_data, Shapes::ShapeRef.new(shape: StringColumnStatisticsData, location_name: "StringColumnStatisticsData"))
    ColumnStatisticsData.add_member(:binary_column_statistics_data, Shapes::ShapeRef.new(shape: BinaryColumnStatisticsData, location_name: "BinaryColumnStatisticsData"))
    ColumnStatisticsData.struct_class = Types::ColumnStatisticsData

    ColumnStatisticsError.add_member(:column_statistics, Shapes::ShapeRef.new(shape: ColumnStatistics, location_name: "ColumnStatistics"))
    ColumnStatisticsError.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "Error"))
    ColumnStatisticsError.struct_class = Types::ColumnStatisticsError

    ColumnStatisticsErrors.member = Shapes::ShapeRef.new(shape: ColumnStatisticsError)

    ColumnStatisticsList.member = Shapes::ShapeRef.new(shape: ColumnStatistics)

    ColumnStatisticsTaskNotRunningException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ColumnStatisticsTaskNotRunningException.struct_class = Types::ColumnStatisticsTaskNotRunningException

    ColumnStatisticsTaskRun.add_member(:customer_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "CustomerId"))
    ColumnStatisticsTaskRun.add_member(:column_statistics_task_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ColumnStatisticsTaskRunId"))
    ColumnStatisticsTaskRun.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "DatabaseName"))
    ColumnStatisticsTaskRun.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    ColumnStatisticsTaskRun.add_member(:column_name_list, Shapes::ShapeRef.new(shape: ColumnNameList, location_name: "ColumnNameList"))
    ColumnStatisticsTaskRun.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogID"))
    ColumnStatisticsTaskRun.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    ColumnStatisticsTaskRun.add_member(:sample_size, Shapes::ShapeRef.new(shape: SampleSizePercentage, location_name: "SampleSize"))
    ColumnStatisticsTaskRun.add_member(:security_configuration, Shapes::ShapeRef.new(shape: CrawlerSecurityConfiguration, location_name: "SecurityConfiguration"))
    ColumnStatisticsTaskRun.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "NumberOfWorkers"))
    ColumnStatisticsTaskRun.add_member(:worker_type, Shapes::ShapeRef.new(shape: NameString, location_name: "WorkerType"))
    ColumnStatisticsTaskRun.add_member(:computation_type, Shapes::ShapeRef.new(shape: ComputationType, location_name: "ComputationType"))
    ColumnStatisticsTaskRun.add_member(:status, Shapes::ShapeRef.new(shape: ColumnStatisticsState, location_name: "Status"))
    ColumnStatisticsTaskRun.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ColumnStatisticsTaskRun.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    ColumnStatisticsTaskRun.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    ColumnStatisticsTaskRun.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    ColumnStatisticsTaskRun.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    ColumnStatisticsTaskRun.add_member(:dpu_seconds, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "DPUSeconds"))
    ColumnStatisticsTaskRun.struct_class = Types::ColumnStatisticsTaskRun

    ColumnStatisticsTaskRunIdList.member = Shapes::ShapeRef.new(shape: HashString)

    ColumnStatisticsTaskRunningException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ColumnStatisticsTaskRunningException.struct_class = Types::ColumnStatisticsTaskRunningException

    ColumnStatisticsTaskRunsList.member = Shapes::ShapeRef.new(shape: ColumnStatisticsTaskRun)

    ColumnStatisticsTaskSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "DatabaseName"))
    ColumnStatisticsTaskSettings.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    ColumnStatisticsTaskSettings.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "Schedule"))
    ColumnStatisticsTaskSettings.add_member(:column_name_list, Shapes::ShapeRef.new(shape: ColumnNameList, location_name: "ColumnNameList"))
    ColumnStatisticsTaskSettings.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogID"))
    ColumnStatisticsTaskSettings.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    ColumnStatisticsTaskSettings.add_member(:sample_size, Shapes::ShapeRef.new(shape: SampleSizePercentage, location_name: "SampleSize"))
    ColumnStatisticsTaskSettings.add_member(:security_configuration, Shapes::ShapeRef.new(shape: CrawlerSecurityConfiguration, location_name: "SecurityConfiguration"))
    ColumnStatisticsTaskSettings.add_member(:schedule_type, Shapes::ShapeRef.new(shape: ScheduleType, location_name: "ScheduleType"))
    ColumnStatisticsTaskSettings.add_member(:setting_source, Shapes::ShapeRef.new(shape: SettingSource, location_name: "SettingSource"))
    ColumnStatisticsTaskSettings.add_member(:last_execution_attempt, Shapes::ShapeRef.new(shape: ExecutionAttempt, location_name: "LastExecutionAttempt"))
    ColumnStatisticsTaskSettings.struct_class = Types::ColumnStatisticsTaskSettings

    ColumnStatisticsTaskStoppingException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ColumnStatisticsTaskStoppingException.struct_class = Types::ColumnStatisticsTaskStoppingException

    ColumnValueStringList.member = Shapes::ShapeRef.new(shape: ColumnValuesString)

    CompactionConfiguration.add_member(:iceberg_configuration, Shapes::ShapeRef.new(shape: IcebergCompactionConfiguration, location_name: "icebergConfiguration"))
    CompactionConfiguration.struct_class = Types::CompactionConfiguration

    CompactionMetrics.add_member(:iceberg_metrics, Shapes::ShapeRef.new(shape: IcebergCompactionMetrics, location_name: "IcebergMetrics"))
    CompactionMetrics.struct_class = Types::CompactionMetrics

    ComputeEnvironmentConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: ComputeEnvironmentName, required: true, location_name: "Name"))
    ComputeEnvironmentConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: ComputeEnvironmentConfigurationDescriptionString, required: true, location_name: "Description"))
    ComputeEnvironmentConfiguration.add_member(:compute_environment, Shapes::ShapeRef.new(shape: ComputeEnvironment, required: true, location_name: "ComputeEnvironment"))
    ComputeEnvironmentConfiguration.add_member(:supported_authentication_types, Shapes::ShapeRef.new(shape: AuthenticationTypes, required: true, location_name: "SupportedAuthenticationTypes"))
    ComputeEnvironmentConfiguration.add_member(:connection_options, Shapes::ShapeRef.new(shape: PropertiesMap, required: true, location_name: "ConnectionOptions"))
    ComputeEnvironmentConfiguration.add_member(:connection_property_name_overrides, Shapes::ShapeRef.new(shape: PropertyNameOverrides, required: true, location_name: "ConnectionPropertyNameOverrides"))
    ComputeEnvironmentConfiguration.add_member(:connection_option_name_overrides, Shapes::ShapeRef.new(shape: PropertyNameOverrides, required: true, location_name: "ConnectionOptionNameOverrides"))
    ComputeEnvironmentConfiguration.add_member(:connection_properties_required_overrides, Shapes::ShapeRef.new(shape: ListOfString, required: true, location_name: "ConnectionPropertiesRequiredOverrides"))
    ComputeEnvironmentConfiguration.add_member(:physical_connection_properties_required, Shapes::ShapeRef.new(shape: Bool, location_name: "PhysicalConnectionPropertiesRequired"))
    ComputeEnvironmentConfiguration.struct_class = Types::ComputeEnvironmentConfiguration

    ComputeEnvironmentConfigurationMap.key = Shapes::ShapeRef.new(shape: ComputeEnvironmentName)
    ComputeEnvironmentConfigurationMap.value = Shapes::ShapeRef.new(shape: ComputeEnvironmentConfiguration)

    ComputeEnvironmentList.member = Shapes::ShapeRef.new(shape: ComputeEnvironment)

    ComputeEnvironments.member = Shapes::ShapeRef.new(shape: ComputeEnvironment)

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

    ConditionExpression.add_member(:condition, Shapes::ShapeRef.new(shape: DatabrewCondition, required: true, location_name: "Condition"))
    ConditionExpression.add_member(:value, Shapes::ShapeRef.new(shape: DatabrewConditionValue, location_name: "Value"))
    ConditionExpression.add_member(:target_column, Shapes::ShapeRef.new(shape: TargetColumn, required: true, location_name: "TargetColumn"))
    ConditionExpression.struct_class = Types::ConditionExpression

    ConditionExpressionList.member = Shapes::ShapeRef.new(shape: ConditionExpression)

    ConditionList.member = Shapes::ShapeRef.new(shape: Condition)

    ConfigurationMap.key = Shapes::ShapeRef.new(shape: NameString)
    ConfigurationMap.value = Shapes::ShapeRef.new(shape: ConfigurationObject)

    ConfigurationObject.add_member(:default_value, Shapes::ShapeRef.new(shape: ConfigValueString, location_name: "DefaultValue"))
    ConfigurationObject.add_member(:allowed_values, Shapes::ShapeRef.new(shape: AllowedValuesStringList, location_name: "AllowedValues"))
    ConfigurationObject.add_member(:min_value, Shapes::ShapeRef.new(shape: ConfigValueString, location_name: "MinValue"))
    ConfigurationObject.add_member(:max_value, Shapes::ShapeRef.new(shape: ConfigValueString, location_name: "MaxValue"))
    ConfigurationObject.struct_class = Types::ConfigurationObject

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

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
    Connection.add_member(:spark_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "SparkProperties"))
    Connection.add_member(:athena_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "AthenaProperties"))
    Connection.add_member(:python_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "PythonProperties"))
    Connection.add_member(:physical_connection_requirements, Shapes::ShapeRef.new(shape: PhysicalConnectionRequirements, location_name: "PhysicalConnectionRequirements"))
    Connection.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Connection.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    Connection.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: NameString, location_name: "LastUpdatedBy"))
    Connection.add_member(:status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "Status"))
    Connection.add_member(:status_reason, Shapes::ShapeRef.new(shape: LongValueString, location_name: "StatusReason"))
    Connection.add_member(:last_connection_validation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastConnectionValidationTime"))
    Connection.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: AuthenticationConfiguration, location_name: "AuthenticationConfiguration"))
    Connection.add_member(:connection_schema_version, Shapes::ShapeRef.new(shape: ConnectionSchemaVersion, location_name: "ConnectionSchemaVersion"))
    Connection.add_member(:compatible_compute_environments, Shapes::ShapeRef.new(shape: ComputeEnvironmentList, location_name: "CompatibleComputeEnvironments"))
    Connection.struct_class = Types::Connection

    ConnectionInput.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    ConnectionInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    ConnectionInput.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, required: true, location_name: "ConnectionType"))
    ConnectionInput.add_member(:match_criteria, Shapes::ShapeRef.new(shape: MatchCriteria, location_name: "MatchCriteria"))
    ConnectionInput.add_member(:connection_properties, Shapes::ShapeRef.new(shape: ConnectionProperties, required: true, location_name: "ConnectionProperties"))
    ConnectionInput.add_member(:spark_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "SparkProperties"))
    ConnectionInput.add_member(:athena_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "AthenaProperties"))
    ConnectionInput.add_member(:python_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "PythonProperties"))
    ConnectionInput.add_member(:physical_connection_requirements, Shapes::ShapeRef.new(shape: PhysicalConnectionRequirements, location_name: "PhysicalConnectionRequirements"))
    ConnectionInput.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: AuthenticationConfigurationInput, location_name: "AuthenticationConfiguration"))
    ConnectionInput.add_member(:validate_credentials, Shapes::ShapeRef.new(shape: Boolean, location_name: "ValidateCredentials"))
    ConnectionInput.add_member(:validate_for_compute_environments, Shapes::ShapeRef.new(shape: ComputeEnvironmentList, location_name: "ValidateForComputeEnvironments"))
    ConnectionInput.struct_class = Types::ConnectionInput

    ConnectionList.member = Shapes::ShapeRef.new(shape: Connection)

    ConnectionOptions.key = Shapes::ShapeRef.new(shape: OptionKey)
    ConnectionOptions.value = Shapes::ShapeRef.new(shape: OptionValue)

    ConnectionPasswordEncryption.add_member(:return_connection_password_encrypted, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ReturnConnectionPasswordEncrypted"))
    ConnectionPasswordEncryption.add_member(:aws_kms_key_id, Shapes::ShapeRef.new(shape: NameString, location_name: "AwsKmsKeyId"))
    ConnectionPasswordEncryption.struct_class = Types::ConnectionPasswordEncryption

    ConnectionProperties.key = Shapes::ShapeRef.new(shape: ConnectionPropertyKey)
    ConnectionProperties.value = Shapes::ShapeRef.new(shape: ValueString)

    ConnectionStringList.member = Shapes::ShapeRef.new(shape: ConnectionString)

    ConnectionTypeBrief.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "ConnectionType"))
    ConnectionTypeBrief.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    ConnectionTypeBrief.add_member(:vendor, Shapes::ShapeRef.new(shape: Vendor, location_name: "Vendor"))
    ConnectionTypeBrief.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ConnectionTypeBrief.add_member(:categories, Shapes::ShapeRef.new(shape: ListOfString, location_name: "Categories"))
    ConnectionTypeBrief.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    ConnectionTypeBrief.add_member(:logo_url, Shapes::ShapeRef.new(shape: UrlString, location_name: "LogoUrl"))
    ConnectionTypeBrief.add_member(:connection_type_variants, Shapes::ShapeRef.new(shape: ConnectionTypeVariantList, location_name: "ConnectionTypeVariants"))
    ConnectionTypeBrief.struct_class = Types::ConnectionTypeBrief

    ConnectionTypeList.member = Shapes::ShapeRef.new(shape: ConnectionTypeBrief)

    ConnectionTypeVariant.add_member(:connection_type_variant_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "ConnectionTypeVariantName"))
    ConnectionTypeVariant.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    ConnectionTypeVariant.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ConnectionTypeVariant.add_member(:logo_url, Shapes::ShapeRef.new(shape: UrlString, location_name: "LogoUrl"))
    ConnectionTypeVariant.struct_class = Types::ConnectionTypeVariant

    ConnectionTypeVariantList.member = Shapes::ShapeRef.new(shape: ConnectionTypeVariant)

    ConnectionsList.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionStringList, location_name: "Connections"))
    ConnectionsList.struct_class = Types::ConnectionsList

    ConnectorDataSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    ConnectorDataSource.add_member(:connection_type, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionType"))
    ConnectorDataSource.add_member(:data, Shapes::ShapeRef.new(shape: ConnectorOptions, required: true, location_name: "Data"))
    ConnectorDataSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    ConnectorDataSource.struct_class = Types::ConnectorDataSource

    ConnectorDataTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    ConnectorDataTarget.add_member(:connection_type, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionType"))
    ConnectorDataTarget.add_member(:data, Shapes::ShapeRef.new(shape: ConnectorOptions, required: true, location_name: "Data"))
    ConnectorDataTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, location_name: "Inputs"))
    ConnectorDataTarget.struct_class = Types::ConnectorDataTarget

    ConnectorOptions.key = Shapes::ShapeRef.new(shape: GenericString)
    ConnectorOptions.value = Shapes::ShapeRef.new(shape: GenericString)

    ContextWords.member = Shapes::ShapeRef.new(shape: NameString)

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
    Crawler.add_member(:recrawl_policy, Shapes::ShapeRef.new(shape: RecrawlPolicy, location_name: "RecrawlPolicy"))
    Crawler.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: SchemaChangePolicy, location_name: "SchemaChangePolicy"))
    Crawler.add_member(:lineage_configuration, Shapes::ShapeRef.new(shape: LineageConfiguration, location_name: "LineageConfiguration"))
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
    Crawler.add_member(:lake_formation_configuration, Shapes::ShapeRef.new(shape: LakeFormationConfiguration, location_name: "LakeFormationConfiguration"))
    Crawler.struct_class = Types::Crawler

    CrawlerHistory.add_member(:crawl_id, Shapes::ShapeRef.new(shape: CrawlId, location_name: "CrawlId"))
    CrawlerHistory.add_member(:state, Shapes::ShapeRef.new(shape: CrawlerHistoryState, location_name: "State"))
    CrawlerHistory.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    CrawlerHistory.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    CrawlerHistory.add_member(:summary, Shapes::ShapeRef.new(shape: NameString, location_name: "Summary"))
    CrawlerHistory.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    CrawlerHistory.add_member(:log_group, Shapes::ShapeRef.new(shape: LogGroup, location_name: "LogGroup"))
    CrawlerHistory.add_member(:log_stream, Shapes::ShapeRef.new(shape: LogStream, location_name: "LogStream"))
    CrawlerHistory.add_member(:message_prefix, Shapes::ShapeRef.new(shape: MessagePrefix, location_name: "MessagePrefix"))
    CrawlerHistory.add_member(:dpu_hour, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "DPUHour"))
    CrawlerHistory.struct_class = Types::CrawlerHistory

    CrawlerHistoryList.member = Shapes::ShapeRef.new(shape: CrawlerHistory)

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
    CrawlerTargets.add_member(:mongo_db_targets, Shapes::ShapeRef.new(shape: MongoDBTargetList, location_name: "MongoDBTargets"))
    CrawlerTargets.add_member(:dynamo_db_targets, Shapes::ShapeRef.new(shape: DynamoDBTargetList, location_name: "DynamoDBTargets"))
    CrawlerTargets.add_member(:catalog_targets, Shapes::ShapeRef.new(shape: CatalogTargetList, location_name: "CatalogTargets"))
    CrawlerTargets.add_member(:delta_targets, Shapes::ShapeRef.new(shape: DeltaTargetList, location_name: "DeltaTargets"))
    CrawlerTargets.add_member(:iceberg_targets, Shapes::ShapeRef.new(shape: IcebergTargetList, location_name: "IcebergTargets"))
    CrawlerTargets.add_member(:hudi_targets, Shapes::ShapeRef.new(shape: HudiTargetList, location_name: "HudiTargets"))
    CrawlerTargets.struct_class = Types::CrawlerTargets

    CrawlsFilter.add_member(:field_name, Shapes::ShapeRef.new(shape: FieldName, location_name: "FieldName"))
    CrawlsFilter.add_member(:filter_operator, Shapes::ShapeRef.new(shape: FilterOperator, location_name: "FilterOperator"))
    CrawlsFilter.add_member(:field_value, Shapes::ShapeRef.new(shape: GenericString, location_name: "FieldValue"))
    CrawlsFilter.struct_class = Types::CrawlsFilter

    CrawlsFilterList.member = Shapes::ShapeRef.new(shape: CrawlsFilter)

    CreateBlueprintRequest.add_member(:name, Shapes::ShapeRef.new(shape: OrchestrationNameString, required: true, location_name: "Name"))
    CreateBlueprintRequest.add_member(:description, Shapes::ShapeRef.new(shape: Generic512CharString, location_name: "Description"))
    CreateBlueprintRequest.add_member(:blueprint_location, Shapes::ShapeRef.new(shape: OrchestrationS3Location, required: true, location_name: "BlueprintLocation"))
    CreateBlueprintRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateBlueprintRequest.struct_class = Types::CreateBlueprintRequest

    CreateBlueprintResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateBlueprintResponse.struct_class = Types::CreateBlueprintResponse

    CreateCatalogRequest.add_member(:name, Shapes::ShapeRef.new(shape: CatalogNameString, required: true, location_name: "Name"))
    CreateCatalogRequest.add_member(:catalog_input, Shapes::ShapeRef.new(shape: CatalogInput, required: true, location_name: "CatalogInput"))
    CreateCatalogRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateCatalogRequest.struct_class = Types::CreateCatalogRequest

    CreateCatalogResponse.struct_class = Types::CreateCatalogResponse

    CreateClassifierRequest.add_member(:grok_classifier, Shapes::ShapeRef.new(shape: CreateGrokClassifierRequest, location_name: "GrokClassifier"))
    CreateClassifierRequest.add_member(:xml_classifier, Shapes::ShapeRef.new(shape: CreateXMLClassifierRequest, location_name: "XMLClassifier"))
    CreateClassifierRequest.add_member(:json_classifier, Shapes::ShapeRef.new(shape: CreateJsonClassifierRequest, location_name: "JsonClassifier"))
    CreateClassifierRequest.add_member(:csv_classifier, Shapes::ShapeRef.new(shape: CreateCsvClassifierRequest, location_name: "CsvClassifier"))
    CreateClassifierRequest.struct_class = Types::CreateClassifierRequest

    CreateClassifierResponse.struct_class = Types::CreateClassifierResponse

    CreateColumnStatisticsTaskSettingsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CreateColumnStatisticsTaskSettingsRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    CreateColumnStatisticsTaskSettingsRequest.add_member(:role, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Role"))
    CreateColumnStatisticsTaskSettingsRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: CronExpression, location_name: "Schedule"))
    CreateColumnStatisticsTaskSettingsRequest.add_member(:column_name_list, Shapes::ShapeRef.new(shape: ColumnNameList, location_name: "ColumnNameList"))
    CreateColumnStatisticsTaskSettingsRequest.add_member(:sample_size, Shapes::ShapeRef.new(shape: SampleSizePercentage, location_name: "SampleSize"))
    CreateColumnStatisticsTaskSettingsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: NameString, location_name: "CatalogID"))
    CreateColumnStatisticsTaskSettingsRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    CreateColumnStatisticsTaskSettingsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateColumnStatisticsTaskSettingsRequest.struct_class = Types::CreateColumnStatisticsTaskSettingsRequest

    CreateColumnStatisticsTaskSettingsResponse.struct_class = Types::CreateColumnStatisticsTaskSettingsResponse

    CreateConnectionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateConnectionRequest.add_member(:connection_input, Shapes::ShapeRef.new(shape: ConnectionInput, required: true, location_name: "ConnectionInput"))
    CreateConnectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateConnectionRequest.struct_class = Types::CreateConnectionRequest

    CreateConnectionResponse.add_member(:create_connection_status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "CreateConnectionStatus"))
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
    CreateCrawlerRequest.add_member(:recrawl_policy, Shapes::ShapeRef.new(shape: RecrawlPolicy, location_name: "RecrawlPolicy"))
    CreateCrawlerRequest.add_member(:lineage_configuration, Shapes::ShapeRef.new(shape: LineageConfiguration, location_name: "LineageConfiguration"))
    CreateCrawlerRequest.add_member(:lake_formation_configuration, Shapes::ShapeRef.new(shape: LakeFormationConfiguration, location_name: "LakeFormationConfiguration"))
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
    CreateCsvClassifierRequest.add_member(:custom_datatype_configured, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "CustomDatatypeConfigured"))
    CreateCsvClassifierRequest.add_member(:custom_datatypes, Shapes::ShapeRef.new(shape: CustomDatatypes, location_name: "CustomDatatypes"))
    CreateCsvClassifierRequest.add_member(:serde, Shapes::ShapeRef.new(shape: CsvSerdeOption, location_name: "Serde"))
    CreateCsvClassifierRequest.struct_class = Types::CreateCsvClassifierRequest

    CreateCustomEntityTypeRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateCustomEntityTypeRequest.add_member(:regex_string, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "RegexString"))
    CreateCustomEntityTypeRequest.add_member(:context_words, Shapes::ShapeRef.new(shape: ContextWords, location_name: "ContextWords"))
    CreateCustomEntityTypeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateCustomEntityTypeRequest.struct_class = Types::CreateCustomEntityTypeRequest

    CreateCustomEntityTypeResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateCustomEntityTypeResponse.struct_class = Types::CreateCustomEntityTypeResponse

    CreateDataQualityRulesetRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateDataQualityRulesetRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateDataQualityRulesetRequest.add_member(:ruleset, Shapes::ShapeRef.new(shape: DataQualityRulesetString, required: true, location_name: "Ruleset"))
    CreateDataQualityRulesetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateDataQualityRulesetRequest.add_member(:target_table, Shapes::ShapeRef.new(shape: DataQualityTargetTable, location_name: "TargetTable"))
    CreateDataQualityRulesetRequest.add_member(:data_quality_security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "DataQualitySecurityConfiguration"))
    CreateDataQualityRulesetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: HashString, location_name: "ClientToken"))
    CreateDataQualityRulesetRequest.struct_class = Types::CreateDataQualityRulesetRequest

    CreateDataQualityRulesetResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateDataQualityRulesetResponse.struct_class = Types::CreateDataQualityRulesetResponse

    CreateDatabaseRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateDatabaseRequest.add_member(:database_input, Shapes::ShapeRef.new(shape: DatabaseInput, required: true, location_name: "DatabaseInput"))
    CreateDatabaseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
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

    CreateIcebergTableInput.add_member(:location, Shapes::ShapeRef.new(shape: LocationString, required: true, location_name: "Location"))
    CreateIcebergTableInput.add_member(:schema, Shapes::ShapeRef.new(shape: IcebergSchema, required: true, location_name: "Schema"))
    CreateIcebergTableInput.add_member(:partition_spec, Shapes::ShapeRef.new(shape: IcebergPartitionSpec, location_name: "PartitionSpec"))
    CreateIcebergTableInput.add_member(:write_order, Shapes::ShapeRef.new(shape: IcebergSortOrder, location_name: "WriteOrder"))
    CreateIcebergTableInput.add_member(:properties, Shapes::ShapeRef.new(shape: StringToStringMap, location_name: "Properties"))
    CreateIcebergTableInput.struct_class = Types::CreateIcebergTableInput

    CreateIntegrationRequest.add_member(:integration_name, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationName"))
    CreateIntegrationRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "SourceArn"))
    CreateIntegrationRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "TargetArn"))
    CreateIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: "Description"))
    CreateIntegrationRequest.add_member(:data_filter, Shapes::ShapeRef.new(shape: String2048, location_name: "DataFilter"))
    CreateIntegrationRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String2048, location_name: "KmsKeyId"))
    CreateIntegrationRequest.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: IntegrationAdditionalEncryptionContextMap, location_name: "AdditionalEncryptionContext"))
    CreateIntegrationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: IntegrationTagsList, location_name: "Tags"))
    CreateIntegrationRequest.add_member(:integration_config, Shapes::ShapeRef.new(shape: IntegrationConfig, location_name: "IntegrationConfig"))
    CreateIntegrationRequest.struct_class = Types::CreateIntegrationRequest

    CreateIntegrationResourcePropertyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "ResourceArn"))
    CreateIntegrationResourcePropertyRequest.add_member(:source_processing_properties, Shapes::ShapeRef.new(shape: SourceProcessingProperties, location_name: "SourceProcessingProperties"))
    CreateIntegrationResourcePropertyRequest.add_member(:target_processing_properties, Shapes::ShapeRef.new(shape: TargetProcessingProperties, location_name: "TargetProcessingProperties"))
    CreateIntegrationResourcePropertyRequest.struct_class = Types::CreateIntegrationResourcePropertyRequest

    CreateIntegrationResourcePropertyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "ResourceArn"))
    CreateIntegrationResourcePropertyResponse.add_member(:source_processing_properties, Shapes::ShapeRef.new(shape: SourceProcessingProperties, location_name: "SourceProcessingProperties"))
    CreateIntegrationResourcePropertyResponse.add_member(:target_processing_properties, Shapes::ShapeRef.new(shape: TargetProcessingProperties, location_name: "TargetProcessingProperties"))
    CreateIntegrationResourcePropertyResponse.struct_class = Types::CreateIntegrationResourcePropertyResponse

    CreateIntegrationResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "SourceArn"))
    CreateIntegrationResponse.add_member(:target_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "TargetArn"))
    CreateIntegrationResponse.add_member(:integration_name, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationName"))
    CreateIntegrationResponse.add_member(:description, Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: "Description"))
    CreateIntegrationResponse.add_member(:integration_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationArn"))
    CreateIntegrationResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String2048, location_name: "KmsKeyId"))
    CreateIntegrationResponse.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: IntegrationAdditionalEncryptionContextMap, location_name: "AdditionalEncryptionContext"))
    CreateIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: IntegrationTagsList, location_name: "Tags"))
    CreateIntegrationResponse.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, required: true, location_name: "Status"))
    CreateIntegrationResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: IntegrationTimestamp, required: true, location_name: "CreateTime"))
    CreateIntegrationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: "Errors"))
    CreateIntegrationResponse.add_member(:data_filter, Shapes::ShapeRef.new(shape: String2048, location_name: "DataFilter"))
    CreateIntegrationResponse.add_member(:integration_config, Shapes::ShapeRef.new(shape: IntegrationConfig, location_name: "IntegrationConfig"))
    CreateIntegrationResponse.struct_class = Types::CreateIntegrationResponse

    CreateIntegrationTablePropertiesRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "ResourceArn"))
    CreateIntegrationTablePropertiesRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "TableName"))
    CreateIntegrationTablePropertiesRequest.add_member(:source_table_config, Shapes::ShapeRef.new(shape: SourceTableConfig, location_name: "SourceTableConfig"))
    CreateIntegrationTablePropertiesRequest.add_member(:target_table_config, Shapes::ShapeRef.new(shape: TargetTableConfig, location_name: "TargetTableConfig"))
    CreateIntegrationTablePropertiesRequest.struct_class = Types::CreateIntegrationTablePropertiesRequest

    CreateIntegrationTablePropertiesResponse.struct_class = Types::CreateIntegrationTablePropertiesResponse

    CreateJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateJobRequest.add_member(:job_mode, Shapes::ShapeRef.new(shape: JobMode, location_name: "JobMode"))
    CreateJobRequest.add_member(:job_run_queuing_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "JobRunQueuingEnabled"))
    CreateJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateJobRequest.add_member(:log_uri, Shapes::ShapeRef.new(shape: UriString, location_name: "LogUri"))
    CreateJobRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, required: true, location_name: "Role"))
    CreateJobRequest.add_member(:execution_property, Shapes::ShapeRef.new(shape: ExecutionProperty, location_name: "ExecutionProperty"))
    CreateJobRequest.add_member(:command, Shapes::ShapeRef.new(shape: JobCommand, required: true, location_name: "Command"))
    CreateJobRequest.add_member(:default_arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "DefaultArguments"))
    CreateJobRequest.add_member(:non_overridable_arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "NonOverridableArguments"))
    CreateJobRequest.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionsList, location_name: "Connections"))
    CreateJobRequest.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    CreateJobRequest.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, deprecated: true, location_name: "AllocatedCapacity", metadata: {"deprecatedMessage" => "This property is deprecated, use MaxCapacity instead."}))
    CreateJobRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    CreateJobRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    CreateJobRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    CreateJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateJobRequest.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    CreateJobRequest.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    CreateJobRequest.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    CreateJobRequest.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    CreateJobRequest.add_member(:code_gen_configuration_nodes, Shapes::ShapeRef.new(shape: CodeGenConfigurationNodes, location_name: "CodeGenConfigurationNodes"))
    CreateJobRequest.add_member(:execution_class, Shapes::ShapeRef.new(shape: ExecutionClass, location_name: "ExecutionClass"))
    CreateJobRequest.add_member(:source_control_details, Shapes::ShapeRef.new(shape: SourceControlDetails, location_name: "SourceControlDetails"))
    CreateJobRequest.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "MaintenanceWindow"))
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
    CreateMLTransformRequest.add_member(:transform_encryption, Shapes::ShapeRef.new(shape: TransformEncryption, location_name: "TransformEncryption"))
    CreateMLTransformRequest.struct_class = Types::CreateMLTransformRequest

    CreateMLTransformResponse.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TransformId"))
    CreateMLTransformResponse.struct_class = Types::CreateMLTransformResponse

    CreatePartitionIndexRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreatePartitionIndexRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CreatePartitionIndexRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    CreatePartitionIndexRequest.add_member(:partition_index, Shapes::ShapeRef.new(shape: PartitionIndex, required: true, location_name: "PartitionIndex"))
    CreatePartitionIndexRequest.struct_class = Types::CreatePartitionIndexRequest

    CreatePartitionIndexResponse.struct_class = Types::CreatePartitionIndexResponse

    CreatePartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreatePartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CreatePartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    CreatePartitionRequest.add_member(:partition_input, Shapes::ShapeRef.new(shape: PartitionInput, required: true, location_name: "PartitionInput"))
    CreatePartitionRequest.struct_class = Types::CreatePartitionRequest

    CreatePartitionResponse.struct_class = Types::CreatePartitionResponse

    CreateRegistryInput.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, required: true, location_name: "RegistryName"))
    CreateRegistryInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateRegistryInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateRegistryInput.struct_class = Types::CreateRegistryInput

    CreateRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "RegistryArn"))
    CreateRegistryResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    CreateRegistryResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateRegistryResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateRegistryResponse.struct_class = Types::CreateRegistryResponse

    CreateSchemaInput.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "RegistryId"))
    CreateSchemaInput.add_member(:schema_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, required: true, location_name: "SchemaName"))
    CreateSchemaInput.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, required: true, location_name: "DataFormat"))
    CreateSchemaInput.add_member(:compatibility, Shapes::ShapeRef.new(shape: Compatibility, location_name: "Compatibility"))
    CreateSchemaInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateSchemaInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateSchemaInput.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaDefinitionString, location_name: "SchemaDefinition"))
    CreateSchemaInput.struct_class = Types::CreateSchemaInput

    CreateSchemaResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    CreateSchemaResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "RegistryArn"))
    CreateSchemaResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "SchemaName"))
    CreateSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "SchemaArn"))
    CreateSchemaResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateSchemaResponse.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, location_name: "DataFormat"))
    CreateSchemaResponse.add_member(:compatibility, Shapes::ShapeRef.new(shape: Compatibility, location_name: "Compatibility"))
    CreateSchemaResponse.add_member(:schema_checkpoint, Shapes::ShapeRef.new(shape: SchemaCheckpointNumber, location_name: "SchemaCheckpoint"))
    CreateSchemaResponse.add_member(:latest_schema_version, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "LatestSchemaVersion"))
    CreateSchemaResponse.add_member(:next_schema_version, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "NextSchemaVersion"))
    CreateSchemaResponse.add_member(:schema_status, Shapes::ShapeRef.new(shape: SchemaStatus, location_name: "SchemaStatus"))
    CreateSchemaResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateSchemaResponse.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    CreateSchemaResponse.add_member(:schema_version_status, Shapes::ShapeRef.new(shape: SchemaVersionStatus, location_name: "SchemaVersionStatus"))
    CreateSchemaResponse.struct_class = Types::CreateSchemaResponse

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

    CreateSessionRequest.add_member(:id, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Id"))
    CreateSessionRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateSessionRequest.add_member(:role, Shapes::ShapeRef.new(shape: OrchestrationRoleArn, required: true, location_name: "Role"))
    CreateSessionRequest.add_member(:command, Shapes::ShapeRef.new(shape: SessionCommand, required: true, location_name: "Command"))
    CreateSessionRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    CreateSessionRequest.add_member(:idle_timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "IdleTimeout"))
    CreateSessionRequest.add_member(:default_arguments, Shapes::ShapeRef.new(shape: OrchestrationArgumentsMap, location_name: "DefaultArguments"))
    CreateSessionRequest.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionsList, location_name: "Connections"))
    CreateSessionRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    CreateSessionRequest.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    CreateSessionRequest.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    CreateSessionRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    CreateSessionRequest.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    CreateSessionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateSessionRequest.add_member(:request_origin, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "RequestOrigin"))
    CreateSessionRequest.struct_class = Types::CreateSessionRequest

    CreateSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: Session, location_name: "Session"))
    CreateSessionResponse.struct_class = Types::CreateSessionResponse

    CreateTableOptimizerRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "CatalogId"))
    CreateTableOptimizerRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CreateTableOptimizerRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    CreateTableOptimizerRequest.add_member(:type, Shapes::ShapeRef.new(shape: TableOptimizerType, required: true, location_name: "Type"))
    CreateTableOptimizerRequest.add_member(:table_optimizer_configuration, Shapes::ShapeRef.new(shape: TableOptimizerConfiguration, required: true, location_name: "TableOptimizerConfiguration"))
    CreateTableOptimizerRequest.struct_class = Types::CreateTableOptimizerRequest

    CreateTableOptimizerResponse.struct_class = Types::CreateTableOptimizerResponse

    CreateTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CreateTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateTableRequest.add_member(:table_input, Shapes::ShapeRef.new(shape: TableInput, required: true, location_name: "TableInput"))
    CreateTableRequest.add_member(:partition_indexes, Shapes::ShapeRef.new(shape: PartitionIndexList, location_name: "PartitionIndexes"))
    CreateTableRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
    CreateTableRequest.add_member(:open_table_format_input, Shapes::ShapeRef.new(shape: OpenTableFormatInput, location_name: "OpenTableFormatInput"))
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
    CreateTriggerRequest.add_member(:event_batching_condition, Shapes::ShapeRef.new(shape: EventBatchingCondition, location_name: "EventBatchingCondition"))
    CreateTriggerRequest.struct_class = Types::CreateTriggerRequest

    CreateTriggerResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateTriggerResponse.struct_class = Types::CreateTriggerResponse

    CreateUsageProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateUsageProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateUsageProfileRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ProfileConfiguration, required: true, location_name: "Configuration"))
    CreateUsageProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateUsageProfileRequest.struct_class = Types::CreateUsageProfileRequest

    CreateUsageProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateUsageProfileResponse.struct_class = Types::CreateUsageProfileResponse

    CreateUserDefinedFunctionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateUserDefinedFunctionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    CreateUserDefinedFunctionRequest.add_member(:function_input, Shapes::ShapeRef.new(shape: UserDefinedFunctionInput, required: true, location_name: "FunctionInput"))
    CreateUserDefinedFunctionRequest.struct_class = Types::CreateUserDefinedFunctionRequest

    CreateUserDefinedFunctionResponse.struct_class = Types::CreateUserDefinedFunctionResponse

    CreateWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowDescriptionString, location_name: "Description"))
    CreateWorkflowRequest.add_member(:default_run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, location_name: "DefaultRunProperties"))
    CreateWorkflowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateWorkflowRequest.add_member(:max_concurrent_runs, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaxConcurrentRuns"))
    CreateWorkflowRequest.struct_class = Types::CreateWorkflowRequest

    CreateWorkflowResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    CreateWorkflowResponse.struct_class = Types::CreateWorkflowResponse

    CreateXMLClassifierRequest.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, required: true, location_name: "Classification"))
    CreateXMLClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateXMLClassifierRequest.add_member(:row_tag, Shapes::ShapeRef.new(shape: RowTag, location_name: "RowTag"))
    CreateXMLClassifierRequest.struct_class = Types::CreateXMLClassifierRequest

    CredentialMap.key = Shapes::ShapeRef.new(shape: CredentialKey)
    CredentialMap.value = Shapes::ShapeRef.new(shape: CredentialValue)

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
    CsvClassifier.add_member(:custom_datatype_configured, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "CustomDatatypeConfigured"))
    CsvClassifier.add_member(:custom_datatypes, Shapes::ShapeRef.new(shape: CustomDatatypes, location_name: "CustomDatatypes"))
    CsvClassifier.add_member(:serde, Shapes::ShapeRef.new(shape: CsvSerdeOption, location_name: "Serde"))
    CsvClassifier.struct_class = Types::CsvClassifier

    CsvHeader.member = Shapes::ShapeRef.new(shape: NameString)

    CustomCode.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    CustomCode.add_member(:inputs, Shapes::ShapeRef.new(shape: ManyInputs, required: true, location_name: "Inputs"))
    CustomCode.add_member(:code, Shapes::ShapeRef.new(shape: ExtendedString, required: true, location_name: "Code"))
    CustomCode.add_member(:class_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ClassName"))
    CustomCode.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    CustomCode.struct_class = Types::CustomCode

    CustomDatatypes.member = Shapes::ShapeRef.new(shape: NameString)

    CustomEntityType.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CustomEntityType.add_member(:regex_string, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "RegexString"))
    CustomEntityType.add_member(:context_words, Shapes::ShapeRef.new(shape: ContextWords, location_name: "ContextWords"))
    CustomEntityType.struct_class = Types::CustomEntityType

    CustomEntityTypeNames.member = Shapes::ShapeRef.new(shape: NameString)

    CustomEntityTypes.member = Shapes::ShapeRef.new(shape: CustomEntityType)

    CustomProperties.key = Shapes::ShapeRef.new(shape: String)
    CustomProperties.value = Shapes::ShapeRef.new(shape: String)

    DQAdditionalOptions.key = Shapes::ShapeRef.new(shape: AdditionalOptionKeys)
    DQAdditionalOptions.value = Shapes::ShapeRef.new(shape: GenericString)

    DQDLAliases.key = Shapes::ShapeRef.new(shape: NodeName)
    DQDLAliases.value = Shapes::ShapeRef.new(shape: EnclosedInStringProperty)

    DQResultsPublishingOptions.add_member(:evaluation_context, Shapes::ShapeRef.new(shape: GenericLimitedString, location_name: "EvaluationContext"))
    DQResultsPublishingOptions.add_member(:results_s3_prefix, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "ResultsS3Prefix"))
    DQResultsPublishingOptions.add_member(:cloud_watch_metrics_enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "CloudWatchMetricsEnabled"))
    DQResultsPublishingOptions.add_member(:results_publishing_enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "ResultsPublishingEnabled"))
    DQResultsPublishingOptions.struct_class = Types::DQResultsPublishingOptions

    DQStopJobOnFailureOptions.add_member(:stop_job_on_failure_timing, Shapes::ShapeRef.new(shape: DQStopJobOnFailureTiming, location_name: "StopJobOnFailureTiming"))
    DQStopJobOnFailureOptions.struct_class = Types::DQStopJobOnFailureOptions

    DagEdges.member = Shapes::ShapeRef.new(shape: CodeGenEdge)

    DagNodes.member = Shapes::ShapeRef.new(shape: CodeGenNode)

    DataCatalogEncryptionSettings.add_member(:encryption_at_rest, Shapes::ShapeRef.new(shape: EncryptionAtRest, location_name: "EncryptionAtRest"))
    DataCatalogEncryptionSettings.add_member(:connection_password_encryption, Shapes::ShapeRef.new(shape: ConnectionPasswordEncryption, location_name: "ConnectionPasswordEncryption"))
    DataCatalogEncryptionSettings.struct_class = Types::DataCatalogEncryptionSettings

    DataLakeAccessProperties.add_member(:data_lake_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "DataLakeAccess"))
    DataLakeAccessProperties.add_member(:data_transfer_role, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "DataTransferRole"))
    DataLakeAccessProperties.add_member(:kms_key, Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "KmsKey"))
    DataLakeAccessProperties.add_member(:catalog_type, Shapes::ShapeRef.new(shape: NameString, location_name: "CatalogType"))
    DataLakeAccessProperties.struct_class = Types::DataLakeAccessProperties

    DataLakeAccessPropertiesOutput.add_member(:data_lake_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "DataLakeAccess"))
    DataLakeAccessPropertiesOutput.add_member(:data_transfer_role, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "DataTransferRole"))
    DataLakeAccessPropertiesOutput.add_member(:kms_key, Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "KmsKey"))
    DataLakeAccessPropertiesOutput.add_member(:managed_workgroup_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ManagedWorkgroupName"))
    DataLakeAccessPropertiesOutput.add_member(:managed_workgroup_status, Shapes::ShapeRef.new(shape: NameString, location_name: "ManagedWorkgroupStatus"))
    DataLakeAccessPropertiesOutput.add_member(:redshift_database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "RedshiftDatabaseName"))
    DataLakeAccessPropertiesOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: NameString, location_name: "StatusMessage"))
    DataLakeAccessPropertiesOutput.add_member(:catalog_type, Shapes::ShapeRef.new(shape: NameString, location_name: "CatalogType"))
    DataLakeAccessPropertiesOutput.struct_class = Types::DataLakeAccessPropertiesOutput

    DataLakePrincipal.add_member(:data_lake_principal_identifier, Shapes::ShapeRef.new(shape: DataLakePrincipalString, location_name: "DataLakePrincipalIdentifier"))
    DataLakePrincipal.struct_class = Types::DataLakePrincipal

    DataOperations.member = Shapes::ShapeRef.new(shape: DataOperation)

    DataQualityAggregatedMetrics.add_member(:total_rows_processed, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "TotalRowsProcessed"))
    DataQualityAggregatedMetrics.add_member(:total_rows_passed, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "TotalRowsPassed"))
    DataQualityAggregatedMetrics.add_member(:total_rows_failed, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "TotalRowsFailed"))
    DataQualityAggregatedMetrics.add_member(:total_rules_processed, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "TotalRulesProcessed"))
    DataQualityAggregatedMetrics.add_member(:total_rules_passed, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "TotalRulesPassed"))
    DataQualityAggregatedMetrics.add_member(:total_rules_failed, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "TotalRulesFailed"))
    DataQualityAggregatedMetrics.struct_class = Types::DataQualityAggregatedMetrics

    DataQualityAnalyzerResult.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    DataQualityAnalyzerResult.add_member(:description, Shapes::ShapeRef.new(shape: DataQualityRuleResultDescription, location_name: "Description"))
    DataQualityAnalyzerResult.add_member(:evaluation_message, Shapes::ShapeRef.new(shape: DataQualityRuleResultDescription, location_name: "EvaluationMessage"))
    DataQualityAnalyzerResult.add_member(:evaluated_metrics, Shapes::ShapeRef.new(shape: EvaluatedMetricsMap, location_name: "EvaluatedMetrics"))
    DataQualityAnalyzerResult.struct_class = Types::DataQualityAnalyzerResult

    DataQualityAnalyzerResults.member = Shapes::ShapeRef.new(shape: DataQualityAnalyzerResult)

    DataQualityEncryption.add_member(:data_quality_encryption_mode, Shapes::ShapeRef.new(shape: DataQualityEncryptionMode, location_name: "DataQualityEncryptionMode"))
    DataQualityEncryption.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    DataQualityEncryption.struct_class = Types::DataQualityEncryption

    DataQualityEvaluationRunAdditionalRunOptions.add_member(:cloud_watch_metrics_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "CloudWatchMetricsEnabled"))
    DataQualityEvaluationRunAdditionalRunOptions.add_member(:results_s3_prefix, Shapes::ShapeRef.new(shape: UriString, location_name: "ResultsS3Prefix"))
    DataQualityEvaluationRunAdditionalRunOptions.add_member(:composite_rule_evaluation_method, Shapes::ShapeRef.new(shape: DQCompositeRuleEvaluationMethod, location_name: "CompositeRuleEvaluationMethod"))
    DataQualityEvaluationRunAdditionalRunOptions.struct_class = Types::DataQualityEvaluationRunAdditionalRunOptions

    DataQualityMetricValues.add_member(:actual_value, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "ActualValue"))
    DataQualityMetricValues.add_member(:expected_value, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "ExpectedValue"))
    DataQualityMetricValues.add_member(:lower_limit, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "LowerLimit"))
    DataQualityMetricValues.add_member(:upper_limit, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "UpperLimit"))
    DataQualityMetricValues.struct_class = Types::DataQualityMetricValues

    DataQualityObservation.add_member(:description, Shapes::ShapeRef.new(shape: DataQualityObservationDescription, location_name: "Description"))
    DataQualityObservation.add_member(:metric_based_observation, Shapes::ShapeRef.new(shape: MetricBasedObservation, location_name: "MetricBasedObservation"))
    DataQualityObservation.struct_class = Types::DataQualityObservation

    DataQualityObservations.member = Shapes::ShapeRef.new(shape: DataQualityObservation)

    DataQualityResult.add_member(:result_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ResultId"))
    DataQualityResult.add_member(:profile_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ProfileId"))
    DataQualityResult.add_member(:score, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "Score"))
    DataQualityResult.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "DataSource"))
    DataQualityResult.add_member(:ruleset_name, Shapes::ShapeRef.new(shape: NameString, location_name: "RulesetName"))
    DataQualityResult.add_member(:evaluation_context, Shapes::ShapeRef.new(shape: GenericString, location_name: "EvaluationContext"))
    DataQualityResult.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedOn"))
    DataQualityResult.add_member(:completed_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedOn"))
    DataQualityResult.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    DataQualityResult.add_member(:job_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "JobRunId"))
    DataQualityResult.add_member(:ruleset_evaluation_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "RulesetEvaluationRunId"))
    DataQualityResult.add_member(:rule_results, Shapes::ShapeRef.new(shape: DataQualityRuleResults, location_name: "RuleResults"))
    DataQualityResult.add_member(:analyzer_results, Shapes::ShapeRef.new(shape: DataQualityAnalyzerResults, location_name: "AnalyzerResults"))
    DataQualityResult.add_member(:observations, Shapes::ShapeRef.new(shape: DataQualityObservations, location_name: "Observations"))
    DataQualityResult.add_member(:aggregated_metrics, Shapes::ShapeRef.new(shape: DataQualityAggregatedMetrics, location_name: "AggregatedMetrics"))
    DataQualityResult.struct_class = Types::DataQualityResult

    DataQualityResultDescription.add_member(:result_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ResultId"))
    DataQualityResultDescription.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "DataSource"))
    DataQualityResultDescription.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    DataQualityResultDescription.add_member(:job_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "JobRunId"))
    DataQualityResultDescription.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedOn"))
    DataQualityResultDescription.struct_class = Types::DataQualityResultDescription

    DataQualityResultDescriptionList.member = Shapes::ShapeRef.new(shape: DataQualityResultDescription)

    DataQualityResultFilterCriteria.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "DataSource"))
    DataQualityResultFilterCriteria.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    DataQualityResultFilterCriteria.add_member(:job_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "JobRunId"))
    DataQualityResultFilterCriteria.add_member(:started_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedAfter"))
    DataQualityResultFilterCriteria.add_member(:started_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedBefore"))
    DataQualityResultFilterCriteria.struct_class = Types::DataQualityResultFilterCriteria

    DataQualityResultIdList.member = Shapes::ShapeRef.new(shape: HashString)

    DataQualityResultIds.member = Shapes::ShapeRef.new(shape: HashString)

    DataQualityResultsList.member = Shapes::ShapeRef.new(shape: DataQualityResult)

    DataQualityRuleRecommendationRunDescription.add_member(:run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "RunId"))
    DataQualityRuleRecommendationRunDescription.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatusType, location_name: "Status"))
    DataQualityRuleRecommendationRunDescription.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedOn"))
    DataQualityRuleRecommendationRunDescription.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "DataSource"))
    DataQualityRuleRecommendationRunDescription.struct_class = Types::DataQualityRuleRecommendationRunDescription

    DataQualityRuleRecommendationRunFilter.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "DataSource"))
    DataQualityRuleRecommendationRunFilter.add_member(:started_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedBefore"))
    DataQualityRuleRecommendationRunFilter.add_member(:started_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedAfter"))
    DataQualityRuleRecommendationRunFilter.struct_class = Types::DataQualityRuleRecommendationRunFilter

    DataQualityRuleRecommendationRunList.member = Shapes::ShapeRef.new(shape: DataQualityRuleRecommendationRunDescription)

    DataQualityRuleResult.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    DataQualityRuleResult.add_member(:description, Shapes::ShapeRef.new(shape: DataQualityRuleResultDescription, location_name: "Description"))
    DataQualityRuleResult.add_member(:evaluation_message, Shapes::ShapeRef.new(shape: DataQualityRuleResultDescription, location_name: "EvaluationMessage"))
    DataQualityRuleResult.add_member(:result, Shapes::ShapeRef.new(shape: DataQualityRuleResultStatus, location_name: "Result"))
    DataQualityRuleResult.add_member(:evaluated_metrics, Shapes::ShapeRef.new(shape: EvaluatedMetricsMap, location_name: "EvaluatedMetrics"))
    DataQualityRuleResult.add_member(:evaluated_rule, Shapes::ShapeRef.new(shape: DataQualityRuleResultDescription, location_name: "EvaluatedRule"))
    DataQualityRuleResult.add_member(:rule_metrics, Shapes::ShapeRef.new(shape: RuleMetricsMap, location_name: "RuleMetrics"))
    DataQualityRuleResult.struct_class = Types::DataQualityRuleResult

    DataQualityRuleResults.member = Shapes::ShapeRef.new(shape: DataQualityRuleResult)

    DataQualityRulesetEvaluationRunDescription.add_member(:run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "RunId"))
    DataQualityRulesetEvaluationRunDescription.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatusType, location_name: "Status"))
    DataQualityRulesetEvaluationRunDescription.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedOn"))
    DataQualityRulesetEvaluationRunDescription.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "DataSource"))
    DataQualityRulesetEvaluationRunDescription.struct_class = Types::DataQualityRulesetEvaluationRunDescription

    DataQualityRulesetEvaluationRunFilter.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "DataSource"))
    DataQualityRulesetEvaluationRunFilter.add_member(:started_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedBefore"))
    DataQualityRulesetEvaluationRunFilter.add_member(:started_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedAfter"))
    DataQualityRulesetEvaluationRunFilter.struct_class = Types::DataQualityRulesetEvaluationRunFilter

    DataQualityRulesetEvaluationRunList.member = Shapes::ShapeRef.new(shape: DataQualityRulesetEvaluationRunDescription)

    DataQualityRulesetFilterCriteria.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    DataQualityRulesetFilterCriteria.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    DataQualityRulesetFilterCriteria.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedBefore"))
    DataQualityRulesetFilterCriteria.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAfter"))
    DataQualityRulesetFilterCriteria.add_member(:last_modified_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedBefore"))
    DataQualityRulesetFilterCriteria.add_member(:last_modified_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedAfter"))
    DataQualityRulesetFilterCriteria.add_member(:target_table, Shapes::ShapeRef.new(shape: DataQualityTargetTable, location_name: "TargetTable"))
    DataQualityRulesetFilterCriteria.struct_class = Types::DataQualityRulesetFilterCriteria

    DataQualityRulesetList.member = Shapes::ShapeRef.new(shape: DataQualityRulesetListDetails)

    DataQualityRulesetListDetails.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    DataQualityRulesetListDetails.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    DataQualityRulesetListDetails.add_member(:created_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedOn"))
    DataQualityRulesetListDetails.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedOn"))
    DataQualityRulesetListDetails.add_member(:target_table, Shapes::ShapeRef.new(shape: DataQualityTargetTable, location_name: "TargetTable"))
    DataQualityRulesetListDetails.add_member(:recommendation_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "RecommendationRunId"))
    DataQualityRulesetListDetails.add_member(:rule_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "RuleCount"))
    DataQualityRulesetListDetails.struct_class = Types::DataQualityRulesetListDetails

    DataQualityTargetTable.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DataQualityTargetTable.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DataQualityTargetTable.add_member(:catalog_id, Shapes::ShapeRef.new(shape: NameString, location_name: "CatalogId"))
    DataQualityTargetTable.struct_class = Types::DataQualityTargetTable

    DataSource.add_member(:glue_table, Shapes::ShapeRef.new(shape: GlueTable, required: true, location_name: "GlueTable"))
    DataSource.struct_class = Types::DataSource

    DataSourceMap.key = Shapes::ShapeRef.new(shape: NameString)
    DataSourceMap.value = Shapes::ShapeRef.new(shape: DataSource)

    Database.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    Database.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Database.add_member(:location_uri, Shapes::ShapeRef.new(shape: URI, location_name: "LocationUri"))
    Database.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    Database.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    Database.add_member(:create_table_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateTableDefaultPermissions"))
    Database.add_member(:target_database, Shapes::ShapeRef.new(shape: DatabaseIdentifier, location_name: "TargetDatabase"))
    Database.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    Database.add_member(:federated_database, Shapes::ShapeRef.new(shape: FederatedDatabase, location_name: "FederatedDatabase"))
    Database.struct_class = Types::Database

    DatabaseAttributesList.member = Shapes::ShapeRef.new(shape: DatabaseAttributes)

    DatabaseIdentifier.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DatabaseIdentifier.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DatabaseName"))
    DatabaseIdentifier.add_member(:region, Shapes::ShapeRef.new(shape: NameString, location_name: "Region"))
    DatabaseIdentifier.struct_class = Types::DatabaseIdentifier

    DatabaseInput.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DatabaseInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    DatabaseInput.add_member(:location_uri, Shapes::ShapeRef.new(shape: URI, location_name: "LocationUri"))
    DatabaseInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    DatabaseInput.add_member(:create_table_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateTableDefaultPermissions"))
    DatabaseInput.add_member(:target_database, Shapes::ShapeRef.new(shape: DatabaseIdentifier, location_name: "TargetDatabase"))
    DatabaseInput.add_member(:federated_database, Shapes::ShapeRef.new(shape: FederatedDatabase, location_name: "FederatedDatabase"))
    DatabaseInput.struct_class = Types::DatabaseInput

    DatabaseList.member = Shapes::ShapeRef.new(shape: Database)

    DatapointInclusionAnnotation.add_member(:profile_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ProfileId"))
    DatapointInclusionAnnotation.add_member(:statistic_id, Shapes::ShapeRef.new(shape: HashString, location_name: "StatisticId"))
    DatapointInclusionAnnotation.add_member(:inclusion_annotation, Shapes::ShapeRef.new(shape: InclusionAnnotationValue, location_name: "InclusionAnnotation"))
    DatapointInclusionAnnotation.struct_class = Types::DatapointInclusionAnnotation

    Datatype.add_member(:id, Shapes::ShapeRef.new(shape: GenericLimitedString, required: true, location_name: "Id"))
    Datatype.add_member(:label, Shapes::ShapeRef.new(shape: GenericLimitedString, required: true, location_name: "Label"))
    Datatype.struct_class = Types::Datatype

    DateColumnStatisticsData.add_member(:minimum_value, Shapes::ShapeRef.new(shape: Timestamp, location_name: "MinimumValue"))
    DateColumnStatisticsData.add_member(:maximum_value, Shapes::ShapeRef.new(shape: Timestamp, location_name: "MaximumValue"))
    DateColumnStatisticsData.add_member(:number_of_nulls, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfNulls"))
    DateColumnStatisticsData.add_member(:number_of_distinct_values, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfDistinctValues"))
    DateColumnStatisticsData.struct_class = Types::DateColumnStatisticsData

    DecimalColumnStatisticsData.add_member(:minimum_value, Shapes::ShapeRef.new(shape: DecimalNumber, location_name: "MinimumValue"))
    DecimalColumnStatisticsData.add_member(:maximum_value, Shapes::ShapeRef.new(shape: DecimalNumber, location_name: "MaximumValue"))
    DecimalColumnStatisticsData.add_member(:number_of_nulls, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfNulls"))
    DecimalColumnStatisticsData.add_member(:number_of_distinct_values, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfDistinctValues"))
    DecimalColumnStatisticsData.struct_class = Types::DecimalColumnStatisticsData

    DecimalNumber.add_member(:unscaled_value, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "UnscaledValue"))
    DecimalNumber.add_member(:scale, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Scale"))
    DecimalNumber.struct_class = Types::DecimalNumber

    DeleteBlueprintRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteBlueprintRequest.struct_class = Types::DeleteBlueprintRequest

    DeleteBlueprintResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    DeleteBlueprintResponse.struct_class = Types::DeleteBlueprintResponse

    DeleteCatalogRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "CatalogId"))
    DeleteCatalogRequest.struct_class = Types::DeleteCatalogRequest

    DeleteCatalogResponse.struct_class = Types::DeleteCatalogResponse

    DeleteClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteClassifierRequest.struct_class = Types::DeleteClassifierRequest

    DeleteClassifierResponse.struct_class = Types::DeleteClassifierResponse

    DeleteColumnStatisticsForPartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteColumnStatisticsForPartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeleteColumnStatisticsForPartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DeleteColumnStatisticsForPartitionRequest.add_member(:partition_values, Shapes::ShapeRef.new(shape: ValueStringList, required: true, location_name: "PartitionValues"))
    DeleteColumnStatisticsForPartitionRequest.add_member(:column_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "ColumnName"))
    DeleteColumnStatisticsForPartitionRequest.struct_class = Types::DeleteColumnStatisticsForPartitionRequest

    DeleteColumnStatisticsForPartitionResponse.struct_class = Types::DeleteColumnStatisticsForPartitionResponse

    DeleteColumnStatisticsForTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteColumnStatisticsForTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeleteColumnStatisticsForTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DeleteColumnStatisticsForTableRequest.add_member(:column_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "ColumnName"))
    DeleteColumnStatisticsForTableRequest.struct_class = Types::DeleteColumnStatisticsForTableRequest

    DeleteColumnStatisticsForTableResponse.struct_class = Types::DeleteColumnStatisticsForTableResponse

    DeleteColumnStatisticsTaskSettingsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeleteColumnStatisticsTaskSettingsRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DeleteColumnStatisticsTaskSettingsRequest.struct_class = Types::DeleteColumnStatisticsTaskSettingsRequest

    DeleteColumnStatisticsTaskSettingsResponse.struct_class = Types::DeleteColumnStatisticsTaskSettingsResponse

    DeleteConnectionNameList.member = Shapes::ShapeRef.new(shape: NameString)

    DeleteConnectionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteConnectionRequest.add_member(:connection_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "ConnectionName"))
    DeleteConnectionRequest.struct_class = Types::DeleteConnectionRequest

    DeleteConnectionResponse.struct_class = Types::DeleteConnectionResponse

    DeleteCrawlerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteCrawlerRequest.struct_class = Types::DeleteCrawlerRequest

    DeleteCrawlerResponse.struct_class = Types::DeleteCrawlerResponse

    DeleteCustomEntityTypeRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteCustomEntityTypeRequest.struct_class = Types::DeleteCustomEntityTypeRequest

    DeleteCustomEntityTypeResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    DeleteCustomEntityTypeResponse.struct_class = Types::DeleteCustomEntityTypeResponse

    DeleteDataQualityRulesetRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteDataQualityRulesetRequest.struct_class = Types::DeleteDataQualityRulesetRequest

    DeleteDataQualityRulesetResponse.struct_class = Types::DeleteDataQualityRulesetResponse

    DeleteDatabaseRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteDatabaseRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteDatabaseRequest.struct_class = Types::DeleteDatabaseRequest

    DeleteDatabaseResponse.struct_class = Types::DeleteDatabaseResponse

    DeleteDevEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointName"))
    DeleteDevEndpointRequest.struct_class = Types::DeleteDevEndpointRequest

    DeleteDevEndpointResponse.struct_class = Types::DeleteDevEndpointResponse

    DeleteIntegrationRequest.add_member(:integration_identifier, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationIdentifier"))
    DeleteIntegrationRequest.struct_class = Types::DeleteIntegrationRequest

    DeleteIntegrationResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "SourceArn"))
    DeleteIntegrationResponse.add_member(:target_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "TargetArn"))
    DeleteIntegrationResponse.add_member(:integration_name, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationName"))
    DeleteIntegrationResponse.add_member(:description, Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: "Description"))
    DeleteIntegrationResponse.add_member(:integration_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationArn"))
    DeleteIntegrationResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String2048, location_name: "KmsKeyId"))
    DeleteIntegrationResponse.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: IntegrationAdditionalEncryptionContextMap, location_name: "AdditionalEncryptionContext"))
    DeleteIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: IntegrationTagsList, location_name: "Tags"))
    DeleteIntegrationResponse.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, required: true, location_name: "Status"))
    DeleteIntegrationResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: IntegrationTimestamp, required: true, location_name: "CreateTime"))
    DeleteIntegrationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: "Errors"))
    DeleteIntegrationResponse.add_member(:data_filter, Shapes::ShapeRef.new(shape: String2048, location_name: "DataFilter"))
    DeleteIntegrationResponse.struct_class = Types::DeleteIntegrationResponse

    DeleteIntegrationTablePropertiesRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "ResourceArn"))
    DeleteIntegrationTablePropertiesRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "TableName"))
    DeleteIntegrationTablePropertiesRequest.struct_class = Types::DeleteIntegrationTablePropertiesRequest

    DeleteIntegrationTablePropertiesResponse.struct_class = Types::DeleteIntegrationTablePropertiesResponse

    DeleteJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "JobName"))
    DeleteJobRequest.struct_class = Types::DeleteJobRequest

    DeleteJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    DeleteJobResponse.struct_class = Types::DeleteJobResponse

    DeleteMLTransformRequest.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "TransformId"))
    DeleteMLTransformRequest.struct_class = Types::DeleteMLTransformRequest

    DeleteMLTransformResponse.add_member(:transform_id, Shapes::ShapeRef.new(shape: HashString, location_name: "TransformId"))
    DeleteMLTransformResponse.struct_class = Types::DeleteMLTransformResponse

    DeletePartitionIndexRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeletePartitionIndexRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeletePartitionIndexRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DeletePartitionIndexRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "IndexName"))
    DeletePartitionIndexRequest.struct_class = Types::DeletePartitionIndexRequest

    DeletePartitionIndexResponse.struct_class = Types::DeletePartitionIndexResponse

    DeletePartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeletePartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeletePartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DeletePartitionRequest.add_member(:partition_values, Shapes::ShapeRef.new(shape: ValueStringList, required: true, location_name: "PartitionValues"))
    DeletePartitionRequest.struct_class = Types::DeletePartitionRequest

    DeletePartitionResponse.struct_class = Types::DeletePartitionResponse

    DeleteRegistryInput.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "RegistryId"))
    DeleteRegistryInput.struct_class = Types::DeleteRegistryInput

    DeleteRegistryResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    DeleteRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "RegistryArn"))
    DeleteRegistryResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, location_name: "Status"))
    DeleteRegistryResponse.struct_class = Types::DeleteRegistryResponse

    DeleteResourcePolicyRequest.add_member(:policy_hash_condition, Shapes::ShapeRef.new(shape: HashString, location_name: "PolicyHashCondition"))
    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "ResourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteSchemaInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, required: true, location_name: "SchemaId"))
    DeleteSchemaInput.struct_class = Types::DeleteSchemaInput

    DeleteSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "SchemaArn"))
    DeleteSchemaResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "SchemaName"))
    DeleteSchemaResponse.add_member(:status, Shapes::ShapeRef.new(shape: SchemaStatus, location_name: "Status"))
    DeleteSchemaResponse.struct_class = Types::DeleteSchemaResponse

    DeleteSchemaVersionsInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, required: true, location_name: "SchemaId"))
    DeleteSchemaVersionsInput.add_member(:versions, Shapes::ShapeRef.new(shape: VersionsString, required: true, location_name: "Versions"))
    DeleteSchemaVersionsInput.struct_class = Types::DeleteSchemaVersionsInput

    DeleteSchemaVersionsResponse.add_member(:schema_version_errors, Shapes::ShapeRef.new(shape: SchemaVersionErrorList, location_name: "SchemaVersionErrors"))
    DeleteSchemaVersionsResponse.struct_class = Types::DeleteSchemaVersionsResponse

    DeleteSecurityConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteSecurityConfigurationRequest.struct_class = Types::DeleteSecurityConfigurationRequest

    DeleteSecurityConfigurationResponse.struct_class = Types::DeleteSecurityConfigurationResponse

    DeleteSessionRequest.add_member(:id, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Id"))
    DeleteSessionRequest.add_member(:request_origin, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "RequestOrigin"))
    DeleteSessionRequest.struct_class = Types::DeleteSessionRequest

    DeleteSessionResponse.add_member(:id, Shapes::ShapeRef.new(shape: NameString, location_name: "Id"))
    DeleteSessionResponse.struct_class = Types::DeleteSessionResponse

    DeleteTableOptimizerRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "CatalogId"))
    DeleteTableOptimizerRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeleteTableOptimizerRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    DeleteTableOptimizerRequest.add_member(:type, Shapes::ShapeRef.new(shape: TableOptimizerType, required: true, location_name: "Type"))
    DeleteTableOptimizerRequest.struct_class = Types::DeleteTableOptimizerRequest

    DeleteTableOptimizerResponse.struct_class = Types::DeleteTableOptimizerResponse

    DeleteTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeleteTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteTableRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
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

    DeleteUsageProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteUsageProfileRequest.struct_class = Types::DeleteUsageProfileRequest

    DeleteUsageProfileResponse.struct_class = Types::DeleteUsageProfileResponse

    DeleteUserDefinedFunctionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteUserDefinedFunctionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    DeleteUserDefinedFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "FunctionName"))
    DeleteUserDefinedFunctionRequest.struct_class = Types::DeleteUserDefinedFunctionRequest

    DeleteUserDefinedFunctionResponse.struct_class = Types::DeleteUserDefinedFunctionResponse

    DeleteWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DeleteWorkflowRequest.struct_class = Types::DeleteWorkflowRequest

    DeleteWorkflowResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    DeleteWorkflowResponse.struct_class = Types::DeleteWorkflowResponse

    DeltaTarget.add_member(:delta_tables, Shapes::ShapeRef.new(shape: PathList, location_name: "DeltaTables"))
    DeltaTarget.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    DeltaTarget.add_member(:write_manifest, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "WriteManifest"))
    DeltaTarget.add_member(:create_native_delta_table, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "CreateNativeDeltaTable"))
    DeltaTarget.struct_class = Types::DeltaTarget

    DeltaTargetList.member = Shapes::ShapeRef.new(shape: DeltaTarget)

    DescribeConnectionTypeRequest.add_member(:connection_type, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "ConnectionType"))
    DescribeConnectionTypeRequest.struct_class = Types::DescribeConnectionTypeRequest

    DescribeConnectionTypeResponse.add_member(:connection_type, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionType"))
    DescribeConnectionTypeResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeConnectionTypeResponse.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    DescribeConnectionTypeResponse.add_member(:connection_properties, Shapes::ShapeRef.new(shape: PropertiesMap, location_name: "ConnectionProperties"))
    DescribeConnectionTypeResponse.add_member(:connection_options, Shapes::ShapeRef.new(shape: PropertiesMap, location_name: "ConnectionOptions"))
    DescribeConnectionTypeResponse.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: AuthConfiguration, location_name: "AuthenticationConfiguration"))
    DescribeConnectionTypeResponse.add_member(:compute_environment_configurations, Shapes::ShapeRef.new(shape: ComputeEnvironmentConfigurationMap, location_name: "ComputeEnvironmentConfigurations"))
    DescribeConnectionTypeResponse.add_member(:physical_connection_requirements, Shapes::ShapeRef.new(shape: PropertiesMap, location_name: "PhysicalConnectionRequirements"))
    DescribeConnectionTypeResponse.add_member(:athena_connection_properties, Shapes::ShapeRef.new(shape: PropertiesMap, location_name: "AthenaConnectionProperties"))
    DescribeConnectionTypeResponse.add_member(:python_connection_properties, Shapes::ShapeRef.new(shape: PropertiesMap, location_name: "PythonConnectionProperties"))
    DescribeConnectionTypeResponse.add_member(:spark_connection_properties, Shapes::ShapeRef.new(shape: PropertiesMap, location_name: "SparkConnectionProperties"))
    DescribeConnectionTypeResponse.struct_class = Types::DescribeConnectionTypeResponse

    DescribeEntityRequest.add_member(:connection_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "ConnectionName"))
    DescribeEntityRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DescribeEntityRequest.add_member(:entity_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "EntityName"))
    DescribeEntityRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeEntityRequest.add_member(:data_store_api_version, Shapes::ShapeRef.new(shape: ApiVersion, location_name: "DataStoreApiVersion"))
    DescribeEntityRequest.struct_class = Types::DescribeEntityRequest

    DescribeEntityResponse.add_member(:fields, Shapes::ShapeRef.new(shape: FieldsList, location_name: "Fields"))
    DescribeEntityResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeEntityResponse.struct_class = Types::DescribeEntityResponse

    DescribeInboundIntegrationsRequest.add_member(:integration_arn, Shapes::ShapeRef.new(shape: String128, location_name: "IntegrationArn"))
    DescribeInboundIntegrationsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String128, location_name: "Marker"))
    DescribeInboundIntegrationsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegrationInteger, location_name: "MaxRecords"))
    DescribeInboundIntegrationsRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: String128, location_name: "TargetArn"))
    DescribeInboundIntegrationsRequest.struct_class = Types::DescribeInboundIntegrationsRequest

    DescribeInboundIntegrationsResponse.add_member(:inbound_integrations, Shapes::ShapeRef.new(shape: InboundIntegrationsList, location_name: "InboundIntegrations"))
    DescribeInboundIntegrationsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String128, location_name: "Marker"))
    DescribeInboundIntegrationsResponse.struct_class = Types::DescribeInboundIntegrationsResponse

    DescribeIntegrationsRequest.add_member(:integration_identifier, Shapes::ShapeRef.new(shape: String128, location_name: "IntegrationIdentifier"))
    DescribeIntegrationsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String128, location_name: "Marker"))
    DescribeIntegrationsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegrationInteger, location_name: "MaxRecords"))
    DescribeIntegrationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: IntegrationFilterList, location_name: "Filters"))
    DescribeIntegrationsRequest.struct_class = Types::DescribeIntegrationsRequest

    DescribeIntegrationsResponse.add_member(:integrations, Shapes::ShapeRef.new(shape: IntegrationsList, location_name: "Integrations"))
    DescribeIntegrationsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String128, location_name: "Marker"))
    DescribeIntegrationsResponse.struct_class = Types::DescribeIntegrationsResponse

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

    DirectJDBCSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    DirectJDBCSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    DirectJDBCSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    DirectJDBCSource.add_member(:connection_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionName"))
    DirectJDBCSource.add_member(:connection_type, Shapes::ShapeRef.new(shape: JDBCConnectionType, required: true, location_name: "ConnectionType"))
    DirectJDBCSource.add_member(:redshift_tmp_dir, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "RedshiftTmpDir"))
    DirectJDBCSource.struct_class = Types::DirectJDBCSource

    DirectKafkaSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    DirectKafkaSource.add_member(:streaming_options, Shapes::ShapeRef.new(shape: KafkaStreamingSourceOptions, location_name: "StreamingOptions"))
    DirectKafkaSource.add_member(:window_size, Shapes::ShapeRef.new(shape: BoxedPositiveInt, location_name: "WindowSize", metadata: {"box" => true}))
    DirectKafkaSource.add_member(:detect_schema, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "DetectSchema", metadata: {"box" => true}))
    DirectKafkaSource.add_member(:data_preview_options, Shapes::ShapeRef.new(shape: StreamingDataPreviewOptions, location_name: "DataPreviewOptions"))
    DirectKafkaSource.struct_class = Types::DirectKafkaSource

    DirectKinesisSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    DirectKinesisSource.add_member(:window_size, Shapes::ShapeRef.new(shape: BoxedPositiveInt, location_name: "WindowSize", metadata: {"box" => true}))
    DirectKinesisSource.add_member(:detect_schema, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "DetectSchema", metadata: {"box" => true}))
    DirectKinesisSource.add_member(:streaming_options, Shapes::ShapeRef.new(shape: KinesisStreamingSourceOptions, location_name: "StreamingOptions"))
    DirectKinesisSource.add_member(:data_preview_options, Shapes::ShapeRef.new(shape: StreamingDataPreviewOptions, location_name: "DataPreviewOptions"))
    DirectKinesisSource.struct_class = Types::DirectKinesisSource

    DirectSchemaChangePolicy.add_member(:enable_update_catalog, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "EnableUpdateCatalog"))
    DirectSchemaChangePolicy.add_member(:update_behavior, Shapes::ShapeRef.new(shape: UpdateCatalogBehavior, location_name: "UpdateBehavior"))
    DirectSchemaChangePolicy.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Table"))
    DirectSchemaChangePolicy.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Database"))
    DirectSchemaChangePolicy.struct_class = Types::DirectSchemaChangePolicy

    DoubleColumnStatisticsData.add_member(:minimum_value, Shapes::ShapeRef.new(shape: Double, location_name: "MinimumValue"))
    DoubleColumnStatisticsData.add_member(:maximum_value, Shapes::ShapeRef.new(shape: Double, location_name: "MaximumValue"))
    DoubleColumnStatisticsData.add_member(:number_of_nulls, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfNulls"))
    DoubleColumnStatisticsData.add_member(:number_of_distinct_values, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfDistinctValues"))
    DoubleColumnStatisticsData.struct_class = Types::DoubleColumnStatisticsData

    DropDuplicates.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    DropDuplicates.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    DropDuplicates.add_member(:columns, Shapes::ShapeRef.new(shape: LimitedPathList, location_name: "Columns"))
    DropDuplicates.struct_class = Types::DropDuplicates

    DropFields.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    DropFields.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    DropFields.add_member(:paths, Shapes::ShapeRef.new(shape: GlueStudioPathList, required: true, location_name: "Paths"))
    DropFields.struct_class = Types::DropFields

    DropNullFields.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    DropNullFields.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    DropNullFields.add_member(:null_check_box_list, Shapes::ShapeRef.new(shape: NullCheckBoxList, location_name: "NullCheckBoxList"))
    DropNullFields.add_member(:null_text_list, Shapes::ShapeRef.new(shape: NullValueFields, location_name: "NullTextList"))
    DropNullFields.struct_class = Types::DropNullFields

    DynamicTransform.add_member(:name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Name"))
    DynamicTransform.add_member(:transform_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "TransformName"))
    DynamicTransform.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    DynamicTransform.add_member(:parameters, Shapes::ShapeRef.new(shape: TransformConfigParameterList, location_name: "Parameters"))
    DynamicTransform.add_member(:function_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "FunctionName"))
    DynamicTransform.add_member(:path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Path"))
    DynamicTransform.add_member(:version, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Version"))
    DynamicTransform.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    DynamicTransform.struct_class = Types::DynamicTransform

    DynamoDBCatalogSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    DynamoDBCatalogSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    DynamoDBCatalogSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    DynamoDBCatalogSource.struct_class = Types::DynamoDBCatalogSource

    DynamoDBTarget.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    DynamoDBTarget.add_member(:scan_all, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "scanAll"))
    DynamoDBTarget.add_member(:scan_rate, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "scanRate"))
    DynamoDBTarget.struct_class = Types::DynamoDBTarget

    DynamoDBTargetList.member = Shapes::ShapeRef.new(shape: DynamoDBTarget)

    Edge.add_member(:source_id, Shapes::ShapeRef.new(shape: NameString, location_name: "SourceId"))
    Edge.add_member(:destination_id, Shapes::ShapeRef.new(shape: NameString, location_name: "DestinationId"))
    Edge.struct_class = Types::Edge

    EdgeList.member = Shapes::ShapeRef.new(shape: Edge)

    EnableAdditionalMetadata.member = Shapes::ShapeRef.new(shape: JdbcMetadataEntry)

    EnclosedInStringProperties.member = Shapes::ShapeRef.new(shape: EnclosedInStringProperty)

    EnclosedInStringPropertiesMinOne.member = Shapes::ShapeRef.new(shape: EnclosedInStringProperty)

    EncryptionAtRest.add_member(:catalog_encryption_mode, Shapes::ShapeRef.new(shape: CatalogEncryptionMode, required: true, location_name: "CatalogEncryptionMode"))
    EncryptionAtRest.add_member(:sse_aws_kms_key_id, Shapes::ShapeRef.new(shape: NameString, location_name: "SseAwsKmsKeyId"))
    EncryptionAtRest.add_member(:catalog_encryption_service_role, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "CatalogEncryptionServiceRole"))
    EncryptionAtRest.struct_class = Types::EncryptionAtRest

    EncryptionConfiguration.add_member(:s3_encryption, Shapes::ShapeRef.new(shape: S3EncryptionList, location_name: "S3Encryption"))
    EncryptionConfiguration.add_member(:cloud_watch_encryption, Shapes::ShapeRef.new(shape: CloudWatchEncryption, location_name: "CloudWatchEncryption"))
    EncryptionConfiguration.add_member(:job_bookmarks_encryption, Shapes::ShapeRef.new(shape: JobBookmarksEncryption, location_name: "JobBookmarksEncryption"))
    EncryptionConfiguration.add_member(:data_quality_encryption, Shapes::ShapeRef.new(shape: DataQualityEncryption, location_name: "DataQualityEncryption"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    Entity.add_member(:entity_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "EntityName"))
    Entity.add_member(:label, Shapes::ShapeRef.new(shape: EntityLabel, location_name: "Label"))
    Entity.add_member(:is_parent_entity, Shapes::ShapeRef.new(shape: IsParentEntity, location_name: "IsParentEntity"))
    Entity.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    Entity.add_member(:category, Shapes::ShapeRef.new(shape: Category, location_name: "Category"))
    Entity.add_member(:custom_properties, Shapes::ShapeRef.new(shape: CustomProperties, location_name: "CustomProperties"))
    Entity.struct_class = Types::Entity

    EntityList.member = Shapes::ShapeRef.new(shape: Entity)

    EntityNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    EntityNotFoundException.add_member(:from_federation_source, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "FromFederationSource"))
    EntityNotFoundException.struct_class = Types::EntityNotFoundException

    ErrorByName.key = Shapes::ShapeRef.new(shape: NameString)
    ErrorByName.value = Shapes::ShapeRef.new(shape: ErrorDetail)

    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: NameString, location_name: "ErrorCode"))
    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ErrorDetails.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCodeString, location_name: "ErrorCode"))
    ErrorDetails.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessageString, location_name: "ErrorMessage"))
    ErrorDetails.struct_class = Types::ErrorDetails

    EvaluateDataQuality.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    EvaluateDataQuality.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    EvaluateDataQuality.add_member(:ruleset, Shapes::ShapeRef.new(shape: DQDLString, required: true, location_name: "Ruleset"))
    EvaluateDataQuality.add_member(:output, Shapes::ShapeRef.new(shape: DQTransformOutput, location_name: "Output"))
    EvaluateDataQuality.add_member(:publishing_options, Shapes::ShapeRef.new(shape: DQResultsPublishingOptions, location_name: "PublishingOptions"))
    EvaluateDataQuality.add_member(:stop_job_on_failure_options, Shapes::ShapeRef.new(shape: DQStopJobOnFailureOptions, location_name: "StopJobOnFailureOptions"))
    EvaluateDataQuality.struct_class = Types::EvaluateDataQuality

    EvaluateDataQualityMultiFrame.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    EvaluateDataQualityMultiFrame.add_member(:inputs, Shapes::ShapeRef.new(shape: ManyInputs, required: true, location_name: "Inputs"))
    EvaluateDataQualityMultiFrame.add_member(:additional_data_sources, Shapes::ShapeRef.new(shape: DQDLAliases, location_name: "AdditionalDataSources"))
    EvaluateDataQualityMultiFrame.add_member(:ruleset, Shapes::ShapeRef.new(shape: DQDLString, required: true, location_name: "Ruleset"))
    EvaluateDataQualityMultiFrame.add_member(:publishing_options, Shapes::ShapeRef.new(shape: DQResultsPublishingOptions, location_name: "PublishingOptions"))
    EvaluateDataQualityMultiFrame.add_member(:additional_options, Shapes::ShapeRef.new(shape: DQAdditionalOptions, location_name: "AdditionalOptions"))
    EvaluateDataQualityMultiFrame.add_member(:stop_job_on_failure_options, Shapes::ShapeRef.new(shape: DQStopJobOnFailureOptions, location_name: "StopJobOnFailureOptions"))
    EvaluateDataQualityMultiFrame.struct_class = Types::EvaluateDataQualityMultiFrame

    EvaluatedMetricsMap.key = Shapes::ShapeRef.new(shape: NameString)
    EvaluatedMetricsMap.value = Shapes::ShapeRef.new(shape: NullableDouble)

    EvaluationMetrics.add_member(:transform_type, Shapes::ShapeRef.new(shape: TransformType, required: true, location_name: "TransformType"))
    EvaluationMetrics.add_member(:find_matches_metrics, Shapes::ShapeRef.new(shape: FindMatchesMetrics, location_name: "FindMatchesMetrics"))
    EvaluationMetrics.struct_class = Types::EvaluationMetrics

    EventBatchingCondition.add_member(:batch_size, Shapes::ShapeRef.new(shape: BatchSize, required: true, location_name: "BatchSize"))
    EventBatchingCondition.add_member(:batch_window, Shapes::ShapeRef.new(shape: BatchWindow, location_name: "BatchWindow"))
    EventBatchingCondition.struct_class = Types::EventBatchingCondition

    ExecutionAttempt.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "Status"))
    ExecutionAttempt.add_member(:column_statistics_task_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ColumnStatisticsTaskRunId"))
    ExecutionAttempt.add_member(:execution_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExecutionTimestamp"))
    ExecutionAttempt.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    ExecutionAttempt.struct_class = Types::ExecutionAttempt

    ExecutionProperty.add_member(:max_concurrent_runs, Shapes::ShapeRef.new(shape: MaxConcurrentRuns, location_name: "MaxConcurrentRuns"))
    ExecutionProperty.struct_class = Types::ExecutionProperty

    ExportLabelsTaskRunProperties.add_member(:output_s3_path, Shapes::ShapeRef.new(shape: UriString, location_name: "OutputS3Path"))
    ExportLabelsTaskRunProperties.struct_class = Types::ExportLabelsTaskRunProperties

    FederatedCatalog.add_member(:identifier, Shapes::ShapeRef.new(shape: FederationIdentifier, location_name: "Identifier"))
    FederatedCatalog.add_member(:connection_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionName"))
    FederatedCatalog.add_member(:connection_type, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionType"))
    FederatedCatalog.struct_class = Types::FederatedCatalog

    FederatedDatabase.add_member(:identifier, Shapes::ShapeRef.new(shape: FederationIdentifier, location_name: "Identifier"))
    FederatedDatabase.add_member(:connection_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionName"))
    FederatedDatabase.add_member(:connection_type, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionType"))
    FederatedDatabase.struct_class = Types::FederatedDatabase

    FederatedResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    FederatedResourceAlreadyExistsException.add_member(:associated_glue_resource, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "AssociatedGlueResource"))
    FederatedResourceAlreadyExistsException.struct_class = Types::FederatedResourceAlreadyExistsException

    FederatedTable.add_member(:identifier, Shapes::ShapeRef.new(shape: FederationIdentifier, location_name: "Identifier"))
    FederatedTable.add_member(:database_identifier, Shapes::ShapeRef.new(shape: FederationIdentifier, location_name: "DatabaseIdentifier"))
    FederatedTable.add_member(:connection_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionName"))
    FederatedTable.add_member(:connection_type, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionType"))
    FederatedTable.struct_class = Types::FederatedTable

    FederationSourceException.add_member(:federation_source_error_code, Shapes::ShapeRef.new(shape: FederationSourceErrorCode, location_name: "FederationSourceErrorCode"))
    FederationSourceException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    FederationSourceException.struct_class = Types::FederationSourceException

    FederationSourceRetryableException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    FederationSourceRetryableException.struct_class = Types::FederationSourceRetryableException

    Field.add_member(:field_name, Shapes::ShapeRef.new(shape: EntityFieldName, location_name: "FieldName"))
    Field.add_member(:label, Shapes::ShapeRef.new(shape: FieldLabel, location_name: "Label"))
    Field.add_member(:description, Shapes::ShapeRef.new(shape: FieldDescription, location_name: "Description"))
    Field.add_member(:field_type, Shapes::ShapeRef.new(shape: FieldDataType, location_name: "FieldType"))
    Field.add_member(:is_primary_key, Shapes::ShapeRef.new(shape: Bool, location_name: "IsPrimaryKey"))
    Field.add_member(:is_nullable, Shapes::ShapeRef.new(shape: Bool, location_name: "IsNullable"))
    Field.add_member(:is_retrievable, Shapes::ShapeRef.new(shape: Bool, location_name: "IsRetrievable"))
    Field.add_member(:is_filterable, Shapes::ShapeRef.new(shape: Bool, location_name: "IsFilterable"))
    Field.add_member(:is_partitionable, Shapes::ShapeRef.new(shape: Bool, location_name: "IsPartitionable"))
    Field.add_member(:is_createable, Shapes::ShapeRef.new(shape: Bool, location_name: "IsCreateable"))
    Field.add_member(:is_updateable, Shapes::ShapeRef.new(shape: Bool, location_name: "IsUpdateable"))
    Field.add_member(:is_upsertable, Shapes::ShapeRef.new(shape: Bool, location_name: "IsUpsertable"))
    Field.add_member(:is_default_on_create, Shapes::ShapeRef.new(shape: Bool, location_name: "IsDefaultOnCreate"))
    Field.add_member(:supported_values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "SupportedValues"))
    Field.add_member(:supported_filter_operators, Shapes::ShapeRef.new(shape: FieldFilterOperatorsList, location_name: "SupportedFilterOperators"))
    Field.add_member(:parent_field, Shapes::ShapeRef.new(shape: String, location_name: "ParentField"))
    Field.add_member(:native_data_type, Shapes::ShapeRef.new(shape: String, location_name: "NativeDataType"))
    Field.add_member(:custom_properties, Shapes::ShapeRef.new(shape: CustomProperties, location_name: "CustomProperties"))
    Field.struct_class = Types::Field

    FieldFilterOperatorsList.member = Shapes::ShapeRef.new(shape: FieldFilterOperator)

    FieldsList.member = Shapes::ShapeRef.new(shape: Field)

    FillMissingValues.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    FillMissingValues.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    FillMissingValues.add_member(:imputed_path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ImputedPath"))
    FillMissingValues.add_member(:filled_path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "FilledPath"))
    FillMissingValues.struct_class = Types::FillMissingValues

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    Filter.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    Filter.add_member(:logical_operator, Shapes::ShapeRef.new(shape: FilterLogicalOperator, required: true, location_name: "LogicalOperator"))
    Filter.add_member(:filters, Shapes::ShapeRef.new(shape: FilterExpressions, required: true, location_name: "Filters"))
    Filter.struct_class = Types::Filter

    FilterExpression.add_member(:operation, Shapes::ShapeRef.new(shape: FilterOperation, required: true, location_name: "Operation"))
    FilterExpression.add_member(:negated, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "Negated"))
    FilterExpression.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "Values"))
    FilterExpression.struct_class = Types::FilterExpression

    FilterExpressions.member = Shapes::ShapeRef.new(shape: FilterExpression)

    FilterValue.add_member(:type, Shapes::ShapeRef.new(shape: FilterValueType, required: true, location_name: "Type"))
    FilterValue.add_member(:value, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, required: true, location_name: "Value"))
    FilterValue.struct_class = Types::FilterValue

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    FindMatchesMetrics.add_member(:area_under_pr_curve, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "AreaUnderPRCurve"))
    FindMatchesMetrics.add_member(:precision, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "Precision"))
    FindMatchesMetrics.add_member(:recall, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "Recall"))
    FindMatchesMetrics.add_member(:f1, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "F1"))
    FindMatchesMetrics.add_member(:confusion_matrix, Shapes::ShapeRef.new(shape: ConfusionMatrix, location_name: "ConfusionMatrix"))
    FindMatchesMetrics.add_member(:column_importances, Shapes::ShapeRef.new(shape: ColumnImportanceList, location_name: "ColumnImportances"))
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

    GetBlueprintRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetBlueprintRequest.add_member(:include_blueprint, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeBlueprint"))
    GetBlueprintRequest.add_member(:include_parameter_spec, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeParameterSpec"))
    GetBlueprintRequest.struct_class = Types::GetBlueprintRequest

    GetBlueprintResponse.add_member(:blueprint, Shapes::ShapeRef.new(shape: Blueprint, location_name: "Blueprint"))
    GetBlueprintResponse.struct_class = Types::GetBlueprintResponse

    GetBlueprintRunRequest.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: OrchestrationNameString, required: true, location_name: "BlueprintName"))
    GetBlueprintRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    GetBlueprintRunRequest.struct_class = Types::GetBlueprintRunRequest

    GetBlueprintRunResponse.add_member(:blueprint_run, Shapes::ShapeRef.new(shape: BlueprintRun, location_name: "BlueprintRun"))
    GetBlueprintRunResponse.struct_class = Types::GetBlueprintRunResponse

    GetBlueprintRunsRequest.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "BlueprintName"))
    GetBlueprintRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetBlueprintRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetBlueprintRunsRequest.struct_class = Types::GetBlueprintRunsRequest

    GetBlueprintRunsResponse.add_member(:blueprint_runs, Shapes::ShapeRef.new(shape: BlueprintRuns, location_name: "BlueprintRuns"))
    GetBlueprintRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetBlueprintRunsResponse.struct_class = Types::GetBlueprintRunsResponse

    GetCatalogImportStatusRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetCatalogImportStatusRequest.struct_class = Types::GetCatalogImportStatusRequest

    GetCatalogImportStatusResponse.add_member(:import_status, Shapes::ShapeRef.new(shape: CatalogImportStatus, location_name: "ImportStatus"))
    GetCatalogImportStatusResponse.struct_class = Types::GetCatalogImportStatusResponse

    GetCatalogRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "CatalogId"))
    GetCatalogRequest.struct_class = Types::GetCatalogRequest

    GetCatalogResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, location_name: "Catalog"))
    GetCatalogResponse.struct_class = Types::GetCatalogResponse

    GetCatalogsRequest.add_member(:parent_catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "ParentCatalogId"))
    GetCatalogsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetCatalogsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetCatalogsRequest.add_member(:recursive, Shapes::ShapeRef.new(shape: Boolean, location_name: "Recursive"))
    GetCatalogsRequest.add_member(:include_root, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IncludeRoot"))
    GetCatalogsRequest.struct_class = Types::GetCatalogsRequest

    GetCatalogsResponse.add_member(:catalog_list, Shapes::ShapeRef.new(shape: CatalogList, required: true, location_name: "CatalogList"))
    GetCatalogsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetCatalogsResponse.struct_class = Types::GetCatalogsResponse

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

    GetColumnNamesList.member = Shapes::ShapeRef.new(shape: NameString)

    GetColumnStatisticsForPartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetColumnStatisticsForPartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetColumnStatisticsForPartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetColumnStatisticsForPartitionRequest.add_member(:partition_values, Shapes::ShapeRef.new(shape: ValueStringList, required: true, location_name: "PartitionValues"))
    GetColumnStatisticsForPartitionRequest.add_member(:column_names, Shapes::ShapeRef.new(shape: GetColumnNamesList, required: true, location_name: "ColumnNames"))
    GetColumnStatisticsForPartitionRequest.struct_class = Types::GetColumnStatisticsForPartitionRequest

    GetColumnStatisticsForPartitionResponse.add_member(:column_statistics_list, Shapes::ShapeRef.new(shape: ColumnStatisticsList, location_name: "ColumnStatisticsList"))
    GetColumnStatisticsForPartitionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: ColumnErrors, location_name: "Errors"))
    GetColumnStatisticsForPartitionResponse.struct_class = Types::GetColumnStatisticsForPartitionResponse

    GetColumnStatisticsForTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetColumnStatisticsForTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetColumnStatisticsForTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetColumnStatisticsForTableRequest.add_member(:column_names, Shapes::ShapeRef.new(shape: GetColumnNamesList, required: true, location_name: "ColumnNames"))
    GetColumnStatisticsForTableRequest.struct_class = Types::GetColumnStatisticsForTableRequest

    GetColumnStatisticsForTableResponse.add_member(:column_statistics_list, Shapes::ShapeRef.new(shape: ColumnStatisticsList, location_name: "ColumnStatisticsList"))
    GetColumnStatisticsForTableResponse.add_member(:errors, Shapes::ShapeRef.new(shape: ColumnErrors, location_name: "Errors"))
    GetColumnStatisticsForTableResponse.struct_class = Types::GetColumnStatisticsForTableResponse

    GetColumnStatisticsTaskRunRequest.add_member(:column_statistics_task_run_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "ColumnStatisticsTaskRunId"))
    GetColumnStatisticsTaskRunRequest.struct_class = Types::GetColumnStatisticsTaskRunRequest

    GetColumnStatisticsTaskRunResponse.add_member(:column_statistics_task_run, Shapes::ShapeRef.new(shape: ColumnStatisticsTaskRun, location_name: "ColumnStatisticsTaskRun"))
    GetColumnStatisticsTaskRunResponse.struct_class = Types::GetColumnStatisticsTaskRunResponse

    GetColumnStatisticsTaskRunsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location_name: "DatabaseName"))
    GetColumnStatisticsTaskRunsRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetColumnStatisticsTaskRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetColumnStatisticsTaskRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetColumnStatisticsTaskRunsRequest.struct_class = Types::GetColumnStatisticsTaskRunsRequest

    GetColumnStatisticsTaskRunsResponse.add_member(:column_statistics_task_runs, Shapes::ShapeRef.new(shape: ColumnStatisticsTaskRunsList, location_name: "ColumnStatisticsTaskRuns"))
    GetColumnStatisticsTaskRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetColumnStatisticsTaskRunsResponse.struct_class = Types::GetColumnStatisticsTaskRunsResponse

    GetColumnStatisticsTaskSettingsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetColumnStatisticsTaskSettingsRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetColumnStatisticsTaskSettingsRequest.struct_class = Types::GetColumnStatisticsTaskSettingsRequest

    GetColumnStatisticsTaskSettingsResponse.add_member(:column_statistics_task_settings, Shapes::ShapeRef.new(shape: ColumnStatisticsTaskSettings, location_name: "ColumnStatisticsTaskSettings"))
    GetColumnStatisticsTaskSettingsResponse.struct_class = Types::GetColumnStatisticsTaskSettingsResponse

    GetConnectionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetConnectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetConnectionRequest.add_member(:hide_password, Shapes::ShapeRef.new(shape: Boolean, location_name: "HidePassword"))
    GetConnectionRequest.add_member(:apply_override_for_compute_environment, Shapes::ShapeRef.new(shape: ComputeEnvironment, location_name: "ApplyOverrideForComputeEnvironment"))
    GetConnectionRequest.struct_class = Types::GetConnectionRequest

    GetConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    GetConnectionResponse.struct_class = Types::GetConnectionResponse

    GetConnectionsFilter.add_member(:match_criteria, Shapes::ShapeRef.new(shape: MatchCriteria, location_name: "MatchCriteria"))
    GetConnectionsFilter.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "ConnectionType"))
    GetConnectionsFilter.add_member(:connection_schema_version, Shapes::ShapeRef.new(shape: ConnectionSchemaVersion, location_name: "ConnectionSchemaVersion"))
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

    GetCustomEntityTypeRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetCustomEntityTypeRequest.struct_class = Types::GetCustomEntityTypeRequest

    GetCustomEntityTypeResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    GetCustomEntityTypeResponse.add_member(:regex_string, Shapes::ShapeRef.new(shape: NameString, location_name: "RegexString"))
    GetCustomEntityTypeResponse.add_member(:context_words, Shapes::ShapeRef.new(shape: ContextWords, location_name: "ContextWords"))
    GetCustomEntityTypeResponse.struct_class = Types::GetCustomEntityTypeResponse

    GetDataCatalogEncryptionSettingsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetDataCatalogEncryptionSettingsRequest.struct_class = Types::GetDataCatalogEncryptionSettingsRequest

    GetDataCatalogEncryptionSettingsResponse.add_member(:data_catalog_encryption_settings, Shapes::ShapeRef.new(shape: DataCatalogEncryptionSettings, location_name: "DataCatalogEncryptionSettings"))
    GetDataCatalogEncryptionSettingsResponse.struct_class = Types::GetDataCatalogEncryptionSettingsResponse

    GetDataQualityModelRequest.add_member(:statistic_id, Shapes::ShapeRef.new(shape: HashString, location_name: "StatisticId"))
    GetDataQualityModelRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "ProfileId"))
    GetDataQualityModelRequest.struct_class = Types::GetDataQualityModelRequest

    GetDataQualityModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataQualityModelStatus, location_name: "Status"))
    GetDataQualityModelResponse.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedOn"))
    GetDataQualityModelResponse.add_member(:completed_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedOn"))
    GetDataQualityModelResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: HashString, location_name: "FailureReason"))
    GetDataQualityModelResponse.struct_class = Types::GetDataQualityModelResponse

    GetDataQualityModelResultRequest.add_member(:statistic_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "StatisticId"))
    GetDataQualityModelResultRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "ProfileId"))
    GetDataQualityModelResultRequest.struct_class = Types::GetDataQualityModelResultRequest

    GetDataQualityModelResultResponse.add_member(:completed_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedOn"))
    GetDataQualityModelResultResponse.add_member(:model, Shapes::ShapeRef.new(shape: StatisticModelResults, location_name: "Model"))
    GetDataQualityModelResultResponse.struct_class = Types::GetDataQualityModelResultResponse

    GetDataQualityResultRequest.add_member(:result_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "ResultId"))
    GetDataQualityResultRequest.struct_class = Types::GetDataQualityResultRequest

    GetDataQualityResultResponse.add_member(:result_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ResultId"))
    GetDataQualityResultResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ProfileId"))
    GetDataQualityResultResponse.add_member(:score, Shapes::ShapeRef.new(shape: GenericBoundedDouble, location_name: "Score"))
    GetDataQualityResultResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "DataSource"))
    GetDataQualityResultResponse.add_member(:ruleset_name, Shapes::ShapeRef.new(shape: NameString, location_name: "RulesetName"))
    GetDataQualityResultResponse.add_member(:evaluation_context, Shapes::ShapeRef.new(shape: GenericString, location_name: "EvaluationContext"))
    GetDataQualityResultResponse.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedOn"))
    GetDataQualityResultResponse.add_member(:completed_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedOn"))
    GetDataQualityResultResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    GetDataQualityResultResponse.add_member(:job_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "JobRunId"))
    GetDataQualityResultResponse.add_member(:ruleset_evaluation_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "RulesetEvaluationRunId"))
    GetDataQualityResultResponse.add_member(:rule_results, Shapes::ShapeRef.new(shape: DataQualityRuleResults, location_name: "RuleResults"))
    GetDataQualityResultResponse.add_member(:analyzer_results, Shapes::ShapeRef.new(shape: DataQualityAnalyzerResults, location_name: "AnalyzerResults"))
    GetDataQualityResultResponse.add_member(:observations, Shapes::ShapeRef.new(shape: DataQualityObservations, location_name: "Observations"))
    GetDataQualityResultResponse.add_member(:aggregated_metrics, Shapes::ShapeRef.new(shape: DataQualityAggregatedMetrics, location_name: "AggregatedMetrics"))
    GetDataQualityResultResponse.struct_class = Types::GetDataQualityResultResponse

    GetDataQualityRuleRecommendationRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "RunId"))
    GetDataQualityRuleRecommendationRunRequest.struct_class = Types::GetDataQualityRuleRecommendationRunRequest

    GetDataQualityRuleRecommendationRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "RunId"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "DataSource"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, location_name: "Role"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatusType, location_name: "Status"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:error_string, Shapes::ShapeRef.new(shape: GenericString, location_name: "ErrorString"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedOn"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedOn"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:completed_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedOn"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:execution_time, Shapes::ShapeRef.new(shape: ExecutionTime, location_name: "ExecutionTime"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:recommended_ruleset, Shapes::ShapeRef.new(shape: DataQualityRulesetString, location_name: "RecommendedRuleset"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:created_ruleset_name, Shapes::ShapeRef.new(shape: NameString, location_name: "CreatedRulesetName"))
    GetDataQualityRuleRecommendationRunResponse.add_member(:data_quality_security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "DataQualitySecurityConfiguration"))
    GetDataQualityRuleRecommendationRunResponse.struct_class = Types::GetDataQualityRuleRecommendationRunResponse

    GetDataQualityRulesetEvaluationRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "RunId"))
    GetDataQualityRulesetEvaluationRunRequest.struct_class = Types::GetDataQualityRulesetEvaluationRunRequest

    GetDataQualityRulesetEvaluationRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "RunId"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "DataSource"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, location_name: "Role"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:additional_run_options, Shapes::ShapeRef.new(shape: DataQualityEvaluationRunAdditionalRunOptions, location_name: "AdditionalRunOptions"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatusType, location_name: "Status"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:error_string, Shapes::ShapeRef.new(shape: GenericString, location_name: "ErrorString"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedOn"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedOn"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:completed_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedOn"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:execution_time, Shapes::ShapeRef.new(shape: ExecutionTime, location_name: "ExecutionTime"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:ruleset_names, Shapes::ShapeRef.new(shape: RulesetNames, location_name: "RulesetNames"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:result_ids, Shapes::ShapeRef.new(shape: DataQualityResultIdList, location_name: "ResultIds"))
    GetDataQualityRulesetEvaluationRunResponse.add_member(:additional_data_sources, Shapes::ShapeRef.new(shape: DataSourceMap, location_name: "AdditionalDataSources"))
    GetDataQualityRulesetEvaluationRunResponse.struct_class = Types::GetDataQualityRulesetEvaluationRunResponse

    GetDataQualityRulesetRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetDataQualityRulesetRequest.struct_class = Types::GetDataQualityRulesetRequest

    GetDataQualityRulesetResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    GetDataQualityRulesetResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    GetDataQualityRulesetResponse.add_member(:ruleset, Shapes::ShapeRef.new(shape: DataQualityRulesetString, location_name: "Ruleset"))
    GetDataQualityRulesetResponse.add_member(:target_table, Shapes::ShapeRef.new(shape: DataQualityTargetTable, location_name: "TargetTable"))
    GetDataQualityRulesetResponse.add_member(:created_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedOn"))
    GetDataQualityRulesetResponse.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedOn"))
    GetDataQualityRulesetResponse.add_member(:recommendation_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "RecommendationRunId"))
    GetDataQualityRulesetResponse.add_member(:data_quality_security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "DataQualitySecurityConfiguration"))
    GetDataQualityRulesetResponse.struct_class = Types::GetDataQualityRulesetResponse

    GetDatabaseRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetDatabaseRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetDatabaseRequest.struct_class = Types::GetDatabaseRequest

    GetDatabaseResponse.add_member(:database, Shapes::ShapeRef.new(shape: Database, location_name: "Database"))
    GetDatabaseResponse.struct_class = Types::GetDatabaseResponse

    GetDatabasesRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetDatabasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetDatabasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CatalogGetterPageSize, location_name: "MaxResults"))
    GetDatabasesRequest.add_member(:resource_share_type, Shapes::ShapeRef.new(shape: ResourceShareType, location_name: "ResourceShareType"))
    GetDatabasesRequest.add_member(:attributes_to_get, Shapes::ShapeRef.new(shape: DatabaseAttributesList, location_name: "AttributesToGet"))
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

    GetEntityRecordsRequest.add_member(:connection_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionName"))
    GetEntityRecordsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetEntityRecordsRequest.add_member(:entity_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "EntityName"))
    GetEntityRecordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEntityRecordsRequest.add_member(:data_store_api_version, Shapes::ShapeRef.new(shape: ApiVersion, location_name: "DataStoreApiVersion"))
    GetEntityRecordsRequest.add_member(:connection_options, Shapes::ShapeRef.new(shape: ConnectionOptions, location_name: "ConnectionOptions"))
    GetEntityRecordsRequest.add_member(:filter_predicate, Shapes::ShapeRef.new(shape: FilterPredicate, location_name: "FilterPredicate"))
    GetEntityRecordsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, required: true, location_name: "Limit"))
    GetEntityRecordsRequest.add_member(:order_by, Shapes::ShapeRef.new(shape: String, location_name: "OrderBy"))
    GetEntityRecordsRequest.add_member(:selected_fields, Shapes::ShapeRef.new(shape: SelectedFields, location_name: "SelectedFields"))
    GetEntityRecordsRequest.struct_class = Types::GetEntityRecordsRequest

    GetEntityRecordsResponse.add_member(:records, Shapes::ShapeRef.new(shape: Records, location_name: "Records"))
    GetEntityRecordsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEntityRecordsResponse.struct_class = Types::GetEntityRecordsResponse

    GetIntegrationResourcePropertyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "ResourceArn"))
    GetIntegrationResourcePropertyRequest.struct_class = Types::GetIntegrationResourcePropertyRequest

    GetIntegrationResourcePropertyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String128, location_name: "ResourceArn"))
    GetIntegrationResourcePropertyResponse.add_member(:source_processing_properties, Shapes::ShapeRef.new(shape: SourceProcessingProperties, location_name: "SourceProcessingProperties"))
    GetIntegrationResourcePropertyResponse.add_member(:target_processing_properties, Shapes::ShapeRef.new(shape: TargetProcessingProperties, location_name: "TargetProcessingProperties"))
    GetIntegrationResourcePropertyResponse.struct_class = Types::GetIntegrationResourcePropertyResponse

    GetIntegrationTablePropertiesRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "ResourceArn"))
    GetIntegrationTablePropertiesRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "TableName"))
    GetIntegrationTablePropertiesRequest.struct_class = Types::GetIntegrationTablePropertiesRequest

    GetIntegrationTablePropertiesResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String128, location_name: "ResourceArn"))
    GetIntegrationTablePropertiesResponse.add_member(:table_name, Shapes::ShapeRef.new(shape: String128, location_name: "TableName"))
    GetIntegrationTablePropertiesResponse.add_member(:source_table_config, Shapes::ShapeRef.new(shape: SourceTableConfig, location_name: "SourceTableConfig"))
    GetIntegrationTablePropertiesResponse.add_member(:target_table_config, Shapes::ShapeRef.new(shape: TargetTableConfig, location_name: "TargetTableConfig"))
    GetIntegrationTablePropertiesResponse.struct_class = Types::GetIntegrationTablePropertiesResponse

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
    GetJobRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OrchestrationPageSize200, location_name: "MaxResults"))
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
    GetMLTransformResponse.add_member(:transform_encryption, Shapes::ShapeRef.new(shape: TransformEncryption, location_name: "TransformEncryption"))
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

    GetPartitionIndexesRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetPartitionIndexesRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetPartitionIndexesRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetPartitionIndexesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetPartitionIndexesRequest.struct_class = Types::GetPartitionIndexesRequest

    GetPartitionIndexesResponse.add_member(:partition_index_descriptor_list, Shapes::ShapeRef.new(shape: PartitionIndexDescriptorList, location_name: "PartitionIndexDescriptorList"))
    GetPartitionIndexesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetPartitionIndexesResponse.struct_class = Types::GetPartitionIndexesResponse

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
    GetPartitionsRequest.add_member(:exclude_column_schema, Shapes::ShapeRef.new(shape: BooleanNullable, location_name: "ExcludeColumnSchema"))
    GetPartitionsRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
    GetPartitionsRequest.add_member(:query_as_of_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "QueryAsOfTime"))
    GetPartitionsRequest.struct_class = Types::GetPartitionsRequest

    GetPartitionsResponse.add_member(:partitions, Shapes::ShapeRef.new(shape: PartitionList, location_name: "Partitions"))
    GetPartitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetPartitionsResponse.struct_class = Types::GetPartitionsResponse

    GetPlanRequest.add_member(:mapping, Shapes::ShapeRef.new(shape: MappingList, required: true, location_name: "Mapping"))
    GetPlanRequest.add_member(:source, Shapes::ShapeRef.new(shape: CatalogEntry, required: true, location_name: "Source"))
    GetPlanRequest.add_member(:sinks, Shapes::ShapeRef.new(shape: CatalogEntries, location_name: "Sinks"))
    GetPlanRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    GetPlanRequest.add_member(:language, Shapes::ShapeRef.new(shape: Language, location_name: "Language"))
    GetPlanRequest.add_member(:additional_plan_options_map, Shapes::ShapeRef.new(shape: AdditionalPlanOptionsMap, location_name: "AdditionalPlanOptionsMap"))
    GetPlanRequest.struct_class = Types::GetPlanRequest

    GetPlanResponse.add_member(:python_script, Shapes::ShapeRef.new(shape: PythonScript, location_name: "PythonScript"))
    GetPlanResponse.add_member(:scala_code, Shapes::ShapeRef.new(shape: ScalaCode, location_name: "ScalaCode"))
    GetPlanResponse.struct_class = Types::GetPlanResponse

    GetRegistryInput.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "RegistryId"))
    GetRegistryInput.struct_class = Types::GetRegistryInput

    GetRegistryResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    GetRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "RegistryArn"))
    GetRegistryResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    GetRegistryResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, location_name: "Status"))
    GetRegistryResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "CreatedTime"))
    GetRegistryResponse.add_member(:updated_time, Shapes::ShapeRef.new(shape: UpdatedTimestamp, location_name: "UpdatedTime"))
    GetRegistryResponse.struct_class = Types::GetRegistryResponse

    GetResourcePoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetResourcePoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetResourcePoliciesRequest.struct_class = Types::GetResourcePoliciesRequest

    GetResourcePoliciesResponse.add_member(:get_resource_policies_response_list, Shapes::ShapeRef.new(shape: GetResourcePoliciesResponseList, location_name: "GetResourcePoliciesResponseList"))
    GetResourcePoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetResourcePoliciesResponse.struct_class = Types::GetResourcePoliciesResponse

    GetResourcePoliciesResponseList.member = Shapes::ShapeRef.new(shape: GluePolicy)

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "ResourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:policy_in_json, Shapes::ShapeRef.new(shape: PolicyJsonString, location_name: "PolicyInJson"))
    GetResourcePolicyResponse.add_member(:policy_hash, Shapes::ShapeRef.new(shape: HashString, location_name: "PolicyHash"))
    GetResourcePolicyResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    GetResourcePolicyResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    GetSchemaByDefinitionInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, required: true, location_name: "SchemaId"))
    GetSchemaByDefinitionInput.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaDefinitionString, required: true, location_name: "SchemaDefinition"))
    GetSchemaByDefinitionInput.struct_class = Types::GetSchemaByDefinitionInput

    GetSchemaByDefinitionResponse.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    GetSchemaByDefinitionResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "SchemaArn"))
    GetSchemaByDefinitionResponse.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, location_name: "DataFormat"))
    GetSchemaByDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: SchemaVersionStatus, location_name: "Status"))
    GetSchemaByDefinitionResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "CreatedTime"))
    GetSchemaByDefinitionResponse.struct_class = Types::GetSchemaByDefinitionResponse

    GetSchemaInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, required: true, location_name: "SchemaId"))
    GetSchemaInput.struct_class = Types::GetSchemaInput

    GetSchemaResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    GetSchemaResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "RegistryArn"))
    GetSchemaResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "SchemaName"))
    GetSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "SchemaArn"))
    GetSchemaResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    GetSchemaResponse.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, location_name: "DataFormat"))
    GetSchemaResponse.add_member(:compatibility, Shapes::ShapeRef.new(shape: Compatibility, location_name: "Compatibility"))
    GetSchemaResponse.add_member(:schema_checkpoint, Shapes::ShapeRef.new(shape: SchemaCheckpointNumber, location_name: "SchemaCheckpoint"))
    GetSchemaResponse.add_member(:latest_schema_version, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "LatestSchemaVersion"))
    GetSchemaResponse.add_member(:next_schema_version, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "NextSchemaVersion"))
    GetSchemaResponse.add_member(:schema_status, Shapes::ShapeRef.new(shape: SchemaStatus, location_name: "SchemaStatus"))
    GetSchemaResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "CreatedTime"))
    GetSchemaResponse.add_member(:updated_time, Shapes::ShapeRef.new(shape: UpdatedTimestamp, location_name: "UpdatedTime"))
    GetSchemaResponse.struct_class = Types::GetSchemaResponse

    GetSchemaVersionInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, location_name: "SchemaId"))
    GetSchemaVersionInput.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    GetSchemaVersionInput.add_member(:schema_version_number, Shapes::ShapeRef.new(shape: SchemaVersionNumber, location_name: "SchemaVersionNumber"))
    GetSchemaVersionInput.struct_class = Types::GetSchemaVersionInput

    GetSchemaVersionResponse.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    GetSchemaVersionResponse.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaDefinitionString, location_name: "SchemaDefinition"))
    GetSchemaVersionResponse.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, location_name: "DataFormat"))
    GetSchemaVersionResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "SchemaArn"))
    GetSchemaVersionResponse.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "VersionNumber"))
    GetSchemaVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: SchemaVersionStatus, location_name: "Status"))
    GetSchemaVersionResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "CreatedTime"))
    GetSchemaVersionResponse.struct_class = Types::GetSchemaVersionResponse

    GetSchemaVersionsDiffInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, required: true, location_name: "SchemaId"))
    GetSchemaVersionsDiffInput.add_member(:first_schema_version_number, Shapes::ShapeRef.new(shape: SchemaVersionNumber, required: true, location_name: "FirstSchemaVersionNumber"))
    GetSchemaVersionsDiffInput.add_member(:second_schema_version_number, Shapes::ShapeRef.new(shape: SchemaVersionNumber, required: true, location_name: "SecondSchemaVersionNumber"))
    GetSchemaVersionsDiffInput.add_member(:schema_diff_type, Shapes::ShapeRef.new(shape: SchemaDiffType, required: true, location_name: "SchemaDiffType"))
    GetSchemaVersionsDiffInput.struct_class = Types::GetSchemaVersionsDiffInput

    GetSchemaVersionsDiffResponse.add_member(:diff, Shapes::ShapeRef.new(shape: SchemaDefinitionDiff, location_name: "Diff"))
    GetSchemaVersionsDiffResponse.struct_class = Types::GetSchemaVersionsDiffResponse

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

    GetSessionRequest.add_member(:id, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Id"))
    GetSessionRequest.add_member(:request_origin, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "RequestOrigin"))
    GetSessionRequest.struct_class = Types::GetSessionRequest

    GetSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: Session, location_name: "Session"))
    GetSessionResponse.struct_class = Types::GetSessionResponse

    GetStatementRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "SessionId"))
    GetStatementRequest.add_member(:id, Shapes::ShapeRef.new(shape: IntegerValue, required: true, location_name: "Id"))
    GetStatementRequest.add_member(:request_origin, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "RequestOrigin"))
    GetStatementRequest.struct_class = Types::GetStatementRequest

    GetStatementResponse.add_member(:statement, Shapes::ShapeRef.new(shape: Statement, location_name: "Statement"))
    GetStatementResponse.struct_class = Types::GetStatementResponse

    GetTableOptimizerRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "CatalogId"))
    GetTableOptimizerRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetTableOptimizerRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetTableOptimizerRequest.add_member(:type, Shapes::ShapeRef.new(shape: TableOptimizerType, required: true, location_name: "Type"))
    GetTableOptimizerRequest.struct_class = Types::GetTableOptimizerRequest

    GetTableOptimizerResponse.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetTableOptimizerResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DatabaseName"))
    GetTableOptimizerResponse.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, location_name: "TableName"))
    GetTableOptimizerResponse.add_member(:table_optimizer, Shapes::ShapeRef.new(shape: TableOptimizer, location_name: "TableOptimizer"))
    GetTableOptimizerResponse.struct_class = Types::GetTableOptimizerResponse

    GetTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetTableRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
    GetTableRequest.add_member(:query_as_of_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "QueryAsOfTime"))
    GetTableRequest.add_member(:include_status_details, Shapes::ShapeRef.new(shape: BooleanNullable, location_name: "IncludeStatusDetails"))
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
    GetTableVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CatalogGetterPageSize, location_name: "MaxResults"))
    GetTableVersionsRequest.struct_class = Types::GetTableVersionsRequest

    GetTableVersionsResponse.add_member(:table_versions, Shapes::ShapeRef.new(shape: GetTableVersionsList, location_name: "TableVersions"))
    GetTableVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetTableVersionsResponse.struct_class = Types::GetTableVersionsResponse

    GetTablesRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetTablesRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetTablesRequest.add_member(:expression, Shapes::ShapeRef.new(shape: FilterString, location_name: "Expression"))
    GetTablesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetTablesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CatalogGetterPageSize, location_name: "MaxResults"))
    GetTablesRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
    GetTablesRequest.add_member(:query_as_of_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "QueryAsOfTime"))
    GetTablesRequest.add_member(:include_status_details, Shapes::ShapeRef.new(shape: BooleanNullable, location_name: "IncludeStatusDetails"))
    GetTablesRequest.add_member(:attributes_to_get, Shapes::ShapeRef.new(shape: TableAttributesList, location_name: "AttributesToGet"))
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
    GetTriggersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OrchestrationPageSize200, location_name: "MaxResults"))
    GetTriggersRequest.struct_class = Types::GetTriggersRequest

    GetTriggersResponse.add_member(:triggers, Shapes::ShapeRef.new(shape: TriggerList, location_name: "Triggers"))
    GetTriggersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    GetTriggersResponse.struct_class = Types::GetTriggersResponse

    GetUnfilteredPartitionMetadataRequest.add_member(:region, Shapes::ShapeRef.new(shape: ValueString, location_name: "Region"))
    GetUnfilteredPartitionMetadataRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "CatalogId"))
    GetUnfilteredPartitionMetadataRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetUnfilteredPartitionMetadataRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetUnfilteredPartitionMetadataRequest.add_member(:partition_values, Shapes::ShapeRef.new(shape: ValueStringList, required: true, location_name: "PartitionValues"))
    GetUnfilteredPartitionMetadataRequest.add_member(:audit_context, Shapes::ShapeRef.new(shape: AuditContext, location_name: "AuditContext"))
    GetUnfilteredPartitionMetadataRequest.add_member(:supported_permission_types, Shapes::ShapeRef.new(shape: PermissionTypeList, required: true, location_name: "SupportedPermissionTypes"))
    GetUnfilteredPartitionMetadataRequest.add_member(:query_session_context, Shapes::ShapeRef.new(shape: QuerySessionContext, location_name: "QuerySessionContext"))
    GetUnfilteredPartitionMetadataRequest.struct_class = Types::GetUnfilteredPartitionMetadataRequest

    GetUnfilteredPartitionMetadataResponse.add_member(:partition, Shapes::ShapeRef.new(shape: Partition, location_name: "Partition"))
    GetUnfilteredPartitionMetadataResponse.add_member(:authorized_columns, Shapes::ShapeRef.new(shape: NameStringList, location_name: "AuthorizedColumns"))
    GetUnfilteredPartitionMetadataResponse.add_member(:is_registered_with_lake_formation, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRegisteredWithLakeFormation"))
    GetUnfilteredPartitionMetadataResponse.struct_class = Types::GetUnfilteredPartitionMetadataResponse

    GetUnfilteredPartitionsMetadataRequest.add_member(:region, Shapes::ShapeRef.new(shape: ValueString, location_name: "Region"))
    GetUnfilteredPartitionsMetadataRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "CatalogId"))
    GetUnfilteredPartitionsMetadataRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetUnfilteredPartitionsMetadataRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GetUnfilteredPartitionsMetadataRequest.add_member(:expression, Shapes::ShapeRef.new(shape: PredicateString, location_name: "Expression"))
    GetUnfilteredPartitionsMetadataRequest.add_member(:audit_context, Shapes::ShapeRef.new(shape: AuditContext, location_name: "AuditContext"))
    GetUnfilteredPartitionsMetadataRequest.add_member(:supported_permission_types, Shapes::ShapeRef.new(shape: PermissionTypeList, required: true, location_name: "SupportedPermissionTypes"))
    GetUnfilteredPartitionsMetadataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetUnfilteredPartitionsMetadataRequest.add_member(:segment, Shapes::ShapeRef.new(shape: Segment, location_name: "Segment"))
    GetUnfilteredPartitionsMetadataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetUnfilteredPartitionsMetadataRequest.add_member(:query_session_context, Shapes::ShapeRef.new(shape: QuerySessionContext, location_name: "QuerySessionContext"))
    GetUnfilteredPartitionsMetadataRequest.struct_class = Types::GetUnfilteredPartitionsMetadataRequest

    GetUnfilteredPartitionsMetadataResponse.add_member(:unfiltered_partitions, Shapes::ShapeRef.new(shape: UnfilteredPartitionList, location_name: "UnfilteredPartitions"))
    GetUnfilteredPartitionsMetadataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetUnfilteredPartitionsMetadataResponse.struct_class = Types::GetUnfilteredPartitionsMetadataResponse

    GetUnfilteredTableMetadataRequest.add_member(:region, Shapes::ShapeRef.new(shape: ValueString, location_name: "Region"))
    GetUnfilteredTableMetadataRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "CatalogId"))
    GetUnfilteredTableMetadataRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GetUnfilteredTableMetadataRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetUnfilteredTableMetadataRequest.add_member(:audit_context, Shapes::ShapeRef.new(shape: AuditContext, location_name: "AuditContext"))
    GetUnfilteredTableMetadataRequest.add_member(:supported_permission_types, Shapes::ShapeRef.new(shape: PermissionTypeList, required: true, location_name: "SupportedPermissionTypes"))
    GetUnfilteredTableMetadataRequest.add_member(:parent_resource_arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "ParentResourceArn"))
    GetUnfilteredTableMetadataRequest.add_member(:root_resource_arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "RootResourceArn"))
    GetUnfilteredTableMetadataRequest.add_member(:supported_dialect, Shapes::ShapeRef.new(shape: SupportedDialect, location_name: "SupportedDialect"))
    GetUnfilteredTableMetadataRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    GetUnfilteredTableMetadataRequest.add_member(:query_session_context, Shapes::ShapeRef.new(shape: QuerySessionContext, location_name: "QuerySessionContext"))
    GetUnfilteredTableMetadataRequest.struct_class = Types::GetUnfilteredTableMetadataRequest

    GetUnfilteredTableMetadataResponse.add_member(:table, Shapes::ShapeRef.new(shape: Table, location_name: "Table"))
    GetUnfilteredTableMetadataResponse.add_member(:authorized_columns, Shapes::ShapeRef.new(shape: NameStringList, location_name: "AuthorizedColumns"))
    GetUnfilteredTableMetadataResponse.add_member(:is_registered_with_lake_formation, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRegisteredWithLakeFormation"))
    GetUnfilteredTableMetadataResponse.add_member(:cell_filters, Shapes::ShapeRef.new(shape: ColumnRowFilterList, location_name: "CellFilters"))
    GetUnfilteredTableMetadataResponse.add_member(:query_authorization_id, Shapes::ShapeRef.new(shape: HashString, location_name: "QueryAuthorizationId"))
    GetUnfilteredTableMetadataResponse.add_member(:is_multi_dialect_view, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMultiDialectView"))
    GetUnfilteredTableMetadataResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "ResourceArn"))
    GetUnfilteredTableMetadataResponse.add_member(:is_protected, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsProtected"))
    GetUnfilteredTableMetadataResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    GetUnfilteredTableMetadataResponse.add_member(:row_filter, Shapes::ShapeRef.new(shape: PredicateString, location_name: "RowFilter"))
    GetUnfilteredTableMetadataResponse.struct_class = Types::GetUnfilteredTableMetadataResponse

    GetUsageProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GetUsageProfileRequest.struct_class = Types::GetUsageProfileRequest

    GetUsageProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    GetUsageProfileResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    GetUsageProfileResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: "Configuration"))
    GetUsageProfileResponse.add_member(:created_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedOn"))
    GetUsageProfileResponse.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "LastModifiedOn"))
    GetUsageProfileResponse.struct_class = Types::GetUsageProfileResponse

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
    GetUserDefinedFunctionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CatalogGetterPageSize, location_name: "MaxResults"))
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

    GluePolicy.add_member(:policy_in_json, Shapes::ShapeRef.new(shape: PolicyJsonString, location_name: "PolicyInJson"))
    GluePolicy.add_member(:policy_hash, Shapes::ShapeRef.new(shape: HashString, location_name: "PolicyHash"))
    GluePolicy.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    GluePolicy.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    GluePolicy.struct_class = Types::GluePolicy

    GlueSchema.add_member(:columns, Shapes::ShapeRef.new(shape: GlueStudioSchemaColumnList, location_name: "Columns"))
    GlueSchema.struct_class = Types::GlueSchema

    GlueSchemas.member = Shapes::ShapeRef.new(shape: GlueSchema)

    GlueStudioPathList.member = Shapes::ShapeRef.new(shape: EnclosedInStringProperties)

    GlueStudioSchemaColumn.add_member(:name, Shapes::ShapeRef.new(shape: GlueStudioColumnNameString, required: true, location_name: "Name"))
    GlueStudioSchemaColumn.add_member(:type, Shapes::ShapeRef.new(shape: ColumnTypeString, location_name: "Type"))
    GlueStudioSchemaColumn.struct_class = Types::GlueStudioSchemaColumn

    GlueStudioSchemaColumnList.member = Shapes::ShapeRef.new(shape: GlueStudioSchemaColumn)

    GlueTable.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    GlueTable.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    GlueTable.add_member(:catalog_id, Shapes::ShapeRef.new(shape: NameString, location_name: "CatalogId"))
    GlueTable.add_member(:connection_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionName"))
    GlueTable.add_member(:additional_options, Shapes::ShapeRef.new(shape: GlueTableAdditionalOptions, location_name: "AdditionalOptions"))
    GlueTable.struct_class = Types::GlueTable

    GlueTableAdditionalOptions.key = Shapes::ShapeRef.new(shape: NameString)
    GlueTableAdditionalOptions.value = Shapes::ShapeRef.new(shape: DescriptionString)

    GlueTables.member = Shapes::ShapeRef.new(shape: GlueTable)

    GovernedCatalogSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    GovernedCatalogSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    GovernedCatalogSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    GovernedCatalogSource.add_member(:partition_predicate, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "PartitionPredicate"))
    GovernedCatalogSource.add_member(:additional_options, Shapes::ShapeRef.new(shape: S3SourceAdditionalOptions, location_name: "AdditionalOptions"))
    GovernedCatalogSource.struct_class = Types::GovernedCatalogSource

    GovernedCatalogTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    GovernedCatalogTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    GovernedCatalogTarget.add_member(:partition_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, location_name: "PartitionKeys"))
    GovernedCatalogTarget.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    GovernedCatalogTarget.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    GovernedCatalogTarget.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: CatalogSchemaChangePolicy, location_name: "SchemaChangePolicy"))
    GovernedCatalogTarget.struct_class = Types::GovernedCatalogTarget

    GrokClassifier.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    GrokClassifier.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, required: true, location_name: "Classification"))
    GrokClassifier.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    GrokClassifier.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    GrokClassifier.add_member(:version, Shapes::ShapeRef.new(shape: VersionId, location_name: "Version"))
    GrokClassifier.add_member(:grok_pattern, Shapes::ShapeRef.new(shape: GrokPattern, required: true, location_name: "GrokPattern"))
    GrokClassifier.add_member(:custom_patterns, Shapes::ShapeRef.new(shape: CustomPatterns, location_name: "CustomPatterns"))
    GrokClassifier.struct_class = Types::GrokClassifier

    HudiTarget.add_member(:paths, Shapes::ShapeRef.new(shape: PathList, location_name: "Paths"))
    HudiTarget.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    HudiTarget.add_member(:exclusions, Shapes::ShapeRef.new(shape: PathList, location_name: "Exclusions"))
    HudiTarget.add_member(:maximum_traversal_depth, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaximumTraversalDepth"))
    HudiTarget.struct_class = Types::HudiTarget

    HudiTargetList.member = Shapes::ShapeRef.new(shape: HudiTarget)

    IcebergCompactionConfiguration.add_member(:strategy, Shapes::ShapeRef.new(shape: CompactionStrategy, location_name: "strategy"))
    IcebergCompactionConfiguration.struct_class = Types::IcebergCompactionConfiguration

    IcebergCompactionMetrics.add_member(:number_of_bytes_compacted, Shapes::ShapeRef.new(shape: metricCounts, location_name: "NumberOfBytesCompacted"))
    IcebergCompactionMetrics.add_member(:number_of_files_compacted, Shapes::ShapeRef.new(shape: metricCounts, location_name: "NumberOfFilesCompacted"))
    IcebergCompactionMetrics.add_member(:dpu_hours, Shapes::ShapeRef.new(shape: dpuHours, location_name: "DpuHours"))
    IcebergCompactionMetrics.add_member(:number_of_dpus, Shapes::ShapeRef.new(shape: dpuCounts, location_name: "NumberOfDpus"))
    IcebergCompactionMetrics.add_member(:job_duration_in_hour, Shapes::ShapeRef.new(shape: dpuDurationInHour, location_name: "JobDurationInHour"))
    IcebergCompactionMetrics.struct_class = Types::IcebergCompactionMetrics

    IcebergInput.add_member(:metadata_operation, Shapes::ShapeRef.new(shape: MetadataOperation, required: true, location_name: "MetadataOperation"))
    IcebergInput.add_member(:version, Shapes::ShapeRef.new(shape: VersionString, location_name: "Version"))
    IcebergInput.add_member(:create_iceberg_table_input, Shapes::ShapeRef.new(shape: CreateIcebergTableInput, location_name: "CreateIcebergTableInput"))
    IcebergInput.struct_class = Types::IcebergInput

    IcebergOrphanFileDeletionConfiguration.add_member(:orphan_file_retention_period_in_days, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "orphanFileRetentionPeriodInDays"))
    IcebergOrphanFileDeletionConfiguration.add_member(:location, Shapes::ShapeRef.new(shape: MessageString, location_name: "location"))
    IcebergOrphanFileDeletionConfiguration.struct_class = Types::IcebergOrphanFileDeletionConfiguration

    IcebergOrphanFileDeletionMetrics.add_member(:number_of_orphan_files_deleted, Shapes::ShapeRef.new(shape: metricCounts, location_name: "NumberOfOrphanFilesDeleted"))
    IcebergOrphanFileDeletionMetrics.add_member(:dpu_hours, Shapes::ShapeRef.new(shape: dpuHours, location_name: "DpuHours"))
    IcebergOrphanFileDeletionMetrics.add_member(:number_of_dpus, Shapes::ShapeRef.new(shape: dpuCounts, location_name: "NumberOfDpus"))
    IcebergOrphanFileDeletionMetrics.add_member(:job_duration_in_hour, Shapes::ShapeRef.new(shape: dpuDurationInHour, location_name: "JobDurationInHour"))
    IcebergOrphanFileDeletionMetrics.struct_class = Types::IcebergOrphanFileDeletionMetrics

    IcebergPartitionField.add_member(:source_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "SourceId"))
    IcebergPartitionField.add_member(:transform, Shapes::ShapeRef.new(shape: IcebergTransformString, required: true, location_name: "Transform"))
    IcebergPartitionField.add_member(:name, Shapes::ShapeRef.new(shape: ColumnNameString, required: true, location_name: "Name"))
    IcebergPartitionField.add_member(:field_id, Shapes::ShapeRef.new(shape: Integer, location_name: "FieldId"))
    IcebergPartitionField.struct_class = Types::IcebergPartitionField

    IcebergPartitionSpec.add_member(:fields, Shapes::ShapeRef.new(shape: IcebergPartitionSpecFieldList, required: true, location_name: "Fields"))
    IcebergPartitionSpec.add_member(:spec_id, Shapes::ShapeRef.new(shape: Integer, location_name: "SpecId"))
    IcebergPartitionSpec.struct_class = Types::IcebergPartitionSpec

    IcebergPartitionSpecFieldList.member = Shapes::ShapeRef.new(shape: IcebergPartitionField)

    IcebergRetentionConfiguration.add_member(:snapshot_retention_period_in_days, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "snapshotRetentionPeriodInDays"))
    IcebergRetentionConfiguration.add_member(:number_of_snapshots_to_retain, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "numberOfSnapshotsToRetain"))
    IcebergRetentionConfiguration.add_member(:clean_expired_files, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "cleanExpiredFiles"))
    IcebergRetentionConfiguration.struct_class = Types::IcebergRetentionConfiguration

    IcebergRetentionMetrics.add_member(:number_of_data_files_deleted, Shapes::ShapeRef.new(shape: metricCounts, location_name: "NumberOfDataFilesDeleted"))
    IcebergRetentionMetrics.add_member(:number_of_manifest_files_deleted, Shapes::ShapeRef.new(shape: metricCounts, location_name: "NumberOfManifestFilesDeleted"))
    IcebergRetentionMetrics.add_member(:number_of_manifest_lists_deleted, Shapes::ShapeRef.new(shape: metricCounts, location_name: "NumberOfManifestListsDeleted"))
    IcebergRetentionMetrics.add_member(:dpu_hours, Shapes::ShapeRef.new(shape: dpuHours, location_name: "DpuHours"))
    IcebergRetentionMetrics.add_member(:number_of_dpus, Shapes::ShapeRef.new(shape: dpuCounts, location_name: "NumberOfDpus"))
    IcebergRetentionMetrics.add_member(:job_duration_in_hour, Shapes::ShapeRef.new(shape: dpuDurationInHour, location_name: "JobDurationInHour"))
    IcebergRetentionMetrics.struct_class = Types::IcebergRetentionMetrics

    IcebergSchema.add_member(:schema_id, Shapes::ShapeRef.new(shape: Integer, location_name: "SchemaId"))
    IcebergSchema.add_member(:identifier_field_ids, Shapes::ShapeRef.new(shape: IntegerList, location_name: "IdentifierFieldIds"))
    IcebergSchema.add_member(:type, Shapes::ShapeRef.new(shape: IcebergStructTypeEnum, location_name: "Type"))
    IcebergSchema.add_member(:fields, Shapes::ShapeRef.new(shape: IcebergStructFieldList, required: true, location_name: "Fields"))
    IcebergSchema.struct_class = Types::IcebergSchema

    IcebergSortField.add_member(:source_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "SourceId"))
    IcebergSortField.add_member(:transform, Shapes::ShapeRef.new(shape: IcebergTransformString, required: true, location_name: "Transform"))
    IcebergSortField.add_member(:direction, Shapes::ShapeRef.new(shape: IcebergSortDirection, required: true, location_name: "Direction"))
    IcebergSortField.add_member(:null_order, Shapes::ShapeRef.new(shape: IcebergNullOrder, required: true, location_name: "NullOrder"))
    IcebergSortField.struct_class = Types::IcebergSortField

    IcebergSortOrder.add_member(:order_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "OrderId"))
    IcebergSortOrder.add_member(:fields, Shapes::ShapeRef.new(shape: IcebergSortOrderFieldList, required: true, location_name: "Fields"))
    IcebergSortOrder.struct_class = Types::IcebergSortOrder

    IcebergSortOrderFieldList.member = Shapes::ShapeRef.new(shape: IcebergSortField)

    IcebergStructField.add_member(:id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Id"))
    IcebergStructField.add_member(:name, Shapes::ShapeRef.new(shape: ColumnNameString, required: true, location_name: "Name"))
    IcebergStructField.add_member(:type, Shapes::ShapeRef.new(shape: IcebergDocument, required: true, location_name: "Type"))
    IcebergStructField.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Required"))
    IcebergStructField.add_member(:doc, Shapes::ShapeRef.new(shape: CommentString, location_name: "Doc"))
    IcebergStructField.struct_class = Types::IcebergStructField

    IcebergStructFieldList.member = Shapes::ShapeRef.new(shape: IcebergStructField)

    IcebergTableUpdate.add_member(:schema, Shapes::ShapeRef.new(shape: IcebergSchema, required: true, location_name: "Schema"))
    IcebergTableUpdate.add_member(:partition_spec, Shapes::ShapeRef.new(shape: IcebergPartitionSpec, location_name: "PartitionSpec"))
    IcebergTableUpdate.add_member(:sort_order, Shapes::ShapeRef.new(shape: IcebergSortOrder, location_name: "SortOrder"))
    IcebergTableUpdate.add_member(:location, Shapes::ShapeRef.new(shape: LocationString, required: true, location_name: "Location"))
    IcebergTableUpdate.add_member(:properties, Shapes::ShapeRef.new(shape: StringToStringMap, location_name: "Properties"))
    IcebergTableUpdate.struct_class = Types::IcebergTableUpdate

    IcebergTableUpdateList.member = Shapes::ShapeRef.new(shape: IcebergTableUpdate)

    IcebergTarget.add_member(:paths, Shapes::ShapeRef.new(shape: PathList, location_name: "Paths"))
    IcebergTarget.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    IcebergTarget.add_member(:exclusions, Shapes::ShapeRef.new(shape: PathList, location_name: "Exclusions"))
    IcebergTarget.add_member(:maximum_traversal_depth, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaximumTraversalDepth"))
    IcebergTarget.struct_class = Types::IcebergTarget

    IcebergTargetList.member = Shapes::ShapeRef.new(shape: IcebergTarget)

    IdempotentParameterMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    IllegalBlueprintStateException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    IllegalBlueprintStateException.struct_class = Types::IllegalBlueprintStateException

    IllegalSessionStateException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    IllegalSessionStateException.struct_class = Types::IllegalSessionStateException

    IllegalWorkflowStateException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    IllegalWorkflowStateException.struct_class = Types::IllegalWorkflowStateException

    ImportCatalogToGlueRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    ImportCatalogToGlueRequest.struct_class = Types::ImportCatalogToGlueRequest

    ImportCatalogToGlueResponse.struct_class = Types::ImportCatalogToGlueResponse

    ImportLabelsTaskRunProperties.add_member(:input_s3_path, Shapes::ShapeRef.new(shape: UriString, location_name: "InputS3Path"))
    ImportLabelsTaskRunProperties.add_member(:replace, Shapes::ShapeRef.new(shape: ReplaceBoolean, location_name: "Replace"))
    ImportLabelsTaskRunProperties.struct_class = Types::ImportLabelsTaskRunProperties

    InboundIntegration.add_member(:source_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "SourceArn"))
    InboundIntegration.add_member(:target_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "TargetArn"))
    InboundIntegration.add_member(:integration_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationArn"))
    InboundIntegration.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, required: true, location_name: "Status"))
    InboundIntegration.add_member(:create_time, Shapes::ShapeRef.new(shape: IntegrationTimestamp, required: true, location_name: "CreateTime"))
    InboundIntegration.add_member(:integration_config, Shapes::ShapeRef.new(shape: IntegrationConfig, location_name: "IntegrationConfig"))
    InboundIntegration.add_member(:errors, Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: "Errors"))
    InboundIntegration.struct_class = Types::InboundIntegration

    InboundIntegrationsList.member = Shapes::ShapeRef.new(shape: InboundIntegration)

    InclusionAnnotationList.member = Shapes::ShapeRef.new(shape: DatapointInclusionAnnotation)

    IntegerList.member = Shapes::ShapeRef.new(shape: Integer)

    Integration.add_member(:source_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "SourceArn"))
    Integration.add_member(:target_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "TargetArn"))
    Integration.add_member(:description, Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: "Description"))
    Integration.add_member(:integration_name, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationName"))
    Integration.add_member(:integration_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationArn"))
    Integration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String2048, location_name: "KmsKeyId"))
    Integration.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: IntegrationAdditionalEncryptionContextMap, location_name: "AdditionalEncryptionContext"))
    Integration.add_member(:tags, Shapes::ShapeRef.new(shape: IntegrationTagsList, location_name: "Tags"))
    Integration.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, required: true, location_name: "Status"))
    Integration.add_member(:create_time, Shapes::ShapeRef.new(shape: IntegrationTimestamp, required: true, location_name: "CreateTime"))
    Integration.add_member(:integration_config, Shapes::ShapeRef.new(shape: IntegrationConfig, location_name: "IntegrationConfig"))
    Integration.add_member(:errors, Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: "Errors"))
    Integration.add_member(:data_filter, Shapes::ShapeRef.new(shape: String2048, location_name: "DataFilter"))
    Integration.struct_class = Types::Integration

    IntegrationAdditionalEncryptionContextMap.key = Shapes::ShapeRef.new(shape: IntegrationString)
    IntegrationAdditionalEncryptionContextMap.value = Shapes::ShapeRef.new(shape: IntegrationString)

    IntegrationConfig.add_member(:refresh_interval, Shapes::ShapeRef.new(shape: String128, location_name: "RefreshInterval"))
    IntegrationConfig.struct_class = Types::IntegrationConfig

    IntegrationConflictOperationFault.add_member(:message, Shapes::ShapeRef.new(shape: IntegrationErrorMessage, location_name: "Message"))
    IntegrationConflictOperationFault.struct_class = Types::IntegrationConflictOperationFault

    IntegrationError.add_member(:error_code, Shapes::ShapeRef.new(shape: String128, location_name: "ErrorCode"))
    IntegrationError.add_member(:error_message, Shapes::ShapeRef.new(shape: String2048, location_name: "ErrorMessage"))
    IntegrationError.struct_class = Types::IntegrationError

    IntegrationErrorList.member = Shapes::ShapeRef.new(shape: IntegrationError)

    IntegrationFilter.add_member(:name, Shapes::ShapeRef.new(shape: String128, location_name: "Name"))
    IntegrationFilter.add_member(:values, Shapes::ShapeRef.new(shape: IntegrationFilterValues, location_name: "Values"))
    IntegrationFilter.struct_class = Types::IntegrationFilter

    IntegrationFilterList.member = Shapes::ShapeRef.new(shape: IntegrationFilter)

    IntegrationFilterValues.member = Shapes::ShapeRef.new(shape: String128)

    IntegrationNotFoundFault.add_member(:message, Shapes::ShapeRef.new(shape: IntegrationErrorMessage, location_name: "Message"))
    IntegrationNotFoundFault.struct_class = Types::IntegrationNotFoundFault

    IntegrationPartition.add_member(:field_name, Shapes::ShapeRef.new(shape: String128, location_name: "FieldName"))
    IntegrationPartition.add_member(:function_spec, Shapes::ShapeRef.new(shape: String128, location_name: "FunctionSpec"))
    IntegrationPartition.add_member(:conversion_spec, Shapes::ShapeRef.new(shape: String128, location_name: "ConversionSpec"))
    IntegrationPartition.struct_class = Types::IntegrationPartition

    IntegrationPartitionSpecList.member = Shapes::ShapeRef.new(shape: IntegrationPartition)

    IntegrationQuotaExceededFault.add_member(:message, Shapes::ShapeRef.new(shape: IntegrationErrorMessage, location_name: "Message"))
    IntegrationQuotaExceededFault.struct_class = Types::IntegrationQuotaExceededFault

    IntegrationTagsList.member = Shapes::ShapeRef.new(shape: Tag)

    IntegrationsList.member = Shapes::ShapeRef.new(shape: Integration)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: IntegrationErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    InvalidInputException.add_member(:from_federation_source, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "FromFederationSource"))
    InvalidInputException.struct_class = Types::InvalidInputException

    InvalidIntegrationStateFault.add_member(:message, Shapes::ShapeRef.new(shape: IntegrationErrorMessage, location_name: "Message"))
    InvalidIntegrationStateFault.struct_class = Types::InvalidIntegrationStateFault

    InvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    InvalidStateException.struct_class = Types::InvalidStateException

    JDBCConnectorOptions.add_member(:filter_predicate, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "FilterPredicate"))
    JDBCConnectorOptions.add_member(:partition_column, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "PartitionColumn"))
    JDBCConnectorOptions.add_member(:lower_bound, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "LowerBound"))
    JDBCConnectorOptions.add_member(:upper_bound, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "UpperBound"))
    JDBCConnectorOptions.add_member(:num_partitions, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "NumPartitions"))
    JDBCConnectorOptions.add_member(:job_bookmark_keys, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, location_name: "JobBookmarkKeys"))
    JDBCConnectorOptions.add_member(:job_bookmark_keys_sort_order, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "JobBookmarkKeysSortOrder"))
    JDBCConnectorOptions.add_member(:data_type_mapping, Shapes::ShapeRef.new(shape: JDBCDataTypeMapping, location_name: "DataTypeMapping"))
    JDBCConnectorOptions.struct_class = Types::JDBCConnectorOptions

    JDBCConnectorSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    JDBCConnectorSource.add_member(:connection_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionName"))
    JDBCConnectorSource.add_member(:connector_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectorName"))
    JDBCConnectorSource.add_member(:connection_type, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionType"))
    JDBCConnectorSource.add_member(:additional_options, Shapes::ShapeRef.new(shape: JDBCConnectorOptions, location_name: "AdditionalOptions"))
    JDBCConnectorSource.add_member(:connection_table, Shapes::ShapeRef.new(shape: EnclosedInStringPropertyWithQuote, location_name: "ConnectionTable"))
    JDBCConnectorSource.add_member(:query, Shapes::ShapeRef.new(shape: SqlQuery, location_name: "Query"))
    JDBCConnectorSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    JDBCConnectorSource.struct_class = Types::JDBCConnectorSource

    JDBCConnectorTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    JDBCConnectorTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    JDBCConnectorTarget.add_member(:connection_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionName"))
    JDBCConnectorTarget.add_member(:connection_table, Shapes::ShapeRef.new(shape: EnclosedInStringPropertyWithQuote, required: true, location_name: "ConnectionTable"))
    JDBCConnectorTarget.add_member(:connector_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectorName"))
    JDBCConnectorTarget.add_member(:connection_type, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionType"))
    JDBCConnectorTarget.add_member(:additional_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalOptions"))
    JDBCConnectorTarget.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    JDBCConnectorTarget.struct_class = Types::JDBCConnectorTarget

    JDBCDataTypeMapping.key = Shapes::ShapeRef.new(shape: JDBCDataType)
    JDBCDataTypeMapping.value = Shapes::ShapeRef.new(shape: GlueRecordType)

    JdbcTarget.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    JdbcTarget.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    JdbcTarget.add_member(:exclusions, Shapes::ShapeRef.new(shape: PathList, location_name: "Exclusions"))
    JdbcTarget.add_member(:enable_additional_metadata, Shapes::ShapeRef.new(shape: EnableAdditionalMetadata, location_name: "EnableAdditionalMetadata"))
    JdbcTarget.struct_class = Types::JdbcTarget

    JdbcTargetList.member = Shapes::ShapeRef.new(shape: JdbcTarget)

    Job.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    Job.add_member(:job_mode, Shapes::ShapeRef.new(shape: JobMode, location_name: "JobMode"))
    Job.add_member(:job_run_queuing_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "JobRunQueuingEnabled"))
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
    Job.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, deprecated: true, location_name: "AllocatedCapacity", metadata: {"deprecatedMessage" => "This property is deprecated, use MaxCapacity instead."}))
    Job.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    Job.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    Job.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    Job.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    Job.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    Job.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    Job.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    Job.add_member(:code_gen_configuration_nodes, Shapes::ShapeRef.new(shape: CodeGenConfigurationNodes, location_name: "CodeGenConfigurationNodes"))
    Job.add_member(:execution_class, Shapes::ShapeRef.new(shape: ExecutionClass, location_name: "ExecutionClass"))
    Job.add_member(:source_control_details, Shapes::ShapeRef.new(shape: SourceControlDetails, location_name: "SourceControlDetails"))
    Job.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "MaintenanceWindow"))
    Job.add_member(:profile_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ProfileName"))
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
    JobCommand.add_member(:runtime, Shapes::ShapeRef.new(shape: RuntimeNameString, location_name: "Runtime"))
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
    JobRun.add_member(:job_mode, Shapes::ShapeRef.new(shape: JobMode, location_name: "JobMode"))
    JobRun.add_member(:job_run_queuing_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "JobRunQueuingEnabled"))
    JobRun.add_member(:started_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "StartedOn"))
    JobRun.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "LastModifiedOn"))
    JobRun.add_member(:completed_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CompletedOn"))
    JobRun.add_member(:job_run_state, Shapes::ShapeRef.new(shape: JobRunState, location_name: "JobRunState"))
    JobRun.add_member(:arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "Arguments"))
    JobRun.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorString, location_name: "ErrorMessage"))
    JobRun.add_member(:predecessor_runs, Shapes::ShapeRef.new(shape: PredecessorList, location_name: "PredecessorRuns"))
    JobRun.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, deprecated: true, location_name: "AllocatedCapacity", metadata: {"deprecatedMessage" => "This property is deprecated, use MaxCapacity instead."}))
    JobRun.add_member(:execution_time, Shapes::ShapeRef.new(shape: ExecutionTime, location_name: "ExecutionTime"))
    JobRun.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    JobRun.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    JobRun.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    JobRun.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    JobRun.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    JobRun.add_member(:log_group_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "LogGroupName"))
    JobRun.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    JobRun.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    JobRun.add_member(:dpu_seconds, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "DPUSeconds"))
    JobRun.add_member(:execution_class, Shapes::ShapeRef.new(shape: ExecutionClass, location_name: "ExecutionClass"))
    JobRun.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "MaintenanceWindow"))
    JobRun.add_member(:profile_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ProfileName"))
    JobRun.add_member(:state_detail, Shapes::ShapeRef.new(shape: OrchestrationMessageString, location_name: "StateDetail"))
    JobRun.struct_class = Types::JobRun

    JobRunList.member = Shapes::ShapeRef.new(shape: JobRun)

    JobUpdate.add_member(:job_mode, Shapes::ShapeRef.new(shape: JobMode, location_name: "JobMode"))
    JobUpdate.add_member(:job_run_queuing_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "JobRunQueuingEnabled"))
    JobUpdate.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    JobUpdate.add_member(:log_uri, Shapes::ShapeRef.new(shape: UriString, location_name: "LogUri"))
    JobUpdate.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, location_name: "Role"))
    JobUpdate.add_member(:execution_property, Shapes::ShapeRef.new(shape: ExecutionProperty, location_name: "ExecutionProperty"))
    JobUpdate.add_member(:command, Shapes::ShapeRef.new(shape: JobCommand, location_name: "Command"))
    JobUpdate.add_member(:default_arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "DefaultArguments"))
    JobUpdate.add_member(:non_overridable_arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "NonOverridableArguments"))
    JobUpdate.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionsList, location_name: "Connections"))
    JobUpdate.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    JobUpdate.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, deprecated: true, location_name: "AllocatedCapacity", metadata: {"deprecatedMessage" => "This property is deprecated, use MaxCapacity instead."}))
    JobUpdate.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    JobUpdate.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    JobUpdate.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    JobUpdate.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    JobUpdate.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    JobUpdate.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    JobUpdate.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    JobUpdate.add_member(:code_gen_configuration_nodes, Shapes::ShapeRef.new(shape: CodeGenConfigurationNodes, location_name: "CodeGenConfigurationNodes"))
    JobUpdate.add_member(:execution_class, Shapes::ShapeRef.new(shape: ExecutionClass, location_name: "ExecutionClass"))
    JobUpdate.add_member(:source_control_details, Shapes::ShapeRef.new(shape: SourceControlDetails, location_name: "SourceControlDetails"))
    JobUpdate.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "MaintenanceWindow"))
    JobUpdate.struct_class = Types::JobUpdate

    Join.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    Join.add_member(:inputs, Shapes::ShapeRef.new(shape: TwoInputs, required: true, location_name: "Inputs"))
    Join.add_member(:join_type, Shapes::ShapeRef.new(shape: JoinType, required: true, location_name: "JoinType"))
    Join.add_member(:columns, Shapes::ShapeRef.new(shape: JoinColumns, required: true, location_name: "Columns"))
    Join.struct_class = Types::Join

    JoinColumn.add_member(:from, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "From"))
    JoinColumn.add_member(:keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, required: true, location_name: "Keys"))
    JoinColumn.struct_class = Types::JoinColumn

    JoinColumns.member = Shapes::ShapeRef.new(shape: JoinColumn)

    JsonClassifier.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    JsonClassifier.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    JsonClassifier.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    JsonClassifier.add_member(:version, Shapes::ShapeRef.new(shape: VersionId, location_name: "Version"))
    JsonClassifier.add_member(:json_path, Shapes::ShapeRef.new(shape: JsonPath, required: true, location_name: "JsonPath"))
    JsonClassifier.struct_class = Types::JsonClassifier

    KMSKeyNotAccessibleFault.add_member(:message, Shapes::ShapeRef.new(shape: IntegrationErrorMessage, location_name: "Message"))
    KMSKeyNotAccessibleFault.struct_class = Types::KMSKeyNotAccessibleFault

    KafkaStreamingSourceOptions.add_member(:bootstrap_servers, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "BootstrapServers"))
    KafkaStreamingSourceOptions.add_member(:security_protocol, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "SecurityProtocol"))
    KafkaStreamingSourceOptions.add_member(:connection_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "ConnectionName"))
    KafkaStreamingSourceOptions.add_member(:topic_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "TopicName"))
    KafkaStreamingSourceOptions.add_member(:assign, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Assign"))
    KafkaStreamingSourceOptions.add_member(:subscribe_pattern, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "SubscribePattern"))
    KafkaStreamingSourceOptions.add_member(:classification, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Classification"))
    KafkaStreamingSourceOptions.add_member(:delimiter, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Delimiter"))
    KafkaStreamingSourceOptions.add_member(:starting_offsets, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "StartingOffsets"))
    KafkaStreamingSourceOptions.add_member(:ending_offsets, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "EndingOffsets"))
    KafkaStreamingSourceOptions.add_member(:poll_timeout_ms, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "PollTimeoutMs"))
    KafkaStreamingSourceOptions.add_member(:num_retries, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "NumRetries"))
    KafkaStreamingSourceOptions.add_member(:retry_interval_ms, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "RetryIntervalMs"))
    KafkaStreamingSourceOptions.add_member(:max_offsets_per_trigger, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "MaxOffsetsPerTrigger"))
    KafkaStreamingSourceOptions.add_member(:min_partitions, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "MinPartitions"))
    KafkaStreamingSourceOptions.add_member(:include_headers, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "IncludeHeaders"))
    KafkaStreamingSourceOptions.add_member(:add_record_timestamp, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "AddRecordTimestamp"))
    KafkaStreamingSourceOptions.add_member(:emit_consumer_lag_metrics, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "EmitConsumerLagMetrics"))
    KafkaStreamingSourceOptions.add_member(:starting_timestamp, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "StartingTimestamp"))
    KafkaStreamingSourceOptions.struct_class = Types::KafkaStreamingSourceOptions

    KeyList.member = Shapes::ShapeRef.new(shape: NameString)

    KeySchemaElement.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    KeySchemaElement.add_member(:type, Shapes::ShapeRef.new(shape: ColumnTypeString, required: true, location_name: "Type"))
    KeySchemaElement.struct_class = Types::KeySchemaElement

    KeySchemaElementList.member = Shapes::ShapeRef.new(shape: KeySchemaElement)

    KinesisStreamingSourceOptions.add_member(:endpoint_url, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "EndpointUrl"))
    KinesisStreamingSourceOptions.add_member(:stream_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "StreamName"))
    KinesisStreamingSourceOptions.add_member(:classification, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Classification"))
    KinesisStreamingSourceOptions.add_member(:delimiter, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Delimiter"))
    KinesisStreamingSourceOptions.add_member(:starting_position, Shapes::ShapeRef.new(shape: StartingPosition, location_name: "StartingPosition"))
    KinesisStreamingSourceOptions.add_member(:max_fetch_time_in_ms, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "MaxFetchTimeInMs"))
    KinesisStreamingSourceOptions.add_member(:max_fetch_records_per_shard, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "MaxFetchRecordsPerShard"))
    KinesisStreamingSourceOptions.add_member(:max_record_per_read, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "MaxRecordPerRead"))
    KinesisStreamingSourceOptions.add_member(:add_idle_time_between_reads, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "AddIdleTimeBetweenReads"))
    KinesisStreamingSourceOptions.add_member(:idle_time_between_reads_in_ms, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "IdleTimeBetweenReadsInMs"))
    KinesisStreamingSourceOptions.add_member(:describe_shard_interval, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "DescribeShardInterval"))
    KinesisStreamingSourceOptions.add_member(:num_retries, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "NumRetries"))
    KinesisStreamingSourceOptions.add_member(:retry_interval_ms, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "RetryIntervalMs"))
    KinesisStreamingSourceOptions.add_member(:max_retry_interval_ms, Shapes::ShapeRef.new(shape: BoxedNonNegativeLong, location_name: "MaxRetryIntervalMs"))
    KinesisStreamingSourceOptions.add_member(:avoid_empty_batches, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "AvoidEmptyBatches"))
    KinesisStreamingSourceOptions.add_member(:stream_arn, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "StreamArn"))
    KinesisStreamingSourceOptions.add_member(:role_arn, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "RoleArn"))
    KinesisStreamingSourceOptions.add_member(:role_session_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "RoleSessionName"))
    KinesisStreamingSourceOptions.add_member(:add_record_timestamp, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "AddRecordTimestamp"))
    KinesisStreamingSourceOptions.add_member(:emit_consumer_lag_metrics, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "EmitConsumerLagMetrics"))
    KinesisStreamingSourceOptions.add_member(:starting_timestamp, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "StartingTimestamp"))
    KinesisStreamingSourceOptions.struct_class = Types::KinesisStreamingSourceOptions

    LabelingSetGenerationTaskRunProperties.add_member(:output_s3_path, Shapes::ShapeRef.new(shape: UriString, location_name: "OutputS3Path"))
    LabelingSetGenerationTaskRunProperties.struct_class = Types::LabelingSetGenerationTaskRunProperties

    LakeFormationConfiguration.add_member(:use_lake_formation_credentials, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "UseLakeFormationCredentials"))
    LakeFormationConfiguration.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    LakeFormationConfiguration.struct_class = Types::LakeFormationConfiguration

    LastActiveDefinition.add_member(:description, Shapes::ShapeRef.new(shape: Generic512CharString, location_name: "Description"))
    LastActiveDefinition.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "LastModifiedOn"))
    LastActiveDefinition.add_member(:parameter_spec, Shapes::ShapeRef.new(shape: BlueprintParameterSpec, location_name: "ParameterSpec"))
    LastActiveDefinition.add_member(:blueprint_location, Shapes::ShapeRef.new(shape: GenericString, location_name: "BlueprintLocation"))
    LastActiveDefinition.add_member(:blueprint_service_location, Shapes::ShapeRef.new(shape: GenericString, location_name: "BlueprintServiceLocation"))
    LastActiveDefinition.struct_class = Types::LastActiveDefinition

    LastCrawlInfo.add_member(:status, Shapes::ShapeRef.new(shape: LastCrawlStatus, location_name: "Status"))
    LastCrawlInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    LastCrawlInfo.add_member(:log_group, Shapes::ShapeRef.new(shape: LogGroup, location_name: "LogGroup"))
    LastCrawlInfo.add_member(:log_stream, Shapes::ShapeRef.new(shape: LogStream, location_name: "LogStream"))
    LastCrawlInfo.add_member(:message_prefix, Shapes::ShapeRef.new(shape: MessagePrefix, location_name: "MessagePrefix"))
    LastCrawlInfo.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    LastCrawlInfo.struct_class = Types::LastCrawlInfo

    LimitedPathList.member = Shapes::ShapeRef.new(shape: LimitedStringList)

    LimitedStringList.member = Shapes::ShapeRef.new(shape: GenericLimitedString)

    LineageConfiguration.add_member(:crawler_lineage_settings, Shapes::ShapeRef.new(shape: CrawlerLineageSettings, location_name: "CrawlerLineageSettings"))
    LineageConfiguration.struct_class = Types::LineageConfiguration

    ListBlueprintsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListBlueprintsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OrchestrationPageSize25, location_name: "MaxResults"))
    ListBlueprintsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListBlueprintsRequest.struct_class = Types::ListBlueprintsRequest

    ListBlueprintsResponse.add_member(:blueprints, Shapes::ShapeRef.new(shape: BlueprintNames, location_name: "Blueprints"))
    ListBlueprintsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListBlueprintsResponse.struct_class = Types::ListBlueprintsResponse

    ListColumnStatisticsTaskRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListColumnStatisticsTaskRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListColumnStatisticsTaskRunsRequest.struct_class = Types::ListColumnStatisticsTaskRunsRequest

    ListColumnStatisticsTaskRunsResponse.add_member(:column_statistics_task_run_ids, Shapes::ShapeRef.new(shape: ColumnStatisticsTaskRunIdList, location_name: "ColumnStatisticsTaskRunIds"))
    ListColumnStatisticsTaskRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListColumnStatisticsTaskRunsResponse.struct_class = Types::ListColumnStatisticsTaskRunsResponse

    ListConnectionTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListConnectionTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionTypesRequest.struct_class = Types::ListConnectionTypesRequest

    ListConnectionTypesResponse.add_member(:connection_types, Shapes::ShapeRef.new(shape: ConnectionTypeList, location_name: "ConnectionTypes"))
    ListConnectionTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionTypesResponse.struct_class = Types::ListConnectionTypesResponse

    ListCrawlersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListCrawlersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCrawlersRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListCrawlersRequest.struct_class = Types::ListCrawlersRequest

    ListCrawlersResponse.add_member(:crawler_names, Shapes::ShapeRef.new(shape: CrawlerNameList, location_name: "CrawlerNames"))
    ListCrawlersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCrawlersResponse.struct_class = Types::ListCrawlersResponse

    ListCrawlsRequest.add_member(:crawler_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "CrawlerName"))
    ListCrawlsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListCrawlsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: CrawlsFilterList, location_name: "Filters"))
    ListCrawlsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCrawlsRequest.struct_class = Types::ListCrawlsRequest

    ListCrawlsResponse.add_member(:crawls, Shapes::ShapeRef.new(shape: CrawlerHistoryList, location_name: "Crawls"))
    ListCrawlsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCrawlsResponse.struct_class = Types::ListCrawlsResponse

    ListCustomEntityTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListCustomEntityTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListCustomEntityTypesRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListCustomEntityTypesRequest.struct_class = Types::ListCustomEntityTypesRequest

    ListCustomEntityTypesResponse.add_member(:custom_entity_types, Shapes::ShapeRef.new(shape: CustomEntityTypes, location_name: "CustomEntityTypes"))
    ListCustomEntityTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListCustomEntityTypesResponse.struct_class = Types::ListCustomEntityTypesResponse

    ListDataQualityResultsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DataQualityResultFilterCriteria, location_name: "Filter"))
    ListDataQualityResultsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityResultsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListDataQualityResultsRequest.struct_class = Types::ListDataQualityResultsRequest

    ListDataQualityResultsResponse.add_member(:results, Shapes::ShapeRef.new(shape: DataQualityResultDescriptionList, required: true, location_name: "Results"))
    ListDataQualityResultsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityResultsResponse.struct_class = Types::ListDataQualityResultsResponse

    ListDataQualityRuleRecommendationRunsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DataQualityRuleRecommendationRunFilter, location_name: "Filter"))
    ListDataQualityRuleRecommendationRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityRuleRecommendationRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListDataQualityRuleRecommendationRunsRequest.struct_class = Types::ListDataQualityRuleRecommendationRunsRequest

    ListDataQualityRuleRecommendationRunsResponse.add_member(:runs, Shapes::ShapeRef.new(shape: DataQualityRuleRecommendationRunList, location_name: "Runs"))
    ListDataQualityRuleRecommendationRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityRuleRecommendationRunsResponse.struct_class = Types::ListDataQualityRuleRecommendationRunsResponse

    ListDataQualityRulesetEvaluationRunsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DataQualityRulesetEvaluationRunFilter, location_name: "Filter"))
    ListDataQualityRulesetEvaluationRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityRulesetEvaluationRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListDataQualityRulesetEvaluationRunsRequest.struct_class = Types::ListDataQualityRulesetEvaluationRunsRequest

    ListDataQualityRulesetEvaluationRunsResponse.add_member(:runs, Shapes::ShapeRef.new(shape: DataQualityRulesetEvaluationRunList, location_name: "Runs"))
    ListDataQualityRulesetEvaluationRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityRulesetEvaluationRunsResponse.struct_class = Types::ListDataQualityRulesetEvaluationRunsResponse

    ListDataQualityRulesetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityRulesetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListDataQualityRulesetsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DataQualityRulesetFilterCriteria, location_name: "Filter"))
    ListDataQualityRulesetsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListDataQualityRulesetsRequest.struct_class = Types::ListDataQualityRulesetsRequest

    ListDataQualityRulesetsResponse.add_member(:rulesets, Shapes::ShapeRef.new(shape: DataQualityRulesetList, location_name: "Rulesets"))
    ListDataQualityRulesetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityRulesetsResponse.struct_class = Types::ListDataQualityRulesetsResponse

    ListDataQualityStatisticAnnotationsRequest.add_member(:statistic_id, Shapes::ShapeRef.new(shape: HashString, location_name: "StatisticId"))
    ListDataQualityStatisticAnnotationsRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ProfileId"))
    ListDataQualityStatisticAnnotationsRequest.add_member(:timestamp_filter, Shapes::ShapeRef.new(shape: TimestampFilter, location_name: "TimestampFilter"))
    ListDataQualityStatisticAnnotationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListDataQualityStatisticAnnotationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityStatisticAnnotationsRequest.struct_class = Types::ListDataQualityStatisticAnnotationsRequest

    ListDataQualityStatisticAnnotationsResponse.add_member(:annotations, Shapes::ShapeRef.new(shape: AnnotationList, location_name: "Annotations"))
    ListDataQualityStatisticAnnotationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityStatisticAnnotationsResponse.struct_class = Types::ListDataQualityStatisticAnnotationsResponse

    ListDataQualityStatisticsRequest.add_member(:statistic_id, Shapes::ShapeRef.new(shape: HashString, location_name: "StatisticId"))
    ListDataQualityStatisticsRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ProfileId"))
    ListDataQualityStatisticsRequest.add_member(:timestamp_filter, Shapes::ShapeRef.new(shape: TimestampFilter, location_name: "TimestampFilter"))
    ListDataQualityStatisticsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListDataQualityStatisticsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityStatisticsRequest.struct_class = Types::ListDataQualityStatisticsRequest

    ListDataQualityStatisticsResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: StatisticSummaryList, location_name: "Statistics"))
    ListDataQualityStatisticsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDataQualityStatisticsResponse.struct_class = Types::ListDataQualityStatisticsResponse

    ListDevEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListDevEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListDevEndpointsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListDevEndpointsRequest.struct_class = Types::ListDevEndpointsRequest

    ListDevEndpointsResponse.add_member(:dev_endpoint_names, Shapes::ShapeRef.new(shape: DevEndpointNameList, location_name: "DevEndpointNames"))
    ListDevEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListDevEndpointsResponse.struct_class = Types::ListDevEndpointsResponse

    ListEntitiesRequest.add_member(:connection_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionName"))
    ListEntitiesRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    ListEntitiesRequest.add_member(:parent_entity_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "ParentEntityName"))
    ListEntitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEntitiesRequest.add_member(:data_store_api_version, Shapes::ShapeRef.new(shape: ApiVersion, location_name: "DataStoreApiVersion"))
    ListEntitiesRequest.struct_class = Types::ListEntitiesRequest

    ListEntitiesResponse.add_member(:entities, Shapes::ShapeRef.new(shape: EntityList, location_name: "Entities"))
    ListEntitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEntitiesResponse.struct_class = Types::ListEntitiesResponse

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

    ListOfString.member = Shapes::ShapeRef.new(shape: String)

    ListRegistriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsNumber, location_name: "MaxResults"))
    ListRegistriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: SchemaRegistryTokenString, location_name: "NextToken"))
    ListRegistriesInput.struct_class = Types::ListRegistriesInput

    ListRegistriesResponse.add_member(:registries, Shapes::ShapeRef.new(shape: RegistryListDefinition, location_name: "Registries"))
    ListRegistriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: SchemaRegistryTokenString, location_name: "NextToken"))
    ListRegistriesResponse.struct_class = Types::ListRegistriesResponse

    ListSchemaVersionsInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, required: true, location_name: "SchemaId"))
    ListSchemaVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsNumber, location_name: "MaxResults"))
    ListSchemaVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: SchemaRegistryTokenString, location_name: "NextToken"))
    ListSchemaVersionsInput.struct_class = Types::ListSchemaVersionsInput

    ListSchemaVersionsResponse.add_member(:schemas, Shapes::ShapeRef.new(shape: SchemaVersionList, location_name: "Schemas"))
    ListSchemaVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: SchemaRegistryTokenString, location_name: "NextToken"))
    ListSchemaVersionsResponse.struct_class = Types::ListSchemaVersionsResponse

    ListSchemasInput.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "RegistryId"))
    ListSchemasInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsNumber, location_name: "MaxResults"))
    ListSchemasInput.add_member(:next_token, Shapes::ShapeRef.new(shape: SchemaRegistryTokenString, location_name: "NextToken"))
    ListSchemasInput.struct_class = Types::ListSchemasInput

    ListSchemasResponse.add_member(:schemas, Shapes::ShapeRef.new(shape: SchemaListDefinition, location_name: "Schemas"))
    ListSchemasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: SchemaRegistryTokenString, location_name: "NextToken"))
    ListSchemasResponse.struct_class = Types::ListSchemasResponse

    ListSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: OrchestrationToken, location_name: "NextToken"))
    ListSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListSessionsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListSessionsRequest.add_member(:request_origin, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "RequestOrigin"))
    ListSessionsRequest.struct_class = Types::ListSessionsRequest

    ListSessionsResponse.add_member(:ids, Shapes::ShapeRef.new(shape: SessionIdList, location_name: "Ids"))
    ListSessionsResponse.add_member(:sessions, Shapes::ShapeRef.new(shape: SessionList, location_name: "Sessions"))
    ListSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: OrchestrationToken, location_name: "NextToken"))
    ListSessionsResponse.struct_class = Types::ListSessionsResponse

    ListStatementsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "SessionId"))
    ListStatementsRequest.add_member(:request_origin, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "RequestOrigin"))
    ListStatementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: OrchestrationToken, location_name: "NextToken"))
    ListStatementsRequest.struct_class = Types::ListStatementsRequest

    ListStatementsResponse.add_member(:statements, Shapes::ShapeRef.new(shape: StatementList, location_name: "Statements"))
    ListStatementsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: OrchestrationToken, location_name: "NextToken"))
    ListStatementsResponse.struct_class = Types::ListStatementsResponse

    ListTableOptimizerRunsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "CatalogId"))
    ListTableOptimizerRunsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    ListTableOptimizerRunsRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    ListTableOptimizerRunsRequest.add_member(:type, Shapes::ShapeRef.new(shape: TableOptimizerType, required: true, location_name: "Type"))
    ListTableOptimizerRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListTableOptimizerRunsTokenResults, location_name: "MaxResults"))
    ListTableOptimizerRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListTableOptimizerRunsToken, location_name: "NextToken"))
    ListTableOptimizerRunsRequest.struct_class = Types::ListTableOptimizerRunsRequest

    ListTableOptimizerRunsResponse.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    ListTableOptimizerRunsResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DatabaseName"))
    ListTableOptimizerRunsResponse.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, location_name: "TableName"))
    ListTableOptimizerRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ListTableOptimizerRunsToken, location_name: "NextToken"))
    ListTableOptimizerRunsResponse.add_member(:table_optimizer_runs, Shapes::ShapeRef.new(shape: TableOptimizerRuns, location_name: "TableOptimizerRuns"))
    ListTableOptimizerRunsResponse.struct_class = Types::ListTableOptimizerRunsResponse

    ListTriggersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListTriggersRequest.add_member(:dependent_job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DependentJobName"))
    ListTriggersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OrchestrationPageSize200, location_name: "MaxResults"))
    ListTriggersRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    ListTriggersRequest.struct_class = Types::ListTriggersRequest

    ListTriggersResponse.add_member(:trigger_names, Shapes::ShapeRef.new(shape: TriggerNameList, location_name: "TriggerNames"))
    ListTriggersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListTriggersResponse.struct_class = Types::ListTriggersResponse

    ListUsageProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: OrchestrationToken, location_name: "NextToken"))
    ListUsageProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OrchestrationPageSize200, location_name: "MaxResults"))
    ListUsageProfilesRequest.struct_class = Types::ListUsageProfilesRequest

    ListUsageProfilesResponse.add_member(:profiles, Shapes::ShapeRef.new(shape: UsageProfileDefinitionList, location_name: "Profiles"))
    ListUsageProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: OrchestrationToken, location_name: "NextToken"))
    ListUsageProfilesResponse.struct_class = Types::ListUsageProfilesResponse

    ListWorkflowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListWorkflowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OrchestrationPageSize25, location_name: "MaxResults"))
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

    LocationStringList.member = Shapes::ShapeRef.new(shape: LocationString)

    LongColumnStatisticsData.add_member(:minimum_value, Shapes::ShapeRef.new(shape: Long, location_name: "MinimumValue"))
    LongColumnStatisticsData.add_member(:maximum_value, Shapes::ShapeRef.new(shape: Long, location_name: "MaximumValue"))
    LongColumnStatisticsData.add_member(:number_of_nulls, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfNulls"))
    LongColumnStatisticsData.add_member(:number_of_distinct_values, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfDistinctValues"))
    LongColumnStatisticsData.struct_class = Types::LongColumnStatisticsData

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
    MLTransform.add_member(:transform_encryption, Shapes::ShapeRef.new(shape: TransformEncryption, location_name: "TransformEncryption"))
    MLTransform.struct_class = Types::MLTransform

    MLTransformNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    MLTransformNotReadyException.struct_class = Types::MLTransformNotReadyException

    MLUserDataEncryption.add_member(:ml_user_data_encryption_mode, Shapes::ShapeRef.new(shape: MLUserDataEncryptionModeString, required: true, location_name: "MlUserDataEncryptionMode"))
    MLUserDataEncryption.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NameString, location_name: "KmsKeyId"))
    MLUserDataEncryption.struct_class = Types::MLUserDataEncryption

    ManyInputs.member = Shapes::ShapeRef.new(shape: NodeId)

    MapValue.key = Shapes::ShapeRef.new(shape: GenericString)
    MapValue.value = Shapes::ShapeRef.new(shape: GenericString)

    Mapping.add_member(:to_key, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "ToKey"))
    Mapping.add_member(:from_path, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, location_name: "FromPath"))
    Mapping.add_member(:from_type, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "FromType"))
    Mapping.add_member(:to_type, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "ToType"))
    Mapping.add_member(:dropped, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "Dropped"))
    Mapping.add_member(:children, Shapes::ShapeRef.new(shape: Mappings, location_name: "Children"))
    Mapping.struct_class = Types::Mapping

    MappingEntry.add_member(:source_table, Shapes::ShapeRef.new(shape: TableName, location_name: "SourceTable"))
    MappingEntry.add_member(:source_path, Shapes::ShapeRef.new(shape: SchemaPathString, location_name: "SourcePath"))
    MappingEntry.add_member(:source_type, Shapes::ShapeRef.new(shape: FieldType, location_name: "SourceType"))
    MappingEntry.add_member(:target_table, Shapes::ShapeRef.new(shape: TableName, location_name: "TargetTable"))
    MappingEntry.add_member(:target_path, Shapes::ShapeRef.new(shape: SchemaPathString, location_name: "TargetPath"))
    MappingEntry.add_member(:target_type, Shapes::ShapeRef.new(shape: FieldType, location_name: "TargetType"))
    MappingEntry.struct_class = Types::MappingEntry

    MappingList.member = Shapes::ShapeRef.new(shape: MappingEntry)

    Mappings.member = Shapes::ShapeRef.new(shape: Mapping)

    MatchCriteria.member = Shapes::ShapeRef.new(shape: NameString)

    Merge.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    Merge.add_member(:inputs, Shapes::ShapeRef.new(shape: TwoInputs, required: true, location_name: "Inputs"))
    Merge.add_member(:source, Shapes::ShapeRef.new(shape: NodeId, required: true, location_name: "Source"))
    Merge.add_member(:primary_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, required: true, location_name: "PrimaryKeys"))
    Merge.struct_class = Types::Merge

    MetadataInfo.add_member(:metadata_value, Shapes::ShapeRef.new(shape: MetadataValueString, location_name: "MetadataValue"))
    MetadataInfo.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "CreatedTime"))
    MetadataInfo.add_member(:other_metadata_value_list, Shapes::ShapeRef.new(shape: OtherMetadataValueList, location_name: "OtherMetadataValueList"))
    MetadataInfo.struct_class = Types::MetadataInfo

    MetadataInfoMap.key = Shapes::ShapeRef.new(shape: MetadataKeyString)
    MetadataInfoMap.value = Shapes::ShapeRef.new(shape: MetadataInfo)

    MetadataKeyValuePair.add_member(:metadata_key, Shapes::ShapeRef.new(shape: MetadataKeyString, location_name: "MetadataKey"))
    MetadataKeyValuePair.add_member(:metadata_value, Shapes::ShapeRef.new(shape: MetadataValueString, location_name: "MetadataValue"))
    MetadataKeyValuePair.struct_class = Types::MetadataKeyValuePair

    MetadataList.member = Shapes::ShapeRef.new(shape: MetadataKeyValuePair)

    MetricBasedObservation.add_member(:metric_name, Shapes::ShapeRef.new(shape: NameString, location_name: "MetricName"))
    MetricBasedObservation.add_member(:statistic_id, Shapes::ShapeRef.new(shape: HashString, location_name: "StatisticId"))
    MetricBasedObservation.add_member(:metric_values, Shapes::ShapeRef.new(shape: DataQualityMetricValues, location_name: "MetricValues"))
    MetricBasedObservation.add_member(:new_rules, Shapes::ShapeRef.new(shape: NewRules, location_name: "NewRules"))
    MetricBasedObservation.struct_class = Types::MetricBasedObservation

    MicrosoftSQLServerCatalogSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    MicrosoftSQLServerCatalogSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    MicrosoftSQLServerCatalogSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    MicrosoftSQLServerCatalogSource.struct_class = Types::MicrosoftSQLServerCatalogSource

    MicrosoftSQLServerCatalogTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    MicrosoftSQLServerCatalogTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    MicrosoftSQLServerCatalogTarget.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    MicrosoftSQLServerCatalogTarget.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    MicrosoftSQLServerCatalogTarget.struct_class = Types::MicrosoftSQLServerCatalogTarget

    ModifyIntegrationRequest.add_member(:integration_identifier, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationIdentifier"))
    ModifyIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: "Description"))
    ModifyIntegrationRequest.add_member(:data_filter, Shapes::ShapeRef.new(shape: String2048, location_name: "DataFilter"))
    ModifyIntegrationRequest.add_member(:integration_name, Shapes::ShapeRef.new(shape: String128, location_name: "IntegrationName"))
    ModifyIntegrationRequest.struct_class = Types::ModifyIntegrationRequest

    ModifyIntegrationResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "SourceArn"))
    ModifyIntegrationResponse.add_member(:target_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "TargetArn"))
    ModifyIntegrationResponse.add_member(:integration_name, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationName"))
    ModifyIntegrationResponse.add_member(:description, Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: "Description"))
    ModifyIntegrationResponse.add_member(:integration_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "IntegrationArn"))
    ModifyIntegrationResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String2048, location_name: "KmsKeyId"))
    ModifyIntegrationResponse.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: IntegrationAdditionalEncryptionContextMap, location_name: "AdditionalEncryptionContext"))
    ModifyIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: IntegrationTagsList, location_name: "Tags"))
    ModifyIntegrationResponse.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, required: true, location_name: "Status"))
    ModifyIntegrationResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: IntegrationTimestamp, required: true, location_name: "CreateTime"))
    ModifyIntegrationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: "Errors"))
    ModifyIntegrationResponse.add_member(:data_filter, Shapes::ShapeRef.new(shape: String2048, location_name: "DataFilter"))
    ModifyIntegrationResponse.struct_class = Types::ModifyIntegrationResponse

    MongoDBTarget.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    MongoDBTarget.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    MongoDBTarget.add_member(:scan_all, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "ScanAll"))
    MongoDBTarget.struct_class = Types::MongoDBTarget

    MongoDBTargetList.member = Shapes::ShapeRef.new(shape: MongoDBTarget)

    MySQLCatalogSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    MySQLCatalogSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    MySQLCatalogSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    MySQLCatalogSource.struct_class = Types::MySQLCatalogSource

    MySQLCatalogTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    MySQLCatalogTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    MySQLCatalogTarget.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    MySQLCatalogTarget.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    MySQLCatalogTarget.struct_class = Types::MySQLCatalogTarget

    NameStringList.member = Shapes::ShapeRef.new(shape: NameString)

    NewRules.member = Shapes::ShapeRef.new(shape: NameString)

    NoScheduleException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    NoScheduleException.struct_class = Types::NoScheduleException

    Node.add_member(:type, Shapes::ShapeRef.new(shape: NodeType, location_name: "Type"))
    Node.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    Node.add_member(:unique_id, Shapes::ShapeRef.new(shape: NameString, location_name: "UniqueId"))
    Node.add_member(:trigger_details, Shapes::ShapeRef.new(shape: TriggerNodeDetails, location_name: "TriggerDetails"))
    Node.add_member(:job_details, Shapes::ShapeRef.new(shape: JobNodeDetails, location_name: "JobDetails"))
    Node.add_member(:crawler_details, Shapes::ShapeRef.new(shape: CrawlerNodeDetails, location_name: "CrawlerDetails"))
    Node.struct_class = Types::Node

    NodeIdList.member = Shapes::ShapeRef.new(shape: NameString)

    NodeList.member = Shapes::ShapeRef.new(shape: Node)

    NotificationProperty.add_member(:notify_delay_after, Shapes::ShapeRef.new(shape: NotifyDelayAfter, location_name: "NotifyDelayAfter"))
    NotificationProperty.struct_class = Types::NotificationProperty

    NullCheckBoxList.add_member(:is_empty, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "IsEmpty"))
    NullCheckBoxList.add_member(:is_null_string, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "IsNullString"))
    NullCheckBoxList.add_member(:is_neg_one, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "IsNegOne"))
    NullCheckBoxList.struct_class = Types::NullCheckBoxList

    NullValueField.add_member(:value, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Value"))
    NullValueField.add_member(:datatype, Shapes::ShapeRef.new(shape: Datatype, required: true, location_name: "Datatype"))
    NullValueField.struct_class = Types::NullValueField

    NullValueFields.member = Shapes::ShapeRef.new(shape: NullValueField)

    OAuth2ClientApplication.add_member(:user_managed_client_application_client_id, Shapes::ShapeRef.new(shape: UserManagedClientApplicationClientId, location_name: "UserManagedClientApplicationClientId"))
    OAuth2ClientApplication.add_member(:aws_managed_client_application_reference, Shapes::ShapeRef.new(shape: AWSManagedClientApplicationReference, location_name: "AWSManagedClientApplicationReference"))
    OAuth2ClientApplication.struct_class = Types::OAuth2ClientApplication

    OAuth2Credentials.add_member(:user_managed_client_application_client_secret, Shapes::ShapeRef.new(shape: UserManagedClientApplicationClientSecret, location_name: "UserManagedClientApplicationClientSecret"))
    OAuth2Credentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "AccessToken"))
    OAuth2Credentials.add_member(:refresh_token, Shapes::ShapeRef.new(shape: RefreshToken, location_name: "RefreshToken"))
    OAuth2Credentials.add_member(:jwt_token, Shapes::ShapeRef.new(shape: JwtToken, location_name: "JwtToken"))
    OAuth2Credentials.struct_class = Types::OAuth2Credentials

    OAuth2Properties.add_member(:o_auth_2_grant_type, Shapes::ShapeRef.new(shape: OAuth2GrantType, location_name: "OAuth2GrantType"))
    OAuth2Properties.add_member(:o_auth_2_client_application, Shapes::ShapeRef.new(shape: OAuth2ClientApplication, location_name: "OAuth2ClientApplication"))
    OAuth2Properties.add_member(:token_url, Shapes::ShapeRef.new(shape: TokenUrl, location_name: "TokenUrl"))
    OAuth2Properties.add_member(:token_url_parameters_map, Shapes::ShapeRef.new(shape: TokenUrlParametersMap, location_name: "TokenUrlParametersMap"))
    OAuth2Properties.struct_class = Types::OAuth2Properties

    OAuth2PropertiesInput.add_member(:o_auth_2_grant_type, Shapes::ShapeRef.new(shape: OAuth2GrantType, location_name: "OAuth2GrantType"))
    OAuth2PropertiesInput.add_member(:o_auth_2_client_application, Shapes::ShapeRef.new(shape: OAuth2ClientApplication, location_name: "OAuth2ClientApplication"))
    OAuth2PropertiesInput.add_member(:token_url, Shapes::ShapeRef.new(shape: TokenUrl, location_name: "TokenUrl"))
    OAuth2PropertiesInput.add_member(:token_url_parameters_map, Shapes::ShapeRef.new(shape: TokenUrlParametersMap, location_name: "TokenUrlParametersMap"))
    OAuth2PropertiesInput.add_member(:authorization_code_properties, Shapes::ShapeRef.new(shape: AuthorizationCodeProperties, location_name: "AuthorizationCodeProperties"))
    OAuth2PropertiesInput.add_member(:o_auth_2_credentials, Shapes::ShapeRef.new(shape: OAuth2Credentials, location_name: "OAuth2Credentials"))
    OAuth2PropertiesInput.struct_class = Types::OAuth2PropertiesInput

    OneInput.member = Shapes::ShapeRef.new(shape: NodeId)

    OpenTableFormatInput.add_member(:iceberg_input, Shapes::ShapeRef.new(shape: IcebergInput, location_name: "IcebergInput"))
    OpenTableFormatInput.struct_class = Types::OpenTableFormatInput

    OperationNotSupportedException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    OperationNotSupportedException.struct_class = Types::OperationNotSupportedException

    OperationTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    OperationTimeoutException.struct_class = Types::OperationTimeoutException

    Option.add_member(:value, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Value"))
    Option.add_member(:label, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Label"))
    Option.add_member(:description, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Description"))
    Option.struct_class = Types::Option

    OptionList.member = Shapes::ShapeRef.new(shape: Option)

    OracleSQLCatalogSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    OracleSQLCatalogSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    OracleSQLCatalogSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    OracleSQLCatalogSource.struct_class = Types::OracleSQLCatalogSource

    OracleSQLCatalogTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    OracleSQLCatalogTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    OracleSQLCatalogTarget.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    OracleSQLCatalogTarget.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    OracleSQLCatalogTarget.struct_class = Types::OracleSQLCatalogTarget

    OrchestrationArgumentsMap.key = Shapes::ShapeRef.new(shape: OrchestrationNameString)
    OrchestrationArgumentsMap.value = Shapes::ShapeRef.new(shape: OrchestrationArgumentsValue)

    OrchestrationStringList.member = Shapes::ShapeRef.new(shape: GenericString)

    Order.add_member(:column, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Column"))
    Order.add_member(:sort_order, Shapes::ShapeRef.new(shape: IntegerFlag, required: true, location_name: "SortOrder"))
    Order.struct_class = Types::Order

    OrderList.member = Shapes::ShapeRef.new(shape: Order)

    OrphanFileDeletionConfiguration.add_member(:iceberg_configuration, Shapes::ShapeRef.new(shape: IcebergOrphanFileDeletionConfiguration, location_name: "icebergConfiguration"))
    OrphanFileDeletionConfiguration.struct_class = Types::OrphanFileDeletionConfiguration

    OrphanFileDeletionMetrics.add_member(:iceberg_metrics, Shapes::ShapeRef.new(shape: IcebergOrphanFileDeletionMetrics, location_name: "IcebergMetrics"))
    OrphanFileDeletionMetrics.struct_class = Types::OrphanFileDeletionMetrics

    OtherMetadataValueList.member = Shapes::ShapeRef.new(shape: OtherMetadataValueListItem)

    OtherMetadataValueListItem.add_member(:metadata_value, Shapes::ShapeRef.new(shape: MetadataValueString, location_name: "MetadataValue"))
    OtherMetadataValueListItem.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "CreatedTime"))
    OtherMetadataValueListItem.struct_class = Types::OtherMetadataValueListItem

    PIIDetection.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    PIIDetection.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    PIIDetection.add_member(:pii_type, Shapes::ShapeRef.new(shape: PiiType, required: true, location_name: "PiiType"))
    PIIDetection.add_member(:entity_types_to_detect, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, required: true, location_name: "EntityTypesToDetect"))
    PIIDetection.add_member(:output_column_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "OutputColumnName"))
    PIIDetection.add_member(:sample_fraction, Shapes::ShapeRef.new(shape: BoxedDoubleFraction, location_name: "SampleFraction"))
    PIIDetection.add_member(:threshold_fraction, Shapes::ShapeRef.new(shape: BoxedDoubleFraction, location_name: "ThresholdFraction"))
    PIIDetection.add_member(:mask_value, Shapes::ShapeRef.new(shape: MaskValue, location_name: "MaskValue"))
    PIIDetection.struct_class = Types::PIIDetection

    ParameterMap.key = Shapes::ShapeRef.new(shape: ParameterName)
    ParameterMap.value = Shapes::ShapeRef.new(shape: ParameterValue)

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
    Partition.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    Partition.struct_class = Types::Partition

    PartitionError.add_member(:partition_values, Shapes::ShapeRef.new(shape: ValueStringList, location_name: "PartitionValues"))
    PartitionError.add_member(:error_detail, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "ErrorDetail"))
    PartitionError.struct_class = Types::PartitionError

    PartitionErrors.member = Shapes::ShapeRef.new(shape: PartitionError)

    PartitionIndex.add_member(:keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "Keys"))
    PartitionIndex.add_member(:index_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "IndexName"))
    PartitionIndex.struct_class = Types::PartitionIndex

    PartitionIndexDescriptor.add_member(:index_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "IndexName"))
    PartitionIndexDescriptor.add_member(:keys, Shapes::ShapeRef.new(shape: KeySchemaElementList, required: true, location_name: "Keys"))
    PartitionIndexDescriptor.add_member(:index_status, Shapes::ShapeRef.new(shape: PartitionIndexStatus, required: true, location_name: "IndexStatus"))
    PartitionIndexDescriptor.add_member(:backfill_errors, Shapes::ShapeRef.new(shape: BackfillErrors, location_name: "BackfillErrors"))
    PartitionIndexDescriptor.struct_class = Types::PartitionIndexDescriptor

    PartitionIndexDescriptorList.member = Shapes::ShapeRef.new(shape: PartitionIndexDescriptor)

    PartitionIndexList.member = Shapes::ShapeRef.new(shape: PartitionIndex)

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

    PermissionTypeList.member = Shapes::ShapeRef.new(shape: PermissionType)

    PermissionTypeMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    PermissionTypeMismatchException.struct_class = Types::PermissionTypeMismatchException

    PhysicalConnectionRequirements.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NameString, location_name: "SubnetId"))
    PhysicalConnectionRequirements.add_member(:security_group_id_list, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "SecurityGroupIdList"))
    PhysicalConnectionRequirements.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NameString, location_name: "AvailabilityZone"))
    PhysicalConnectionRequirements.struct_class = Types::PhysicalConnectionRequirements

    PostgreSQLCatalogSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    PostgreSQLCatalogSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    PostgreSQLCatalogSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    PostgreSQLCatalogSource.struct_class = Types::PostgreSQLCatalogSource

    PostgreSQLCatalogTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    PostgreSQLCatalogTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    PostgreSQLCatalogTarget.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    PostgreSQLCatalogTarget.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    PostgreSQLCatalogTarget.struct_class = Types::PostgreSQLCatalogTarget

    Predecessor.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    Predecessor.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    Predecessor.struct_class = Types::Predecessor

    PredecessorList.member = Shapes::ShapeRef.new(shape: Predecessor)

    Predicate.add_member(:logical, Shapes::ShapeRef.new(shape: Logical, location_name: "Logical"))
    Predicate.add_member(:conditions, Shapes::ShapeRef.new(shape: ConditionList, location_name: "Conditions"))
    Predicate.struct_class = Types::Predicate

    PrimaryKeyList.member = Shapes::ShapeRef.new(shape: String128)

    PrincipalPermissions.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: "Principal"))
    PrincipalPermissions.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    PrincipalPermissions.struct_class = Types::PrincipalPermissions

    PrincipalPermissionsList.member = Shapes::ShapeRef.new(shape: PrincipalPermissions)

    ProfileConfiguration.add_member(:session_configuration, Shapes::ShapeRef.new(shape: ConfigurationMap, location_name: "SessionConfiguration"))
    ProfileConfiguration.add_member(:job_configuration, Shapes::ShapeRef.new(shape: ConfigurationMap, location_name: "JobConfiguration"))
    ProfileConfiguration.struct_class = Types::ProfileConfiguration

    PropertiesMap.key = Shapes::ShapeRef.new(shape: PropertyName)
    PropertiesMap.value = Shapes::ShapeRef.new(shape: Property)

    Property.add_member(:name, Shapes::ShapeRef.new(shape: PropertyName, required: true, location_name: "Name"))
    Property.add_member(:description, Shapes::ShapeRef.new(shape: PropertyDescriptionString, required: true, location_name: "Description"))
    Property.add_member(:required, Shapes::ShapeRef.new(shape: Bool, required: true, location_name: "Required"))
    Property.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "DefaultValue"))
    Property.add_member(:property_types, Shapes::ShapeRef.new(shape: PropertyTypes, required: true, location_name: "PropertyTypes"))
    Property.add_member(:allowed_values, Shapes::ShapeRef.new(shape: AllowedValues, location_name: "AllowedValues"))
    Property.add_member(:data_operation_scopes, Shapes::ShapeRef.new(shape: DataOperations, location_name: "DataOperationScopes"))
    Property.struct_class = Types::Property

    PropertyMap.key = Shapes::ShapeRef.new(shape: PropertyKey)
    PropertyMap.value = Shapes::ShapeRef.new(shape: PropertyValue)

    PropertyNameOverrides.key = Shapes::ShapeRef.new(shape: PropertyName)
    PropertyNameOverrides.value = Shapes::ShapeRef.new(shape: PropertyName)

    PropertyPredicate.add_member(:key, Shapes::ShapeRef.new(shape: ValueString, location_name: "Key"))
    PropertyPredicate.add_member(:value, Shapes::ShapeRef.new(shape: ValueString, location_name: "Value"))
    PropertyPredicate.add_member(:comparator, Shapes::ShapeRef.new(shape: Comparator, location_name: "Comparator"))
    PropertyPredicate.struct_class = Types::PropertyPredicate

    PropertyTypes.member = Shapes::ShapeRef.new(shape: PropertyType)

    PublicKeysList.member = Shapes::ShapeRef.new(shape: GenericString)

    PutDataCatalogEncryptionSettingsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    PutDataCatalogEncryptionSettingsRequest.add_member(:data_catalog_encryption_settings, Shapes::ShapeRef.new(shape: DataCatalogEncryptionSettings, required: true, location_name: "DataCatalogEncryptionSettings"))
    PutDataCatalogEncryptionSettingsRequest.struct_class = Types::PutDataCatalogEncryptionSettingsRequest

    PutDataCatalogEncryptionSettingsResponse.struct_class = Types::PutDataCatalogEncryptionSettingsResponse

    PutDataQualityProfileAnnotationRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: HashString, required: true, location_name: "ProfileId"))
    PutDataQualityProfileAnnotationRequest.add_member(:inclusion_annotation, Shapes::ShapeRef.new(shape: InclusionAnnotationValue, required: true, location_name: "InclusionAnnotation"))
    PutDataQualityProfileAnnotationRequest.struct_class = Types::PutDataQualityProfileAnnotationRequest

    PutDataQualityProfileAnnotationResponse.struct_class = Types::PutDataQualityProfileAnnotationResponse

    PutResourcePolicyRequest.add_member(:policy_in_json, Shapes::ShapeRef.new(shape: PolicyJsonString, required: true, location_name: "PolicyInJson"))
    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "ResourceArn"))
    PutResourcePolicyRequest.add_member(:policy_hash_condition, Shapes::ShapeRef.new(shape: HashString, location_name: "PolicyHashCondition"))
    PutResourcePolicyRequest.add_member(:policy_exists_condition, Shapes::ShapeRef.new(shape: ExistCondition, location_name: "PolicyExistsCondition"))
    PutResourcePolicyRequest.add_member(:enable_hybrid, Shapes::ShapeRef.new(shape: EnableHybridValues, location_name: "EnableHybrid"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:policy_hash, Shapes::ShapeRef.new(shape: HashString, location_name: "PolicyHash"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    PutSchemaVersionMetadataInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, location_name: "SchemaId"))
    PutSchemaVersionMetadataInput.add_member(:schema_version_number, Shapes::ShapeRef.new(shape: SchemaVersionNumber, location_name: "SchemaVersionNumber"))
    PutSchemaVersionMetadataInput.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    PutSchemaVersionMetadataInput.add_member(:metadata_key_value, Shapes::ShapeRef.new(shape: MetadataKeyValuePair, required: true, location_name: "MetadataKeyValue"))
    PutSchemaVersionMetadataInput.struct_class = Types::PutSchemaVersionMetadataInput

    PutSchemaVersionMetadataResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "SchemaArn"))
    PutSchemaVersionMetadataResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "SchemaName"))
    PutSchemaVersionMetadataResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    PutSchemaVersionMetadataResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: LatestSchemaVersionBoolean, location_name: "LatestVersion"))
    PutSchemaVersionMetadataResponse.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "VersionNumber"))
    PutSchemaVersionMetadataResponse.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    PutSchemaVersionMetadataResponse.add_member(:metadata_key, Shapes::ShapeRef.new(shape: MetadataKeyString, location_name: "MetadataKey"))
    PutSchemaVersionMetadataResponse.add_member(:metadata_value, Shapes::ShapeRef.new(shape: MetadataValueString, location_name: "MetadataValue"))
    PutSchemaVersionMetadataResponse.struct_class = Types::PutSchemaVersionMetadataResponse

    PutWorkflowRunPropertiesRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    PutWorkflowRunPropertiesRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    PutWorkflowRunPropertiesRequest.add_member(:run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, required: true, location_name: "RunProperties"))
    PutWorkflowRunPropertiesRequest.struct_class = Types::PutWorkflowRunPropertiesRequest

    PutWorkflowRunPropertiesResponse.struct_class = Types::PutWorkflowRunPropertiesResponse

    QuerySchemaVersionMetadataInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, location_name: "SchemaId"))
    QuerySchemaVersionMetadataInput.add_member(:schema_version_number, Shapes::ShapeRef.new(shape: SchemaVersionNumber, location_name: "SchemaVersionNumber"))
    QuerySchemaVersionMetadataInput.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    QuerySchemaVersionMetadataInput.add_member(:metadata_list, Shapes::ShapeRef.new(shape: MetadataList, location_name: "MetadataList"))
    QuerySchemaVersionMetadataInput.add_member(:max_results, Shapes::ShapeRef.new(shape: QuerySchemaVersionMetadataMaxResults, location_name: "MaxResults"))
    QuerySchemaVersionMetadataInput.add_member(:next_token, Shapes::ShapeRef.new(shape: SchemaRegistryTokenString, location_name: "NextToken"))
    QuerySchemaVersionMetadataInput.struct_class = Types::QuerySchemaVersionMetadataInput

    QuerySchemaVersionMetadataResponse.add_member(:metadata_info_map, Shapes::ShapeRef.new(shape: MetadataInfoMap, location_name: "MetadataInfoMap"))
    QuerySchemaVersionMetadataResponse.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    QuerySchemaVersionMetadataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: SchemaRegistryTokenString, location_name: "NextToken"))
    QuerySchemaVersionMetadataResponse.struct_class = Types::QuerySchemaVersionMetadataResponse

    QuerySessionContext.add_member(:query_id, Shapes::ShapeRef.new(shape: HashString, location_name: "QueryId"))
    QuerySessionContext.add_member(:query_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "QueryStartTime"))
    QuerySessionContext.add_member(:cluster_id, Shapes::ShapeRef.new(shape: NullableString, location_name: "ClusterId"))
    QuerySessionContext.add_member(:query_authorization_id, Shapes::ShapeRef.new(shape: HashString, location_name: "QueryAuthorizationId"))
    QuerySessionContext.add_member(:additional_context, Shapes::ShapeRef.new(shape: AdditionalContextMap, location_name: "AdditionalContext"))
    QuerySessionContext.struct_class = Types::QuerySessionContext

    Recipe.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    Recipe.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    Recipe.add_member(:recipe_reference, Shapes::ShapeRef.new(shape: RecipeReference, location_name: "RecipeReference"))
    Recipe.add_member(:recipe_steps, Shapes::ShapeRef.new(shape: RecipeSteps, location_name: "RecipeSteps"))
    Recipe.struct_class = Types::Recipe

    RecipeAction.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "Operation"))
    RecipeAction.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "Parameters"))
    RecipeAction.struct_class = Types::RecipeAction

    RecipeReference.add_member(:recipe_arn, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "RecipeArn"))
    RecipeReference.add_member(:recipe_version, Shapes::ShapeRef.new(shape: RecipeVersion, required: true, location_name: "RecipeVersion"))
    RecipeReference.struct_class = Types::RecipeReference

    RecipeStep.add_member(:action, Shapes::ShapeRef.new(shape: RecipeAction, required: true, location_name: "Action"))
    RecipeStep.add_member(:condition_expressions, Shapes::ShapeRef.new(shape: ConditionExpressionList, location_name: "ConditionExpressions"))
    RecipeStep.struct_class = Types::RecipeStep

    RecipeSteps.member = Shapes::ShapeRef.new(shape: RecipeStep)

    Records.member = Shapes::ShapeRef.new(shape: Record)

    RecrawlPolicy.add_member(:recrawl_behavior, Shapes::ShapeRef.new(shape: RecrawlBehavior, location_name: "RecrawlBehavior"))
    RecrawlPolicy.struct_class = Types::RecrawlPolicy

    RedshiftSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    RedshiftSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    RedshiftSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    RedshiftSource.add_member(:redshift_tmp_dir, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "RedshiftTmpDir"))
    RedshiftSource.add_member(:tmp_dir_iam_role, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "TmpDirIAMRole"))
    RedshiftSource.struct_class = Types::RedshiftSource

    RedshiftTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    RedshiftTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    RedshiftTarget.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    RedshiftTarget.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    RedshiftTarget.add_member(:redshift_tmp_dir, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "RedshiftTmpDir"))
    RedshiftTarget.add_member(:tmp_dir_iam_role, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "TmpDirIAMRole"))
    RedshiftTarget.add_member(:upsert_redshift_options, Shapes::ShapeRef.new(shape: UpsertRedshiftTargetOptions, location_name: "UpsertRedshiftOptions"))
    RedshiftTarget.struct_class = Types::RedshiftTarget

    ReferenceDatasetsList.member = Shapes::ShapeRef.new(shape: NameString)

    RegisterSchemaVersionInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, required: true, location_name: "SchemaId"))
    RegisterSchemaVersionInput.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaDefinitionString, required: true, location_name: "SchemaDefinition"))
    RegisterSchemaVersionInput.struct_class = Types::RegisterSchemaVersionInput

    RegisterSchemaVersionResponse.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    RegisterSchemaVersionResponse.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "VersionNumber"))
    RegisterSchemaVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: SchemaVersionStatus, location_name: "Status"))
    RegisterSchemaVersionResponse.struct_class = Types::RegisterSchemaVersionResponse

    RegistryId.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    RegistryId.add_member(:registry_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "RegistryArn"))
    RegistryId.struct_class = Types::RegistryId

    RegistryListDefinition.member = Shapes::ShapeRef.new(shape: RegistryListItem)

    RegistryListItem.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    RegistryListItem.add_member(:registry_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "RegistryArn"))
    RegistryListItem.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    RegistryListItem.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, location_name: "Status"))
    RegistryListItem.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "CreatedTime"))
    RegistryListItem.add_member(:updated_time, Shapes::ShapeRef.new(shape: UpdatedTimestamp, location_name: "UpdatedTime"))
    RegistryListItem.struct_class = Types::RegistryListItem

    RelationalCatalogSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    RelationalCatalogSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    RelationalCatalogSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    RelationalCatalogSource.struct_class = Types::RelationalCatalogSource

    RemoveSchemaVersionMetadataInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, location_name: "SchemaId"))
    RemoveSchemaVersionMetadataInput.add_member(:schema_version_number, Shapes::ShapeRef.new(shape: SchemaVersionNumber, location_name: "SchemaVersionNumber"))
    RemoveSchemaVersionMetadataInput.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    RemoveSchemaVersionMetadataInput.add_member(:metadata_key_value, Shapes::ShapeRef.new(shape: MetadataKeyValuePair, required: true, location_name: "MetadataKeyValue"))
    RemoveSchemaVersionMetadataInput.struct_class = Types::RemoveSchemaVersionMetadataInput

    RemoveSchemaVersionMetadataResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "SchemaArn"))
    RemoveSchemaVersionMetadataResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "SchemaName"))
    RemoveSchemaVersionMetadataResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    RemoveSchemaVersionMetadataResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: LatestSchemaVersionBoolean, location_name: "LatestVersion"))
    RemoveSchemaVersionMetadataResponse.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "VersionNumber"))
    RemoveSchemaVersionMetadataResponse.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    RemoveSchemaVersionMetadataResponse.add_member(:metadata_key, Shapes::ShapeRef.new(shape: MetadataKeyString, location_name: "MetadataKey"))
    RemoveSchemaVersionMetadataResponse.add_member(:metadata_value, Shapes::ShapeRef.new(shape: MetadataValueString, location_name: "MetadataValue"))
    RemoveSchemaVersionMetadataResponse.struct_class = Types::RemoveSchemaVersionMetadataResponse

    RenameField.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    RenameField.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    RenameField.add_member(:source_path, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, required: true, location_name: "SourcePath"))
    RenameField.add_member(:target_path, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, required: true, location_name: "TargetPath"))
    RenameField.struct_class = Types::RenameField

    ResetJobBookmarkRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "JobName"))
    ResetJobBookmarkRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: RunId, location_name: "RunId"))
    ResetJobBookmarkRequest.struct_class = Types::ResetJobBookmarkRequest

    ResetJobBookmarkResponse.add_member(:job_bookmark_entry, Shapes::ShapeRef.new(shape: JobBookmarkEntry, location_name: "JobBookmarkEntry"))
    ResetJobBookmarkResponse.struct_class = Types::ResetJobBookmarkResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: IntegrationErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ResourceNotReadyException.struct_class = Types::ResourceNotReadyException

    ResourceNumberLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ResourceNumberLimitExceededException.struct_class = Types::ResourceNumberLimitExceededException

    ResourceUri.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceUri.add_member(:uri, Shapes::ShapeRef.new(shape: URI, location_name: "Uri"))
    ResourceUri.struct_class = Types::ResourceUri

    ResourceUriList.member = Shapes::ShapeRef.new(shape: ResourceUri)

    ResumeWorkflowRunRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    ResumeWorkflowRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    ResumeWorkflowRunRequest.add_member(:node_ids, Shapes::ShapeRef.new(shape: NodeIdList, required: true, location_name: "NodeIds"))
    ResumeWorkflowRunRequest.struct_class = Types::ResumeWorkflowRunRequest

    ResumeWorkflowRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    ResumeWorkflowRunResponse.add_member(:node_ids, Shapes::ShapeRef.new(shape: NodeIdList, location_name: "NodeIds"))
    ResumeWorkflowRunResponse.struct_class = Types::ResumeWorkflowRunResponse

    RetentionConfiguration.add_member(:iceberg_configuration, Shapes::ShapeRef.new(shape: IcebergRetentionConfiguration, location_name: "icebergConfiguration"))
    RetentionConfiguration.struct_class = Types::RetentionConfiguration

    RetentionMetrics.add_member(:iceberg_metrics, Shapes::ShapeRef.new(shape: IcebergRetentionMetrics, location_name: "IcebergMetrics"))
    RetentionMetrics.struct_class = Types::RetentionMetrics

    RuleMetricsMap.key = Shapes::ShapeRef.new(shape: NameString)
    RuleMetricsMap.value = Shapes::ShapeRef.new(shape: NullableDouble)

    RulesetNames.member = Shapes::ShapeRef.new(shape: NameString)

    RunIdentifier.add_member(:run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "RunId"))
    RunIdentifier.add_member(:job_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "JobRunId"))
    RunIdentifier.struct_class = Types::RunIdentifier

    RunMetrics.add_member(:number_of_bytes_compacted, Shapes::ShapeRef.new(shape: MessageString, location_name: "NumberOfBytesCompacted"))
    RunMetrics.add_member(:number_of_files_compacted, Shapes::ShapeRef.new(shape: MessageString, location_name: "NumberOfFilesCompacted"))
    RunMetrics.add_member(:number_of_dpus, Shapes::ShapeRef.new(shape: MessageString, location_name: "NumberOfDpus"))
    RunMetrics.add_member(:job_duration_in_hour, Shapes::ShapeRef.new(shape: MessageString, location_name: "JobDurationInHour"))
    RunMetrics.struct_class = Types::RunMetrics

    RunStatementRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "SessionId"))
    RunStatementRequest.add_member(:code, Shapes::ShapeRef.new(shape: OrchestrationStatementCodeString, required: true, location_name: "Code"))
    RunStatementRequest.add_member(:request_origin, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "RequestOrigin"))
    RunStatementRequest.struct_class = Types::RunStatementRequest

    RunStatementResponse.add_member(:id, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "Id"))
    RunStatementResponse.struct_class = Types::RunStatementResponse

    S3CatalogDeltaSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3CatalogDeltaSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    S3CatalogDeltaSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    S3CatalogDeltaSource.add_member(:additional_delta_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalDeltaOptions"))
    S3CatalogDeltaSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    S3CatalogDeltaSource.struct_class = Types::S3CatalogDeltaSource

    S3CatalogHudiSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3CatalogHudiSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    S3CatalogHudiSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    S3CatalogHudiSource.add_member(:additional_hudi_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalHudiOptions"))
    S3CatalogHudiSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    S3CatalogHudiSource.struct_class = Types::S3CatalogHudiSource

    S3CatalogSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3CatalogSource.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    S3CatalogSource.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    S3CatalogSource.add_member(:partition_predicate, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "PartitionPredicate"))
    S3CatalogSource.add_member(:additional_options, Shapes::ShapeRef.new(shape: S3SourceAdditionalOptions, location_name: "AdditionalOptions"))
    S3CatalogSource.struct_class = Types::S3CatalogSource

    S3CatalogTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3CatalogTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    S3CatalogTarget.add_member(:partition_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, location_name: "PartitionKeys"))
    S3CatalogTarget.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    S3CatalogTarget.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    S3CatalogTarget.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: CatalogSchemaChangePolicy, location_name: "SchemaChangePolicy"))
    S3CatalogTarget.struct_class = Types::S3CatalogTarget

    S3CsvSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3CsvSource.add_member(:paths, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, required: true, location_name: "Paths"))
    S3CsvSource.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionType, location_name: "CompressionType"))
    S3CsvSource.add_member(:exclusions, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, location_name: "Exclusions"))
    S3CsvSource.add_member(:group_size, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "GroupSize"))
    S3CsvSource.add_member(:group_files, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "GroupFiles"))
    S3CsvSource.add_member(:recurse, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "Recurse"))
    S3CsvSource.add_member(:max_band, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "MaxBand"))
    S3CsvSource.add_member(:max_files_in_band, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "MaxFilesInBand"))
    S3CsvSource.add_member(:additional_options, Shapes::ShapeRef.new(shape: S3DirectSourceAdditionalOptions, location_name: "AdditionalOptions"))
    S3CsvSource.add_member(:separator, Shapes::ShapeRef.new(shape: Separator, required: true, location_name: "Separator"))
    S3CsvSource.add_member(:escaper, Shapes::ShapeRef.new(shape: EnclosedInStringPropertyWithQuote, location_name: "Escaper"))
    S3CsvSource.add_member(:quote_char, Shapes::ShapeRef.new(shape: QuoteChar, required: true, location_name: "QuoteChar"))
    S3CsvSource.add_member(:multiline, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "Multiline"))
    S3CsvSource.add_member(:with_header, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "WithHeader"))
    S3CsvSource.add_member(:write_header, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "WriteHeader"))
    S3CsvSource.add_member(:skip_first, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "SkipFirst"))
    S3CsvSource.add_member(:optimize_performance, Shapes::ShapeRef.new(shape: BooleanValue, location_name: "OptimizePerformance"))
    S3CsvSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    S3CsvSource.struct_class = Types::S3CsvSource

    S3DeltaCatalogTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3DeltaCatalogTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    S3DeltaCatalogTarget.add_member(:partition_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, location_name: "PartitionKeys"))
    S3DeltaCatalogTarget.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    S3DeltaCatalogTarget.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    S3DeltaCatalogTarget.add_member(:additional_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalOptions"))
    S3DeltaCatalogTarget.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: CatalogSchemaChangePolicy, location_name: "SchemaChangePolicy"))
    S3DeltaCatalogTarget.struct_class = Types::S3DeltaCatalogTarget

    S3DeltaDirectTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3DeltaDirectTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    S3DeltaDirectTarget.add_member(:partition_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, location_name: "PartitionKeys"))
    S3DeltaDirectTarget.add_member(:path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Path"))
    S3DeltaDirectTarget.add_member(:compression, Shapes::ShapeRef.new(shape: DeltaTargetCompressionType, required: true, location_name: "Compression"))
    S3DeltaDirectTarget.add_member(:number_target_partitions, Shapes::ShapeRef.new(shape: NumberTargetPartitionsString, location_name: "NumberTargetPartitions"))
    S3DeltaDirectTarget.add_member(:format, Shapes::ShapeRef.new(shape: TargetFormat, required: true, location_name: "Format"))
    S3DeltaDirectTarget.add_member(:additional_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalOptions"))
    S3DeltaDirectTarget.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: DirectSchemaChangePolicy, location_name: "SchemaChangePolicy"))
    S3DeltaDirectTarget.struct_class = Types::S3DeltaDirectTarget

    S3DeltaSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3DeltaSource.add_member(:paths, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, required: true, location_name: "Paths"))
    S3DeltaSource.add_member(:additional_delta_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalDeltaOptions"))
    S3DeltaSource.add_member(:additional_options, Shapes::ShapeRef.new(shape: S3DirectSourceAdditionalOptions, location_name: "AdditionalOptions"))
    S3DeltaSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    S3DeltaSource.struct_class = Types::S3DeltaSource

    S3DirectSourceAdditionalOptions.add_member(:bounded_size, Shapes::ShapeRef.new(shape: BoxedLong, location_name: "BoundedSize"))
    S3DirectSourceAdditionalOptions.add_member(:bounded_files, Shapes::ShapeRef.new(shape: BoxedLong, location_name: "BoundedFiles"))
    S3DirectSourceAdditionalOptions.add_member(:enable_sample_path, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "EnableSamplePath"))
    S3DirectSourceAdditionalOptions.add_member(:sample_path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "SamplePath"))
    S3DirectSourceAdditionalOptions.struct_class = Types::S3DirectSourceAdditionalOptions

    S3DirectTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3DirectTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    S3DirectTarget.add_member(:partition_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, location_name: "PartitionKeys"))
    S3DirectTarget.add_member(:path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Path"))
    S3DirectTarget.add_member(:compression, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "Compression"))
    S3DirectTarget.add_member(:number_target_partitions, Shapes::ShapeRef.new(shape: NumberTargetPartitionsString, location_name: "NumberTargetPartitions"))
    S3DirectTarget.add_member(:format, Shapes::ShapeRef.new(shape: TargetFormat, required: true, location_name: "Format"))
    S3DirectTarget.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: DirectSchemaChangePolicy, location_name: "SchemaChangePolicy"))
    S3DirectTarget.struct_class = Types::S3DirectTarget

    S3Encryption.add_member(:s3_encryption_mode, Shapes::ShapeRef.new(shape: S3EncryptionMode, location_name: "S3EncryptionMode"))
    S3Encryption.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    S3Encryption.struct_class = Types::S3Encryption

    S3EncryptionList.member = Shapes::ShapeRef.new(shape: S3Encryption)

    S3ExcelSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3ExcelSource.add_member(:paths, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, required: true, location_name: "Paths"))
    S3ExcelSource.add_member(:compression_type, Shapes::ShapeRef.new(shape: ParquetCompressionType, location_name: "CompressionType"))
    S3ExcelSource.add_member(:exclusions, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, location_name: "Exclusions"))
    S3ExcelSource.add_member(:group_size, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "GroupSize"))
    S3ExcelSource.add_member(:group_files, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "GroupFiles"))
    S3ExcelSource.add_member(:recurse, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "Recurse"))
    S3ExcelSource.add_member(:max_band, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "MaxBand"))
    S3ExcelSource.add_member(:max_files_in_band, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "MaxFilesInBand"))
    S3ExcelSource.add_member(:additional_options, Shapes::ShapeRef.new(shape: S3DirectSourceAdditionalOptions, location_name: "AdditionalOptions"))
    S3ExcelSource.add_member(:number_rows, Shapes::ShapeRef.new(shape: BoxedLong, location_name: "NumberRows"))
    S3ExcelSource.add_member(:skip_footer, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "SkipFooter"))
    S3ExcelSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    S3ExcelSource.struct_class = Types::S3ExcelSource

    S3GlueParquetTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3GlueParquetTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    S3GlueParquetTarget.add_member(:partition_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, location_name: "PartitionKeys"))
    S3GlueParquetTarget.add_member(:path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Path"))
    S3GlueParquetTarget.add_member(:compression, Shapes::ShapeRef.new(shape: ParquetCompressionType, location_name: "Compression"))
    S3GlueParquetTarget.add_member(:number_target_partitions, Shapes::ShapeRef.new(shape: NumberTargetPartitionsString, location_name: "NumberTargetPartitions"))
    S3GlueParquetTarget.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: DirectSchemaChangePolicy, location_name: "SchemaChangePolicy"))
    S3GlueParquetTarget.struct_class = Types::S3GlueParquetTarget

    S3HudiCatalogTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3HudiCatalogTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    S3HudiCatalogTarget.add_member(:partition_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, location_name: "PartitionKeys"))
    S3HudiCatalogTarget.add_member(:table, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Table"))
    S3HudiCatalogTarget.add_member(:database, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Database"))
    S3HudiCatalogTarget.add_member(:additional_options, Shapes::ShapeRef.new(shape: AdditionalOptions, required: true, location_name: "AdditionalOptions"))
    S3HudiCatalogTarget.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: CatalogSchemaChangePolicy, location_name: "SchemaChangePolicy"))
    S3HudiCatalogTarget.struct_class = Types::S3HudiCatalogTarget

    S3HudiDirectTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3HudiDirectTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    S3HudiDirectTarget.add_member(:path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Path"))
    S3HudiDirectTarget.add_member(:compression, Shapes::ShapeRef.new(shape: HudiTargetCompressionType, required: true, location_name: "Compression"))
    S3HudiDirectTarget.add_member(:number_target_partitions, Shapes::ShapeRef.new(shape: NumberTargetPartitionsString, location_name: "NumberTargetPartitions"))
    S3HudiDirectTarget.add_member(:partition_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, location_name: "PartitionKeys"))
    S3HudiDirectTarget.add_member(:format, Shapes::ShapeRef.new(shape: TargetFormat, required: true, location_name: "Format"))
    S3HudiDirectTarget.add_member(:additional_options, Shapes::ShapeRef.new(shape: AdditionalOptions, required: true, location_name: "AdditionalOptions"))
    S3HudiDirectTarget.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: DirectSchemaChangePolicy, location_name: "SchemaChangePolicy"))
    S3HudiDirectTarget.struct_class = Types::S3HudiDirectTarget

    S3HudiSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3HudiSource.add_member(:paths, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, required: true, location_name: "Paths"))
    S3HudiSource.add_member(:additional_hudi_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalHudiOptions"))
    S3HudiSource.add_member(:additional_options, Shapes::ShapeRef.new(shape: S3DirectSourceAdditionalOptions, location_name: "AdditionalOptions"))
    S3HudiSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    S3HudiSource.struct_class = Types::S3HudiSource

    S3HyperDirectTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3HyperDirectTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    S3HyperDirectTarget.add_member(:partition_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, location_name: "PartitionKeys"))
    S3HyperDirectTarget.add_member(:path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Path"))
    S3HyperDirectTarget.add_member(:compression, Shapes::ShapeRef.new(shape: HyperTargetCompressionType, location_name: "Compression"))
    S3HyperDirectTarget.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: DirectSchemaChangePolicy, location_name: "SchemaChangePolicy"))
    S3HyperDirectTarget.struct_class = Types::S3HyperDirectTarget

    S3IcebergDirectTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3IcebergDirectTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    S3IcebergDirectTarget.add_member(:partition_keys, Shapes::ShapeRef.new(shape: GlueStudioPathList, location_name: "PartitionKeys"))
    S3IcebergDirectTarget.add_member(:path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Path"))
    S3IcebergDirectTarget.add_member(:format, Shapes::ShapeRef.new(shape: TargetFormat, required: true, location_name: "Format"))
    S3IcebergDirectTarget.add_member(:additional_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalOptions"))
    S3IcebergDirectTarget.add_member(:schema_change_policy, Shapes::ShapeRef.new(shape: DirectSchemaChangePolicy, location_name: "SchemaChangePolicy"))
    S3IcebergDirectTarget.add_member(:compression, Shapes::ShapeRef.new(shape: IcebergTargetCompressionType, required: true, location_name: "Compression"))
    S3IcebergDirectTarget.add_member(:number_target_partitions, Shapes::ShapeRef.new(shape: NumberTargetPartitionsString, location_name: "NumberTargetPartitions"))
    S3IcebergDirectTarget.struct_class = Types::S3IcebergDirectTarget

    S3JsonSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3JsonSource.add_member(:paths, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, required: true, location_name: "Paths"))
    S3JsonSource.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionType, location_name: "CompressionType"))
    S3JsonSource.add_member(:exclusions, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, location_name: "Exclusions"))
    S3JsonSource.add_member(:group_size, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "GroupSize"))
    S3JsonSource.add_member(:group_files, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "GroupFiles"))
    S3JsonSource.add_member(:recurse, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "Recurse"))
    S3JsonSource.add_member(:max_band, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "MaxBand"))
    S3JsonSource.add_member(:max_files_in_band, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "MaxFilesInBand"))
    S3JsonSource.add_member(:additional_options, Shapes::ShapeRef.new(shape: S3DirectSourceAdditionalOptions, location_name: "AdditionalOptions"))
    S3JsonSource.add_member(:json_path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "JsonPath"))
    S3JsonSource.add_member(:multiline, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "Multiline"))
    S3JsonSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    S3JsonSource.struct_class = Types::S3JsonSource

    S3ParquetSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    S3ParquetSource.add_member(:paths, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, required: true, location_name: "Paths"))
    S3ParquetSource.add_member(:compression_type, Shapes::ShapeRef.new(shape: ParquetCompressionType, location_name: "CompressionType"))
    S3ParquetSource.add_member(:exclusions, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, location_name: "Exclusions"))
    S3ParquetSource.add_member(:group_size, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "GroupSize"))
    S3ParquetSource.add_member(:group_files, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "GroupFiles"))
    S3ParquetSource.add_member(:recurse, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "Recurse"))
    S3ParquetSource.add_member(:max_band, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "MaxBand"))
    S3ParquetSource.add_member(:max_files_in_band, Shapes::ShapeRef.new(shape: BoxedNonNegativeInt, location_name: "MaxFilesInBand"))
    S3ParquetSource.add_member(:additional_options, Shapes::ShapeRef.new(shape: S3DirectSourceAdditionalOptions, location_name: "AdditionalOptions"))
    S3ParquetSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    S3ParquetSource.struct_class = Types::S3ParquetSource

    S3SourceAdditionalOptions.add_member(:bounded_size, Shapes::ShapeRef.new(shape: BoxedLong, location_name: "BoundedSize"))
    S3SourceAdditionalOptions.add_member(:bounded_files, Shapes::ShapeRef.new(shape: BoxedLong, location_name: "BoundedFiles"))
    S3SourceAdditionalOptions.struct_class = Types::S3SourceAdditionalOptions

    S3Target.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    S3Target.add_member(:exclusions, Shapes::ShapeRef.new(shape: PathList, location_name: "Exclusions"))
    S3Target.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    S3Target.add_member(:sample_size, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "SampleSize"))
    S3Target.add_member(:event_queue_arn, Shapes::ShapeRef.new(shape: EventQueueArn, location_name: "EventQueueArn"))
    S3Target.add_member(:dlq_event_queue_arn, Shapes::ShapeRef.new(shape: EventQueueArn, location_name: "DlqEventQueueArn"))
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

    SchemaId.add_member(:schema_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "SchemaArn"))
    SchemaId.add_member(:schema_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "SchemaName"))
    SchemaId.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    SchemaId.struct_class = Types::SchemaId

    SchemaListDefinition.member = Shapes::ShapeRef.new(shape: SchemaListItem)

    SchemaListItem.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    SchemaListItem.add_member(:schema_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "SchemaName"))
    SchemaListItem.add_member(:schema_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "SchemaArn"))
    SchemaListItem.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    SchemaListItem.add_member(:schema_status, Shapes::ShapeRef.new(shape: SchemaStatus, location_name: "SchemaStatus"))
    SchemaListItem.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "CreatedTime"))
    SchemaListItem.add_member(:updated_time, Shapes::ShapeRef.new(shape: UpdatedTimestamp, location_name: "UpdatedTime"))
    SchemaListItem.struct_class = Types::SchemaListItem

    SchemaReference.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, location_name: "SchemaId"))
    SchemaReference.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    SchemaReference.add_member(:schema_version_number, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "SchemaVersionNumber", metadata: {"box" => true}))
    SchemaReference.struct_class = Types::SchemaReference

    SchemaVersionErrorItem.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "VersionNumber"))
    SchemaVersionErrorItem.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    SchemaVersionErrorItem.struct_class = Types::SchemaVersionErrorItem

    SchemaVersionErrorList.member = Shapes::ShapeRef.new(shape: SchemaVersionErrorItem)

    SchemaVersionList.member = Shapes::ShapeRef.new(shape: SchemaVersionListItem)

    SchemaVersionListItem.add_member(:schema_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "SchemaArn"))
    SchemaVersionListItem.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionIdString, location_name: "SchemaVersionId"))
    SchemaVersionListItem.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "VersionNumber"))
    SchemaVersionListItem.add_member(:status, Shapes::ShapeRef.new(shape: SchemaVersionStatus, location_name: "Status"))
    SchemaVersionListItem.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "CreatedTime"))
    SchemaVersionListItem.struct_class = Types::SchemaVersionListItem

    SchemaVersionNumber.add_member(:latest_version, Shapes::ShapeRef.new(shape: LatestSchemaVersionBoolean, location_name: "LatestVersion"))
    SchemaVersionNumber.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionLongNumber, location_name: "VersionNumber"))
    SchemaVersionNumber.struct_class = Types::SchemaVersionNumber

    SearchPropertyPredicates.member = Shapes::ShapeRef.new(shape: PropertyPredicate)

    SearchTablesRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    SearchTablesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchTablesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchPropertyPredicates, location_name: "Filters"))
    SearchTablesRequest.add_member(:search_text, Shapes::ShapeRef.new(shape: ValueString, location_name: "SearchText"))
    SearchTablesRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "SortCriteria"))
    SearchTablesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    SearchTablesRequest.add_member(:resource_share_type, Shapes::ShapeRef.new(shape: ResourceShareType, location_name: "ResourceShareType"))
    SearchTablesRequest.add_member(:include_status_details, Shapes::ShapeRef.new(shape: BooleanNullable, location_name: "IncludeStatusDetails"))
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

    SelectFields.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    SelectFields.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    SelectFields.add_member(:paths, Shapes::ShapeRef.new(shape: GlueStudioPathList, required: true, location_name: "Paths"))
    SelectFields.struct_class = Types::SelectFields

    SelectFromCollection.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    SelectFromCollection.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    SelectFromCollection.add_member(:index, Shapes::ShapeRef.new(shape: NonNegativeInt, required: true, location_name: "Index"))
    SelectFromCollection.struct_class = Types::SelectFromCollection

    SelectedFields.member = Shapes::ShapeRef.new(shape: EntityFieldName)

    SerDeInfo.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    SerDeInfo.add_member(:serialization_library, Shapes::ShapeRef.new(shape: NameString, location_name: "SerializationLibrary"))
    SerDeInfo.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersMap, location_name: "Parameters"))
    SerDeInfo.struct_class = Types::SerDeInfo

    Session.add_member(:id, Shapes::ShapeRef.new(shape: NameString, location_name: "Id"))
    Session.add_member(:created_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedOn"))
    Session.add_member(:status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "Status"))
    Session.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    Session.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Session.add_member(:role, Shapes::ShapeRef.new(shape: OrchestrationRoleArn, location_name: "Role"))
    Session.add_member(:command, Shapes::ShapeRef.new(shape: SessionCommand, location_name: "Command"))
    Session.add_member(:default_arguments, Shapes::ShapeRef.new(shape: OrchestrationArgumentsMap, location_name: "DefaultArguments"))
    Session.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionsList, location_name: "Connections"))
    Session.add_member(:progress, Shapes::ShapeRef.new(shape: DoubleValue, location_name: "Progress"))
    Session.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    Session.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    Session.add_member(:glue_version, Shapes::ShapeRef.new(shape: GlueVersionString, location_name: "GlueVersion"))
    Session.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    Session.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    Session.add_member(:completed_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CompletedOn"))
    Session.add_member(:execution_time, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "ExecutionTime"))
    Session.add_member(:dpu_seconds, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "DPUSeconds"))
    Session.add_member(:idle_timeout, Shapes::ShapeRef.new(shape: IdleTimeout, location_name: "IdleTimeout"))
    Session.add_member(:profile_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ProfileName"))
    Session.struct_class = Types::Session

    SessionCommand.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    SessionCommand.add_member(:python_version, Shapes::ShapeRef.new(shape: PythonVersionString, location_name: "PythonVersion"))
    SessionCommand.struct_class = Types::SessionCommand

    SessionIdList.member = Shapes::ShapeRef.new(shape: NameString)

    SessionList.member = Shapes::ShapeRef.new(shape: Session)

    SkewedInfo.add_member(:skewed_column_names, Shapes::ShapeRef.new(shape: NameStringList, location_name: "SkewedColumnNames"))
    SkewedInfo.add_member(:skewed_column_values, Shapes::ShapeRef.new(shape: ColumnValueStringList, location_name: "SkewedColumnValues"))
    SkewedInfo.add_member(:skewed_column_value_location_maps, Shapes::ShapeRef.new(shape: LocationMap, location_name: "SkewedColumnValueLocationMaps"))
    SkewedInfo.struct_class = Types::SkewedInfo

    SnowflakeNodeData.add_member(:source_type, Shapes::ShapeRef.new(shape: GenericLimitedString, location_name: "SourceType"))
    SnowflakeNodeData.add_member(:connection, Shapes::ShapeRef.new(shape: Option, location_name: "Connection"))
    SnowflakeNodeData.add_member(:schema, Shapes::ShapeRef.new(shape: GenericString, location_name: "Schema"))
    SnowflakeNodeData.add_member(:table, Shapes::ShapeRef.new(shape: GenericString, location_name: "Table"))
    SnowflakeNodeData.add_member(:database, Shapes::ShapeRef.new(shape: GenericString, location_name: "Database"))
    SnowflakeNodeData.add_member(:temp_dir, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "TempDir"))
    SnowflakeNodeData.add_member(:iam_role, Shapes::ShapeRef.new(shape: Option, location_name: "IamRole"))
    SnowflakeNodeData.add_member(:additional_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalOptions"))
    SnowflakeNodeData.add_member(:sample_query, Shapes::ShapeRef.new(shape: GenericString, location_name: "SampleQuery"))
    SnowflakeNodeData.add_member(:pre_action, Shapes::ShapeRef.new(shape: GenericString, location_name: "PreAction"))
    SnowflakeNodeData.add_member(:post_action, Shapes::ShapeRef.new(shape: GenericString, location_name: "PostAction"))
    SnowflakeNodeData.add_member(:action, Shapes::ShapeRef.new(shape: GenericString, location_name: "Action"))
    SnowflakeNodeData.add_member(:upsert, Shapes::ShapeRef.new(shape: BooleanValue, location_name: "Upsert"))
    SnowflakeNodeData.add_member(:merge_action, Shapes::ShapeRef.new(shape: GenericLimitedString, location_name: "MergeAction"))
    SnowflakeNodeData.add_member(:merge_when_matched, Shapes::ShapeRef.new(shape: GenericLimitedString, location_name: "MergeWhenMatched"))
    SnowflakeNodeData.add_member(:merge_when_not_matched, Shapes::ShapeRef.new(shape: GenericLimitedString, location_name: "MergeWhenNotMatched"))
    SnowflakeNodeData.add_member(:merge_clause, Shapes::ShapeRef.new(shape: GenericString, location_name: "MergeClause"))
    SnowflakeNodeData.add_member(:staging_table, Shapes::ShapeRef.new(shape: GenericString, location_name: "StagingTable"))
    SnowflakeNodeData.add_member(:selected_columns, Shapes::ShapeRef.new(shape: OptionList, location_name: "SelectedColumns"))
    SnowflakeNodeData.add_member(:auto_pushdown, Shapes::ShapeRef.new(shape: BooleanValue, location_name: "AutoPushdown"))
    SnowflakeNodeData.add_member(:table_schema, Shapes::ShapeRef.new(shape: OptionList, location_name: "TableSchema"))
    SnowflakeNodeData.struct_class = Types::SnowflakeNodeData

    SnowflakeSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    SnowflakeSource.add_member(:data, Shapes::ShapeRef.new(shape: SnowflakeNodeData, required: true, location_name: "Data"))
    SnowflakeSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    SnowflakeSource.struct_class = Types::SnowflakeSource

    SnowflakeTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    SnowflakeTarget.add_member(:data, Shapes::ShapeRef.new(shape: SnowflakeNodeData, required: true, location_name: "Data"))
    SnowflakeTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, location_name: "Inputs"))
    SnowflakeTarget.struct_class = Types::SnowflakeTarget

    SortCriteria.member = Shapes::ShapeRef.new(shape: SortCriterion)

    SortCriterion.add_member(:field_name, Shapes::ShapeRef.new(shape: ValueString, location_name: "FieldName"))
    SortCriterion.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location_name: "Sort"))
    SortCriterion.struct_class = Types::SortCriterion

    SourceControlDetails.add_member(:provider, Shapes::ShapeRef.new(shape: SourceControlProvider, location_name: "Provider"))
    SourceControlDetails.add_member(:repository, Shapes::ShapeRef.new(shape: Generic512CharString, location_name: "Repository"))
    SourceControlDetails.add_member(:owner, Shapes::ShapeRef.new(shape: Generic512CharString, location_name: "Owner"))
    SourceControlDetails.add_member(:branch, Shapes::ShapeRef.new(shape: Generic512CharString, location_name: "Branch"))
    SourceControlDetails.add_member(:folder, Shapes::ShapeRef.new(shape: Generic512CharString, location_name: "Folder"))
    SourceControlDetails.add_member(:last_commit_id, Shapes::ShapeRef.new(shape: Generic512CharString, location_name: "LastCommitId"))
    SourceControlDetails.add_member(:auth_strategy, Shapes::ShapeRef.new(shape: SourceControlAuthStrategy, location_name: "AuthStrategy"))
    SourceControlDetails.add_member(:auth_token, Shapes::ShapeRef.new(shape: Generic512CharString, location_name: "AuthToken"))
    SourceControlDetails.struct_class = Types::SourceControlDetails

    SourceProcessingProperties.add_member(:role_arn, Shapes::ShapeRef.new(shape: String128, location_name: "RoleArn"))
    SourceProcessingProperties.struct_class = Types::SourceProcessingProperties

    SourceTableConfig.add_member(:fields, Shapes::ShapeRef.new(shape: SourceTableFieldsList, location_name: "Fields"))
    SourceTableConfig.add_member(:filter_predicate, Shapes::ShapeRef.new(shape: String128, location_name: "FilterPredicate"))
    SourceTableConfig.add_member(:primary_key, Shapes::ShapeRef.new(shape: PrimaryKeyList, location_name: "PrimaryKey"))
    SourceTableConfig.add_member(:record_update_field, Shapes::ShapeRef.new(shape: String128, location_name: "RecordUpdateField"))
    SourceTableConfig.struct_class = Types::SourceTableConfig

    SourceTableFieldsList.member = Shapes::ShapeRef.new(shape: String128)

    SparkConnectorSource.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    SparkConnectorSource.add_member(:connection_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionName"))
    SparkConnectorSource.add_member(:connector_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectorName"))
    SparkConnectorSource.add_member(:connection_type, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionType"))
    SparkConnectorSource.add_member(:additional_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalOptions"))
    SparkConnectorSource.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    SparkConnectorSource.struct_class = Types::SparkConnectorSource

    SparkConnectorTarget.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    SparkConnectorTarget.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    SparkConnectorTarget.add_member(:connection_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionName"))
    SparkConnectorTarget.add_member(:connector_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectorName"))
    SparkConnectorTarget.add_member(:connection_type, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "ConnectionType"))
    SparkConnectorTarget.add_member(:additional_options, Shapes::ShapeRef.new(shape: AdditionalOptions, location_name: "AdditionalOptions"))
    SparkConnectorTarget.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    SparkConnectorTarget.struct_class = Types::SparkConnectorTarget

    SparkSQL.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    SparkSQL.add_member(:inputs, Shapes::ShapeRef.new(shape: ManyInputs, required: true, location_name: "Inputs"))
    SparkSQL.add_member(:sql_query, Shapes::ShapeRef.new(shape: SqlQuery, required: true, location_name: "SqlQuery"))
    SparkSQL.add_member(:sql_aliases, Shapes::ShapeRef.new(shape: SqlAliases, required: true, location_name: "SqlAliases"))
    SparkSQL.add_member(:output_schemas, Shapes::ShapeRef.new(shape: GlueSchemas, location_name: "OutputSchemas"))
    SparkSQL.struct_class = Types::SparkSQL

    Spigot.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    Spigot.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    Spigot.add_member(:path, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Path"))
    Spigot.add_member(:topk, Shapes::ShapeRef.new(shape: Topk, location_name: "Topk"))
    Spigot.add_member(:prob, Shapes::ShapeRef.new(shape: Prob, location_name: "Prob"))
    Spigot.struct_class = Types::Spigot

    SplitFields.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    SplitFields.add_member(:inputs, Shapes::ShapeRef.new(shape: OneInput, required: true, location_name: "Inputs"))
    SplitFields.add_member(:paths, Shapes::ShapeRef.new(shape: GlueStudioPathList, required: true, location_name: "Paths"))
    SplitFields.struct_class = Types::SplitFields

    SqlAlias.add_member(:from, Shapes::ShapeRef.new(shape: NodeId, required: true, location_name: "From"))
    SqlAlias.add_member(:alias, Shapes::ShapeRef.new(shape: EnclosedInStringPropertyWithQuote, required: true, location_name: "Alias"))
    SqlAlias.struct_class = Types::SqlAlias

    SqlAliases.member = Shapes::ShapeRef.new(shape: SqlAlias)

    StartBlueprintRunRequest.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: OrchestrationNameString, required: true, location_name: "BlueprintName"))
    StartBlueprintRunRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: BlueprintParameters, location_name: "Parameters"))
    StartBlueprintRunRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: OrchestrationIAMRoleArn, required: true, location_name: "RoleArn"))
    StartBlueprintRunRequest.struct_class = Types::StartBlueprintRunRequest

    StartBlueprintRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    StartBlueprintRunResponse.struct_class = Types::StartBlueprintRunResponse

    StartColumnStatisticsTaskRunRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    StartColumnStatisticsTaskRunRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    StartColumnStatisticsTaskRunRequest.add_member(:column_name_list, Shapes::ShapeRef.new(shape: ColumnNameList, location_name: "ColumnNameList"))
    StartColumnStatisticsTaskRunRequest.add_member(:role, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Role"))
    StartColumnStatisticsTaskRunRequest.add_member(:sample_size, Shapes::ShapeRef.new(shape: SampleSizePercentage, location_name: "SampleSize"))
    StartColumnStatisticsTaskRunRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: NameString, location_name: "CatalogID"))
    StartColumnStatisticsTaskRunRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    StartColumnStatisticsTaskRunRequest.struct_class = Types::StartColumnStatisticsTaskRunRequest

    StartColumnStatisticsTaskRunResponse.add_member(:column_statistics_task_run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ColumnStatisticsTaskRunId"))
    StartColumnStatisticsTaskRunResponse.struct_class = Types::StartColumnStatisticsTaskRunResponse

    StartColumnStatisticsTaskRunScheduleRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    StartColumnStatisticsTaskRunScheduleRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    StartColumnStatisticsTaskRunScheduleRequest.struct_class = Types::StartColumnStatisticsTaskRunScheduleRequest

    StartColumnStatisticsTaskRunScheduleResponse.struct_class = Types::StartColumnStatisticsTaskRunScheduleResponse

    StartCrawlerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    StartCrawlerRequest.struct_class = Types::StartCrawlerRequest

    StartCrawlerResponse.struct_class = Types::StartCrawlerResponse

    StartCrawlerScheduleRequest.add_member(:crawler_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "CrawlerName"))
    StartCrawlerScheduleRequest.struct_class = Types::StartCrawlerScheduleRequest

    StartCrawlerScheduleResponse.struct_class = Types::StartCrawlerScheduleResponse

    StartDataQualityRuleRecommendationRunRequest.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "DataSource"))
    StartDataQualityRuleRecommendationRunRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, required: true, location_name: "Role"))
    StartDataQualityRuleRecommendationRunRequest.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    StartDataQualityRuleRecommendationRunRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    StartDataQualityRuleRecommendationRunRequest.add_member(:created_ruleset_name, Shapes::ShapeRef.new(shape: NameString, location_name: "CreatedRulesetName"))
    StartDataQualityRuleRecommendationRunRequest.add_member(:data_quality_security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "DataQualitySecurityConfiguration"))
    StartDataQualityRuleRecommendationRunRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: HashString, location_name: "ClientToken"))
    StartDataQualityRuleRecommendationRunRequest.struct_class = Types::StartDataQualityRuleRecommendationRunRequest

    StartDataQualityRuleRecommendationRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "RunId"))
    StartDataQualityRuleRecommendationRunResponse.struct_class = Types::StartDataQualityRuleRecommendationRunResponse

    StartDataQualityRulesetEvaluationRunRequest.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "DataSource"))
    StartDataQualityRulesetEvaluationRunRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleString, required: true, location_name: "Role"))
    StartDataQualityRulesetEvaluationRunRequest.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    StartDataQualityRulesetEvaluationRunRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    StartDataQualityRulesetEvaluationRunRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: HashString, location_name: "ClientToken"))
    StartDataQualityRulesetEvaluationRunRequest.add_member(:additional_run_options, Shapes::ShapeRef.new(shape: DataQualityEvaluationRunAdditionalRunOptions, location_name: "AdditionalRunOptions"))
    StartDataQualityRulesetEvaluationRunRequest.add_member(:ruleset_names, Shapes::ShapeRef.new(shape: RulesetNames, required: true, location_name: "RulesetNames"))
    StartDataQualityRulesetEvaluationRunRequest.add_member(:additional_data_sources, Shapes::ShapeRef.new(shape: DataSourceMap, location_name: "AdditionalDataSources"))
    StartDataQualityRulesetEvaluationRunRequest.struct_class = Types::StartDataQualityRulesetEvaluationRunRequest

    StartDataQualityRulesetEvaluationRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: HashString, location_name: "RunId"))
    StartDataQualityRulesetEvaluationRunResponse.struct_class = Types::StartDataQualityRulesetEvaluationRunResponse

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
    StartJobRunRequest.add_member(:job_run_queuing_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "JobRunQueuingEnabled"))
    StartJobRunRequest.add_member(:job_run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "JobRunId"))
    StartJobRunRequest.add_member(:arguments, Shapes::ShapeRef.new(shape: GenericMap, location_name: "Arguments"))
    StartJobRunRequest.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: IntegerValue, deprecated: true, location_name: "AllocatedCapacity", metadata: {"deprecatedMessage" => "This property is deprecated, use MaxCapacity instead."}))
    StartJobRunRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    StartJobRunRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "MaxCapacity"))
    StartJobRunRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    StartJobRunRequest.add_member(:notification_property, Shapes::ShapeRef.new(shape: NotificationProperty, location_name: "NotificationProperty"))
    StartJobRunRequest.add_member(:worker_type, Shapes::ShapeRef.new(shape: WorkerType, location_name: "WorkerType"))
    StartJobRunRequest.add_member(:number_of_workers, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NumberOfWorkers"))
    StartJobRunRequest.add_member(:execution_class, Shapes::ShapeRef.new(shape: ExecutionClass, location_name: "ExecutionClass"))
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
    StartWorkflowRunRequest.add_member(:run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, location_name: "RunProperties"))
    StartWorkflowRunRequest.struct_class = Types::StartWorkflowRunRequest

    StartWorkflowRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    StartWorkflowRunResponse.struct_class = Types::StartWorkflowRunResponse

    StartingEventBatchCondition.add_member(:batch_size, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "BatchSize"))
    StartingEventBatchCondition.add_member(:batch_window, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "BatchWindow"))
    StartingEventBatchCondition.struct_class = Types::StartingEventBatchCondition

    Statement.add_member(:id, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "Id"))
    Statement.add_member(:code, Shapes::ShapeRef.new(shape: GenericString, location_name: "Code"))
    Statement.add_member(:state, Shapes::ShapeRef.new(shape: StatementState, location_name: "State"))
    Statement.add_member(:output, Shapes::ShapeRef.new(shape: StatementOutput, location_name: "Output"))
    Statement.add_member(:progress, Shapes::ShapeRef.new(shape: DoubleValue, location_name: "Progress"))
    Statement.add_member(:started_on, Shapes::ShapeRef.new(shape: LongValue, location_name: "StartedOn"))
    Statement.add_member(:completed_on, Shapes::ShapeRef.new(shape: LongValue, location_name: "CompletedOn"))
    Statement.struct_class = Types::Statement

    StatementList.member = Shapes::ShapeRef.new(shape: Statement)

    StatementOutput.add_member(:data, Shapes::ShapeRef.new(shape: StatementOutputData, location_name: "Data"))
    StatementOutput.add_member(:execution_count, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "ExecutionCount"))
    StatementOutput.add_member(:status, Shapes::ShapeRef.new(shape: StatementState, location_name: "Status"))
    StatementOutput.add_member(:error_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "ErrorName"))
    StatementOutput.add_member(:error_value, Shapes::ShapeRef.new(shape: GenericString, location_name: "ErrorValue"))
    StatementOutput.add_member(:traceback, Shapes::ShapeRef.new(shape: OrchestrationStringList, location_name: "Traceback"))
    StatementOutput.struct_class = Types::StatementOutput

    StatementOutputData.add_member(:text_plain, Shapes::ShapeRef.new(shape: GenericString, location_name: "TextPlain"))
    StatementOutputData.struct_class = Types::StatementOutputData

    StatisticAnnotation.add_member(:profile_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ProfileId"))
    StatisticAnnotation.add_member(:statistic_id, Shapes::ShapeRef.new(shape: HashString, location_name: "StatisticId"))
    StatisticAnnotation.add_member(:statistic_recorded_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StatisticRecordedOn"))
    StatisticAnnotation.add_member(:inclusion_annotation, Shapes::ShapeRef.new(shape: TimestampedInclusionAnnotation, location_name: "InclusionAnnotation"))
    StatisticAnnotation.struct_class = Types::StatisticAnnotation

    StatisticModelResult.add_member(:lower_bound, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "LowerBound"))
    StatisticModelResult.add_member(:upper_bound, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "UpperBound"))
    StatisticModelResult.add_member(:predicted_value, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "PredictedValue"))
    StatisticModelResult.add_member(:actual_value, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "ActualValue"))
    StatisticModelResult.add_member(:date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Date"))
    StatisticModelResult.add_member(:inclusion_annotation, Shapes::ShapeRef.new(shape: InclusionAnnotationValue, location_name: "InclusionAnnotation"))
    StatisticModelResult.struct_class = Types::StatisticModelResult

    StatisticModelResults.member = Shapes::ShapeRef.new(shape: StatisticModelResult)

    StatisticPropertiesMap.key = Shapes::ShapeRef.new(shape: NameString)
    StatisticPropertiesMap.value = Shapes::ShapeRef.new(shape: DescriptionString)

    StatisticSummary.add_member(:statistic_id, Shapes::ShapeRef.new(shape: HashString, location_name: "StatisticId"))
    StatisticSummary.add_member(:profile_id, Shapes::ShapeRef.new(shape: HashString, location_name: "ProfileId"))
    StatisticSummary.add_member(:run_identifier, Shapes::ShapeRef.new(shape: RunIdentifier, location_name: "RunIdentifier"))
    StatisticSummary.add_member(:statistic_name, Shapes::ShapeRef.new(shape: StatisticNameString, location_name: "StatisticName"))
    StatisticSummary.add_member(:double_value, Shapes::ShapeRef.new(shape: double, location_name: "DoubleValue"))
    StatisticSummary.add_member(:evaluation_level, Shapes::ShapeRef.new(shape: StatisticEvaluationLevel, location_name: "EvaluationLevel"))
    StatisticSummary.add_member(:columns_referenced, Shapes::ShapeRef.new(shape: ColumnNameList, location_name: "ColumnsReferenced"))
    StatisticSummary.add_member(:referenced_datasets, Shapes::ShapeRef.new(shape: ReferenceDatasetsList, location_name: "ReferencedDatasets"))
    StatisticSummary.add_member(:statistic_properties, Shapes::ShapeRef.new(shape: StatisticPropertiesMap, location_name: "StatisticProperties"))
    StatisticSummary.add_member(:recorded_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RecordedOn"))
    StatisticSummary.add_member(:inclusion_annotation, Shapes::ShapeRef.new(shape: TimestampedInclusionAnnotation, location_name: "InclusionAnnotation"))
    StatisticSummary.struct_class = Types::StatisticSummary

    StatisticSummaryList.member = Shapes::ShapeRef.new(shape: StatisticSummary)

    StatusDetails.add_member(:requested_change, Shapes::ShapeRef.new(shape: Table, location_name: "RequestedChange"))
    StatusDetails.add_member(:view_validations, Shapes::ShapeRef.new(shape: ViewValidationList, location_name: "ViewValidations"))
    StatusDetails.struct_class = Types::StatusDetails

    StopColumnStatisticsTaskRunRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location_name: "DatabaseName"))
    StopColumnStatisticsTaskRunRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    StopColumnStatisticsTaskRunRequest.struct_class = Types::StopColumnStatisticsTaskRunRequest

    StopColumnStatisticsTaskRunResponse.struct_class = Types::StopColumnStatisticsTaskRunResponse

    StopColumnStatisticsTaskRunScheduleRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    StopColumnStatisticsTaskRunScheduleRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    StopColumnStatisticsTaskRunScheduleRequest.struct_class = Types::StopColumnStatisticsTaskRunScheduleRequest

    StopColumnStatisticsTaskRunScheduleResponse.struct_class = Types::StopColumnStatisticsTaskRunScheduleResponse

    StopCrawlerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    StopCrawlerRequest.struct_class = Types::StopCrawlerRequest

    StopCrawlerResponse.struct_class = Types::StopCrawlerResponse

    StopCrawlerScheduleRequest.add_member(:crawler_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "CrawlerName"))
    StopCrawlerScheduleRequest.struct_class = Types::StopCrawlerScheduleRequest

    StopCrawlerScheduleResponse.struct_class = Types::StopCrawlerScheduleResponse

    StopSessionRequest.add_member(:id, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Id"))
    StopSessionRequest.add_member(:request_origin, Shapes::ShapeRef.new(shape: OrchestrationNameString, location_name: "RequestOrigin"))
    StopSessionRequest.struct_class = Types::StopSessionRequest

    StopSessionResponse.add_member(:id, Shapes::ShapeRef.new(shape: NameString, location_name: "Id"))
    StopSessionResponse.struct_class = Types::StopSessionResponse

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
    StorageDescriptor.add_member(:additional_locations, Shapes::ShapeRef.new(shape: LocationStringList, location_name: "AdditionalLocations"))
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
    StorageDescriptor.add_member(:schema_reference, Shapes::ShapeRef.new(shape: SchemaReference, location_name: "SchemaReference"))
    StorageDescriptor.struct_class = Types::StorageDescriptor

    StreamingDataPreviewOptions.add_member(:polling_time, Shapes::ShapeRef.new(shape: PollingTime, location_name: "PollingTime"))
    StreamingDataPreviewOptions.add_member(:record_polling_limit, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "RecordPollingLimit"))
    StreamingDataPreviewOptions.struct_class = Types::StreamingDataPreviewOptions

    StringColumnStatisticsData.add_member(:maximum_length, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "MaximumLength"))
    StringColumnStatisticsData.add_member(:average_length, Shapes::ShapeRef.new(shape: NonNegativeDouble, required: true, location_name: "AverageLength"))
    StringColumnStatisticsData.add_member(:number_of_nulls, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfNulls"))
    StringColumnStatisticsData.add_member(:number_of_distinct_values, Shapes::ShapeRef.new(shape: NonNegativeLong, required: true, location_name: "NumberOfDistinctValues"))
    StringColumnStatisticsData.struct_class = Types::StringColumnStatisticsData

    StringList.member = Shapes::ShapeRef.new(shape: GenericString)

    StringToStringMap.key = Shapes::ShapeRef.new(shape: NullableString)
    StringToStringMap.value = Shapes::ShapeRef.new(shape: NullableString)

    SupportedDialect.add_member(:dialect, Shapes::ShapeRef.new(shape: ViewDialect, location_name: "Dialect"))
    SupportedDialect.add_member(:dialect_version, Shapes::ShapeRef.new(shape: ViewDialectVersionString, location_name: "DialectVersion"))
    SupportedDialect.struct_class = Types::SupportedDialect

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
    Table.add_member(:target_table, Shapes::ShapeRef.new(shape: TableIdentifier, location_name: "TargetTable"))
    Table.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    Table.add_member(:version_id, Shapes::ShapeRef.new(shape: VersionString, location_name: "VersionId"))
    Table.add_member(:federated_table, Shapes::ShapeRef.new(shape: FederatedTable, location_name: "FederatedTable"))
    Table.add_member(:view_definition, Shapes::ShapeRef.new(shape: ViewDefinition, location_name: "ViewDefinition"))
    Table.add_member(:is_multi_dialect_view, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IsMultiDialectView"))
    Table.add_member(:status, Shapes::ShapeRef.new(shape: TableStatus, location_name: "Status"))
    Table.struct_class = Types::Table

    TableAttributesList.member = Shapes::ShapeRef.new(shape: TableAttributes)

    TableError.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, location_name: "TableName"))
    TableError.add_member(:error_detail, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "ErrorDetail"))
    TableError.struct_class = Types::TableError

    TableErrors.member = Shapes::ShapeRef.new(shape: TableError)

    TableIdentifier.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    TableIdentifier.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DatabaseName"))
    TableIdentifier.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    TableIdentifier.add_member(:region, Shapes::ShapeRef.new(shape: NameString, location_name: "Region"))
    TableIdentifier.struct_class = Types::TableIdentifier

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
    TableInput.add_member(:target_table, Shapes::ShapeRef.new(shape: TableIdentifier, location_name: "TargetTable"))
    TableInput.add_member(:view_definition, Shapes::ShapeRef.new(shape: ViewDefinitionInput, location_name: "ViewDefinition"))
    TableInput.struct_class = Types::TableInput

    TableList.member = Shapes::ShapeRef.new(shape: Table)

    TableOptimizer.add_member(:type, Shapes::ShapeRef.new(shape: TableOptimizerType, location_name: "type"))
    TableOptimizer.add_member(:configuration, Shapes::ShapeRef.new(shape: TableOptimizerConfiguration, location_name: "configuration"))
    TableOptimizer.add_member(:last_run, Shapes::ShapeRef.new(shape: TableOptimizerRun, location_name: "lastRun"))
    TableOptimizer.struct_class = Types::TableOptimizer

    TableOptimizerConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "roleArn"))
    TableOptimizerConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "enabled"))
    TableOptimizerConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: TableOptimizerVpcConfiguration, location_name: "vpcConfiguration"))
    TableOptimizerConfiguration.add_member(:compaction_configuration, Shapes::ShapeRef.new(shape: CompactionConfiguration, location_name: "compactionConfiguration"))
    TableOptimizerConfiguration.add_member(:retention_configuration, Shapes::ShapeRef.new(shape: RetentionConfiguration, location_name: "retentionConfiguration"))
    TableOptimizerConfiguration.add_member(:orphan_file_deletion_configuration, Shapes::ShapeRef.new(shape: OrphanFileDeletionConfiguration, location_name: "orphanFileDeletionConfiguration"))
    TableOptimizerConfiguration.struct_class = Types::TableOptimizerConfiguration

    TableOptimizerRun.add_member(:event_type, Shapes::ShapeRef.new(shape: TableOptimizerEventType, location_name: "eventType"))
    TableOptimizerRun.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: TableOptimizerRunTimestamp, location_name: "startTimestamp"))
    TableOptimizerRun.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: TableOptimizerRunTimestamp, location_name: "endTimestamp"))
    TableOptimizerRun.add_member(:metrics, Shapes::ShapeRef.new(shape: RunMetrics, deprecated: true, location_name: "metrics", metadata: {"deprecatedMessage" => "Metrics has been replaced by optimizer type specific metrics such as IcebergCompactionMetrics"}))
    TableOptimizerRun.add_member(:error, Shapes::ShapeRef.new(shape: MessageString, location_name: "error"))
    TableOptimizerRun.add_member(:compaction_metrics, Shapes::ShapeRef.new(shape: CompactionMetrics, location_name: "compactionMetrics"))
    TableOptimizerRun.add_member(:compaction_strategy, Shapes::ShapeRef.new(shape: CompactionStrategy, location_name: "compactionStrategy"))
    TableOptimizerRun.add_member(:retention_metrics, Shapes::ShapeRef.new(shape: RetentionMetrics, location_name: "retentionMetrics"))
    TableOptimizerRun.add_member(:orphan_file_deletion_metrics, Shapes::ShapeRef.new(shape: OrphanFileDeletionMetrics, location_name: "orphanFileDeletionMetrics"))
    TableOptimizerRun.struct_class = Types::TableOptimizerRun

    TableOptimizerRuns.member = Shapes::ShapeRef.new(shape: TableOptimizerRun)

    TableOptimizerVpcConfiguration.add_member(:glue_connection_name, Shapes::ShapeRef.new(shape: glueConnectionNameString, location_name: "glueConnectionName"))
    TableOptimizerVpcConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TableOptimizerVpcConfiguration.add_member_subclass(:glue_connection_name, Types::TableOptimizerVpcConfiguration::GlueConnectionName)
    TableOptimizerVpcConfiguration.add_member_subclass(:unknown, Types::TableOptimizerVpcConfiguration::Unknown)
    TableOptimizerVpcConfiguration.struct_class = Types::TableOptimizerVpcConfiguration

    TableStatus.add_member(:requested_by, Shapes::ShapeRef.new(shape: NameString, location_name: "RequestedBy"))
    TableStatus.add_member(:updated_by, Shapes::ShapeRef.new(shape: NameString, location_name: "UpdatedBy"))
    TableStatus.add_member(:request_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RequestTime"))
    TableStatus.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    TableStatus.add_member(:action, Shapes::ShapeRef.new(shape: ResourceAction, location_name: "Action"))
    TableStatus.add_member(:state, Shapes::ShapeRef.new(shape: ResourceState, location_name: "State"))
    TableStatus.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "Error"))
    TableStatus.add_member(:details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "Details"))
    TableStatus.struct_class = Types::TableStatus

    TableVersion.add_member(:table, Shapes::ShapeRef.new(shape: Table, location_name: "Table"))
    TableVersion.add_member(:version_id, Shapes::ShapeRef.new(shape: VersionString, location_name: "VersionId"))
    TableVersion.struct_class = Types::TableVersion

    TableVersionError.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, location_name: "TableName"))
    TableVersionError.add_member(:version_id, Shapes::ShapeRef.new(shape: VersionString, location_name: "VersionId"))
    TableVersionError.add_member(:error_detail, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "ErrorDetail"))
    TableVersionError.struct_class = Types::TableVersionError

    TableVersionErrors.member = Shapes::ShapeRef.new(shape: TableVersionError)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeysList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags_to_add, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "TagsToAdd"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TargetProcessingProperties.add_member(:role_arn, Shapes::ShapeRef.new(shape: String128, location_name: "RoleArn"))
    TargetProcessingProperties.add_member(:kms_arn, Shapes::ShapeRef.new(shape: String2048, location_name: "KmsArn"))
    TargetProcessingProperties.add_member(:connection_name, Shapes::ShapeRef.new(shape: String128, location_name: "ConnectionName"))
    TargetProcessingProperties.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: String2048, location_name: "EventBusArn"))
    TargetProcessingProperties.struct_class = Types::TargetProcessingProperties

    TargetRedshiftCatalog.add_member(:catalog_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "CatalogArn"))
    TargetRedshiftCatalog.struct_class = Types::TargetRedshiftCatalog

    TargetResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: IntegrationErrorMessage, location_name: "Message"))
    TargetResourceNotFound.struct_class = Types::TargetResourceNotFound

    TargetTableConfig.add_member(:unnest_spec, Shapes::ShapeRef.new(shape: UnnestSpec, location_name: "UnnestSpec"))
    TargetTableConfig.add_member(:partition_spec, Shapes::ShapeRef.new(shape: IntegrationPartitionSpecList, location_name: "PartitionSpec"))
    TargetTableConfig.add_member(:target_table_name, Shapes::ShapeRef.new(shape: String128, location_name: "TargetTableName"))
    TargetTableConfig.struct_class = Types::TargetTableConfig

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

    TestConnectionInput.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, required: true, location_name: "ConnectionType"))
    TestConnectionInput.add_member(:connection_properties, Shapes::ShapeRef.new(shape: ConnectionProperties, required: true, location_name: "ConnectionProperties"))
    TestConnectionInput.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: AuthenticationConfigurationInput, location_name: "AuthenticationConfiguration"))
    TestConnectionInput.struct_class = Types::TestConnectionInput

    TestConnectionRequest.add_member(:connection_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ConnectionName"))
    TestConnectionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    TestConnectionRequest.add_member(:test_connection_input, Shapes::ShapeRef.new(shape: TestConnectionInput, location_name: "TestConnectionInput"))
    TestConnectionRequest.struct_class = Types::TestConnectionRequest

    TestConnectionResponse.struct_class = Types::TestConnectionResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimestampFilter.add_member(:recorded_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RecordedBefore"))
    TimestampFilter.add_member(:recorded_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RecordedAfter"))
    TimestampFilter.struct_class = Types::TimestampFilter

    TimestampedInclusionAnnotation.add_member(:value, Shapes::ShapeRef.new(shape: InclusionAnnotationValue, location_name: "Value"))
    TimestampedInclusionAnnotation.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedOn"))
    TimestampedInclusionAnnotation.struct_class = Types::TimestampedInclusionAnnotation

    TokenUrlParametersMap.key = Shapes::ShapeRef.new(shape: TokenUrlParameterKey)
    TokenUrlParametersMap.value = Shapes::ShapeRef.new(shape: TokenUrlParameterValue)

    TransformConfigParameter.add_member(:name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, required: true, location_name: "Name"))
    TransformConfigParameter.add_member(:type, Shapes::ShapeRef.new(shape: ParamType, required: true, location_name: "Type"))
    TransformConfigParameter.add_member(:validation_rule, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "ValidationRule"))
    TransformConfigParameter.add_member(:validation_message, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "ValidationMessage"))
    TransformConfigParameter.add_member(:value, Shapes::ShapeRef.new(shape: EnclosedInStringProperties, location_name: "Value"))
    TransformConfigParameter.add_member(:list_type, Shapes::ShapeRef.new(shape: ParamType, location_name: "ListType"))
    TransformConfigParameter.add_member(:is_optional, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "IsOptional"))
    TransformConfigParameter.struct_class = Types::TransformConfigParameter

    TransformConfigParameterList.member = Shapes::ShapeRef.new(shape: TransformConfigParameter)

    TransformEncryption.add_member(:ml_user_data_encryption, Shapes::ShapeRef.new(shape: MLUserDataEncryption, location_name: "MlUserDataEncryption"))
    TransformEncryption.add_member(:task_run_security_configuration_name, Shapes::ShapeRef.new(shape: NameString, location_name: "TaskRunSecurityConfigurationName"))
    TransformEncryption.struct_class = Types::TransformEncryption

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
    Trigger.add_member(:event_batching_condition, Shapes::ShapeRef.new(shape: EventBatchingCondition, location_name: "EventBatchingCondition"))
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
    TriggerUpdate.add_member(:event_batching_condition, Shapes::ShapeRef.new(shape: EventBatchingCondition, location_name: "EventBatchingCondition"))
    TriggerUpdate.struct_class = Types::TriggerUpdate

    TwoInputs.member = Shapes::ShapeRef.new(shape: NodeId)

    UnfilteredPartition.add_member(:partition, Shapes::ShapeRef.new(shape: Partition, location_name: "Partition"))
    UnfilteredPartition.add_member(:authorized_columns, Shapes::ShapeRef.new(shape: NameStringList, location_name: "AuthorizedColumns"))
    UnfilteredPartition.add_member(:is_registered_with_lake_formation, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRegisteredWithLakeFormation"))
    UnfilteredPartition.struct_class = Types::UnfilteredPartition

    UnfilteredPartitionList.member = Shapes::ShapeRef.new(shape: UnfilteredPartition)

    Union.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    Union.add_member(:inputs, Shapes::ShapeRef.new(shape: TwoInputs, required: true, location_name: "Inputs"))
    Union.add_member(:union_type, Shapes::ShapeRef.new(shape: UnionType, required: true, location_name: "UnionType"))
    Union.struct_class = Types::Union

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tags_to_remove, Shapes::ShapeRef.new(shape: TagKeysList, required: true, location_name: "TagsToRemove"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateBlueprintRequest.add_member(:name, Shapes::ShapeRef.new(shape: OrchestrationNameString, required: true, location_name: "Name"))
    UpdateBlueprintRequest.add_member(:description, Shapes::ShapeRef.new(shape: Generic512CharString, location_name: "Description"))
    UpdateBlueprintRequest.add_member(:blueprint_location, Shapes::ShapeRef.new(shape: OrchestrationS3Location, required: true, location_name: "BlueprintLocation"))
    UpdateBlueprintRequest.struct_class = Types::UpdateBlueprintRequest

    UpdateBlueprintResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    UpdateBlueprintResponse.struct_class = Types::UpdateBlueprintResponse

    UpdateCatalogRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "CatalogId"))
    UpdateCatalogRequest.add_member(:catalog_input, Shapes::ShapeRef.new(shape: CatalogInput, required: true, location_name: "CatalogInput"))
    UpdateCatalogRequest.struct_class = Types::UpdateCatalogRequest

    UpdateCatalogResponse.struct_class = Types::UpdateCatalogResponse

    UpdateClassifierRequest.add_member(:grok_classifier, Shapes::ShapeRef.new(shape: UpdateGrokClassifierRequest, location_name: "GrokClassifier"))
    UpdateClassifierRequest.add_member(:xml_classifier, Shapes::ShapeRef.new(shape: UpdateXMLClassifierRequest, location_name: "XMLClassifier"))
    UpdateClassifierRequest.add_member(:json_classifier, Shapes::ShapeRef.new(shape: UpdateJsonClassifierRequest, location_name: "JsonClassifier"))
    UpdateClassifierRequest.add_member(:csv_classifier, Shapes::ShapeRef.new(shape: UpdateCsvClassifierRequest, location_name: "CsvClassifier"))
    UpdateClassifierRequest.struct_class = Types::UpdateClassifierRequest

    UpdateClassifierResponse.struct_class = Types::UpdateClassifierResponse

    UpdateColumnStatisticsForPartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateColumnStatisticsForPartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdateColumnStatisticsForPartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    UpdateColumnStatisticsForPartitionRequest.add_member(:partition_values, Shapes::ShapeRef.new(shape: ValueStringList, required: true, location_name: "PartitionValues"))
    UpdateColumnStatisticsForPartitionRequest.add_member(:column_statistics_list, Shapes::ShapeRef.new(shape: UpdateColumnStatisticsList, required: true, location_name: "ColumnStatisticsList"))
    UpdateColumnStatisticsForPartitionRequest.struct_class = Types::UpdateColumnStatisticsForPartitionRequest

    UpdateColumnStatisticsForPartitionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: ColumnStatisticsErrors, location_name: "Errors"))
    UpdateColumnStatisticsForPartitionResponse.struct_class = Types::UpdateColumnStatisticsForPartitionResponse

    UpdateColumnStatisticsForTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateColumnStatisticsForTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdateColumnStatisticsForTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    UpdateColumnStatisticsForTableRequest.add_member(:column_statistics_list, Shapes::ShapeRef.new(shape: UpdateColumnStatisticsList, required: true, location_name: "ColumnStatisticsList"))
    UpdateColumnStatisticsForTableRequest.struct_class = Types::UpdateColumnStatisticsForTableRequest

    UpdateColumnStatisticsForTableResponse.add_member(:errors, Shapes::ShapeRef.new(shape: ColumnStatisticsErrors, location_name: "Errors"))
    UpdateColumnStatisticsForTableResponse.struct_class = Types::UpdateColumnStatisticsForTableResponse

    UpdateColumnStatisticsList.member = Shapes::ShapeRef.new(shape: ColumnStatistics)

    UpdateColumnStatisticsTaskSettingsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdateColumnStatisticsTaskSettingsRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    UpdateColumnStatisticsTaskSettingsRequest.add_member(:role, Shapes::ShapeRef.new(shape: NameString, location_name: "Role"))
    UpdateColumnStatisticsTaskSettingsRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: CronExpression, location_name: "Schedule"))
    UpdateColumnStatisticsTaskSettingsRequest.add_member(:column_name_list, Shapes::ShapeRef.new(shape: ColumnNameList, location_name: "ColumnNameList"))
    UpdateColumnStatisticsTaskSettingsRequest.add_member(:sample_size, Shapes::ShapeRef.new(shape: SampleSizePercentage, location_name: "SampleSize"))
    UpdateColumnStatisticsTaskSettingsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: NameString, location_name: "CatalogID"))
    UpdateColumnStatisticsTaskSettingsRequest.add_member(:security_configuration, Shapes::ShapeRef.new(shape: NameString, location_name: "SecurityConfiguration"))
    UpdateColumnStatisticsTaskSettingsRequest.struct_class = Types::UpdateColumnStatisticsTaskSettingsRequest

    UpdateColumnStatisticsTaskSettingsResponse.struct_class = Types::UpdateColumnStatisticsTaskSettingsResponse

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
    UpdateCrawlerRequest.add_member(:recrawl_policy, Shapes::ShapeRef.new(shape: RecrawlPolicy, location_name: "RecrawlPolicy"))
    UpdateCrawlerRequest.add_member(:lineage_configuration, Shapes::ShapeRef.new(shape: LineageConfiguration, location_name: "LineageConfiguration"))
    UpdateCrawlerRequest.add_member(:lake_formation_configuration, Shapes::ShapeRef.new(shape: LakeFormationConfiguration, location_name: "LakeFormationConfiguration"))
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
    UpdateCsvClassifierRequest.add_member(:custom_datatype_configured, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "CustomDatatypeConfigured"))
    UpdateCsvClassifierRequest.add_member(:custom_datatypes, Shapes::ShapeRef.new(shape: CustomDatatypes, location_name: "CustomDatatypes"))
    UpdateCsvClassifierRequest.add_member(:serde, Shapes::ShapeRef.new(shape: CsvSerdeOption, location_name: "Serde"))
    UpdateCsvClassifierRequest.struct_class = Types::UpdateCsvClassifierRequest

    UpdateDataQualityRulesetRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateDataQualityRulesetRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    UpdateDataQualityRulesetRequest.add_member(:ruleset, Shapes::ShapeRef.new(shape: DataQualityRulesetString, location_name: "Ruleset"))
    UpdateDataQualityRulesetRequest.struct_class = Types::UpdateDataQualityRulesetRequest

    UpdateDataQualityRulesetResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    UpdateDataQualityRulesetResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    UpdateDataQualityRulesetResponse.add_member(:ruleset, Shapes::ShapeRef.new(shape: DataQualityRulesetString, location_name: "Ruleset"))
    UpdateDataQualityRulesetResponse.struct_class = Types::UpdateDataQualityRulesetResponse

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

    UpdateIcebergInput.add_member(:update_iceberg_table_input, Shapes::ShapeRef.new(shape: UpdateIcebergTableInput, required: true, location_name: "UpdateIcebergTableInput"))
    UpdateIcebergInput.struct_class = Types::UpdateIcebergInput

    UpdateIcebergTableInput.add_member(:updates, Shapes::ShapeRef.new(shape: IcebergTableUpdateList, required: true, location_name: "Updates"))
    UpdateIcebergTableInput.struct_class = Types::UpdateIcebergTableInput

    UpdateIntegrationResourcePropertyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "ResourceArn"))
    UpdateIntegrationResourcePropertyRequest.add_member(:source_processing_properties, Shapes::ShapeRef.new(shape: SourceProcessingProperties, location_name: "SourceProcessingProperties"))
    UpdateIntegrationResourcePropertyRequest.add_member(:target_processing_properties, Shapes::ShapeRef.new(shape: TargetProcessingProperties, location_name: "TargetProcessingProperties"))
    UpdateIntegrationResourcePropertyRequest.struct_class = Types::UpdateIntegrationResourcePropertyRequest

    UpdateIntegrationResourcePropertyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String128, location_name: "ResourceArn"))
    UpdateIntegrationResourcePropertyResponse.add_member(:source_processing_properties, Shapes::ShapeRef.new(shape: SourceProcessingProperties, location_name: "SourceProcessingProperties"))
    UpdateIntegrationResourcePropertyResponse.add_member(:target_processing_properties, Shapes::ShapeRef.new(shape: TargetProcessingProperties, location_name: "TargetProcessingProperties"))
    UpdateIntegrationResourcePropertyResponse.struct_class = Types::UpdateIntegrationResourcePropertyResponse

    UpdateIntegrationTablePropertiesRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "ResourceArn"))
    UpdateIntegrationTablePropertiesRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "TableName"))
    UpdateIntegrationTablePropertiesRequest.add_member(:source_table_config, Shapes::ShapeRef.new(shape: SourceTableConfig, location_name: "SourceTableConfig"))
    UpdateIntegrationTablePropertiesRequest.add_member(:target_table_config, Shapes::ShapeRef.new(shape: TargetTableConfig, location_name: "TargetTableConfig"))
    UpdateIntegrationTablePropertiesRequest.struct_class = Types::UpdateIntegrationTablePropertiesRequest

    UpdateIntegrationTablePropertiesResponse.struct_class = Types::UpdateIntegrationTablePropertiesResponse

    UpdateJobFromSourceControlRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    UpdateJobFromSourceControlRequest.add_member(:provider, Shapes::ShapeRef.new(shape: SourceControlProvider, location_name: "Provider"))
    UpdateJobFromSourceControlRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: NameString, location_name: "RepositoryName"))
    UpdateJobFromSourceControlRequest.add_member(:repository_owner, Shapes::ShapeRef.new(shape: NameString, location_name: "RepositoryOwner"))
    UpdateJobFromSourceControlRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: NameString, location_name: "BranchName"))
    UpdateJobFromSourceControlRequest.add_member(:folder, Shapes::ShapeRef.new(shape: NameString, location_name: "Folder"))
    UpdateJobFromSourceControlRequest.add_member(:commit_id, Shapes::ShapeRef.new(shape: CommitIdString, location_name: "CommitId"))
    UpdateJobFromSourceControlRequest.add_member(:auth_strategy, Shapes::ShapeRef.new(shape: SourceControlAuthStrategy, location_name: "AuthStrategy"))
    UpdateJobFromSourceControlRequest.add_member(:auth_token, Shapes::ShapeRef.new(shape: AuthTokenString, location_name: "AuthToken"))
    UpdateJobFromSourceControlRequest.struct_class = Types::UpdateJobFromSourceControlRequest

    UpdateJobFromSourceControlResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    UpdateJobFromSourceControlResponse.struct_class = Types::UpdateJobFromSourceControlResponse

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

    UpdateOpenTableFormatInput.add_member(:update_iceberg_input, Shapes::ShapeRef.new(shape: UpdateIcebergInput, location_name: "UpdateIcebergInput"))
    UpdateOpenTableFormatInput.struct_class = Types::UpdateOpenTableFormatInput

    UpdatePartitionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdatePartitionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdatePartitionRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    UpdatePartitionRequest.add_member(:partition_value_list, Shapes::ShapeRef.new(shape: BoundedPartitionValueList, required: true, location_name: "PartitionValueList"))
    UpdatePartitionRequest.add_member(:partition_input, Shapes::ShapeRef.new(shape: PartitionInput, required: true, location_name: "PartitionInput"))
    UpdatePartitionRequest.struct_class = Types::UpdatePartitionRequest

    UpdatePartitionResponse.struct_class = Types::UpdatePartitionResponse

    UpdateRegistryInput.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "RegistryId"))
    UpdateRegistryInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, required: true, location_name: "Description"))
    UpdateRegistryInput.struct_class = Types::UpdateRegistryInput

    UpdateRegistryResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    UpdateRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "RegistryArn"))
    UpdateRegistryResponse.struct_class = Types::UpdateRegistryResponse

    UpdateSchemaInput.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, required: true, location_name: "SchemaId"))
    UpdateSchemaInput.add_member(:schema_version_number, Shapes::ShapeRef.new(shape: SchemaVersionNumber, location_name: "SchemaVersionNumber"))
    UpdateSchemaInput.add_member(:compatibility, Shapes::ShapeRef.new(shape: Compatibility, location_name: "Compatibility"))
    UpdateSchemaInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    UpdateSchemaInput.struct_class = Types::UpdateSchemaInput

    UpdateSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: GlueResourceArn, location_name: "SchemaArn"))
    UpdateSchemaResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "SchemaName"))
    UpdateSchemaResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: SchemaRegistryNameString, location_name: "RegistryName"))
    UpdateSchemaResponse.struct_class = Types::UpdateSchemaResponse

    UpdateSourceControlFromJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    UpdateSourceControlFromJobRequest.add_member(:provider, Shapes::ShapeRef.new(shape: SourceControlProvider, location_name: "Provider"))
    UpdateSourceControlFromJobRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: NameString, location_name: "RepositoryName"))
    UpdateSourceControlFromJobRequest.add_member(:repository_owner, Shapes::ShapeRef.new(shape: NameString, location_name: "RepositoryOwner"))
    UpdateSourceControlFromJobRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: NameString, location_name: "BranchName"))
    UpdateSourceControlFromJobRequest.add_member(:folder, Shapes::ShapeRef.new(shape: NameString, location_name: "Folder"))
    UpdateSourceControlFromJobRequest.add_member(:commit_id, Shapes::ShapeRef.new(shape: CommitIdString, location_name: "CommitId"))
    UpdateSourceControlFromJobRequest.add_member(:auth_strategy, Shapes::ShapeRef.new(shape: SourceControlAuthStrategy, location_name: "AuthStrategy"))
    UpdateSourceControlFromJobRequest.add_member(:auth_token, Shapes::ShapeRef.new(shape: AuthTokenString, location_name: "AuthToken"))
    UpdateSourceControlFromJobRequest.struct_class = Types::UpdateSourceControlFromJobRequest

    UpdateSourceControlFromJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: NameString, location_name: "JobName"))
    UpdateSourceControlFromJobResponse.struct_class = Types::UpdateSourceControlFromJobResponse

    UpdateTableOptimizerRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, required: true, location_name: "CatalogId"))
    UpdateTableOptimizerRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdateTableOptimizerRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TableName"))
    UpdateTableOptimizerRequest.add_member(:type, Shapes::ShapeRef.new(shape: TableOptimizerType, required: true, location_name: "Type"))
    UpdateTableOptimizerRequest.add_member(:table_optimizer_configuration, Shapes::ShapeRef.new(shape: TableOptimizerConfiguration, required: true, location_name: "TableOptimizerConfiguration"))
    UpdateTableOptimizerRequest.struct_class = Types::UpdateTableOptimizerRequest

    UpdateTableOptimizerResponse.struct_class = Types::UpdateTableOptimizerResponse

    UpdateTableRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateTableRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdateTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    UpdateTableRequest.add_member(:table_input, Shapes::ShapeRef.new(shape: TableInput, location_name: "TableInput"))
    UpdateTableRequest.add_member(:skip_archive, Shapes::ShapeRef.new(shape: BooleanNullable, location_name: "SkipArchive"))
    UpdateTableRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdString, location_name: "TransactionId"))
    UpdateTableRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: VersionString, location_name: "VersionId"))
    UpdateTableRequest.add_member(:view_update_action, Shapes::ShapeRef.new(shape: ViewUpdateAction, location_name: "ViewUpdateAction"))
    UpdateTableRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "Force"))
    UpdateTableRequest.add_member(:update_open_table_format_input, Shapes::ShapeRef.new(shape: UpdateOpenTableFormatInput, location_name: "UpdateOpenTableFormatInput"))
    UpdateTableRequest.struct_class = Types::UpdateTableRequest

    UpdateTableResponse.struct_class = Types::UpdateTableResponse

    UpdateTriggerRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateTriggerRequest.add_member(:trigger_update, Shapes::ShapeRef.new(shape: TriggerUpdate, required: true, location_name: "TriggerUpdate"))
    UpdateTriggerRequest.struct_class = Types::UpdateTriggerRequest

    UpdateTriggerResponse.add_member(:trigger, Shapes::ShapeRef.new(shape: Trigger, location_name: "Trigger"))
    UpdateTriggerResponse.struct_class = Types::UpdateTriggerResponse

    UpdateUsageProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateUsageProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    UpdateUsageProfileRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ProfileConfiguration, required: true, location_name: "Configuration"))
    UpdateUsageProfileRequest.struct_class = Types::UpdateUsageProfileRequest

    UpdateUsageProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    UpdateUsageProfileResponse.struct_class = Types::UpdateUsageProfileResponse

    UpdateUserDefinedFunctionRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateUserDefinedFunctionRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    UpdateUserDefinedFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "FunctionName"))
    UpdateUserDefinedFunctionRequest.add_member(:function_input, Shapes::ShapeRef.new(shape: UserDefinedFunctionInput, required: true, location_name: "FunctionInput"))
    UpdateUserDefinedFunctionRequest.struct_class = Types::UpdateUserDefinedFunctionRequest

    UpdateUserDefinedFunctionResponse.struct_class = Types::UpdateUserDefinedFunctionResponse

    UpdateWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowDescriptionString, location_name: "Description"))
    UpdateWorkflowRequest.add_member(:default_run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, location_name: "DefaultRunProperties"))
    UpdateWorkflowRequest.add_member(:max_concurrent_runs, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaxConcurrentRuns"))
    UpdateWorkflowRequest.struct_class = Types::UpdateWorkflowRequest

    UpdateWorkflowResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    UpdateWorkflowResponse.struct_class = Types::UpdateWorkflowResponse

    UpdateXMLClassifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    UpdateXMLClassifierRequest.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, location_name: "Classification"))
    UpdateXMLClassifierRequest.add_member(:row_tag, Shapes::ShapeRef.new(shape: RowTag, location_name: "RowTag"))
    UpdateXMLClassifierRequest.struct_class = Types::UpdateXMLClassifierRequest

    UpsertRedshiftTargetOptions.add_member(:table_location, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "TableLocation"))
    UpsertRedshiftTargetOptions.add_member(:connection_name, Shapes::ShapeRef.new(shape: EnclosedInStringProperty, location_name: "ConnectionName"))
    UpsertRedshiftTargetOptions.add_member(:upsert_keys, Shapes::ShapeRef.new(shape: EnclosedInStringPropertiesMinOne, location_name: "UpsertKeys"))
    UpsertRedshiftTargetOptions.struct_class = Types::UpsertRedshiftTargetOptions

    UsageProfileDefinition.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    UsageProfileDefinition.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    UsageProfileDefinition.add_member(:created_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedOn"))
    UsageProfileDefinition.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "LastModifiedOn"))
    UsageProfileDefinition.struct_class = Types::UsageProfileDefinition

    UsageProfileDefinitionList.member = Shapes::ShapeRef.new(shape: UsageProfileDefinition)

    UserDefinedFunction.add_member(:function_name, Shapes::ShapeRef.new(shape: NameString, location_name: "FunctionName"))
    UserDefinedFunction.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, location_name: "DatabaseName"))
    UserDefinedFunction.add_member(:class_name, Shapes::ShapeRef.new(shape: NameString, location_name: "ClassName"))
    UserDefinedFunction.add_member(:owner_name, Shapes::ShapeRef.new(shape: NameString, location_name: "OwnerName"))
    UserDefinedFunction.add_member(:owner_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "OwnerType"))
    UserDefinedFunction.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    UserDefinedFunction.add_member(:resource_uris, Shapes::ShapeRef.new(shape: ResourceUriList, location_name: "ResourceUris"))
    UserDefinedFunction.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
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

    ViewDefinition.add_member(:is_protected, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IsProtected"))
    ViewDefinition.add_member(:definer, Shapes::ShapeRef.new(shape: ArnString, location_name: "Definer"))
    ViewDefinition.add_member(:sub_objects, Shapes::ShapeRef.new(shape: ViewSubObjectsList, location_name: "SubObjects"))
    ViewDefinition.add_member(:representations, Shapes::ShapeRef.new(shape: ViewRepresentationList, location_name: "Representations"))
    ViewDefinition.struct_class = Types::ViewDefinition

    ViewDefinitionInput.add_member(:is_protected, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IsProtected"))
    ViewDefinitionInput.add_member(:definer, Shapes::ShapeRef.new(shape: ArnString, location_name: "Definer"))
    ViewDefinitionInput.add_member(:representations, Shapes::ShapeRef.new(shape: ViewRepresentationInputList, location_name: "Representations"))
    ViewDefinitionInput.add_member(:sub_objects, Shapes::ShapeRef.new(shape: ViewSubObjectsList, location_name: "SubObjects"))
    ViewDefinitionInput.struct_class = Types::ViewDefinitionInput

    ViewRepresentation.add_member(:dialect, Shapes::ShapeRef.new(shape: ViewDialect, location_name: "Dialect"))
    ViewRepresentation.add_member(:dialect_version, Shapes::ShapeRef.new(shape: ViewDialectVersionString, location_name: "DialectVersion"))
    ViewRepresentation.add_member(:view_original_text, Shapes::ShapeRef.new(shape: ViewTextString, location_name: "ViewOriginalText"))
    ViewRepresentation.add_member(:view_expanded_text, Shapes::ShapeRef.new(shape: ViewTextString, location_name: "ViewExpandedText"))
    ViewRepresentation.add_member(:validation_connection, Shapes::ShapeRef.new(shape: NameString, location_name: "ValidationConnection"))
    ViewRepresentation.add_member(:is_stale, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "IsStale"))
    ViewRepresentation.struct_class = Types::ViewRepresentation

    ViewRepresentationInput.add_member(:dialect, Shapes::ShapeRef.new(shape: ViewDialect, location_name: "Dialect"))
    ViewRepresentationInput.add_member(:dialect_version, Shapes::ShapeRef.new(shape: ViewDialectVersionString, location_name: "DialectVersion"))
    ViewRepresentationInput.add_member(:view_original_text, Shapes::ShapeRef.new(shape: ViewTextString, location_name: "ViewOriginalText"))
    ViewRepresentationInput.add_member(:validation_connection, Shapes::ShapeRef.new(shape: NameString, location_name: "ValidationConnection"))
    ViewRepresentationInput.add_member(:view_expanded_text, Shapes::ShapeRef.new(shape: ViewTextString, location_name: "ViewExpandedText"))
    ViewRepresentationInput.struct_class = Types::ViewRepresentationInput

    ViewRepresentationInputList.member = Shapes::ShapeRef.new(shape: ViewRepresentationInput)

    ViewRepresentationList.member = Shapes::ShapeRef.new(shape: ViewRepresentation)

    ViewSubObjectsList.member = Shapes::ShapeRef.new(shape: ArnString)

    ViewValidation.add_member(:dialect, Shapes::ShapeRef.new(shape: ViewDialect, location_name: "Dialect"))
    ViewValidation.add_member(:dialect_version, Shapes::ShapeRef.new(shape: ViewDialectVersionString, location_name: "DialectVersion"))
    ViewValidation.add_member(:view_validation_text, Shapes::ShapeRef.new(shape: ViewTextString, location_name: "ViewValidationText"))
    ViewValidation.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    ViewValidation.add_member(:state, Shapes::ShapeRef.new(shape: ResourceState, location_name: "State"))
    ViewValidation.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "Error"))
    ViewValidation.struct_class = Types::ViewValidation

    ViewValidationList.member = Shapes::ShapeRef.new(shape: ViewValidation)

    Workflow.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    Workflow.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    Workflow.add_member(:default_run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, location_name: "DefaultRunProperties"))
    Workflow.add_member(:created_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedOn"))
    Workflow.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "LastModifiedOn"))
    Workflow.add_member(:last_run, Shapes::ShapeRef.new(shape: WorkflowRun, location_name: "LastRun"))
    Workflow.add_member(:graph, Shapes::ShapeRef.new(shape: WorkflowGraph, location_name: "Graph"))
    Workflow.add_member(:max_concurrent_runs, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaxConcurrentRuns"))
    Workflow.add_member(:blueprint_details, Shapes::ShapeRef.new(shape: BlueprintDetails, location_name: "BlueprintDetails"))
    Workflow.struct_class = Types::Workflow

    WorkflowGraph.add_member(:nodes, Shapes::ShapeRef.new(shape: NodeList, location_name: "Nodes"))
    WorkflowGraph.add_member(:edges, Shapes::ShapeRef.new(shape: EdgeList, location_name: "Edges"))
    WorkflowGraph.struct_class = Types::WorkflowGraph

    WorkflowNames.member = Shapes::ShapeRef.new(shape: NameString)

    WorkflowRun.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    WorkflowRun.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "WorkflowRunId"))
    WorkflowRun.add_member(:previous_run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "PreviousRunId"))
    WorkflowRun.add_member(:workflow_run_properties, Shapes::ShapeRef.new(shape: WorkflowRunProperties, location_name: "WorkflowRunProperties"))
    WorkflowRun.add_member(:started_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "StartedOn"))
    WorkflowRun.add_member(:completed_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CompletedOn"))
    WorkflowRun.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowRunStatus, location_name: "Status"))
    WorkflowRun.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorString, location_name: "ErrorMessage"))
    WorkflowRun.add_member(:statistics, Shapes::ShapeRef.new(shape: WorkflowRunStatistics, location_name: "Statistics"))
    WorkflowRun.add_member(:graph, Shapes::ShapeRef.new(shape: WorkflowGraph, location_name: "Graph"))
    WorkflowRun.add_member(:starting_event_batch_condition, Shapes::ShapeRef.new(shape: StartingEventBatchCondition, location_name: "StartingEventBatchCondition"))
    WorkflowRun.struct_class = Types::WorkflowRun

    WorkflowRunProperties.key = Shapes::ShapeRef.new(shape: IdString)
    WorkflowRunProperties.value = Shapes::ShapeRef.new(shape: GenericString)

    WorkflowRunStatistics.add_member(:total_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "TotalActions"))
    WorkflowRunStatistics.add_member(:timeout_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "TimeoutActions"))
    WorkflowRunStatistics.add_member(:failed_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "FailedActions"))
    WorkflowRunStatistics.add_member(:stopped_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "StoppedActions"))
    WorkflowRunStatistics.add_member(:succeeded_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "SucceededActions"))
    WorkflowRunStatistics.add_member(:running_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "RunningActions"))
    WorkflowRunStatistics.add_member(:errored_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "ErroredActions"))
    WorkflowRunStatistics.add_member(:waiting_actions, Shapes::ShapeRef.new(shape: IntegerValue, location_name: "WaitingActions"))
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
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "glue",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
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
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
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

      api.add_operation(:batch_get_blueprints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetBlueprints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetBlueprintsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetBlueprintsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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

      api.add_operation(:batch_get_custom_entity_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetCustomEntityTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetCustomEntityTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetCustomEntityTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:batch_get_data_quality_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetDataQualityResult"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetDataQualityResultRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetDataQualityResultResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
      end)

      api.add_operation(:batch_get_table_optimizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetTableOptimizer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetTableOptimizerRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetTableOptimizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:batch_put_data_quality_statistic_annotation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutDataQualityStatisticAnnotation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchPutDataQualityStatisticAnnotationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutDataQualityStatisticAnnotationResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
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

      api.add_operation(:batch_update_partition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdatePartition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdatePartitionRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdatePartitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:cancel_data_quality_rule_recommendation_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelDataQualityRuleRecommendationRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelDataQualityRuleRecommendationRunRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelDataQualityRuleRecommendationRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:cancel_data_quality_ruleset_evaluation_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelDataQualityRulesetEvaluationRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelDataQualityRulesetEvaluationRunRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelDataQualityRulesetEvaluationRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:cancel_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelStatementRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelStatementResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalSessionStateException)
      end)

      api.add_operation(:check_schema_version_validity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckSchemaVersionValidity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CheckSchemaVersionValidityInput)
        o.output = Shapes::ShapeRef.new(shape: CheckSchemaVersionValidityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_blueprint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBlueprint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBlueprintRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBlueprintResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
      end)

      api.add_operation(:create_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FederatedResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
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

      api.add_operation(:create_column_statistics_task_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateColumnStatisticsTaskSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateColumnStatisticsTaskSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateColumnStatisticsTaskSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ColumnStatisticsTaskRunningException)
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

      api.add_operation(:create_custom_entity_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomEntityType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomEntityTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomEntityTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
      end)

      api.add_operation(:create_data_quality_ruleset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataQualityRuleset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataQualityRulesetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataQualityRulesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: FederatedResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
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

      api.add_operation(:create_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:create_integration_resource_property, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntegrationResourceProperty"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIntegrationResourcePropertyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIntegrationResourcePropertyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:create_integration_table_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntegrationTableProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIntegrationTablePropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIntegrationTablePropertiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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

      api.add_operation(:create_partition_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePartitionIndex"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePartitionIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePartitionIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:create_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistry"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistryInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSchemaInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:create_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
      end)

      api.add_operation(:create_table_optimizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTableOptimizer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTableOptimizerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTableOptimizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:create_usage_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUsageProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUsageProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUsageProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
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

      api.add_operation(:delete_blueprint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBlueprint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBlueprintRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBlueprintResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
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

      api.add_operation(:delete_column_statistics_for_partition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteColumnStatisticsForPartition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteColumnStatisticsForPartitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteColumnStatisticsForPartitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:delete_column_statistics_for_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteColumnStatisticsForTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteColumnStatisticsForTableRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteColumnStatisticsForTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:delete_column_statistics_task_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteColumnStatisticsTaskSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteColumnStatisticsTaskSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteColumnStatisticsTaskSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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

      api.add_operation(:delete_custom_entity_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomEntityType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomEntityTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomEntityTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:delete_data_quality_ruleset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataQualityRuleset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataQualityRulesetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataQualityRulesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
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

      api.add_operation(:delete_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIntegrationStateFault)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:delete_integration_table_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegrationTableProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationTablePropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIntegrationTablePropertiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:delete_partition_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePartitionIndex"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePartitionIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePartitionIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:delete_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistry"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistryInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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

      api.add_operation(:delete_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSchemaInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_schema_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchemaVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSchemaVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSchemaVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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

      api.add_operation(:delete_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalSessionStateException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
      end)

      api.add_operation(:delete_table_optimizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTableOptimizer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableOptimizerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTableOptimizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:delete_usage_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUsageProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUsageProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUsageProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
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

      api.add_operation(:describe_connection_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnectionType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectionTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectionTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_entity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEntity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEntityRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEntityResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_inbound_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInboundIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInboundIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInboundIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TargetResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:describe_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_blueprint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBlueprint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBlueprintRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBlueprintResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_blueprint_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBlueprintRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBlueprintRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBlueprintRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_blueprint_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBlueprintRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBlueprintRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBlueprintRunsResponse)
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

      api.add_operation(:get_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
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

      api.add_operation(:get_catalogs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCatalogs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCatalogsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCatalogsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
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

      api.add_operation(:get_column_statistics_for_partition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetColumnStatisticsForPartition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetColumnStatisticsForPartitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetColumnStatisticsForPartitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:get_column_statistics_for_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetColumnStatisticsForTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetColumnStatisticsForTableRequest)
        o.output = Shapes::ShapeRef.new(shape: GetColumnStatisticsForTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:get_column_statistics_task_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetColumnStatisticsTaskRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetColumnStatisticsTaskRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetColumnStatisticsTaskRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_column_statistics_task_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetColumnStatisticsTaskRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetColumnStatisticsTaskRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetColumnStatisticsTaskRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_column_statistics_task_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetColumnStatisticsTaskSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetColumnStatisticsTaskSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetColumnStatisticsTaskSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
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

      api.add_operation(:get_custom_entity_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomEntityType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCustomEntityTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomEntityTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
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

      api.add_operation(:get_data_quality_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataQualityModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataQualityModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataQualityModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_data_quality_model_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataQualityModelResult"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataQualityModelResultRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataQualityModelResultResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_data_quality_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataQualityResult"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataQualityResultRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataQualityResultResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:get_data_quality_rule_recommendation_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataQualityRuleRecommendationRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataQualityRuleRecommendationRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataQualityRuleRecommendationRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_data_quality_ruleset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataQualityRuleset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataQualityRulesetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataQualityRulesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_data_quality_ruleset_evaluation_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataQualityRulesetEvaluationRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataQualityRulesetEvaluationRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataQualityRulesetEvaluationRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
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
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
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

      api.add_operation(:get_entity_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEntityRecords"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEntityRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEntityRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_integration_resource_property, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegrationResourceProperty"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationResourcePropertyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationResourcePropertyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_integration_table_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegrationTableProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationTablePropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationTablePropertiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
      end)

      api.add_operation(:get_partition_indexes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPartitionIndexes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPartitionIndexesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPartitionIndexesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
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

      api.add_operation(:get_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegistry"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRegistryInput)
        o.output = Shapes::ShapeRef.new(shape: GetRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_resource_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:get_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaInput)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_schema_by_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchemaByDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaByDefinitionInput)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaByDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_schema_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchemaVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaVersionInput)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_schema_versions_diff, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchemaVersionsDiff"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaVersionsDiffInput)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaVersionsDiffResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:get_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetStatementRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStatementResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalSessionStateException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
      end)

      api.add_operation(:get_table_optimizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableOptimizer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTableOptimizerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableOptimizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
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

      api.add_operation(:get_unfiltered_partition_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUnfilteredPartitionMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUnfilteredPartitionMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUnfilteredPartitionMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: PermissionTypeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
      end)

      api.add_operation(:get_unfiltered_partitions_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUnfilteredPartitionsMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUnfilteredPartitionsMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUnfilteredPartitionsMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: PermissionTypeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_unfiltered_table_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUnfilteredTableMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUnfilteredTableMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUnfilteredTableMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: PermissionTypeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
      end)

      api.add_operation(:get_usage_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUsageProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUsageProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUsageProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
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

      api.add_operation(:list_blueprints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBlueprints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBlueprintsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBlueprintsResponse)
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

      api.add_operation(:list_column_statistics_task_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListColumnStatisticsTaskRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListColumnStatisticsTaskRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListColumnStatisticsTaskRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_connection_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectionTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConnectionTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectionTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:list_crawls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCrawls"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCrawlsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCrawlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:list_custom_entity_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomEntityTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCustomEntityTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomEntityTypesResponse)
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

      api.add_operation(:list_data_quality_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataQualityResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDataQualityResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataQualityResultsResponse)
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

      api.add_operation(:list_data_quality_rule_recommendation_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataQualityRuleRecommendationRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDataQualityRuleRecommendationRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataQualityRuleRecommendationRunsResponse)
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

      api.add_operation(:list_data_quality_ruleset_evaluation_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataQualityRulesetEvaluationRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDataQualityRulesetEvaluationRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataQualityRulesetEvaluationRunsResponse)
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

      api.add_operation(:list_data_quality_rulesets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataQualityRulesets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDataQualityRulesetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataQualityRulesetsResponse)
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

      api.add_operation(:list_data_quality_statistic_annotations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataQualityStatisticAnnotations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDataQualityStatisticAnnotationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataQualityStatisticAnnotationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:list_data_quality_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataQualityStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDataQualityStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataQualityStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:list_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
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

      api.add_operation(:list_registries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegistries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRegistriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListRegistriesResponse)
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

      api.add_operation(:list_schema_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchemaVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSchemaVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSchemaVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchemas"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSchemasInput)
        o.output = Shapes::ShapeRef.new(shape: ListSchemasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:list_statements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStatements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStatementsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStatementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalSessionStateException)
      end)

      api.add_operation(:list_table_optimizer_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTableOptimizerRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTableOptimizerRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTableOptimizerRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:list_usage_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsageProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUsageProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsageProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
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

      api.add_operation(:modify_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIntegrationStateFault)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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

      api.add_operation(:put_data_quality_profile_annotation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDataQualityProfileAnnotation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDataQualityProfileAnnotationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDataQualityProfileAnnotationResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:put_schema_version_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSchemaVersionMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutSchemaVersionMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: PutSchemaVersionMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
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

      api.add_operation(:query_schema_version_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "QuerySchemaVersionMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: QuerySchemaVersionMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: QuerySchemaVersionMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:register_schema_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterSchemaVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterSchemaVersionInput)
        o.output = Shapes::ShapeRef.new(shape: RegisterSchemaVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:remove_schema_version_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveSchemaVersionMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveSchemaVersionMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveSchemaVersionMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
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

      api.add_operation(:resume_workflow_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeWorkflowRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResumeWorkflowRunRequest)
        o.output = Shapes::ShapeRef.new(shape: ResumeWorkflowRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentRunsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalWorkflowStateException)
      end)

      api.add_operation(:run_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RunStatement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RunStatementRequest)
        o.output = Shapes::ShapeRef.new(shape: RunStatementResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalSessionStateException)
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

      api.add_operation(:start_blueprint_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBlueprintRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartBlueprintRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartBlueprintRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalBlueprintStateException)
      end)

      api.add_operation(:start_column_statistics_task_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartColumnStatisticsTaskRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartColumnStatisticsTaskRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartColumnStatisticsTaskRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ColumnStatisticsTaskRunningException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:start_column_statistics_task_run_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartColumnStatisticsTaskRunSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartColumnStatisticsTaskRunScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: StartColumnStatisticsTaskRunScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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

      api.add_operation(:start_data_quality_rule_recommendation_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDataQualityRuleRecommendationRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDataQualityRuleRecommendationRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDataQualityRuleRecommendationRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_data_quality_ruleset_evaluation_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDataQualityRulesetEvaluationRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDataQualityRulesetEvaluationRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDataQualityRulesetEvaluationRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:stop_column_statistics_task_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopColumnStatisticsTaskRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopColumnStatisticsTaskRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StopColumnStatisticsTaskRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ColumnStatisticsTaskNotRunningException)
        o.errors << Shapes::ShapeRef.new(shape: ColumnStatisticsTaskStoppingException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:stop_column_statistics_task_run_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopColumnStatisticsTaskRunSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopColumnStatisticsTaskRunScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: StopColumnStatisticsTaskRunScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
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

      api.add_operation(:stop_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalSessionStateException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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

      api.add_operation(:test_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: TestConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
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

      api.add_operation(:update_blueprint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBlueprint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBlueprintRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBlueprintResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalBlueprintStateException)
      end)

      api.add_operation(:update_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
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

      api.add_operation(:update_column_statistics_for_partition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateColumnStatisticsForPartition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateColumnStatisticsForPartitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateColumnStatisticsForPartitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:update_column_statistics_for_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateColumnStatisticsForTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateColumnStatisticsForTableRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateColumnStatisticsForTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
      end)

      api.add_operation(:update_column_statistics_task_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateColumnStatisticsTaskSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateColumnStatisticsTaskSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateColumnStatisticsTaskSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: VersionMismatchException)
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

      api.add_operation(:update_data_quality_ruleset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataQualityRuleset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataQualityRulesetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataQualityRulesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
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

      api.add_operation(:update_integration_resource_property, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIntegrationResourceProperty"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateIntegrationResourcePropertyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIntegrationResourcePropertyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:update_integration_table_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIntegrationTableProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateIntegrationTablePropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIntegrationTablePropertiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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

      api.add_operation(:update_job_from_source_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJobFromSourceControl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateJobFromSourceControlRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobFromSourceControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
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

      api.add_operation(:update_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistry"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSchemaInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_source_control_from_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSourceControlFromJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSourceControlFromJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSourceControlFromJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceException)
        o.errors << Shapes::ShapeRef.new(shape: FederationSourceRetryableException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
      end)

      api.add_operation(:update_table_optimizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTableOptimizer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTableOptimizerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTableOptimizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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

      api.add_operation(:update_usage_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUsageProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUsageProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUsageProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
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
