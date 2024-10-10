# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BedrockAgent
  # @api private
  module ClientApi

    include Seahorse::Model

    APISchema = Shapes::UnionShape.new(name: 'APISchema')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionGroupExecutor = Shapes::UnionShape.new(name: 'ActionGroupExecutor')
    ActionGroupSignature = Shapes::StringShape.new(name: 'ActionGroupSignature')
    ActionGroupState = Shapes::StringShape.new(name: 'ActionGroupState')
    ActionGroupSummaries = Shapes::ListShape.new(name: 'ActionGroupSummaries')
    ActionGroupSummary = Shapes::StructureShape.new(name: 'ActionGroupSummary')
    Agent = Shapes::StructureShape.new(name: 'Agent')
    AgentActionGroup = Shapes::StructureShape.new(name: 'AgentActionGroup')
    AgentAlias = Shapes::StructureShape.new(name: 'AgentAlias')
    AgentAliasArn = Shapes::StringShape.new(name: 'AgentAliasArn')
    AgentAliasHistoryEvent = Shapes::StructureShape.new(name: 'AgentAliasHistoryEvent')
    AgentAliasHistoryEvents = Shapes::ListShape.new(name: 'AgentAliasHistoryEvents')
    AgentAliasId = Shapes::StringShape.new(name: 'AgentAliasId')
    AgentAliasRoutingConfiguration = Shapes::ListShape.new(name: 'AgentAliasRoutingConfiguration')
    AgentAliasRoutingConfigurationListItem = Shapes::StructureShape.new(name: 'AgentAliasRoutingConfigurationListItem')
    AgentAliasStatus = Shapes::StringShape.new(name: 'AgentAliasStatus')
    AgentAliasSummaries = Shapes::ListShape.new(name: 'AgentAliasSummaries')
    AgentAliasSummary = Shapes::StructureShape.new(name: 'AgentAliasSummary')
    AgentArn = Shapes::StringShape.new(name: 'AgentArn')
    AgentFlowNodeConfiguration = Shapes::StructureShape.new(name: 'AgentFlowNodeConfiguration')
    AgentKnowledgeBase = Shapes::StructureShape.new(name: 'AgentKnowledgeBase')
    AgentKnowledgeBaseSummaries = Shapes::ListShape.new(name: 'AgentKnowledgeBaseSummaries')
    AgentKnowledgeBaseSummary = Shapes::StructureShape.new(name: 'AgentKnowledgeBaseSummary')
    AgentRoleArn = Shapes::StringShape.new(name: 'AgentRoleArn')
    AgentStatus = Shapes::StringShape.new(name: 'AgentStatus')
    AgentSummaries = Shapes::ListShape.new(name: 'AgentSummaries')
    AgentSummary = Shapes::StructureShape.new(name: 'AgentSummary')
    AgentVersion = Shapes::StructureShape.new(name: 'AgentVersion')
    AgentVersionSummaries = Shapes::ListShape.new(name: 'AgentVersionSummaries')
    AgentVersionSummary = Shapes::StructureShape.new(name: 'AgentVersionSummary')
    AssociateAgentKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'AssociateAgentKnowledgeBaseRequest')
    AssociateAgentKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'AssociateAgentKnowledgeBaseResponse')
    BasePromptTemplate = Shapes::StringShape.new(name: 'BasePromptTemplate')
    BedrockEmbeddingModelArn = Shapes::StringShape.new(name: 'BedrockEmbeddingModelArn')
    BedrockEmbeddingModelConfiguration = Shapes::StructureShape.new(name: 'BedrockEmbeddingModelConfiguration')
    BedrockFoundationModelConfiguration = Shapes::StructureShape.new(name: 'BedrockFoundationModelConfiguration')
    BedrockModelArn = Shapes::StringShape.new(name: 'BedrockModelArn')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BucketOwnerAccountId = Shapes::StringShape.new(name: 'BucketOwnerAccountId')
    ChunkingConfiguration = Shapes::StructureShape.new(name: 'ChunkingConfiguration')
    ChunkingStrategy = Shapes::StringShape.new(name: 'ChunkingStrategy')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CollectorFlowNodeConfiguration = Shapes::StructureShape.new(name: 'CollectorFlowNodeConfiguration')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ConditionFlowNodeConfiguration = Shapes::StructureShape.new(name: 'ConditionFlowNodeConfiguration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConfluenceAuthType = Shapes::StringShape.new(name: 'ConfluenceAuthType')
    ConfluenceCrawlerConfiguration = Shapes::StructureShape.new(name: 'ConfluenceCrawlerConfiguration')
    ConfluenceDataSourceConfiguration = Shapes::StructureShape.new(name: 'ConfluenceDataSourceConfiguration')
    ConfluenceHostType = Shapes::StringShape.new(name: 'ConfluenceHostType')
    ConfluenceSourceConfiguration = Shapes::StructureShape.new(name: 'ConfluenceSourceConfiguration')
    CrawlFilterConfiguration = Shapes::StructureShape.new(name: 'CrawlFilterConfiguration')
    CrawlFilterConfigurationType = Shapes::StringShape.new(name: 'CrawlFilterConfigurationType')
    CreateAgentActionGroupRequest = Shapes::StructureShape.new(name: 'CreateAgentActionGroupRequest')
    CreateAgentActionGroupResponse = Shapes::StructureShape.new(name: 'CreateAgentActionGroupResponse')
    CreateAgentAliasRequest = Shapes::StructureShape.new(name: 'CreateAgentAliasRequest')
    CreateAgentAliasResponse = Shapes::StructureShape.new(name: 'CreateAgentAliasResponse')
    CreateAgentRequest = Shapes::StructureShape.new(name: 'CreateAgentRequest')
    CreateAgentResponse = Shapes::StructureShape.new(name: 'CreateAgentResponse')
    CreateDataSourceRequest = Shapes::StructureShape.new(name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Shapes::StructureShape.new(name: 'CreateDataSourceResponse')
    CreateFlowAliasRequest = Shapes::StructureShape.new(name: 'CreateFlowAliasRequest')
    CreateFlowAliasResponse = Shapes::StructureShape.new(name: 'CreateFlowAliasResponse')
    CreateFlowRequest = Shapes::StructureShape.new(name: 'CreateFlowRequest')
    CreateFlowResponse = Shapes::StructureShape.new(name: 'CreateFlowResponse')
    CreateFlowVersionRequest = Shapes::StructureShape.new(name: 'CreateFlowVersionRequest')
    CreateFlowVersionResponse = Shapes::StructureShape.new(name: 'CreateFlowVersionResponse')
    CreateKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'CreateKnowledgeBaseRequest')
    CreateKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'CreateKnowledgeBaseResponse')
    CreatePromptRequest = Shapes::StructureShape.new(name: 'CreatePromptRequest')
    CreatePromptResponse = Shapes::StructureShape.new(name: 'CreatePromptResponse')
    CreatePromptVersionRequest = Shapes::StructureShape.new(name: 'CreatePromptVersionRequest')
    CreatePromptVersionResponse = Shapes::StructureShape.new(name: 'CreatePromptVersionResponse')
    CreationMode = Shapes::StringShape.new(name: 'CreationMode')
    CustomControlMethod = Shapes::StringShape.new(name: 'CustomControlMethod')
    CustomTransformationConfiguration = Shapes::StructureShape.new(name: 'CustomTransformationConfiguration')
    DataDeletionPolicy = Shapes::StringShape.new(name: 'DataDeletionPolicy')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSourceConfiguration = Shapes::StructureShape.new(name: 'DataSourceConfiguration')
    DataSourceStatus = Shapes::StringShape.new(name: 'DataSourceStatus')
    DataSourceSummaries = Shapes::ListShape.new(name: 'DataSourceSummaries')
    DataSourceSummary = Shapes::StructureShape.new(name: 'DataSourceSummary')
    DataSourceType = Shapes::StringShape.new(name: 'DataSourceType')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DeleteAgentActionGroupRequest = Shapes::StructureShape.new(name: 'DeleteAgentActionGroupRequest')
    DeleteAgentActionGroupResponse = Shapes::StructureShape.new(name: 'DeleteAgentActionGroupResponse')
    DeleteAgentAliasRequest = Shapes::StructureShape.new(name: 'DeleteAgentAliasRequest')
    DeleteAgentAliasResponse = Shapes::StructureShape.new(name: 'DeleteAgentAliasResponse')
    DeleteAgentRequest = Shapes::StructureShape.new(name: 'DeleteAgentRequest')
    DeleteAgentResponse = Shapes::StructureShape.new(name: 'DeleteAgentResponse')
    DeleteAgentVersionRequest = Shapes::StructureShape.new(name: 'DeleteAgentVersionRequest')
    DeleteAgentVersionResponse = Shapes::StructureShape.new(name: 'DeleteAgentVersionResponse')
    DeleteDataSourceRequest = Shapes::StructureShape.new(name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = Shapes::StructureShape.new(name: 'DeleteDataSourceResponse')
    DeleteFlowAliasRequest = Shapes::StructureShape.new(name: 'DeleteFlowAliasRequest')
    DeleteFlowAliasResponse = Shapes::StructureShape.new(name: 'DeleteFlowAliasResponse')
    DeleteFlowRequest = Shapes::StructureShape.new(name: 'DeleteFlowRequest')
    DeleteFlowResponse = Shapes::StructureShape.new(name: 'DeleteFlowResponse')
    DeleteFlowVersionRequest = Shapes::StructureShape.new(name: 'DeleteFlowVersionRequest')
    DeleteFlowVersionResponse = Shapes::StructureShape.new(name: 'DeleteFlowVersionResponse')
    DeleteKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'DeleteKnowledgeBaseRequest')
    DeleteKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'DeleteKnowledgeBaseResponse')
    DeletePromptRequest = Shapes::StructureShape.new(name: 'DeletePromptRequest')
    DeletePromptResponse = Shapes::StructureShape.new(name: 'DeletePromptResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Dimensions = Shapes::IntegerShape.new(name: 'Dimensions')
    DisassociateAgentKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'DisassociateAgentKnowledgeBaseRequest')
    DisassociateAgentKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'DisassociateAgentKnowledgeBaseResponse')
    DraftVersion = Shapes::StringShape.new(name: 'DraftVersion')
    EmbeddingModelConfiguration = Shapes::StructureShape.new(name: 'EmbeddingModelConfiguration')
    EnabledMemoryTypes = Shapes::ListShape.new(name: 'EnabledMemoryTypes')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FailureReasons = Shapes::ListShape.new(name: 'FailureReasons')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterPattern = Shapes::StringShape.new(name: 'FilterPattern')
    FilteredObjectType = Shapes::StringShape.new(name: 'FilteredObjectType')
    FixedSizeChunkingConfiguration = Shapes::StructureShape.new(name: 'FixedSizeChunkingConfiguration')
    FixedSizeChunkingConfigurationMaxTokensInteger = Shapes::IntegerShape.new(name: 'FixedSizeChunkingConfigurationMaxTokensInteger')
    FixedSizeChunkingConfigurationOverlapPercentageInteger = Shapes::IntegerShape.new(name: 'FixedSizeChunkingConfigurationOverlapPercentageInteger')
    FlowAliasArn = Shapes::StringShape.new(name: 'FlowAliasArn')
    FlowAliasId = Shapes::StringShape.new(name: 'FlowAliasId')
    FlowAliasIdentifier = Shapes::StringShape.new(name: 'FlowAliasIdentifier')
    FlowAliasRoutingConfiguration = Shapes::ListShape.new(name: 'FlowAliasRoutingConfiguration')
    FlowAliasRoutingConfigurationListItem = Shapes::StructureShape.new(name: 'FlowAliasRoutingConfigurationListItem')
    FlowAliasSummaries = Shapes::ListShape.new(name: 'FlowAliasSummaries')
    FlowAliasSummary = Shapes::StructureShape.new(name: 'FlowAliasSummary')
    FlowArn = Shapes::StringShape.new(name: 'FlowArn')
    FlowCondition = Shapes::StructureShape.new(name: 'FlowCondition')
    FlowConditionExpression = Shapes::StringShape.new(name: 'FlowConditionExpression')
    FlowConditionName = Shapes::StringShape.new(name: 'FlowConditionName')
    FlowConditionalConnectionConfiguration = Shapes::StructureShape.new(name: 'FlowConditionalConnectionConfiguration')
    FlowConditions = Shapes::ListShape.new(name: 'FlowConditions')
    FlowConnection = Shapes::StructureShape.new(name: 'FlowConnection')
    FlowConnectionConfiguration = Shapes::UnionShape.new(name: 'FlowConnectionConfiguration')
    FlowConnectionName = Shapes::StringShape.new(name: 'FlowConnectionName')
    FlowConnectionType = Shapes::StringShape.new(name: 'FlowConnectionType')
    FlowConnections = Shapes::ListShape.new(name: 'FlowConnections')
    FlowDataConnectionConfiguration = Shapes::StructureShape.new(name: 'FlowDataConnectionConfiguration')
    FlowDefinition = Shapes::StructureShape.new(name: 'FlowDefinition')
    FlowDescription = Shapes::StringShape.new(name: 'FlowDescription')
    FlowExecutionRoleArn = Shapes::StringShape.new(name: 'FlowExecutionRoleArn')
    FlowId = Shapes::StringShape.new(name: 'FlowId')
    FlowIdentifier = Shapes::StringShape.new(name: 'FlowIdentifier')
    FlowName = Shapes::StringShape.new(name: 'FlowName')
    FlowNode = Shapes::StructureShape.new(name: 'FlowNode')
    FlowNodeConfiguration = Shapes::UnionShape.new(name: 'FlowNodeConfiguration')
    FlowNodeIODataType = Shapes::StringShape.new(name: 'FlowNodeIODataType')
    FlowNodeInput = Shapes::StructureShape.new(name: 'FlowNodeInput')
    FlowNodeInputExpression = Shapes::StringShape.new(name: 'FlowNodeInputExpression')
    FlowNodeInputName = Shapes::StringShape.new(name: 'FlowNodeInputName')
    FlowNodeInputs = Shapes::ListShape.new(name: 'FlowNodeInputs')
    FlowNodeName = Shapes::StringShape.new(name: 'FlowNodeName')
    FlowNodeOutput = Shapes::StructureShape.new(name: 'FlowNodeOutput')
    FlowNodeOutputName = Shapes::StringShape.new(name: 'FlowNodeOutputName')
    FlowNodeOutputs = Shapes::ListShape.new(name: 'FlowNodeOutputs')
    FlowNodeType = Shapes::StringShape.new(name: 'FlowNodeType')
    FlowNodes = Shapes::ListShape.new(name: 'FlowNodes')
    FlowStatus = Shapes::StringShape.new(name: 'FlowStatus')
    FlowSummaries = Shapes::ListShape.new(name: 'FlowSummaries')
    FlowSummary = Shapes::StructureShape.new(name: 'FlowSummary')
    FlowValidation = Shapes::StructureShape.new(name: 'FlowValidation')
    FlowValidationSeverity = Shapes::StringShape.new(name: 'FlowValidationSeverity')
    FlowValidations = Shapes::ListShape.new(name: 'FlowValidations')
    FlowVersionSummaries = Shapes::ListShape.new(name: 'FlowVersionSummaries')
    FlowVersionSummary = Shapes::StructureShape.new(name: 'FlowVersionSummary')
    Function = Shapes::StructureShape.new(name: 'Function')
    FunctionDescription = Shapes::StringShape.new(name: 'FunctionDescription')
    FunctionSchema = Shapes::UnionShape.new(name: 'FunctionSchema')
    Functions = Shapes::ListShape.new(name: 'Functions')
    GetAgentActionGroupRequest = Shapes::StructureShape.new(name: 'GetAgentActionGroupRequest')
    GetAgentActionGroupResponse = Shapes::StructureShape.new(name: 'GetAgentActionGroupResponse')
    GetAgentAliasRequest = Shapes::StructureShape.new(name: 'GetAgentAliasRequest')
    GetAgentAliasResponse = Shapes::StructureShape.new(name: 'GetAgentAliasResponse')
    GetAgentKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'GetAgentKnowledgeBaseRequest')
    GetAgentKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'GetAgentKnowledgeBaseResponse')
    GetAgentRequest = Shapes::StructureShape.new(name: 'GetAgentRequest')
    GetAgentResponse = Shapes::StructureShape.new(name: 'GetAgentResponse')
    GetAgentVersionRequest = Shapes::StructureShape.new(name: 'GetAgentVersionRequest')
    GetAgentVersionResponse = Shapes::StructureShape.new(name: 'GetAgentVersionResponse')
    GetDataSourceRequest = Shapes::StructureShape.new(name: 'GetDataSourceRequest')
    GetDataSourceResponse = Shapes::StructureShape.new(name: 'GetDataSourceResponse')
    GetFlowAliasRequest = Shapes::StructureShape.new(name: 'GetFlowAliasRequest')
    GetFlowAliasResponse = Shapes::StructureShape.new(name: 'GetFlowAliasResponse')
    GetFlowRequest = Shapes::StructureShape.new(name: 'GetFlowRequest')
    GetFlowResponse = Shapes::StructureShape.new(name: 'GetFlowResponse')
    GetFlowVersionRequest = Shapes::StructureShape.new(name: 'GetFlowVersionRequest')
    GetFlowVersionResponse = Shapes::StructureShape.new(name: 'GetFlowVersionResponse')
    GetIngestionJobRequest = Shapes::StructureShape.new(name: 'GetIngestionJobRequest')
    GetIngestionJobResponse = Shapes::StructureShape.new(name: 'GetIngestionJobResponse')
    GetKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'GetKnowledgeBaseRequest')
    GetKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'GetKnowledgeBaseResponse')
    GetPromptRequest = Shapes::StructureShape.new(name: 'GetPromptRequest')
    GetPromptResponse = Shapes::StructureShape.new(name: 'GetPromptResponse')
    GuardrailConfiguration = Shapes::StructureShape.new(name: 'GuardrailConfiguration')
    GuardrailIdentifier = Shapes::StringShape.new(name: 'GuardrailIdentifier')
    GuardrailVersion = Shapes::StringShape.new(name: 'GuardrailVersion')
    HierarchicalChunkingConfiguration = Shapes::StructureShape.new(name: 'HierarchicalChunkingConfiguration')
    HierarchicalChunkingConfigurationOverlapTokensInteger = Shapes::IntegerShape.new(name: 'HierarchicalChunkingConfigurationOverlapTokensInteger')
    HierarchicalChunkingLevelConfiguration = Shapes::StructureShape.new(name: 'HierarchicalChunkingLevelConfiguration')
    HierarchicalChunkingLevelConfigurationMaxTokensInteger = Shapes::IntegerShape.new(name: 'HierarchicalChunkingLevelConfigurationMaxTokensInteger')
    HierarchicalChunkingLevelConfigurations = Shapes::ListShape.new(name: 'HierarchicalChunkingLevelConfigurations')
    HttpsUrl = Shapes::StringShape.new(name: 'HttpsUrl')
    Id = Shapes::StringShape.new(name: 'Id')
    InferenceConfiguration = Shapes::StructureShape.new(name: 'InferenceConfiguration')
    IngestionJob = Shapes::StructureShape.new(name: 'IngestionJob')
    IngestionJobFilter = Shapes::StructureShape.new(name: 'IngestionJobFilter')
    IngestionJobFilterAttribute = Shapes::StringShape.new(name: 'IngestionJobFilterAttribute')
    IngestionJobFilterOperator = Shapes::StringShape.new(name: 'IngestionJobFilterOperator')
    IngestionJobFilterValue = Shapes::StringShape.new(name: 'IngestionJobFilterValue')
    IngestionJobFilterValues = Shapes::ListShape.new(name: 'IngestionJobFilterValues')
    IngestionJobFilters = Shapes::ListShape.new(name: 'IngestionJobFilters')
    IngestionJobSortBy = Shapes::StructureShape.new(name: 'IngestionJobSortBy')
    IngestionJobSortByAttribute = Shapes::StringShape.new(name: 'IngestionJobSortByAttribute')
    IngestionJobStatistics = Shapes::StructureShape.new(name: 'IngestionJobStatistics')
    IngestionJobStatus = Shapes::StringShape.new(name: 'IngestionJobStatus')
    IngestionJobSummaries = Shapes::ListShape.new(name: 'IngestionJobSummaries')
    IngestionJobSummary = Shapes::StructureShape.new(name: 'IngestionJobSummary')
    InputFlowNodeConfiguration = Shapes::StructureShape.new(name: 'InputFlowNodeConfiguration')
    Instruction = Shapes::StringShape.new(name: 'Instruction')
    IntermediateStorage = Shapes::StructureShape.new(name: 'IntermediateStorage')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IteratorFlowNodeConfiguration = Shapes::StructureShape.new(name: 'IteratorFlowNodeConfiguration')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    KnowledgeBase = Shapes::StructureShape.new(name: 'KnowledgeBase')
    KnowledgeBaseArn = Shapes::StringShape.new(name: 'KnowledgeBaseArn')
    KnowledgeBaseConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseConfiguration')
    KnowledgeBaseFlowNodeConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseFlowNodeConfiguration')
    KnowledgeBaseId = Shapes::StringShape.new(name: 'KnowledgeBaseId')
    KnowledgeBaseModelIdentifier = Shapes::StringShape.new(name: 'KnowledgeBaseModelIdentifier')
    KnowledgeBaseRoleArn = Shapes::StringShape.new(name: 'KnowledgeBaseRoleArn')
    KnowledgeBaseState = Shapes::StringShape.new(name: 'KnowledgeBaseState')
    KnowledgeBaseStatus = Shapes::StringShape.new(name: 'KnowledgeBaseStatus')
    KnowledgeBaseStorageType = Shapes::StringShape.new(name: 'KnowledgeBaseStorageType')
    KnowledgeBaseSummaries = Shapes::ListShape.new(name: 'KnowledgeBaseSummaries')
    KnowledgeBaseSummary = Shapes::StructureShape.new(name: 'KnowledgeBaseSummary')
    KnowledgeBaseType = Shapes::StringShape.new(name: 'KnowledgeBaseType')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    LambdaFunctionFlowNodeConfiguration = Shapes::StructureShape.new(name: 'LambdaFunctionFlowNodeConfiguration')
    LexBotAliasArn = Shapes::StringShape.new(name: 'LexBotAliasArn')
    LexBotLocaleId = Shapes::StringShape.new(name: 'LexBotLocaleId')
    LexFlowNodeConfiguration = Shapes::StructureShape.new(name: 'LexFlowNodeConfiguration')
    ListAgentActionGroupsRequest = Shapes::StructureShape.new(name: 'ListAgentActionGroupsRequest')
    ListAgentActionGroupsResponse = Shapes::StructureShape.new(name: 'ListAgentActionGroupsResponse')
    ListAgentAliasesRequest = Shapes::StructureShape.new(name: 'ListAgentAliasesRequest')
    ListAgentAliasesResponse = Shapes::StructureShape.new(name: 'ListAgentAliasesResponse')
    ListAgentKnowledgeBasesRequest = Shapes::StructureShape.new(name: 'ListAgentKnowledgeBasesRequest')
    ListAgentKnowledgeBasesResponse = Shapes::StructureShape.new(name: 'ListAgentKnowledgeBasesResponse')
    ListAgentVersionsRequest = Shapes::StructureShape.new(name: 'ListAgentVersionsRequest')
    ListAgentVersionsResponse = Shapes::StructureShape.new(name: 'ListAgentVersionsResponse')
    ListAgentsRequest = Shapes::StructureShape.new(name: 'ListAgentsRequest')
    ListAgentsResponse = Shapes::StructureShape.new(name: 'ListAgentsResponse')
    ListDataSourcesRequest = Shapes::StructureShape.new(name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Shapes::StructureShape.new(name: 'ListDataSourcesResponse')
    ListFlowAliasesRequest = Shapes::StructureShape.new(name: 'ListFlowAliasesRequest')
    ListFlowAliasesResponse = Shapes::StructureShape.new(name: 'ListFlowAliasesResponse')
    ListFlowVersionsRequest = Shapes::StructureShape.new(name: 'ListFlowVersionsRequest')
    ListFlowVersionsResponse = Shapes::StructureShape.new(name: 'ListFlowVersionsResponse')
    ListFlowsRequest = Shapes::StructureShape.new(name: 'ListFlowsRequest')
    ListFlowsResponse = Shapes::StructureShape.new(name: 'ListFlowsResponse')
    ListIngestionJobsRequest = Shapes::StructureShape.new(name: 'ListIngestionJobsRequest')
    ListIngestionJobsResponse = Shapes::StructureShape.new(name: 'ListIngestionJobsResponse')
    ListKnowledgeBasesRequest = Shapes::StructureShape.new(name: 'ListKnowledgeBasesRequest')
    ListKnowledgeBasesResponse = Shapes::StructureShape.new(name: 'ListKnowledgeBasesResponse')
    ListPromptsRequest = Shapes::StructureShape.new(name: 'ListPromptsRequest')
    ListPromptsResponse = Shapes::StructureShape.new(name: 'ListPromptsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumLength = Shapes::IntegerShape.new(name: 'MaximumLength')
    MemoryConfiguration = Shapes::StructureShape.new(name: 'MemoryConfiguration')
    MemoryType = Shapes::StringShape.new(name: 'MemoryType')
    Microsoft365TenantId = Shapes::StringShape.new(name: 'Microsoft365TenantId')
    ModelIdentifier = Shapes::StringShape.new(name: 'ModelIdentifier')
    MongoDbAtlasCollectionName = Shapes::StringShape.new(name: 'MongoDbAtlasCollectionName')
    MongoDbAtlasConfiguration = Shapes::StructureShape.new(name: 'MongoDbAtlasConfiguration')
    MongoDbAtlasDatabaseName = Shapes::StringShape.new(name: 'MongoDbAtlasDatabaseName')
    MongoDbAtlasEndpoint = Shapes::StringShape.new(name: 'MongoDbAtlasEndpoint')
    MongoDbAtlasEndpointServiceName = Shapes::StringShape.new(name: 'MongoDbAtlasEndpointServiceName')
    MongoDbAtlasFieldMapping = Shapes::StructureShape.new(name: 'MongoDbAtlasFieldMapping')
    MongoDbAtlasIndexName = Shapes::StringShape.new(name: 'MongoDbAtlasIndexName')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    NumericalVersion = Shapes::StringShape.new(name: 'NumericalVersion')
    OpenSearchServerlessCollectionArn = Shapes::StringShape.new(name: 'OpenSearchServerlessCollectionArn')
    OpenSearchServerlessConfiguration = Shapes::StructureShape.new(name: 'OpenSearchServerlessConfiguration')
    OpenSearchServerlessFieldMapping = Shapes::StructureShape.new(name: 'OpenSearchServerlessFieldMapping')
    OpenSearchServerlessIndexName = Shapes::StringShape.new(name: 'OpenSearchServerlessIndexName')
    OutputFlowNodeConfiguration = Shapes::StructureShape.new(name: 'OutputFlowNodeConfiguration')
    ParameterDescription = Shapes::StringShape.new(name: 'ParameterDescription')
    ParameterDetail = Shapes::StructureShape.new(name: 'ParameterDetail')
    ParameterMap = Shapes::MapShape.new(name: 'ParameterMap')
    ParsingConfiguration = Shapes::StructureShape.new(name: 'ParsingConfiguration')
    ParsingPrompt = Shapes::StructureShape.new(name: 'ParsingPrompt')
    ParsingPromptText = Shapes::StringShape.new(name: 'ParsingPromptText')
    ParsingStrategy = Shapes::StringShape.new(name: 'ParsingStrategy')
    PatternObjectFilter = Shapes::StructureShape.new(name: 'PatternObjectFilter')
    PatternObjectFilterConfiguration = Shapes::StructureShape.new(name: 'PatternObjectFilterConfiguration')
    PatternObjectFilterList = Shapes::ListShape.new(name: 'PatternObjectFilterList')
    Payload = Shapes::StringShape.new(name: 'Payload')
    PineconeConfiguration = Shapes::StructureShape.new(name: 'PineconeConfiguration')
    PineconeConnectionString = Shapes::StringShape.new(name: 'PineconeConnectionString')
    PineconeFieldMapping = Shapes::StructureShape.new(name: 'PineconeFieldMapping')
    PineconeNamespace = Shapes::StringShape.new(name: 'PineconeNamespace')
    PrepareAgentRequest = Shapes::StructureShape.new(name: 'PrepareAgentRequest')
    PrepareAgentResponse = Shapes::StructureShape.new(name: 'PrepareAgentResponse')
    PrepareFlowRequest = Shapes::StructureShape.new(name: 'PrepareFlowRequest')
    PrepareFlowResponse = Shapes::StructureShape.new(name: 'PrepareFlowResponse')
    PrimitiveLong = Shapes::IntegerShape.new(name: 'PrimitiveLong')
    PromptArn = Shapes::StringShape.new(name: 'PromptArn')
    PromptConfiguration = Shapes::StructureShape.new(name: 'PromptConfiguration')
    PromptConfigurations = Shapes::ListShape.new(name: 'PromptConfigurations')
    PromptDescription = Shapes::StringShape.new(name: 'PromptDescription')
    PromptFlowNodeConfiguration = Shapes::StructureShape.new(name: 'PromptFlowNodeConfiguration')
    PromptFlowNodeInlineConfiguration = Shapes::StructureShape.new(name: 'PromptFlowNodeInlineConfiguration')
    PromptFlowNodeResourceConfiguration = Shapes::StructureShape.new(name: 'PromptFlowNodeResourceConfiguration')
    PromptFlowNodeSourceConfiguration = Shapes::UnionShape.new(name: 'PromptFlowNodeSourceConfiguration')
    PromptId = Shapes::StringShape.new(name: 'PromptId')
    PromptIdentifier = Shapes::StringShape.new(name: 'PromptIdentifier')
    PromptInferenceConfiguration = Shapes::UnionShape.new(name: 'PromptInferenceConfiguration')
    PromptInputVariable = Shapes::StructureShape.new(name: 'PromptInputVariable')
    PromptInputVariableName = Shapes::StringShape.new(name: 'PromptInputVariableName')
    PromptInputVariablesList = Shapes::ListShape.new(name: 'PromptInputVariablesList')
    PromptMetadataEntry = Shapes::StructureShape.new(name: 'PromptMetadataEntry')
    PromptMetadataKey = Shapes::StringShape.new(name: 'PromptMetadataKey')
    PromptMetadataList = Shapes::ListShape.new(name: 'PromptMetadataList')
    PromptMetadataValue = Shapes::StringShape.new(name: 'PromptMetadataValue')
    PromptModelIdentifier = Shapes::StringShape.new(name: 'PromptModelIdentifier')
    PromptModelInferenceConfiguration = Shapes::StructureShape.new(name: 'PromptModelInferenceConfiguration')
    PromptName = Shapes::StringShape.new(name: 'PromptName')
    PromptOverrideConfiguration = Shapes::StructureShape.new(name: 'PromptOverrideConfiguration')
    PromptState = Shapes::StringShape.new(name: 'PromptState')
    PromptSummaries = Shapes::ListShape.new(name: 'PromptSummaries')
    PromptSummary = Shapes::StructureShape.new(name: 'PromptSummary')
    PromptTemplateConfiguration = Shapes::UnionShape.new(name: 'PromptTemplateConfiguration')
    PromptTemplateType = Shapes::StringShape.new(name: 'PromptTemplateType')
    PromptType = Shapes::StringShape.new(name: 'PromptType')
    PromptVariant = Shapes::StructureShape.new(name: 'PromptVariant')
    PromptVariantList = Shapes::ListShape.new(name: 'PromptVariantList')
    PromptVariantName = Shapes::StringShape.new(name: 'PromptVariantName')
    ProvisionedModelIdentifier = Shapes::StringShape.new(name: 'ProvisionedModelIdentifier')
    RdsArn = Shapes::StringShape.new(name: 'RdsArn')
    RdsConfiguration = Shapes::StructureShape.new(name: 'RdsConfiguration')
    RdsDatabaseName = Shapes::StringShape.new(name: 'RdsDatabaseName')
    RdsFieldMapping = Shapes::StructureShape.new(name: 'RdsFieldMapping')
    RdsTableName = Shapes::StringShape.new(name: 'RdsTableName')
    RecommendedAction = Shapes::StringShape.new(name: 'RecommendedAction')
    RecommendedActions = Shapes::ListShape.new(name: 'RecommendedActions')
    RedisEnterpriseCloudConfiguration = Shapes::StructureShape.new(name: 'RedisEnterpriseCloudConfiguration')
    RedisEnterpriseCloudEndpoint = Shapes::StringShape.new(name: 'RedisEnterpriseCloudEndpoint')
    RedisEnterpriseCloudFieldMapping = Shapes::StructureShape.new(name: 'RedisEnterpriseCloudFieldMapping')
    RedisEnterpriseCloudIndexName = Shapes::StringShape.new(name: 'RedisEnterpriseCloudIndexName')
    RequireConfirmation = Shapes::StringShape.new(name: 'RequireConfirmation')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetrievalFlowNodeConfiguration = Shapes::StructureShape.new(name: 'RetrievalFlowNodeConfiguration')
    RetrievalFlowNodeS3Configuration = Shapes::StructureShape.new(name: 'RetrievalFlowNodeS3Configuration')
    RetrievalFlowNodeServiceConfiguration = Shapes::UnionShape.new(name: 'RetrievalFlowNodeServiceConfiguration')
    S3BucketArn = Shapes::StringShape.new(name: 'S3BucketArn')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3BucketUri = Shapes::StringShape.new(name: 'S3BucketUri')
    S3DataSourceConfiguration = Shapes::StructureShape.new(name: 'S3DataSourceConfiguration')
    S3Identifier = Shapes::StructureShape.new(name: 'S3Identifier')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    S3Prefix = Shapes::StringShape.new(name: 'S3Prefix')
    S3Prefixes = Shapes::ListShape.new(name: 'S3Prefixes')
    SalesforceAuthType = Shapes::StringShape.new(name: 'SalesforceAuthType')
    SalesforceCrawlerConfiguration = Shapes::StructureShape.new(name: 'SalesforceCrawlerConfiguration')
    SalesforceDataSourceConfiguration = Shapes::StructureShape.new(name: 'SalesforceDataSourceConfiguration')
    SalesforceSourceConfiguration = Shapes::StructureShape.new(name: 'SalesforceSourceConfiguration')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SeedUrl = Shapes::StructureShape.new(name: 'SeedUrl')
    SeedUrls = Shapes::ListShape.new(name: 'SeedUrls')
    SemanticChunkingConfiguration = Shapes::StructureShape.new(name: 'SemanticChunkingConfiguration')
    SemanticChunkingConfigurationBreakpointPercentileThresholdInteger = Shapes::IntegerShape.new(name: 'SemanticChunkingConfigurationBreakpointPercentileThresholdInteger')
    SemanticChunkingConfigurationBufferSizeInteger = Shapes::IntegerShape.new(name: 'SemanticChunkingConfigurationBufferSizeInteger')
    SemanticChunkingConfigurationMaxTokensInteger = Shapes::IntegerShape.new(name: 'SemanticChunkingConfigurationMaxTokensInteger')
    ServerSideEncryptionConfiguration = Shapes::StructureShape.new(name: 'ServerSideEncryptionConfiguration')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionTTL = Shapes::IntegerShape.new(name: 'SessionTTL')
    SharePointAuthType = Shapes::StringShape.new(name: 'SharePointAuthType')
    SharePointCrawlerConfiguration = Shapes::StructureShape.new(name: 'SharePointCrawlerConfiguration')
    SharePointDataSourceConfiguration = Shapes::StructureShape.new(name: 'SharePointDataSourceConfiguration')
    SharePointDomain = Shapes::StringShape.new(name: 'SharePointDomain')
    SharePointHostType = Shapes::StringShape.new(name: 'SharePointHostType')
    SharePointSiteUrls = Shapes::ListShape.new(name: 'SharePointSiteUrls')
    SharePointSourceConfiguration = Shapes::StructureShape.new(name: 'SharePointSourceConfiguration')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartIngestionJobRequest = Shapes::StructureShape.new(name: 'StartIngestionJobRequest')
    StartIngestionJobResponse = Shapes::StructureShape.new(name: 'StartIngestionJobResponse')
    StepType = Shapes::StringShape.new(name: 'StepType')
    StopIngestionJobRequest = Shapes::StructureShape.new(name: 'StopIngestionJobRequest')
    StopIngestionJobResponse = Shapes::StructureShape.new(name: 'StopIngestionJobResponse')
    StopSequences = Shapes::ListShape.new(name: 'StopSequences')
    StorageConfiguration = Shapes::StructureShape.new(name: 'StorageConfiguration')
    StorageDays = Shapes::IntegerShape.new(name: 'StorageDays')
    StorageFlowNodeConfiguration = Shapes::StructureShape.new(name: 'StorageFlowNodeConfiguration')
    StorageFlowNodeS3Configuration = Shapes::StructureShape.new(name: 'StorageFlowNodeS3Configuration')
    StorageFlowNodeServiceConfiguration = Shapes::UnionShape.new(name: 'StorageFlowNodeServiceConfiguration')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourcesArn = Shapes::StringShape.new(name: 'TaggableResourcesArn')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    Temperature = Shapes::FloatShape.new(name: 'Temperature')
    TextPrompt = Shapes::StringShape.new(name: 'TextPrompt')
    TextPromptTemplateConfiguration = Shapes::StructureShape.new(name: 'TextPromptTemplateConfiguration')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TopK = Shapes::IntegerShape.new(name: 'TopK')
    TopP = Shapes::FloatShape.new(name: 'TopP')
    Transformation = Shapes::StructureShape.new(name: 'Transformation')
    TransformationFunction = Shapes::StructureShape.new(name: 'TransformationFunction')
    TransformationLambdaConfiguration = Shapes::StructureShape.new(name: 'TransformationLambdaConfiguration')
    Transformations = Shapes::ListShape.new(name: 'Transformations')
    Type = Shapes::StringShape.new(name: 'Type')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAgentActionGroupRequest = Shapes::StructureShape.new(name: 'UpdateAgentActionGroupRequest')
    UpdateAgentActionGroupResponse = Shapes::StructureShape.new(name: 'UpdateAgentActionGroupResponse')
    UpdateAgentAliasRequest = Shapes::StructureShape.new(name: 'UpdateAgentAliasRequest')
    UpdateAgentAliasResponse = Shapes::StructureShape.new(name: 'UpdateAgentAliasResponse')
    UpdateAgentKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'UpdateAgentKnowledgeBaseRequest')
    UpdateAgentKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'UpdateAgentKnowledgeBaseResponse')
    UpdateAgentRequest = Shapes::StructureShape.new(name: 'UpdateAgentRequest')
    UpdateAgentResponse = Shapes::StructureShape.new(name: 'UpdateAgentResponse')
    UpdateDataSourceRequest = Shapes::StructureShape.new(name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = Shapes::StructureShape.new(name: 'UpdateDataSourceResponse')
    UpdateFlowAliasRequest = Shapes::StructureShape.new(name: 'UpdateFlowAliasRequest')
    UpdateFlowAliasResponse = Shapes::StructureShape.new(name: 'UpdateFlowAliasResponse')
    UpdateFlowRequest = Shapes::StructureShape.new(name: 'UpdateFlowRequest')
    UpdateFlowResponse = Shapes::StructureShape.new(name: 'UpdateFlowResponse')
    UpdateKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'UpdateKnowledgeBaseRequest')
    UpdateKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'UpdateKnowledgeBaseResponse')
    UpdatePromptRequest = Shapes::StructureShape.new(name: 'UpdatePromptRequest')
    UpdatePromptResponse = Shapes::StructureShape.new(name: 'UpdatePromptResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    UrlConfiguration = Shapes::StructureShape.new(name: 'UrlConfiguration')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    VectorIngestionConfiguration = Shapes::StructureShape.new(name: 'VectorIngestionConfiguration')
    VectorKnowledgeBaseConfiguration = Shapes::StructureShape.new(name: 'VectorKnowledgeBaseConfiguration')
    Version = Shapes::StringShape.new(name: 'Version')
    WebCrawlerConfiguration = Shapes::StructureShape.new(name: 'WebCrawlerConfiguration')
    WebCrawlerLimits = Shapes::StructureShape.new(name: 'WebCrawlerLimits')
    WebCrawlerLimitsRateLimitInteger = Shapes::IntegerShape.new(name: 'WebCrawlerLimitsRateLimitInteger')
    WebDataSourceConfiguration = Shapes::StructureShape.new(name: 'WebDataSourceConfiguration')
    WebScopeType = Shapes::StringShape.new(name: 'WebScopeType')
    WebSourceConfiguration = Shapes::StructureShape.new(name: 'WebSourceConfiguration')

    APISchema.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    APISchema.add_member(:s3, Shapes::ShapeRef.new(shape: S3Identifier, location_name: "s3"))
    APISchema.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    APISchema.add_member_subclass(:payload, Types::APISchema::Payload)
    APISchema.add_member_subclass(:s3, Types::APISchema::S3)
    APISchema.add_member_subclass(:unknown, Types::APISchema::Unknown)
    APISchema.struct_class = Types::APISchema

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionGroupExecutor.add_member(:custom_control, Shapes::ShapeRef.new(shape: CustomControlMethod, location_name: "customControl"))
    ActionGroupExecutor.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "lambda"))
    ActionGroupExecutor.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ActionGroupExecutor.add_member_subclass(:custom_control, Types::ActionGroupExecutor::CustomControl)
    ActionGroupExecutor.add_member_subclass(:lambda, Types::ActionGroupExecutor::Lambda)
    ActionGroupExecutor.add_member_subclass(:unknown, Types::ActionGroupExecutor::Unknown)
    ActionGroupExecutor.struct_class = Types::ActionGroupExecutor

    ActionGroupSummaries.member = Shapes::ShapeRef.new(shape: ActionGroupSummary)

    ActionGroupSummary.add_member(:action_group_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "actionGroupId"))
    ActionGroupSummary.add_member(:action_group_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "actionGroupName"))
    ActionGroupSummary.add_member(:action_group_state, Shapes::ShapeRef.new(shape: ActionGroupState, required: true, location_name: "actionGroupState"))
    ActionGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ActionGroupSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    ActionGroupSummary.struct_class = Types::ActionGroupSummary

    Agent.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, required: true, location_name: "agentArn"))
    Agent.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    Agent.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    Agent.add_member(:agent_resource_role_arn, Shapes::ShapeRef.new(shape: AgentRoleArn, required: true, location_name: "agentResourceRoleArn"))
    Agent.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    Agent.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location_name: "agentVersion"))
    Agent.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    Agent.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    Agent.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    Agent.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Agent.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    Agent.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "foundationModel"))
    Agent.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    Agent.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, required: true, location_name: "idleSessionTTLInSeconds"))
    Agent.add_member(:instruction, Shapes::ShapeRef.new(shape: Instruction, location_name: "instruction"))
    Agent.add_member(:memory_configuration, Shapes::ShapeRef.new(shape: MemoryConfiguration, location_name: "memoryConfiguration"))
    Agent.add_member(:prepared_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "preparedAt"))
    Agent.add_member(:prompt_override_configuration, Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: "promptOverrideConfiguration"))
    Agent.add_member(:recommended_actions, Shapes::ShapeRef.new(shape: RecommendedActions, location_name: "recommendedActions"))
    Agent.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    Agent.struct_class = Types::Agent

    AgentActionGroup.add_member(:action_group_executor, Shapes::ShapeRef.new(shape: ActionGroupExecutor, location_name: "actionGroupExecutor"))
    AgentActionGroup.add_member(:action_group_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "actionGroupId"))
    AgentActionGroup.add_member(:action_group_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "actionGroupName"))
    AgentActionGroup.add_member(:action_group_state, Shapes::ShapeRef.new(shape: ActionGroupState, required: true, location_name: "actionGroupState"))
    AgentActionGroup.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    AgentActionGroup.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "agentVersion"))
    AgentActionGroup.add_member(:api_schema, Shapes::ShapeRef.new(shape: APISchema, location_name: "apiSchema"))
    AgentActionGroup.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    AgentActionGroup.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentActionGroup.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentActionGroup.add_member(:function_schema, Shapes::ShapeRef.new(shape: FunctionSchema, location_name: "functionSchema"))
    AgentActionGroup.add_member(:parent_action_signature, Shapes::ShapeRef.new(shape: ActionGroupSignature, location_name: "parentActionSignature"))
    AgentActionGroup.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentActionGroup.struct_class = Types::AgentActionGroup

    AgentAlias.add_member(:agent_alias_arn, Shapes::ShapeRef.new(shape: AgentAliasArn, required: true, location_name: "agentAliasArn"))
    AgentAlias.add_member(:agent_alias_history_events, Shapes::ShapeRef.new(shape: AgentAliasHistoryEvents, location_name: "agentAliasHistoryEvents"))
    AgentAlias.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location_name: "agentAliasId"))
    AgentAlias.add_member(:agent_alias_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentAliasName"))
    AgentAlias.add_member(:agent_alias_status, Shapes::ShapeRef.new(shape: AgentAliasStatus, required: true, location_name: "agentAliasStatus"))
    AgentAlias.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    AgentAlias.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    AgentAlias.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentAlias.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentAlias.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    AgentAlias.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, required: true, location_name: "routingConfiguration"))
    AgentAlias.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentAlias.struct_class = Types::AgentAlias

    AgentAliasHistoryEvent.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "endDate"))
    AgentAliasHistoryEvent.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: "routingConfiguration"))
    AgentAliasHistoryEvent.add_member(:start_date, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "startDate"))
    AgentAliasHistoryEvent.struct_class = Types::AgentAliasHistoryEvent

    AgentAliasHistoryEvents.member = Shapes::ShapeRef.new(shape: AgentAliasHistoryEvent)

    AgentAliasRoutingConfiguration.member = Shapes::ShapeRef.new(shape: AgentAliasRoutingConfigurationListItem)

    AgentAliasRoutingConfigurationListItem.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, location_name: "agentVersion"))
    AgentAliasRoutingConfigurationListItem.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedModelIdentifier, location_name: "provisionedThroughput"))
    AgentAliasRoutingConfigurationListItem.struct_class = Types::AgentAliasRoutingConfigurationListItem

    AgentAliasSummaries.member = Shapes::ShapeRef.new(shape: AgentAliasSummary)

    AgentAliasSummary.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location_name: "agentAliasId"))
    AgentAliasSummary.add_member(:agent_alias_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentAliasName"))
    AgentAliasSummary.add_member(:agent_alias_status, Shapes::ShapeRef.new(shape: AgentAliasStatus, required: true, location_name: "agentAliasStatus"))
    AgentAliasSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentAliasSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentAliasSummary.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: "routingConfiguration"))
    AgentAliasSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentAliasSummary.struct_class = Types::AgentAliasSummary

    AgentFlowNodeConfiguration.add_member(:agent_alias_arn, Shapes::ShapeRef.new(shape: AgentAliasArn, required: true, location_name: "agentAliasArn"))
    AgentFlowNodeConfiguration.struct_class = Types::AgentFlowNodeConfiguration

    AgentKnowledgeBase.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    AgentKnowledgeBase.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "agentVersion"))
    AgentKnowledgeBase.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentKnowledgeBase.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    AgentKnowledgeBase.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    AgentKnowledgeBase.add_member(:knowledge_base_state, Shapes::ShapeRef.new(shape: KnowledgeBaseState, required: true, location_name: "knowledgeBaseState"))
    AgentKnowledgeBase.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentKnowledgeBase.struct_class = Types::AgentKnowledgeBase

    AgentKnowledgeBaseSummaries.member = Shapes::ShapeRef.new(shape: AgentKnowledgeBaseSummary)

    AgentKnowledgeBaseSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentKnowledgeBaseSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    AgentKnowledgeBaseSummary.add_member(:knowledge_base_state, Shapes::ShapeRef.new(shape: KnowledgeBaseState, required: true, location_name: "knowledgeBaseState"))
    AgentKnowledgeBaseSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentKnowledgeBaseSummary.struct_class = Types::AgentKnowledgeBaseSummary

    AgentSummaries.member = Shapes::ShapeRef.new(shape: AgentSummary)

    AgentSummary.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    AgentSummary.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    AgentSummary.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    AgentSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentSummary.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    AgentSummary.add_member(:latest_agent_version, Shapes::ShapeRef.new(shape: Version, location_name: "latestAgentVersion"))
    AgentSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentSummary.struct_class = Types::AgentSummary

    AgentVersion.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, required: true, location_name: "agentArn"))
    AgentVersion.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    AgentVersion.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    AgentVersion.add_member(:agent_resource_role_arn, Shapes::ShapeRef.new(shape: AgentRoleArn, required: true, location_name: "agentResourceRoleArn"))
    AgentVersion.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    AgentVersion.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentVersion.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    AgentVersion.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentVersion.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    AgentVersion.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "foundationModel"))
    AgentVersion.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    AgentVersion.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, required: true, location_name: "idleSessionTTLInSeconds"))
    AgentVersion.add_member(:instruction, Shapes::ShapeRef.new(shape: Instruction, location_name: "instruction"))
    AgentVersion.add_member(:memory_configuration, Shapes::ShapeRef.new(shape: MemoryConfiguration, location_name: "memoryConfiguration"))
    AgentVersion.add_member(:prompt_override_configuration, Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: "promptOverrideConfiguration"))
    AgentVersion.add_member(:recommended_actions, Shapes::ShapeRef.new(shape: RecommendedActions, location_name: "recommendedActions"))
    AgentVersion.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentVersion.add_member(:version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location_name: "version"))
    AgentVersion.struct_class = Types::AgentVersion

    AgentVersionSummaries.member = Shapes::ShapeRef.new(shape: AgentVersionSummary)

    AgentVersionSummary.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    AgentVersionSummary.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    AgentVersionSummary.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "agentVersion"))
    AgentVersionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentVersionSummary.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    AgentVersionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentVersionSummary.struct_class = Types::AgentVersionSummary

    AssociateAgentKnowledgeBaseRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    AssociateAgentKnowledgeBaseRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    AssociateAgentKnowledgeBaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    AssociateAgentKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    AssociateAgentKnowledgeBaseRequest.add_member(:knowledge_base_state, Shapes::ShapeRef.new(shape: KnowledgeBaseState, location_name: "knowledgeBaseState"))
    AssociateAgentKnowledgeBaseRequest.struct_class = Types::AssociateAgentKnowledgeBaseRequest

    AssociateAgentKnowledgeBaseResponse.add_member(:agent_knowledge_base, Shapes::ShapeRef.new(shape: AgentKnowledgeBase, required: true, location_name: "agentKnowledgeBase"))
    AssociateAgentKnowledgeBaseResponse.struct_class = Types::AssociateAgentKnowledgeBaseResponse

    BedrockEmbeddingModelConfiguration.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "dimensions"))
    BedrockEmbeddingModelConfiguration.struct_class = Types::BedrockEmbeddingModelConfiguration

    BedrockFoundationModelConfiguration.add_member(:model_arn, Shapes::ShapeRef.new(shape: BedrockModelArn, required: true, location_name: "modelArn"))
    BedrockFoundationModelConfiguration.add_member(:parsing_prompt, Shapes::ShapeRef.new(shape: ParsingPrompt, location_name: "parsingPrompt"))
    BedrockFoundationModelConfiguration.struct_class = Types::BedrockFoundationModelConfiguration

    ChunkingConfiguration.add_member(:chunking_strategy, Shapes::ShapeRef.new(shape: ChunkingStrategy, required: true, location_name: "chunkingStrategy"))
    ChunkingConfiguration.add_member(:fixed_size_chunking_configuration, Shapes::ShapeRef.new(shape: FixedSizeChunkingConfiguration, location_name: "fixedSizeChunkingConfiguration"))
    ChunkingConfiguration.add_member(:hierarchical_chunking_configuration, Shapes::ShapeRef.new(shape: HierarchicalChunkingConfiguration, location_name: "hierarchicalChunkingConfiguration"))
    ChunkingConfiguration.add_member(:semantic_chunking_configuration, Shapes::ShapeRef.new(shape: SemanticChunkingConfiguration, location_name: "semanticChunkingConfiguration"))
    ChunkingConfiguration.struct_class = Types::ChunkingConfiguration

    CollectorFlowNodeConfiguration.struct_class = Types::CollectorFlowNodeConfiguration

    ConditionFlowNodeConfiguration.add_member(:conditions, Shapes::ShapeRef.new(shape: FlowConditions, required: true, location_name: "conditions"))
    ConditionFlowNodeConfiguration.struct_class = Types::ConditionFlowNodeConfiguration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConfluenceCrawlerConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: CrawlFilterConfiguration, location_name: "filterConfiguration"))
    ConfluenceCrawlerConfiguration.struct_class = Types::ConfluenceCrawlerConfiguration

    ConfluenceDataSourceConfiguration.add_member(:crawler_configuration, Shapes::ShapeRef.new(shape: ConfluenceCrawlerConfiguration, location_name: "crawlerConfiguration"))
    ConfluenceDataSourceConfiguration.add_member(:source_configuration, Shapes::ShapeRef.new(shape: ConfluenceSourceConfiguration, required: true, location_name: "sourceConfiguration"))
    ConfluenceDataSourceConfiguration.struct_class = Types::ConfluenceDataSourceConfiguration

    ConfluenceSourceConfiguration.add_member(:auth_type, Shapes::ShapeRef.new(shape: ConfluenceAuthType, required: true, location_name: "authType"))
    ConfluenceSourceConfiguration.add_member(:credentials_secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "credentialsSecretArn"))
    ConfluenceSourceConfiguration.add_member(:host_type, Shapes::ShapeRef.new(shape: ConfluenceHostType, required: true, location_name: "hostType"))
    ConfluenceSourceConfiguration.add_member(:host_url, Shapes::ShapeRef.new(shape: HttpsUrl, required: true, location_name: "hostUrl"))
    ConfluenceSourceConfiguration.struct_class = Types::ConfluenceSourceConfiguration

    CrawlFilterConfiguration.add_member(:pattern_object_filter, Shapes::ShapeRef.new(shape: PatternObjectFilterConfiguration, location_name: "patternObjectFilter"))
    CrawlFilterConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: CrawlFilterConfigurationType, required: true, location_name: "type"))
    CrawlFilterConfiguration.struct_class = Types::CrawlFilterConfiguration

    CreateAgentActionGroupRequest.add_member(:action_group_executor, Shapes::ShapeRef.new(shape: ActionGroupExecutor, location_name: "actionGroupExecutor"))
    CreateAgentActionGroupRequest.add_member(:action_group_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "actionGroupName"))
    CreateAgentActionGroupRequest.add_member(:action_group_state, Shapes::ShapeRef.new(shape: ActionGroupState, location_name: "actionGroupState"))
    CreateAgentActionGroupRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    CreateAgentActionGroupRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    CreateAgentActionGroupRequest.add_member(:api_schema, Shapes::ShapeRef.new(shape: APISchema, location_name: "apiSchema"))
    CreateAgentActionGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAgentActionGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAgentActionGroupRequest.add_member(:function_schema, Shapes::ShapeRef.new(shape: FunctionSchema, location_name: "functionSchema"))
    CreateAgentActionGroupRequest.add_member(:parent_action_group_signature, Shapes::ShapeRef.new(shape: ActionGroupSignature, location_name: "parentActionGroupSignature"))
    CreateAgentActionGroupRequest.struct_class = Types::CreateAgentActionGroupRequest

    CreateAgentActionGroupResponse.add_member(:agent_action_group, Shapes::ShapeRef.new(shape: AgentActionGroup, required: true, location_name: "agentActionGroup"))
    CreateAgentActionGroupResponse.struct_class = Types::CreateAgentActionGroupResponse

    CreateAgentAliasRequest.add_member(:agent_alias_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentAliasName"))
    CreateAgentAliasRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    CreateAgentAliasRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAgentAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAgentAliasRequest.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: "routingConfiguration"))
    CreateAgentAliasRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateAgentAliasRequest.struct_class = Types::CreateAgentAliasRequest

    CreateAgentAliasResponse.add_member(:agent_alias, Shapes::ShapeRef.new(shape: AgentAlias, required: true, location_name: "agentAlias"))
    CreateAgentAliasResponse.struct_class = Types::CreateAgentAliasResponse

    CreateAgentRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    CreateAgentRequest.add_member(:agent_resource_role_arn, Shapes::ShapeRef.new(shape: AgentRoleArn, location_name: "agentResourceRoleArn"))
    CreateAgentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAgentRequest.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    CreateAgentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAgentRequest.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "foundationModel"))
    CreateAgentRequest.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    CreateAgentRequest.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    CreateAgentRequest.add_member(:instruction, Shapes::ShapeRef.new(shape: Instruction, location_name: "instruction"))
    CreateAgentRequest.add_member(:memory_configuration, Shapes::ShapeRef.new(shape: MemoryConfiguration, location_name: "memoryConfiguration"))
    CreateAgentRequest.add_member(:prompt_override_configuration, Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: "promptOverrideConfiguration"))
    CreateAgentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateAgentRequest.struct_class = Types::CreateAgentRequest

    CreateAgentResponse.add_member(:agent, Shapes::ShapeRef.new(shape: Agent, required: true, location_name: "agent"))
    CreateAgentResponse.struct_class = Types::CreateAgentResponse

    CreateDataSourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDataSourceRequest.add_member(:data_deletion_policy, Shapes::ShapeRef.new(shape: DataDeletionPolicy, location_name: "dataDeletionPolicy"))
    CreateDataSourceRequest.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "dataSourceConfiguration"))
    CreateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateDataSourceRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    CreateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateDataSourceRequest.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    CreateDataSourceRequest.add_member(:vector_ingestion_configuration, Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: "vectorIngestionConfiguration"))
    CreateDataSourceRequest.struct_class = Types::CreateDataSourceRequest

    CreateDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
    CreateDataSourceResponse.struct_class = Types::CreateDataSourceResponse

    CreateFlowAliasRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateFlowAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateFlowAliasRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    CreateFlowAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateFlowAliasRequest.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, required: true, location_name: "routingConfiguration"))
    CreateFlowAliasRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateFlowAliasRequest.struct_class = Types::CreateFlowAliasRequest

    CreateFlowAliasResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FlowAliasArn, required: true, location_name: "arn"))
    CreateFlowAliasResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateFlowAliasResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateFlowAliasResponse.add_member(:flow_id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "flowId"))
    CreateFlowAliasResponse.add_member(:id, Shapes::ShapeRef.new(shape: FlowAliasId, required: true, location_name: "id"))
    CreateFlowAliasResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateFlowAliasResponse.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, required: true, location_name: "routingConfiguration"))
    CreateFlowAliasResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    CreateFlowAliasResponse.struct_class = Types::CreateFlowAliasResponse

    CreateFlowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateFlowRequest.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    CreateFlowRequest.add_member(:definition, Shapes::ShapeRef.new(shape: FlowDefinition, location_name: "definition"))
    CreateFlowRequest.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    CreateFlowRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, required: true, location_name: "executionRoleArn"))
    CreateFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "name"))
    CreateFlowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateFlowRequest.struct_class = Types::CreateFlowRequest

    CreateFlowResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FlowArn, required: true, location_name: "arn"))
    CreateFlowResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateFlowResponse.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    CreateFlowResponse.add_member(:definition, Shapes::ShapeRef.new(shape: FlowDefinition, location_name: "definition"))
    CreateFlowResponse.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    CreateFlowResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, required: true, location_name: "executionRoleArn"))
    CreateFlowResponse.add_member(:id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "id"))
    CreateFlowResponse.add_member(:name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "name"))
    CreateFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: FlowStatus, required: true, location_name: "status"))
    CreateFlowResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    CreateFlowResponse.add_member(:version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location_name: "version"))
    CreateFlowResponse.struct_class = Types::CreateFlowResponse

    CreateFlowVersionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateFlowVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    CreateFlowVersionRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    CreateFlowVersionRequest.struct_class = Types::CreateFlowVersionRequest

    CreateFlowVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FlowArn, required: true, location_name: "arn"))
    CreateFlowVersionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateFlowVersionResponse.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    CreateFlowVersionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: FlowDefinition, location_name: "definition"))
    CreateFlowVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    CreateFlowVersionResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, required: true, location_name: "executionRoleArn"))
    CreateFlowVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "id"))
    CreateFlowVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "name"))
    CreateFlowVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: FlowStatus, required: true, location_name: "status"))
    CreateFlowVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location_name: "version"))
    CreateFlowVersionResponse.struct_class = Types::CreateFlowVersionResponse

    CreateKnowledgeBaseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateKnowledgeBaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateKnowledgeBaseRequest.add_member(:knowledge_base_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseConfiguration, required: true, location_name: "knowledgeBaseConfiguration"))
    CreateKnowledgeBaseRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateKnowledgeBaseRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: KnowledgeBaseRoleArn, required: true, location_name: "roleArn"))
    CreateKnowledgeBaseRequest.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfiguration, required: true, location_name: "storageConfiguration"))
    CreateKnowledgeBaseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateKnowledgeBaseRequest.struct_class = Types::CreateKnowledgeBaseRequest

    CreateKnowledgeBaseResponse.add_member(:knowledge_base, Shapes::ShapeRef.new(shape: KnowledgeBase, required: true, location_name: "knowledgeBase"))
    CreateKnowledgeBaseResponse.struct_class = Types::CreateKnowledgeBaseResponse

    CreatePromptRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreatePromptRequest.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    CreatePromptRequest.add_member(:default_variant, Shapes::ShapeRef.new(shape: PromptVariantName, location_name: "defaultVariant"))
    CreatePromptRequest.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "description"))
    CreatePromptRequest.add_member(:name, Shapes::ShapeRef.new(shape: PromptName, required: true, location_name: "name"))
    CreatePromptRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreatePromptRequest.add_member(:variants, Shapes::ShapeRef.new(shape: PromptVariantList, location_name: "variants"))
    CreatePromptRequest.struct_class = Types::CreatePromptRequest

    CreatePromptResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PromptArn, required: true, location_name: "arn"))
    CreatePromptResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreatePromptResponse.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    CreatePromptResponse.add_member(:default_variant, Shapes::ShapeRef.new(shape: PromptVariantName, location_name: "defaultVariant"))
    CreatePromptResponse.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "description"))
    CreatePromptResponse.add_member(:id, Shapes::ShapeRef.new(shape: PromptId, required: true, location_name: "id"))
    CreatePromptResponse.add_member(:name, Shapes::ShapeRef.new(shape: PromptName, required: true, location_name: "name"))
    CreatePromptResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    CreatePromptResponse.add_member(:variants, Shapes::ShapeRef.new(shape: PromptVariantList, location_name: "variants"))
    CreatePromptResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    CreatePromptResponse.struct_class = Types::CreatePromptResponse

    CreatePromptVersionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreatePromptVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "description"))
    CreatePromptVersionRequest.add_member(:prompt_identifier, Shapes::ShapeRef.new(shape: PromptIdentifier, required: true, location: "uri", location_name: "promptIdentifier"))
    CreatePromptVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreatePromptVersionRequest.struct_class = Types::CreatePromptVersionRequest

    CreatePromptVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PromptArn, required: true, location_name: "arn"))
    CreatePromptVersionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreatePromptVersionResponse.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    CreatePromptVersionResponse.add_member(:default_variant, Shapes::ShapeRef.new(shape: PromptVariantName, location_name: "defaultVariant"))
    CreatePromptVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "description"))
    CreatePromptVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: PromptId, required: true, location_name: "id"))
    CreatePromptVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: PromptName, required: true, location_name: "name"))
    CreatePromptVersionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    CreatePromptVersionResponse.add_member(:variants, Shapes::ShapeRef.new(shape: PromptVariantList, location_name: "variants"))
    CreatePromptVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    CreatePromptVersionResponse.struct_class = Types::CreatePromptVersionResponse

    CustomTransformationConfiguration.add_member(:intermediate_storage, Shapes::ShapeRef.new(shape: IntermediateStorage, required: true, location_name: "intermediateStorage"))
    CustomTransformationConfiguration.add_member(:transformations, Shapes::ShapeRef.new(shape: Transformations, required: true, location_name: "transformations"))
    CustomTransformationConfiguration.struct_class = Types::CustomTransformationConfiguration

    DataSource.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    DataSource.add_member(:data_deletion_policy, Shapes::ShapeRef.new(shape: DataDeletionPolicy, location_name: "dataDeletionPolicy"))
    DataSource.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "dataSourceConfiguration"))
    DataSource.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "dataSourceId"))
    DataSource.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DataSource.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    DataSource.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    DataSource.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DataSource.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    DataSource.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    DataSource.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    DataSource.add_member(:vector_ingestion_configuration, Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: "vectorIngestionConfiguration"))
    DataSource.struct_class = Types::DataSource

    DataSourceConfiguration.add_member(:confluence_configuration, Shapes::ShapeRef.new(shape: ConfluenceDataSourceConfiguration, location_name: "confluenceConfiguration"))
    DataSourceConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DataSourceConfiguration, location_name: "s3Configuration"))
    DataSourceConfiguration.add_member(:salesforce_configuration, Shapes::ShapeRef.new(shape: SalesforceDataSourceConfiguration, location_name: "salesforceConfiguration"))
    DataSourceConfiguration.add_member(:share_point_configuration, Shapes::ShapeRef.new(shape: SharePointDataSourceConfiguration, location_name: "sharePointConfiguration"))
    DataSourceConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "type"))
    DataSourceConfiguration.add_member(:web_configuration, Shapes::ShapeRef.new(shape: WebDataSourceConfiguration, location_name: "webConfiguration"))
    DataSourceConfiguration.struct_class = Types::DataSourceConfiguration

    DataSourceSummaries.member = Shapes::ShapeRef.new(shape: DataSourceSummary)

    DataSourceSummary.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "dataSourceId"))
    DataSourceSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DataSourceSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    DataSourceSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DataSourceSummary.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    DataSourceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    DataSourceSummary.struct_class = Types::DataSourceSummary

    DeleteAgentActionGroupRequest.add_member(:action_group_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "actionGroupId"))
    DeleteAgentActionGroupRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    DeleteAgentActionGroupRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    DeleteAgentActionGroupRequest.add_member(:skip_resource_in_use_check, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "skipResourceInUseCheck"))
    DeleteAgentActionGroupRequest.struct_class = Types::DeleteAgentActionGroupRequest

    DeleteAgentActionGroupResponse.struct_class = Types::DeleteAgentActionGroupResponse

    DeleteAgentAliasRequest.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location: "uri", location_name: "agentAliasId"))
    DeleteAgentAliasRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    DeleteAgentAliasRequest.struct_class = Types::DeleteAgentAliasRequest

    DeleteAgentAliasResponse.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location_name: "agentAliasId"))
    DeleteAgentAliasResponse.add_member(:agent_alias_status, Shapes::ShapeRef.new(shape: AgentAliasStatus, required: true, location_name: "agentAliasStatus"))
    DeleteAgentAliasResponse.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    DeleteAgentAliasResponse.struct_class = Types::DeleteAgentAliasResponse

    DeleteAgentRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    DeleteAgentRequest.add_member(:skip_resource_in_use_check, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "skipResourceInUseCheck"))
    DeleteAgentRequest.struct_class = Types::DeleteAgentRequest

    DeleteAgentResponse.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    DeleteAgentResponse.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    DeleteAgentResponse.struct_class = Types::DeleteAgentResponse

    DeleteAgentVersionRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    DeleteAgentVersionRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location: "uri", location_name: "agentVersion"))
    DeleteAgentVersionRequest.add_member(:skip_resource_in_use_check, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "skipResourceInUseCheck"))
    DeleteAgentVersionRequest.struct_class = Types::DeleteAgentVersionRequest

    DeleteAgentVersionResponse.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    DeleteAgentVersionResponse.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    DeleteAgentVersionResponse.add_member(:agent_version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location_name: "agentVersion"))
    DeleteAgentVersionResponse.struct_class = Types::DeleteAgentVersionResponse

    DeleteDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    DeleteDataSourceRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    DeleteDataSourceRequest.struct_class = Types::DeleteDataSourceRequest

    DeleteDataSourceResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "dataSourceId"))
    DeleteDataSourceResponse.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    DeleteDataSourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    DeleteDataSourceResponse.struct_class = Types::DeleteDataSourceResponse

    DeleteFlowAliasRequest.add_member(:alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location: "uri", location_name: "aliasIdentifier"))
    DeleteFlowAliasRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    DeleteFlowAliasRequest.struct_class = Types::DeleteFlowAliasRequest

    DeleteFlowAliasResponse.add_member(:flow_id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "flowId"))
    DeleteFlowAliasResponse.add_member(:id, Shapes::ShapeRef.new(shape: FlowAliasId, required: true, location_name: "id"))
    DeleteFlowAliasResponse.struct_class = Types::DeleteFlowAliasResponse

    DeleteFlowRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    DeleteFlowRequest.add_member(:skip_resource_in_use_check, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "skipResourceInUseCheck"))
    DeleteFlowRequest.struct_class = Types::DeleteFlowRequest

    DeleteFlowResponse.add_member(:id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "id"))
    DeleteFlowResponse.struct_class = Types::DeleteFlowResponse

    DeleteFlowVersionRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    DeleteFlowVersionRequest.add_member(:flow_version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location: "uri", location_name: "flowVersion"))
    DeleteFlowVersionRequest.add_member(:skip_resource_in_use_check, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "skipResourceInUseCheck"))
    DeleteFlowVersionRequest.struct_class = Types::DeleteFlowVersionRequest

    DeleteFlowVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "id"))
    DeleteFlowVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location_name: "version"))
    DeleteFlowVersionResponse.struct_class = Types::DeleteFlowVersionResponse

    DeleteKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    DeleteKnowledgeBaseRequest.struct_class = Types::DeleteKnowledgeBaseRequest

    DeleteKnowledgeBaseResponse.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    DeleteKnowledgeBaseResponse.add_member(:status, Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, required: true, location_name: "status"))
    DeleteKnowledgeBaseResponse.struct_class = Types::DeleteKnowledgeBaseResponse

    DeletePromptRequest.add_member(:prompt_identifier, Shapes::ShapeRef.new(shape: PromptIdentifier, required: true, location: "uri", location_name: "promptIdentifier"))
    DeletePromptRequest.add_member(:prompt_version, Shapes::ShapeRef.new(shape: NumericalVersion, location: "querystring", location_name: "promptVersion"))
    DeletePromptRequest.struct_class = Types::DeletePromptRequest

    DeletePromptResponse.add_member(:id, Shapes::ShapeRef.new(shape: PromptId, required: true, location_name: "id"))
    DeletePromptResponse.add_member(:version, Shapes::ShapeRef.new(shape: NumericalVersion, location_name: "version"))
    DeletePromptResponse.struct_class = Types::DeletePromptResponse

    DisassociateAgentKnowledgeBaseRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    DisassociateAgentKnowledgeBaseRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    DisassociateAgentKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    DisassociateAgentKnowledgeBaseRequest.struct_class = Types::DisassociateAgentKnowledgeBaseRequest

    DisassociateAgentKnowledgeBaseResponse.struct_class = Types::DisassociateAgentKnowledgeBaseResponse

    EmbeddingModelConfiguration.add_member(:bedrock_embedding_model_configuration, Shapes::ShapeRef.new(shape: BedrockEmbeddingModelConfiguration, location_name: "bedrockEmbeddingModelConfiguration"))
    EmbeddingModelConfiguration.struct_class = Types::EmbeddingModelConfiguration

    EnabledMemoryTypes.member = Shapes::ShapeRef.new(shape: MemoryType)

    FailureReasons.member = Shapes::ShapeRef.new(shape: FailureReason)

    FilterList.member = Shapes::ShapeRef.new(shape: FilterPattern)

    FixedSizeChunkingConfiguration.add_member(:max_tokens, Shapes::ShapeRef.new(shape: FixedSizeChunkingConfigurationMaxTokensInteger, required: true, location_name: "maxTokens"))
    FixedSizeChunkingConfiguration.add_member(:overlap_percentage, Shapes::ShapeRef.new(shape: FixedSizeChunkingConfigurationOverlapPercentageInteger, required: true, location_name: "overlapPercentage"))
    FixedSizeChunkingConfiguration.struct_class = Types::FixedSizeChunkingConfiguration

    FlowAliasRoutingConfiguration.member = Shapes::ShapeRef.new(shape: FlowAliasRoutingConfigurationListItem)

    FlowAliasRoutingConfigurationListItem.add_member(:flow_version, Shapes::ShapeRef.new(shape: Version, location_name: "flowVersion"))
    FlowAliasRoutingConfigurationListItem.struct_class = Types::FlowAliasRoutingConfigurationListItem

    FlowAliasSummaries.member = Shapes::ShapeRef.new(shape: FlowAliasSummary)

    FlowAliasSummary.add_member(:arn, Shapes::ShapeRef.new(shape: FlowAliasArn, required: true, location_name: "arn"))
    FlowAliasSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    FlowAliasSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    FlowAliasSummary.add_member(:flow_id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "flowId"))
    FlowAliasSummary.add_member(:id, Shapes::ShapeRef.new(shape: FlowAliasId, required: true, location_name: "id"))
    FlowAliasSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    FlowAliasSummary.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, required: true, location_name: "routingConfiguration"))
    FlowAliasSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    FlowAliasSummary.struct_class = Types::FlowAliasSummary

    FlowCondition.add_member(:expression, Shapes::ShapeRef.new(shape: FlowConditionExpression, location_name: "expression"))
    FlowCondition.add_member(:name, Shapes::ShapeRef.new(shape: FlowConditionName, required: true, location_name: "name"))
    FlowCondition.struct_class = Types::FlowCondition

    FlowConditionalConnectionConfiguration.add_member(:condition, Shapes::ShapeRef.new(shape: FlowConditionName, required: true, location_name: "condition"))
    FlowConditionalConnectionConfiguration.struct_class = Types::FlowConditionalConnectionConfiguration

    FlowConditions.member = Shapes::ShapeRef.new(shape: FlowCondition)

    FlowConnection.add_member(:configuration, Shapes::ShapeRef.new(shape: FlowConnectionConfiguration, location_name: "configuration"))
    FlowConnection.add_member(:name, Shapes::ShapeRef.new(shape: FlowConnectionName, required: true, location_name: "name"))
    FlowConnection.add_member(:source, Shapes::ShapeRef.new(shape: FlowNodeName, required: true, location_name: "source"))
    FlowConnection.add_member(:target, Shapes::ShapeRef.new(shape: FlowNodeName, required: true, location_name: "target"))
    FlowConnection.add_member(:type, Shapes::ShapeRef.new(shape: FlowConnectionType, required: true, location_name: "type"))
    FlowConnection.struct_class = Types::FlowConnection

    FlowConnectionConfiguration.add_member(:conditional, Shapes::ShapeRef.new(shape: FlowConditionalConnectionConfiguration, location_name: "conditional"))
    FlowConnectionConfiguration.add_member(:data, Shapes::ShapeRef.new(shape: FlowDataConnectionConfiguration, location_name: "data"))
    FlowConnectionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowConnectionConfiguration.add_member_subclass(:conditional, Types::FlowConnectionConfiguration::Conditional)
    FlowConnectionConfiguration.add_member_subclass(:data, Types::FlowConnectionConfiguration::Data)
    FlowConnectionConfiguration.add_member_subclass(:unknown, Types::FlowConnectionConfiguration::Unknown)
    FlowConnectionConfiguration.struct_class = Types::FlowConnectionConfiguration

    FlowConnections.member = Shapes::ShapeRef.new(shape: FlowConnection)

    FlowDataConnectionConfiguration.add_member(:source_output, Shapes::ShapeRef.new(shape: FlowNodeOutputName, required: true, location_name: "sourceOutput"))
    FlowDataConnectionConfiguration.add_member(:target_input, Shapes::ShapeRef.new(shape: FlowNodeInputName, required: true, location_name: "targetInput"))
    FlowDataConnectionConfiguration.struct_class = Types::FlowDataConnectionConfiguration

    FlowDefinition.add_member(:connections, Shapes::ShapeRef.new(shape: FlowConnections, location_name: "connections"))
    FlowDefinition.add_member(:nodes, Shapes::ShapeRef.new(shape: FlowNodes, location_name: "nodes"))
    FlowDefinition.struct_class = Types::FlowDefinition

    FlowNode.add_member(:configuration, Shapes::ShapeRef.new(shape: FlowNodeConfiguration, location_name: "configuration"))
    FlowNode.add_member(:inputs, Shapes::ShapeRef.new(shape: FlowNodeInputs, location_name: "inputs"))
    FlowNode.add_member(:name, Shapes::ShapeRef.new(shape: FlowNodeName, required: true, location_name: "name"))
    FlowNode.add_member(:outputs, Shapes::ShapeRef.new(shape: FlowNodeOutputs, location_name: "outputs"))
    FlowNode.add_member(:type, Shapes::ShapeRef.new(shape: FlowNodeType, required: true, location_name: "type"))
    FlowNode.struct_class = Types::FlowNode

    FlowNodeConfiguration.add_member(:agent, Shapes::ShapeRef.new(shape: AgentFlowNodeConfiguration, location_name: "agent"))
    FlowNodeConfiguration.add_member(:collector, Shapes::ShapeRef.new(shape: CollectorFlowNodeConfiguration, location_name: "collector"))
    FlowNodeConfiguration.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionFlowNodeConfiguration, location_name: "condition"))
    FlowNodeConfiguration.add_member(:input, Shapes::ShapeRef.new(shape: InputFlowNodeConfiguration, location_name: "input"))
    FlowNodeConfiguration.add_member(:iterator, Shapes::ShapeRef.new(shape: IteratorFlowNodeConfiguration, location_name: "iterator"))
    FlowNodeConfiguration.add_member(:knowledge_base, Shapes::ShapeRef.new(shape: KnowledgeBaseFlowNodeConfiguration, location_name: "knowledgeBase"))
    FlowNodeConfiguration.add_member(:lambda_function, Shapes::ShapeRef.new(shape: LambdaFunctionFlowNodeConfiguration, location_name: "lambdaFunction"))
    FlowNodeConfiguration.add_member(:lex, Shapes::ShapeRef.new(shape: LexFlowNodeConfiguration, location_name: "lex"))
    FlowNodeConfiguration.add_member(:output, Shapes::ShapeRef.new(shape: OutputFlowNodeConfiguration, location_name: "output"))
    FlowNodeConfiguration.add_member(:prompt, Shapes::ShapeRef.new(shape: PromptFlowNodeConfiguration, location_name: "prompt"))
    FlowNodeConfiguration.add_member(:retrieval, Shapes::ShapeRef.new(shape: RetrievalFlowNodeConfiguration, location_name: "retrieval"))
    FlowNodeConfiguration.add_member(:storage, Shapes::ShapeRef.new(shape: StorageFlowNodeConfiguration, location_name: "storage"))
    FlowNodeConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowNodeConfiguration.add_member_subclass(:agent, Types::FlowNodeConfiguration::Agent)
    FlowNodeConfiguration.add_member_subclass(:collector, Types::FlowNodeConfiguration::Collector)
    FlowNodeConfiguration.add_member_subclass(:condition, Types::FlowNodeConfiguration::Condition)
    FlowNodeConfiguration.add_member_subclass(:input, Types::FlowNodeConfiguration::Input)
    FlowNodeConfiguration.add_member_subclass(:iterator, Types::FlowNodeConfiguration::Iterator)
    FlowNodeConfiguration.add_member_subclass(:knowledge_base, Types::FlowNodeConfiguration::KnowledgeBase)
    FlowNodeConfiguration.add_member_subclass(:lambda_function, Types::FlowNodeConfiguration::LambdaFunction)
    FlowNodeConfiguration.add_member_subclass(:lex, Types::FlowNodeConfiguration::Lex)
    FlowNodeConfiguration.add_member_subclass(:output, Types::FlowNodeConfiguration::Output)
    FlowNodeConfiguration.add_member_subclass(:prompt, Types::FlowNodeConfiguration::Prompt)
    FlowNodeConfiguration.add_member_subclass(:retrieval, Types::FlowNodeConfiguration::Retrieval)
    FlowNodeConfiguration.add_member_subclass(:storage, Types::FlowNodeConfiguration::Storage)
    FlowNodeConfiguration.add_member_subclass(:unknown, Types::FlowNodeConfiguration::Unknown)
    FlowNodeConfiguration.struct_class = Types::FlowNodeConfiguration

    FlowNodeInput.add_member(:expression, Shapes::ShapeRef.new(shape: FlowNodeInputExpression, required: true, location_name: "expression"))
    FlowNodeInput.add_member(:name, Shapes::ShapeRef.new(shape: FlowNodeInputName, required: true, location_name: "name"))
    FlowNodeInput.add_member(:type, Shapes::ShapeRef.new(shape: FlowNodeIODataType, required: true, location_name: "type"))
    FlowNodeInput.struct_class = Types::FlowNodeInput

    FlowNodeInputs.member = Shapes::ShapeRef.new(shape: FlowNodeInput)

    FlowNodeOutput.add_member(:name, Shapes::ShapeRef.new(shape: FlowNodeOutputName, required: true, location_name: "name"))
    FlowNodeOutput.add_member(:type, Shapes::ShapeRef.new(shape: FlowNodeIODataType, required: true, location_name: "type"))
    FlowNodeOutput.struct_class = Types::FlowNodeOutput

    FlowNodeOutputs.member = Shapes::ShapeRef.new(shape: FlowNodeOutput)

    FlowNodes.member = Shapes::ShapeRef.new(shape: FlowNode)

    FlowSummaries.member = Shapes::ShapeRef.new(shape: FlowSummary)

    FlowSummary.add_member(:arn, Shapes::ShapeRef.new(shape: FlowArn, required: true, location_name: "arn"))
    FlowSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    FlowSummary.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    FlowSummary.add_member(:id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "id"))
    FlowSummary.add_member(:name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "name"))
    FlowSummary.add_member(:status, Shapes::ShapeRef.new(shape: FlowStatus, required: true, location_name: "status"))
    FlowSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    FlowSummary.add_member(:version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location_name: "version"))
    FlowSummary.struct_class = Types::FlowSummary

    FlowValidation.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    FlowValidation.add_member(:severity, Shapes::ShapeRef.new(shape: FlowValidationSeverity, required: true, location_name: "severity"))
    FlowValidation.struct_class = Types::FlowValidation

    FlowValidations.member = Shapes::ShapeRef.new(shape: FlowValidation)

    FlowVersionSummaries.member = Shapes::ShapeRef.new(shape: FlowVersionSummary)

    FlowVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: FlowArn, required: true, location_name: "arn"))
    FlowVersionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    FlowVersionSummary.add_member(:id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "id"))
    FlowVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: FlowStatus, required: true, location_name: "status"))
    FlowVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location_name: "version"))
    FlowVersionSummary.struct_class = Types::FlowVersionSummary

    Function.add_member(:description, Shapes::ShapeRef.new(shape: FunctionDescription, location_name: "description"))
    Function.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    Function.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "parameters"))
    Function.add_member(:require_confirmation, Shapes::ShapeRef.new(shape: RequireConfirmation, location_name: "requireConfirmation"))
    Function.struct_class = Types::Function

    FunctionSchema.add_member(:functions, Shapes::ShapeRef.new(shape: Functions, location_name: "functions"))
    FunctionSchema.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FunctionSchema.add_member_subclass(:functions, Types::FunctionSchema::Functions)
    FunctionSchema.add_member_subclass(:unknown, Types::FunctionSchema::Unknown)
    FunctionSchema.struct_class = Types::FunctionSchema

    Functions.member = Shapes::ShapeRef.new(shape: Function)

    GetAgentActionGroupRequest.add_member(:action_group_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "actionGroupId"))
    GetAgentActionGroupRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    GetAgentActionGroupRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location: "uri", location_name: "agentVersion"))
    GetAgentActionGroupRequest.struct_class = Types::GetAgentActionGroupRequest

    GetAgentActionGroupResponse.add_member(:agent_action_group, Shapes::ShapeRef.new(shape: AgentActionGroup, required: true, location_name: "agentActionGroup"))
    GetAgentActionGroupResponse.struct_class = Types::GetAgentActionGroupResponse

    GetAgentAliasRequest.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location: "uri", location_name: "agentAliasId"))
    GetAgentAliasRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    GetAgentAliasRequest.struct_class = Types::GetAgentAliasRequest

    GetAgentAliasResponse.add_member(:agent_alias, Shapes::ShapeRef.new(shape: AgentAlias, required: true, location_name: "agentAlias"))
    GetAgentAliasResponse.struct_class = Types::GetAgentAliasResponse

    GetAgentKnowledgeBaseRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    GetAgentKnowledgeBaseRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location: "uri", location_name: "agentVersion"))
    GetAgentKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetAgentKnowledgeBaseRequest.struct_class = Types::GetAgentKnowledgeBaseRequest

    GetAgentKnowledgeBaseResponse.add_member(:agent_knowledge_base, Shapes::ShapeRef.new(shape: AgentKnowledgeBase, required: true, location_name: "agentKnowledgeBase"))
    GetAgentKnowledgeBaseResponse.struct_class = Types::GetAgentKnowledgeBaseResponse

    GetAgentRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    GetAgentRequest.struct_class = Types::GetAgentRequest

    GetAgentResponse.add_member(:agent, Shapes::ShapeRef.new(shape: Agent, required: true, location_name: "agent"))
    GetAgentResponse.struct_class = Types::GetAgentResponse

    GetAgentVersionRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    GetAgentVersionRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location: "uri", location_name: "agentVersion"))
    GetAgentVersionRequest.struct_class = Types::GetAgentVersionRequest

    GetAgentVersionResponse.add_member(:agent_version, Shapes::ShapeRef.new(shape: AgentVersion, required: true, location_name: "agentVersion"))
    GetAgentVersionResponse.struct_class = Types::GetAgentVersionResponse

    GetDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    GetDataSourceRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetDataSourceRequest.struct_class = Types::GetDataSourceRequest

    GetDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
    GetDataSourceResponse.struct_class = Types::GetDataSourceResponse

    GetFlowAliasRequest.add_member(:alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location: "uri", location_name: "aliasIdentifier"))
    GetFlowAliasRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    GetFlowAliasRequest.struct_class = Types::GetFlowAliasRequest

    GetFlowAliasResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FlowAliasArn, required: true, location_name: "arn"))
    GetFlowAliasResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetFlowAliasResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetFlowAliasResponse.add_member(:flow_id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "flowId"))
    GetFlowAliasResponse.add_member(:id, Shapes::ShapeRef.new(shape: FlowAliasId, required: true, location_name: "id"))
    GetFlowAliasResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    GetFlowAliasResponse.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, required: true, location_name: "routingConfiguration"))
    GetFlowAliasResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetFlowAliasResponse.struct_class = Types::GetFlowAliasResponse

    GetFlowRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    GetFlowRequest.struct_class = Types::GetFlowRequest

    GetFlowResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FlowArn, required: true, location_name: "arn"))
    GetFlowResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetFlowResponse.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    GetFlowResponse.add_member(:definition, Shapes::ShapeRef.new(shape: FlowDefinition, location_name: "definition"))
    GetFlowResponse.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    GetFlowResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, required: true, location_name: "executionRoleArn"))
    GetFlowResponse.add_member(:id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "id"))
    GetFlowResponse.add_member(:name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "name"))
    GetFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: FlowStatus, required: true, location_name: "status"))
    GetFlowResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetFlowResponse.add_member(:validations, Shapes::ShapeRef.new(shape: FlowValidations, location_name: "validations"))
    GetFlowResponse.add_member(:version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location_name: "version"))
    GetFlowResponse.struct_class = Types::GetFlowResponse

    GetFlowVersionRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    GetFlowVersionRequest.add_member(:flow_version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location: "uri", location_name: "flowVersion"))
    GetFlowVersionRequest.struct_class = Types::GetFlowVersionRequest

    GetFlowVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FlowArn, required: true, location_name: "arn"))
    GetFlowVersionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetFlowVersionResponse.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    GetFlowVersionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: FlowDefinition, location_name: "definition"))
    GetFlowVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    GetFlowVersionResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, required: true, location_name: "executionRoleArn"))
    GetFlowVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "id"))
    GetFlowVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "name"))
    GetFlowVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: FlowStatus, required: true, location_name: "status"))
    GetFlowVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location_name: "version"))
    GetFlowVersionResponse.struct_class = Types::GetFlowVersionResponse

    GetIngestionJobRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    GetIngestionJobRequest.add_member(:ingestion_job_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ingestionJobId"))
    GetIngestionJobRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetIngestionJobRequest.struct_class = Types::GetIngestionJobRequest

    GetIngestionJobResponse.add_member(:ingestion_job, Shapes::ShapeRef.new(shape: IngestionJob, required: true, location_name: "ingestionJob"))
    GetIngestionJobResponse.struct_class = Types::GetIngestionJobResponse

    GetKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetKnowledgeBaseRequest.struct_class = Types::GetKnowledgeBaseRequest

    GetKnowledgeBaseResponse.add_member(:knowledge_base, Shapes::ShapeRef.new(shape: KnowledgeBase, required: true, location_name: "knowledgeBase"))
    GetKnowledgeBaseResponse.struct_class = Types::GetKnowledgeBaseResponse

    GetPromptRequest.add_member(:prompt_identifier, Shapes::ShapeRef.new(shape: PromptIdentifier, required: true, location: "uri", location_name: "promptIdentifier"))
    GetPromptRequest.add_member(:prompt_version, Shapes::ShapeRef.new(shape: Version, location: "querystring", location_name: "promptVersion"))
    GetPromptRequest.struct_class = Types::GetPromptRequest

    GetPromptResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PromptArn, required: true, location_name: "arn"))
    GetPromptResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetPromptResponse.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    GetPromptResponse.add_member(:default_variant, Shapes::ShapeRef.new(shape: PromptVariantName, location_name: "defaultVariant"))
    GetPromptResponse.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "description"))
    GetPromptResponse.add_member(:id, Shapes::ShapeRef.new(shape: PromptId, required: true, location_name: "id"))
    GetPromptResponse.add_member(:name, Shapes::ShapeRef.new(shape: PromptName, required: true, location_name: "name"))
    GetPromptResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetPromptResponse.add_member(:variants, Shapes::ShapeRef.new(shape: PromptVariantList, location_name: "variants"))
    GetPromptResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    GetPromptResponse.struct_class = Types::GetPromptResponse

    GuardrailConfiguration.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, location_name: "guardrailIdentifier"))
    GuardrailConfiguration.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, location_name: "guardrailVersion"))
    GuardrailConfiguration.struct_class = Types::GuardrailConfiguration

    HierarchicalChunkingConfiguration.add_member(:level_configurations, Shapes::ShapeRef.new(shape: HierarchicalChunkingLevelConfigurations, required: true, location_name: "levelConfigurations"))
    HierarchicalChunkingConfiguration.add_member(:overlap_tokens, Shapes::ShapeRef.new(shape: HierarchicalChunkingConfigurationOverlapTokensInteger, required: true, location_name: "overlapTokens"))
    HierarchicalChunkingConfiguration.struct_class = Types::HierarchicalChunkingConfiguration

    HierarchicalChunkingLevelConfiguration.add_member(:max_tokens, Shapes::ShapeRef.new(shape: HierarchicalChunkingLevelConfigurationMaxTokensInteger, required: true, location_name: "maxTokens"))
    HierarchicalChunkingLevelConfiguration.struct_class = Types::HierarchicalChunkingLevelConfiguration

    HierarchicalChunkingLevelConfigurations.member = Shapes::ShapeRef.new(shape: HierarchicalChunkingLevelConfiguration)

    InferenceConfiguration.add_member(:maximum_length, Shapes::ShapeRef.new(shape: MaximumLength, location_name: "maximumLength"))
    InferenceConfiguration.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: StopSequences, location_name: "stopSequences"))
    InferenceConfiguration.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    InferenceConfiguration.add_member(:top_k, Shapes::ShapeRef.new(shape: TopK, location_name: "topK"))
    InferenceConfiguration.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    InferenceConfiguration.struct_class = Types::InferenceConfiguration

    IngestionJob.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "dataSourceId"))
    IngestionJob.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    IngestionJob.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    IngestionJob.add_member(:ingestion_job_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ingestionJobId"))
    IngestionJob.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    IngestionJob.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "startedAt"))
    IngestionJob.add_member(:statistics, Shapes::ShapeRef.new(shape: IngestionJobStatistics, location_name: "statistics"))
    IngestionJob.add_member(:status, Shapes::ShapeRef.new(shape: IngestionJobStatus, required: true, location_name: "status"))
    IngestionJob.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    IngestionJob.struct_class = Types::IngestionJob

    IngestionJobFilter.add_member(:attribute, Shapes::ShapeRef.new(shape: IngestionJobFilterAttribute, required: true, location_name: "attribute"))
    IngestionJobFilter.add_member(:operator, Shapes::ShapeRef.new(shape: IngestionJobFilterOperator, required: true, location_name: "operator"))
    IngestionJobFilter.add_member(:values, Shapes::ShapeRef.new(shape: IngestionJobFilterValues, required: true, location_name: "values"))
    IngestionJobFilter.struct_class = Types::IngestionJobFilter

    IngestionJobFilterValues.member = Shapes::ShapeRef.new(shape: IngestionJobFilterValue)

    IngestionJobFilters.member = Shapes::ShapeRef.new(shape: IngestionJobFilter)

    IngestionJobSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: IngestionJobSortByAttribute, required: true, location_name: "attribute"))
    IngestionJobSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    IngestionJobSortBy.struct_class = Types::IngestionJobSortBy

    IngestionJobStatistics.add_member(:number_of_documents_deleted, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfDocumentsDeleted"))
    IngestionJobStatistics.add_member(:number_of_documents_failed, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfDocumentsFailed"))
    IngestionJobStatistics.add_member(:number_of_documents_scanned, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfDocumentsScanned"))
    IngestionJobStatistics.add_member(:number_of_metadata_documents_modified, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfMetadataDocumentsModified"))
    IngestionJobStatistics.add_member(:number_of_metadata_documents_scanned, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfMetadataDocumentsScanned"))
    IngestionJobStatistics.add_member(:number_of_modified_documents_indexed, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfModifiedDocumentsIndexed"))
    IngestionJobStatistics.add_member(:number_of_new_documents_indexed, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfNewDocumentsIndexed"))
    IngestionJobStatistics.struct_class = Types::IngestionJobStatistics

    IngestionJobSummaries.member = Shapes::ShapeRef.new(shape: IngestionJobSummary)

    IngestionJobSummary.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "dataSourceId"))
    IngestionJobSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    IngestionJobSummary.add_member(:ingestion_job_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ingestionJobId"))
    IngestionJobSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    IngestionJobSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "startedAt"))
    IngestionJobSummary.add_member(:statistics, Shapes::ShapeRef.new(shape: IngestionJobStatistics, location_name: "statistics"))
    IngestionJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: IngestionJobStatus, required: true, location_name: "status"))
    IngestionJobSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    IngestionJobSummary.struct_class = Types::IngestionJobSummary

    InputFlowNodeConfiguration.struct_class = Types::InputFlowNodeConfiguration

    IntermediateStorage.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "s3Location"))
    IntermediateStorage.struct_class = Types::IntermediateStorage

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    IteratorFlowNodeConfiguration.struct_class = Types::IteratorFlowNodeConfiguration

    KnowledgeBase.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    KnowledgeBase.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    KnowledgeBase.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    KnowledgeBase.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: KnowledgeBaseArn, required: true, location_name: "knowledgeBaseArn"))
    KnowledgeBase.add_member(:knowledge_base_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseConfiguration, required: true, location_name: "knowledgeBaseConfiguration"))
    KnowledgeBase.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBase.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    KnowledgeBase.add_member(:role_arn, Shapes::ShapeRef.new(shape: KnowledgeBaseRoleArn, required: true, location_name: "roleArn"))
    KnowledgeBase.add_member(:status, Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, required: true, location_name: "status"))
    KnowledgeBase.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfiguration, required: true, location_name: "storageConfiguration"))
    KnowledgeBase.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    KnowledgeBase.struct_class = Types::KnowledgeBase

    KnowledgeBaseConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: KnowledgeBaseType, required: true, location_name: "type"))
    KnowledgeBaseConfiguration.add_member(:vector_knowledge_base_configuration, Shapes::ShapeRef.new(shape: VectorKnowledgeBaseConfiguration, location_name: "vectorKnowledgeBaseConfiguration"))
    KnowledgeBaseConfiguration.struct_class = Types::KnowledgeBaseConfiguration

    KnowledgeBaseFlowNodeConfiguration.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: KnowledgeBaseId, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBaseFlowNodeConfiguration.add_member(:model_id, Shapes::ShapeRef.new(shape: KnowledgeBaseModelIdentifier, location_name: "modelId"))
    KnowledgeBaseFlowNodeConfiguration.struct_class = Types::KnowledgeBaseFlowNodeConfiguration

    KnowledgeBaseSummaries.member = Shapes::ShapeRef.new(shape: KnowledgeBaseSummary)

    KnowledgeBaseSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    KnowledgeBaseSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBaseSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    KnowledgeBaseSummary.add_member(:status, Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, required: true, location_name: "status"))
    KnowledgeBaseSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    KnowledgeBaseSummary.struct_class = Types::KnowledgeBaseSummary

    LambdaFunctionFlowNodeConfiguration.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: LambdaArn, required: true, location_name: "lambdaArn"))
    LambdaFunctionFlowNodeConfiguration.struct_class = Types::LambdaFunctionFlowNodeConfiguration

    LexFlowNodeConfiguration.add_member(:bot_alias_arn, Shapes::ShapeRef.new(shape: LexBotAliasArn, required: true, location_name: "botAliasArn"))
    LexFlowNodeConfiguration.add_member(:locale_id, Shapes::ShapeRef.new(shape: LexBotLocaleId, required: true, location_name: "localeId"))
    LexFlowNodeConfiguration.struct_class = Types::LexFlowNodeConfiguration

    ListAgentActionGroupsRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    ListAgentActionGroupsRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location: "uri", location_name: "agentVersion"))
    ListAgentActionGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAgentActionGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentActionGroupsRequest.struct_class = Types::ListAgentActionGroupsRequest

    ListAgentActionGroupsResponse.add_member(:action_group_summaries, Shapes::ShapeRef.new(shape: ActionGroupSummaries, required: true, location_name: "actionGroupSummaries"))
    ListAgentActionGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentActionGroupsResponse.struct_class = Types::ListAgentActionGroupsResponse

    ListAgentAliasesRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    ListAgentAliasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAgentAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentAliasesRequest.struct_class = Types::ListAgentAliasesRequest

    ListAgentAliasesResponse.add_member(:agent_alias_summaries, Shapes::ShapeRef.new(shape: AgentAliasSummaries, required: true, location_name: "agentAliasSummaries"))
    ListAgentAliasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentAliasesResponse.struct_class = Types::ListAgentAliasesResponse

    ListAgentKnowledgeBasesRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    ListAgentKnowledgeBasesRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location: "uri", location_name: "agentVersion"))
    ListAgentKnowledgeBasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAgentKnowledgeBasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentKnowledgeBasesRequest.struct_class = Types::ListAgentKnowledgeBasesRequest

    ListAgentKnowledgeBasesResponse.add_member(:agent_knowledge_base_summaries, Shapes::ShapeRef.new(shape: AgentKnowledgeBaseSummaries, required: true, location_name: "agentKnowledgeBaseSummaries"))
    ListAgentKnowledgeBasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentKnowledgeBasesResponse.struct_class = Types::ListAgentKnowledgeBasesResponse

    ListAgentVersionsRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    ListAgentVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAgentVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentVersionsRequest.struct_class = Types::ListAgentVersionsRequest

    ListAgentVersionsResponse.add_member(:agent_version_summaries, Shapes::ShapeRef.new(shape: AgentVersionSummaries, required: true, location_name: "agentVersionSummaries"))
    ListAgentVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentVersionsResponse.struct_class = Types::ListAgentVersionsResponse

    ListAgentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAgentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentsRequest.struct_class = Types::ListAgentsRequest

    ListAgentsResponse.add_member(:agent_summaries, Shapes::ShapeRef.new(shape: AgentSummaries, required: true, location_name: "agentSummaries"))
    ListAgentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentsResponse.struct_class = Types::ListAgentsResponse

    ListDataSourcesRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    ListDataSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDataSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataSourcesRequest.struct_class = Types::ListDataSourcesRequest

    ListDataSourcesResponse.add_member(:data_source_summaries, Shapes::ShapeRef.new(shape: DataSourceSummaries, required: true, location_name: "dataSourceSummaries"))
    ListDataSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataSourcesResponse.struct_class = Types::ListDataSourcesResponse

    ListFlowAliasesRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    ListFlowAliasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFlowAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFlowAliasesRequest.struct_class = Types::ListFlowAliasesRequest

    ListFlowAliasesResponse.add_member(:flow_alias_summaries, Shapes::ShapeRef.new(shape: FlowAliasSummaries, required: true, location_name: "flowAliasSummaries"))
    ListFlowAliasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFlowAliasesResponse.struct_class = Types::ListFlowAliasesResponse

    ListFlowVersionsRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    ListFlowVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFlowVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFlowVersionsRequest.struct_class = Types::ListFlowVersionsRequest

    ListFlowVersionsResponse.add_member(:flow_version_summaries, Shapes::ShapeRef.new(shape: FlowVersionSummaries, required: true, location_name: "flowVersionSummaries"))
    ListFlowVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFlowVersionsResponse.struct_class = Types::ListFlowVersionsResponse

    ListFlowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFlowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFlowsRequest.struct_class = Types::ListFlowsRequest

    ListFlowsResponse.add_member(:flow_summaries, Shapes::ShapeRef.new(shape: FlowSummaries, required: true, location_name: "flowSummaries"))
    ListFlowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFlowsResponse.struct_class = Types::ListFlowsResponse

    ListIngestionJobsRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    ListIngestionJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: IngestionJobFilters, location_name: "filters"))
    ListIngestionJobsRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    ListIngestionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListIngestionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIngestionJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: IngestionJobSortBy, location_name: "sortBy"))
    ListIngestionJobsRequest.struct_class = Types::ListIngestionJobsRequest

    ListIngestionJobsResponse.add_member(:ingestion_job_summaries, Shapes::ShapeRef.new(shape: IngestionJobSummaries, required: true, location_name: "ingestionJobSummaries"))
    ListIngestionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIngestionJobsResponse.struct_class = Types::ListIngestionJobsResponse

    ListKnowledgeBasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListKnowledgeBasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListKnowledgeBasesRequest.struct_class = Types::ListKnowledgeBasesRequest

    ListKnowledgeBasesResponse.add_member(:knowledge_base_summaries, Shapes::ShapeRef.new(shape: KnowledgeBaseSummaries, required: true, location_name: "knowledgeBaseSummaries"))
    ListKnowledgeBasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListKnowledgeBasesResponse.struct_class = Types::ListKnowledgeBasesResponse

    ListPromptsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPromptsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPromptsRequest.add_member(:prompt_identifier, Shapes::ShapeRef.new(shape: PromptIdentifier, location: "querystring", location_name: "promptIdentifier"))
    ListPromptsRequest.struct_class = Types::ListPromptsRequest

    ListPromptsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPromptsResponse.add_member(:prompt_summaries, Shapes::ShapeRef.new(shape: PromptSummaries, required: true, location_name: "promptSummaries"))
    ListPromptsResponse.struct_class = Types::ListPromptsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MemoryConfiguration.add_member(:enabled_memory_types, Shapes::ShapeRef.new(shape: EnabledMemoryTypes, required: true, location_name: "enabledMemoryTypes"))
    MemoryConfiguration.add_member(:storage_days, Shapes::ShapeRef.new(shape: StorageDays, location_name: "storageDays"))
    MemoryConfiguration.struct_class = Types::MemoryConfiguration

    MongoDbAtlasConfiguration.add_member(:collection_name, Shapes::ShapeRef.new(shape: MongoDbAtlasCollectionName, required: true, location_name: "collectionName"))
    MongoDbAtlasConfiguration.add_member(:credentials_secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "credentialsSecretArn"))
    MongoDbAtlasConfiguration.add_member(:database_name, Shapes::ShapeRef.new(shape: MongoDbAtlasDatabaseName, required: true, location_name: "databaseName"))
    MongoDbAtlasConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: MongoDbAtlasEndpoint, required: true, location_name: "endpoint"))
    MongoDbAtlasConfiguration.add_member(:endpoint_service_name, Shapes::ShapeRef.new(shape: MongoDbAtlasEndpointServiceName, location_name: "endpointServiceName"))
    MongoDbAtlasConfiguration.add_member(:field_mapping, Shapes::ShapeRef.new(shape: MongoDbAtlasFieldMapping, required: true, location_name: "fieldMapping"))
    MongoDbAtlasConfiguration.add_member(:vector_index_name, Shapes::ShapeRef.new(shape: MongoDbAtlasIndexName, required: true, location_name: "vectorIndexName"))
    MongoDbAtlasConfiguration.struct_class = Types::MongoDbAtlasConfiguration

    MongoDbAtlasFieldMapping.add_member(:metadata_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "metadataField"))
    MongoDbAtlasFieldMapping.add_member(:text_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "textField"))
    MongoDbAtlasFieldMapping.add_member(:vector_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "vectorField"))
    MongoDbAtlasFieldMapping.struct_class = Types::MongoDbAtlasFieldMapping

    OpenSearchServerlessConfiguration.add_member(:collection_arn, Shapes::ShapeRef.new(shape: OpenSearchServerlessCollectionArn, required: true, location_name: "collectionArn"))
    OpenSearchServerlessConfiguration.add_member(:field_mapping, Shapes::ShapeRef.new(shape: OpenSearchServerlessFieldMapping, required: true, location_name: "fieldMapping"))
    OpenSearchServerlessConfiguration.add_member(:vector_index_name, Shapes::ShapeRef.new(shape: OpenSearchServerlessIndexName, required: true, location_name: "vectorIndexName"))
    OpenSearchServerlessConfiguration.struct_class = Types::OpenSearchServerlessConfiguration

    OpenSearchServerlessFieldMapping.add_member(:metadata_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "metadataField"))
    OpenSearchServerlessFieldMapping.add_member(:text_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "textField"))
    OpenSearchServerlessFieldMapping.add_member(:vector_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "vectorField"))
    OpenSearchServerlessFieldMapping.struct_class = Types::OpenSearchServerlessFieldMapping

    OutputFlowNodeConfiguration.struct_class = Types::OutputFlowNodeConfiguration

    ParameterDetail.add_member(:description, Shapes::ShapeRef.new(shape: ParameterDescription, location_name: "description"))
    ParameterDetail.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    ParameterDetail.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "type"))
    ParameterDetail.struct_class = Types::ParameterDetail

    ParameterMap.key = Shapes::ShapeRef.new(shape: Name)
    ParameterMap.value = Shapes::ShapeRef.new(shape: ParameterDetail)

    ParsingConfiguration.add_member(:bedrock_foundation_model_configuration, Shapes::ShapeRef.new(shape: BedrockFoundationModelConfiguration, location_name: "bedrockFoundationModelConfiguration"))
    ParsingConfiguration.add_member(:parsing_strategy, Shapes::ShapeRef.new(shape: ParsingStrategy, required: true, location_name: "parsingStrategy"))
    ParsingConfiguration.struct_class = Types::ParsingConfiguration

    ParsingPrompt.add_member(:parsing_prompt_text, Shapes::ShapeRef.new(shape: ParsingPromptText, required: true, location_name: "parsingPromptText"))
    ParsingPrompt.struct_class = Types::ParsingPrompt

    PatternObjectFilter.add_member(:exclusion_filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "exclusionFilters"))
    PatternObjectFilter.add_member(:inclusion_filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "inclusionFilters"))
    PatternObjectFilter.add_member(:object_type, Shapes::ShapeRef.new(shape: FilteredObjectType, required: true, location_name: "objectType"))
    PatternObjectFilter.struct_class = Types::PatternObjectFilter

    PatternObjectFilterConfiguration.add_member(:filters, Shapes::ShapeRef.new(shape: PatternObjectFilterList, required: true, location_name: "filters"))
    PatternObjectFilterConfiguration.struct_class = Types::PatternObjectFilterConfiguration

    PatternObjectFilterList.member = Shapes::ShapeRef.new(shape: PatternObjectFilter)

    PineconeConfiguration.add_member(:connection_string, Shapes::ShapeRef.new(shape: PineconeConnectionString, required: true, location_name: "connectionString"))
    PineconeConfiguration.add_member(:credentials_secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "credentialsSecretArn"))
    PineconeConfiguration.add_member(:field_mapping, Shapes::ShapeRef.new(shape: PineconeFieldMapping, required: true, location_name: "fieldMapping"))
    PineconeConfiguration.add_member(:namespace, Shapes::ShapeRef.new(shape: PineconeNamespace, location_name: "namespace"))
    PineconeConfiguration.struct_class = Types::PineconeConfiguration

    PineconeFieldMapping.add_member(:metadata_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "metadataField"))
    PineconeFieldMapping.add_member(:text_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "textField"))
    PineconeFieldMapping.struct_class = Types::PineconeFieldMapping

    PrepareAgentRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    PrepareAgentRequest.struct_class = Types::PrepareAgentRequest

    PrepareAgentResponse.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    PrepareAgentResponse.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    PrepareAgentResponse.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "agentVersion"))
    PrepareAgentResponse.add_member(:prepared_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "preparedAt"))
    PrepareAgentResponse.struct_class = Types::PrepareAgentResponse

    PrepareFlowRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    PrepareFlowRequest.struct_class = Types::PrepareFlowRequest

    PrepareFlowResponse.add_member(:id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "id"))
    PrepareFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: FlowStatus, required: true, location_name: "status"))
    PrepareFlowResponse.struct_class = Types::PrepareFlowResponse

    PromptConfiguration.add_member(:base_prompt_template, Shapes::ShapeRef.new(shape: BasePromptTemplate, location_name: "basePromptTemplate"))
    PromptConfiguration.add_member(:inference_configuration, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfiguration"))
    PromptConfiguration.add_member(:parser_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "parserMode"))
    PromptConfiguration.add_member(:prompt_creation_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "promptCreationMode"))
    PromptConfiguration.add_member(:prompt_state, Shapes::ShapeRef.new(shape: PromptState, location_name: "promptState"))
    PromptConfiguration.add_member(:prompt_type, Shapes::ShapeRef.new(shape: PromptType, location_name: "promptType"))
    PromptConfiguration.struct_class = Types::PromptConfiguration

    PromptConfigurations.member = Shapes::ShapeRef.new(shape: PromptConfiguration)

    PromptFlowNodeConfiguration.add_member(:source_configuration, Shapes::ShapeRef.new(shape: PromptFlowNodeSourceConfiguration, required: true, location_name: "sourceConfiguration"))
    PromptFlowNodeConfiguration.struct_class = Types::PromptFlowNodeConfiguration

    PromptFlowNodeInlineConfiguration.add_member(:inference_configuration, Shapes::ShapeRef.new(shape: PromptInferenceConfiguration, location_name: "inferenceConfiguration"))
    PromptFlowNodeInlineConfiguration.add_member(:model_id, Shapes::ShapeRef.new(shape: PromptModelIdentifier, required: true, location_name: "modelId"))
    PromptFlowNodeInlineConfiguration.add_member(:template_configuration, Shapes::ShapeRef.new(shape: PromptTemplateConfiguration, required: true, location_name: "templateConfiguration"))
    PromptFlowNodeInlineConfiguration.add_member(:template_type, Shapes::ShapeRef.new(shape: PromptTemplateType, required: true, location_name: "templateType"))
    PromptFlowNodeInlineConfiguration.struct_class = Types::PromptFlowNodeInlineConfiguration

    PromptFlowNodeResourceConfiguration.add_member(:prompt_arn, Shapes::ShapeRef.new(shape: PromptArn, required: true, location_name: "promptArn"))
    PromptFlowNodeResourceConfiguration.struct_class = Types::PromptFlowNodeResourceConfiguration

    PromptFlowNodeSourceConfiguration.add_member(:inline, Shapes::ShapeRef.new(shape: PromptFlowNodeInlineConfiguration, location_name: "inline"))
    PromptFlowNodeSourceConfiguration.add_member(:resource, Shapes::ShapeRef.new(shape: PromptFlowNodeResourceConfiguration, location_name: "resource"))
    PromptFlowNodeSourceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PromptFlowNodeSourceConfiguration.add_member_subclass(:inline, Types::PromptFlowNodeSourceConfiguration::Inline)
    PromptFlowNodeSourceConfiguration.add_member_subclass(:resource, Types::PromptFlowNodeSourceConfiguration::Resource)
    PromptFlowNodeSourceConfiguration.add_member_subclass(:unknown, Types::PromptFlowNodeSourceConfiguration::Unknown)
    PromptFlowNodeSourceConfiguration.struct_class = Types::PromptFlowNodeSourceConfiguration

    PromptInferenceConfiguration.add_member(:text, Shapes::ShapeRef.new(shape: PromptModelInferenceConfiguration, location_name: "text"))
    PromptInferenceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PromptInferenceConfiguration.add_member_subclass(:text, Types::PromptInferenceConfiguration::Text)
    PromptInferenceConfiguration.add_member_subclass(:unknown, Types::PromptInferenceConfiguration::Unknown)
    PromptInferenceConfiguration.struct_class = Types::PromptInferenceConfiguration

    PromptInputVariable.add_member(:name, Shapes::ShapeRef.new(shape: PromptInputVariableName, location_name: "name"))
    PromptInputVariable.struct_class = Types::PromptInputVariable

    PromptInputVariablesList.member = Shapes::ShapeRef.new(shape: PromptInputVariable)

    PromptMetadataEntry.add_member(:key, Shapes::ShapeRef.new(shape: PromptMetadataKey, required: true, location_name: "key"))
    PromptMetadataEntry.add_member(:value, Shapes::ShapeRef.new(shape: PromptMetadataValue, required: true, location_name: "value"))
    PromptMetadataEntry.struct_class = Types::PromptMetadataEntry

    PromptMetadataList.member = Shapes::ShapeRef.new(shape: PromptMetadataEntry)

    PromptModelInferenceConfiguration.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaximumLength, location_name: "maxTokens"))
    PromptModelInferenceConfiguration.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: StopSequences, location_name: "stopSequences"))
    PromptModelInferenceConfiguration.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    PromptModelInferenceConfiguration.add_member(:top_k, Shapes::ShapeRef.new(shape: TopK, location_name: "topK"))
    PromptModelInferenceConfiguration.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    PromptModelInferenceConfiguration.struct_class = Types::PromptModelInferenceConfiguration

    PromptOverrideConfiguration.add_member(:override_lambda, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "overrideLambda"))
    PromptOverrideConfiguration.add_member(:prompt_configurations, Shapes::ShapeRef.new(shape: PromptConfigurations, required: true, location_name: "promptConfigurations"))
    PromptOverrideConfiguration.struct_class = Types::PromptOverrideConfiguration

    PromptSummaries.member = Shapes::ShapeRef.new(shape: PromptSummary)

    PromptSummary.add_member(:arn, Shapes::ShapeRef.new(shape: PromptArn, required: true, location_name: "arn"))
    PromptSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PromptSummary.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "description"))
    PromptSummary.add_member(:id, Shapes::ShapeRef.new(shape: PromptId, required: true, location_name: "id"))
    PromptSummary.add_member(:name, Shapes::ShapeRef.new(shape: PromptName, required: true, location_name: "name"))
    PromptSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PromptSummary.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    PromptSummary.struct_class = Types::PromptSummary

    PromptTemplateConfiguration.add_member(:text, Shapes::ShapeRef.new(shape: TextPromptTemplateConfiguration, location_name: "text"))
    PromptTemplateConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PromptTemplateConfiguration.add_member_subclass(:text, Types::PromptTemplateConfiguration::Text)
    PromptTemplateConfiguration.add_member_subclass(:unknown, Types::PromptTemplateConfiguration::Unknown)
    PromptTemplateConfiguration.struct_class = Types::PromptTemplateConfiguration

    PromptVariant.add_member(:inference_configuration, Shapes::ShapeRef.new(shape: PromptInferenceConfiguration, location_name: "inferenceConfiguration"))
    PromptVariant.add_member(:metadata, Shapes::ShapeRef.new(shape: PromptMetadataList, location_name: "metadata"))
    PromptVariant.add_member(:model_id, Shapes::ShapeRef.new(shape: PromptModelIdentifier, location_name: "modelId"))
    PromptVariant.add_member(:name, Shapes::ShapeRef.new(shape: PromptVariantName, required: true, location_name: "name"))
    PromptVariant.add_member(:template_configuration, Shapes::ShapeRef.new(shape: PromptTemplateConfiguration, location_name: "templateConfiguration"))
    PromptVariant.add_member(:template_type, Shapes::ShapeRef.new(shape: PromptTemplateType, required: true, location_name: "templateType"))
    PromptVariant.struct_class = Types::PromptVariant

    PromptVariantList.member = Shapes::ShapeRef.new(shape: PromptVariant)

    RdsConfiguration.add_member(:credentials_secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "credentialsSecretArn"))
    RdsConfiguration.add_member(:database_name, Shapes::ShapeRef.new(shape: RdsDatabaseName, required: true, location_name: "databaseName"))
    RdsConfiguration.add_member(:field_mapping, Shapes::ShapeRef.new(shape: RdsFieldMapping, required: true, location_name: "fieldMapping"))
    RdsConfiguration.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RdsArn, required: true, location_name: "resourceArn"))
    RdsConfiguration.add_member(:table_name, Shapes::ShapeRef.new(shape: RdsTableName, required: true, location_name: "tableName"))
    RdsConfiguration.struct_class = Types::RdsConfiguration

    RdsFieldMapping.add_member(:metadata_field, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "metadataField"))
    RdsFieldMapping.add_member(:primary_key_field, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "primaryKeyField"))
    RdsFieldMapping.add_member(:text_field, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "textField"))
    RdsFieldMapping.add_member(:vector_field, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "vectorField"))
    RdsFieldMapping.struct_class = Types::RdsFieldMapping

    RecommendedActions.member = Shapes::ShapeRef.new(shape: RecommendedAction)

    RedisEnterpriseCloudConfiguration.add_member(:credentials_secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "credentialsSecretArn"))
    RedisEnterpriseCloudConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: RedisEnterpriseCloudEndpoint, required: true, location_name: "endpoint"))
    RedisEnterpriseCloudConfiguration.add_member(:field_mapping, Shapes::ShapeRef.new(shape: RedisEnterpriseCloudFieldMapping, required: true, location_name: "fieldMapping"))
    RedisEnterpriseCloudConfiguration.add_member(:vector_index_name, Shapes::ShapeRef.new(shape: RedisEnterpriseCloudIndexName, required: true, location_name: "vectorIndexName"))
    RedisEnterpriseCloudConfiguration.struct_class = Types::RedisEnterpriseCloudConfiguration

    RedisEnterpriseCloudFieldMapping.add_member(:metadata_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "metadataField"))
    RedisEnterpriseCloudFieldMapping.add_member(:text_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "textField"))
    RedisEnterpriseCloudFieldMapping.add_member(:vector_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "vectorField"))
    RedisEnterpriseCloudFieldMapping.struct_class = Types::RedisEnterpriseCloudFieldMapping

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetrievalFlowNodeConfiguration.add_member(:service_configuration, Shapes::ShapeRef.new(shape: RetrievalFlowNodeServiceConfiguration, required: true, location_name: "serviceConfiguration"))
    RetrievalFlowNodeConfiguration.struct_class = Types::RetrievalFlowNodeConfiguration

    RetrievalFlowNodeS3Configuration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucketName"))
    RetrievalFlowNodeS3Configuration.struct_class = Types::RetrievalFlowNodeS3Configuration

    RetrievalFlowNodeServiceConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: RetrievalFlowNodeS3Configuration, location_name: "s3"))
    RetrievalFlowNodeServiceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RetrievalFlowNodeServiceConfiguration.add_member_subclass(:s3, Types::RetrievalFlowNodeServiceConfiguration::S3)
    RetrievalFlowNodeServiceConfiguration.add_member_subclass(:unknown, Types::RetrievalFlowNodeServiceConfiguration::Unknown)
    RetrievalFlowNodeServiceConfiguration.struct_class = Types::RetrievalFlowNodeServiceConfiguration

    S3DataSourceConfiguration.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, required: true, location_name: "bucketArn"))
    S3DataSourceConfiguration.add_member(:bucket_owner_account_id, Shapes::ShapeRef.new(shape: BucketOwnerAccountId, location_name: "bucketOwnerAccountId"))
    S3DataSourceConfiguration.add_member(:inclusion_prefixes, Shapes::ShapeRef.new(shape: S3Prefixes, location_name: "inclusionPrefixes"))
    S3DataSourceConfiguration.struct_class = Types::S3DataSourceConfiguration

    S3Identifier.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3BucketName"))
    S3Identifier.add_member(:s3_object_key, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "s3ObjectKey"))
    S3Identifier.struct_class = Types::S3Identifier

    S3Location.add_member(:uri, Shapes::ShapeRef.new(shape: S3BucketUri, required: true, location_name: "uri"))
    S3Location.struct_class = Types::S3Location

    S3Prefixes.member = Shapes::ShapeRef.new(shape: S3Prefix)

    SalesforceCrawlerConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: CrawlFilterConfiguration, location_name: "filterConfiguration"))
    SalesforceCrawlerConfiguration.struct_class = Types::SalesforceCrawlerConfiguration

    SalesforceDataSourceConfiguration.add_member(:crawler_configuration, Shapes::ShapeRef.new(shape: SalesforceCrawlerConfiguration, location_name: "crawlerConfiguration"))
    SalesforceDataSourceConfiguration.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SalesforceSourceConfiguration, required: true, location_name: "sourceConfiguration"))
    SalesforceDataSourceConfiguration.struct_class = Types::SalesforceDataSourceConfiguration

    SalesforceSourceConfiguration.add_member(:auth_type, Shapes::ShapeRef.new(shape: SalesforceAuthType, required: true, location_name: "authType"))
    SalesforceSourceConfiguration.add_member(:credentials_secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "credentialsSecretArn"))
    SalesforceSourceConfiguration.add_member(:host_url, Shapes::ShapeRef.new(shape: HttpsUrl, required: true, location_name: "hostUrl"))
    SalesforceSourceConfiguration.struct_class = Types::SalesforceSourceConfiguration

    SeedUrl.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "url"))
    SeedUrl.struct_class = Types::SeedUrl

    SeedUrls.member = Shapes::ShapeRef.new(shape: SeedUrl)

    SemanticChunkingConfiguration.add_member(:breakpoint_percentile_threshold, Shapes::ShapeRef.new(shape: SemanticChunkingConfigurationBreakpointPercentileThresholdInteger, required: true, location_name: "breakpointPercentileThreshold"))
    SemanticChunkingConfiguration.add_member(:buffer_size, Shapes::ShapeRef.new(shape: SemanticChunkingConfigurationBufferSizeInteger, required: true, location_name: "bufferSize"))
    SemanticChunkingConfiguration.add_member(:max_tokens, Shapes::ShapeRef.new(shape: SemanticChunkingConfigurationMaxTokensInteger, required: true, location_name: "maxTokens"))
    SemanticChunkingConfiguration.struct_class = Types::SemanticChunkingConfiguration

    ServerSideEncryptionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    ServerSideEncryptionConfiguration.struct_class = Types::ServerSideEncryptionConfiguration

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SharePointCrawlerConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: CrawlFilterConfiguration, location_name: "filterConfiguration"))
    SharePointCrawlerConfiguration.struct_class = Types::SharePointCrawlerConfiguration

    SharePointDataSourceConfiguration.add_member(:crawler_configuration, Shapes::ShapeRef.new(shape: SharePointCrawlerConfiguration, location_name: "crawlerConfiguration"))
    SharePointDataSourceConfiguration.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SharePointSourceConfiguration, required: true, location_name: "sourceConfiguration"))
    SharePointDataSourceConfiguration.struct_class = Types::SharePointDataSourceConfiguration

    SharePointSiteUrls.member = Shapes::ShapeRef.new(shape: HttpsUrl)

    SharePointSourceConfiguration.add_member(:auth_type, Shapes::ShapeRef.new(shape: SharePointAuthType, required: true, location_name: "authType"))
    SharePointSourceConfiguration.add_member(:credentials_secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "credentialsSecretArn"))
    SharePointSourceConfiguration.add_member(:domain, Shapes::ShapeRef.new(shape: SharePointDomain, required: true, location_name: "domain"))
    SharePointSourceConfiguration.add_member(:host_type, Shapes::ShapeRef.new(shape: SharePointHostType, required: true, location_name: "hostType"))
    SharePointSourceConfiguration.add_member(:site_urls, Shapes::ShapeRef.new(shape: SharePointSiteUrls, required: true, location_name: "siteUrls"))
    SharePointSourceConfiguration.add_member(:tenant_id, Shapes::ShapeRef.new(shape: Microsoft365TenantId, location_name: "tenantId"))
    SharePointSourceConfiguration.struct_class = Types::SharePointSourceConfiguration

    StartIngestionJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartIngestionJobRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    StartIngestionJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    StartIngestionJobRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    StartIngestionJobRequest.struct_class = Types::StartIngestionJobRequest

    StartIngestionJobResponse.add_member(:ingestion_job, Shapes::ShapeRef.new(shape: IngestionJob, required: true, location_name: "ingestionJob"))
    StartIngestionJobResponse.struct_class = Types::StartIngestionJobResponse

    StopIngestionJobRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    StopIngestionJobRequest.add_member(:ingestion_job_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ingestionJobId"))
    StopIngestionJobRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    StopIngestionJobRequest.struct_class = Types::StopIngestionJobRequest

    StopIngestionJobResponse.add_member(:ingestion_job, Shapes::ShapeRef.new(shape: IngestionJob, required: true, location_name: "ingestionJob"))
    StopIngestionJobResponse.struct_class = Types::StopIngestionJobResponse

    StopSequences.member = Shapes::ShapeRef.new(shape: String)

    StorageConfiguration.add_member(:mongo_db_atlas_configuration, Shapes::ShapeRef.new(shape: MongoDbAtlasConfiguration, location_name: "mongoDbAtlasConfiguration"))
    StorageConfiguration.add_member(:opensearch_serverless_configuration, Shapes::ShapeRef.new(shape: OpenSearchServerlessConfiguration, location_name: "opensearchServerlessConfiguration"))
    StorageConfiguration.add_member(:pinecone_configuration, Shapes::ShapeRef.new(shape: PineconeConfiguration, location_name: "pineconeConfiguration"))
    StorageConfiguration.add_member(:rds_configuration, Shapes::ShapeRef.new(shape: RdsConfiguration, location_name: "rdsConfiguration"))
    StorageConfiguration.add_member(:redis_enterprise_cloud_configuration, Shapes::ShapeRef.new(shape: RedisEnterpriseCloudConfiguration, location_name: "redisEnterpriseCloudConfiguration"))
    StorageConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: KnowledgeBaseStorageType, required: true, location_name: "type"))
    StorageConfiguration.struct_class = Types::StorageConfiguration

    StorageFlowNodeConfiguration.add_member(:service_configuration, Shapes::ShapeRef.new(shape: StorageFlowNodeServiceConfiguration, required: true, location_name: "serviceConfiguration"))
    StorageFlowNodeConfiguration.struct_class = Types::StorageFlowNodeConfiguration

    StorageFlowNodeS3Configuration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucketName"))
    StorageFlowNodeS3Configuration.struct_class = Types::StorageFlowNodeS3Configuration

    StorageFlowNodeServiceConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: StorageFlowNodeS3Configuration, location_name: "s3"))
    StorageFlowNodeServiceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StorageFlowNodeServiceConfiguration.add_member_subclass(:s3, Types::StorageFlowNodeServiceConfiguration::S3)
    StorageFlowNodeServiceConfiguration.add_member_subclass(:unknown, Types::StorageFlowNodeServiceConfiguration::Unknown)
    StorageFlowNodeServiceConfiguration.struct_class = Types::StorageFlowNodeServiceConfiguration

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TextPromptTemplateConfiguration.add_member(:input_variables, Shapes::ShapeRef.new(shape: PromptInputVariablesList, location_name: "inputVariables"))
    TextPromptTemplateConfiguration.add_member(:text, Shapes::ShapeRef.new(shape: TextPrompt, required: true, location_name: "text"))
    TextPromptTemplateConfiguration.struct_class = Types::TextPromptTemplateConfiguration

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Transformation.add_member(:step_to_apply, Shapes::ShapeRef.new(shape: StepType, required: true, location_name: "stepToApply"))
    Transformation.add_member(:transformation_function, Shapes::ShapeRef.new(shape: TransformationFunction, required: true, location_name: "transformationFunction"))
    Transformation.struct_class = Types::Transformation

    TransformationFunction.add_member(:transformation_lambda_configuration, Shapes::ShapeRef.new(shape: TransformationLambdaConfiguration, required: true, location_name: "transformationLambdaConfiguration"))
    TransformationFunction.struct_class = Types::TransformationFunction

    TransformationLambdaConfiguration.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: LambdaArn, required: true, location_name: "lambdaArn"))
    TransformationLambdaConfiguration.struct_class = Types::TransformationLambdaConfiguration

    Transformations.member = Shapes::ShapeRef.new(shape: Transformation)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAgentActionGroupRequest.add_member(:action_group_executor, Shapes::ShapeRef.new(shape: ActionGroupExecutor, location_name: "actionGroupExecutor"))
    UpdateAgentActionGroupRequest.add_member(:action_group_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "actionGroupId"))
    UpdateAgentActionGroupRequest.add_member(:action_group_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "actionGroupName"))
    UpdateAgentActionGroupRequest.add_member(:action_group_state, Shapes::ShapeRef.new(shape: ActionGroupState, location_name: "actionGroupState"))
    UpdateAgentActionGroupRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    UpdateAgentActionGroupRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    UpdateAgentActionGroupRequest.add_member(:api_schema, Shapes::ShapeRef.new(shape: APISchema, location_name: "apiSchema"))
    UpdateAgentActionGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAgentActionGroupRequest.add_member(:function_schema, Shapes::ShapeRef.new(shape: FunctionSchema, location_name: "functionSchema"))
    UpdateAgentActionGroupRequest.add_member(:parent_action_group_signature, Shapes::ShapeRef.new(shape: ActionGroupSignature, location_name: "parentActionGroupSignature"))
    UpdateAgentActionGroupRequest.struct_class = Types::UpdateAgentActionGroupRequest

    UpdateAgentActionGroupResponse.add_member(:agent_action_group, Shapes::ShapeRef.new(shape: AgentActionGroup, required: true, location_name: "agentActionGroup"))
    UpdateAgentActionGroupResponse.struct_class = Types::UpdateAgentActionGroupResponse

    UpdateAgentAliasRequest.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location: "uri", location_name: "agentAliasId"))
    UpdateAgentAliasRequest.add_member(:agent_alias_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentAliasName"))
    UpdateAgentAliasRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    UpdateAgentAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAgentAliasRequest.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: "routingConfiguration"))
    UpdateAgentAliasRequest.struct_class = Types::UpdateAgentAliasRequest

    UpdateAgentAliasResponse.add_member(:agent_alias, Shapes::ShapeRef.new(shape: AgentAlias, required: true, location_name: "agentAlias"))
    UpdateAgentAliasResponse.struct_class = Types::UpdateAgentAliasResponse

    UpdateAgentKnowledgeBaseRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    UpdateAgentKnowledgeBaseRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    UpdateAgentKnowledgeBaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAgentKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    UpdateAgentKnowledgeBaseRequest.add_member(:knowledge_base_state, Shapes::ShapeRef.new(shape: KnowledgeBaseState, location_name: "knowledgeBaseState"))
    UpdateAgentKnowledgeBaseRequest.struct_class = Types::UpdateAgentKnowledgeBaseRequest

    UpdateAgentKnowledgeBaseResponse.add_member(:agent_knowledge_base, Shapes::ShapeRef.new(shape: AgentKnowledgeBase, required: true, location_name: "agentKnowledgeBase"))
    UpdateAgentKnowledgeBaseResponse.struct_class = Types::UpdateAgentKnowledgeBaseResponse

    UpdateAgentRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    UpdateAgentRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    UpdateAgentRequest.add_member(:agent_resource_role_arn, Shapes::ShapeRef.new(shape: AgentRoleArn, required: true, location_name: "agentResourceRoleArn"))
    UpdateAgentRequest.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    UpdateAgentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAgentRequest.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location_name: "foundationModel"))
    UpdateAgentRequest.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    UpdateAgentRequest.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    UpdateAgentRequest.add_member(:instruction, Shapes::ShapeRef.new(shape: Instruction, location_name: "instruction"))
    UpdateAgentRequest.add_member(:memory_configuration, Shapes::ShapeRef.new(shape: MemoryConfiguration, location_name: "memoryConfiguration"))
    UpdateAgentRequest.add_member(:prompt_override_configuration, Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: "promptOverrideConfiguration"))
    UpdateAgentRequest.struct_class = Types::UpdateAgentRequest

    UpdateAgentResponse.add_member(:agent, Shapes::ShapeRef.new(shape: Agent, required: true, location_name: "agent"))
    UpdateAgentResponse.struct_class = Types::UpdateAgentResponse

    UpdateDataSourceRequest.add_member(:data_deletion_policy, Shapes::ShapeRef.new(shape: DataDeletionPolicy, location_name: "dataDeletionPolicy"))
    UpdateDataSourceRequest.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "dataSourceConfiguration"))
    UpdateDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    UpdateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateDataSourceRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    UpdateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UpdateDataSourceRequest.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    UpdateDataSourceRequest.add_member(:vector_ingestion_configuration, Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: "vectorIngestionConfiguration"))
    UpdateDataSourceRequest.struct_class = Types::UpdateDataSourceRequest

    UpdateDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
    UpdateDataSourceResponse.struct_class = Types::UpdateDataSourceResponse

    UpdateFlowAliasRequest.add_member(:alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location: "uri", location_name: "aliasIdentifier"))
    UpdateFlowAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateFlowAliasRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    UpdateFlowAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UpdateFlowAliasRequest.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, required: true, location_name: "routingConfiguration"))
    UpdateFlowAliasRequest.struct_class = Types::UpdateFlowAliasRequest

    UpdateFlowAliasResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FlowAliasArn, required: true, location_name: "arn"))
    UpdateFlowAliasResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateFlowAliasResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateFlowAliasResponse.add_member(:flow_id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "flowId"))
    UpdateFlowAliasResponse.add_member(:id, Shapes::ShapeRef.new(shape: FlowAliasId, required: true, location_name: "id"))
    UpdateFlowAliasResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UpdateFlowAliasResponse.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, required: true, location_name: "routingConfiguration"))
    UpdateFlowAliasResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateFlowAliasResponse.struct_class = Types::UpdateFlowAliasResponse

    UpdateFlowRequest.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    UpdateFlowRequest.add_member(:definition, Shapes::ShapeRef.new(shape: FlowDefinition, location_name: "definition"))
    UpdateFlowRequest.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    UpdateFlowRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, required: true, location_name: "executionRoleArn"))
    UpdateFlowRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    UpdateFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "name"))
    UpdateFlowRequest.struct_class = Types::UpdateFlowRequest

    UpdateFlowResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FlowArn, required: true, location_name: "arn"))
    UpdateFlowResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateFlowResponse.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    UpdateFlowResponse.add_member(:definition, Shapes::ShapeRef.new(shape: FlowDefinition, location_name: "definition"))
    UpdateFlowResponse.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    UpdateFlowResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, required: true, location_name: "executionRoleArn"))
    UpdateFlowResponse.add_member(:id, Shapes::ShapeRef.new(shape: FlowId, required: true, location_name: "id"))
    UpdateFlowResponse.add_member(:name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "name"))
    UpdateFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: FlowStatus, required: true, location_name: "status"))
    UpdateFlowResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateFlowResponse.add_member(:version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location_name: "version"))
    UpdateFlowResponse.struct_class = Types::UpdateFlowResponse

    UpdateKnowledgeBaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateKnowledgeBaseRequest.add_member(:knowledge_base_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseConfiguration, required: true, location_name: "knowledgeBaseConfiguration"))
    UpdateKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    UpdateKnowledgeBaseRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UpdateKnowledgeBaseRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: KnowledgeBaseRoleArn, required: true, location_name: "roleArn"))
    UpdateKnowledgeBaseRequest.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfiguration, required: true, location_name: "storageConfiguration"))
    UpdateKnowledgeBaseRequest.struct_class = Types::UpdateKnowledgeBaseRequest

    UpdateKnowledgeBaseResponse.add_member(:knowledge_base, Shapes::ShapeRef.new(shape: KnowledgeBase, required: true, location_name: "knowledgeBase"))
    UpdateKnowledgeBaseResponse.struct_class = Types::UpdateKnowledgeBaseResponse

    UpdatePromptRequest.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    UpdatePromptRequest.add_member(:default_variant, Shapes::ShapeRef.new(shape: PromptVariantName, location_name: "defaultVariant"))
    UpdatePromptRequest.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "description"))
    UpdatePromptRequest.add_member(:name, Shapes::ShapeRef.new(shape: PromptName, required: true, location_name: "name"))
    UpdatePromptRequest.add_member(:prompt_identifier, Shapes::ShapeRef.new(shape: PromptIdentifier, required: true, location: "uri", location_name: "promptIdentifier"))
    UpdatePromptRequest.add_member(:variants, Shapes::ShapeRef.new(shape: PromptVariantList, location_name: "variants"))
    UpdatePromptRequest.struct_class = Types::UpdatePromptRequest

    UpdatePromptResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PromptArn, required: true, location_name: "arn"))
    UpdatePromptResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdatePromptResponse.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    UpdatePromptResponse.add_member(:default_variant, Shapes::ShapeRef.new(shape: PromptVariantName, location_name: "defaultVariant"))
    UpdatePromptResponse.add_member(:description, Shapes::ShapeRef.new(shape: PromptDescription, location_name: "description"))
    UpdatePromptResponse.add_member(:id, Shapes::ShapeRef.new(shape: PromptId, required: true, location_name: "id"))
    UpdatePromptResponse.add_member(:name, Shapes::ShapeRef.new(shape: PromptName, required: true, location_name: "name"))
    UpdatePromptResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdatePromptResponse.add_member(:variants, Shapes::ShapeRef.new(shape: PromptVariantList, location_name: "variants"))
    UpdatePromptResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    UpdatePromptResponse.struct_class = Types::UpdatePromptResponse

    UrlConfiguration.add_member(:seed_urls, Shapes::ShapeRef.new(shape: SeedUrls, location_name: "seedUrls"))
    UrlConfiguration.struct_class = Types::UrlConfiguration

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VectorIngestionConfiguration.add_member(:chunking_configuration, Shapes::ShapeRef.new(shape: ChunkingConfiguration, location_name: "chunkingConfiguration"))
    VectorIngestionConfiguration.add_member(:custom_transformation_configuration, Shapes::ShapeRef.new(shape: CustomTransformationConfiguration, location_name: "customTransformationConfiguration"))
    VectorIngestionConfiguration.add_member(:parsing_configuration, Shapes::ShapeRef.new(shape: ParsingConfiguration, location_name: "parsingConfiguration"))
    VectorIngestionConfiguration.struct_class = Types::VectorIngestionConfiguration

    VectorKnowledgeBaseConfiguration.add_member(:embedding_model_arn, Shapes::ShapeRef.new(shape: BedrockEmbeddingModelArn, required: true, location_name: "embeddingModelArn"))
    VectorKnowledgeBaseConfiguration.add_member(:embedding_model_configuration, Shapes::ShapeRef.new(shape: EmbeddingModelConfiguration, location_name: "embeddingModelConfiguration"))
    VectorKnowledgeBaseConfiguration.struct_class = Types::VectorKnowledgeBaseConfiguration

    WebCrawlerConfiguration.add_member(:crawler_limits, Shapes::ShapeRef.new(shape: WebCrawlerLimits, location_name: "crawlerLimits"))
    WebCrawlerConfiguration.add_member(:exclusion_filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "exclusionFilters"))
    WebCrawlerConfiguration.add_member(:inclusion_filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "inclusionFilters"))
    WebCrawlerConfiguration.add_member(:scope, Shapes::ShapeRef.new(shape: WebScopeType, location_name: "scope"))
    WebCrawlerConfiguration.struct_class = Types::WebCrawlerConfiguration

    WebCrawlerLimits.add_member(:rate_limit, Shapes::ShapeRef.new(shape: WebCrawlerLimitsRateLimitInteger, location_name: "rateLimit"))
    WebCrawlerLimits.struct_class = Types::WebCrawlerLimits

    WebDataSourceConfiguration.add_member(:crawler_configuration, Shapes::ShapeRef.new(shape: WebCrawlerConfiguration, location_name: "crawlerConfiguration"))
    WebDataSourceConfiguration.add_member(:source_configuration, Shapes::ShapeRef.new(shape: WebSourceConfiguration, required: true, location_name: "sourceConfiguration"))
    WebDataSourceConfiguration.struct_class = Types::WebDataSourceConfiguration

    WebSourceConfiguration.add_member(:url_configuration, Shapes::ShapeRef.new(shape: UrlConfiguration, required: true, location_name: "urlConfiguration"))
    WebSourceConfiguration.struct_class = Types::WebSourceConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-06-05"

      api.metadata = {
        "apiVersion" => "2023-06-05",
        "endpointPrefix" => "bedrock-agent",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Agents for Amazon Bedrock",
        "serviceId" => "Bedrock Agent",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "uid" => "bedrock-agent-2023-06-05",
      }

      api.add_operation(:associate_agent_knowledge_base, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAgentKnowledgeBase"
        o.http_method = "PUT"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/"
        o.input = Shapes::ShapeRef.new(shape: AssociateAgentKnowledgeBaseRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateAgentKnowledgeBaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAgent"
        o.http_method = "PUT"
        o.http_request_uri = "/agents/"
        o.input = Shapes::ShapeRef.new(shape: CreateAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_agent_action_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAgentActionGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/"
        o.input = Shapes::ShapeRef.new(shape: CreateAgentActionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAgentActionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_agent_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAgentAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/agents/{agentId}/agentaliases/"
        o.input = Shapes::ShapeRef.new(shape: CreateAgentAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAgentAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSource"
        o.http_method = "PUT"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}/datasources/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFlow"
        o.http_method = "POST"
        o.http_request_uri = "/flows/"
        o.input = Shapes::ShapeRef.new(shape: CreateFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_flow_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFlowAlias"
        o.http_method = "POST"
        o.http_request_uri = "/flows/{flowIdentifier}/aliases"
        o.input = Shapes::ShapeRef.new(shape: CreateFlowAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFlowAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_flow_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFlowVersion"
        o.http_method = "POST"
        o.http_request_uri = "/flows/{flowIdentifier}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateFlowVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFlowVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_knowledge_base, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKnowledgeBase"
        o.http_method = "PUT"
        o.http_request_uri = "/knowledgebases/"
        o.input = Shapes::ShapeRef.new(shape: CreateKnowledgeBaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKnowledgeBaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_prompt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePrompt"
        o.http_method = "POST"
        o.http_request_uri = "/prompts/"
        o.input = Shapes::ShapeRef.new(shape: CreatePromptRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePromptResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_prompt_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePromptVersion"
        o.http_method = "POST"
        o.http_request_uri = "/prompts/{promptIdentifier}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreatePromptVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePromptVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAgent"
        o.http_method = "DELETE"
        o.http_request_uri = "/agents/{agentId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_agent_action_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAgentActionGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAgentActionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAgentActionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_agent_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAgentAlias"
        o.http_method = "DELETE"
        o.http_request_uri = "/agents/{agentId}/agentaliases/{agentAliasId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAgentAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAgentAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_agent_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAgentVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAgentVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAgentVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFlow"
        o.http_method = "DELETE"
        o.http_request_uri = "/flows/{flowIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_flow_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFlowAlias"
        o.http_method = "DELETE"
        o.http_request_uri = "/flows/{flowIdentifier}/aliases/{aliasIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFlowAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFlowAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_flow_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFlowVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/flows/{flowIdentifier}/versions/{flowVersion}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFlowVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFlowVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_knowledge_base, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKnowledgeBase"
        o.http_method = "DELETE"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_prompt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePrompt"
        o.http_method = "DELETE"
        o.http_request_uri = "/prompts/{promptIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: DeletePromptRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePromptResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_agent_knowledge_base, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAgentKnowledgeBase"
        o.http_method = "DELETE"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAgentKnowledgeBaseRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateAgentKnowledgeBaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgent"
        o.http_method = "GET"
        o.http_request_uri = "/agents/{agentId}/"
        o.input = Shapes::ShapeRef.new(shape: GetAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_agent_action_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgentActionGroup"
        o.http_method = "GET"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/"
        o.input = Shapes::ShapeRef.new(shape: GetAgentActionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAgentActionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_agent_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgentAlias"
        o.http_method = "GET"
        o.http_request_uri = "/agents/{agentId}/agentaliases/{agentAliasId}/"
        o.input = Shapes::ShapeRef.new(shape: GetAgentAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAgentAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_agent_knowledge_base, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgentKnowledgeBase"
        o.http_method = "GET"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/"
        o.input = Shapes::ShapeRef.new(shape: GetAgentKnowledgeBaseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAgentKnowledgeBaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_agent_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgentVersion"
        o.http_method = "GET"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/"
        o.input = Shapes::ShapeRef.new(shape: GetAgentVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAgentVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSource"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFlow"
        o.http_method = "GET"
        o.http_request_uri = "/flows/{flowIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: GetFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_flow_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFlowAlias"
        o.http_method = "GET"
        o.http_request_uri = "/flows/{flowIdentifier}/aliases/{aliasIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetFlowAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFlowAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_flow_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFlowVersion"
        o.http_method = "GET"
        o.http_request_uri = "/flows/{flowIdentifier}/versions/{flowVersion}/"
        o.input = Shapes::ShapeRef.new(shape: GetFlowVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFlowVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_ingestion_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIngestionJob"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/{ingestionJobId}"
        o.input = Shapes::ShapeRef.new(shape: GetIngestionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIngestionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_knowledge_base, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKnowledgeBase"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}"
        o.input = Shapes::ShapeRef.new(shape: GetKnowledgeBaseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKnowledgeBaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_prompt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPrompt"
        o.http_method = "GET"
        o.http_request_uri = "/prompts/{promptIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: GetPromptRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPromptResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_agent_action_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgentActionGroups"
        o.http_method = "POST"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/"
        o.input = Shapes::ShapeRef.new(shape: ListAgentActionGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAgentActionGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_agent_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgentAliases"
        o.http_method = "POST"
        o.http_request_uri = "/agents/{agentId}/agentaliases/"
        o.input = Shapes::ShapeRef.new(shape: ListAgentAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAgentAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_agent_knowledge_bases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgentKnowledgeBases"
        o.http_method = "POST"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/"
        o.input = Shapes::ShapeRef.new(shape: ListAgentKnowledgeBasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAgentKnowledgeBasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_agent_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgentVersions"
        o.http_method = "POST"
        o.http_request_uri = "/agents/{agentId}/agentversions/"
        o.input = Shapes::ShapeRef.new(shape: ListAgentVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAgentVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_agents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgents"
        o.http_method = "POST"
        o.http_request_uri = "/agents/"
        o.input = Shapes::ShapeRef.new(shape: ListAgentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAgentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSources"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}/datasources/"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_flow_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFlowAliases"
        o.http_method = "GET"
        o.http_request_uri = "/flows/{flowIdentifier}/aliases"
        o.input = Shapes::ShapeRef.new(shape: ListFlowAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFlowAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_flow_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFlowVersions"
        o.http_method = "GET"
        o.http_request_uri = "/flows/{flowIdentifier}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListFlowVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFlowVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_flows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFlows"
        o.http_method = "GET"
        o.http_request_uri = "/flows/"
        o.input = Shapes::ShapeRef.new(shape: ListFlowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFlowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ingestion_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIngestionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/"
        o.input = Shapes::ShapeRef.new(shape: ListIngestionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIngestionJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_knowledge_bases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKnowledgeBases"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgebases/"
        o.input = Shapes::ShapeRef.new(shape: ListKnowledgeBasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKnowledgeBasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_prompts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrompts"
        o.http_method = "GET"
        o.http_request_uri = "/prompts/"
        o.input = Shapes::ShapeRef.new(shape: ListPromptsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPromptsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:prepare_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PrepareAgent"
        o.http_method = "POST"
        o.http_request_uri = "/agents/{agentId}/"
        o.input = Shapes::ShapeRef.new(shape: PrepareAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: PrepareAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:prepare_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PrepareFlow"
        o.http_method = "POST"
        o.http_request_uri = "/flows/{flowIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: PrepareFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: PrepareFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_ingestion_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartIngestionJob"
        o.http_method = "PUT"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/"
        o.input = Shapes::ShapeRef.new(shape: StartIngestionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartIngestionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:stop_ingestion_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopIngestionJob"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/{ingestionJobId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopIngestionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopIngestionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAgent"
        o.http_method = "PUT"
        o.http_request_uri = "/agents/{agentId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_agent_action_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAgentActionGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAgentActionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAgentActionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_agent_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAgentAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/agents/{agentId}/agentaliases/{agentAliasId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAgentAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAgentAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_agent_knowledge_base, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAgentKnowledgeBase"
        o.http_method = "PUT"
        o.http_request_uri = "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAgentKnowledgeBaseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAgentKnowledgeBaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSource"
        o.http_method = "PUT"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlow"
        o.http_method = "PUT"
        o.http_request_uri = "/flows/{flowIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_flow_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/flows/{flowIdentifier}/aliases/{aliasIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_knowledge_base, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKnowledgeBase"
        o.http_method = "PUT"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_prompt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePrompt"
        o.http_method = "PUT"
        o.http_request_uri = "/prompts/{promptIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePromptRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePromptResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
