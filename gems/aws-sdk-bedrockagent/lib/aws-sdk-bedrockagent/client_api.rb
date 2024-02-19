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
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChunkingConfiguration = Shapes::StructureShape.new(name: 'ChunkingConfiguration')
    ChunkingStrategy = Shapes::StringShape.new(name: 'ChunkingStrategy')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAgentActionGroupRequest = Shapes::StructureShape.new(name: 'CreateAgentActionGroupRequest')
    CreateAgentActionGroupResponse = Shapes::StructureShape.new(name: 'CreateAgentActionGroupResponse')
    CreateAgentAliasRequest = Shapes::StructureShape.new(name: 'CreateAgentAliasRequest')
    CreateAgentAliasResponse = Shapes::StructureShape.new(name: 'CreateAgentAliasResponse')
    CreateAgentRequest = Shapes::StructureShape.new(name: 'CreateAgentRequest')
    CreateAgentResponse = Shapes::StructureShape.new(name: 'CreateAgentResponse')
    CreateDataSourceRequest = Shapes::StructureShape.new(name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Shapes::StructureShape.new(name: 'CreateDataSourceResponse')
    CreateKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'CreateKnowledgeBaseRequest')
    CreateKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'CreateKnowledgeBaseResponse')
    CreationMode = Shapes::StringShape.new(name: 'CreationMode')
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
    DeleteKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'DeleteKnowledgeBaseRequest')
    DeleteKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'DeleteKnowledgeBaseResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociateAgentKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'DisassociateAgentKnowledgeBaseRequest')
    DisassociateAgentKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'DisassociateAgentKnowledgeBaseResponse')
    DraftVersion = Shapes::StringShape.new(name: 'DraftVersion')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FailureReasons = Shapes::ListShape.new(name: 'FailureReasons')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    FixedSizeChunkingConfiguration = Shapes::StructureShape.new(name: 'FixedSizeChunkingConfiguration')
    FixedSizeChunkingConfigurationMaxTokensInteger = Shapes::IntegerShape.new(name: 'FixedSizeChunkingConfigurationMaxTokensInteger')
    FixedSizeChunkingConfigurationOverlapPercentageInteger = Shapes::IntegerShape.new(name: 'FixedSizeChunkingConfigurationOverlapPercentageInteger')
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
    GetIngestionJobRequest = Shapes::StructureShape.new(name: 'GetIngestionJobRequest')
    GetIngestionJobResponse = Shapes::StructureShape.new(name: 'GetIngestionJobResponse')
    GetKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'GetKnowledgeBaseRequest')
    GetKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'GetKnowledgeBaseResponse')
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
    Instruction = Shapes::StringShape.new(name: 'Instruction')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    KnowledgeBase = Shapes::StructureShape.new(name: 'KnowledgeBase')
    KnowledgeBaseArn = Shapes::StringShape.new(name: 'KnowledgeBaseArn')
    KnowledgeBaseConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseConfiguration')
    KnowledgeBaseRoleArn = Shapes::StringShape.new(name: 'KnowledgeBaseRoleArn')
    KnowledgeBaseState = Shapes::StringShape.new(name: 'KnowledgeBaseState')
    KnowledgeBaseStatus = Shapes::StringShape.new(name: 'KnowledgeBaseStatus')
    KnowledgeBaseStorageType = Shapes::StringShape.new(name: 'KnowledgeBaseStorageType')
    KnowledgeBaseSummaries = Shapes::ListShape.new(name: 'KnowledgeBaseSummaries')
    KnowledgeBaseSummary = Shapes::StructureShape.new(name: 'KnowledgeBaseSummary')
    KnowledgeBaseType = Shapes::StringShape.new(name: 'KnowledgeBaseType')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
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
    ListIngestionJobsRequest = Shapes::StructureShape.new(name: 'ListIngestionJobsRequest')
    ListIngestionJobsResponse = Shapes::StructureShape.new(name: 'ListIngestionJobsResponse')
    ListKnowledgeBasesRequest = Shapes::StructureShape.new(name: 'ListKnowledgeBasesRequest')
    ListKnowledgeBasesResponse = Shapes::StructureShape.new(name: 'ListKnowledgeBasesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumLength = Shapes::IntegerShape.new(name: 'MaximumLength')
    ModelIdentifier = Shapes::StringShape.new(name: 'ModelIdentifier')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    NumericalVersion = Shapes::StringShape.new(name: 'NumericalVersion')
    OpenSearchServerlessCollectionArn = Shapes::StringShape.new(name: 'OpenSearchServerlessCollectionArn')
    OpenSearchServerlessConfiguration = Shapes::StructureShape.new(name: 'OpenSearchServerlessConfiguration')
    OpenSearchServerlessFieldMapping = Shapes::StructureShape.new(name: 'OpenSearchServerlessFieldMapping')
    OpenSearchServerlessIndexName = Shapes::StringShape.new(name: 'OpenSearchServerlessIndexName')
    Payload = Shapes::StringShape.new(name: 'Payload')
    PineconeConfiguration = Shapes::StructureShape.new(name: 'PineconeConfiguration')
    PineconeConnectionString = Shapes::StringShape.new(name: 'PineconeConnectionString')
    PineconeFieldMapping = Shapes::StructureShape.new(name: 'PineconeFieldMapping')
    PineconeNamespace = Shapes::StringShape.new(name: 'PineconeNamespace')
    PrepareAgentRequest = Shapes::StructureShape.new(name: 'PrepareAgentRequest')
    PrepareAgentResponse = Shapes::StructureShape.new(name: 'PrepareAgentResponse')
    PrimitiveLong = Shapes::IntegerShape.new(name: 'PrimitiveLong')
    PromptConfiguration = Shapes::StructureShape.new(name: 'PromptConfiguration')
    PromptConfigurations = Shapes::ListShape.new(name: 'PromptConfigurations')
    PromptOverrideConfiguration = Shapes::StructureShape.new(name: 'PromptOverrideConfiguration')
    PromptState = Shapes::StringShape.new(name: 'PromptState')
    PromptType = Shapes::StringShape.new(name: 'PromptType')
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
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3BucketArn = Shapes::StringShape.new(name: 'S3BucketArn')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3DataSourceConfiguration = Shapes::StructureShape.new(name: 'S3DataSourceConfiguration')
    S3Identifier = Shapes::StructureShape.new(name: 'S3Identifier')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    S3Prefix = Shapes::StringShape.new(name: 'S3Prefix')
    S3Prefixes = Shapes::ListShape.new(name: 'S3Prefixes')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    ServerSideEncryptionConfiguration = Shapes::StructureShape.new(name: 'ServerSideEncryptionConfiguration')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionTTL = Shapes::IntegerShape.new(name: 'SessionTTL')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartIngestionJobRequest = Shapes::StructureShape.new(name: 'StartIngestionJobRequest')
    StartIngestionJobResponse = Shapes::StructureShape.new(name: 'StartIngestionJobResponse')
    StopSequences = Shapes::ListShape.new(name: 'StopSequences')
    StorageConfiguration = Shapes::StructureShape.new(name: 'StorageConfiguration')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourcesArn = Shapes::StringShape.new(name: 'TaggableResourcesArn')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    Temperature = Shapes::FloatShape.new(name: 'Temperature')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TopK = Shapes::IntegerShape.new(name: 'TopK')
    TopP = Shapes::FloatShape.new(name: 'TopP')
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
    UpdateKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'UpdateKnowledgeBaseRequest')
    UpdateKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'UpdateKnowledgeBaseResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    VectorIngestionConfiguration = Shapes::StructureShape.new(name: 'VectorIngestionConfiguration')
    VectorKnowledgeBaseConfiguration = Shapes::StructureShape.new(name: 'VectorKnowledgeBaseConfiguration')
    Version = Shapes::StringShape.new(name: 'Version')

    APISchema.add_member(:s3, Shapes::ShapeRef.new(shape: S3Identifier, location_name: "s3"))
    APISchema.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    APISchema.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    APISchema.add_member_subclass(:s3, Types::APISchema::S3)
    APISchema.add_member_subclass(:payload, Types::APISchema::Payload)
    APISchema.add_member_subclass(:unknown, Types::APISchema::Unknown)
    APISchema.struct_class = Types::APISchema

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionGroupExecutor.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "lambda"))
    ActionGroupExecutor.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
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

    Agent.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    Agent.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    Agent.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, required: true, location_name: "agentArn"))
    Agent.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location_name: "agentVersion"))
    Agent.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    Agent.add_member(:instruction, Shapes::ShapeRef.new(shape: Instruction, location_name: "instruction"))
    Agent.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    Agent.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "foundationModel"))
    Agent.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Agent.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, required: true, location_name: "idleSessionTTLInSeconds"))
    Agent.add_member(:agent_resource_role_arn, Shapes::ShapeRef.new(shape: AgentRoleArn, required: true, location_name: "agentResourceRoleArn"))
    Agent.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    Agent.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    Agent.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    Agent.add_member(:prepared_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "preparedAt"))
    Agent.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    Agent.add_member(:recommended_actions, Shapes::ShapeRef.new(shape: RecommendedActions, location_name: "recommendedActions"))
    Agent.add_member(:prompt_override_configuration, Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: "promptOverrideConfiguration"))
    Agent.struct_class = Types::Agent

    AgentActionGroup.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    AgentActionGroup.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "agentVersion"))
    AgentActionGroup.add_member(:action_group_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "actionGroupId"))
    AgentActionGroup.add_member(:action_group_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "actionGroupName"))
    AgentActionGroup.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    AgentActionGroup.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentActionGroup.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentActionGroup.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentActionGroup.add_member(:parent_action_signature, Shapes::ShapeRef.new(shape: ActionGroupSignature, location_name: "parentActionSignature"))
    AgentActionGroup.add_member(:action_group_executor, Shapes::ShapeRef.new(shape: ActionGroupExecutor, location_name: "actionGroupExecutor"))
    AgentActionGroup.add_member(:api_schema, Shapes::ShapeRef.new(shape: APISchema, location_name: "apiSchema"))
    AgentActionGroup.add_member(:action_group_state, Shapes::ShapeRef.new(shape: ActionGroupState, required: true, location_name: "actionGroupState"))
    AgentActionGroup.struct_class = Types::AgentActionGroup

    AgentAlias.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    AgentAlias.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location_name: "agentAliasId"))
    AgentAlias.add_member(:agent_alias_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentAliasName"))
    AgentAlias.add_member(:agent_alias_arn, Shapes::ShapeRef.new(shape: AgentAliasArn, required: true, location_name: "agentAliasArn"))
    AgentAlias.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    AgentAlias.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentAlias.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, required: true, location_name: "routingConfiguration"))
    AgentAlias.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentAlias.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentAlias.add_member(:agent_alias_history_events, Shapes::ShapeRef.new(shape: AgentAliasHistoryEvents, location_name: "agentAliasHistoryEvents"))
    AgentAlias.add_member(:agent_alias_status, Shapes::ShapeRef.new(shape: AgentAliasStatus, required: true, location_name: "agentAliasStatus"))
    AgentAlias.struct_class = Types::AgentAlias

    AgentAliasHistoryEvent.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: "routingConfiguration"))
    AgentAliasHistoryEvent.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "endDate"))
    AgentAliasHistoryEvent.add_member(:start_date, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "startDate"))
    AgentAliasHistoryEvent.struct_class = Types::AgentAliasHistoryEvent

    AgentAliasHistoryEvents.member = Shapes::ShapeRef.new(shape: AgentAliasHistoryEvent)

    AgentAliasRoutingConfiguration.member = Shapes::ShapeRef.new(shape: AgentAliasRoutingConfigurationListItem)

    AgentAliasRoutingConfigurationListItem.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "agentVersion"))
    AgentAliasRoutingConfigurationListItem.struct_class = Types::AgentAliasRoutingConfigurationListItem

    AgentAliasSummaries.member = Shapes::ShapeRef.new(shape: AgentAliasSummary)

    AgentAliasSummary.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location_name: "agentAliasId"))
    AgentAliasSummary.add_member(:agent_alias_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentAliasName"))
    AgentAliasSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentAliasSummary.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: "routingConfiguration"))
    AgentAliasSummary.add_member(:agent_alias_status, Shapes::ShapeRef.new(shape: AgentAliasStatus, required: true, location_name: "agentAliasStatus"))
    AgentAliasSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentAliasSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentAliasSummary.struct_class = Types::AgentAliasSummary

    AgentKnowledgeBase.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    AgentKnowledgeBase.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "agentVersion"))
    AgentKnowledgeBase.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    AgentKnowledgeBase.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    AgentKnowledgeBase.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentKnowledgeBase.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentKnowledgeBase.add_member(:knowledge_base_state, Shapes::ShapeRef.new(shape: KnowledgeBaseState, required: true, location_name: "knowledgeBaseState"))
    AgentKnowledgeBase.struct_class = Types::AgentKnowledgeBase

    AgentKnowledgeBaseSummaries.member = Shapes::ShapeRef.new(shape: AgentKnowledgeBaseSummary)

    AgentKnowledgeBaseSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    AgentKnowledgeBaseSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentKnowledgeBaseSummary.add_member(:knowledge_base_state, Shapes::ShapeRef.new(shape: KnowledgeBaseState, required: true, location_name: "knowledgeBaseState"))
    AgentKnowledgeBaseSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentKnowledgeBaseSummary.struct_class = Types::AgentKnowledgeBaseSummary

    AgentSummaries.member = Shapes::ShapeRef.new(shape: AgentSummary)

    AgentSummary.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    AgentSummary.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    AgentSummary.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    AgentSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentSummary.add_member(:latest_agent_version, Shapes::ShapeRef.new(shape: Version, location_name: "latestAgentVersion"))
    AgentSummary.struct_class = Types::AgentSummary

    AgentVersion.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    AgentVersion.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    AgentVersion.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, required: true, location_name: "agentArn"))
    AgentVersion.add_member(:version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location_name: "version"))
    AgentVersion.add_member(:instruction, Shapes::ShapeRef.new(shape: Instruction, location_name: "instruction"))
    AgentVersion.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    AgentVersion.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "foundationModel"))
    AgentVersion.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentVersion.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, required: true, location_name: "idleSessionTTLInSeconds"))
    AgentVersion.add_member(:agent_resource_role_arn, Shapes::ShapeRef.new(shape: AgentRoleArn, required: true, location_name: "agentResourceRoleArn"))
    AgentVersion.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    AgentVersion.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentVersion.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentVersion.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    AgentVersion.add_member(:recommended_actions, Shapes::ShapeRef.new(shape: RecommendedActions, location_name: "recommendedActions"))
    AgentVersion.add_member(:prompt_override_configuration, Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: "promptOverrideConfiguration"))
    AgentVersion.struct_class = Types::AgentVersion

    AgentVersionSummaries.member = Shapes::ShapeRef.new(shape: AgentVersionSummary)

    AgentVersionSummary.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    AgentVersionSummary.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    AgentVersionSummary.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "agentVersion"))
    AgentVersionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentVersionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    AgentVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentVersionSummary.struct_class = Types::AgentVersionSummary

    AssociateAgentKnowledgeBaseRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    AssociateAgentKnowledgeBaseRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    AssociateAgentKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    AssociateAgentKnowledgeBaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    AssociateAgentKnowledgeBaseRequest.add_member(:knowledge_base_state, Shapes::ShapeRef.new(shape: KnowledgeBaseState, location_name: "knowledgeBaseState"))
    AssociateAgentKnowledgeBaseRequest.struct_class = Types::AssociateAgentKnowledgeBaseRequest

    AssociateAgentKnowledgeBaseResponse.add_member(:agent_knowledge_base, Shapes::ShapeRef.new(shape: AgentKnowledgeBase, required: true, location_name: "agentKnowledgeBase"))
    AssociateAgentKnowledgeBaseResponse.struct_class = Types::AssociateAgentKnowledgeBaseResponse

    ChunkingConfiguration.add_member(:chunking_strategy, Shapes::ShapeRef.new(shape: ChunkingStrategy, required: true, location_name: "chunkingStrategy"))
    ChunkingConfiguration.add_member(:fixed_size_chunking_configuration, Shapes::ShapeRef.new(shape: FixedSizeChunkingConfiguration, location_name: "fixedSizeChunkingConfiguration"))
    ChunkingConfiguration.struct_class = Types::ChunkingConfiguration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAgentActionGroupRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    CreateAgentActionGroupRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    CreateAgentActionGroupRequest.add_member(:action_group_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "actionGroupName"))
    CreateAgentActionGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAgentActionGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAgentActionGroupRequest.add_member(:parent_action_group_signature, Shapes::ShapeRef.new(shape: ActionGroupSignature, location_name: "parentActionGroupSignature"))
    CreateAgentActionGroupRequest.add_member(:action_group_executor, Shapes::ShapeRef.new(shape: ActionGroupExecutor, location_name: "actionGroupExecutor"))
    CreateAgentActionGroupRequest.add_member(:api_schema, Shapes::ShapeRef.new(shape: APISchema, location_name: "apiSchema"))
    CreateAgentActionGroupRequest.add_member(:action_group_state, Shapes::ShapeRef.new(shape: ActionGroupState, location_name: "actionGroupState"))
    CreateAgentActionGroupRequest.struct_class = Types::CreateAgentActionGroupRequest

    CreateAgentActionGroupResponse.add_member(:agent_action_group, Shapes::ShapeRef.new(shape: AgentActionGroup, required: true, location_name: "agentActionGroup"))
    CreateAgentActionGroupResponse.struct_class = Types::CreateAgentActionGroupResponse

    CreateAgentAliasRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    CreateAgentAliasRequest.add_member(:agent_alias_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentAliasName"))
    CreateAgentAliasRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAgentAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAgentAliasRequest.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: "routingConfiguration"))
    CreateAgentAliasRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateAgentAliasRequest.struct_class = Types::CreateAgentAliasRequest

    CreateAgentAliasResponse.add_member(:agent_alias, Shapes::ShapeRef.new(shape: AgentAlias, required: true, location_name: "agentAlias"))
    CreateAgentAliasResponse.struct_class = Types::CreateAgentAliasResponse

    CreateAgentRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    CreateAgentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAgentRequest.add_member(:instruction, Shapes::ShapeRef.new(shape: Instruction, location_name: "instruction"))
    CreateAgentRequest.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "foundationModel"))
    CreateAgentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAgentRequest.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    CreateAgentRequest.add_member(:agent_resource_role_arn, Shapes::ShapeRef.new(shape: AgentRoleArn, required: true, location_name: "agentResourceRoleArn"))
    CreateAgentRequest.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    CreateAgentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateAgentRequest.add_member(:prompt_override_configuration, Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: "promptOverrideConfiguration"))
    CreateAgentRequest.struct_class = Types::CreateAgentRequest

    CreateAgentResponse.add_member(:agent, Shapes::ShapeRef.new(shape: Agent, required: true, location_name: "agent"))
    CreateAgentResponse.struct_class = Types::CreateAgentResponse

    CreateDataSourceRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    CreateDataSourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateDataSourceRequest.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "dataSourceConfiguration"))
    CreateDataSourceRequest.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    CreateDataSourceRequest.add_member(:vector_ingestion_configuration, Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: "vectorIngestionConfiguration"))
    CreateDataSourceRequest.struct_class = Types::CreateDataSourceRequest

    CreateDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
    CreateDataSourceResponse.struct_class = Types::CreateDataSourceResponse

    CreateKnowledgeBaseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateKnowledgeBaseRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateKnowledgeBaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateKnowledgeBaseRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: KnowledgeBaseRoleArn, required: true, location_name: "roleArn"))
    CreateKnowledgeBaseRequest.add_member(:knowledge_base_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseConfiguration, required: true, location_name: "knowledgeBaseConfiguration"))
    CreateKnowledgeBaseRequest.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfiguration, required: true, location_name: "storageConfiguration"))
    CreateKnowledgeBaseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateKnowledgeBaseRequest.struct_class = Types::CreateKnowledgeBaseRequest

    CreateKnowledgeBaseResponse.add_member(:knowledge_base, Shapes::ShapeRef.new(shape: KnowledgeBase, required: true, location_name: "knowledgeBase"))
    CreateKnowledgeBaseResponse.struct_class = Types::CreateKnowledgeBaseResponse

    DataSource.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    DataSource.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "dataSourceId"))
    DataSource.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DataSource.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    DataSource.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DataSource.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "dataSourceConfiguration"))
    DataSource.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    DataSource.add_member(:vector_ingestion_configuration, Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: "vectorIngestionConfiguration"))
    DataSource.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    DataSource.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    DataSource.struct_class = Types::DataSource

    DataSourceConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "type"))
    DataSourceConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DataSourceConfiguration, location_name: "s3Configuration"))
    DataSourceConfiguration.struct_class = Types::DataSourceConfiguration

    DataSourceSummaries.member = Shapes::ShapeRef.new(shape: DataSourceSummary)

    DataSourceSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    DataSourceSummary.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "dataSourceId"))
    DataSourceSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DataSourceSummary.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    DataSourceSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DataSourceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    DataSourceSummary.struct_class = Types::DataSourceSummary

    DeleteAgentActionGroupRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    DeleteAgentActionGroupRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    DeleteAgentActionGroupRequest.add_member(:action_group_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "actionGroupId"))
    DeleteAgentActionGroupRequest.add_member(:skip_resource_in_use_check, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "skipResourceInUseCheck"))
    DeleteAgentActionGroupRequest.struct_class = Types::DeleteAgentActionGroupRequest

    DeleteAgentActionGroupResponse.struct_class = Types::DeleteAgentActionGroupResponse

    DeleteAgentAliasRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    DeleteAgentAliasRequest.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location: "uri", location_name: "agentAliasId"))
    DeleteAgentAliasRequest.struct_class = Types::DeleteAgentAliasRequest

    DeleteAgentAliasResponse.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    DeleteAgentAliasResponse.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location_name: "agentAliasId"))
    DeleteAgentAliasResponse.add_member(:agent_alias_status, Shapes::ShapeRef.new(shape: AgentAliasStatus, required: true, location_name: "agentAliasStatus"))
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
    DeleteAgentVersionResponse.add_member(:agent_version, Shapes::ShapeRef.new(shape: NumericalVersion, required: true, location_name: "agentVersion"))
    DeleteAgentVersionResponse.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    DeleteAgentVersionResponse.struct_class = Types::DeleteAgentVersionResponse

    DeleteDataSourceRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    DeleteDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    DeleteDataSourceRequest.struct_class = Types::DeleteDataSourceRequest

    DeleteDataSourceResponse.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    DeleteDataSourceResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "dataSourceId"))
    DeleteDataSourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    DeleteDataSourceResponse.struct_class = Types::DeleteDataSourceResponse

    DeleteKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    DeleteKnowledgeBaseRequest.struct_class = Types::DeleteKnowledgeBaseRequest

    DeleteKnowledgeBaseResponse.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    DeleteKnowledgeBaseResponse.add_member(:status, Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, required: true, location_name: "status"))
    DeleteKnowledgeBaseResponse.struct_class = Types::DeleteKnowledgeBaseResponse

    DisassociateAgentKnowledgeBaseRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    DisassociateAgentKnowledgeBaseRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    DisassociateAgentKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    DisassociateAgentKnowledgeBaseRequest.struct_class = Types::DisassociateAgentKnowledgeBaseRequest

    DisassociateAgentKnowledgeBaseResponse.struct_class = Types::DisassociateAgentKnowledgeBaseResponse

    FailureReasons.member = Shapes::ShapeRef.new(shape: FailureReason)

    FixedSizeChunkingConfiguration.add_member(:max_tokens, Shapes::ShapeRef.new(shape: FixedSizeChunkingConfigurationMaxTokensInteger, required: true, location_name: "maxTokens"))
    FixedSizeChunkingConfiguration.add_member(:overlap_percentage, Shapes::ShapeRef.new(shape: FixedSizeChunkingConfigurationOverlapPercentageInteger, required: true, location_name: "overlapPercentage"))
    FixedSizeChunkingConfiguration.struct_class = Types::FixedSizeChunkingConfiguration

    GetAgentActionGroupRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    GetAgentActionGroupRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location: "uri", location_name: "agentVersion"))
    GetAgentActionGroupRequest.add_member(:action_group_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "actionGroupId"))
    GetAgentActionGroupRequest.struct_class = Types::GetAgentActionGroupRequest

    GetAgentActionGroupResponse.add_member(:agent_action_group, Shapes::ShapeRef.new(shape: AgentActionGroup, required: true, location_name: "agentActionGroup"))
    GetAgentActionGroupResponse.struct_class = Types::GetAgentActionGroupResponse

    GetAgentAliasRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    GetAgentAliasRequest.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location: "uri", location_name: "agentAliasId"))
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

    GetDataSourceRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    GetDataSourceRequest.struct_class = Types::GetDataSourceRequest

    GetDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
    GetDataSourceResponse.struct_class = Types::GetDataSourceResponse

    GetIngestionJobRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetIngestionJobRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    GetIngestionJobRequest.add_member(:ingestion_job_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ingestionJobId"))
    GetIngestionJobRequest.struct_class = Types::GetIngestionJobRequest

    GetIngestionJobResponse.add_member(:ingestion_job, Shapes::ShapeRef.new(shape: IngestionJob, required: true, location_name: "ingestionJob"))
    GetIngestionJobResponse.struct_class = Types::GetIngestionJobResponse

    GetKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetKnowledgeBaseRequest.struct_class = Types::GetKnowledgeBaseRequest

    GetKnowledgeBaseResponse.add_member(:knowledge_base, Shapes::ShapeRef.new(shape: KnowledgeBase, required: true, location_name: "knowledgeBase"))
    GetKnowledgeBaseResponse.struct_class = Types::GetKnowledgeBaseResponse

    InferenceConfiguration.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    InferenceConfiguration.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    InferenceConfiguration.add_member(:top_k, Shapes::ShapeRef.new(shape: TopK, location_name: "topK"))
    InferenceConfiguration.add_member(:maximum_length, Shapes::ShapeRef.new(shape: MaximumLength, location_name: "maximumLength"))
    InferenceConfiguration.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: StopSequences, location_name: "stopSequences"))
    InferenceConfiguration.struct_class = Types::InferenceConfiguration

    IngestionJob.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    IngestionJob.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "dataSourceId"))
    IngestionJob.add_member(:ingestion_job_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ingestionJobId"))
    IngestionJob.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    IngestionJob.add_member(:status, Shapes::ShapeRef.new(shape: IngestionJobStatus, required: true, location_name: "status"))
    IngestionJob.add_member(:statistics, Shapes::ShapeRef.new(shape: IngestionJobStatistics, location_name: "statistics"))
    IngestionJob.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    IngestionJob.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "startedAt"))
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

    IngestionJobStatistics.add_member(:number_of_documents_scanned, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfDocumentsScanned"))
    IngestionJobStatistics.add_member(:number_of_new_documents_indexed, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfNewDocumentsIndexed"))
    IngestionJobStatistics.add_member(:number_of_modified_documents_indexed, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfModifiedDocumentsIndexed"))
    IngestionJobStatistics.add_member(:number_of_documents_deleted, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfDocumentsDeleted"))
    IngestionJobStatistics.add_member(:number_of_documents_failed, Shapes::ShapeRef.new(shape: PrimitiveLong, location_name: "numberOfDocumentsFailed"))
    IngestionJobStatistics.struct_class = Types::IngestionJobStatistics

    IngestionJobSummaries.member = Shapes::ShapeRef.new(shape: IngestionJobSummary)

    IngestionJobSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    IngestionJobSummary.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "dataSourceId"))
    IngestionJobSummary.add_member(:ingestion_job_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ingestionJobId"))
    IngestionJobSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    IngestionJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: IngestionJobStatus, required: true, location_name: "status"))
    IngestionJobSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "startedAt"))
    IngestionJobSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    IngestionJobSummary.add_member(:statistics, Shapes::ShapeRef.new(shape: IngestionJobStatistics, location_name: "statistics"))
    IngestionJobSummary.struct_class = Types::IngestionJobSummary

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    KnowledgeBase.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBase.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    KnowledgeBase.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: KnowledgeBaseArn, required: true, location_name: "knowledgeBaseArn"))
    KnowledgeBase.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    KnowledgeBase.add_member(:role_arn, Shapes::ShapeRef.new(shape: KnowledgeBaseRoleArn, required: true, location_name: "roleArn"))
    KnowledgeBase.add_member(:knowledge_base_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseConfiguration, required: true, location_name: "knowledgeBaseConfiguration"))
    KnowledgeBase.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfiguration, required: true, location_name: "storageConfiguration"))
    KnowledgeBase.add_member(:status, Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, required: true, location_name: "status"))
    KnowledgeBase.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    KnowledgeBase.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    KnowledgeBase.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    KnowledgeBase.struct_class = Types::KnowledgeBase

    KnowledgeBaseConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: KnowledgeBaseType, required: true, location_name: "type"))
    KnowledgeBaseConfiguration.add_member(:vector_knowledge_base_configuration, Shapes::ShapeRef.new(shape: VectorKnowledgeBaseConfiguration, location_name: "vectorKnowledgeBaseConfiguration"))
    KnowledgeBaseConfiguration.struct_class = Types::KnowledgeBaseConfiguration

    KnowledgeBaseSummaries.member = Shapes::ShapeRef.new(shape: KnowledgeBaseSummary)

    KnowledgeBaseSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBaseSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    KnowledgeBaseSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    KnowledgeBaseSummary.add_member(:status, Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, required: true, location_name: "status"))
    KnowledgeBaseSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    KnowledgeBaseSummary.struct_class = Types::KnowledgeBaseSummary

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

    ListIngestionJobsRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    ListIngestionJobsRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    ListIngestionJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: IngestionJobFilters, location_name: "filters"))
    ListIngestionJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: IngestionJobSortBy, location_name: "sortBy"))
    ListIngestionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListIngestionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
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

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OpenSearchServerlessConfiguration.add_member(:collection_arn, Shapes::ShapeRef.new(shape: OpenSearchServerlessCollectionArn, required: true, location_name: "collectionArn"))
    OpenSearchServerlessConfiguration.add_member(:vector_index_name, Shapes::ShapeRef.new(shape: OpenSearchServerlessIndexName, required: true, location_name: "vectorIndexName"))
    OpenSearchServerlessConfiguration.add_member(:field_mapping, Shapes::ShapeRef.new(shape: OpenSearchServerlessFieldMapping, required: true, location_name: "fieldMapping"))
    OpenSearchServerlessConfiguration.struct_class = Types::OpenSearchServerlessConfiguration

    OpenSearchServerlessFieldMapping.add_member(:vector_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "vectorField"))
    OpenSearchServerlessFieldMapping.add_member(:text_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "textField"))
    OpenSearchServerlessFieldMapping.add_member(:metadata_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "metadataField"))
    OpenSearchServerlessFieldMapping.struct_class = Types::OpenSearchServerlessFieldMapping

    PineconeConfiguration.add_member(:connection_string, Shapes::ShapeRef.new(shape: PineconeConnectionString, required: true, location_name: "connectionString"))
    PineconeConfiguration.add_member(:credentials_secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "credentialsSecretArn"))
    PineconeConfiguration.add_member(:namespace, Shapes::ShapeRef.new(shape: PineconeNamespace, location_name: "namespace"))
    PineconeConfiguration.add_member(:field_mapping, Shapes::ShapeRef.new(shape: PineconeFieldMapping, required: true, location_name: "fieldMapping"))
    PineconeConfiguration.struct_class = Types::PineconeConfiguration

    PineconeFieldMapping.add_member(:text_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "textField"))
    PineconeFieldMapping.add_member(:metadata_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "metadataField"))
    PineconeFieldMapping.struct_class = Types::PineconeFieldMapping

    PrepareAgentRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    PrepareAgentRequest.struct_class = Types::PrepareAgentRequest

    PrepareAgentResponse.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "agentId"))
    PrepareAgentResponse.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "agentStatus"))
    PrepareAgentResponse.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "agentVersion"))
    PrepareAgentResponse.add_member(:prepared_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "preparedAt"))
    PrepareAgentResponse.struct_class = Types::PrepareAgentResponse

    PromptConfiguration.add_member(:prompt_type, Shapes::ShapeRef.new(shape: PromptType, location_name: "promptType"))
    PromptConfiguration.add_member(:prompt_creation_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "promptCreationMode"))
    PromptConfiguration.add_member(:prompt_state, Shapes::ShapeRef.new(shape: PromptState, location_name: "promptState"))
    PromptConfiguration.add_member(:base_prompt_template, Shapes::ShapeRef.new(shape: BasePromptTemplate, location_name: "basePromptTemplate"))
    PromptConfiguration.add_member(:inference_configuration, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfiguration"))
    PromptConfiguration.add_member(:parser_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "parserMode"))
    PromptConfiguration.struct_class = Types::PromptConfiguration

    PromptConfigurations.member = Shapes::ShapeRef.new(shape: PromptConfiguration)

    PromptOverrideConfiguration.add_member(:prompt_configurations, Shapes::ShapeRef.new(shape: PromptConfigurations, required: true, location_name: "promptConfigurations"))
    PromptOverrideConfiguration.add_member(:override_lambda, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "overrideLambda"))
    PromptOverrideConfiguration.struct_class = Types::PromptOverrideConfiguration

    RdsConfiguration.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RdsArn, required: true, location_name: "resourceArn"))
    RdsConfiguration.add_member(:credentials_secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "credentialsSecretArn"))
    RdsConfiguration.add_member(:database_name, Shapes::ShapeRef.new(shape: RdsDatabaseName, required: true, location_name: "databaseName"))
    RdsConfiguration.add_member(:table_name, Shapes::ShapeRef.new(shape: RdsTableName, required: true, location_name: "tableName"))
    RdsConfiguration.add_member(:field_mapping, Shapes::ShapeRef.new(shape: RdsFieldMapping, required: true, location_name: "fieldMapping"))
    RdsConfiguration.struct_class = Types::RdsConfiguration

    RdsFieldMapping.add_member(:primary_key_field, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "primaryKeyField"))
    RdsFieldMapping.add_member(:vector_field, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "vectorField"))
    RdsFieldMapping.add_member(:text_field, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "textField"))
    RdsFieldMapping.add_member(:metadata_field, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "metadataField"))
    RdsFieldMapping.struct_class = Types::RdsFieldMapping

    RecommendedActions.member = Shapes::ShapeRef.new(shape: RecommendedAction)

    RedisEnterpriseCloudConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: RedisEnterpriseCloudEndpoint, required: true, location_name: "endpoint"))
    RedisEnterpriseCloudConfiguration.add_member(:vector_index_name, Shapes::ShapeRef.new(shape: RedisEnterpriseCloudIndexName, required: true, location_name: "vectorIndexName"))
    RedisEnterpriseCloudConfiguration.add_member(:credentials_secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "credentialsSecretArn"))
    RedisEnterpriseCloudConfiguration.add_member(:field_mapping, Shapes::ShapeRef.new(shape: RedisEnterpriseCloudFieldMapping, required: true, location_name: "fieldMapping"))
    RedisEnterpriseCloudConfiguration.struct_class = Types::RedisEnterpriseCloudConfiguration

    RedisEnterpriseCloudFieldMapping.add_member(:vector_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "vectorField"))
    RedisEnterpriseCloudFieldMapping.add_member(:text_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "textField"))
    RedisEnterpriseCloudFieldMapping.add_member(:metadata_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "metadataField"))
    RedisEnterpriseCloudFieldMapping.struct_class = Types::RedisEnterpriseCloudFieldMapping

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3DataSourceConfiguration.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, required: true, location_name: "bucketArn"))
    S3DataSourceConfiguration.add_member(:inclusion_prefixes, Shapes::ShapeRef.new(shape: S3Prefixes, location_name: "inclusionPrefixes"))
    S3DataSourceConfiguration.struct_class = Types::S3DataSourceConfiguration

    S3Identifier.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3BucketName"))
    S3Identifier.add_member(:s3_object_key, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "s3ObjectKey"))
    S3Identifier.struct_class = Types::S3Identifier

    S3Prefixes.member = Shapes::ShapeRef.new(shape: S3Prefix)

    ServerSideEncryptionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    ServerSideEncryptionConfiguration.struct_class = Types::ServerSideEncryptionConfiguration

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartIngestionJobRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    StartIngestionJobRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    StartIngestionJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartIngestionJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    StartIngestionJobRequest.struct_class = Types::StartIngestionJobRequest

    StartIngestionJobResponse.add_member(:ingestion_job, Shapes::ShapeRef.new(shape: IngestionJob, required: true, location_name: "ingestionJob"))
    StartIngestionJobResponse.struct_class = Types::StartIngestionJobResponse

    StopSequences.member = Shapes::ShapeRef.new(shape: String)

    StorageConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: KnowledgeBaseStorageType, required: true, location_name: "type"))
    StorageConfiguration.add_member(:opensearch_serverless_configuration, Shapes::ShapeRef.new(shape: OpenSearchServerlessConfiguration, location_name: "opensearchServerlessConfiguration"))
    StorageConfiguration.add_member(:pinecone_configuration, Shapes::ShapeRef.new(shape: PineconeConfiguration, location_name: "pineconeConfiguration"))
    StorageConfiguration.add_member(:redis_enterprise_cloud_configuration, Shapes::ShapeRef.new(shape: RedisEnterpriseCloudConfiguration, location_name: "redisEnterpriseCloudConfiguration"))
    StorageConfiguration.add_member(:rds_configuration, Shapes::ShapeRef.new(shape: RdsConfiguration, location_name: "rdsConfiguration"))
    StorageConfiguration.struct_class = Types::StorageConfiguration

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAgentActionGroupRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    UpdateAgentActionGroupRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    UpdateAgentActionGroupRequest.add_member(:action_group_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "actionGroupId"))
    UpdateAgentActionGroupRequest.add_member(:action_group_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "actionGroupName"))
    UpdateAgentActionGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAgentActionGroupRequest.add_member(:parent_action_group_signature, Shapes::ShapeRef.new(shape: ActionGroupSignature, location_name: "parentActionGroupSignature"))
    UpdateAgentActionGroupRequest.add_member(:action_group_executor, Shapes::ShapeRef.new(shape: ActionGroupExecutor, location_name: "actionGroupExecutor"))
    UpdateAgentActionGroupRequest.add_member(:action_group_state, Shapes::ShapeRef.new(shape: ActionGroupState, location_name: "actionGroupState"))
    UpdateAgentActionGroupRequest.add_member(:api_schema, Shapes::ShapeRef.new(shape: APISchema, location_name: "apiSchema"))
    UpdateAgentActionGroupRequest.struct_class = Types::UpdateAgentActionGroupRequest

    UpdateAgentActionGroupResponse.add_member(:agent_action_group, Shapes::ShapeRef.new(shape: AgentActionGroup, required: true, location_name: "agentActionGroup"))
    UpdateAgentActionGroupResponse.struct_class = Types::UpdateAgentActionGroupResponse

    UpdateAgentAliasRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    UpdateAgentAliasRequest.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location: "uri", location_name: "agentAliasId"))
    UpdateAgentAliasRequest.add_member(:agent_alias_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentAliasName"))
    UpdateAgentAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAgentAliasRequest.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: "routingConfiguration"))
    UpdateAgentAliasRequest.struct_class = Types::UpdateAgentAliasRequest

    UpdateAgentAliasResponse.add_member(:agent_alias, Shapes::ShapeRef.new(shape: AgentAlias, required: true, location_name: "agentAlias"))
    UpdateAgentAliasResponse.struct_class = Types::UpdateAgentAliasResponse

    UpdateAgentKnowledgeBaseRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    UpdateAgentKnowledgeBaseRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: DraftVersion, required: true, location: "uri", location_name: "agentVersion"))
    UpdateAgentKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    UpdateAgentKnowledgeBaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAgentKnowledgeBaseRequest.add_member(:knowledge_base_state, Shapes::ShapeRef.new(shape: KnowledgeBaseState, location_name: "knowledgeBaseState"))
    UpdateAgentKnowledgeBaseRequest.struct_class = Types::UpdateAgentKnowledgeBaseRequest

    UpdateAgentKnowledgeBaseResponse.add_member(:agent_knowledge_base, Shapes::ShapeRef.new(shape: AgentKnowledgeBase, required: true, location_name: "agentKnowledgeBase"))
    UpdateAgentKnowledgeBaseResponse.struct_class = Types::UpdateAgentKnowledgeBaseResponse

    UpdateAgentRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "agentId"))
    UpdateAgentRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "agentName"))
    UpdateAgentRequest.add_member(:instruction, Shapes::ShapeRef.new(shape: Instruction, location_name: "instruction"))
    UpdateAgentRequest.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "foundationModel"))
    UpdateAgentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAgentRequest.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    UpdateAgentRequest.add_member(:agent_resource_role_arn, Shapes::ShapeRef.new(shape: AgentRoleArn, required: true, location_name: "agentResourceRoleArn"))
    UpdateAgentRequest.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    UpdateAgentRequest.add_member(:prompt_override_configuration, Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: "promptOverrideConfiguration"))
    UpdateAgentRequest.struct_class = Types::UpdateAgentRequest

    UpdateAgentResponse.add_member(:agent, Shapes::ShapeRef.new(shape: Agent, required: true, location_name: "agent"))
    UpdateAgentResponse.struct_class = Types::UpdateAgentResponse

    UpdateDataSourceRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    UpdateDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "dataSourceId"))
    UpdateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UpdateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateDataSourceRequest.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "dataSourceConfiguration"))
    UpdateDataSourceRequest.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    UpdateDataSourceRequest.add_member(:vector_ingestion_configuration, Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: "vectorIngestionConfiguration"))
    UpdateDataSourceRequest.struct_class = Types::UpdateDataSourceRequest

    UpdateDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
    UpdateDataSourceResponse.struct_class = Types::UpdateDataSourceResponse

    UpdateKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "knowledgeBaseId"))
    UpdateKnowledgeBaseRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UpdateKnowledgeBaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateKnowledgeBaseRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: KnowledgeBaseRoleArn, required: true, location_name: "roleArn"))
    UpdateKnowledgeBaseRequest.add_member(:knowledge_base_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseConfiguration, required: true, location_name: "knowledgeBaseConfiguration"))
    UpdateKnowledgeBaseRequest.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfiguration, required: true, location_name: "storageConfiguration"))
    UpdateKnowledgeBaseRequest.struct_class = Types::UpdateKnowledgeBaseRequest

    UpdateKnowledgeBaseResponse.add_member(:knowledge_base, Shapes::ShapeRef.new(shape: KnowledgeBase, required: true, location_name: "knowledgeBase"))
    UpdateKnowledgeBaseResponse.struct_class = Types::UpdateKnowledgeBaseResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VectorIngestionConfiguration.add_member(:chunking_configuration, Shapes::ShapeRef.new(shape: ChunkingConfiguration, location_name: "chunkingConfiguration"))
    VectorIngestionConfiguration.struct_class = Types::VectorIngestionConfiguration

    VectorKnowledgeBaseConfiguration.add_member(:embedding_model_arn, Shapes::ShapeRef.new(shape: BedrockEmbeddingModelArn, required: true, location_name: "embeddingModelArn"))
    VectorKnowledgeBaseConfiguration.struct_class = Types::VectorKnowledgeBaseConfiguration


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
    end

  end
end
