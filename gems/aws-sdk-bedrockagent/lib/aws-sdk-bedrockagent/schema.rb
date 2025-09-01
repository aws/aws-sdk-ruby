# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgent
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APISchema = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#APISchema', name: 'APISchema')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActionGroupExecutor = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#ActionGroupExecutor', name: 'ActionGroupExecutor')
    ActionGroupSignature = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#ActionGroupSignature', name: 'ActionGroupSignature')
    ActionGroupSignatureParams = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.bedrockagent#ActionGroupSignatureParams', name: 'ActionGroupSignatureParams')
    ActionGroupState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#ActionGroupState', name: 'ActionGroupState')
    ActionGroupSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#ActionGroupSummaries', name: 'ActionGroupSummaries', traits: {"smithy.api#length" => {"max" => 10}})
    ActionGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ActionGroupSummary', name: 'ActionGroupSummary')
    AdditionalModelRequestFields = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.bedrockagent#AdditionalModelRequestFields', name: 'AdditionalModelRequestFields')
    AdditionalModelRequestFieldsKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#AdditionalModelRequestFieldsKey', name: 'AdditionalModelRequestFieldsKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AdditionalModelRequestFieldsValue = Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.bedrockagent#AdditionalModelRequestFieldsValue', name: 'AdditionalModelRequestFieldsValue')
    Agent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#Agent', name: 'Agent')
    AgentActionGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentActionGroup', name: 'AgentActionGroup')
    AgentAlias = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentAlias', name: 'AgentAlias')
    AgentAliasArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#AgentAliasArn', name: 'AgentAliasArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:agent-alias/[0-9a-zA-Z]{10}/[0-9a-zA-Z]{10}$"})
    AgentAliasHistoryEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentAliasHistoryEvent', name: 'AgentAliasHistoryEvent')
    AgentAliasHistoryEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#AgentAliasHistoryEvents', name: 'AgentAliasHistoryEvents', traits: {"smithy.api#length" => {"max" => 10}})
    AgentAliasId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#AgentAliasId', name: 'AgentAliasId', traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^(\\bTSTALIASID\\b|[0-9a-zA-Z]+)$"})
    AgentAliasRoutingConfiguration = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#AgentAliasRoutingConfiguration', name: 'AgentAliasRoutingConfiguration', traits: {"smithy.api#length" => {"max" => 1}})
    AgentAliasRoutingConfigurationListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentAliasRoutingConfigurationListItem', name: 'AgentAliasRoutingConfigurationListItem')
    AgentAliasStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#AgentAliasStatus', name: 'AgentAliasStatus')
    AgentAliasSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#AgentAliasSummaries', name: 'AgentAliasSummaries', traits: {"smithy.api#length" => {"max" => 10}})
    AgentAliasSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentAliasSummary', name: 'AgentAliasSummary')
    AgentArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#AgentArn', name: 'AgentArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:agent/[0-9a-zA-Z]{10}$"})
    AgentCollaboration = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#AgentCollaboration', name: 'AgentCollaboration')
    AgentCollaborator = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentCollaborator', name: 'AgentCollaborator')
    AgentCollaboratorSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#AgentCollaboratorSummaries', name: 'AgentCollaboratorSummaries', traits: {"smithy.api#length" => {"max" => 10}})
    AgentCollaboratorSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentCollaboratorSummary', name: 'AgentCollaboratorSummary')
    AgentDescriptor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentDescriptor', name: 'AgentDescriptor')
    AgentFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentFlowNodeConfiguration', name: 'AgentFlowNodeConfiguration')
    AgentKnowledgeBase = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentKnowledgeBase', name: 'AgentKnowledgeBase')
    AgentKnowledgeBaseSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#AgentKnowledgeBaseSummaries', name: 'AgentKnowledgeBaseSummaries', traits: {"smithy.api#length" => {"max" => 10}})
    AgentKnowledgeBaseSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentKnowledgeBaseSummary', name: 'AgentKnowledgeBaseSummary')
    AgentRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#AgentRoleArn', name: 'AgentRoleArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/.+$"})
    AgentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#AgentStatus', name: 'AgentStatus')
    AgentSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#AgentSummaries', name: 'AgentSummaries', traits: {"smithy.api#length" => {"max" => 10}})
    AgentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentSummary', name: 'AgentSummary')
    AgentVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentVersion', name: 'AgentVersion')
    AgentVersionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#AgentVersionSummaries', name: 'AgentVersionSummaries', traits: {"smithy.api#length" => {"max" => 10}})
    AgentVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AgentVersionSummary', name: 'AgentVersionSummary')
    AliasInvocationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#AliasInvocationState', name: 'AliasInvocationState')
    AnyToolChoice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AnyToolChoice', name: 'AnyToolChoice')
    AssociateAgentCollaboratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AssociateAgentCollaboratorRequest', name: 'AssociateAgentCollaboratorRequest')
    AssociateAgentCollaboratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AssociateAgentCollaboratorResponse', name: 'AssociateAgentCollaboratorResponse')
    AssociateAgentKnowledgeBaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AssociateAgentKnowledgeBaseRequest', name: 'AssociateAgentKnowledgeBaseRequest')
    AssociateAgentKnowledgeBaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AssociateAgentKnowledgeBaseResponse', name: 'AssociateAgentKnowledgeBaseResponse')
    AutoToolChoice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#AutoToolChoice', name: 'AutoToolChoice')
    AwsDataCatalogTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#AwsDataCatalogTableName', name: 'AwsDataCatalogTableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^.*\\.*$"})
    AwsDataCatalogTableNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#AwsDataCatalogTableNames', name: 'AwsDataCatalogTableNames', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    BasePromptTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#BasePromptTemplate', name: 'BasePromptTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#sensitive" => {}})
    BedrockDataAutomationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#BedrockDataAutomationConfiguration', name: 'BedrockDataAutomationConfiguration')
    BedrockEmbeddingModelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#BedrockEmbeddingModelArn', name: 'BedrockEmbeddingModelArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]{1,12})?:(bedrock|sagemaker):[a-z0-9-]{1,20}:([0-9]{12})?:([a-z-]+/)?)?([a-zA-Z0-9.-]{1,63}){0,2}(([:][a-z0-9-]{1,63}){0,2})?(/[a-z0-9]{1,12})?$"})
    BedrockEmbeddingModelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#BedrockEmbeddingModelConfiguration', name: 'BedrockEmbeddingModelConfiguration')
    BedrockFoundationModelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#BedrockFoundationModelConfiguration', name: 'BedrockFoundationModelConfiguration')
    BedrockFoundationModelContextEnrichmentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#BedrockFoundationModelContextEnrichmentConfiguration', name: 'BedrockFoundationModelContextEnrichmentConfiguration')
    BedrockModelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#BedrockModelArn', name: 'BedrockModelArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]{1,12})?:(bedrock):[a-z0-9-]{1,20}:([0-9]{12})?:([a-z-]+/)?)?([a-zA-Z0-9.-]{1,63}){0,2}(([:][a-z0-9-]{1,63}){0,2})?(/[a-z0-9]{1,12})?$"})
    BedrockRerankingModelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#BedrockRerankingModelArn', name: 'BedrockRerankingModelArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/(.*))?$"})
    BucketOwnerAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#BucketOwnerAccountId', name: 'BucketOwnerAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    ByteContentBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.bedrockagent#ByteContentBlob', name: 'ByteContentBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}, "smithy.api#sensitive" => {}})
    ByteContentDoc = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ByteContentDoc', name: 'ByteContentDoc')
    CachePointBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CachePointBlock', name: 'CachePointBlock')
    CachePointType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#CachePointType', name: 'CachePointType')
    ChatPromptTemplateConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ChatPromptTemplateConfiguration', name: 'ChatPromptTemplateConfiguration', traits: {"smithy.api#sensitive" => {}})
    ChunkingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ChunkingConfiguration', name: 'ChunkingConfiguration')
    ChunkingStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#ChunkingStrategy', name: 'ChunkingStrategy')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 33, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,256}$"})
    CollaborationInstruction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#CollaborationInstruction', name: 'CollaborationInstruction', traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#sensitive" => {}})
    CollectorFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CollectorFlowNodeConfiguration', name: 'CollectorFlowNodeConfiguration')
    ColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#ColumnName', name: 'ColumnName', traits: {"smithy.api#length" => {"max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-]+$"})
    ConcurrencyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#ConcurrencyType', name: 'ConcurrencyType')
    ConditionFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ConditionFlowNodeConfiguration', name: 'ConditionFlowNodeConfiguration')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConfluenceAuthType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#ConfluenceAuthType', name: 'ConfluenceAuthType')
    ConfluenceCrawlerConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ConfluenceCrawlerConfiguration', name: 'ConfluenceCrawlerConfiguration')
    ConfluenceDataSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ConfluenceDataSourceConfiguration', name: 'ConfluenceDataSourceConfiguration')
    ConfluenceHostType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#ConfluenceHostType', name: 'ConfluenceHostType')
    ConfluenceSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ConfluenceSourceConfiguration', name: 'ConfluenceSourceConfiguration')
    ContentBlock = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#ContentBlock', name: 'ContentBlock', traits: {"smithy.api#sensitive" => {}})
    ContentBlocks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#ContentBlocks', name: 'ContentBlocks')
    ContentDataSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#ContentDataSourceType', name: 'ContentDataSourceType')
    ContextEnrichmentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ContextEnrichmentConfiguration', name: 'ContextEnrichmentConfiguration')
    ContextEnrichmentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#ContextEnrichmentType', name: 'ContextEnrichmentType')
    ConversationRole = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#ConversationRole', name: 'ConversationRole')
    CrawlFilterConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CrawlFilterConfiguration', name: 'CrawlFilterConfiguration')
    CrawlFilterConfigurationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#CrawlFilterConfigurationType', name: 'CrawlFilterConfigurationType')
    CreateAgentActionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateAgentActionGroupRequest', name: 'CreateAgentActionGroupRequest')
    CreateAgentActionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateAgentActionGroupResponse', name: 'CreateAgentActionGroupResponse')
    CreateAgentAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateAgentAliasRequest', name: 'CreateAgentAliasRequest')
    CreateAgentAliasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateAgentAliasResponse', name: 'CreateAgentAliasResponse')
    CreateAgentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateAgentRequest', name: 'CreateAgentRequest')
    CreateAgentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateAgentResponse', name: 'CreateAgentResponse')
    CreateDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateDataSourceRequest', name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateDataSourceResponse', name: 'CreateDataSourceResponse')
    CreateFlowAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateFlowAliasRequest', name: 'CreateFlowAliasRequest')
    CreateFlowAliasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateFlowAliasResponse', name: 'CreateFlowAliasResponse')
    CreateFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateFlowRequest', name: 'CreateFlowRequest')
    CreateFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateFlowResponse', name: 'CreateFlowResponse')
    CreateFlowVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateFlowVersionRequest', name: 'CreateFlowVersionRequest')
    CreateFlowVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateFlowVersionResponse', name: 'CreateFlowVersionResponse')
    CreateKnowledgeBaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateKnowledgeBaseRequest', name: 'CreateKnowledgeBaseRequest')
    CreateKnowledgeBaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreateKnowledgeBaseResponse', name: 'CreateKnowledgeBaseResponse')
    CreatePromptRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreatePromptRequest', name: 'CreatePromptRequest')
    CreatePromptResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreatePromptResponse', name: 'CreatePromptResponse')
    CreatePromptVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreatePromptVersionRequest', name: 'CreatePromptVersionRequest')
    CreatePromptVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CreatePromptVersionResponse', name: 'CreatePromptVersionResponse')
    CreationMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#CreationMode', name: 'CreationMode')
    CuratedQueries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#CuratedQueries', name: 'CuratedQueries', traits: {"smithy.api#length" => {"max" => 10}})
    CuratedQuery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CuratedQuery', name: 'CuratedQuery')
    CustomContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CustomContent', name: 'CustomContent')
    CustomControlMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#CustomControlMethod', name: 'CustomControlMethod')
    CustomDocumentIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CustomDocumentIdentifier', name: 'CustomDocumentIdentifier')
    CustomOrchestration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CustomOrchestration', name: 'CustomOrchestration')
    CustomS3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CustomS3Location', name: 'CustomS3Location')
    CustomSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#CustomSourceType', name: 'CustomSourceType')
    CustomTransformationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CustomTransformationConfiguration', name: 'CustomTransformationConfiguration')
    CyclicConnectionFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#CyclicConnectionFlowValidationDetails', name: 'CyclicConnectionFlowValidationDetails')
    Data = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#Data', name: 'Data', traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}, "smithy.api#sensitive" => {}})
    DataDeletionPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#DataDeletionPolicy', name: 'DataDeletionPolicy')
    DataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DataSource', name: 'DataSource')
    DataSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DataSourceConfiguration', name: 'DataSourceConfiguration')
    DataSourceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#DataSourceStatus', name: 'DataSourceStatus')
    DataSourceSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#DataSourceSummaries', name: 'DataSourceSummaries')
    DataSourceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DataSourceSummary', name: 'DataSourceSummary')
    DataSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#DataSourceType', name: 'DataSourceType')
    DateTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.bedrockagent#DateTimestamp', name: 'DateTimestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteAgentActionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteAgentActionGroupRequest', name: 'DeleteAgentActionGroupRequest')
    DeleteAgentActionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteAgentActionGroupResponse', name: 'DeleteAgentActionGroupResponse')
    DeleteAgentAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteAgentAliasRequest', name: 'DeleteAgentAliasRequest')
    DeleteAgentAliasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteAgentAliasResponse', name: 'DeleteAgentAliasResponse')
    DeleteAgentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteAgentRequest', name: 'DeleteAgentRequest')
    DeleteAgentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteAgentResponse', name: 'DeleteAgentResponse')
    DeleteAgentVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteAgentVersionRequest', name: 'DeleteAgentVersionRequest')
    DeleteAgentVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteAgentVersionResponse', name: 'DeleteAgentVersionResponse')
    DeleteDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteDataSourceRequest', name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteDataSourceResponse', name: 'DeleteDataSourceResponse')
    DeleteFlowAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteFlowAliasRequest', name: 'DeleteFlowAliasRequest')
    DeleteFlowAliasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteFlowAliasResponse', name: 'DeleteFlowAliasResponse')
    DeleteFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteFlowRequest', name: 'DeleteFlowRequest')
    DeleteFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteFlowResponse', name: 'DeleteFlowResponse')
    DeleteFlowVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteFlowVersionRequest', name: 'DeleteFlowVersionRequest')
    DeleteFlowVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteFlowVersionResponse', name: 'DeleteFlowVersionResponse')
    DeleteKnowledgeBaseDocumentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteKnowledgeBaseDocumentsRequest', name: 'DeleteKnowledgeBaseDocumentsRequest')
    DeleteKnowledgeBaseDocumentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteKnowledgeBaseDocumentsResponse', name: 'DeleteKnowledgeBaseDocumentsResponse')
    DeleteKnowledgeBaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteKnowledgeBaseRequest', name: 'DeleteKnowledgeBaseRequest')
    DeleteKnowledgeBaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeleteKnowledgeBaseResponse', name: 'DeleteKnowledgeBaseResponse')
    DeletePromptRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeletePromptRequest', name: 'DeletePromptRequest')
    DeletePromptResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DeletePromptResponse', name: 'DeletePromptResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    DescriptionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#DescriptionString', name: 'DescriptionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    Dimensions = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagent#Dimensions', name: 'Dimensions', traits: {"smithy.api#range" => {"min" => 0, "max" => 4096}})
    DisassociateAgentCollaboratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DisassociateAgentCollaboratorRequest', name: 'DisassociateAgentCollaboratorRequest')
    DisassociateAgentCollaboratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DisassociateAgentCollaboratorResponse', name: 'DisassociateAgentCollaboratorResponse')
    DisassociateAgentKnowledgeBaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DisassociateAgentKnowledgeBaseRequest', name: 'DisassociateAgentKnowledgeBaseRequest')
    DisassociateAgentKnowledgeBaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DisassociateAgentKnowledgeBaseResponse', name: 'DisassociateAgentKnowledgeBaseResponse')
    DocumentContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DocumentContent', name: 'DocumentContent')
    DocumentIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DocumentIdentifier', name: 'DocumentIdentifier')
    DocumentIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#DocumentIdentifiers', name: 'DocumentIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DocumentMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DocumentMetadata', name: 'DocumentMetadata')
    DocumentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#DocumentStatus', name: 'DocumentStatus')
    DraftVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#DraftVersion', name: 'DraftVersion', traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^DRAFT$"})
    DuplicateConditionExpressionFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DuplicateConditionExpressionFlowValidationDetails', name: 'DuplicateConditionExpressionFlowValidationDetails')
    DuplicateConnectionsFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#DuplicateConnectionsFlowValidationDetails', name: 'DuplicateConnectionsFlowValidationDetails')
    EmbeddingDataType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#EmbeddingDataType', name: 'EmbeddingDataType')
    EmbeddingModelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#EmbeddingModelConfiguration', name: 'EmbeddingModelConfiguration')
    EnabledMemoryTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#EnabledMemoryTypes', name: 'EnabledMemoryTypes', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EnrichmentStrategyConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#EnrichmentStrategyConfiguration', name: 'EnrichmentStrategyConfiguration')
    EnrichmentStrategyMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#EnrichmentStrategyMethod', name: 'EnrichmentStrategyMethod')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"max" => 2048}})
    FailureReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FailureReason', name: 'FailureReason', traits: {"smithy.api#length" => {"max" => 2048}})
    FailureReasons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FailureReasons', name: 'FailureReasons', traits: {"smithy.api#length" => {"max" => 2048}})
    FieldForReranking = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FieldForReranking', name: 'FieldForReranking')
    FieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FieldName', name: 'FieldName', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^.*$"})
    FieldsForReranking = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FieldsForReranking', name: 'FieldsForReranking', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FilterList', name: 'FilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#sensitive" => {}})
    FilterPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FilterPattern', name: 'FilterPattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    FilteredObjectType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FilteredObjectType', name: 'FilteredObjectType', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    FixedSizeChunkingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FixedSizeChunkingConfiguration', name: 'FixedSizeChunkingConfiguration')
    FlowAliasArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowAliasArn', name: 'FlowAliasArn', traits: {"smithy.api#pattern" => "^arn:aws:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:flow/[0-9a-zA-Z]{10}/alias/(TSTALIASID|[0-9a-zA-Z]{10})$"})
    FlowAliasConcurrencyConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowAliasConcurrencyConfiguration', name: 'FlowAliasConcurrencyConfiguration')
    FlowAliasId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowAliasId', name: 'FlowAliasId', traits: {"smithy.api#pattern" => "^(TSTALIASID|[0-9a-zA-Z]{10})$"})
    FlowAliasIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowAliasIdentifier', name: 'FlowAliasIdentifier', traits: {"smithy.api#pattern" => "^(arn:aws:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:flow/[0-9a-zA-Z]{10}/alias/[0-9a-zA-Z]{10})|(TSTALIASID|[0-9a-zA-Z]{10})$"})
    FlowAliasRoutingConfiguration = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FlowAliasRoutingConfiguration', name: 'FlowAliasRoutingConfiguration', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FlowAliasRoutingConfigurationListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowAliasRoutingConfigurationListItem', name: 'FlowAliasRoutingConfigurationListItem')
    FlowAliasSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FlowAliasSummaries', name: 'FlowAliasSummaries', traits: {"smithy.api#length" => {"max" => 10}})
    FlowAliasSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowAliasSummary', name: 'FlowAliasSummary')
    FlowArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowArn', name: 'FlowArn', traits: {"smithy.api#pattern" => "^arn:aws:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:flow/[0-9a-zA-Z]{10}$"})
    FlowCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowCondition', name: 'FlowCondition')
    FlowConditionExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowConditionExpression', name: 'FlowConditionExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    FlowConditionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowConditionName', name: 'FlowConditionName', traits: {"smithy.api#pattern" => "^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"})
    FlowConditionalConnectionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowConditionalConnectionConfiguration', name: 'FlowConditionalConnectionConfiguration')
    FlowConditions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FlowConditions', name: 'FlowConditions', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    FlowConnection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowConnection', name: 'FlowConnection')
    FlowConnectionConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#FlowConnectionConfiguration', name: 'FlowConnectionConfiguration')
    FlowConnectionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowConnectionName', name: 'FlowConnectionName', traits: {"smithy.api#pattern" => "^[a-zA-Z]([_]?[0-9a-zA-Z]){1,100}$"})
    FlowConnectionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#FlowConnectionType', name: 'FlowConnectionType')
    FlowConnections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FlowConnections', name: 'FlowConnections', traits: {"smithy.api#length" => {"max" => 20}})
    FlowDataConnectionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowDataConnectionConfiguration', name: 'FlowDataConnectionConfiguration')
    FlowDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowDefinition', name: 'FlowDefinition', traits: {"smithy.api#sensitive" => {}})
    FlowDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowDescription', name: 'FlowDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    FlowExecutionRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowExecutionRoleArn', name: 'FlowExecutionRoleArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/(service-role/)?.+$"})
    FlowId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowId', name: 'FlowId', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z]{10}$"})
    FlowIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowIdentifier', name: 'FlowIdentifier', traits: {"smithy.api#pattern" => "^(arn:aws:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:flow/[0-9a-zA-Z]{10})|([0-9a-zA-Z]{10})$"})
    FlowName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowName', name: 'FlowName', traits: {"smithy.api#pattern" => "^([0-9a-zA-Z][_-]?){1,100}$"})
    FlowNode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowNode', name: 'FlowNode')
    FlowNodeConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeConfiguration', name: 'FlowNodeConfiguration')
    FlowNodeIODataType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeIODataType', name: 'FlowNodeIODataType')
    FlowNodeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeInput', name: 'FlowNodeInput')
    FlowNodeInputCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeInputCategory', name: 'FlowNodeInputCategory')
    FlowNodeInputExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeInputExpression', name: 'FlowNodeInputExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    FlowNodeInputName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeInputName', name: 'FlowNodeInputName', traits: {"smithy.api#pattern" => "^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"})
    FlowNodeInputs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeInputs', name: 'FlowNodeInputs', traits: {"smithy.api#length" => {"max" => 20}})
    FlowNodeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeName', name: 'FlowNodeName', traits: {"smithy.api#pattern" => "^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"})
    FlowNodeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeOutput', name: 'FlowNodeOutput')
    FlowNodeOutputName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeOutputName', name: 'FlowNodeOutputName', traits: {"smithy.api#pattern" => "^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"})
    FlowNodeOutputs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeOutputs', name: 'FlowNodeOutputs', traits: {"smithy.api#length" => {"max" => 5}})
    FlowNodeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#FlowNodeType', name: 'FlowNodeType')
    FlowNodes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FlowNodes', name: 'FlowNodes', traits: {"smithy.api#length" => {"max" => 40}})
    FlowStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#FlowStatus', name: 'FlowStatus')
    FlowSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FlowSummaries', name: 'FlowSummaries', traits: {"smithy.api#length" => {"max" => 10}})
    FlowSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowSummary', name: 'FlowSummary')
    FlowValidation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowValidation', name: 'FlowValidation')
    FlowValidationDetails = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#FlowValidationDetails', name: 'FlowValidationDetails')
    FlowValidationSeverity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#FlowValidationSeverity', name: 'FlowValidationSeverity')
    FlowValidationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#FlowValidationType', name: 'FlowValidationType')
    FlowValidations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FlowValidations', name: 'FlowValidations', traits: {"smithy.api#length" => {"max" => 100}})
    FlowVersionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#FlowVersionSummaries', name: 'FlowVersionSummaries', traits: {"smithy.api#length" => {"max" => 10}})
    FlowVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#FlowVersionSummary', name: 'FlowVersionSummary')
    Function = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#Function', name: 'Function')
    FunctionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#FunctionDescription', name: 'FunctionDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1200}})
    FunctionSchema = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#FunctionSchema', name: 'FunctionSchema')
    Functions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#Functions', name: 'Functions')
    GetAgentActionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentActionGroupRequest', name: 'GetAgentActionGroupRequest')
    GetAgentActionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentActionGroupResponse', name: 'GetAgentActionGroupResponse')
    GetAgentAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentAliasRequest', name: 'GetAgentAliasRequest')
    GetAgentAliasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentAliasResponse', name: 'GetAgentAliasResponse')
    GetAgentCollaboratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentCollaboratorRequest', name: 'GetAgentCollaboratorRequest')
    GetAgentCollaboratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentCollaboratorResponse', name: 'GetAgentCollaboratorResponse')
    GetAgentKnowledgeBaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentKnowledgeBaseRequest', name: 'GetAgentKnowledgeBaseRequest')
    GetAgentKnowledgeBaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentKnowledgeBaseResponse', name: 'GetAgentKnowledgeBaseResponse')
    GetAgentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentRequest', name: 'GetAgentRequest')
    GetAgentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentResponse', name: 'GetAgentResponse')
    GetAgentVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentVersionRequest', name: 'GetAgentVersionRequest')
    GetAgentVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetAgentVersionResponse', name: 'GetAgentVersionResponse')
    GetDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetDataSourceRequest', name: 'GetDataSourceRequest')
    GetDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetDataSourceResponse', name: 'GetDataSourceResponse')
    GetFlowAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetFlowAliasRequest', name: 'GetFlowAliasRequest')
    GetFlowAliasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetFlowAliasResponse', name: 'GetFlowAliasResponse')
    GetFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetFlowRequest', name: 'GetFlowRequest')
    GetFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetFlowResponse', name: 'GetFlowResponse')
    GetFlowVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetFlowVersionRequest', name: 'GetFlowVersionRequest')
    GetFlowVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetFlowVersionResponse', name: 'GetFlowVersionResponse')
    GetIngestionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetIngestionJobRequest', name: 'GetIngestionJobRequest')
    GetIngestionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetIngestionJobResponse', name: 'GetIngestionJobResponse')
    GetKnowledgeBaseDocumentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetKnowledgeBaseDocumentsRequest', name: 'GetKnowledgeBaseDocumentsRequest')
    GetKnowledgeBaseDocumentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetKnowledgeBaseDocumentsResponse', name: 'GetKnowledgeBaseDocumentsResponse')
    GetKnowledgeBaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetKnowledgeBaseRequest', name: 'GetKnowledgeBaseRequest')
    GetKnowledgeBaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetKnowledgeBaseResponse', name: 'GetKnowledgeBaseResponse')
    GetPromptRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetPromptRequest', name: 'GetPromptRequest')
    GetPromptResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GetPromptResponse', name: 'GetPromptResponse')
    GraphArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#GraphArn', name: 'GraphArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):neptune-graph:[a-zA-Z0-9-]*:[0-9]{12}:graph/g-[a-zA-Z0-9]{10}$", "smithy.api#sensitive" => {}})
    GuardrailConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#GuardrailConfiguration', name: 'GuardrailConfiguration')
    GuardrailIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#GuardrailIdentifier', name: 'GuardrailIdentifier', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^(([a-z0-9]+)|(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+))$"})
    GuardrailVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#GuardrailVersion', name: 'GuardrailVersion', traits: {"smithy.api#pattern" => "^(([0-9]{1,8})|(DRAFT))$"})
    HierarchicalChunkingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#HierarchicalChunkingConfiguration', name: 'HierarchicalChunkingConfiguration')
    HierarchicalChunkingLevelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#HierarchicalChunkingLevelConfiguration', name: 'HierarchicalChunkingLevelConfiguration')
    HierarchicalChunkingLevelConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#HierarchicalChunkingLevelConfigurations', name: 'HierarchicalChunkingLevelConfigurations', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    HttpsUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#HttpsUrl', name: 'HttpsUrl', traits: {"smithy.api#pattern" => "^https://[A-Za-z0-9][^\\s]*$"})
    Id = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#Id', name: 'Id', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z]{10}$"})
    IncludeExclude = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#IncludeExclude', name: 'IncludeExclude')
    IncompatibleConnectionDataTypeFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#IncompatibleConnectionDataTypeFlowValidationDetails', name: 'IncompatibleConnectionDataTypeFlowValidationDetails')
    IncompatibleLoopNodeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#IncompatibleLoopNodeType', name: 'IncompatibleLoopNodeType')
    IndexArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#IndexArn', name: 'IndexArn', traits: {"aws.api#arnReference" => {}, "smithy.api#sensitive" => {}})
    IndexName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#IndexName', name: 'IndexName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#sensitive" => {}})
    InferenceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#InferenceConfiguration', name: 'InferenceConfiguration')
    IngestKnowledgeBaseDocumentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#IngestKnowledgeBaseDocumentsRequest', name: 'IngestKnowledgeBaseDocumentsRequest')
    IngestKnowledgeBaseDocumentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#IngestKnowledgeBaseDocumentsResponse', name: 'IngestKnowledgeBaseDocumentsResponse')
    IngestionJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#IngestionJob', name: 'IngestionJob')
    IngestionJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobFilter', name: 'IngestionJobFilter')
    IngestionJobFilterAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobFilterAttribute', name: 'IngestionJobFilterAttribute')
    IngestionJobFilterOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobFilterOperator', name: 'IngestionJobFilterOperator')
    IngestionJobFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobFilterValue', name: 'IngestionJobFilterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^.*$"})
    IngestionJobFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobFilterValues', name: 'IngestionJobFilterValues', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    IngestionJobFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobFilters', name: 'IngestionJobFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    IngestionJobSortBy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobSortBy', name: 'IngestionJobSortBy')
    IngestionJobSortByAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobSortByAttribute', name: 'IngestionJobSortByAttribute')
    IngestionJobStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobStatistics', name: 'IngestionJobStatistics')
    IngestionJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobStatus', name: 'IngestionJobStatus')
    IngestionJobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobSummaries', name: 'IngestionJobSummaries')
    IngestionJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#IngestionJobSummary', name: 'IngestionJobSummary')
    InlineCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#InlineCode', name: 'InlineCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 5000000}, "smithy.api#sensitive" => {}})
    InlineCodeFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#InlineCodeFlowNodeConfiguration', name: 'InlineCodeFlowNodeConfiguration')
    InlineContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#InlineContent', name: 'InlineContent')
    InlineContentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#InlineContentType', name: 'InlineContentType')
    InputFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#InputFlowNodeConfiguration', name: 'InputFlowNodeConfiguration')
    Instruction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#Instruction', name: 'Instruction', traits: {"smithy.api#length" => {"min" => 40, "max" => 4000}, "smithy.api#sensitive" => {}})
    IntermediateStorage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#IntermediateStorage', name: 'IntermediateStorage')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidLoopBoundaryFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#InvalidLoopBoundaryFlowValidationDetails', name: 'InvalidLoopBoundaryFlowValidationDetails')
    IteratorFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#IteratorFlowNodeConfiguration', name: 'IteratorFlowNodeConfiguration')
    KendraIndexArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#KendraIndexArn', name: 'KendraIndexArn', traits: {"smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):kendra:[a-z0-9-]{1,20}:([0-9]{12}|):index/([a-zA-Z0-9][a-zA-Z0-9-]{35}|[a-zA-Z0-9][a-zA-Z0-9-]{35}-[a-zA-Z0-9][a-zA-Z0-9-]{35})$"})
    KendraKnowledgeBaseConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#KendraKnowledgeBaseConfiguration', name: 'KendraKnowledgeBaseConfiguration')
    Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#Key', name: 'Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$"})
    KnowledgeBase = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBase', name: 'KnowledgeBase')
    KnowledgeBaseArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseArn', name: 'KnowledgeBaseArn', traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:[0-9]{12}:knowledge-base/[0-9a-zA-Z]+$"})
    KnowledgeBaseConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseConfiguration', name: 'KnowledgeBaseConfiguration')
    KnowledgeBaseDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseDocument', name: 'KnowledgeBaseDocument')
    KnowledgeBaseDocumentDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseDocumentDetail', name: 'KnowledgeBaseDocumentDetail')
    KnowledgeBaseDocumentDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseDocumentDetails', name: 'KnowledgeBaseDocumentDetails')
    KnowledgeBaseDocuments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseDocuments', name: 'KnowledgeBaseDocuments', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    KnowledgeBaseFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseFlowNodeConfiguration', name: 'KnowledgeBaseFlowNodeConfiguration')
    KnowledgeBaseId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseId', name: 'KnowledgeBaseId', traits: {"smithy.api#length" => {"max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    KnowledgeBaseModelIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseModelIdentifier', name: 'KnowledgeBaseModelIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]{1,12})?:(bedrock|sagemaker):[a-z0-9-]{1,20}:([0-9]{12})?:([a-z-]+/)?)?([a-zA-Z0-9.-]{1,63}){0,2}(([:][a-z0-9-]{1,63}){0,2})?(/[a-z0-9]{1,12})?$"})
    KnowledgeBaseOrchestrationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseOrchestrationConfiguration', name: 'KnowledgeBaseOrchestrationConfiguration')
    KnowledgeBasePromptTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBasePromptTemplate', name: 'KnowledgeBasePromptTemplate')
    KnowledgeBaseRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseRoleArn', name: 'KnowledgeBaseRoleArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/.+$"})
    KnowledgeBaseState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseState', name: 'KnowledgeBaseState')
    KnowledgeBaseStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseStatus', name: 'KnowledgeBaseStatus')
    KnowledgeBaseStorageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseStorageType', name: 'KnowledgeBaseStorageType')
    KnowledgeBaseSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseSummaries', name: 'KnowledgeBaseSummaries')
    KnowledgeBaseSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseSummary', name: 'KnowledgeBaseSummary')
    KnowledgeBaseTextPrompt = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseTextPrompt', name: 'KnowledgeBaseTextPrompt', traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#sensitive" => {}})
    KnowledgeBaseType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#KnowledgeBaseType', name: 'KnowledgeBaseType')
    LambdaArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#LambdaArn', name: 'LambdaArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    LambdaFunctionFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#LambdaFunctionFlowNodeConfiguration', name: 'LambdaFunctionFlowNodeConfiguration')
    LexBotAliasArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#LexBotAliasArn', name: 'LexBotAliasArn', traits: {"smithy.api#length" => {"max" => 78}, "smithy.api#pattern" => "^arn:aws(|-us-gov):lex:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:bot-alias/[0-9a-zA-Z]+/[0-9a-zA-Z]+$"})
    LexBotLocaleId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#LexBotLocaleId', name: 'LexBotLocaleId', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    LexFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#LexFlowNodeConfiguration', name: 'LexFlowNodeConfiguration')
    ListAgentActionGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentActionGroupsRequest', name: 'ListAgentActionGroupsRequest')
    ListAgentActionGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentActionGroupsResponse', name: 'ListAgentActionGroupsResponse')
    ListAgentAliasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentAliasesRequest', name: 'ListAgentAliasesRequest')
    ListAgentAliasesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentAliasesResponse', name: 'ListAgentAliasesResponse')
    ListAgentCollaboratorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentCollaboratorsRequest', name: 'ListAgentCollaboratorsRequest')
    ListAgentCollaboratorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentCollaboratorsResponse', name: 'ListAgentCollaboratorsResponse')
    ListAgentKnowledgeBasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentKnowledgeBasesRequest', name: 'ListAgentKnowledgeBasesRequest')
    ListAgentKnowledgeBasesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentKnowledgeBasesResponse', name: 'ListAgentKnowledgeBasesResponse')
    ListAgentVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentVersionsRequest', name: 'ListAgentVersionsRequest')
    ListAgentVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentVersionsResponse', name: 'ListAgentVersionsResponse')
    ListAgentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentsRequest', name: 'ListAgentsRequest')
    ListAgentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListAgentsResponse', name: 'ListAgentsResponse')
    ListDataSourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListDataSourcesRequest', name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListDataSourcesResponse', name: 'ListDataSourcesResponse')
    ListFlowAliasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListFlowAliasesRequest', name: 'ListFlowAliasesRequest')
    ListFlowAliasesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListFlowAliasesResponse', name: 'ListFlowAliasesResponse')
    ListFlowVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListFlowVersionsRequest', name: 'ListFlowVersionsRequest')
    ListFlowVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListFlowVersionsResponse', name: 'ListFlowVersionsResponse')
    ListFlowsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListFlowsRequest', name: 'ListFlowsRequest')
    ListFlowsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListFlowsResponse', name: 'ListFlowsResponse')
    ListIngestionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListIngestionJobsRequest', name: 'ListIngestionJobsRequest')
    ListIngestionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListIngestionJobsResponse', name: 'ListIngestionJobsResponse')
    ListKnowledgeBaseDocumentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListKnowledgeBaseDocumentsRequest', name: 'ListKnowledgeBaseDocumentsRequest')
    ListKnowledgeBaseDocumentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListKnowledgeBaseDocumentsResponse', name: 'ListKnowledgeBaseDocumentsResponse')
    ListKnowledgeBasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListKnowledgeBasesRequest', name: 'ListKnowledgeBasesRequest')
    ListKnowledgeBasesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListKnowledgeBasesResponse', name: 'ListKnowledgeBasesResponse')
    ListPromptsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListPromptsRequest', name: 'ListPromptsRequest')
    ListPromptsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListPromptsResponse', name: 'ListPromptsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LoopControllerFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#LoopControllerFlowNodeConfiguration', name: 'LoopControllerFlowNodeConfiguration')
    LoopFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#LoopFlowNodeConfiguration', name: 'LoopFlowNodeConfiguration')
    LoopIncompatibleNodeTypeFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#LoopIncompatibleNodeTypeFlowValidationDetails', name: 'LoopIncompatibleNodeTypeFlowValidationDetails')
    LoopInputFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#LoopInputFlowNodeConfiguration', name: 'LoopInputFlowNodeConfiguration')
    MalformedConditionExpressionFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MalformedConditionExpressionFlowValidationDetails', name: 'MalformedConditionExpressionFlowValidationDetails')
    MalformedNodeInputExpressionFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MalformedNodeInputExpressionFlowValidationDetails', name: 'MalformedNodeInputExpressionFlowValidationDetails')
    MaxRecentSessions = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagent#MaxRecentSessions', name: 'MaxRecentSessions', traits: {"smithy.api#range" => {"min" => 1}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagent#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaximumLength = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagent#MaximumLength', name: 'MaximumLength', traits: {"smithy.api#range" => {"min" => 0}})
    MemoryConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MemoryConfiguration', name: 'MemoryConfiguration')
    MemoryType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#MemoryType', name: 'MemoryType')
    Message = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#Message', name: 'Message')
    Messages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#Messages', name: 'Messages')
    MetadataAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MetadataAttribute', name: 'MetadataAttribute')
    MetadataAttributeValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MetadataAttributeValue', name: 'MetadataAttributeValue')
    MetadataAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#MetadataAttributes', name: 'MetadataAttributes')
    MetadataConfigurationForReranking = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MetadataConfigurationForReranking', name: 'MetadataConfigurationForReranking')
    MetadataSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#MetadataSourceType', name: 'MetadataSourceType')
    MetadataValueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#MetadataValueType', name: 'MetadataValueType')
    Microsoft365TenantId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#Microsoft365TenantId', name: 'Microsoft365TenantId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    MismatchedNodeInputTypeFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MismatchedNodeInputTypeFlowValidationDetails', name: 'MismatchedNodeInputTypeFlowValidationDetails')
    MismatchedNodeOutputTypeFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MismatchedNodeOutputTypeFlowValidationDetails', name: 'MismatchedNodeOutputTypeFlowValidationDetails')
    MissingConnectionConfigurationFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MissingConnectionConfigurationFlowValidationDetails', name: 'MissingConnectionConfigurationFlowValidationDetails')
    MissingDefaultConditionFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MissingDefaultConditionFlowValidationDetails', name: 'MissingDefaultConditionFlowValidationDetails')
    MissingEndingNodesFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MissingEndingNodesFlowValidationDetails', name: 'MissingEndingNodesFlowValidationDetails')
    MissingLoopControllerNodeFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MissingLoopControllerNodeFlowValidationDetails', name: 'MissingLoopControllerNodeFlowValidationDetails')
    MissingLoopInputNodeFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MissingLoopInputNodeFlowValidationDetails', name: 'MissingLoopInputNodeFlowValidationDetails')
    MissingNodeConfigurationFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MissingNodeConfigurationFlowValidationDetails', name: 'MissingNodeConfigurationFlowValidationDetails')
    MissingNodeInputFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MissingNodeInputFlowValidationDetails', name: 'MissingNodeInputFlowValidationDetails')
    MissingNodeOutputFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MissingNodeOutputFlowValidationDetails', name: 'MissingNodeOutputFlowValidationDetails')
    MissingStartingNodesFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MissingStartingNodesFlowValidationDetails', name: 'MissingStartingNodesFlowValidationDetails')
    ModelIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#ModelIdentifier', name: 'ModelIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]{1,12})?:(bedrock|sagemaker):[a-z0-9-]{1,20}:([0-9]{12})?:([a-z-]+/)?)?([a-zA-Z0-9.-]{1,63}){0,2}(([:][a-z0-9-]{1,63}){0,2})?(/[a-z0-9]{1,12})?$"})
    MongoDbAtlasCollectionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#MongoDbAtlasCollectionName', name: 'MongoDbAtlasCollectionName', traits: {"smithy.api#length" => {"max" => 63}, "smithy.api#pattern" => "^.*$"})
    MongoDbAtlasConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MongoDbAtlasConfiguration', name: 'MongoDbAtlasConfiguration')
    MongoDbAtlasDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#MongoDbAtlasDatabaseName', name: 'MongoDbAtlasDatabaseName', traits: {"smithy.api#length" => {"max" => 63}, "smithy.api#pattern" => "^.*$"})
    MongoDbAtlasEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#MongoDbAtlasEndpoint', name: 'MongoDbAtlasEndpoint', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^.*$"})
    MongoDbAtlasEndpointServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#MongoDbAtlasEndpointServiceName', name: 'MongoDbAtlasEndpointServiceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?:arn:aws(?:-us-gov|-cn|-iso|-iso-[a-z])*:.+:.*:\\d+:.+/.+$|[a-zA-Z0-9*]+[a-zA-Z0-9._-]*)$"})
    MongoDbAtlasFieldMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MongoDbAtlasFieldMapping', name: 'MongoDbAtlasFieldMapping')
    MongoDbAtlasIndexName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#MongoDbAtlasIndexName', name: 'MongoDbAtlasIndexName', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^.*$"})
    MultipleLoopControllerNodesFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MultipleLoopControllerNodesFlowValidationDetails', name: 'MultipleLoopControllerNodesFlowValidationDetails')
    MultipleLoopInputNodesFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MultipleLoopInputNodesFlowValidationDetails', name: 'MultipleLoopInputNodesFlowValidationDetails')
    MultipleNodeInputConnectionsFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#MultipleNodeInputConnectionsFlowValidationDetails', name: 'MultipleNodeInputConnectionsFlowValidationDetails')
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#Name', name: 'Name', traits: {"smithy.api#pattern" => "^([0-9a-zA-Z][_-]?){1,100}$"})
    NaturalLanguageString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#NaturalLanguageString', name: 'NaturalLanguageString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    NeptuneAnalyticsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#NeptuneAnalyticsConfiguration', name: 'NeptuneAnalyticsConfiguration')
    NeptuneAnalyticsFieldMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#NeptuneAnalyticsFieldMapping', name: 'NeptuneAnalyticsFieldMapping')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    NonBlankString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#NonBlankString', name: 'NonBlankString', traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1}})
    NumberValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.bedrockagent#NumberValue', name: 'NumberValue', traits: {"smithy.api#sensitive" => {}})
    NumericalVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#NumericalVersion', name: 'NumericalVersion', traits: {"smithy.api#pattern" => "^[0-9]{1,5}$"})
    OpenSearchManagedClusterConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#OpenSearchManagedClusterConfiguration', name: 'OpenSearchManagedClusterConfiguration')
    OpenSearchManagedClusterDomainArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#OpenSearchManagedClusterDomainArn', name: 'OpenSearchManagedClusterDomainArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov|-iso):es:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:domain/[a-z][a-z0-9-]{3,28}$"})
    OpenSearchManagedClusterDomainEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#OpenSearchManagedClusterDomainEndpoint', name: 'OpenSearchManagedClusterDomainEndpoint', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^https://.*$"})
    OpenSearchManagedClusterFieldMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#OpenSearchManagedClusterFieldMapping', name: 'OpenSearchManagedClusterFieldMapping')
    OpenSearchManagedClusterIndexName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#OpenSearchManagedClusterIndexName', name: 'OpenSearchManagedClusterIndexName', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?![\\-_+.])[a-z0-9][a-z0-9\\-_\\.]*$", "smithy.api#sensitive" => {}})
    OpenSearchServerlessCollectionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#OpenSearchServerlessCollectionArn', name: 'OpenSearchServerlessCollectionArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws:aoss:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:collection/[a-z0-9-]{3,32}$"})
    OpenSearchServerlessConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#OpenSearchServerlessConfiguration', name: 'OpenSearchServerlessConfiguration')
    OpenSearchServerlessFieldMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#OpenSearchServerlessFieldMapping', name: 'OpenSearchServerlessFieldMapping')
    OpenSearchServerlessIndexName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#OpenSearchServerlessIndexName', name: 'OpenSearchServerlessIndexName', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^.*$"})
    OrchestrationExecutor = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#OrchestrationExecutor', name: 'OrchestrationExecutor')
    OrchestrationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#OrchestrationType', name: 'OrchestrationType')
    OutputFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#OutputFlowNodeConfiguration', name: 'OutputFlowNodeConfiguration')
    ParameterDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#ParameterDescription', name: 'ParameterDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ParameterDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ParameterDetail', name: 'ParameterDetail')
    ParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.bedrockagent#ParameterMap', name: 'ParameterMap')
    ParsingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ParsingConfiguration', name: 'ParsingConfiguration')
    ParsingModality = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#ParsingModality', name: 'ParsingModality')
    ParsingPrompt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ParsingPrompt', name: 'ParsingPrompt')
    ParsingPromptText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#ParsingPromptText', name: 'ParsingPromptText', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ParsingStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#ParsingStrategy', name: 'ParsingStrategy')
    PatternObjectFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PatternObjectFilter', name: 'PatternObjectFilter')
    PatternObjectFilterConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PatternObjectFilterConfiguration', name: 'PatternObjectFilterConfiguration')
    PatternObjectFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#PatternObjectFilterList', name: 'PatternObjectFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#sensitive" => {}})
    Payload = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#Payload', name: 'Payload', traits: {"smithy.api#sensitive" => {}})
    PerformanceConfigLatency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#PerformanceConfigLatency', name: 'PerformanceConfigLatency')
    PerformanceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PerformanceConfiguration', name: 'PerformanceConfiguration')
    PineconeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PineconeConfiguration', name: 'PineconeConfiguration')
    PineconeConnectionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PineconeConnectionString', name: 'PineconeConnectionString', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^.*$"})
    PineconeFieldMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PineconeFieldMapping', name: 'PineconeFieldMapping')
    PineconeNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PineconeNamespace', name: 'PineconeNamespace', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^.*$"})
    PrepareAgentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PrepareAgentRequest', name: 'PrepareAgentRequest')
    PrepareAgentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PrepareAgentResponse', name: 'PrepareAgentResponse')
    PrepareFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PrepareFlowRequest', name: 'PrepareFlowRequest')
    PrepareFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PrepareFlowResponse', name: 'PrepareFlowResponse')
    PromptAgentResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PromptAgentResource', name: 'PromptAgentResource', traits: {"smithy.api#sensitive" => {}})
    PromptArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PromptArn', name: 'PromptArn', traits: {"smithy.api#pattern" => "^(arn:aws:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:prompt/[0-9a-zA-Z]{10}(?::[0-9]{1,5})?)$"})
    PromptConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PromptConfiguration', name: 'PromptConfiguration')
    PromptConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#PromptConfigurations', name: 'PromptConfigurations', traits: {"smithy.api#length" => {"max" => 10}})
    PromptDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PromptDescription', name: 'PromptDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    PromptFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PromptFlowNodeConfiguration', name: 'PromptFlowNodeConfiguration')
    PromptFlowNodeInlineConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PromptFlowNodeInlineConfiguration', name: 'PromptFlowNodeInlineConfiguration')
    PromptFlowNodeResourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PromptFlowNodeResourceConfiguration', name: 'PromptFlowNodeResourceConfiguration')
    PromptFlowNodeSourceConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#PromptFlowNodeSourceConfiguration', name: 'PromptFlowNodeSourceConfiguration')
    PromptGenAiResource = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#PromptGenAiResource', name: 'PromptGenAiResource', traits: {"smithy.api#sensitive" => {}})
    PromptId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PromptId', name: 'PromptId', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z]{10}$"})
    PromptIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PromptIdentifier', name: 'PromptIdentifier', traits: {"smithy.api#pattern" => "^([0-9a-zA-Z]{10})|(arn:aws:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:prompt/[0-9a-zA-Z]{10})(?::[0-9]{1,5})?$"})
    PromptInferenceConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#PromptInferenceConfiguration', name: 'PromptInferenceConfiguration')
    PromptInputVariable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PromptInputVariable', name: 'PromptInputVariable')
    PromptInputVariableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PromptInputVariableName', name: 'PromptInputVariableName', traits: {"smithy.api#pattern" => "^([0-9a-zA-Z][_-]?){1,100}$"})
    PromptInputVariablesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#PromptInputVariablesList', name: 'PromptInputVariablesList', traits: {"smithy.api#length" => {"max" => 20}, "smithy.api#sensitive" => {}})
    PromptMetadataEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PromptMetadataEntry', name: 'PromptMetadataEntry', traits: {"smithy.api#sensitive" => {}})
    PromptMetadataKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PromptMetadataKey', name: 'PromptMetadataKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$", "smithy.api#sensitive" => {}})
    PromptMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#PromptMetadataList', name: 'PromptMetadataList', traits: {"smithy.api#length" => {"max" => 50}, "smithy.api#sensitive" => {}})
    PromptMetadataValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PromptMetadataValue', name: 'PromptMetadataValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$", "smithy.api#sensitive" => {}})
    PromptModelIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PromptModelIdentifier', name: 'PromptModelIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]{1,12})?:(bedrock|sagemaker):[a-z0-9-]{1,20}:([0-9]{12})?:([a-z-]+/)?)?([a-zA-Z0-9.-]{1,63}){0,2}(([:][a-z0-9-]{1,63}){0,2})?(/[a-z0-9]{1,12})?$"})
    PromptModelInferenceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PromptModelInferenceConfiguration', name: 'PromptModelInferenceConfiguration')
    PromptName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PromptName', name: 'PromptName', traits: {"smithy.api#pattern" => "^([0-9a-zA-Z][_-]?){1,100}$"})
    PromptOverrideConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PromptOverrideConfiguration', name: 'PromptOverrideConfiguration', traits: {"smithy.api#sensitive" => {}})
    PromptState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#PromptState', name: 'PromptState')
    PromptSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#PromptSummaries', name: 'PromptSummaries', traits: {"smithy.api#length" => {"max" => 10}})
    PromptSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PromptSummary', name: 'PromptSummary')
    PromptTemplateConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#PromptTemplateConfiguration', name: 'PromptTemplateConfiguration')
    PromptTemplateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#PromptTemplateType', name: 'PromptTemplateType')
    PromptType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#PromptType', name: 'PromptType')
    PromptVariant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#PromptVariant', name: 'PromptVariant', traits: {"smithy.api#sensitive" => {}})
    PromptVariantList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#PromptVariantList', name: 'PromptVariantList', traits: {"smithy.api#length" => {"max" => 1}, "smithy.api#sensitive" => {}})
    PromptVariantName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#PromptVariantName', name: 'PromptVariantName', traits: {"smithy.api#pattern" => "^([0-9a-zA-Z][_-]?){1,100}$"})
    ProvisionedModelIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#ProvisionedModelIdentifier', name: 'ProvisionedModelIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^((([0-9a-zA-Z][_-]?){1,63})|(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:provisioned-model/[a-z0-9]{12}))$"})
    QueryEngineType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#QueryEngineType', name: 'QueryEngineType')
    QueryExecutionTimeoutSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagent#QueryExecutionTimeoutSeconds', name: 'QueryExecutionTimeoutSeconds', traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    QueryGenerationColumn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#QueryGenerationColumn', name: 'QueryGenerationColumn')
    QueryGenerationColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#QueryGenerationColumnName', name: 'QueryGenerationColumnName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}})
    QueryGenerationColumns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#QueryGenerationColumns', name: 'QueryGenerationColumns')
    QueryGenerationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#QueryGenerationConfiguration', name: 'QueryGenerationConfiguration')
    QueryGenerationContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#QueryGenerationContext', name: 'QueryGenerationContext', traits: {"smithy.api#sensitive" => {}})
    QueryGenerationTable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#QueryGenerationTable', name: 'QueryGenerationTable')
    QueryGenerationTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#QueryGenerationTableName', name: 'QueryGenerationTableName', traits: {"smithy.api#pattern" => "^.*\\..*\\..*$"})
    QueryGenerationTables = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#QueryGenerationTables', name: 'QueryGenerationTables', traits: {"smithy.api#length" => {"max" => 50}})
    RdsArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#RdsArn', name: 'RdsArn', traits: {"smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):rds:[a-zA-Z0-9-]*:[0-9]{12}:cluster:[a-zA-Z0-9-]{1,63}$"})
    RdsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RdsConfiguration', name: 'RdsConfiguration')
    RdsDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#RdsDatabaseName', name: 'RdsDatabaseName', traits: {"smithy.api#length" => {"max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-]+$"})
    RdsFieldMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RdsFieldMapping', name: 'RdsFieldMapping')
    RdsTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#RdsTableName', name: 'RdsTableName', traits: {"smithy.api#length" => {"max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.\\-]+$"})
    RecommendedAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#RecommendedAction', name: 'RecommendedAction', traits: {"smithy.api#length" => {"max" => 2048}})
    RecommendedActions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#RecommendedActions', name: 'RecommendedActions', traits: {"smithy.api#length" => {"max" => 2048}})
    RedisEnterpriseCloudConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RedisEnterpriseCloudConfiguration', name: 'RedisEnterpriseCloudConfiguration')
    RedisEnterpriseCloudEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#RedisEnterpriseCloudEndpoint', name: 'RedisEnterpriseCloudEndpoint', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^.*$"})
    RedisEnterpriseCloudFieldMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RedisEnterpriseCloudFieldMapping', name: 'RedisEnterpriseCloudFieldMapping')
    RedisEnterpriseCloudIndexName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#RedisEnterpriseCloudIndexName', name: 'RedisEnterpriseCloudIndexName', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^.*$"})
    RedshiftClusterIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#RedshiftClusterIdentifier', name: 'RedshiftClusterIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    RedshiftConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RedshiftConfiguration', name: 'RedshiftConfiguration')
    RedshiftDatabase = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#RedshiftDatabase', name: 'RedshiftDatabase', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    RedshiftProvisionedAuthConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RedshiftProvisionedAuthConfiguration', name: 'RedshiftProvisionedAuthConfiguration')
    RedshiftProvisionedAuthType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#RedshiftProvisionedAuthType', name: 'RedshiftProvisionedAuthType')
    RedshiftProvisionedConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RedshiftProvisionedConfiguration', name: 'RedshiftProvisionedConfiguration')
    RedshiftQueryEngineAwsDataCatalogStorageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RedshiftQueryEngineAwsDataCatalogStorageConfiguration', name: 'RedshiftQueryEngineAwsDataCatalogStorageConfiguration')
    RedshiftQueryEngineConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RedshiftQueryEngineConfiguration', name: 'RedshiftQueryEngineConfiguration')
    RedshiftQueryEngineRedshiftStorageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RedshiftQueryEngineRedshiftStorageConfiguration', name: 'RedshiftQueryEngineRedshiftStorageConfiguration')
    RedshiftQueryEngineStorageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RedshiftQueryEngineStorageConfiguration', name: 'RedshiftQueryEngineStorageConfiguration')
    RedshiftQueryEngineStorageConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#RedshiftQueryEngineStorageConfigurations', name: 'RedshiftQueryEngineStorageConfigurations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RedshiftQueryEngineStorageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#RedshiftQueryEngineStorageType', name: 'RedshiftQueryEngineStorageType')
    RedshiftQueryEngineType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#RedshiftQueryEngineType', name: 'RedshiftQueryEngineType')
    RedshiftServerlessAuthConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RedshiftServerlessAuthConfiguration', name: 'RedshiftServerlessAuthConfiguration')
    RedshiftServerlessAuthType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#RedshiftServerlessAuthType', name: 'RedshiftServerlessAuthType')
    RedshiftServerlessConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RedshiftServerlessConfiguration', name: 'RedshiftServerlessConfiguration')
    RelayConversationHistory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#RelayConversationHistory', name: 'RelayConversationHistory')
    RequireConfirmation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#RequireConfirmation', name: 'RequireConfirmation')
    RerankingMetadataSelectionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#RerankingMetadataSelectionMode', name: 'RerankingMetadataSelectionMode')
    RerankingMetadataSelectiveModeConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#RerankingMetadataSelectiveModeConfiguration', name: 'RerankingMetadataSelectiveModeConfiguration')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetrievalFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RetrievalFlowNodeConfiguration', name: 'RetrievalFlowNodeConfiguration')
    RetrievalFlowNodeS3Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#RetrievalFlowNodeS3Configuration', name: 'RetrievalFlowNodeS3Configuration')
    RetrievalFlowNodeServiceConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#RetrievalFlowNodeServiceConfiguration', name: 'RetrievalFlowNodeServiceConfiguration')
    S3BucketArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#S3BucketArn', name: 'S3BucketArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):s3:::[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$"})
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3BucketUri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#S3BucketUri', name: 'S3BucketUri', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^s3://.{1,128}$"})
    S3Content = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#S3Content', name: 'S3Content')
    S3DataSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#S3DataSourceConfiguration', name: 'S3DataSourceConfiguration')
    S3Identifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#S3Identifier', name: 'S3Identifier')
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#S3Location', name: 'S3Location')
    S3ObjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#S3ObjectKey', name: 'S3ObjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\.\\-\\!\\*\\_\\'\\(\\)a-zA-Z0-9][\\.\\-\\!\\*\\_\\'\\(\\)\\/a-zA-Z0-9]*$"})
    S3ObjectUri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#S3ObjectUri', name: 'S3ObjectUri', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]/.{1,1024}$"})
    S3Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#S3Prefix', name: 'S3Prefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#sensitive" => {}})
    S3Prefixes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#S3Prefixes', name: 'S3Prefixes', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    S3VectorsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#S3VectorsConfiguration', name: 'S3VectorsConfiguration')
    SalesforceAuthType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#SalesforceAuthType', name: 'SalesforceAuthType')
    SalesforceCrawlerConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SalesforceCrawlerConfiguration', name: 'SalesforceCrawlerConfiguration')
    SalesforceDataSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SalesforceDataSourceConfiguration', name: 'SalesforceDataSourceConfiguration')
    SalesforceSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SalesforceSourceConfiguration', name: 'SalesforceSourceConfiguration')
    SecretArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#SecretArn', name: 'SecretArn', traits: {"smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$"})
    SeedUrl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SeedUrl', name: 'SeedUrl')
    SeedUrls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#SeedUrls', name: 'SeedUrls', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SemanticChunkingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SemanticChunkingConfiguration', name: 'SemanticChunkingConfiguration')
    ServerSideEncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ServerSideEncryptionConfiguration', name: 'ServerSideEncryptionConfiguration')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionSummaryConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SessionSummaryConfiguration', name: 'SessionSummaryConfiguration')
    SessionTTL = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagent#SessionTTL', name: 'SessionTTL', traits: {"smithy.api#range" => {"min" => 60, "max" => 5400}})
    SharePointAuthType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#SharePointAuthType', name: 'SharePointAuthType')
    SharePointCrawlerConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SharePointCrawlerConfiguration', name: 'SharePointCrawlerConfiguration')
    SharePointDataSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SharePointDataSourceConfiguration', name: 'SharePointDataSourceConfiguration')
    SharePointDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#SharePointDomain', name: 'SharePointDomain', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    SharePointHostType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#SharePointHostType', name: 'SharePointHostType')
    SharePointSiteUrls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#SharePointSiteUrls', name: 'SharePointSiteUrls', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SharePointSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SharePointSourceConfiguration', name: 'SharePointSourceConfiguration')
    SortOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#SortOrder', name: 'SortOrder')
    SpecificToolChoice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SpecificToolChoice', name: 'SpecificToolChoice')
    SqlKnowledgeBaseConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SqlKnowledgeBaseConfiguration', name: 'SqlKnowledgeBaseConfiguration')
    SqlString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#SqlString', name: 'SqlString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    StartIngestionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#StartIngestionJobRequest', name: 'StartIngestionJobRequest')
    StartIngestionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#StartIngestionJobResponse', name: 'StartIngestionJobResponse')
    StepType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#StepType', name: 'StepType')
    StopIngestionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#StopIngestionJobRequest', name: 'StopIngestionJobRequest')
    StopIngestionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#StopIngestionJobResponse', name: 'StopIngestionJobResponse')
    StopSequences = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#StopSequences', name: 'StopSequences', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    StorageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#StorageConfiguration', name: 'StorageConfiguration')
    StorageDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagent#StorageDays', name: 'StorageDays', traits: {"smithy.api#default" => 30, "smithy.api#range" => {"min" => 0, "max" => 365}})
    StorageFlowNodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#StorageFlowNodeConfiguration', name: 'StorageFlowNodeConfiguration')
    StorageFlowNodeS3Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#StorageFlowNodeS3Configuration', name: 'StorageFlowNodeS3Configuration')
    StorageFlowNodeServiceConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#StorageFlowNodeServiceConfiguration', name: 'StorageFlowNodeServiceConfiguration')
    StringListValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#StringListValue', name: 'StringListValue')
    StringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#StringValue', name: 'StringValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    SupplementalDataStorageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SupplementalDataStorageConfiguration', name: 'SupplementalDataStorageConfiguration')
    SupplementalDataStorageLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#SupplementalDataStorageLocation', name: 'SupplementalDataStorageLocation')
    SupplementalDataStorageLocationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#SupplementalDataStorageLocationType', name: 'SupplementalDataStorageLocationType')
    SupplementalDataStorageLocations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#SupplementalDataStorageLocations', name: 'SupplementalDataStorageLocations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SupportedLanguages = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#SupportedLanguages', name: 'SupportedLanguages')
    SystemContentBlock = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#SystemContentBlock', name: 'SystemContentBlock', traits: {"smithy.api#sensitive" => {}})
    SystemContentBlocks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#SystemContentBlocks', name: 'SystemContentBlocks')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TaggableResourcesArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#TaggableResourcesArn', name: 'TaggableResourcesArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "(^arn:aws:bedrock:[a-zA-Z0-9-]+:/d{12}:(agent|agent-alias|knowledge-base|flow|prompt)/[A-Z0-9]{10}(?:/[A-Z0-9]{10})?$|^arn:aws:bedrock:[a-zA-Z0-9-]+:/d{12}:flow/([A-Z0-9]{10})/alias/([A-Z0-9]{10})$|^arn:aws:bedrock:[a-zA-Z0-9-]+:/d{12}:prompt/([A-Z0-9]{10})?(?::/d+)?$)"})
    TagsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.bedrockagent#TagsMap', name: 'TagsMap')
    Temperature = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.bedrockagent#Temperature', name: 'Temperature', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    TextContentDoc = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#TextContentDoc', name: 'TextContentDoc')
    TextPrompt = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#TextPrompt', name: 'TextPrompt', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    TextPromptTemplateConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#TextPromptTemplateConfiguration', name: 'TextPromptTemplateConfiguration', traits: {"smithy.api#sensitive" => {}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Tool = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#Tool', name: 'Tool')
    ToolChoice = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#ToolChoice', name: 'ToolChoice', traits: {"smithy.api#sensitive" => {}})
    ToolConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ToolConfiguration', name: 'ToolConfiguration')
    ToolInputSchema = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagent#ToolInputSchema', name: 'ToolInputSchema')
    ToolName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#ToolName', name: 'ToolName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    ToolSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ToolSpecification', name: 'ToolSpecification')
    Tools = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#Tools', name: 'Tools', traits: {"smithy.api#sensitive" => {}})
    TopK = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagent#TopK', name: 'TopK', traits: {"smithy.api#range" => {"min" => 0, "max" => 500}})
    TopP = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.bedrockagent#TopP', name: 'TopP', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    Transformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#Transformation', name: 'Transformation')
    TransformationFunction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#TransformationFunction', name: 'TransformationFunction')
    TransformationLambdaConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#TransformationLambdaConfiguration', name: 'TransformationLambdaConfiguration')
    Transformations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#Transformations', name: 'Transformations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Type = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#Type', name: 'Type')
    UnfulfilledNodeInputFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UnfulfilledNodeInputFlowValidationDetails', name: 'UnfulfilledNodeInputFlowValidationDetails')
    UnknownConnectionConditionFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UnknownConnectionConditionFlowValidationDetails', name: 'UnknownConnectionConditionFlowValidationDetails')
    UnknownConnectionSourceFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UnknownConnectionSourceFlowValidationDetails', name: 'UnknownConnectionSourceFlowValidationDetails')
    UnknownConnectionSourceOutputFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UnknownConnectionSourceOutputFlowValidationDetails', name: 'UnknownConnectionSourceOutputFlowValidationDetails')
    UnknownConnectionTargetFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UnknownConnectionTargetFlowValidationDetails', name: 'UnknownConnectionTargetFlowValidationDetails')
    UnknownConnectionTargetInputFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UnknownConnectionTargetInputFlowValidationDetails', name: 'UnknownConnectionTargetInputFlowValidationDetails')
    UnknownNodeInputFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UnknownNodeInputFlowValidationDetails', name: 'UnknownNodeInputFlowValidationDetails')
    UnknownNodeOutputFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UnknownNodeOutputFlowValidationDetails', name: 'UnknownNodeOutputFlowValidationDetails')
    UnreachableNodeFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UnreachableNodeFlowValidationDetails', name: 'UnreachableNodeFlowValidationDetails')
    UnsatisfiedConnectionConditionsFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UnsatisfiedConnectionConditionsFlowValidationDetails', name: 'UnsatisfiedConnectionConditionsFlowValidationDetails')
    UnspecifiedFlowValidationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UnspecifiedFlowValidationDetails', name: 'UnspecifiedFlowValidationDetails')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAgentActionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateAgentActionGroupRequest', name: 'UpdateAgentActionGroupRequest')
    UpdateAgentActionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateAgentActionGroupResponse', name: 'UpdateAgentActionGroupResponse')
    UpdateAgentAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateAgentAliasRequest', name: 'UpdateAgentAliasRequest')
    UpdateAgentAliasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateAgentAliasResponse', name: 'UpdateAgentAliasResponse')
    UpdateAgentCollaboratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateAgentCollaboratorRequest', name: 'UpdateAgentCollaboratorRequest')
    UpdateAgentCollaboratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateAgentCollaboratorResponse', name: 'UpdateAgentCollaboratorResponse')
    UpdateAgentKnowledgeBaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateAgentKnowledgeBaseRequest', name: 'UpdateAgentKnowledgeBaseRequest')
    UpdateAgentKnowledgeBaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateAgentKnowledgeBaseResponse', name: 'UpdateAgentKnowledgeBaseResponse')
    UpdateAgentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateAgentRequest', name: 'UpdateAgentRequest')
    UpdateAgentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateAgentResponse', name: 'UpdateAgentResponse')
    UpdateDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateDataSourceRequest', name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateDataSourceResponse', name: 'UpdateDataSourceResponse')
    UpdateFlowAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateFlowAliasRequest', name: 'UpdateFlowAliasRequest')
    UpdateFlowAliasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateFlowAliasResponse', name: 'UpdateFlowAliasResponse')
    UpdateFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateFlowRequest', name: 'UpdateFlowRequest')
    UpdateFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateFlowResponse', name: 'UpdateFlowResponse')
    UpdateKnowledgeBaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateKnowledgeBaseRequest', name: 'UpdateKnowledgeBaseRequest')
    UpdateKnowledgeBaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdateKnowledgeBaseResponse', name: 'UpdateKnowledgeBaseResponse')
    UpdatePromptRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdatePromptRequest', name: 'UpdatePromptRequest')
    UpdatePromptResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UpdatePromptResponse', name: 'UpdatePromptResponse')
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#Url', name: 'Url', traits: {"smithy.api#pattern" => "^https?://[A-Za-z0-9][^\\s]*$"})
    UrlConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#UrlConfiguration', name: 'UrlConfiguration')
    UserAgent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#UserAgent', name: 'UserAgent', traits: {"smithy.api#length" => {"min" => 15, "max" => 40}, "smithy.api#sensitive" => {}})
    UserAgentHeader = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#UserAgentHeader', name: 'UserAgentHeader', traits: {"smithy.api#length" => {"min" => 61, "max" => 86}, "smithy.api#sensitive" => {}})
    ValidateFlowDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ValidateFlowDefinitionRequest', name: 'ValidateFlowDefinitionRequest')
    ValidateFlowDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ValidateFlowDefinitionResponse', name: 'ValidateFlowDefinitionResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagent#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    VectorBucketArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#VectorBucketArn', name: 'VectorBucketArn', traits: {"aws.api#arnReference" => {}, "smithy.api#sensitive" => {}})
    VectorIngestionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#VectorIngestionConfiguration', name: 'VectorIngestionConfiguration')
    VectorKnowledgeBaseConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#VectorKnowledgeBaseConfiguration', name: 'VectorKnowledgeBaseConfiguration')
    VectorSearchBedrockRerankingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#VectorSearchBedrockRerankingConfiguration', name: 'VectorSearchBedrockRerankingConfiguration')
    VectorSearchBedrockRerankingModelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#VectorSearchBedrockRerankingModelConfiguration', name: 'VectorSearchBedrockRerankingModelConfiguration')
    VectorSearchRerankingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#VectorSearchRerankingConfiguration', name: 'VectorSearchRerankingConfiguration')
    VectorSearchRerankingConfigurationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#VectorSearchRerankingConfigurationType', name: 'VectorSearchRerankingConfigurationType')
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^(DRAFT|[0-9]{0,4}[1-9][0-9]{0,4})$"})
    WebCrawlerConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#WebCrawlerConfiguration', name: 'WebCrawlerConfiguration')
    WebCrawlerLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#WebCrawlerLimits', name: 'WebCrawlerLimits')
    WebDataSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#WebDataSourceConfiguration', name: 'WebDataSourceConfiguration')
    WebScopeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagent#WebScopeType', name: 'WebScopeType')
    WebSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagent#WebSourceConfiguration', name: 'WebSourceConfiguration')
    WorkgroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagent#WorkgroupArn', name: 'WorkgroupArn', traits: {"smithy.api#pattern" => "^(arn:(aws(-[a-z]+)*):redshift-serverless:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:workgroup/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})$"})

    APISchema.add_member(:s3, Types::APISchema::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Identifier, location_name: 's3', traits: {"smithy.api#documentation" => "<p>Contains details about the S3 object containing the OpenAPI schema for the action group. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html\">Action group OpenAPI schemas</a>.</p>"}))
    APISchema.add_member(:payload, Types::APISchema::Payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The JSON or YAML-formatted payload defining the OpenAPI schema for the action group. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html\">Action group OpenAPI schemas</a>.</p>"}))
    APISchema.add_member(:unknown, Types::APISchema::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    APISchema.type = Types::APISchema
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionGroupExecutor.add_member(:lambda, Types::ActionGroupExecutor::Lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: 'lambda', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action.</p>"}))
    ActionGroupExecutor.add_member(:custom_control, Types::ActionGroupExecutor::CustomControl, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomControlMethod, location_name: 'customControl', traits: {"smithy.api#documentation" => "<p>To return the action group invocation results directly in the <code>InvokeAgent</code> response, specify <code>RETURN_CONTROL</code>.</p>"}))
    ActionGroupExecutor.add_member(:unknown, Types::ActionGroupExecutor::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ActionGroupExecutor.type = Types::ActionGroupExecutor
    ActionGroupSignature.add_member(:amazon_userinput, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_USERINPUT', traits: {"smithy.api#enumValue" => "AMAZON.UserInput"}))
    ActionGroupSignature.add_member(:amazon_codeinterpreter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_CODEINTERPRETER', traits: {"smithy.api#enumValue" => "AMAZON.CodeInterpreter"}))
    ActionGroupSignature.add_member(:anthropic_computer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANTHROPIC_COMPUTER', traits: {"smithy.api#enumValue" => "ANTHROPIC.Computer"}))
    ActionGroupSignature.add_member(:anthropic_bash, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANTHROPIC_BASH', traits: {"smithy.api#enumValue" => "ANTHROPIC.Bash"}))
    ActionGroupSignature.add_member(:anthropic_texteditor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANTHROPIC_TEXTEDITOR', traits: {"smithy.api#enumValue" => "ANTHROPIC.TextEditor"}))
    ActionGroupSignatureParams.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"max" => 100}})
    ActionGroupSignatureParams.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"max" => 100}})
    ActionGroupState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ActionGroupState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ActionGroupSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupSummary)
    ActionGroupSummary.add_member(:action_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'actionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the action group.</p>", "smithy.api#required" => {}}))
    ActionGroupSummary.add_member(:action_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'actionGroupName', traits: {"smithy.api#documentation" => "<p>The name of the action group.</p>", "smithy.api#required" => {}}))
    ActionGroupSummary.add_member(:action_group_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupState, location_name: 'actionGroupState', traits: {"smithy.api#documentation" => "<p>Specifies whether the action group is available for the agent to invoke or not when sending an <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html\">InvokeAgent</a> request.</p>", "smithy.api#required" => {}}))
    ActionGroupSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the action group.</p>"}))
    ActionGroupSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the action group was last updated.</p>", "smithy.api#required" => {}}))
    ActionGroupSummary.type = Types::ActionGroupSummary
    AdditionalModelRequestFields.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalModelRequestFieldsKey)
    AdditionalModelRequestFields.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalModelRequestFieldsValue)
    Agent.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent.</p>", "smithy.api#required" => {}}))
    Agent.add_member(:agent_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'agentName', traits: {"smithy.api#documentation" => "<p>The name of the agent.</p>", "smithy.api#required" => {}}))
    Agent.add_member(:agent_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArn, location_name: 'agentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the agent.</p>", "smithy.api#required" => {}}))
    Agent.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent.</p>", "smithy.api#required" => {}}))
    Agent.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>"}))
    Agent.add_member(:instruction, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'instruction', traits: {"smithy.api#documentation" => "<p>Instructions that tell the agent what it should do and how it should interact with users.</p>"}))
    Agent.add_member(:agent_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'agentStatus', traits: {"smithy.api#documentation" => "<p>The status of the agent and whether it is ready for use. The following statuses are possible:</p> <ul> <li> <p>CREATING – The agent is being created.</p> </li> <li> <p>PREPARING – The agent is being prepared.</p> </li> <li> <p>PREPARED – The agent is prepared and ready to be invoked.</p> </li> <li> <p>NOT_PREPARED – The agent has been created but not yet prepared.</p> </li> <li> <p>FAILED – The agent API operation failed.</p> </li> <li> <p>UPDATING – The agent is being updated.</p> </li> <li> <p>DELETING – The agent is being deleted.</p> </li> </ul>", "smithy.api#required" => {}}))
    Agent.add_member(:foundation_model, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'foundationModel', traits: {"smithy.api#documentation" => "<p>The foundation model used for orchestration by the agent.</p>"}))
    Agent.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the agent.</p>"}))
    Agent.add_member(:orchestration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OrchestrationType, location_name: 'orchestrationType', traits: {"smithy.api#documentation" => "<p> Specifies the orchestration strategy for the agent. </p>"}))
    Agent.add_member(:custom_orchestration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrchestration, location_name: 'customOrchestration', traits: {"smithy.api#documentation" => "<p> Contains custom orchestration configurations for the agent. </p>"}))
    Agent.add_member(:idle_session_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: 'idleSessionTTLInSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent.</p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.</p>", "smithy.api#required" => {}}))
    Agent.add_member(:agent_resource_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRoleArn, location_name: 'agentResourceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the agent.</p>", "smithy.api#required" => {}}))
    Agent.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key that encrypts the agent.</p>"}))
    Agent.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the agent was created.</p>", "smithy.api#required" => {}}))
    Agent.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the agent was last updated.</p>", "smithy.api#required" => {}}))
    Agent.add_member(:prepared_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'preparedAt', traits: {"smithy.api#documentation" => "<p>The time at which the agent was last prepared.</p>"}))
    Agent.add_member(:failure_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReasons, location_name: 'failureReasons', traits: {"smithy.api#documentation" => "<p>Contains reasons that the agent-related API that you invoked failed.</p>"}))
    Agent.add_member(:recommended_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActions, location_name: 'recommendedActions', traits: {"smithy.api#documentation" => "<p>Contains recommended actions to take for the agent-related API that you invoked to succeed.</p>"}))
    Agent.add_member(:prompt_override_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: 'promptOverrideConfiguration', traits: {"smithy.api#documentation" => "<p>Contains configurations to override prompt templates in different parts of an agent sequence. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html\">Advanced prompts</a>.</p>"}))
    Agent.add_member(:guardrail_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: 'guardrailConfiguration', traits: {"smithy.api#documentation" => "<p>Details about the guardrail associated with the agent.</p>"}))
    Agent.add_member(:memory_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryConfiguration, location_name: 'memoryConfiguration', traits: {"smithy.api#documentation" => "<p>Contains memory configuration for the agent.</p>"}))
    Agent.add_member(:agent_collaboration, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentCollaboration, location_name: 'agentCollaboration', traits: {"smithy.api#documentation" => "<p>The agent's collaboration settings.</p>"}))
    Agent.type = Types::Agent
    AgentActionGroup.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent to which the action group belongs.</p>", "smithy.api#required" => {}}))
    AgentActionGroup.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent to which the action group belongs.</p>", "smithy.api#required" => {}}))
    AgentActionGroup.add_member(:action_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'actionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the action group.</p>", "smithy.api#required" => {}}))
    AgentActionGroup.add_member(:action_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'actionGroupName', traits: {"smithy.api#documentation" => "<p>The name of the action group.</p>", "smithy.api#required" => {}}))
    AgentActionGroup.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>"}))
    AgentActionGroup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the action group.</p>"}))
    AgentActionGroup.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the action group was created.</p>", "smithy.api#required" => {}}))
    AgentActionGroup.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the action group was last updated.</p>", "smithy.api#required" => {}}))
    AgentActionGroup.add_member(:parent_action_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupSignature, location_name: 'parentActionSignature', traits: {"smithy.api#documentation" => "<p>If this field is set as <code>AMAZON.UserInput</code>, the agent can request the user for additional information when trying to complete a task. The <code>description</code>, <code>apiSchema</code>, and <code>actionGroupExecutor</code> fields must be blank for this action group.</p> <p>During orchestration, if the agent determines that it needs to invoke an API in an action group, but doesn't have enough information to complete the API request, it will invoke this action group instead and return an <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html\">Observation</a> reprompting the user for more information.</p>"}))
    AgentActionGroup.add_member(:parent_action_group_signature_params, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupSignatureParams, location_name: 'parentActionGroupSignatureParams', traits: {"smithy.api#documentation" => "<p>The configuration settings for a computer use action.</p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html\">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important>"}))
    AgentActionGroup.add_member(:action_group_executor, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupExecutor, location_name: 'actionGroupExecutor', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action or the custom control method for handling the information elicited from the user.</p>"}))
    AgentActionGroup.add_member(:api_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: APISchema, location_name: 'apiSchema', traits: {"smithy.api#documentation" => "<p>Contains either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html\">Action group OpenAPI schemas</a>.</p>"}))
    AgentActionGroup.add_member(:function_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSchema, location_name: 'functionSchema', traits: {"smithy.api#documentation" => "<p>Defines functions that each define parameters that the agent needs to invoke from the user. Each function represents an action in an action group.</p>"}))
    AgentActionGroup.add_member(:action_group_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupState, location_name: 'actionGroupState', traits: {"smithy.api#documentation" => "<p>Specifies whether the action group is available for the agent to invoke or not when sending an <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html\">InvokeAgent</a> request.</p>", "smithy.api#required" => {}}))
    AgentActionGroup.type = Types::AgentActionGroup
    AgentAlias.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent.</p>", "smithy.api#required" => {}}))
    AgentAlias.add_member(:agent_alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasId, location_name: 'agentAliasId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias of the agent.</p>", "smithy.api#required" => {}}))
    AgentAlias.add_member(:agent_alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'agentAliasName', traits: {"smithy.api#documentation" => "<p>The name of the alias of the agent.</p>", "smithy.api#required" => {}}))
    AgentAlias.add_member(:agent_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasArn, location_name: 'agentAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the alias of the agent.</p>", "smithy.api#required" => {}}))
    AgentAlias.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>"}))
    AgentAlias.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the alias of the agent.</p>"}))
    AgentAlias.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the routing configuration of the alias.</p>", "smithy.api#required" => {}}))
    AgentAlias.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the alias of the agent was created.</p>", "smithy.api#required" => {}}))
    AgentAlias.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the alias was last updated.</p>", "smithy.api#required" => {}}))
    AgentAlias.add_member(:agent_alias_history_events, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasHistoryEvents, location_name: 'agentAliasHistoryEvents', traits: {"smithy.api#documentation" => "<p>Contains details about the history of the alias.</p>"}))
    AgentAlias.add_member(:agent_alias_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasStatus, location_name: 'agentAliasStatus', traits: {"smithy.api#documentation" => "<p>The status of the alias of the agent and whether it is ready for use. The following statuses are possible:</p> <ul> <li> <p>CREATING – The agent alias is being created.</p> </li> <li> <p>PREPARED – The agent alias is finished being created or updated and is ready to be invoked.</p> </li> <li> <p>FAILED – The agent alias API operation failed.</p> </li> <li> <p>UPDATING – The agent alias is being updated.</p> </li> <li> <p>DELETING – The agent alias is being deleted.</p> </li> <li> <p>DISSOCIATED - The agent alias has no version associated with it.</p> </li> </ul>", "smithy.api#required" => {}}))
    AgentAlias.add_member(:failure_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReasons, location_name: 'failureReasons', traits: {"smithy.api#documentation" => "<p>Information on the failure of Provisioned Throughput assigned to an agent alias.</p>"}))
    AgentAlias.add_member(:alias_invocation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasInvocationState, location_name: 'aliasInvocationState', traits: {"smithy.api#documentation" => "<p>The invocation state for the agent alias. If the agent alias is running, the value is <code>ACCEPT_INVOCATIONS</code>. If the agent alias is paused, the value is <code>REJECT_INVOCATIONS</code>. Use the <code>UpdateAgentAlias</code> operation to change the invocation state.</p>"}))
    AgentAlias.type = Types::AgentAlias
    AgentAliasHistoryEvent.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the version of the agent with which the alias is associated.</p>"}))
    AgentAliasHistoryEvent.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'endDate', traits: {"smithy.api#documentation" => "<p>The date that the alias stopped being associated to the version in the <code>routingConfiguration</code> object</p>"}))
    AgentAliasHistoryEvent.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The date that the alias began being associated to the version in the <code>routingConfiguration</code> object.</p>"}))
    AgentAliasHistoryEvent.type = Types::AgentAliasHistoryEvent
    AgentAliasHistoryEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasHistoryEvent)
    AgentAliasRoutingConfiguration.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasRoutingConfigurationListItem)
    AgentAliasRoutingConfigurationListItem.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent with which the alias is associated.</p>"}))
    AgentAliasRoutingConfigurationListItem.add_member(:provisioned_throughput, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelIdentifier, location_name: 'provisionedThroughput', traits: {"smithy.api#documentation" => "<p>Information on the Provisioned Throughput assigned to an agent alias.</p>"}))
    AgentAliasRoutingConfigurationListItem.type = Types::AgentAliasRoutingConfigurationListItem
    AgentAliasStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    AgentAliasStatus.add_member(:prepared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARED', traits: {"smithy.api#enumValue" => "PREPARED"}))
    AgentAliasStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AgentAliasStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    AgentAliasStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    AgentAliasStatus.add_member(:dissociated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISSOCIATED', traits: {"smithy.api#enumValue" => "DISSOCIATED"}))
    AgentAliasSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasSummary)
    AgentAliasSummary.add_member(:agent_alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasId, location_name: 'agentAliasId', traits: {"smithy.api#documentation" => "<p>Contains details about </p>", "smithy.api#required" => {}}))
    AgentAliasSummary.add_member(:agent_alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'agentAliasName', traits: {"smithy.api#documentation" => "<p>The name of the alias.</p>", "smithy.api#required" => {}}))
    AgentAliasSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the alias.</p>"}))
    AgentAliasSummary.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the version of the agent with which the alias is associated.</p>"}))
    AgentAliasSummary.add_member(:agent_alias_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasStatus, location_name: 'agentAliasStatus', traits: {"smithy.api#documentation" => "<p>The status of the alias.</p>", "smithy.api#required" => {}}))
    AgentAliasSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the alias of the agent was created.</p>", "smithy.api#required" => {}}))
    AgentAliasSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the alias was last updated.</p>", "smithy.api#required" => {}}))
    AgentAliasSummary.add_member(:alias_invocation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasInvocationState, location_name: 'aliasInvocationState', traits: {"smithy.api#documentation" => "<p>The invocation state for the agent alias. If the agent alias is running, the value is <code>ACCEPT_INVOCATIONS</code>. If the agent alias is paused, the value is <code>REJECT_INVOCATIONS</code>. Use the <code>UpdateAgentAlias</code> operation to change the invocation state.</p>"}))
    AgentAliasSummary.type = Types::AgentAliasSummary
    AgentCollaboration.add_member(:supervisor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPERVISOR', traits: {"smithy.api#enumValue" => "SUPERVISOR"}))
    AgentCollaboration.add_member(:supervisor_router, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPERVISOR_ROUTER', traits: {"smithy.api#enumValue" => "SUPERVISOR_ROUTER"}))
    AgentCollaboration.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AgentCollaborator.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The collaborator's agent ID.</p>", "smithy.api#required" => {}}))
    AgentCollaborator.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The collaborator's agent version.</p>", "smithy.api#required" => {}}))
    AgentCollaborator.add_member(:agent_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentDescriptor, location_name: 'agentDescriptor', traits: {"smithy.api#documentation" => "<p>The collaborator's agent descriptor.</p>", "smithy.api#required" => {}}))
    AgentCollaborator.add_member(:collaborator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'collaboratorId', traits: {"smithy.api#documentation" => "<p>The collaborator's collaborator ID.</p>", "smithy.api#required" => {}}))
    AgentCollaborator.add_member(:collaboration_instruction, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationInstruction, location_name: 'collaborationInstruction', traits: {"smithy.api#documentation" => "<p>The collaborator's instructions.</p>", "smithy.api#required" => {}}))
    AgentCollaborator.add_member(:collaborator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'collaboratorName', traits: {"smithy.api#documentation" => "<p>The collaborator's collaborator name.</p>", "smithy.api#required" => {}}))
    AgentCollaborator.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>When the collaborator was created.</p>", "smithy.api#required" => {}}))
    AgentCollaborator.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>When the collaborator was updated.</p>", "smithy.api#required" => {}}))
    AgentCollaborator.add_member(:relay_conversation_history, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayConversationHistory, location_name: 'relayConversationHistory', traits: {"smithy.api#documentation" => "<p>The collaborator's relay conversation history.</p>"}))
    AgentCollaborator.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The collaborator's client token.</p>"}))
    AgentCollaborator.type = Types::AgentCollaborator
    AgentCollaboratorSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentCollaboratorSummary)
    AgentCollaboratorSummary.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The collaborator's agent ID.</p>", "smithy.api#required" => {}}))
    AgentCollaboratorSummary.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The collaborator's agent version.</p>", "smithy.api#required" => {}}))
    AgentCollaboratorSummary.add_member(:collaborator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'collaboratorId', traits: {"smithy.api#documentation" => "<p>The collaborator's ID.</p>", "smithy.api#required" => {}}))
    AgentCollaboratorSummary.add_member(:agent_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentDescriptor, location_name: 'agentDescriptor', traits: {"smithy.api#documentation" => "<p>The collaborator's agent descriptor.</p>", "smithy.api#required" => {}}))
    AgentCollaboratorSummary.add_member(:collaboration_instruction, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationInstruction, location_name: 'collaborationInstruction', traits: {"smithy.api#documentation" => "<p>The collaborator's collaboration instruction.</p>", "smithy.api#required" => {}}))
    AgentCollaboratorSummary.add_member(:relay_conversation_history, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayConversationHistory, location_name: 'relayConversationHistory', traits: {"smithy.api#documentation" => "<p>The collaborator's relay conversation history.</p>", "smithy.api#required" => {}}))
    AgentCollaboratorSummary.add_member(:collaborator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'collaboratorName', traits: {"smithy.api#documentation" => "<p>The collaborator's name.</p>", "smithy.api#required" => {}}))
    AgentCollaboratorSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>When the collaborator was created.</p>", "smithy.api#required" => {}}))
    AgentCollaboratorSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>When the collaborator was last updated.</p>", "smithy.api#required" => {}}))
    AgentCollaboratorSummary.type = Types::AgentCollaboratorSummary
    AgentDescriptor.add_member(:alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasArn, location_name: 'aliasArn', traits: {"smithy.api#documentation" => "<p>The agent's alias ARN.</p>"}))
    AgentDescriptor.type = Types::AgentDescriptor
    AgentFlowNodeConfiguration.add_member(:agent_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasArn, location_name: 'agentAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the alias of the agent to invoke.</p>", "smithy.api#required" => {}}))
    AgentFlowNodeConfiguration.type = Types::AgentFlowNodeConfiguration
    AgentKnowledgeBase.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent with which the knowledge base is associated.</p>", "smithy.api#required" => {}}))
    AgentKnowledgeBase.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent with which the knowledge base is associated.</p>", "smithy.api#required" => {}}))
    AgentKnowledgeBase.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the association between the agent and the knowledge base.</p>", "smithy.api#required" => {}}))
    AgentKnowledgeBase.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the association between the agent and the knowledge base.</p>", "smithy.api#required" => {}}))
    AgentKnowledgeBase.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the association between the agent and the knowledge base was created.</p>", "smithy.api#required" => {}}))
    AgentKnowledgeBase.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the association between the agent and the knowledge base was last updated.</p>", "smithy.api#required" => {}}))
    AgentKnowledgeBase.add_member(:knowledge_base_state, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseState, location_name: 'knowledgeBaseState', traits: {"smithy.api#documentation" => "<p>Specifies whether to use the knowledge base or not when sending an <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html\">InvokeAgent</a> request.</p>", "smithy.api#required" => {}}))
    AgentKnowledgeBase.type = Types::AgentKnowledgeBase
    AgentKnowledgeBaseSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentKnowledgeBaseSummary)
    AgentKnowledgeBaseSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base associated with an agent.</p>", "smithy.api#required" => {}}))
    AgentKnowledgeBaseSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the knowledge base associated with an agent.</p>"}))
    AgentKnowledgeBaseSummary.add_member(:knowledge_base_state, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseState, location_name: 'knowledgeBaseState', traits: {"smithy.api#documentation" => "<p>Specifies whether the agent uses the knowledge base or not when sending an <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html\">InvokeAgent</a> request.</p>", "smithy.api#required" => {}}))
    AgentKnowledgeBaseSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the knowledge base associated with an agent was last updated.</p>", "smithy.api#required" => {}}))
    AgentKnowledgeBaseSummary.type = Types::AgentKnowledgeBaseSummary
    AgentStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    AgentStatus.add_member(:preparing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING', traits: {"smithy.api#enumValue" => "PREPARING"}))
    AgentStatus.add_member(:prepared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARED', traits: {"smithy.api#enumValue" => "PREPARED"}))
    AgentStatus.add_member(:not_prepared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_PREPARED', traits: {"smithy.api#enumValue" => "NOT_PREPARED"}))
    AgentStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    AgentStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AgentStatus.add_member(:versioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERSIONING', traits: {"smithy.api#enumValue" => "VERSIONING"}))
    AgentStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    AgentSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentSummary)
    AgentSummary.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent.</p>", "smithy.api#required" => {}}))
    AgentSummary.add_member(:agent_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'agentName', traits: {"smithy.api#documentation" => "<p>The name of the agent.</p>", "smithy.api#required" => {}}))
    AgentSummary.add_member(:agent_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'agentStatus', traits: {"smithy.api#documentation" => "<p>The status of the agent.</p>", "smithy.api#required" => {}}))
    AgentSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the agent.</p>"}))
    AgentSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the agent was last updated.</p>", "smithy.api#required" => {}}))
    AgentSummary.add_member(:latest_agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'latestAgentVersion', traits: {"smithy.api#documentation" => "<p>The latest version of the agent.</p>"}))
    AgentSummary.add_member(:guardrail_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: 'guardrailConfiguration', traits: {"smithy.api#documentation" => "<p>Details about the guardrail associated with the agent.</p>"}))
    AgentSummary.type = Types::AgentSummary
    AgentVersion.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent that the version belongs to.</p>", "smithy.api#required" => {}}))
    AgentVersion.add_member(:agent_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'agentName', traits: {"smithy.api#documentation" => "<p>The name of the agent that the version belongs to.</p>", "smithy.api#required" => {}}))
    AgentVersion.add_member(:agent_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArn, location_name: 'agentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the agent that the version belongs to.</p>", "smithy.api#required" => {}}))
    AgentVersion.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version number.</p>", "smithy.api#required" => {}}))
    AgentVersion.add_member(:instruction, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'instruction', traits: {"smithy.api#documentation" => "<p>The instructions provided to the agent.</p>"}))
    AgentVersion.add_member(:agent_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'agentStatus', traits: {"smithy.api#documentation" => "<p>The status of the agent that the version belongs to.</p>", "smithy.api#required" => {}}))
    AgentVersion.add_member(:foundation_model, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'foundationModel', traits: {"smithy.api#documentation" => "<p>The foundation model that the version invokes.</p>"}))
    AgentVersion.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the version.</p>"}))
    AgentVersion.add_member(:idle_session_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: 'idleSessionTTLInSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent.</p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.</p>", "smithy.api#required" => {}}))
    AgentVersion.add_member(:agent_resource_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRoleArn, location_name: 'agentResourceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the agent.</p>", "smithy.api#required" => {}}))
    AgentVersion.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key that encrypts the agent.</p>"}))
    AgentVersion.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the version was created.</p>", "smithy.api#required" => {}}))
    AgentVersion.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the version was last updated.</p>", "smithy.api#required" => {}}))
    AgentVersion.add_member(:failure_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReasons, location_name: 'failureReasons', traits: {"smithy.api#documentation" => "<p>A list of reasons that the API operation on the version failed.</p>"}))
    AgentVersion.add_member(:recommended_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActions, location_name: 'recommendedActions', traits: {"smithy.api#documentation" => "<p>A list of recommended actions to take for the failed API operation on the version to succeed.</p>"}))
    AgentVersion.add_member(:prompt_override_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: 'promptOverrideConfiguration', traits: {"smithy.api#documentation" => "<p>Contains configurations to override prompt templates in different parts of an agent sequence. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html\">Advanced prompts</a>.</p>"}))
    AgentVersion.add_member(:guardrail_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: 'guardrailConfiguration', traits: {"smithy.api#documentation" => "<p>Details about the guardrail associated with the agent.</p>"}))
    AgentVersion.add_member(:memory_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryConfiguration, location_name: 'memoryConfiguration', traits: {"smithy.api#documentation" => "<p> Contains details of the memory configuration on the version of the agent. </p>"}))
    AgentVersion.add_member(:agent_collaboration, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentCollaboration, location_name: 'agentCollaboration', traits: {"smithy.api#documentation" => "<p>The agent's collaboration settings.</p>"}))
    AgentVersion.type = Types::AgentVersion
    AgentVersionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersionSummary)
    AgentVersionSummary.add_member(:agent_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'agentName', traits: {"smithy.api#documentation" => "<p>The name of the agent to which the version belongs.</p>", "smithy.api#required" => {}}))
    AgentVersionSummary.add_member(:agent_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'agentStatus', traits: {"smithy.api#documentation" => "<p>The status of the agent to which the version belongs.</p>", "smithy.api#required" => {}}))
    AgentVersionSummary.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent.</p>", "smithy.api#required" => {}}))
    AgentVersionSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the version was created.</p>", "smithy.api#required" => {}}))
    AgentVersionSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the version was last updated.</p>", "smithy.api#required" => {}}))
    AgentVersionSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the version of the agent.</p>"}))
    AgentVersionSummary.add_member(:guardrail_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: 'guardrailConfiguration', traits: {"smithy.api#documentation" => "<p>Details about the guardrail associated with the agent.</p>"}))
    AgentVersionSummary.type = Types::AgentVersionSummary
    AliasInvocationState.add_member(:accept_invocations, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPT_INVOCATIONS', traits: {"smithy.api#documentation" => "Agent is actively processing requests", "smithy.api#enumValue" => "ACCEPT_INVOCATIONS"}))
    AliasInvocationState.add_member(:reject_invocations, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECT_INVOCATIONS', traits: {"smithy.api#documentation" => "Agent is paused and will not accept new requests", "smithy.api#enumValue" => "REJECT_INVOCATIONS"}))
    AnyToolChoice.type = Types::AnyToolChoice
    AssociateAgentCollaboratorRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The agent's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAgentCollaboratorRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>An agent version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAgentCollaboratorRequest.add_member(:agent_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentDescriptor, location_name: 'agentDescriptor', traits: {"smithy.api#documentation" => "<p>The alias of the collaborator agent.</p>", "smithy.api#required" => {}}))
    AssociateAgentCollaboratorRequest.add_member(:collaborator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'collaboratorName', traits: {"smithy.api#documentation" => "<p>A name for the collaborator.</p>", "smithy.api#required" => {}}))
    AssociateAgentCollaboratorRequest.add_member(:collaboration_instruction, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationInstruction, location_name: 'collaborationInstruction', traits: {"smithy.api#documentation" => "<p>Instruction for the collaborator.</p>", "smithy.api#required" => {}}))
    AssociateAgentCollaboratorRequest.add_member(:relay_conversation_history, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayConversationHistory, location_name: 'relayConversationHistory', traits: {"smithy.api#documentation" => "<p>A relay conversation history for the collaborator.</p>"}))
    AssociateAgentCollaboratorRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A client token.</p>", "smithy.api#idempotencyToken" => {}}))
    AssociateAgentCollaboratorRequest.type = Types::AssociateAgentCollaboratorRequest
    AssociateAgentCollaboratorResponse.add_member(:agent_collaborator, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentCollaborator, location_name: 'agentCollaborator', traits: {"smithy.api#documentation" => "<p>Details about the collaborator.</p>", "smithy.api#required" => {}}))
    AssociateAgentCollaboratorResponse.type = Types::AssociateAgentCollaboratorResponse
    AssociateAgentKnowledgeBaseRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent with which you want to associate the knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAgentKnowledgeBaseRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent with which you want to associate the knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAgentKnowledgeBaseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base to associate with the agent.</p>", "smithy.api#required" => {}}))
    AssociateAgentKnowledgeBaseRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of what the agent should use the knowledge base for.</p>", "smithy.api#required" => {}}))
    AssociateAgentKnowledgeBaseRequest.add_member(:knowledge_base_state, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseState, location_name: 'knowledgeBaseState', traits: {"smithy.api#documentation" => "<p>Specifies whether to use the knowledge base or not when sending an <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html\">InvokeAgent</a> request.</p>"}))
    AssociateAgentKnowledgeBaseRequest.type = Types::AssociateAgentKnowledgeBaseRequest
    AssociateAgentKnowledgeBaseResponse.add_member(:agent_knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentKnowledgeBase, location_name: 'agentKnowledgeBase', traits: {"smithy.api#documentation" => "<p>Contains details about the knowledge base that has been associated with the agent.</p>", "smithy.api#required" => {}}))
    AssociateAgentKnowledgeBaseResponse.type = Types::AssociateAgentKnowledgeBaseResponse
    AutoToolChoice.type = Types::AutoToolChoice
    AwsDataCatalogTableNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDataCatalogTableName)
    BedrockDataAutomationConfiguration.add_member(:parsing_modality, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingModality, location_name: 'parsingModality', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable parsing of multimodal data, including both text and/or images.</p>"}))
    BedrockDataAutomationConfiguration.type = Types::BedrockDataAutomationConfiguration
    BedrockEmbeddingModelConfiguration.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: 'dimensions', traits: {"smithy.api#documentation" => "<p>The dimensions details for the vector configuration used on the Bedrock embeddings model.</p>"}))
    BedrockEmbeddingModelConfiguration.add_member(:embedding_data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EmbeddingDataType, location_name: 'embeddingDataType', traits: {"smithy.api#documentation" => "<p>The data type for the vectors when using a model to convert text into vector embeddings. The model must support the specified data type for vector embeddings. Floating-point (float32) is the default data type, and is supported by most models for vector embeddings. See <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-supported.html\">Supported embeddings models</a> for information on the available models and their vector data types.</p>"}))
    BedrockEmbeddingModelConfiguration.type = Types::BedrockEmbeddingModelConfiguration
    BedrockFoundationModelConfiguration.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelArn, location_name: 'modelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the foundation model to use for parsing.</p>", "smithy.api#required" => {}}))
    BedrockFoundationModelConfiguration.add_member(:parsing_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingPrompt, location_name: 'parsingPrompt', traits: {"smithy.api#documentation" => "<p>Instructions for interpreting the contents of a document.</p>"}))
    BedrockFoundationModelConfiguration.add_member(:parsing_modality, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingModality, location_name: 'parsingModality', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable parsing of multimodal data, including both text and/or images.</p>"}))
    BedrockFoundationModelConfiguration.type = Types::BedrockFoundationModelConfiguration
    BedrockFoundationModelContextEnrichmentConfiguration.add_member(:enrichment_strategy_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EnrichmentStrategyConfiguration, location_name: 'enrichmentStrategyConfiguration', traits: {"smithy.api#documentation" => "<p>The enrichment stategy used to provide additional context. For example, Neptune GraphRAG uses Amazon Bedrock foundation models to perform chunk entity extraction.</p>", "smithy.api#required" => {}}))
    BedrockFoundationModelContextEnrichmentConfiguration.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelArn, location_name: 'modelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model used to create vector embeddings for the knowledge base.</p>", "smithy.api#required" => {}}))
    BedrockFoundationModelContextEnrichmentConfiguration.type = Types::BedrockFoundationModelContextEnrichmentConfiguration
    ByteContentDoc.add_member(:mime_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'mimeType', traits: {"smithy.api#documentation" => "<p>The MIME type of the content. For a list of MIME types, see <a href=\"https://www.iana.org/assignments/media-types/media-types.xhtml\">Media Types</a>. The following MIME types are supported:</p> <ul> <li> <p>text/plain</p> </li> <li> <p>text/html</p> </li> <li> <p>text/csv</p> </li> <li> <p>text/vtt</p> </li> <li> <p>message/rfc822</p> </li> <li> <p>application/xhtml+xml</p> </li> <li> <p>application/pdf</p> </li> <li> <p>application/msword</p> </li> <li> <p>application/vnd.ms-word.document.macroenabled.12</p> </li> <li> <p>application/vnd.ms-word.template.macroenabled.12</p> </li> <li> <p>application/vnd.ms-excel</p> </li> <li> <p>application/vnd.ms-excel.addin.macroenabled.12</p> </li> <li> <p>application/vnd.ms-excel.sheet.macroenabled.12</p> </li> <li> <p>application/vnd.ms-excel.template.macroenabled.12</p> </li> <li> <p>application/vnd.ms-excel.sheet.binary.macroenabled.12</p> </li> <li> <p>application/vnd.ms-spreadsheetml</p> </li> <li> <p>application/vnd.openxmlformats-officedocument.spreadsheetml.sheet</p> </li> <li> <p>application/vnd.openxmlformats-officedocument.spreadsheetml.template</p> </li> <li> <p>application/vnd.openxmlformats-officedocument.wordprocessingml.document</p> </li> <li> <p>application/vnd.openxmlformats-officedocument.wordprocessingml.template</p> </li> </ul>", "smithy.api#pattern" => "[a-z]{1,20}/.{1,20}", "smithy.api#required" => {}}))
    ByteContentDoc.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: ByteContentBlob, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The base64-encoded string of the content.</p>", "smithy.api#required" => {}}))
    ByteContentDoc.type = Types::ByteContentDoc
    CachePointBlock.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePointType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Indicates that the CachePointBlock is of the default type</p>", "smithy.api#required" => {}}))
    CachePointBlock.type = Types::CachePointBlock
    CachePointType.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "default"}))
    ChatPromptTemplateConfiguration.add_member(:messages, Smithy::Schema::Shapes::ShapeRef.new(shape: Messages, location_name: 'messages', traits: {"smithy.api#documentation" => "<p>Contains messages in the chat for the prompt.</p>", "smithy.api#required" => {}}))
    ChatPromptTemplateConfiguration.add_member(:system, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemContentBlocks, location_name: 'system', traits: {"smithy.api#documentation" => "<p>Contains system prompts to provide context to the model or to describe how it should behave.</p>"}))
    ChatPromptTemplateConfiguration.add_member(:input_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptInputVariablesList, location_name: 'inputVariables', traits: {"smithy.api#documentation" => "<p>An array of the variables in the prompt template.</p>"}))
    ChatPromptTemplateConfiguration.add_member(:tool_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ToolConfiguration, location_name: 'toolConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information for the tools that the model can use when generating a response.</p>"}))
    ChatPromptTemplateConfiguration.type = Types::ChatPromptTemplateConfiguration
    ChunkingConfiguration.add_member(:chunking_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ChunkingStrategy, location_name: 'chunkingStrategy', traits: {"smithy.api#documentation" => "<p>Knowledge base can split your source data into chunks. A <i>chunk</i> refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried. You have the following options for chunking your data. If you opt for <code>NONE</code>, then you may want to pre-process your files by splitting them up such that each file corresponds to a chunk.</p> <ul> <li> <p> <code>FIXED_SIZE</code> – Amazon Bedrock splits your source data into chunks of the approximate size that you set in the <code>fixedSizeChunkingConfiguration</code>.</p> </li> <li> <p> <code>HIERARCHICAL</code> – Split documents into layers of chunks where the first layer contains large chunks, and the second layer contains smaller chunks derived from the first layer.</p> </li> <li> <p> <code>SEMANTIC</code> – Split documents into chunks based on groups of similar content derived with natural language processing.</p> </li> <li> <p> <code>NONE</code> – Amazon Bedrock treats each file as one chunk. If you choose this option, you may want to pre-process your documents by splitting them into separate files.</p> </li> </ul>", "smithy.api#required" => {}}))
    ChunkingConfiguration.add_member(:fixed_size_chunking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedSizeChunkingConfiguration, location_name: 'fixedSizeChunkingConfiguration', traits: {"smithy.api#documentation" => "<p>Configurations for when you choose fixed-size chunking. If you set the <code>chunkingStrategy</code> as <code>NONE</code>, exclude this field.</p>"}))
    ChunkingConfiguration.add_member(:hierarchical_chunking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HierarchicalChunkingConfiguration, location_name: 'hierarchicalChunkingConfiguration', traits: {"smithy.api#documentation" => "<p>Settings for hierarchical document chunking for a data source. Hierarchical chunking splits documents into layers of chunks where the first layer contains large chunks, and the second layer contains smaller chunks derived from the first layer.</p>"}))
    ChunkingConfiguration.add_member(:semantic_chunking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SemanticChunkingConfiguration, location_name: 'semanticChunkingConfiguration', traits: {"smithy.api#documentation" => "<p>Settings for semantic document chunking for a data source. Semantic chunking splits a document into into smaller documents based on groups of similar content derived from the text with natural language processing.</p>"}))
    ChunkingConfiguration.type = Types::ChunkingConfiguration
    ChunkingStrategy.add_member(:fixed_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIXED_SIZE', traits: {"smithy.api#enumValue" => "FIXED_SIZE"}))
    ChunkingStrategy.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ChunkingStrategy.add_member(:hierarchical, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIERARCHICAL', traits: {"smithy.api#enumValue" => "HIERARCHICAL"}))
    ChunkingStrategy.add_member(:semantic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEMANTIC', traits: {"smithy.api#enumValue" => "SEMANTIC"}))
    CollectorFlowNodeConfiguration.type = Types::CollectorFlowNodeConfiguration
    ConcurrencyType.add_member(:automatic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATIC', traits: {"smithy.api#enumValue" => "Automatic"}))
    ConcurrencyType.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "Manual"}))
    ConditionFlowNodeConfiguration.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConditions, location_name: 'conditions', traits: {"smithy.api#documentation" => "<p>An array of conditions. Each member contains the name of a condition and an expression that defines the condition.</p>", "smithy.api#required" => {}}))
    ConditionFlowNodeConfiguration.type = Types::ConditionFlowNodeConfiguration
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConfluenceAuthType.add_member(:basic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASIC', traits: {"smithy.api#enumValue" => "BASIC"}))
    ConfluenceAuthType.add_member(:oauth2_client_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OAUTH2_CLIENT_CREDENTIALS', traits: {"smithy.api#enumValue" => "OAUTH2_CLIENT_CREDENTIALS"}))
    ConfluenceCrawlerConfiguration.add_member(:filter_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CrawlFilterConfiguration, location_name: 'filterConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of filtering the Confluence content. For example, configuring regular expression patterns to include or exclude certain content.</p>"}))
    ConfluenceCrawlerConfiguration.type = Types::ConfluenceCrawlerConfiguration
    ConfluenceDataSourceConfiguration.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfluenceSourceConfiguration, location_name: 'sourceConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint information to connect to your Confluence data source.</p>", "smithy.api#required" => {}}))
    ConfluenceDataSourceConfiguration.add_member(:crawler_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfluenceCrawlerConfiguration, location_name: 'crawlerConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the Confluence content. For example, configuring specific types of Confluence content.</p>"}))
    ConfluenceDataSourceConfiguration.type = Types::ConfluenceDataSourceConfiguration
    ConfluenceHostType.add_member(:saas, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAAS', traits: {"smithy.api#enumValue" => "SAAS"}))
    ConfluenceSourceConfiguration.add_member(:host_url, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsUrl, location_name: 'hostUrl', traits: {"smithy.api#documentation" => "<p>The Confluence host URL or instance URL.</p>", "smithy.api#required" => {}}))
    ConfluenceSourceConfiguration.add_member(:host_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfluenceHostType, location_name: 'hostType', traits: {"smithy.api#documentation" => "<p>The supported host type, whether online/cloud or server/on-premises.</p>", "smithy.api#required" => {}}))
    ConfluenceSourceConfiguration.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfluenceAuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The supported authentication type to authenticate and connect to your Confluence instance.</p>", "smithy.api#required" => {}}))
    ConfluenceSourceConfiguration.add_member(:credentials_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'credentialsSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of an Secrets Manager secret that stores your authentication credentials for your Confluence instance URL. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/confluence-data-source-connector.html#configuration-confluence-connector\">Confluence connection configuration</a>.</p>", "smithy.api#required" => {}}))
    ConfluenceSourceConfiguration.type = Types::ConfluenceSourceConfiguration
    ContentBlock.add_member(:text, Types::ContentBlock::Text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The text in the message.</p>"}))
    ContentBlock.add_member(:cache_point, Types::ContentBlock::CachePoint, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePointBlock, location_name: 'cachePoint', traits: {"smithy.api#documentation" => "<p>Creates a cache checkpoint within a message.</p>"}))
    ContentBlock.add_member(:unknown, Types::ContentBlock::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ContentBlock.type = Types::ContentBlock
    ContentBlocks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContentBlock)
    ContentDataSourceType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ContentDataSourceType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    ContextEnrichmentConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContextEnrichmentType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The method used for context enrichment. It must be Amazon Bedrock foundation models.</p>", "smithy.api#required" => {}}))
    ContextEnrichmentConfiguration.add_member(:bedrock_foundation_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockFoundationModelContextEnrichmentConfiguration, location_name: 'bedrockFoundationModelConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the Amazon Bedrock foundation model used for context enrichment.</p>"}))
    ContextEnrichmentConfiguration.type = Types::ContextEnrichmentConfiguration
    ContextEnrichmentType.add_member(:bedrock_foundation_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEDROCK_FOUNDATION_MODEL', traits: {"smithy.api#enumValue" => "BEDROCK_FOUNDATION_MODEL"}))
    ConversationRole.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "user"}))
    ConversationRole.add_member(:assistant, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSISTANT', traits: {"smithy.api#enumValue" => "assistant"}))
    CrawlFilterConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CrawlFilterConfigurationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of filtering that you want to apply to certain objects or content of the data source. For example, the <code>PATTERN</code> type is regular expression patterns you can apply to filter your content.</p>", "smithy.api#required" => {}}))
    CrawlFilterConfiguration.add_member(:pattern_object_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: PatternObjectFilterConfiguration, location_name: 'patternObjectFilter', traits: {"smithy.api#documentation" => "<p>The configuration of filtering certain objects or content types of the data source.</p>"}))
    CrawlFilterConfiguration.type = Types::CrawlFilterConfiguration
    CrawlFilterConfigurationType.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PATTERN', traits: {"smithy.api#enumValue" => "PATTERN"}))
    CreateAgentActionGroupRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent for which to create the action group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAgentActionGroupRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent for which to create the action group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAgentActionGroupRequest.add_member(:action_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'actionGroupName', traits: {"smithy.api#documentation" => "<p>The name to give the action group.</p>", "smithy.api#required" => {}}))
    CreateAgentActionGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAgentActionGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the action group.</p>"}))
    CreateAgentActionGroupRequest.add_member(:parent_action_group_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupSignature, location_name: 'parentActionGroupSignature', traits: {"smithy.api#documentation" => "<p>Specify a built-in or computer use action for this action group. If you specify a value, you must leave the <code>description</code>, <code>apiSchema</code>, and <code>actionGroupExecutor</code> fields empty for this action group. </p> <ul> <li> <p>To allow your agent to request the user for additional information when trying to complete a task, set this field to <code>AMAZON.UserInput</code>. </p> </li> <li> <p>To allow your agent to generate, run, and troubleshoot code when trying to complete a task, set this field to <code>AMAZON.CodeInterpreter</code>.</p> </li> <li> <p>To allow your agent to use an Anthropic computer use tool, specify one of the following values. </p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. When operating computer use functionality, we recommend taking additional security precautions, such as executing computer actions in virtual environments with restricted data access and limited internet connectivity. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html\">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important> <ul> <li> <p> <code>ANTHROPIC.Computer</code> - Gives the agent permission to use the mouse and keyboard and take screenshots.</p> </li> <li> <p> <code>ANTHROPIC.TextEditor</code> - Gives the agent permission to view, create and edit files.</p> </li> <li> <p> <code>ANTHROPIC.Bash</code> - Gives the agent permission to run commands in a bash shell.</p> </li> </ul> </li> </ul>"}))
    CreateAgentActionGroupRequest.add_member(:parent_action_group_signature_params, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupSignatureParams, location_name: 'parentActionGroupSignatureParams', traits: {"smithy.api#documentation" => "<p>The configuration settings for a computer use action.</p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html\">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important>"}))
    CreateAgentActionGroupRequest.add_member(:action_group_executor, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupExecutor, location_name: 'actionGroupExecutor', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action or the custom control method for handling the information elicited from the user.</p>"}))
    CreateAgentActionGroupRequest.add_member(:api_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: APISchema, location_name: 'apiSchema', traits: {"smithy.api#documentation" => "<p>Contains either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html\">Action group OpenAPI schemas</a>.</p>"}))
    CreateAgentActionGroupRequest.add_member(:action_group_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupState, location_name: 'actionGroupState', traits: {"smithy.api#documentation" => "<p>Specifies whether the action group is available for the agent to invoke or not when sending an <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html\">InvokeAgent</a> request.</p>"}))
    CreateAgentActionGroupRequest.add_member(:function_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSchema, location_name: 'functionSchema', traits: {"smithy.api#documentation" => "<p>Contains details about the function schema for the action group or the JSON or YAML-formatted payload defining the schema.</p>"}))
    CreateAgentActionGroupRequest.type = Types::CreateAgentActionGroupRequest
    CreateAgentActionGroupResponse.add_member(:agent_action_group, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentActionGroup, location_name: 'agentActionGroup', traits: {"smithy.api#documentation" => "<p>Contains details about the action group that was created.</p>", "smithy.api#required" => {}}))
    CreateAgentActionGroupResponse.type = Types::CreateAgentActionGroupResponse
    CreateAgentAliasRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAgentAliasRequest.add_member(:agent_alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'agentAliasName', traits: {"smithy.api#documentation" => "<p>The name of the alias.</p>", "smithy.api#required" => {}}))
    CreateAgentAliasRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAgentAliasRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the alias of the agent.</p>"}))
    CreateAgentAliasRequest.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the routing configuration of the alias.</p>"}))
    CreateAgentAliasRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Any tags that you want to attach to the alias of the agent.</p>"}))
    CreateAgentAliasRequest.type = Types::CreateAgentAliasRequest
    CreateAgentAliasResponse.add_member(:agent_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAlias, location_name: 'agentAlias', traits: {"smithy.api#documentation" => "<p>Contains details about the alias that was created.</p>", "smithy.api#required" => {}}))
    CreateAgentAliasResponse.type = Types::CreateAgentAliasResponse
    CreateAgentRequest.add_member(:agent_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'agentName', traits: {"smithy.api#documentation" => "<p>A name for the agent that you create.</p>", "smithy.api#required" => {}}))
    CreateAgentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAgentRequest.add_member(:instruction, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'instruction', traits: {"smithy.api#documentation" => "<p>Instructions that tell the agent what it should do and how it should interact with users.</p>"}))
    CreateAgentRequest.add_member(:foundation_model, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'foundationModel', traits: {"smithy.api#documentation" => "<p>The identifier for the model that you want to be used for orchestration by the agent you create.</p> <p>The <code>modelId</code> to provide depends on the type of model or throughput that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns\">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html\">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html\">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, first purchase Provisioned Throughput for it. Then specify the ARN of the resulting provisioned model. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html\">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html\">imported model</a>, specify the ARN of the imported model. You can get the model ARN from a successful call to <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html\">CreateModelImportJob</a> or from the Imported models page in the Amazon Bedrock console.</p> </li> </ul>"}))
    CreateAgentRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the agent.</p>"}))
    CreateAgentRequest.add_member(:orchestration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OrchestrationType, location_name: 'orchestrationType', traits: {"smithy.api#documentation" => "<p> Specifies the type of orchestration strategy for the agent. This is set to <code>DEFAULT</code> orchestration type, by default. </p>"}))
    CreateAgentRequest.add_member(:custom_orchestration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrchestration, location_name: 'customOrchestration', traits: {"smithy.api#documentation" => "<p> Contains details of the custom orchestration configured for the agent. </p>"}))
    CreateAgentRequest.add_member(:idle_session_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: 'idleSessionTTLInSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent.</p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.</p>"}))
    CreateAgentRequest.add_member(:agent_resource_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRoleArn, location_name: 'agentResourceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the agent.</p>"}))
    CreateAgentRequest.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key with which to encrypt the agent.</p>"}))
    CreateAgentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Any tags that you want to attach to the agent.</p>"}))
    CreateAgentRequest.add_member(:prompt_override_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: 'promptOverrideConfiguration', traits: {"smithy.api#documentation" => "<p>Contains configurations to override prompts in different parts of an agent sequence. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html\">Advanced prompts</a>.</p>"}))
    CreateAgentRequest.add_member(:guardrail_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: 'guardrailConfiguration', traits: {"smithy.api#documentation" => "<p>The unique Guardrail configuration assigned to the agent when it is created.</p>"}))
    CreateAgentRequest.add_member(:memory_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryConfiguration, location_name: 'memoryConfiguration', traits: {"smithy.api#documentation" => "<p> Contains the details of the memory configured for the agent.</p>"}))
    CreateAgentRequest.add_member(:agent_collaboration, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentCollaboration, location_name: 'agentCollaboration', traits: {"smithy.api#documentation" => "<p>The agent's collaboration role.</p>"}))
    CreateAgentRequest.type = Types::CreateAgentRequest
    CreateAgentResponse.add_member(:agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Agent, location_name: 'agent', traits: {"smithy.api#documentation" => "<p>Contains details about the agent created.</p>", "smithy.api#required" => {}}))
    CreateAgentResponse.type = Types::CreateAgentResponse
    CreateDataSourceRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base to which to add the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDataSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the data source.</p>", "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the data source.</p>"}))
    CreateDataSourceRequest.add_member(:data_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: 'dataSourceConfiguration', traits: {"smithy.api#documentation" => "<p>The connection configuration for the data source.</p>", "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:data_deletion_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDeletionPolicy, location_name: 'dataDeletionPolicy', traits: {"smithy.api#documentation" => "<p>The data deletion policy for the data source.</p> <p>You can set the data deletion policy to:</p> <ul> <li> <p>DELETE: Deletes all data from your data source that’s converted into vector embeddings upon deletion of a knowledge base or data source resource. Note that the <b>vector store itself is not deleted</b>, only the data. This flag is ignored if an Amazon Web Services account is deleted.</p> </li> <li> <p>RETAIN: Retains all data from your data source that’s converted into vector embeddings upon deletion of a knowledge base or data source resource. Note that the <b>vector store itself is not deleted</b> if you delete a knowledge base or data source resource.</p> </li> </ul>"}))
    CreateDataSourceRequest.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the server-side encryption for the data source.</p>"}))
    CreateDataSourceRequest.add_member(:vector_ingestion_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: 'vectorIngestionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about how to ingest the documents in the data source.</p>"}))
    CreateDataSourceRequest.type = Types::CreateDataSourceRequest
    CreateDataSourceResponse.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>Contains details about the data source.</p>", "smithy.api#required" => {}}))
    CreateDataSourceResponse.type = Types::CreateDataSourceResponse
    CreateFlowAliasRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the alias.</p>", "smithy.api#required" => {}}))
    CreateFlowAliasRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the alias.</p>"}))
    CreateFlowAliasRequest.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>Contains information about the version to which to map the alias.</p>", "smithy.api#required" => {}}))
    CreateFlowAliasRequest.add_member(:concurrency_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasConcurrencyConfiguration, location_name: 'concurrencyConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies how nodes in the flow are executed in parallel.</p>"}))
    CreateFlowAliasRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow for which to create an alias.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFlowAliasRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateFlowAliasRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>Any tags that you want to attach to the alias of the flow. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html\">Tagging resources in Amazon Bedrock</a>.</p>"}))
    CreateFlowAliasRequest.type = Types::CreateFlowAliasRequest
    CreateFlowAliasResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the alias.</p>", "smithy.api#required" => {}}))
    CreateFlowAliasResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the alias.</p>"}))
    CreateFlowAliasResponse.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>Contains information about the version that the alias is mapped to.</p>", "smithy.api#required" => {}}))
    CreateFlowAliasResponse.add_member(:concurrency_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasConcurrencyConfiguration, location_name: 'concurrencyConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies how nodes in the flow are executed in parallel.</p>"}))
    CreateFlowAliasResponse.add_member(:flow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'flowId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow that the alias belongs to.</p>", "smithy.api#required" => {}}))
    CreateFlowAliasResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias.</p>", "smithy.api#required" => {}}))
    CreateFlowAliasResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the alias.</p>", "smithy.api#required" => {}}))
    CreateFlowAliasResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the alias was created.</p>", "smithy.api#required" => {}}))
    CreateFlowAliasResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the alias of the flow was last updated.</p>", "smithy.api#required" => {}}))
    CreateFlowAliasResponse.type = Types::CreateFlowAliasResponse
    CreateFlowRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the flow.</p>", "smithy.api#required" => {}}))
    CreateFlowRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the flow.</p>"}))
    CreateFlowRequest.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html\">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>", "smithy.api#required" => {}}))
    CreateFlowRequest.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.</p>"}))
    CreateFlowRequest.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>A definition of the nodes and connections between nodes in the flow.</p>"}))
    CreateFlowRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateFlowRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>Any tags that you want to attach to the flow. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html\">Tagging resources in Amazon Bedrock</a>.</p>"}))
    CreateFlowRequest.type = Types::CreateFlowRequest
    CreateFlowResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the flow.</p>", "smithy.api#required" => {}}))
    CreateFlowResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the flow.</p>"}))
    CreateFlowResponse.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role with permissions to create a flow. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html\">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>", "smithy.api#required" => {}}))
    CreateFlowResponse.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key that you encrypted the flow with.</p>"}))
    CreateFlowResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    CreateFlowResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flow.</p>", "smithy.api#required" => {}}))
    CreateFlowResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the flow. When you submit this request, the status will be <code>NotPrepared</code>. If creation fails, the status becomes <code>Failed</code>.</p>", "smithy.api#required" => {}}))
    CreateFlowResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was created.</p>", "smithy.api#required" => {}}))
    CreateFlowResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was last updated.</p>", "smithy.api#required" => {}}))
    CreateFlowResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the flow. When you create a flow, the version created is the <code>DRAFT</code> version.</p>", "smithy.api#required" => {}}))
    CreateFlowResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>A definition of the nodes and connections between nodes in the flow.</p>"}))
    CreateFlowResponse.type = Types::CreateFlowResponse
    CreateFlowVersionRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow that you want to create a version of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFlowVersionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the version of the flow.</p>"}))
    CreateFlowVersionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateFlowVersionRequest.type = Types::CreateFlowVersionRequest
    CreateFlowVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the version.</p>", "smithy.api#required" => {}}))
    CreateFlowVersionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the version.</p>"}))
    CreateFlowVersionResponse.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role with permissions to create a flow. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html\">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>", "smithy.api#required" => {}}))
    CreateFlowVersionResponse.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The KMS key that the flow is encrypted with.</p>"}))
    CreateFlowVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    CreateFlowVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flow.</p>", "smithy.api#required" => {}}))
    CreateFlowVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the flow.</p>", "smithy.api#required" => {}}))
    CreateFlowVersionResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was created.</p>", "smithy.api#required" => {}}))
    CreateFlowVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the flow that was created. Versions are numbered incrementally, starting from 1.</p>", "smithy.api#required" => {}}))
    CreateFlowVersionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>A definition of the nodes and connections in the flow.</p>"}))
    CreateFlowVersionResponse.type = Types::CreateFlowVersionResponse
    CreateKnowledgeBaseRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateKnowledgeBaseRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the knowledge base.</p>", "smithy.api#required" => {}}))
    CreateKnowledgeBaseRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the knowledge base.</p>"}))
    CreateKnowledgeBaseRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the knowledge base.</p>", "smithy.api#required" => {}}))
    CreateKnowledgeBaseRequest.add_member(:knowledge_base_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseConfiguration, location_name: 'knowledgeBaseConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the embeddings model used for the knowledge base.</p>", "smithy.api#required" => {}}))
    CreateKnowledgeBaseRequest.add_member(:storage_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfiguration, location_name: 'storageConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the configuration of the vector database used for the knowledge base.</p>"}))
    CreateKnowledgeBaseRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Specify the key-value pairs for the tags that you want to attach to your knowledge base in this object.</p>"}))
    CreateKnowledgeBaseRequest.type = Types::CreateKnowledgeBaseRequest
    CreateKnowledgeBaseResponse.add_member(:knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBase, location_name: 'knowledgeBase', traits: {"smithy.api#documentation" => "<p>Contains details about the knowledge base.</p>", "smithy.api#required" => {}}))
    CreateKnowledgeBaseResponse.type = Types::CreateKnowledgeBaseResponse
    CreatePromptRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the prompt.</p>", "smithy.api#required" => {}}))
    CreatePromptRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the prompt.</p>"}))
    CreatePromptRequest.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.</p>"}))
    CreatePromptRequest.add_member(:default_variant, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantName, location_name: 'defaultVariant', traits: {"smithy.api#documentation" => "<p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html\">PromptVariant</a> object.</p>"}))
    CreatePromptRequest.add_member(:variants, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantList, location_name: 'variants', traits: {"smithy.api#documentation" => "<p>A list of objects, each containing details about a variant of the prompt.</p>"}))
    CreatePromptRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreatePromptRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>Any tags that you want to attach to the prompt. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html\">Tagging resources in Amazon Bedrock</a>.</p>"}))
    CreatePromptRequest.type = Types::CreatePromptRequest
    CreatePromptResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the prompt.</p>", "smithy.api#required" => {}}))
    CreatePromptResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the prompt.</p>"}))
    CreatePromptResponse.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key that you encrypted the prompt with.</p>"}))
    CreatePromptResponse.add_member(:default_variant, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantName, location_name: 'defaultVariant', traits: {"smithy.api#documentation" => "<p>The name of the default variant for your prompt.</p>"}))
    CreatePromptResponse.add_member(:variants, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantList, location_name: 'variants', traits: {"smithy.api#documentation" => "<p>A list of objects, each containing details about a variant of the prompt.</p>"}))
    CreatePromptResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the prompt.</p>", "smithy.api#required" => {}}))
    CreatePromptResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the prompt.</p>", "smithy.api#required" => {}}))
    CreatePromptResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the prompt. When you create a prompt, the version created is the <code>DRAFT</code> version.</p>", "smithy.api#required" => {}}))
    CreatePromptResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the prompt was created.</p>", "smithy.api#required" => {}}))
    CreatePromptResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the prompt was last updated.</p>", "smithy.api#required" => {}}))
    CreatePromptResponse.type = Types::CreatePromptResponse
    CreatePromptVersionRequest.add_member(:prompt_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptIdentifier, location_name: 'promptIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the prompt that you want to create a version of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePromptVersionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the version of the prompt.</p>"}))
    CreatePromptVersionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreatePromptVersionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>Any tags that you want to attach to the version of the prompt. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html\">Tagging resources in Amazon Bedrock</a>.</p>"}))
    CreatePromptVersionRequest.type = Types::CreatePromptVersionRequest
    CreatePromptVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the prompt.</p>", "smithy.api#required" => {}}))
    CreatePromptVersionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the version.</p>"}))
    CreatePromptVersionResponse.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key to encrypt the version of the prompt.</p>"}))
    CreatePromptVersionResponse.add_member(:default_variant, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantName, location_name: 'defaultVariant', traits: {"smithy.api#documentation" => "<p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html\">PromptVariant</a> object.</p>"}))
    CreatePromptVersionResponse.add_member(:variants, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantList, location_name: 'variants', traits: {"smithy.api#documentation" => "<p>A list of objects, each containing details about a variant of the prompt.</p>"}))
    CreatePromptVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the prompt.</p>", "smithy.api#required" => {}}))
    CreatePromptVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the version of the prompt.</p>", "smithy.api#required" => {}}))
    CreatePromptVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the prompt that was created. Versions are numbered incrementally, starting from 1.</p>", "smithy.api#required" => {}}))
    CreatePromptVersionResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the prompt was created.</p>", "smithy.api#required" => {}}))
    CreatePromptVersionResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the prompt was last updated.</p>", "smithy.api#required" => {}}))
    CreatePromptVersionResponse.type = Types::CreatePromptVersionResponse
    CreationMode.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    CreationMode.add_member(:overridden, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERRIDDEN', traits: {"smithy.api#enumValue" => "OVERRIDDEN"}))
    CuratedQueries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CuratedQuery)
    CuratedQuery.add_member(:natural_language, Smithy::Schema::Shapes::ShapeRef.new(shape: NaturalLanguageString, location_name: 'naturalLanguage', traits: {"smithy.api#documentation" => "<p>An example natural language query.</p>", "smithy.api#required" => {}}))
    CuratedQuery.add_member(:sql, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlString, location_name: 'sql', traits: {"smithy.api#documentation" => "<p>The SQL equivalent of the natural language query.</p>", "smithy.api#required" => {}}))
    CuratedQuery.type = Types::CuratedQuery
    CustomContent.add_member(:custom_document_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDocumentIdentifier, location_name: 'customDocumentIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the document.</p>", "smithy.api#required" => {}}))
    CustomContent.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomSourceType, location_name: 'sourceType', traits: {"smithy.api#documentation" => "<p>The source of the data to ingest.</p>", "smithy.api#required" => {}}))
    CustomContent.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomS3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>Contains information about the Amazon S3 location of the file from which to ingest data.</p>"}))
    CustomContent.add_member(:inline_content, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineContent, location_name: 'inlineContent', traits: {"smithy.api#documentation" => "<p>Contains information about content defined inline to ingest into a knowledge base.</p>"}))
    CustomContent.type = Types::CustomContent
    CustomControlMethod.add_member(:return_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETURN_CONTROL', traits: {"smithy.api#enumValue" => "RETURN_CONTROL"}))
    CustomDocumentIdentifier.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the document to ingest into a custom data source.</p>", "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    CustomDocumentIdentifier.type = Types::CustomDocumentIdentifier
    CustomOrchestration.add_member(:executor, Smithy::Schema::Shapes::ShapeRef.new(shape: OrchestrationExecutor, location_name: 'executor', traits: {"smithy.api#documentation" => "<p> The structure of the executor invoking the actions in custom orchestration. </p>"}))
    CustomOrchestration.type = Types::CustomOrchestration
    CustomS3Location.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectUri, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>The S3 URI of the file containing the content to ingest.</p>", "smithy.api#required" => {}}))
    CustomS3Location.add_member(:bucket_owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketOwnerAccountId, location_name: 'bucketOwnerAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account that owns the S3 bucket containing the content to ingest.</p>"}))
    CustomS3Location.type = Types::CustomS3Location
    CustomSourceType.add_member(:in_line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_LINE', traits: {"smithy.api#enumValue" => "IN_LINE"}))
    CustomSourceType.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_LOCATION', traits: {"smithy.api#enumValue" => "S3_LOCATION"}))
    CustomTransformationConfiguration.add_member(:intermediate_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: IntermediateStorage, location_name: 'intermediateStorage', traits: {"smithy.api#documentation" => "<p>An S3 bucket path for input and output objects.</p>", "smithy.api#required" => {}}))
    CustomTransformationConfiguration.add_member(:transformations, Smithy::Schema::Shapes::ShapeRef.new(shape: Transformations, location_name: 'transformations', traits: {"smithy.api#documentation" => "<p>A Lambda function that processes documents.</p>", "smithy.api#required" => {}}))
    CustomTransformationConfiguration.type = Types::CustomTransformationConfiguration
    CyclicConnectionFlowValidationDetails.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionName, location_name: 'connection', traits: {"smithy.api#documentation" => "<p>The name of the connection that causes the cycle in the flow.</p>", "smithy.api#required" => {}}))
    CyclicConnectionFlowValidationDetails.type = Types::CyclicConnectionFlowValidationDetails
    DataDeletionPolicy.add_member(:retain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETAIN', traits: {"smithy.api#enumValue" => "RETAIN"}))
    DataDeletionPolicy.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    DataSource.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base to which the data source belongs.</p>", "smithy.api#required" => {}}))
    DataSource.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source.</p>", "smithy.api#required" => {}}))
    DataSource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the data source.</p>", "smithy.api#required" => {}}))
    DataSource.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the data source. The following statuses are possible:</p> <ul> <li> <p>Available – The data source has been created and is ready for ingestion into the knowledge base.</p> </li> <li> <p>Deleting – The data source is being deleted.</p> </li> </ul>", "smithy.api#required" => {}}))
    DataSource.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the data source.</p>"}))
    DataSource.add_member(:data_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: 'dataSourceConfiguration', traits: {"smithy.api#documentation" => "<p>The connection configuration for the data source.</p>", "smithy.api#required" => {}}))
    DataSource.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the configuration of the server-side encryption.</p>"}))
    DataSource.add_member(:vector_ingestion_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: 'vectorIngestionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about how to ingest the documents in the data source.</p>"}))
    DataSource.add_member(:data_deletion_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDeletionPolicy, location_name: 'dataDeletionPolicy', traits: {"smithy.api#documentation" => "<p>The data deletion policy for the data source.</p>"}))
    DataSource.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the data source was created.</p>", "smithy.api#required" => {}}))
    DataSource.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the data source was last updated.</p>", "smithy.api#required" => {}}))
    DataSource.add_member(:failure_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReasons, location_name: 'failureReasons', traits: {"smithy.api#documentation" => "<p>The detailed reasons on the failure to delete a data source.</p>"}))
    DataSource.type = Types::DataSource
    DataSourceConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of data source.</p>", "smithy.api#required" => {}}))
    DataSourceConfiguration.add_member(:s3_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataSourceConfiguration, location_name: 's3Configuration', traits: {"smithy.api#documentation" => "<p>The configuration information to connect to Amazon S3 as your data source.</p>"}))
    DataSourceConfiguration.add_member(:web_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WebDataSourceConfiguration, location_name: 'webConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of web URLs to crawl for your data source. You should be authorized to crawl the URLs.</p> <note> <p>Crawling web URLs as your data source is in preview release and is subject to change.</p> </note>"}))
    DataSourceConfiguration.add_member(:confluence_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfluenceDataSourceConfiguration, location_name: 'confluenceConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information to connect to Confluence as your data source.</p> <note> <p>Confluence data source connector is in preview release and is subject to change.</p> </note>"}))
    DataSourceConfiguration.add_member(:salesforce_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SalesforceDataSourceConfiguration, location_name: 'salesforceConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information to connect to Salesforce as your data source.</p> <note> <p>Salesforce data source connector is in preview release and is subject to change.</p> </note>"}))
    DataSourceConfiguration.add_member(:share_point_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SharePointDataSourceConfiguration, location_name: 'sharePointConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information to connect to SharePoint as your data source.</p> <note> <p>SharePoint data source connector is in preview release and is subject to change.</p> </note>"}))
    DataSourceConfiguration.type = Types::DataSourceConfiguration
    DataSourceStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DataSourceStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    DataSourceStatus.add_member(:delete_unsuccessful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_UNSUCCESSFUL', traits: {"smithy.api#enumValue" => "DELETE_UNSUCCESSFUL"}))
    DataSourceSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceSummary)
    DataSourceSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base to which the data source belongs.</p>", "smithy.api#required" => {}}))
    DataSourceSummary.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source.</p>", "smithy.api#required" => {}}))
    DataSourceSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the data source.</p>", "smithy.api#required" => {}}))
    DataSourceSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the data source.</p>", "smithy.api#required" => {}}))
    DataSourceSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the data source.</p>"}))
    DataSourceSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the data source was last updated.</p>", "smithy.api#required" => {}}))
    DataSourceSummary.type = Types::DataSourceSummary
    DataSourceType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    DataSourceType.add_member(:web, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEB', traits: {"smithy.api#enumValue" => "WEB"}))
    DataSourceType.add_member(:confluence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFLUENCE', traits: {"smithy.api#enumValue" => "CONFLUENCE"}))
    DataSourceType.add_member(:salesforce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SALESFORCE', traits: {"smithy.api#enumValue" => "SALESFORCE"}))
    DataSourceType.add_member(:sharepoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHAREPOINT', traits: {"smithy.api#enumValue" => "SHAREPOINT"}))
    DataSourceType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    DataSourceType.add_member(:redshift_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDSHIFT_METADATA', traits: {"smithy.api#enumValue" => "REDSHIFT_METADATA"}))
    DeleteAgentActionGroupRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent that the action group belongs to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentActionGroupRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent that the action group belongs to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentActionGroupRequest.add_member(:action_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'actionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the action group to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentActionGroupRequest.add_member(:skip_resource_in_use_check, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'skipResourceInUseCheck', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>", "smithy.api#httpQuery" => "skipResourceInUseCheck"}))
    DeleteAgentActionGroupRequest.type = Types::DeleteAgentActionGroupRequest
    DeleteAgentActionGroupResponse.type = Types::DeleteAgentActionGroupResponse
    DeleteAgentAliasRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent that the alias belongs to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentAliasRequest.add_member(:agent_alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasId, location_name: 'agentAliasId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentAliasRequest.type = Types::DeleteAgentAliasRequest
    DeleteAgentAliasResponse.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent that the alias belongs to.</p>", "smithy.api#required" => {}}))
    DeleteAgentAliasResponse.add_member(:agent_alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasId, location_name: 'agentAliasId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias that was deleted.</p>", "smithy.api#required" => {}}))
    DeleteAgentAliasResponse.add_member(:agent_alias_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasStatus, location_name: 'agentAliasStatus', traits: {"smithy.api#documentation" => "<p>The status of the alias.</p>", "smithy.api#required" => {}}))
    DeleteAgentAliasResponse.type = Types::DeleteAgentAliasResponse
    DeleteAgentRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentRequest.add_member(:skip_resource_in_use_check, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'skipResourceInUseCheck', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>", "smithy.api#httpQuery" => "skipResourceInUseCheck"}))
    DeleteAgentRequest.type = Types::DeleteAgentRequest
    DeleteAgentResponse.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent that was deleted.</p>", "smithy.api#required" => {}}))
    DeleteAgentResponse.add_member(:agent_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'agentStatus', traits: {"smithy.api#documentation" => "<p>The status of the agent.</p>", "smithy.api#required" => {}}))
    DeleteAgentResponse.type = Types::DeleteAgentResponse
    DeleteAgentVersionRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent that the version belongs to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentVersionRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentVersionRequest.add_member(:skip_resource_in_use_check, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'skipResourceInUseCheck', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>", "smithy.api#httpQuery" => "skipResourceInUseCheck"}))
    DeleteAgentVersionRequest.type = Types::DeleteAgentVersionRequest
    DeleteAgentVersionResponse.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent that the version belongs to.</p>", "smithy.api#required" => {}}))
    DeleteAgentVersionResponse.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version that was deleted.</p>", "smithy.api#required" => {}}))
    DeleteAgentVersionResponse.add_member(:agent_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'agentStatus', traits: {"smithy.api#documentation" => "<p>The status of the agent version.</p>", "smithy.api#required" => {}}))
    DeleteAgentVersionResponse.type = Types::DeleteAgentVersionResponse
    DeleteDataSourceRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base from which to delete the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.type = Types::DeleteDataSourceRequest
    DeleteDataSourceResponse.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base to which the data source that was deleted belonged.</p>", "smithy.api#required" => {}}))
    DeleteDataSourceResponse.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source that was deleted.</p>", "smithy.api#required" => {}}))
    DeleteDataSourceResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the data source.</p>", "smithy.api#required" => {}}))
    DeleteDataSourceResponse.type = Types::DeleteDataSourceResponse
    DeleteFlowAliasRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow that the alias belongs to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFlowAliasRequest.add_member(:alias_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasIdentifier, location_name: 'aliasIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFlowAliasRequest.type = Types::DeleteFlowAliasRequest
    DeleteFlowAliasResponse.add_member(:flow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'flowId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow that the alias belongs to.</p>", "smithy.api#required" => {}}))
    DeleteFlowAliasResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    DeleteFlowAliasResponse.type = Types::DeleteFlowAliasResponse
    DeleteFlowRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFlowRequest.add_member(:skip_resource_in_use_check, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'skipResourceInUseCheck', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>", "smithy.api#httpQuery" => "skipResourceInUseCheck"}))
    DeleteFlowRequest.type = Types::DeleteFlowRequest
    DeleteFlowResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    DeleteFlowResponse.type = Types::DeleteFlowResponse
    DeleteFlowVersionRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow whose version that you want to delete</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFlowVersionRequest.add_member(:flow_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'flowVersion', traits: {"smithy.api#documentation" => "<p>The version of the flow that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFlowVersionRequest.add_member(:skip_resource_in_use_check, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'skipResourceInUseCheck', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>", "smithy.api#httpQuery" => "skipResourceInUseCheck"}))
    DeleteFlowVersionRequest.type = Types::DeleteFlowVersionRequest
    DeleteFlowVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    DeleteFlowVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the flow being deleted.</p>", "smithy.api#required" => {}}))
    DeleteFlowVersionResponse.type = Types::DeleteFlowVersionResponse
    DeleteKnowledgeBaseDocumentsRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base that is connected to the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKnowledgeBaseDocumentsRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source that contains the documents.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKnowledgeBaseDocumentsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    DeleteKnowledgeBaseDocumentsRequest.add_member(:document_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentIdentifiers, location_name: 'documentIdentifiers', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information to identify a document to delete.</p>", "smithy.api#required" => {}}))
    DeleteKnowledgeBaseDocumentsRequest.type = Types::DeleteKnowledgeBaseDocumentsRequest
    DeleteKnowledgeBaseDocumentsResponse.add_member(:document_details, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseDocumentDetails, location_name: 'documentDetails', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about the documents that were deleted.</p>"}))
    DeleteKnowledgeBaseDocumentsResponse.type = Types::DeleteKnowledgeBaseDocumentsResponse
    DeleteKnowledgeBaseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKnowledgeBaseRequest.type = Types::DeleteKnowledgeBaseRequest
    DeleteKnowledgeBaseResponse.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base that was deleted.</p>", "smithy.api#required" => {}}))
    DeleteKnowledgeBaseResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the knowledge base and whether it has been successfully deleted.</p>", "smithy.api#required" => {}}))
    DeleteKnowledgeBaseResponse.type = Types::DeleteKnowledgeBaseResponse
    DeletePromptRequest.add_member(:prompt_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptIdentifier, location_name: 'promptIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the prompt.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePromptRequest.add_member(:prompt_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'promptVersion', traits: {"smithy.api#documentation" => "<p>The version of the prompt to delete. To delete the prompt, omit this field.</p>", "smithy.api#httpQuery" => "promptVersion"}))
    DeletePromptRequest.type = Types::DeletePromptRequest
    DeletePromptResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the prompt that was deleted.</p>", "smithy.api#required" => {}}))
    DeletePromptResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the prompt that was deleted.</p>"}))
    DeletePromptResponse.type = Types::DeletePromptResponse
    DisassociateAgentCollaboratorRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>An agent ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAgentCollaboratorRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The agent's version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAgentCollaboratorRequest.add_member(:collaborator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'collaboratorId', traits: {"smithy.api#documentation" => "<p>The collaborator's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAgentCollaboratorRequest.type = Types::DisassociateAgentCollaboratorRequest
    DisassociateAgentCollaboratorResponse.type = Types::DisassociateAgentCollaboratorResponse
    DisassociateAgentKnowledgeBaseRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent from which to disassociate the knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAgentKnowledgeBaseRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent from which to disassociate the knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAgentKnowledgeBaseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base to disassociate.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAgentKnowledgeBaseRequest.type = Types::DisassociateAgentKnowledgeBaseRequest
    DisassociateAgentKnowledgeBaseResponse.type = Types::DisassociateAgentKnowledgeBaseResponse
    DocumentContent.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentDataSourceType, location_name: 'dataSourceType', traits: {"smithy.api#documentation" => "<p>The type of data source that is connected to the knowledge base to which to ingest this document.</p>", "smithy.api#required" => {}}))
    DocumentContent.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomContent, location_name: 'custom', traits: {"smithy.api#documentation" => "<p>Contains information about the content to ingest into a knowledge base connected to a custom data source.</p>"}))
    DocumentContent.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Content, location_name: 's3', traits: {"smithy.api#documentation" => "<p>Contains information about the content to ingest into a knowledge base connected to an Amazon S3 data source</p>"}))
    DocumentContent.type = Types::DocumentContent
    DocumentIdentifier.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentDataSourceType, location_name: 'dataSourceType', traits: {"smithy.api#documentation" => "<p>The type of data source connected to the knowledge base that contains the document.</p>", "smithy.api#required" => {}}))
    DocumentIdentifier.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3', traits: {"smithy.api#documentation" => "<p>Contains information that identifies the document in an S3 data source.</p>"}))
    DocumentIdentifier.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDocumentIdentifier, location_name: 'custom', traits: {"smithy.api#documentation" => "<p>Contains information that identifies the document in a custom data source.</p>"}))
    DocumentIdentifier.type = Types::DocumentIdentifier
    DocumentIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentIdentifier)
    DocumentMetadata.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataSourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the source source from which to add metadata.</p>", "smithy.api#required" => {}}))
    DocumentMetadata.add_member(:inline_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataAttributes, location_name: 'inlineAttributes', traits: {"smithy.api#documentation" => "<p>An array of objects, each of which defines a metadata attribute to associate with the content to ingest. You define the attributes inline.</p>", "smithy.api#length" => {"min" => 1, "max" => 50}}))
    DocumentMetadata.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomS3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the file containing metadata to associate with the content to ingest.</p>"}))
    DocumentMetadata.type = Types::DocumentMetadata
    DocumentStatus.add_member(:indexed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDEXED', traits: {"smithy.api#enumValue" => "INDEXED"}))
    DocumentStatus.add_member(:partially_indexed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIALLY_INDEXED', traits: {"smithy.api#enumValue" => "PARTIALLY_INDEXED"}))
    DocumentStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    DocumentStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DocumentStatus.add_member(:metadata_partially_indexed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METADATA_PARTIALLY_INDEXED', traits: {"smithy.api#enumValue" => "METADATA_PARTIALLY_INDEXED"}))
    DocumentStatus.add_member(:metadata_update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METADATA_UPDATE_FAILED', traits: {"smithy.api#enumValue" => "METADATA_UPDATE_FAILED"}))
    DocumentStatus.add_member(:ignored, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IGNORED', traits: {"smithy.api#enumValue" => "IGNORED"}))
    DocumentStatus.add_member(:not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_FOUND', traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    DocumentStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    DocumentStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DocumentStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    DocumentStatus.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DuplicateConditionExpressionFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node containing the duplicate condition expressions.</p>", "smithy.api#required" => {}}))
    DuplicateConditionExpressionFlowValidationDetails.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConditionExpression, location_name: 'expression', traits: {"smithy.api#documentation" => "<p>The duplicated condition expression.</p>", "smithy.api#required" => {}}))
    DuplicateConditionExpressionFlowValidationDetails.type = Types::DuplicateConditionExpressionFlowValidationDetails
    DuplicateConnectionsFlowValidationDetails.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The name of the source node where the duplicate connection starts.</p>", "smithy.api#required" => {}}))
    DuplicateConnectionsFlowValidationDetails.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The name of the target node where the duplicate connection ends.</p>", "smithy.api#required" => {}}))
    DuplicateConnectionsFlowValidationDetails.type = Types::DuplicateConnectionsFlowValidationDetails
    EmbeddingDataType.add_member(:float32, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT32', traits: {"smithy.api#enumValue" => "FLOAT32"}))
    EmbeddingDataType.add_member(:binary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BINARY', traits: {"smithy.api#enumValue" => "BINARY"}))
    EmbeddingModelConfiguration.add_member(:bedrock_embedding_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockEmbeddingModelConfiguration, location_name: 'bedrockEmbeddingModelConfiguration', traits: {"smithy.api#documentation" => "<p>The vector configuration details on the Bedrock embeddings model.</p>"}))
    EmbeddingModelConfiguration.type = Types::EmbeddingModelConfiguration
    EnabledMemoryTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryType)
    EnrichmentStrategyConfiguration.add_member(:method, Smithy::Schema::Shapes::ShapeRef.new(shape: EnrichmentStrategyMethod, location_name: 'method', traits: {"smithy.api#documentation" => "<p>The method used for the context enrichment strategy.</p>", "smithy.api#required" => {}}))
    EnrichmentStrategyConfiguration.type = Types::EnrichmentStrategyConfiguration
    EnrichmentStrategyMethod.add_member(:chunk_entity_extraction, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHUNK_ENTITY_EXTRACTION', traits: {"smithy.api#enumValue" => "CHUNK_ENTITY_EXTRACTION"}))
    FailureReasons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason)
    FieldForReranking.add_member(:field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'fieldName', traits: {"smithy.api#documentation" => "<p>The name of the metadata field to include or exclude during reranking.</p>", "smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#required" => {}}))
    FieldForReranking.type = Types::FieldForReranking
    FieldsForReranking.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldForReranking)
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern)
    FixedSizeChunkingConfiguration.add_member(:max_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxTokens', traits: {"smithy.api#documentation" => "<p>The maximum number of tokens to include in a chunk.</p>", "smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    FixedSizeChunkingConfiguration.add_member(:overlap_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'overlapPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of overlap between adjacent chunks of a data source.</p>", "smithy.api#range" => {"min" => 1, "max" => 99}, "smithy.api#required" => {}}))
    FixedSizeChunkingConfiguration.type = Types::FixedSizeChunkingConfiguration
    FlowAliasConcurrencyConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrencyType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of concurrency to use for parallel node execution. Specify one of the following options:</p> <ul> <li> <p> <code>Automatic</code> - Amazon Bedrock determines which nodes can be executed in parallel based on the flow definition and its dependencies.</p> </li> <li> <p> <code>Manual</code> - You specify which nodes can be executed in parallel.</p> </li> </ul>", "smithy.api#required" => {}}))
    FlowAliasConcurrencyConfiguration.add_member(:max_concurrency, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxConcurrency', traits: {"smithy.api#documentation" => "<p>The maximum number of nodes that can be executed concurrently in the flow.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    FlowAliasConcurrencyConfiguration.type = Types::FlowAliasConcurrencyConfiguration
    FlowAliasRoutingConfiguration.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasRoutingConfigurationListItem)
    FlowAliasRoutingConfigurationListItem.add_member(:flow_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'flowVersion', traits: {"smithy.api#documentation" => "<p>The version that the alias maps to.</p>"}))
    FlowAliasRoutingConfigurationListItem.type = Types::FlowAliasRoutingConfigurationListItem
    FlowAliasSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasSummary)
    FlowAliasSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the alias.</p>", "smithy.api#required" => {}}))
    FlowAliasSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the alias.</p>"}))
    FlowAliasSummary.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>A list of configurations about the versions that the alias maps to. Currently, you can only specify one.</p>", "smithy.api#required" => {}}))
    FlowAliasSummary.add_member(:concurrency_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasConcurrencyConfiguration, location_name: 'concurrencyConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies how nodes in the flow are executed concurrently.</p>"}))
    FlowAliasSummary.add_member(:flow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'flowId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    FlowAliasSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias of the flow.</p>", "smithy.api#required" => {}}))
    FlowAliasSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the alias.</p>", "smithy.api#required" => {}}))
    FlowAliasSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the alias was created.</p>", "smithy.api#required" => {}}))
    FlowAliasSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the alias was last updated.</p>", "smithy.api#required" => {}}))
    FlowAliasSummary.type = Types::FlowAliasSummary
    FlowCondition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConditionName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the condition that you can reference.</p>", "smithy.api#required" => {}}))
    FlowCondition.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConditionExpression, location_name: 'expression', traits: {"smithy.api#documentation" => "<p>Defines the condition. You must refer to at least one of the inputs in the condition. For more information, expand the Condition node section in <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html#flows-nodes\">Node types in prompt flows</a>.</p>"}))
    FlowCondition.type = Types::FlowCondition
    FlowConditionalConnectionConfiguration.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConditionName, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>The condition that triggers this connection. For more information about how to write conditions, see the <b>Condition</b> node type in the <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/node-types.html\">Node types</a> topic in the Amazon Bedrock User Guide.</p>", "smithy.api#required" => {}}))
    FlowConditionalConnectionConfiguration.type = Types::FlowConditionalConnectionConfiguration
    FlowConditions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlowCondition)
    FlowConnection.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Whether the source node that the connection begins from is a condition node (<code>Conditional</code>) or not (<code>Data</code>).</p>", "smithy.api#required" => {}}))
    FlowConnection.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the connection that you can reference.</p>", "smithy.api#required" => {}}))
    FlowConnection.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The node that the connection starts at.</p>", "smithy.api#required" => {}}))
    FlowConnection.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The node that the connection ends at.</p>", "smithy.api#required" => {}}))
    FlowConnection.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration of the connection.</p>"}))
    FlowConnection.type = Types::FlowConnection
    FlowConnectionConfiguration.add_member(:data, Types::FlowConnectionConfiguration::Data, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDataConnectionConfiguration, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The configuration of a connection originating from a node that isn't a Condition node.</p>"}))
    FlowConnectionConfiguration.add_member(:conditional, Types::FlowConnectionConfiguration::Conditional, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConditionalConnectionConfiguration, location_name: 'conditional', traits: {"smithy.api#documentation" => "<p>The configuration of a connection originating from a Condition node.</p>"}))
    FlowConnectionConfiguration.add_member(:unknown, Types::FlowConnectionConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    FlowConnectionConfiguration.type = Types::FlowConnectionConfiguration
    FlowConnectionType.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA', traits: {"smithy.api#enumValue" => "Data"}))
    FlowConnectionType.add_member(:conditional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONDITIONAL', traits: {"smithy.api#enumValue" => "Conditional"}))
    FlowConnections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnection)
    FlowDataConnectionConfiguration.add_member(:source_output, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeOutputName, location_name: 'sourceOutput', traits: {"smithy.api#documentation" => "<p>The name of the output in the source node that the connection begins from.</p>", "smithy.api#required" => {}}))
    FlowDataConnectionConfiguration.add_member(:target_input, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInputName, location_name: 'targetInput', traits: {"smithy.api#documentation" => "<p>The name of the input in the target node that the connection ends at.</p>", "smithy.api#required" => {}}))
    FlowDataConnectionConfiguration.type = Types::FlowDataConnectionConfiguration
    FlowDefinition.add_member(:nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodes, location_name: 'nodes', traits: {"smithy.api#documentation" => "<p>An array of node definitions in the flow.</p>"}))
    FlowDefinition.add_member(:connections, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnections, location_name: 'connections', traits: {"smithy.api#documentation" => "<p>An array of connection definitions in the flow.</p>"}))
    FlowDefinition.type = Types::FlowDefinition
    FlowNode.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the node.</p>", "smithy.api#required" => {}}))
    FlowNode.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of node. This value must match the name of the key that you provide in the configuration you provide in the <code>FlowNodeConfiguration</code> field.</p>", "smithy.api#required" => {}}))
    FlowNode.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>Contains configurations for the node.</p>"}))
    FlowNode.add_member(:inputs, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInputs, location_name: 'inputs', traits: {"smithy.api#documentation" => "<p>An array of objects, each of which contains information about an input into the node.</p>"}))
    FlowNode.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeOutputs, location_name: 'outputs', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about an output from the node.</p>"}))
    FlowNode.type = Types::FlowNode
    FlowNodeConfiguration.add_member(:input, Types::FlowNodeConfiguration::Input, Smithy::Schema::Shapes::ShapeRef.new(shape: InputFlowNodeConfiguration, location_name: 'input', traits: {"smithy.api#documentation" => "<p>Contains configurations for an input flow node in your flow. The first node in the flow. <code>inputs</code> can't be specified for this node.</p>"}))
    FlowNodeConfiguration.add_member(:output, Types::FlowNodeConfiguration::Output, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFlowNodeConfiguration, location_name: 'output', traits: {"smithy.api#documentation" => "<p>Contains configurations for an output flow node in your flow. The last node in the flow. <code>outputs</code> can't be specified for this node.</p>"}))
    FlowNodeConfiguration.add_member(:knowledge_base, Types::FlowNodeConfiguration::KnowledgeBase, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseFlowNodeConfiguration, location_name: 'knowledgeBase', traits: {"smithy.api#documentation" => "<p>Contains configurations for a knowledge base node in your flow. Queries a knowledge base and returns the retrieved results or generated response.</p>"}))
    FlowNodeConfiguration.add_member(:condition, Types::FlowNodeConfiguration::Condition, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionFlowNodeConfiguration, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>Contains configurations for a condition node in your flow. Defines conditions that lead to different branches of the flow.</p>"}))
    FlowNodeConfiguration.add_member(:lex, Types::FlowNodeConfiguration::Lex, Smithy::Schema::Shapes::ShapeRef.new(shape: LexFlowNodeConfiguration, location_name: 'lex', traits: {"smithy.api#documentation" => "<p>Contains configurations for a Lex node in your flow. Invokes an Amazon Lex bot to identify the intent of the input and return the intent as the output.</p>"}))
    FlowNodeConfiguration.add_member(:prompt, Types::FlowNodeConfiguration::Prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptFlowNodeConfiguration, location_name: 'prompt', traits: {"smithy.api#documentation" => "<p>Contains configurations for a prompt node in your flow. Runs a prompt and generates the model response as the output. You can use a prompt from Prompt management or you can configure one in this node.</p>"}))
    FlowNodeConfiguration.add_member(:lambda_function, Types::FlowNodeConfiguration::LambdaFunction, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionFlowNodeConfiguration, location_name: 'lambdaFunction', traits: {"smithy.api#documentation" => "<p>Contains configurations for a Lambda function node in your flow. Invokes an Lambda function.</p>"}))
    FlowNodeConfiguration.add_member(:storage, Types::FlowNodeConfiguration::Storage, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageFlowNodeConfiguration, location_name: 'storage', traits: {"smithy.api#documentation" => "<p>Contains configurations for a storage node in your flow. Stores an input in an Amazon S3 location.</p>"}))
    FlowNodeConfiguration.add_member(:agent, Types::FlowNodeConfiguration::Agent, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentFlowNodeConfiguration, location_name: 'agent', traits: {"smithy.api#documentation" => "<p>Contains configurations for an agent node in your flow. Invokes an alias of an agent and returns the response.</p>"}))
    FlowNodeConfiguration.add_member(:retrieval, Types::FlowNodeConfiguration::Retrieval, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalFlowNodeConfiguration, location_name: 'retrieval', traits: {"smithy.api#documentation" => "<p>Contains configurations for a retrieval node in your flow. Retrieves data from an Amazon S3 location and returns it as the output.</p>"}))
    FlowNodeConfiguration.add_member(:iterator, Types::FlowNodeConfiguration::Iterator, Smithy::Schema::Shapes::ShapeRef.new(shape: IteratorFlowNodeConfiguration, location_name: 'iterator', traits: {"smithy.api#documentation" => "<p>Contains configurations for an iterator node in your flow. Takes an input that is an array and iteratively sends each item of the array as an output to the following node. The size of the array is also returned in the output.</p> <p>The output flow node at the end of the flow iteration will return a response for each member of the array. To return only one response, you can include a collector node downstream from the iterator node.</p>"}))
    FlowNodeConfiguration.add_member(:collector, Types::FlowNodeConfiguration::Collector, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectorFlowNodeConfiguration, location_name: 'collector', traits: {"smithy.api#documentation" => "<p>Contains configurations for a collector node in your flow. Collects an iteration of inputs and consolidates them into an array of outputs.</p>"}))
    FlowNodeConfiguration.add_member(:inline_code, Types::FlowNodeConfiguration::InlineCode, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineCodeFlowNodeConfiguration, location_name: 'inlineCode', traits: {"smithy.api#documentation" => "<p>Contains configurations for an inline code node in your flow. Inline code nodes let you write and execute code directly within your flow, enabling data transformations, custom logic, and integrations without needing an external Lambda function.</p>"}))
    FlowNodeConfiguration.add_member(:loop, Types::FlowNodeConfiguration::Loop, Smithy::Schema::Shapes::ShapeRef.new(shape: LoopFlowNodeConfiguration, location_name: 'loop', traits: {"smithy.api#documentation" => "<p>Contains configurations for a DoWhile loop in your flow.</p>"}))
    FlowNodeConfiguration.add_member(:loop_input, Types::FlowNodeConfiguration::LoopInput, Smithy::Schema::Shapes::ShapeRef.new(shape: LoopInputFlowNodeConfiguration, location_name: 'loopInput', traits: {"smithy.api#documentation" => "<p>Contains input node configurations for a DoWhile loop in your flow.</p>"}))
    FlowNodeConfiguration.add_member(:loop_controller, Types::FlowNodeConfiguration::LoopController, Smithy::Schema::Shapes::ShapeRef.new(shape: LoopControllerFlowNodeConfiguration, location_name: 'loopController', traits: {"smithy.api#documentation" => "<p>Contains controller node configurations for a DoWhile loop in your flow.</p>"}))
    FlowNodeConfiguration.add_member(:unknown, Types::FlowNodeConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    FlowNodeConfiguration.type = Types::FlowNodeConfiguration
    FlowNodeIODataType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "String"}))
    FlowNodeIODataType.add_member(:number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER', traits: {"smithy.api#enumValue" => "Number"}))
    FlowNodeIODataType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "Boolean"}))
    FlowNodeIODataType.add_member(:object, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT', traits: {"smithy.api#enumValue" => "Object"}))
    FlowNodeIODataType.add_member(:array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARRAY', traits: {"smithy.api#enumValue" => "Array"}))
    FlowNodeInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInputName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Specifies a name for the input that you can reference.</p>", "smithy.api#required" => {}}))
    FlowNodeInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeIODataType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies the data type of the input. If the input doesn't match this type at runtime, a validation error will be thrown.</p>", "smithy.api#required" => {}}))
    FlowNodeInput.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInputExpression, location_name: 'expression', traits: {"smithy.api#documentation" => "<p>An expression that formats the input for the node. For an explanation of how to create expressions, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/flows-expressions.html\">Expressions in Prompt flows in Amazon Bedrock</a>.</p>", "smithy.api#required" => {}}))
    FlowNodeInput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInputCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>Specifies how input data flows between iterations in a DoWhile loop.</p> <ul> <li> <p> <code>LoopCondition</code> - Controls whether the loop continues by evaluating condition expressions against the input data. Use this category to define the condition that determines if the loop should continue. </p> </li> <li> <p> <code>ReturnValueToLoopStart</code> - Defines data to pass back to the start of the loop's next iteration. Use this category for variables that you want to update for each loop iteration.</p> </li> <li> <p> <code>ExitLoop</code> - Defines the value that's available once the loop ends. Use this category to expose loop results to nodes outside the loop.</p> </li> </ul>"}))
    FlowNodeInput.type = Types::FlowNodeInput
    FlowNodeInputCategory.add_member(:loop_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOOP_CONDITION', traits: {"smithy.api#enumValue" => "LoopCondition"}))
    FlowNodeInputCategory.add_member(:return_value_to_loop_start, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETURN_VALUE_TO_LOOP_START', traits: {"smithy.api#enumValue" => "ReturnValueToLoopStart"}))
    FlowNodeInputCategory.add_member(:exit_loop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXIT_LOOP', traits: {"smithy.api#enumValue" => "ExitLoop"}))
    FlowNodeInputs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInput)
    FlowNodeOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeOutputName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the output that you can reference.</p>", "smithy.api#required" => {}}))
    FlowNodeOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeIODataType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The data type of the output. If the output doesn't match this type at runtime, a validation error will be thrown.</p>", "smithy.api#required" => {}}))
    FlowNodeOutput.type = Types::FlowNodeOutput
    FlowNodeOutputs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeOutput)
    FlowNodeType.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INPUT', traits: {"smithy.api#enumValue" => "Input"}))
    FlowNodeType.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUTPUT', traits: {"smithy.api#enumValue" => "Output"}))
    FlowNodeType.add_member(:knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KNOWLEDGE_BASE', traits: {"smithy.api#enumValue" => "KnowledgeBase"}))
    FlowNodeType.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONDITION', traits: {"smithy.api#enumValue" => "Condition"}))
    FlowNodeType.add_member(:lex, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEX', traits: {"smithy.api#enumValue" => "Lex"}))
    FlowNodeType.add_member(:prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROMPT', traits: {"smithy.api#enumValue" => "Prompt"}))
    FlowNodeType.add_member(:lambda_function, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA_FUNCTION', traits: {"smithy.api#enumValue" => "LambdaFunction"}))
    FlowNodeType.add_member(:storage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE', traits: {"smithy.api#enumValue" => "Storage"}))
    FlowNodeType.add_member(:agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGENT', traits: {"smithy.api#enumValue" => "Agent"}))
    FlowNodeType.add_member(:retrieval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRIEVAL', traits: {"smithy.api#enumValue" => "Retrieval"}))
    FlowNodeType.add_member(:iterator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ITERATOR', traits: {"smithy.api#enumValue" => "Iterator"}))
    FlowNodeType.add_member(:collector, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLLECTOR', traits: {"smithy.api#enumValue" => "Collector"}))
    FlowNodeType.add_member(:inline_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INLINE_CODE', traits: {"smithy.api#enumValue" => "InlineCode"}))
    FlowNodeType.add_member(:loop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOOP', traits: {"smithy.api#enumValue" => "Loop"}))
    FlowNodeType.add_member(:loop_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOOP_INPUT', traits: {"smithy.api#enumValue" => "LoopInput"}))
    FlowNodeType.add_member(:loop_controller, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOOP_CONTROLLER', traits: {"smithy.api#enumValue" => "LoopController"}))
    FlowNodes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNode)
    FlowStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    FlowStatus.add_member(:prepared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARED', traits: {"smithy.api#enumValue" => "Prepared"}))
    FlowStatus.add_member(:preparing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING', traits: {"smithy.api#enumValue" => "Preparing"}))
    FlowStatus.add_member(:not_prepared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_PREPARED', traits: {"smithy.api#enumValue" => "NotPrepared"}))
    FlowSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlowSummary)
    FlowSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the flow.</p>", "smithy.api#required" => {}}))
    FlowSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the flow.</p>"}))
    FlowSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    FlowSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flow.</p>", "smithy.api#required" => {}}))
    FlowSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the flow. The following statuses are possible:</p> <ul> <li> <p>NotPrepared – The flow has been created or updated, but hasn't been prepared. If you just created the flow, you can't test it. If you updated the flow, the <code>DRAFT</code> version won't contain the latest changes for testing. Send a <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PrepareFlow.html\">PrepareFlow</a> request to package the latest changes into the <code>DRAFT</code> version.</p> </li> <li> <p>Preparing – The flow is being prepared so that the <code>DRAFT</code> version contains the latest changes for testing.</p> </li> <li> <p>Prepared – The flow is prepared and the <code>DRAFT</code> version contains the latest changes for testing.</p> </li> <li> <p>Failed – The last API operation that you invoked on the flow failed. Send a <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetFlow.html\">GetFlow</a> request and check the error message in the <code>validations</code> field.</p> </li> </ul>", "smithy.api#required" => {}}))
    FlowSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was created.</p>", "smithy.api#required" => {}}))
    FlowSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was last updated.</p>", "smithy.api#required" => {}}))
    FlowSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The latest version of the flow.</p>", "smithy.api#required" => {}}))
    FlowSummary.type = Types::FlowSummary
    FlowValidation.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message describing the validation error.</p>", "smithy.api#required" => {}}))
    FlowValidation.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowValidationSeverity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>The severity of the issue described in the message.</p>", "smithy.api#required" => {}}))
    FlowValidation.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowValidationDetails, location_name: 'details', traits: {"smithy.api#documentation" => "<p>Specific details about the validation issue encountered in the flow.</p>"}))
    FlowValidation.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowValidationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of validation issue encountered in the flow.</p>"}))
    FlowValidation.type = Types::FlowValidation
    FlowValidationDetails.add_member(:cyclic_connection, Types::FlowValidationDetails::CyclicConnection, Smithy::Schema::Shapes::ShapeRef.new(shape: CyclicConnectionFlowValidationDetails, location_name: 'cyclicConnection', traits: {"smithy.api#documentation" => "<p>Details about a cyclic connection in the flow.</p>"}))
    FlowValidationDetails.add_member(:duplicate_connections, Types::FlowValidationDetails::DuplicateConnections, Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateConnectionsFlowValidationDetails, location_name: 'duplicateConnections', traits: {"smithy.api#documentation" => "<p>Details about duplicate connections between nodes.</p>"}))
    FlowValidationDetails.add_member(:duplicate_condition_expression, Types::FlowValidationDetails::DuplicateConditionExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateConditionExpressionFlowValidationDetails, location_name: 'duplicateConditionExpression', traits: {"smithy.api#documentation" => "<p>Details about duplicate condition expressions in a node.</p>"}))
    FlowValidationDetails.add_member(:unreachable_node, Types::FlowValidationDetails::UnreachableNode, Smithy::Schema::Shapes::ShapeRef.new(shape: UnreachableNodeFlowValidationDetails, location_name: 'unreachableNode', traits: {"smithy.api#documentation" => "<p>Details about an unreachable node in the flow.</p>"}))
    FlowValidationDetails.add_member(:unknown_connection_source, Types::FlowValidationDetails::UnknownConnectionSource, Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownConnectionSourceFlowValidationDetails, location_name: 'unknownConnectionSource', traits: {"smithy.api#documentation" => "<p>Details about an unknown source node for a connection.</p>"}))
    FlowValidationDetails.add_member(:unknown_connection_source_output, Types::FlowValidationDetails::UnknownConnectionSourceOutput, Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownConnectionSourceOutputFlowValidationDetails, location_name: 'unknownConnectionSourceOutput', traits: {"smithy.api#documentation" => "<p>Details about an unknown source output for a connection.</p>"}))
    FlowValidationDetails.add_member(:unknown_connection_target, Types::FlowValidationDetails::UnknownConnectionTarget, Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownConnectionTargetFlowValidationDetails, location_name: 'unknownConnectionTarget', traits: {"smithy.api#documentation" => "<p>Details about an unknown target node for a connection.</p>"}))
    FlowValidationDetails.add_member(:unknown_connection_target_input, Types::FlowValidationDetails::UnknownConnectionTargetInput, Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownConnectionTargetInputFlowValidationDetails, location_name: 'unknownConnectionTargetInput', traits: {"smithy.api#documentation" => "<p>Details about an unknown target input for a connection.</p>"}))
    FlowValidationDetails.add_member(:unknown_connection_condition, Types::FlowValidationDetails::UnknownConnectionCondition, Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownConnectionConditionFlowValidationDetails, location_name: 'unknownConnectionCondition', traits: {"smithy.api#documentation" => "<p>Details about an unknown condition for a connection.</p>"}))
    FlowValidationDetails.add_member(:malformed_condition_expression, Types::FlowValidationDetails::MalformedConditionExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedConditionExpressionFlowValidationDetails, location_name: 'malformedConditionExpression', traits: {"smithy.api#documentation" => "<p>Details about a malformed condition expression in a node.</p>"}))
    FlowValidationDetails.add_member(:malformed_node_input_expression, Types::FlowValidationDetails::MalformedNodeInputExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedNodeInputExpressionFlowValidationDetails, location_name: 'malformedNodeInputExpression', traits: {"smithy.api#documentation" => "<p>Details about a malformed input expression in a node.</p>"}))
    FlowValidationDetails.add_member(:mismatched_node_input_type, Types::FlowValidationDetails::MismatchedNodeInputType, Smithy::Schema::Shapes::ShapeRef.new(shape: MismatchedNodeInputTypeFlowValidationDetails, location_name: 'mismatchedNodeInputType', traits: {"smithy.api#documentation" => "<p>Details about mismatched input data types in a node.</p>"}))
    FlowValidationDetails.add_member(:mismatched_node_output_type, Types::FlowValidationDetails::MismatchedNodeOutputType, Smithy::Schema::Shapes::ShapeRef.new(shape: MismatchedNodeOutputTypeFlowValidationDetails, location_name: 'mismatchedNodeOutputType', traits: {"smithy.api#documentation" => "<p>Details about mismatched output data types in a node.</p>"}))
    FlowValidationDetails.add_member(:incompatible_connection_data_type, Types::FlowValidationDetails::IncompatibleConnectionDataType, Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleConnectionDataTypeFlowValidationDetails, location_name: 'incompatibleConnectionDataType', traits: {"smithy.api#documentation" => "<p>Details about incompatible data types in a connection.</p>"}))
    FlowValidationDetails.add_member(:missing_connection_configuration, Types::FlowValidationDetails::MissingConnectionConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingConnectionConfigurationFlowValidationDetails, location_name: 'missingConnectionConfiguration', traits: {"smithy.api#documentation" => "<p>Details about missing configuration for a connection.</p>"}))
    FlowValidationDetails.add_member(:missing_default_condition, Types::FlowValidationDetails::MissingDefaultCondition, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingDefaultConditionFlowValidationDetails, location_name: 'missingDefaultCondition', traits: {"smithy.api#documentation" => "<p>Details about a missing default condition in a conditional node.</p>"}))
    FlowValidationDetails.add_member(:missing_ending_nodes, Types::FlowValidationDetails::MissingEndingNodes, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingEndingNodesFlowValidationDetails, location_name: 'missingEndingNodes', traits: {"smithy.api#documentation" => "<p>Details about missing ending nodes in the flow.</p>"}))
    FlowValidationDetails.add_member(:missing_node_configuration, Types::FlowValidationDetails::MissingNodeConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingNodeConfigurationFlowValidationDetails, location_name: 'missingNodeConfiguration', traits: {"smithy.api#documentation" => "<p>Details about missing configuration for a node.</p>"}))
    FlowValidationDetails.add_member(:missing_node_input, Types::FlowValidationDetails::MissingNodeInput, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingNodeInputFlowValidationDetails, location_name: 'missingNodeInput', traits: {"smithy.api#documentation" => "<p>Details about a missing required input in a node.</p>"}))
    FlowValidationDetails.add_member(:missing_node_output, Types::FlowValidationDetails::MissingNodeOutput, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingNodeOutputFlowValidationDetails, location_name: 'missingNodeOutput', traits: {"smithy.api#documentation" => "<p>Details about a missing required output in a node.</p>"}))
    FlowValidationDetails.add_member(:missing_starting_nodes, Types::FlowValidationDetails::MissingStartingNodes, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingStartingNodesFlowValidationDetails, location_name: 'missingStartingNodes', traits: {"smithy.api#documentation" => "<p>Details about missing starting nodes in the flow.</p>"}))
    FlowValidationDetails.add_member(:multiple_node_input_connections, Types::FlowValidationDetails::MultipleNodeInputConnections, Smithy::Schema::Shapes::ShapeRef.new(shape: MultipleNodeInputConnectionsFlowValidationDetails, location_name: 'multipleNodeInputConnections', traits: {"smithy.api#documentation" => "<p>Details about multiple connections to a single node input.</p>"}))
    FlowValidationDetails.add_member(:unfulfilled_node_input, Types::FlowValidationDetails::UnfulfilledNodeInput, Smithy::Schema::Shapes::ShapeRef.new(shape: UnfulfilledNodeInputFlowValidationDetails, location_name: 'unfulfilledNodeInput', traits: {"smithy.api#documentation" => "<p>Details about an unfulfilled node input with no valid connections.</p>"}))
    FlowValidationDetails.add_member(:unsatisfied_connection_conditions, Types::FlowValidationDetails::UnsatisfiedConnectionConditions, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsatisfiedConnectionConditionsFlowValidationDetails, location_name: 'unsatisfiedConnectionConditions', traits: {"smithy.api#documentation" => "<p>Details about unsatisfied conditions for a connection.</p>"}))
    FlowValidationDetails.add_member(:unspecified, Types::FlowValidationDetails::Unspecified, Smithy::Schema::Shapes::ShapeRef.new(shape: UnspecifiedFlowValidationDetails, location_name: 'unspecified', traits: {"smithy.api#documentation" => "<p>Details about an unspecified validation.</p>"}))
    FlowValidationDetails.add_member(:unknown_node_input, Types::FlowValidationDetails::UnknownNodeInput, Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownNodeInputFlowValidationDetails, location_name: 'unknownNodeInput', traits: {"smithy.api#documentation" => "<p>Details about an unknown input for a node.</p>"}))
    FlowValidationDetails.add_member(:unknown_node_output, Types::FlowValidationDetails::UnknownNodeOutput, Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownNodeOutputFlowValidationDetails, location_name: 'unknownNodeOutput', traits: {"smithy.api#documentation" => "<p>Details about an unknown output for a node.</p>"}))
    FlowValidationDetails.add_member(:missing_loop_input_node, Types::FlowValidationDetails::MissingLoopInputNode, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingLoopInputNodeFlowValidationDetails, location_name: 'missingLoopInputNode', traits: {"smithy.api#documentation" => "<p>Details about a flow that's missing a required <code>LoopInput</code> node in a DoWhile loop.</p>"}))
    FlowValidationDetails.add_member(:missing_loop_controller_node, Types::FlowValidationDetails::MissingLoopControllerNode, Smithy::Schema::Shapes::ShapeRef.new(shape: MissingLoopControllerNodeFlowValidationDetails, location_name: 'missingLoopControllerNode', traits: {"smithy.api#documentation" => "<p>Details about a flow that's missing a required <code>LoopController</code> node in a DoWhile loop.</p>"}))
    FlowValidationDetails.add_member(:multiple_loop_input_nodes, Types::FlowValidationDetails::MultipleLoopInputNodes, Smithy::Schema::Shapes::ShapeRef.new(shape: MultipleLoopInputNodesFlowValidationDetails, location_name: 'multipleLoopInputNodes', traits: {"smithy.api#documentation" => "<p>Details about a flow that contains multiple <code>LoopInput</code> nodes in a DoWhile loop.</p>"}))
    FlowValidationDetails.add_member(:multiple_loop_controller_nodes, Types::FlowValidationDetails::MultipleLoopControllerNodes, Smithy::Schema::Shapes::ShapeRef.new(shape: MultipleLoopControllerNodesFlowValidationDetails, location_name: 'multipleLoopControllerNodes', traits: {"smithy.api#documentation" => "<p>Details about a flow that contains multiple <code>LoopController</code> nodes in a DoWhile loop.</p>"}))
    FlowValidationDetails.add_member(:loop_incompatible_node_type, Types::FlowValidationDetails::LoopIncompatibleNodeType, Smithy::Schema::Shapes::ShapeRef.new(shape: LoopIncompatibleNodeTypeFlowValidationDetails, location_name: 'loopIncompatibleNodeType', traits: {"smithy.api#documentation" => "<p>Details about a flow that includes incompatible node types in a DoWhile loop.</p>"}))
    FlowValidationDetails.add_member(:invalid_loop_boundary, Types::FlowValidationDetails::InvalidLoopBoundary, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLoopBoundaryFlowValidationDetails, location_name: 'invalidLoopBoundary', traits: {"smithy.api#documentation" => "<p>Details about a flow that includes connections that violate loop boundary rules.</p>"}))
    FlowValidationDetails.add_member(:unknown, Types::FlowValidationDetails::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    FlowValidationDetails.type = Types::FlowValidationDetails
    FlowValidationSeverity.add_member(:warning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNING', traits: {"smithy.api#enumValue" => "Warning"}))
    FlowValidationSeverity.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "Error"}))
    FlowValidationType.add_member(:cyclic_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CYCLIC_CONNECTION', traits: {"smithy.api#enumValue" => "CyclicConnection"}))
    FlowValidationType.add_member(:duplicate_connections, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_CONNECTIONS', traits: {"smithy.api#enumValue" => "DuplicateConnections"}))
    FlowValidationType.add_member(:duplicate_condition_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_CONDITION_EXPRESSION', traits: {"smithy.api#enumValue" => "DuplicateConditionExpression"}))
    FlowValidationType.add_member(:unreachable_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNREACHABLE_NODE', traits: {"smithy.api#enumValue" => "UnreachableNode"}))
    FlowValidationType.add_member(:unknown_connection_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_CONNECTION_SOURCE', traits: {"smithy.api#enumValue" => "UnknownConnectionSource"}))
    FlowValidationType.add_member(:unknown_connection_source_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_CONNECTION_SOURCE_OUTPUT', traits: {"smithy.api#enumValue" => "UnknownConnectionSourceOutput"}))
    FlowValidationType.add_member(:unknown_connection_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_CONNECTION_TARGET', traits: {"smithy.api#enumValue" => "UnknownConnectionTarget"}))
    FlowValidationType.add_member(:unknown_connection_target_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_CONNECTION_TARGET_INPUT', traits: {"smithy.api#enumValue" => "UnknownConnectionTargetInput"}))
    FlowValidationType.add_member(:unknown_connection_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_CONNECTION_CONDITION', traits: {"smithy.api#enumValue" => "UnknownConnectionCondition"}))
    FlowValidationType.add_member(:malformed_condition_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MALFORMED_CONDITION_EXPRESSION', traits: {"smithy.api#enumValue" => "MalformedConditionExpression"}))
    FlowValidationType.add_member(:malformed_node_input_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MALFORMED_NODE_INPUT_EXPRESSION', traits: {"smithy.api#enumValue" => "MalformedNodeInputExpression"}))
    FlowValidationType.add_member(:mismatched_node_input_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISMATCHED_NODE_INPUT_TYPE', traits: {"smithy.api#enumValue" => "MismatchedNodeInputType"}))
    FlowValidationType.add_member(:mismatched_node_output_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISMATCHED_NODE_OUTPUT_TYPE', traits: {"smithy.api#enumValue" => "MismatchedNodeOutputType"}))
    FlowValidationType.add_member(:incompatible_connection_data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCOMPATIBLE_CONNECTION_DATA_TYPE', traits: {"smithy.api#enumValue" => "IncompatibleConnectionDataType"}))
    FlowValidationType.add_member(:missing_connection_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_CONNECTION_CONFIGURATION', traits: {"smithy.api#enumValue" => "MissingConnectionConfiguration"}))
    FlowValidationType.add_member(:missing_default_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_DEFAULT_CONDITION', traits: {"smithy.api#enumValue" => "MissingDefaultCondition"}))
    FlowValidationType.add_member(:missing_ending_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_ENDING_NODES', traits: {"smithy.api#enumValue" => "MissingEndingNodes"}))
    FlowValidationType.add_member(:missing_node_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_NODE_CONFIGURATION', traits: {"smithy.api#enumValue" => "MissingNodeConfiguration"}))
    FlowValidationType.add_member(:missing_node_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_NODE_INPUT', traits: {"smithy.api#enumValue" => "MissingNodeInput"}))
    FlowValidationType.add_member(:missing_node_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_NODE_OUTPUT', traits: {"smithy.api#enumValue" => "MissingNodeOutput"}))
    FlowValidationType.add_member(:missing_starting_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_STARTING_NODES', traits: {"smithy.api#enumValue" => "MissingStartingNodes"}))
    FlowValidationType.add_member(:multiple_node_input_connections, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTIPLE_NODE_INPUT_CONNECTIONS', traits: {"smithy.api#enumValue" => "MultipleNodeInputConnections"}))
    FlowValidationType.add_member(:unfulfilled_node_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNFULFILLED_NODE_INPUT', traits: {"smithy.api#enumValue" => "UnfulfilledNodeInput"}))
    FlowValidationType.add_member(:unsatisfied_connection_conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSATISFIED_CONNECTION_CONDITIONS', traits: {"smithy.api#enumValue" => "UnsatisfiedConnectionConditions"}))
    FlowValidationType.add_member(:unspecified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSPECIFIED', traits: {"smithy.api#enumValue" => "Unspecified"}))
    FlowValidationType.add_member(:unknown_node_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_NODE_INPUT', traits: {"smithy.api#enumValue" => "UnknownNodeInput"}))
    FlowValidationType.add_member(:unknown_node_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_NODE_OUTPUT', traits: {"smithy.api#enumValue" => "UnknownNodeOutput"}))
    FlowValidationType.add_member(:missing_loop_input_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_LOOP_INPUT_NODE', traits: {"smithy.api#enumValue" => "MissingLoopInputNode"}))
    FlowValidationType.add_member(:missing_loop_controller_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_LOOP_CONTROLLER_NODE', traits: {"smithy.api#enumValue" => "MissingLoopControllerNode"}))
    FlowValidationType.add_member(:multiple_loop_input_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTIPLE_LOOP_INPUT_NODES', traits: {"smithy.api#enumValue" => "MultipleLoopInputNodes"}))
    FlowValidationType.add_member(:multiple_loop_controller_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTIPLE_LOOP_CONTROLLER_NODES', traits: {"smithy.api#enumValue" => "MultipleLoopControllerNodes"}))
    FlowValidationType.add_member(:loop_incompatible_node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOOP_INCOMPATIBLE_NODE_TYPE', traits: {"smithy.api#enumValue" => "LoopIncompatibleNodeType"}))
    FlowValidationType.add_member(:invalid_loop_boundary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_LOOP_BOUNDARY', traits: {"smithy.api#enumValue" => "InvalidLoopBoundary"}))
    FlowValidations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlowValidation)
    FlowVersionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlowVersionSummary)
    FlowVersionSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    FlowVersionSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flow that the version belongs to.</p>", "smithy.api#required" => {}}))
    FlowVersionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the flow.</p>", "smithy.api#required" => {}}))
    FlowVersionSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at the version was created.</p>", "smithy.api#required" => {}}))
    FlowVersionSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the flow.</p>", "smithy.api#required" => {}}))
    FlowVersionSummary.type = Types::FlowVersionSummary
    Function.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the function.</p>", "smithy.api#required" => {}}))
    Function.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the function and its purpose.</p>"}))
    Function.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters that the agent elicits from the user to fulfill the function.</p>"}))
    Function.add_member(:require_confirmation, Smithy::Schema::Shapes::ShapeRef.new(shape: RequireConfirmation, location_name: 'requireConfirmation', traits: {"smithy.api#documentation" => "<p>Contains information if user confirmation is required to invoke the function.</p>"}))
    Function.type = Types::Function
    FunctionSchema.add_member(:functions, Types::FunctionSchema::Functions, Smithy::Schema::Shapes::ShapeRef.new(shape: Functions, location_name: 'functions', traits: {"smithy.api#documentation" => "<p>A list of functions that each define an action in the action group.</p>"}))
    FunctionSchema.add_member(:unknown, Types::FunctionSchema::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    FunctionSchema.type = Types::FunctionSchema
    Functions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Function)
    GetAgentActionGroupRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent that the action group belongs to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentActionGroupRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent that the action group belongs to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentActionGroupRequest.add_member(:action_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'actionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the action group for which to get information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentActionGroupRequest.type = Types::GetAgentActionGroupRequest
    GetAgentActionGroupResponse.add_member(:agent_action_group, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentActionGroup, location_name: 'agentActionGroup', traits: {"smithy.api#documentation" => "<p>Contains details about the action group.</p>", "smithy.api#required" => {}}))
    GetAgentActionGroupResponse.type = Types::GetAgentActionGroupResponse
    GetAgentAliasRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent to which the alias to get information belongs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentAliasRequest.add_member(:agent_alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasId, location_name: 'agentAliasId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias for which to get information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentAliasRequest.type = Types::GetAgentAliasRequest
    GetAgentAliasResponse.add_member(:agent_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAlias, location_name: 'agentAlias', traits: {"smithy.api#documentation" => "<p>Contains information about the alias.</p>", "smithy.api#required" => {}}))
    GetAgentAliasResponse.type = Types::GetAgentAliasResponse
    GetAgentCollaboratorRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The agent's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentCollaboratorRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The agent's version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentCollaboratorRequest.add_member(:collaborator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'collaboratorId', traits: {"smithy.api#documentation" => "<p>The collaborator's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentCollaboratorRequest.type = Types::GetAgentCollaboratorRequest
    GetAgentCollaboratorResponse.add_member(:agent_collaborator, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentCollaborator, location_name: 'agentCollaborator', traits: {"smithy.api#documentation" => "<p>Details about the collaborator.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetAgentCollaboratorResponse.type = Types::GetAgentCollaboratorResponse
    GetAgentKnowledgeBaseRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent with which the knowledge base is associated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentKnowledgeBaseRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent with which the knowledge base is associated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentKnowledgeBaseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base associated with the agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentKnowledgeBaseRequest.type = Types::GetAgentKnowledgeBaseRequest
    GetAgentKnowledgeBaseResponse.add_member(:agent_knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentKnowledgeBase, location_name: 'agentKnowledgeBase', traits: {"smithy.api#documentation" => "<p>Contains details about a knowledge base attached to an agent.</p>", "smithy.api#required" => {}}))
    GetAgentKnowledgeBaseResponse.type = Types::GetAgentKnowledgeBaseResponse
    GetAgentRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentRequest.type = Types::GetAgentRequest
    GetAgentResponse.add_member(:agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Agent, location_name: 'agent', traits: {"smithy.api#documentation" => "<p>Contains details about the agent.</p>", "smithy.api#required" => {}}))
    GetAgentResponse.type = Types::GetAgentResponse
    GetAgentVersionRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentVersionRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentVersionRequest.type = Types::GetAgentVersionRequest
    GetAgentVersionResponse.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>Contains details about the version of the agent.</p>", "smithy.api#required" => {}}))
    GetAgentVersionResponse.type = Types::GetAgentVersionResponse
    GetDataSourceRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base for the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.type = Types::GetDataSourceRequest
    GetDataSourceResponse.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>Contains details about the data source.</p>", "smithy.api#required" => {}}))
    GetDataSourceResponse.type = Types::GetDataSourceResponse
    GetFlowAliasRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow that the alias belongs to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFlowAliasRequest.add_member(:alias_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasIdentifier, location_name: 'aliasIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias for which to retrieve information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFlowAliasRequest.type = Types::GetFlowAliasRequest
    GetFlowAliasResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the alias.</p>", "smithy.api#required" => {}}))
    GetFlowAliasResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the flow.</p>"}))
    GetFlowAliasResponse.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>Contains information about the version that the alias is mapped to.</p>", "smithy.api#required" => {}}))
    GetFlowAliasResponse.add_member(:concurrency_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasConcurrencyConfiguration, location_name: 'concurrencyConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies how nodes in the flow are executed in parallel.</p>"}))
    GetFlowAliasResponse.add_member(:flow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'flowId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow that the alias belongs to.</p>", "smithy.api#required" => {}}))
    GetFlowAliasResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias of the flow.</p>", "smithy.api#required" => {}}))
    GetFlowAliasResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flow.</p>", "smithy.api#required" => {}}))
    GetFlowAliasResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was created.</p>", "smithy.api#required" => {}}))
    GetFlowAliasResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the alias was last updated.</p>", "smithy.api#required" => {}}))
    GetFlowAliasResponse.type = Types::GetFlowAliasResponse
    GetFlowRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFlowRequest.type = Types::GetFlowRequest
    GetFlowResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the flow.</p>", "smithy.api#required" => {}}))
    GetFlowResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the flow.</p>"}))
    GetFlowResponse.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role with permissions to create a flow. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html\">Create a service row for flows</a> in the Amazon Bedrock User Guide.</p>", "smithy.api#required" => {}}))
    GetFlowResponse.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key that the flow is encrypted with.</p>"}))
    GetFlowResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    GetFlowResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flow.</p>", "smithy.api#required" => {}}))
    GetFlowResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the flow. The following statuses are possible:</p> <ul> <li> <p>NotPrepared – The flow has been created or updated, but hasn't been prepared. If you just created the flow, you can't test it. If you updated the flow, the <code>DRAFT</code> version won't contain the latest changes for testing. Send a <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PrepareFlow.html\">PrepareFlow</a> request to package the latest changes into the <code>DRAFT</code> version.</p> </li> <li> <p>Preparing – The flow is being prepared so that the <code>DRAFT</code> version contains the latest changes for testing.</p> </li> <li> <p>Prepared – The flow is prepared and the <code>DRAFT</code> version contains the latest changes for testing.</p> </li> <li> <p>Failed – The last API operation that you invoked on the flow failed. Send a <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetFlow.html\">GetFlow</a> request and check the error message in the <code>validations</code> field.</p> </li> </ul>", "smithy.api#required" => {}}))
    GetFlowResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was created.</p>", "smithy.api#required" => {}}))
    GetFlowResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was last updated.</p>", "smithy.api#required" => {}}))
    GetFlowResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the flow for which information was retrieved.</p>", "smithy.api#required" => {}}))
    GetFlowResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The definition of the nodes and connections between the nodes in the flow.</p>"}))
    GetFlowResponse.add_member(:validations, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowValidations, location_name: 'validations', traits: {"smithy.api#documentation" => "<p>A list of validation error messages related to the last failed operation on the flow.</p>"}))
    GetFlowResponse.type = Types::GetFlowResponse
    GetFlowVersionRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow for which to get information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFlowVersionRequest.add_member(:flow_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'flowVersion', traits: {"smithy.api#documentation" => "<p>The version of the flow for which to get information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFlowVersionRequest.type = Types::GetFlowVersionRequest
    GetFlowVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the version.</p>", "smithy.api#required" => {}}))
    GetFlowVersionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the flow.</p>"}))
    GetFlowVersionResponse.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role with permissions to create a flow. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html\">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>", "smithy.api#required" => {}}))
    GetFlowVersionResponse.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key that the version of the flow is encrypted with.</p>"}))
    GetFlowVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    GetFlowVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flow.</p>", "smithy.api#required" => {}}))
    GetFlowVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the flow.</p>", "smithy.api#required" => {}}))
    GetFlowVersionResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was created.</p>", "smithy.api#required" => {}}))
    GetFlowVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericalVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the flow for which information was retrieved.</p>", "smithy.api#required" => {}}))
    GetFlowVersionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The definition of the nodes and connections between nodes in the flow.</p>"}))
    GetFlowVersionResponse.type = Types::GetFlowVersionResponse
    GetIngestionJobRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base for the data ingestion job you want to get information on.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIngestionJobRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source for the data ingestion job you want to get information on.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIngestionJobRequest.add_member(:ingestion_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ingestionJobId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data ingestion job you want to get information on.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIngestionJobRequest.type = Types::GetIngestionJobRequest
    GetIngestionJobResponse.add_member(:ingestion_job, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJob, location_name: 'ingestionJob', traits: {"smithy.api#documentation" => "<p>Contains details about the data ingestion job.</p>", "smithy.api#required" => {}}))
    GetIngestionJobResponse.type = Types::GetIngestionJobResponse
    GetKnowledgeBaseDocumentsRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base that is connected to the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKnowledgeBaseDocumentsRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source that contains the documents.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKnowledgeBaseDocumentsRequest.add_member(:document_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentIdentifiers, location_name: 'documentIdentifiers', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information to identify a document for which to retrieve information.</p>", "smithy.api#required" => {}}))
    GetKnowledgeBaseDocumentsRequest.type = Types::GetKnowledgeBaseDocumentsRequest
    GetKnowledgeBaseDocumentsResponse.add_member(:document_details, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseDocumentDetails, location_name: 'documentDetails', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about the documents that were retrieved.</p>"}))
    GetKnowledgeBaseDocumentsResponse.type = Types::GetKnowledgeBaseDocumentsResponse
    GetKnowledgeBaseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base you want to get information on.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKnowledgeBaseRequest.type = Types::GetKnowledgeBaseRequest
    GetKnowledgeBaseResponse.add_member(:knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBase, location_name: 'knowledgeBase', traits: {"smithy.api#documentation" => "<p>Contains details about the knowledge base.</p>", "smithy.api#required" => {}}))
    GetKnowledgeBaseResponse.type = Types::GetKnowledgeBaseResponse
    GetPromptRequest.add_member(:prompt_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptIdentifier, location_name: 'promptIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the prompt.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPromptRequest.add_member(:prompt_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'promptVersion', traits: {"smithy.api#documentation" => "<p>The version of the prompt about which you want to retrieve information. Omit this field to return information about the working draft of the prompt.</p>", "smithy.api#httpQuery" => "promptVersion"}))
    GetPromptRequest.type = Types::GetPromptRequest
    GetPromptResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the prompt.</p>", "smithy.api#required" => {}}))
    GetPromptResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The descriptino of the prompt.</p>"}))
    GetPromptResponse.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key that the prompt is encrypted with.</p>"}))
    GetPromptResponse.add_member(:default_variant, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantName, location_name: 'defaultVariant', traits: {"smithy.api#documentation" => "<p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html\">PromptVariant</a> object.</p>"}))
    GetPromptResponse.add_member(:variants, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantList, location_name: 'variants', traits: {"smithy.api#documentation" => "<p>A list of objects, each containing details about a variant of the prompt.</p>"}))
    GetPromptResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the prompt.</p>", "smithy.api#required" => {}}))
    GetPromptResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the prompt or the prompt version (if you specified a version in the request).</p>", "smithy.api#required" => {}}))
    GetPromptResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the prompt.</p>", "smithy.api#required" => {}}))
    GetPromptResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the prompt was created.</p>", "smithy.api#required" => {}}))
    GetPromptResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the prompt was last updated.</p>", "smithy.api#required" => {}}))
    GetPromptResponse.type = Types::GetPromptResponse
    GuardrailConfiguration.add_member(:guardrail_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailIdentifier, location_name: 'guardrailIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the guardrail.</p>"}))
    GuardrailConfiguration.add_member(:guardrail_version, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailVersion, location_name: 'guardrailVersion', traits: {"smithy.api#documentation" => "<p>The version of the guardrail.</p>"}))
    GuardrailConfiguration.type = Types::GuardrailConfiguration
    HierarchicalChunkingConfiguration.add_member(:level_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: HierarchicalChunkingLevelConfigurations, location_name: 'levelConfigurations', traits: {"smithy.api#documentation" => "<p>Token settings for each layer.</p>", "smithy.api#required" => {}}))
    HierarchicalChunkingConfiguration.add_member(:overlap_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'overlapTokens', traits: {"smithy.api#documentation" => "<p>The number of tokens to repeat across chunks in the same layer.</p>", "smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    HierarchicalChunkingConfiguration.type = Types::HierarchicalChunkingConfiguration
    HierarchicalChunkingLevelConfiguration.add_member(:max_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxTokens', traits: {"smithy.api#documentation" => "<p>The maximum number of tokens that a chunk can contain in this layer.</p>", "smithy.api#range" => {"min" => 1, "max" => 8192}, "smithy.api#required" => {}}))
    HierarchicalChunkingLevelConfiguration.type = Types::HierarchicalChunkingLevelConfiguration
    HierarchicalChunkingLevelConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HierarchicalChunkingLevelConfiguration)
    IncludeExclude.add_member(:include, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCLUDE', traits: {"smithy.api#enumValue" => "INCLUDE"}))
    IncludeExclude.add_member(:exclude, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCLUDE', traits: {"smithy.api#enumValue" => "EXCLUDE"}))
    IncompatibleConnectionDataTypeFlowValidationDetails.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionName, location_name: 'connection', traits: {"smithy.api#documentation" => "<p>The name of the connection with incompatible data types.</p>", "smithy.api#required" => {}}))
    IncompatibleConnectionDataTypeFlowValidationDetails.type = Types::IncompatibleConnectionDataTypeFlowValidationDetails
    IncompatibleLoopNodeType.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INPUT', traits: {"smithy.api#enumValue" => "Input"}))
    IncompatibleLoopNodeType.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONDITION', traits: {"smithy.api#enumValue" => "Condition"}))
    IncompatibleLoopNodeType.add_member(:iterator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ITERATOR', traits: {"smithy.api#enumValue" => "Iterator"}))
    IncompatibleLoopNodeType.add_member(:collector, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLLECTOR', traits: {"smithy.api#enumValue" => "Collector"}))
    InferenceConfiguration.add_member(:temperature, Smithy::Schema::Shapes::ShapeRef.new(shape: Temperature, location_name: 'temperature', traits: {"smithy.api#documentation" => "<p>The likelihood of the model selecting higher-probability options while generating a response. A lower value makes the model more likely to choose higher-probability options, while a higher value makes the model more likely to choose lower-probability options.</p>"}))
    InferenceConfiguration.add_member(:top_p, Smithy::Schema::Shapes::ShapeRef.new(shape: TopP, location_name: 'topP', traits: {"smithy.api#documentation" => "<p>While generating a response, the model determines the probability of the following token at each point of generation. The value that you set for <code>Top P</code> determines the number of most-likely candidates from which the model chooses the next token in the sequence. For example, if you set <code>topP</code> to 0.8, the model only selects the next token from the top 80% of the probability distribution of next tokens.</p>"}))
    InferenceConfiguration.add_member(:top_k, Smithy::Schema::Shapes::ShapeRef.new(shape: TopK, location_name: 'topK', traits: {"smithy.api#documentation" => "<p>While generating a response, the model determines the probability of the following token at each point of generation. The value that you set for <code>topK</code> is the number of most-likely candidates from which the model chooses the next token in the sequence. For example, if you set <code>topK</code> to 50, the model selects the next token from among the top 50 most likely choices.</p>"}))
    InferenceConfiguration.add_member(:maximum_length, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumLength, location_name: 'maximumLength', traits: {"smithy.api#documentation" => "<p>The maximum number of tokens to allow in the generated response.</p>"}))
    InferenceConfiguration.add_member(:stop_sequences, Smithy::Schema::Shapes::ShapeRef.new(shape: StopSequences, location_name: 'stopSequences', traits: {"smithy.api#documentation" => "<p>A list of stop sequences. A stop sequence is a sequence of characters that causes the model to stop generating the response.</p>"}))
    InferenceConfiguration.type = Types::InferenceConfiguration
    IngestKnowledgeBaseDocumentsRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base to ingest the documents into.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    IngestKnowledgeBaseDocumentsRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source connected to the knowledge base that you're adding documents to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    IngestKnowledgeBaseDocumentsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    IngestKnowledgeBaseDocumentsRequest.add_member(:documents, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseDocuments, location_name: 'documents', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about the documents to add.</p>", "smithy.api#required" => {}}))
    IngestKnowledgeBaseDocumentsRequest.type = Types::IngestKnowledgeBaseDocumentsRequest
    IngestKnowledgeBaseDocumentsResponse.add_member(:document_details, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseDocumentDetails, location_name: 'documentDetails', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about the documents that were ingested.</p>"}))
    IngestKnowledgeBaseDocumentsResponse.type = Types::IngestKnowledgeBaseDocumentsResponse
    IngestionJob.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge for the data ingestion job.</p>", "smithy.api#required" => {}}))
    IngestionJob.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source for the data ingestion job.</p>", "smithy.api#required" => {}}))
    IngestionJob.add_member(:ingestion_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ingestionJobId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data ingestion job.</p>", "smithy.api#required" => {}}))
    IngestionJob.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the data ingestion job.</p>"}))
    IngestionJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the data ingestion job.</p>", "smithy.api#required" => {}}))
    IngestionJob.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobStatistics, location_name: 'statistics', traits: {"smithy.api#documentation" => "<p>Contains statistics about the data ingestion job.</p>"}))
    IngestionJob.add_member(:failure_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReasons, location_name: 'failureReasons', traits: {"smithy.api#documentation" => "<p>A list of reasons that the data ingestion job failed.</p>"}))
    IngestionJob.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The time the data ingestion job started.</p> <p>If you stop a data ingestion job, the <code>startedAt</code> time is the time the job was started before the job was stopped.</p>", "smithy.api#required" => {}}))
    IngestionJob.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time the data ingestion job was last updated.</p> <p>If you stop a data ingestion job, the <code>updatedAt</code> time is the time the job was stopped.</p>", "smithy.api#required" => {}}))
    IngestionJob.type = Types::IngestionJob
    IngestionJobFilter.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobFilterAttribute, location_name: 'attribute', traits: {"smithy.api#documentation" => "<p>The name of field or attribute to apply the filter.</p>", "smithy.api#required" => {}}))
    IngestionJobFilter.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobFilterOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operation to apply to the field or attribute.</p>", "smithy.api#required" => {}}))
    IngestionJobFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobFilterValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>A list of values that belong to the field or attribute.</p>", "smithy.api#required" => {}}))
    IngestionJobFilter.type = Types::IngestionJobFilter
    IngestionJobFilterAttribute.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATUS', traits: {"smithy.api#enumValue" => "STATUS"}))
    IngestionJobFilterOperator.add_member(:eq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQ', traits: {"smithy.api#enumValue" => "EQ"}))
    IngestionJobFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobFilterValue)
    IngestionJobFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobFilter)
    IngestionJobSortBy.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobSortByAttribute, location_name: 'attribute', traits: {"smithy.api#documentation" => "<p>The name of field or attribute to apply sorting of data.</p>", "smithy.api#required" => {}}))
    IngestionJobSortBy.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'order', traits: {"smithy.api#documentation" => "<p>The order for sorting the data.</p>", "smithy.api#required" => {}}))
    IngestionJobSortBy.type = Types::IngestionJobSortBy
    IngestionJobSortByAttribute.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATUS', traits: {"smithy.api#enumValue" => "STATUS"}))
    IngestionJobSortByAttribute.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTED_AT', traits: {"smithy.api#enumValue" => "STARTED_AT"}))
    IngestionJobStatistics.add_member(:number_of_documents_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveLong, location_name: 'numberOfDocumentsScanned', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of source documents that were scanned. Includes new, updated, and unchanged documents.</p>"}))
    IngestionJobStatistics.add_member(:number_of_metadata_documents_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveLong, location_name: 'numberOfMetadataDocumentsScanned', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of metadata files that were scanned. Includes new, updated, and unchanged files.</p>"}))
    IngestionJobStatistics.add_member(:number_of_new_documents_indexed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveLong, location_name: 'numberOfNewDocumentsIndexed', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of new source documents in the data source that were successfully indexed.</p>"}))
    IngestionJobStatistics.add_member(:number_of_modified_documents_indexed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveLong, location_name: 'numberOfModifiedDocumentsIndexed', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of modified source documents in the data source that were successfully indexed.</p>"}))
    IngestionJobStatistics.add_member(:number_of_metadata_documents_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveLong, location_name: 'numberOfMetadataDocumentsModified', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of metadata files that were updated or deleted.</p>"}))
    IngestionJobStatistics.add_member(:number_of_documents_deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveLong, location_name: 'numberOfDocumentsDeleted', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of source documents that were deleted.</p>"}))
    IngestionJobStatistics.add_member(:number_of_documents_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveLong, location_name: 'numberOfDocumentsFailed', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of source documents that failed to be ingested.</p>"}))
    IngestionJobStatistics.type = Types::IngestionJobStatistics
    IngestionJobStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    IngestionJobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    IngestionJobStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    IngestionJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    IngestionJobStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    IngestionJobStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    IngestionJobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobSummary)
    IngestionJobSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base for the data ingestion job.</p>", "smithy.api#required" => {}}))
    IngestionJobSummary.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source for the data ingestion job.</p>", "smithy.api#required" => {}}))
    IngestionJobSummary.add_member(:ingestion_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ingestionJobId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data ingestion job.</p>", "smithy.api#required" => {}}))
    IngestionJobSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the data ingestion job.</p>"}))
    IngestionJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the data ingestion job.</p>", "smithy.api#required" => {}}))
    IngestionJobSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The time the data ingestion job started.</p>", "smithy.api#required" => {}}))
    IngestionJobSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time the data ingestion job was last updated.</p>", "smithy.api#required" => {}}))
    IngestionJobSummary.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobStatistics, location_name: 'statistics', traits: {"smithy.api#documentation" => "<p>Contains statistics for the data ingestion job.</p>"}))
    IngestionJobSummary.type = Types::IngestionJobSummary
    InlineCodeFlowNodeConfiguration.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The code that's executed in your inline code node. The code can access input data from previous nodes in the flow, perform operations on that data, and produce output that can be used by other nodes in your flow.</p> <p>The code must be valid in the programming <code>language</code> that you specify.</p>", "smithy.api#required" => {}}))
    InlineCodeFlowNodeConfiguration.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedLanguages, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The programming language used by your inline code node.</p> <p>The code must be valid in the programming <code>language</code> that you specify. Currently, only Python 3 (<code>Python_3</code>) is supported.</p>", "smithy.api#required" => {}}))
    InlineCodeFlowNodeConfiguration.type = Types::InlineCodeFlowNodeConfiguration
    InlineContent.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineContentType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of inline content to define.</p>", "smithy.api#required" => {}}))
    InlineContent.add_member(:byte_content, Smithy::Schema::Shapes::ShapeRef.new(shape: ByteContentDoc, location_name: 'byteContent', traits: {"smithy.api#documentation" => "<p>Contains information about content defined inline in bytes.</p>"}))
    InlineContent.add_member(:text_content, Smithy::Schema::Shapes::ShapeRef.new(shape: TextContentDoc, location_name: 'textContent', traits: {"smithy.api#documentation" => "<p>Contains information about content defined inline in text.</p>"}))
    InlineContent.type = Types::InlineContent
    InlineContentType.add_member(:byte, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTE', traits: {"smithy.api#enumValue" => "BYTE"}))
    InlineContentType.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXT', traits: {"smithy.api#enumValue" => "TEXT"}))
    InputFlowNodeConfiguration.type = Types::InputFlowNodeConfiguration
    IntermediateStorage.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>An S3 bucket path.</p>", "smithy.api#required" => {}}))
    IntermediateStorage.type = Types::IntermediateStorage
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InvalidLoopBoundaryFlowValidationDetails.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionName, location_name: 'connection', traits: {"smithy.api#documentation" => "<p>The name of the connection that violates loop boundary rules.</p>", "smithy.api#required" => {}}))
    InvalidLoopBoundaryFlowValidationDetails.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source node of the connection that violates DoWhile loop boundary rules.</p>", "smithy.api#required" => {}}))
    InvalidLoopBoundaryFlowValidationDetails.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The target node of the connection that violates DoWhile loop boundary rules.</p>", "smithy.api#required" => {}}))
    InvalidLoopBoundaryFlowValidationDetails.type = Types::InvalidLoopBoundaryFlowValidationDetails
    IteratorFlowNodeConfiguration.type = Types::IteratorFlowNodeConfiguration
    KendraKnowledgeBaseConfiguration.add_member(:kendra_index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KendraIndexArn, location_name: 'kendraIndexArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Kendra index.</p>", "smithy.api#required" => {}}))
    KendraKnowledgeBaseConfiguration.type = Types::KendraKnowledgeBaseConfiguration
    KnowledgeBase.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBase.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBase.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseArn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBase.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the knowledge base.</p>"}))
    KnowledgeBase.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBase.add_member(:knowledge_base_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseConfiguration, location_name: 'knowledgeBaseConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the embeddings configuration of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBase.add_member(:storage_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfiguration, location_name: 'storageConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the storage configuration of the knowledge base.</p>"}))
    KnowledgeBase.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the knowledge base. The following statuses are possible:</p> <ul> <li> <p>CREATING – The knowledge base is being created.</p> </li> <li> <p>ACTIVE – The knowledge base is ready to be queried.</p> </li> <li> <p>DELETING – The knowledge base is being deleted.</p> </li> <li> <p>UPDATING – The knowledge base is being updated.</p> </li> <li> <p>FAILED – The knowledge base API operation failed.</p> </li> </ul>", "smithy.api#required" => {}}))
    KnowledgeBase.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time the knowledge base was created.</p>", "smithy.api#required" => {}}))
    KnowledgeBase.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time the knowledge base was last updated.</p>", "smithy.api#required" => {}}))
    KnowledgeBase.add_member(:failure_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReasons, location_name: 'failureReasons', traits: {"smithy.api#documentation" => "<p>A list of reasons that the API operation on the knowledge base failed.</p>"}))
    KnowledgeBase.type = Types::KnowledgeBase
    KnowledgeBaseConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of data that the data source is converted into for the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseConfiguration.add_member(:vector_knowledge_base_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorKnowledgeBaseConfiguration, location_name: 'vectorKnowledgeBaseConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the model that's used to convert the data source into vector embeddings.</p>"}))
    KnowledgeBaseConfiguration.add_member(:kendra_knowledge_base_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KendraKnowledgeBaseConfiguration, location_name: 'kendraKnowledgeBaseConfiguration', traits: {"smithy.api#documentation" => "<p>Settings for an Amazon Kendra knowledge base.</p>"}))
    KnowledgeBaseConfiguration.add_member(:sql_knowledge_base_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlKnowledgeBaseConfiguration, location_name: 'sqlKnowledgeBaseConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configurations for a knowledge base connected to an SQL database.</p>"}))
    KnowledgeBaseConfiguration.type = Types::KnowledgeBaseConfiguration
    KnowledgeBaseDocument.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Contains the metadata to associate with the document.</p>"}))
    KnowledgeBaseDocument.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentContent, location_name: 'content', traits: {"smithy.api#documentation" => "<p>Contains the content of the document.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseDocument.type = Types::KnowledgeBaseDocument
    KnowledgeBaseDocumentDetail.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base that the document was ingested into or deleted from.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseDocumentDetail.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source connected to the knowledge base that the document was ingested into or deleted from.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseDocumentDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The ingestion status of the document. The following statuses are possible:</p> <ul> <li> <p>STARTED – You submitted the ingestion job containing the document.</p> </li> <li> <p>PENDING – The document is waiting to be ingested.</p> </li> <li> <p>IN_PROGRESS – The document is being ingested.</p> </li> <li> <p>INDEXED – The document was successfully indexed.</p> </li> <li> <p>PARTIALLY_INDEXED – The document was partially indexed.</p> </li> <li> <p>METADATA_PARTIALLY_INDEXED – You submitted metadata for an existing document and it was partially indexed.</p> </li> <li> <p>METADATA_UPDATE_FAILED – You submitted a metadata update for an existing document but it failed.</p> </li> <li> <p>FAILED – The document failed to be ingested.</p> </li> <li> <p>NOT_FOUND – The document wasn't found.</p> </li> <li> <p>IGNORED – The document was ignored during ingestion.</p> </li> <li> <p>DELETING – You submitted the delete job containing the document.</p> </li> <li> <p>DELETE_IN_PROGRESS – The document is being deleted.</p> </li> </ul>", "smithy.api#required" => {}}))
    KnowledgeBaseDocumentDetail.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>Contains information that identifies the document.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseDocumentDetail.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason for the status. Appears alongside the status <code>IGNORED</code>.</p>"}))
    KnowledgeBaseDocumentDetail.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time at which the document was last updated.</p>"}))
    KnowledgeBaseDocumentDetail.type = Types::KnowledgeBaseDocumentDetail
    KnowledgeBaseDocumentDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseDocumentDetail)
    KnowledgeBaseDocuments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseDocument)
    KnowledgeBaseFlowNodeConfiguration.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseId, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base to query.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseFlowNodeConfiguration.add_member(:model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseModelIdentifier, location_name: 'modelId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the model or <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html\">inference profile</a> to use to generate a response from the query results. Omit this field if you want to return the retrieved results as an array.</p>"}))
    KnowledgeBaseFlowNodeConfiguration.add_member(:guardrail_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: 'guardrailConfiguration', traits: {"smithy.api#documentation" => "<p>Contains configurations for a guardrail to apply during query and response generation for the knowledge base in this configuration.</p>"}))
    KnowledgeBaseFlowNodeConfiguration.add_member(:number_of_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'numberOfResults', traits: {"smithy.api#documentation" => "<p>The number of results to retrieve from the knowledge base.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    KnowledgeBaseFlowNodeConfiguration.add_member(:prompt_template, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBasePromptTemplate, location_name: 'promptTemplate', traits: {"smithy.api#documentation" => "<p>A custom prompt template to use with the knowledge base for generating responses.</p>"}))
    KnowledgeBaseFlowNodeConfiguration.add_member(:inference_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptInferenceConfiguration, location_name: 'inferenceConfiguration', traits: {"smithy.api#documentation" => "<p>Contains inference configurations for the prompt.</p>"}))
    KnowledgeBaseFlowNodeConfiguration.add_member(:reranking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchRerankingConfiguration, location_name: 'rerankingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for reranking the retrieved results from the knowledge base to improve relevance.</p>"}))
    KnowledgeBaseFlowNodeConfiguration.add_member(:orchestration_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseOrchestrationConfiguration, location_name: 'orchestrationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for orchestrating the retrieval and generation process in the knowledge base node.</p>"}))
    KnowledgeBaseFlowNodeConfiguration.type = Types::KnowledgeBaseFlowNodeConfiguration
    KnowledgeBaseOrchestrationConfiguration.add_member(:prompt_template, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBasePromptTemplate, location_name: 'promptTemplate', traits: {"smithy.api#documentation" => "<p>A custom prompt template for orchestrating the retrieval and generation process.</p>"}))
    KnowledgeBaseOrchestrationConfiguration.add_member(:inference_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptInferenceConfiguration, location_name: 'inferenceConfig', traits: {"smithy.api#documentation" => "<p>Contains inference configurations for the prompt.</p>"}))
    KnowledgeBaseOrchestrationConfiguration.add_member(:additional_model_request_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: 'additionalModelRequestFields', traits: {"smithy.api#documentation" => "<p>The additional model-specific request parameters as key-value pairs to be included in the request to the foundation model.</p>"}))
    KnowledgeBaseOrchestrationConfiguration.add_member(:performance_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: 'performanceConfig', traits: {"smithy.api#documentation" => "<p>The performance configuration options for the knowledge base retrieval and generation process.</p>"}))
    KnowledgeBaseOrchestrationConfiguration.type = Types::KnowledgeBaseOrchestrationConfiguration
    KnowledgeBasePromptTemplate.add_member(:text_prompt_template, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseTextPrompt, location_name: 'textPromptTemplate', traits: {"smithy.api#documentation" => "<p>The text of the prompt template.</p>"}))
    KnowledgeBasePromptTemplate.type = Types::KnowledgeBasePromptTemplate
    KnowledgeBaseState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    KnowledgeBaseState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    KnowledgeBaseStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    KnowledgeBaseStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    KnowledgeBaseStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    KnowledgeBaseStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    KnowledgeBaseStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    KnowledgeBaseStatus.add_member(:delete_unsuccessful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_UNSUCCESSFUL', traits: {"smithy.api#enumValue" => "DELETE_UNSUCCESSFUL"}))
    KnowledgeBaseStorageType.add_member(:opensearch_serverless, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENSEARCH_SERVERLESS', traits: {"smithy.api#enumValue" => "OPENSEARCH_SERVERLESS"}))
    KnowledgeBaseStorageType.add_member(:pinecone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PINECONE', traits: {"smithy.api#enumValue" => "PINECONE"}))
    KnowledgeBaseStorageType.add_member(:redis_enterprise_cloud, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDIS_ENTERPRISE_CLOUD', traits: {"smithy.api#enumValue" => "REDIS_ENTERPRISE_CLOUD"}))
    KnowledgeBaseStorageType.add_member(:rds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS', traits: {"smithy.api#enumValue" => "RDS"}))
    KnowledgeBaseStorageType.add_member(:mongo_db_atlas, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONGO_DB_ATLAS', traits: {"smithy.api#enumValue" => "MONGO_DB_ATLAS"}))
    KnowledgeBaseStorageType.add_member(:neptune_analytics, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEPTUNE_ANALYTICS', traits: {"smithy.api#enumValue" => "NEPTUNE_ANALYTICS"}))
    KnowledgeBaseStorageType.add_member(:opensearch_managed_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENSEARCH_MANAGED_CLUSTER', traits: {"smithy.api#enumValue" => "OPENSEARCH_MANAGED_CLUSTER"}))
    KnowledgeBaseStorageType.add_member(:s3_vectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_VECTORS', traits: {"smithy.api#enumValue" => "S3_VECTORS"}))
    KnowledgeBaseSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseSummary)
    KnowledgeBaseSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the knowledge base.</p>"}))
    KnowledgeBaseSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time the knowledge base was last updated.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.type = Types::KnowledgeBaseSummary
    KnowledgeBaseType.add_member(:vector, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VECTOR', traits: {"smithy.api#enumValue" => "VECTOR"}))
    KnowledgeBaseType.add_member(:kendra, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KENDRA', traits: {"smithy.api#enumValue" => "KENDRA"}))
    KnowledgeBaseType.add_member(:sql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL', traits: {"smithy.api#enumValue" => "SQL"}))
    LambdaFunctionFlowNodeConfiguration.add_member(:lambda_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: 'lambdaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda function to invoke.</p>", "smithy.api#required" => {}}))
    LambdaFunctionFlowNodeConfiguration.type = Types::LambdaFunctionFlowNodeConfiguration
    LexFlowNodeConfiguration.add_member(:bot_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LexBotAliasArn, location_name: 'botAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Lex bot alias to invoke.</p>", "smithy.api#required" => {}}))
    LexFlowNodeConfiguration.add_member(:locale_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LexBotLocaleId, location_name: 'localeId', traits: {"smithy.api#documentation" => "<p>The Region to invoke the Amazon Lex bot in.</p>", "smithy.api#required" => {}}))
    LexFlowNodeConfiguration.type = Types::LexFlowNodeConfiguration
    ListAgentActionGroupsRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAgentActionGroupsRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAgentActionGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>"}))
    ListAgentActionGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>"}))
    ListAgentActionGroupsRequest.type = Types::ListAgentActionGroupsRequest
    ListAgentActionGroupsResponse.add_member(:action_group_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupSummaries, location_name: 'actionGroupSummaries', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about an action group.</p>", "smithy.api#required" => {}}))
    ListAgentActionGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListAgentActionGroupsResponse.type = Types::ListAgentActionGroupsResponse
    ListAgentAliasesRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAgentAliasesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>"}))
    ListAgentAliasesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>"}))
    ListAgentAliasesRequest.type = Types::ListAgentAliasesRequest
    ListAgentAliasesResponse.add_member(:agent_alias_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasSummaries, location_name: 'agentAliasSummaries', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about an alias of the agent.</p>", "smithy.api#required" => {}}))
    ListAgentAliasesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListAgentAliasesResponse.type = Types::ListAgentAliasesResponse
    ListAgentCollaboratorsRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The agent's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAgentCollaboratorsRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The agent's version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAgentCollaboratorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of agent collaborators to return in one page of results.</p>"}))
    ListAgentCollaboratorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"}))
    ListAgentCollaboratorsRequest.type = Types::ListAgentCollaboratorsRequest
    ListAgentCollaboratorsResponse.add_member(:agent_collaborator_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentCollaboratorSummaries, location_name: 'agentCollaboratorSummaries', traits: {"smithy.api#documentation" => "<p>A list of collaborator summaries.</p>", "smithy.api#required" => {}}))
    ListAgentCollaboratorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"}))
    ListAgentCollaboratorsResponse.type = Types::ListAgentCollaboratorsResponse
    ListAgentKnowledgeBasesRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent for which to return information about knowledge bases associated with it.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAgentKnowledgeBasesRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent for which to return information about knowledge bases associated with it.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAgentKnowledgeBasesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>"}))
    ListAgentKnowledgeBasesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>"}))
    ListAgentKnowledgeBasesRequest.type = Types::ListAgentKnowledgeBasesRequest
    ListAgentKnowledgeBasesResponse.add_member(:agent_knowledge_base_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentKnowledgeBaseSummaries, location_name: 'agentKnowledgeBaseSummaries', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about a knowledge base associated with the agent.</p>", "smithy.api#required" => {}}))
    ListAgentKnowledgeBasesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListAgentKnowledgeBasesResponse.type = Types::ListAgentKnowledgeBasesResponse
    ListAgentVersionsRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAgentVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>"}))
    ListAgentVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>"}))
    ListAgentVersionsRequest.type = Types::ListAgentVersionsRequest
    ListAgentVersionsResponse.add_member(:agent_version_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersionSummaries, location_name: 'agentVersionSummaries', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about a version of the agent.</p>", "smithy.api#required" => {}}))
    ListAgentVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListAgentVersionsResponse.type = Types::ListAgentVersionsResponse
    ListAgentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>"}))
    ListAgentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>"}))
    ListAgentsRequest.type = Types::ListAgentsRequest
    ListAgentsResponse.add_member(:agent_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentSummaries, location_name: 'agentSummaries', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about an agent.</p>", "smithy.api#required" => {}}))
    ListAgentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListAgentsResponse.type = Types::ListAgentsResponse
    ListDataSourcesRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base for which to return a list of information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>"}))
    ListDataSourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>"}))
    ListDataSourcesRequest.type = Types::ListDataSourcesRequest
    ListDataSourcesResponse.add_member(:data_source_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceSummaries, location_name: 'dataSourceSummaries', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about a data source.</p>", "smithy.api#required" => {}}))
    ListDataSourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListDataSourcesResponse.type = Types::ListDataSourcesResponse
    ListFlowAliasesRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow for which aliases are being returned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFlowAliasesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFlowAliasesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFlowAliasesRequest.type = Types::ListFlowAliasesRequest
    ListFlowAliasesResponse.add_member(:flow_alias_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasSummaries, location_name: 'flowAliasSummaries', traits: {"smithy.api#documentation" => "<p>A list, each member of which contains information about an alias.</p>", "smithy.api#required" => {}}))
    ListFlowAliasesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListFlowAliasesResponse.type = Types::ListFlowAliasesResponse
    ListFlowVersionsRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFlowVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFlowVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFlowVersionsRequest.type = Types::ListFlowVersionsRequest
    ListFlowVersionsResponse.add_member(:flow_version_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowVersionSummaries, location_name: 'flowVersionSummaries', traits: {"smithy.api#documentation" => "<p>A list, each member of which contains information about a flow.</p>", "smithy.api#required" => {}}))
    ListFlowVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListFlowVersionsResponse.type = Types::ListFlowVersionsResponse
    ListFlowsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFlowsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFlowsRequest.type = Types::ListFlowsRequest
    ListFlowsResponse.add_member(:flow_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowSummaries, location_name: 'flowSummaries', traits: {"smithy.api#documentation" => "<p>A list, each member of which contains information about a flow.</p>", "smithy.api#required" => {}}))
    ListFlowsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListFlowsResponse.type = Types::ListFlowsResponse
    ListIngestionJobsRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base for the list of data ingestion jobs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIngestionJobsRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source for the list of data ingestion jobs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIngestionJobsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Contains information about the filters for filtering the data.</p>"}))
    ListIngestionJobsRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>Contains details about how to sort the data.</p>"}))
    ListIngestionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>"}))
    ListIngestionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>"}))
    ListIngestionJobsRequest.type = Types::ListIngestionJobsRequest
    ListIngestionJobsResponse.add_member(:ingestion_job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJobSummaries, location_name: 'ingestionJobSummaries', traits: {"smithy.api#documentation" => "<p>A list of data ingestion jobs with information about each job.</p>", "smithy.api#required" => {}}))
    ListIngestionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListIngestionJobsResponse.type = Types::ListIngestionJobsResponse
    ListKnowledgeBaseDocumentsRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base that is connected to the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListKnowledgeBaseDocumentsRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source that contains the documents.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListKnowledgeBaseDocumentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>"}))
    ListKnowledgeBaseDocumentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>"}))
    ListKnowledgeBaseDocumentsRequest.type = Types::ListKnowledgeBaseDocumentsRequest
    ListKnowledgeBaseDocumentsResponse.add_member(:document_details, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseDocumentDetails, location_name: 'documentDetails', traits: {"smithy.api#documentation" => "<p>A list of objects, each of which contains information about the documents that were retrieved.</p>", "smithy.api#required" => {}}))
    ListKnowledgeBaseDocumentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListKnowledgeBaseDocumentsResponse.type = Types::ListKnowledgeBaseDocumentsResponse
    ListKnowledgeBasesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>"}))
    ListKnowledgeBasesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>"}))
    ListKnowledgeBasesRequest.type = Types::ListKnowledgeBasesRequest
    ListKnowledgeBasesResponse.add_member(:knowledge_base_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseSummaries, location_name: 'knowledgeBaseSummaries', traits: {"smithy.api#documentation" => "<p>A list of knowledge bases with information about each knowledge base.</p>", "smithy.api#required" => {}}))
    ListKnowledgeBasesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListKnowledgeBasesResponse.type = Types::ListKnowledgeBasesResponse
    ListPromptsRequest.add_member(:prompt_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptIdentifier, location_name: 'promptIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the prompt for whose versions you want to return information. Omit this field to list information about all prompts in an account.</p>", "smithy.api#httpQuery" => "promptIdentifier"}))
    ListPromptsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPromptsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPromptsRequest.type = Types::ListPromptsRequest
    ListPromptsResponse.add_member(:prompt_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptSummaries, location_name: 'promptSummaries', traits: {"smithy.api#documentation" => "<p>A list, each member of which contains information about a prompt using Prompt management.</p>", "smithy.api#required" => {}}))
    ListPromptsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>"}))
    ListPromptsResponse.type = Types::ListPromptsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourcesArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which to list tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value pairs for the tags associated with the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LoopControllerFlowNodeConfiguration.add_member(:continue_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowCondition, location_name: 'continueCondition', traits: {"smithy.api#documentation" => "<p>Specifies the condition that determines when the flow exits the DoWhile loop. The loop executes until this condition evaluates to true.</p>", "smithy.api#required" => {}}))
    LoopControllerFlowNodeConfiguration.add_member(:max_iterations, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxIterations', traits: {"smithy.api#default" => 10, "smithy.api#documentation" => "<p>Specifies the maximum number of times the DoWhile loop can iterate before the flow exits the loop.</p>", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    LoopControllerFlowNodeConfiguration.type = Types::LoopControllerFlowNodeConfiguration
    LoopFlowNodeConfiguration.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The definition of the DoWhile loop nodes and connections between nodes in the flow.</p>", "smithy.api#required" => {}}))
    LoopFlowNodeConfiguration.type = Types::LoopFlowNodeConfiguration
    LoopIncompatibleNodeTypeFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The <code>Loop</code> container node that contains an incompatible node.</p>", "smithy.api#required" => {}}))
    LoopIncompatibleNodeTypeFlowValidationDetails.add_member(:incompatible_node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleLoopNodeType, location_name: 'incompatibleNodeType', traits: {"smithy.api#documentation" => "<p>The node type of the incompatible node in the DoWhile loop. Some node types, like a condition node, aren't allowed in a DoWhile loop.</p>", "smithy.api#required" => {}}))
    LoopIncompatibleNodeTypeFlowValidationDetails.add_member(:incompatible_node_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'incompatibleNodeName', traits: {"smithy.api#documentation" => "<p>The node that's incompatible in the DoWhile loop.</p>", "smithy.api#required" => {}}))
    LoopIncompatibleNodeTypeFlowValidationDetails.type = Types::LoopIncompatibleNodeTypeFlowValidationDetails
    LoopInputFlowNodeConfiguration.type = Types::LoopInputFlowNodeConfiguration
    MalformedConditionExpressionFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node containing the malformed condition expression.</p>", "smithy.api#required" => {}}))
    MalformedConditionExpressionFlowValidationDetails.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConditionName, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>The name of the malformed condition.</p>", "smithy.api#required" => {}}))
    MalformedConditionExpressionFlowValidationDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>The error message describing why the condition expression is malformed.</p>", "smithy.api#required" => {}}))
    MalformedConditionExpressionFlowValidationDetails.type = Types::MalformedConditionExpressionFlowValidationDetails
    MalformedNodeInputExpressionFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node containing the malformed input expression.</p>", "smithy.api#required" => {}}))
    MalformedNodeInputExpressionFlowValidationDetails.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInputName, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The name of the input with the malformed expression.</p>", "smithy.api#required" => {}}))
    MalformedNodeInputExpressionFlowValidationDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>The error message describing why the input expression is malformed.</p>", "smithy.api#required" => {}}))
    MalformedNodeInputExpressionFlowValidationDetails.type = Types::MalformedNodeInputExpressionFlowValidationDetails
    MemoryConfiguration.add_member(:enabled_memory_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledMemoryTypes, location_name: 'enabledMemoryTypes', traits: {"smithy.api#documentation" => "<p>The type of memory that is stored. </p>", "smithy.api#required" => {}}))
    MemoryConfiguration.add_member(:storage_days, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageDays, location_name: 'storageDays', traits: {"smithy.api#default" => 30, "smithy.api#documentation" => "<p>The number of days the agent is configured to retain the conversational context.</p>"}))
    MemoryConfiguration.add_member(:session_summary_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummaryConfiguration, location_name: 'sessionSummaryConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration for SESSION_SUMMARY memory type enabled for the agent. </p>"}))
    MemoryConfiguration.type = Types::MemoryConfiguration
    MemoryType.add_member(:session_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SESSION_SUMMARY', traits: {"smithy.api#enumValue" => "SESSION_SUMMARY"}))
    Message.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationRole, location_name: 'role', traits: {"smithy.api#documentation" => "<p>The role that the message belongs to.</p>", "smithy.api#required" => {}}))
    Message.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentBlocks, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content in the message.</p>", "smithy.api#required" => {}}))
    Message.type = Types::Message
    Messages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Message)
    MetadataAttribute.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of the metadata attribute.</p>", "smithy.api#required" => {}}))
    MetadataAttribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataAttributeValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Contains the value of the metadata attribute.</p>", "smithy.api#required" => {}}))
    MetadataAttribute.type = Types::MetadataAttribute
    MetadataAttributeValue.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataValueType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the metadata attribute.</p>", "smithy.api#required" => {}}))
    MetadataAttributeValue.add_member(:number_value, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberValue, location_name: 'numberValue', traits: {"smithy.api#documentation" => "<p>The value of the numeric metadata attribute.</p>"}))
    MetadataAttributeValue.add_member(:boolean_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'booleanValue', traits: {"smithy.api#documentation" => "<p>The value of the Boolean metadata attribute.</p>"}))
    MetadataAttributeValue.add_member(:string_value, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p>The value of the string metadata attribute.</p>"}))
    MetadataAttributeValue.add_member(:string_list_value, Smithy::Schema::Shapes::ShapeRef.new(shape: StringListValue, location_name: 'stringListValue', traits: {"smithy.api#documentation" => "<p>An array of strings that define the value of the metadata attribute.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}}))
    MetadataAttributeValue.type = Types::MetadataAttributeValue
    MetadataAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataAttribute)
    MetadataConfigurationForReranking.add_member(:selection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RerankingMetadataSelectionMode, location_name: 'selectionMode', traits: {"smithy.api#documentation" => "<p>The mode for selecting metadata fields for reranking.</p>", "smithy.api#required" => {}}))
    MetadataConfigurationForReranking.add_member(:selective_mode_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RerankingMetadataSelectiveModeConfiguration, location_name: 'selectiveModeConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for selective metadata field inclusion or exclusion during reranking.</p>"}))
    MetadataConfigurationForReranking.type = Types::MetadataConfigurationForReranking
    MetadataSourceType.add_member(:in_line_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_LINE_ATTRIBUTE', traits: {"smithy.api#enumValue" => "IN_LINE_ATTRIBUTE"}))
    MetadataSourceType.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_LOCATION', traits: {"smithy.api#enumValue" => "S3_LOCATION"}))
    MetadataValueType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    MetadataValueType.add_member(:number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER', traits: {"smithy.api#enumValue" => "NUMBER"}))
    MetadataValueType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    MetadataValueType.add_member(:string_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING_LIST', traits: {"smithy.api#enumValue" => "STRING_LIST"}))
    MismatchedNodeInputTypeFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node containing the input with the mismatched data type.</p>", "smithy.api#required" => {}}))
    MismatchedNodeInputTypeFlowValidationDetails.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInputName, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The name of the input with the mismatched data type.</p>", "smithy.api#required" => {}}))
    MismatchedNodeInputTypeFlowValidationDetails.add_member(:expected_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeIODataType, location_name: 'expectedType', traits: {"smithy.api#documentation" => "<p>The expected data type for the node input.</p>", "smithy.api#required" => {}}))
    MismatchedNodeInputTypeFlowValidationDetails.type = Types::MismatchedNodeInputTypeFlowValidationDetails
    MismatchedNodeOutputTypeFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node containing the output with the mismatched data type.</p>", "smithy.api#required" => {}}))
    MismatchedNodeOutputTypeFlowValidationDetails.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeOutputName, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The name of the output with the mismatched data type.</p>", "smithy.api#required" => {}}))
    MismatchedNodeOutputTypeFlowValidationDetails.add_member(:expected_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeIODataType, location_name: 'expectedType', traits: {"smithy.api#documentation" => "<p>The expected data type for the node output.</p>", "smithy.api#required" => {}}))
    MismatchedNodeOutputTypeFlowValidationDetails.type = Types::MismatchedNodeOutputTypeFlowValidationDetails
    MissingConnectionConfigurationFlowValidationDetails.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionName, location_name: 'connection', traits: {"smithy.api#documentation" => "<p>The name of the connection missing configuration.</p>", "smithy.api#required" => {}}))
    MissingConnectionConfigurationFlowValidationDetails.type = Types::MissingConnectionConfigurationFlowValidationDetails
    MissingDefaultConditionFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node missing the default condition.</p>", "smithy.api#required" => {}}))
    MissingDefaultConditionFlowValidationDetails.type = Types::MissingDefaultConditionFlowValidationDetails
    MissingEndingNodesFlowValidationDetails.type = Types::MissingEndingNodesFlowValidationDetails
    MissingLoopControllerNodeFlowValidationDetails.add_member(:loop_node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'loopNode', traits: {"smithy.api#documentation" => "<p>The DoWhile loop in a flow that's missing a required <code>LoopController</code> node.</p>", "smithy.api#required" => {}}))
    MissingLoopControllerNodeFlowValidationDetails.type = Types::MissingLoopControllerNodeFlowValidationDetails
    MissingLoopInputNodeFlowValidationDetails.add_member(:loop_node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'loopNode', traits: {"smithy.api#documentation" => "<p>The DoWhile loop in a flow that's missing a required <code>LoopInput</code> node.</p>", "smithy.api#required" => {}}))
    MissingLoopInputNodeFlowValidationDetails.type = Types::MissingLoopInputNodeFlowValidationDetails
    MissingNodeConfigurationFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node missing a required configuration.</p>", "smithy.api#required" => {}}))
    MissingNodeConfigurationFlowValidationDetails.type = Types::MissingNodeConfigurationFlowValidationDetails
    MissingNodeInputFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node missing the required input.</p>", "smithy.api#required" => {}}))
    MissingNodeInputFlowValidationDetails.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInputName, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The name of the missing input.</p>", "smithy.api#required" => {}}))
    MissingNodeInputFlowValidationDetails.type = Types::MissingNodeInputFlowValidationDetails
    MissingNodeOutputFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node missing the required output.</p>", "smithy.api#required" => {}}))
    MissingNodeOutputFlowValidationDetails.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeOutputName, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The name of the missing output.</p>", "smithy.api#required" => {}}))
    MissingNodeOutputFlowValidationDetails.type = Types::MissingNodeOutputFlowValidationDetails
    MissingStartingNodesFlowValidationDetails.type = Types::MissingStartingNodesFlowValidationDetails
    MongoDbAtlasConfiguration.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbAtlasEndpoint, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint URL of your MongoDB Atlas cluster for your knowledge base.</p>", "smithy.api#required" => {}}))
    MongoDbAtlasConfiguration.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbAtlasDatabaseName, location_name: 'databaseName', traits: {"smithy.api#documentation" => "<p>The database name in your MongoDB Atlas cluster for your knowledge base.</p>", "smithy.api#required" => {}}))
    MongoDbAtlasConfiguration.add_member(:collection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbAtlasCollectionName, location_name: 'collectionName', traits: {"smithy.api#documentation" => "<p>The collection name of the knowledge base in MongoDB Atlas.</p>", "smithy.api#required" => {}}))
    MongoDbAtlasConfiguration.add_member(:vector_index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbAtlasIndexName, location_name: 'vectorIndexName', traits: {"smithy.api#documentation" => "<p>The name of the MongoDB Atlas vector search index.</p>", "smithy.api#required" => {}}))
    MongoDbAtlasConfiguration.add_member(:credentials_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'credentialsSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the secret that you created in Secrets Manager that contains user credentials for your MongoDB Atlas cluster.</p>", "smithy.api#required" => {}}))
    MongoDbAtlasConfiguration.add_member(:field_mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbAtlasFieldMapping, location_name: 'fieldMapping', traits: {"smithy.api#documentation" => "<p>Contains the names of the fields to which to map information about the vector store.</p>", "smithy.api#required" => {}}))
    MongoDbAtlasConfiguration.add_member(:endpoint_service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbAtlasEndpointServiceName, location_name: 'endpointServiceName', traits: {"smithy.api#documentation" => "<p>The name of the VPC endpoint service in your account that is connected to your MongoDB Atlas cluster.</p>"}))
    MongoDbAtlasConfiguration.add_member(:text_index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbAtlasIndexName, location_name: 'textIndexName', traits: {"smithy.api#documentation" => "<p>The name of the text search index in the MongoDB collection. This is required for using the hybrid search feature.</p>"}))
    MongoDbAtlasConfiguration.type = Types::MongoDbAtlasConfiguration
    MongoDbAtlasFieldMapping.add_member(:vector_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'vectorField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.</p>", "smithy.api#required" => {}}))
    MongoDbAtlasFieldMapping.add_member(:text_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'textField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>", "smithy.api#required" => {}}))
    MongoDbAtlasFieldMapping.add_member(:metadata_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'metadataField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>", "smithy.api#required" => {}}))
    MongoDbAtlasFieldMapping.type = Types::MongoDbAtlasFieldMapping
    MultipleLoopControllerNodesFlowValidationDetails.add_member(:loop_node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'loopNode', traits: {"smithy.api#documentation" => "<p>The DoWhile loop in a flow that contains multiple <code>LoopController</code> nodes.</p>", "smithy.api#required" => {}}))
    MultipleLoopControllerNodesFlowValidationDetails.type = Types::MultipleLoopControllerNodesFlowValidationDetails
    MultipleLoopInputNodesFlowValidationDetails.add_member(:loop_node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'loopNode', traits: {"smithy.api#documentation" => "<p>The DoWhile loop in a flow that contains multiple <code>LoopInput</code> nodes.</p>", "smithy.api#required" => {}}))
    MultipleLoopInputNodesFlowValidationDetails.type = Types::MultipleLoopInputNodesFlowValidationDetails
    MultipleNodeInputConnectionsFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node containing the input with multiple connections.</p>", "smithy.api#required" => {}}))
    MultipleNodeInputConnectionsFlowValidationDetails.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInputName, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The name of the input with multiple connections to it.</p>", "smithy.api#required" => {}}))
    MultipleNodeInputConnectionsFlowValidationDetails.type = Types::MultipleNodeInputConnectionsFlowValidationDetails
    NeptuneAnalyticsConfiguration.add_member(:graph_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'graphArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Neptune Analytics vector store.</p>", "smithy.api#required" => {}}))
    NeptuneAnalyticsConfiguration.add_member(:field_mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: NeptuneAnalyticsFieldMapping, location_name: 'fieldMapping', traits: {"smithy.api#documentation" => "<p>Contains the names of the fields to which to map information about the vector store.</p>", "smithy.api#required" => {}}))
    NeptuneAnalyticsConfiguration.type = Types::NeptuneAnalyticsConfiguration
    NeptuneAnalyticsFieldMapping.add_member(:text_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'textField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>", "smithy.api#required" => {}}))
    NeptuneAnalyticsFieldMapping.add_member(:metadata_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'metadataField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>", "smithy.api#required" => {}}))
    NeptuneAnalyticsFieldMapping.type = Types::NeptuneAnalyticsFieldMapping
    OpenSearchManagedClusterConfiguration.add_member(:domain_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchManagedClusterDomainEndpoint, location_name: 'domainEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint URL the OpenSearch domain.</p>", "smithy.api#required" => {}}))
    OpenSearchManagedClusterConfiguration.add_member(:domain_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchManagedClusterDomainArn, location_name: 'domainArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the OpenSearch domain.</p>", "smithy.api#required" => {}}))
    OpenSearchManagedClusterConfiguration.add_member(:vector_index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchManagedClusterIndexName, location_name: 'vectorIndexName', traits: {"smithy.api#documentation" => "<p>The name of the vector store.</p>", "smithy.api#required" => {}}))
    OpenSearchManagedClusterConfiguration.add_member(:field_mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchManagedClusterFieldMapping, location_name: 'fieldMapping', traits: {"smithy.api#documentation" => "<p>Contains the names of the fields to which to map information about the vector store.</p>", "smithy.api#required" => {}}))
    OpenSearchManagedClusterConfiguration.type = Types::OpenSearchManagedClusterConfiguration
    OpenSearchManagedClusterFieldMapping.add_member(:vector_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'vectorField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.</p>", "smithy.api#required" => {}}))
    OpenSearchManagedClusterFieldMapping.add_member(:text_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'textField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>", "smithy.api#required" => {}}))
    OpenSearchManagedClusterFieldMapping.add_member(:metadata_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'metadataField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>", "smithy.api#required" => {}}))
    OpenSearchManagedClusterFieldMapping.type = Types::OpenSearchManagedClusterFieldMapping
    OpenSearchServerlessConfiguration.add_member(:collection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchServerlessCollectionArn, location_name: 'collectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the OpenSearch Service vector store.</p>", "smithy.api#required" => {}}))
    OpenSearchServerlessConfiguration.add_member(:vector_index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchServerlessIndexName, location_name: 'vectorIndexName', traits: {"smithy.api#documentation" => "<p>The name of the vector store.</p>", "smithy.api#required" => {}}))
    OpenSearchServerlessConfiguration.add_member(:field_mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchServerlessFieldMapping, location_name: 'fieldMapping', traits: {"smithy.api#documentation" => "<p>Contains the names of the fields to which to map information about the vector store.</p>", "smithy.api#required" => {}}))
    OpenSearchServerlessConfiguration.type = Types::OpenSearchServerlessConfiguration
    OpenSearchServerlessFieldMapping.add_member(:vector_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'vectorField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.</p>", "smithy.api#required" => {}}))
    OpenSearchServerlessFieldMapping.add_member(:text_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'textField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>", "smithy.api#required" => {}}))
    OpenSearchServerlessFieldMapping.add_member(:metadata_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'metadataField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>", "smithy.api#required" => {}}))
    OpenSearchServerlessFieldMapping.type = Types::OpenSearchServerlessFieldMapping
    OrchestrationExecutor.add_member(:lambda, Types::OrchestrationExecutor::Lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: 'lambda', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action. </p>"}))
    OrchestrationExecutor.add_member(:unknown, Types::OrchestrationExecutor::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    OrchestrationExecutor.type = Types::OrchestrationExecutor
    OrchestrationType.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    OrchestrationType.add_member(:custom_orchestration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_ORCHESTRATION', traits: {"smithy.api#enumValue" => "CUSTOM_ORCHESTRATION"}))
    OutputFlowNodeConfiguration.type = Types::OutputFlowNodeConfiguration
    ParameterDetail.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the parameter. Helps the foundation model determine how to elicit the parameters from the user.</p>"}))
    ParameterDetail.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The data type of the parameter.</p>", "smithy.api#required" => {}}))
    ParameterDetail.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'required', traits: {"smithy.api#documentation" => "<p>Whether the parameter is required for the agent to complete the function for action group invocation.</p>"}))
    ParameterDetail.type = Types::ParameterDetail
    ParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    ParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterDetail)
    ParsingConfiguration.add_member(:parsing_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingStrategy, location_name: 'parsingStrategy', traits: {"smithy.api#documentation" => "<p>The parsing strategy for the data source.</p>", "smithy.api#required" => {}}))
    ParsingConfiguration.add_member(:bedrock_foundation_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockFoundationModelConfiguration, location_name: 'bedrockFoundationModelConfiguration', traits: {"smithy.api#documentation" => "<p>If you specify <code>BEDROCK_FOUNDATION_MODEL</code> as the parsing strategy for ingesting your data source, use this object to modify configurations for using a foundation model to parse documents.</p>"}))
    ParsingConfiguration.add_member(:bedrock_data_automation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockDataAutomationConfiguration, location_name: 'bedrockDataAutomationConfiguration', traits: {"smithy.api#documentation" => "<p>If you specify <code>BEDROCK_DATA_AUTOMATION</code> as the parsing strategy for ingesting your data source, use this object to modify configurations for using the Amazon Bedrock Data Automation parser.</p>"}))
    ParsingConfiguration.type = Types::ParsingConfiguration
    ParsingModality.add_member(:multimodal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTIMODAL', traits: {"smithy.api#enumValue" => "MULTIMODAL"}))
    ParsingPrompt.add_member(:parsing_prompt_text, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingPromptText, location_name: 'parsingPromptText', traits: {"smithy.api#documentation" => "<p>Instructions for interpreting the contents of a document.</p>", "smithy.api#required" => {}}))
    ParsingPrompt.type = Types::ParsingPrompt
    ParsingStrategy.add_member(:bedrock_foundation_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEDROCK_FOUNDATION_MODEL', traits: {"smithy.api#enumValue" => "BEDROCK_FOUNDATION_MODEL"}))
    ParsingStrategy.add_member(:bedrock_data_automation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEDROCK_DATA_AUTOMATION', traits: {"smithy.api#enumValue" => "BEDROCK_DATA_AUTOMATION"}))
    PatternObjectFilter.add_member(:object_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FilteredObjectType, location_name: 'objectType', traits: {"smithy.api#documentation" => "<p>The supported object type or content type of the data source.</p>", "smithy.api#required" => {}}))
    PatternObjectFilter.add_member(:inclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'inclusionFilters', traits: {"smithy.api#documentation" => "<p>A list of one or more inclusion regular expression patterns to include certain object types that adhere to the pattern. If you specify an inclusion and exclusion filter/pattern and both match a document, the exclusion filter takes precedence and the document isn’t crawled.</p>"}))
    PatternObjectFilter.add_member(:exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'exclusionFilters', traits: {"smithy.api#documentation" => "<p>A list of one or more exclusion regular expression patterns to exclude certain object types that adhere to the pattern. If you specify an inclusion and exclusion filter/pattern and both match a document, the exclusion filter takes precedence and the document isn’t crawled.</p>"}))
    PatternObjectFilter.type = Types::PatternObjectFilter
    PatternObjectFilterConfiguration.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: PatternObjectFilterList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The configuration of specific filters applied to your data source content. You can filter out or include certain content.</p>", "smithy.api#required" => {}}))
    PatternObjectFilterConfiguration.type = Types::PatternObjectFilterConfiguration
    PatternObjectFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PatternObjectFilter)
    PerformanceConfigLatency.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "standard"}))
    PerformanceConfigLatency.add_member(:optimized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIMIZED', traits: {"smithy.api#enumValue" => "optimized"}))
    PerformanceConfiguration.add_member(:latency, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceConfigLatency, location_name: 'latency', traits: {"smithy.api#default" => "standard", "smithy.api#documentation" => "<p>The latency optimization setting.</p>"}))
    PerformanceConfiguration.type = Types::PerformanceConfiguration
    PineconeConfiguration.add_member(:connection_string, Smithy::Schema::Shapes::ShapeRef.new(shape: PineconeConnectionString, location_name: 'connectionString', traits: {"smithy.api#documentation" => "<p>The endpoint URL for your index management page.</p>", "smithy.api#required" => {}}))
    PineconeConfiguration.add_member(:credentials_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'credentialsSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the secret that you created in Secrets Manager that is linked to your Pinecone API key.</p>", "smithy.api#required" => {}}))
    PineconeConfiguration.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PineconeNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace to be used to write new data to your database.</p>"}))
    PineconeConfiguration.add_member(:field_mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: PineconeFieldMapping, location_name: 'fieldMapping', traits: {"smithy.api#documentation" => "<p>Contains the names of the fields to which to map information about the vector store.</p>", "smithy.api#required" => {}}))
    PineconeConfiguration.type = Types::PineconeConfiguration
    PineconeFieldMapping.add_member(:text_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'textField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>", "smithy.api#required" => {}}))
    PineconeFieldMapping.add_member(:metadata_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'metadataField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>", "smithy.api#required" => {}}))
    PineconeFieldMapping.type = Types::PineconeFieldMapping
    PrepareAgentRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent for which to create a <code>DRAFT</code> version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PrepareAgentRequest.type = Types::PrepareAgentRequest
    PrepareAgentResponse.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent for which the <code>DRAFT</code> version was created.</p>", "smithy.api#required" => {}}))
    PrepareAgentResponse.add_member(:agent_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'agentStatus', traits: {"smithy.api#documentation" => "<p>The status of the <code>DRAFT</code> version and whether it is ready for use.</p>", "smithy.api#required" => {}}))
    PrepareAgentResponse.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent.</p>", "smithy.api#required" => {}}))
    PrepareAgentResponse.add_member(:prepared_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'preparedAt', traits: {"smithy.api#documentation" => "<p>The time at which the <code>DRAFT</code> version of the agent was last prepared.</p>", "smithy.api#required" => {}}))
    PrepareAgentResponse.type = Types::PrepareAgentResponse
    PrepareFlowRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PrepareFlowRequest.type = Types::PrepareFlowRequest
    PrepareFlowResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    PrepareFlowResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the flow. When you submit this request, the status will be <code>NotPrepared</code>. If preparation succeeds, the status becomes <code>Prepared</code>. If it fails, the status becomes <code>FAILED</code>.</p>", "smithy.api#required" => {}}))
    PrepareFlowResponse.type = Types::PrepareFlowResponse
    PromptAgentResource.add_member(:agent_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasArn, location_name: 'agentIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the agent with which to use the prompt.</p>", "smithy.api#required" => {}}))
    PromptAgentResource.type = Types::PromptAgentResource
    PromptConfiguration.add_member(:prompt_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptType, location_name: 'promptType', traits: {"smithy.api#documentation" => "<p>The step in the agent sequence that this prompt configuration applies to.</p>"}))
    PromptConfiguration.add_member(:prompt_creation_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationMode, location_name: 'promptCreationMode', traits: {"smithy.api#documentation" => "<p>Specifies whether to override the default prompt template for this <code>promptType</code>. Set this value to <code>OVERRIDDEN</code> to use the prompt that you provide in the <code>basePromptTemplate</code>. If you leave it as <code>DEFAULT</code>, the agent uses a default prompt template.</p>"}))
    PromptConfiguration.add_member(:prompt_state, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptState, location_name: 'promptState', traits: {"smithy.api#documentation" => "<p>Specifies whether to allow the agent to carry out the step specified in the <code>promptType</code>. If you set this value to <code>DISABLED</code>, the agent skips that step. The default state for each <code>promptType</code> is as follows.</p> <ul> <li> <p> <code>PRE_PROCESSING</code> – <code>DISABLED</code> </p> </li> <li> <p> <code>ORCHESTRATION</code> – <code>ENABLED</code> </p> </li> <li> <p> <code>KNOWLEDGE_BASE_RESPONSE_GENERATION</code> – <code>ENABLED</code> </p> </li> <li> <p> <code>POST_PROCESSING</code> – <code>DISABLED</code> </p> </li> </ul>"}))
    PromptConfiguration.add_member(:base_prompt_template, Smithy::Schema::Shapes::ShapeRef.new(shape: BasePromptTemplate, location_name: 'basePromptTemplate', traits: {"smithy.api#documentation" => "<p>Defines the prompt template with which to replace the default prompt template. You can use placeholder variables in the base prompt template to customize the prompt. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html\">Prompt template placeholder variables</a>. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts-configure.html\">Configure the prompt templates</a>.</p>"}))
    PromptConfiguration.add_member(:inference_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: 'inferenceConfiguration', traits: {"smithy.api#documentation" => "<p>Contains inference parameters to use when the agent invokes a foundation model in the part of the agent sequence defined by the <code>promptType</code>. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html\">Inference parameters for foundation models</a>.</p>"}))
    PromptConfiguration.add_member(:parser_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationMode, location_name: 'parserMode', traits: {"smithy.api#documentation" => "<p>Specifies whether to override the default parser Lambda function when parsing the raw foundation model output in the part of the agent sequence defined by the <code>promptType</code>. If you set the field as <code>OVERRIDDEN</code>, the <code>overrideLambda</code> field in the <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html\">PromptOverrideConfiguration</a> must be specified with the ARN of a Lambda function.</p>"}))
    PromptConfiguration.add_member(:foundation_model, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'foundationModel', traits: {"smithy.api#documentation" => "<p>The agent's foundation model.</p>"}))
    PromptConfiguration.add_member(:additional_model_request_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Document, location_name: 'additionalModelRequestFields', traits: {"smithy.api#documentation" => "<p>If the Converse or ConverseStream operations support the model, <code>additionalModelRequestFields</code> contains additional inference parameters, beyond the base set of inference parameters in the <code>inferenceConfiguration</code> field. </p> <p>For more information, see <i>Inference request parameters and response fields for foundation models</i> in the Amazon Bedrock user guide.</p>"}))
    PromptConfiguration.type = Types::PromptConfiguration
    PromptConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PromptConfiguration)
    PromptFlowNodeConfiguration.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptFlowNodeSourceConfiguration, location_name: 'sourceConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies whether the prompt is from Prompt management or defined inline.</p>", "smithy.api#required" => {}}))
    PromptFlowNodeConfiguration.add_member(:guardrail_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: 'guardrailConfiguration', traits: {"smithy.api#documentation" => "<p>Contains configurations for a guardrail to apply to the prompt in this node and the response generated from it.</p>"}))
    PromptFlowNodeConfiguration.type = Types::PromptFlowNodeConfiguration
    PromptFlowNodeInlineConfiguration.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptTemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The type of prompt template.</p>", "smithy.api#required" => {}}))
    PromptFlowNodeInlineConfiguration.add_member(:template_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptTemplateConfiguration, location_name: 'templateConfiguration', traits: {"smithy.api#documentation" => "<p>Contains a prompt and variables in the prompt that can be replaced with values at runtime.</p>", "smithy.api#required" => {}}))
    PromptFlowNodeInlineConfiguration.add_member(:model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptModelIdentifier, location_name: 'modelId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the model or <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html\">inference profile</a> to run inference with.</p>", "smithy.api#required" => {}}))
    PromptFlowNodeInlineConfiguration.add_member(:inference_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptInferenceConfiguration, location_name: 'inferenceConfiguration', traits: {"smithy.api#documentation" => "<p>Contains inference configurations for the prompt.</p>"}))
    PromptFlowNodeInlineConfiguration.add_member(:additional_model_request_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Document, location_name: 'additionalModelRequestFields', traits: {"smithy.api#documentation" => "<p>Additional fields to be included in the model request for the Prompt node.</p>"}))
    PromptFlowNodeInlineConfiguration.type = Types::PromptFlowNodeInlineConfiguration
    PromptFlowNodeResourceConfiguration.add_member(:prompt_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptArn, location_name: 'promptArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the prompt from Prompt management.</p>", "smithy.api#required" => {}}))
    PromptFlowNodeResourceConfiguration.type = Types::PromptFlowNodeResourceConfiguration
    PromptFlowNodeSourceConfiguration.add_member(:resource, Types::PromptFlowNodeSourceConfiguration::Resource, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptFlowNodeResourceConfiguration, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>Contains configurations for a prompt from Prompt management.</p>"}))
    PromptFlowNodeSourceConfiguration.add_member(:inline, Types::PromptFlowNodeSourceConfiguration::Inline, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptFlowNodeInlineConfiguration, location_name: 'inline', traits: {"smithy.api#documentation" => "<p>Contains configurations for a prompt that is defined inline</p>"}))
    PromptFlowNodeSourceConfiguration.add_member(:unknown, Types::PromptFlowNodeSourceConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PromptFlowNodeSourceConfiguration.type = Types::PromptFlowNodeSourceConfiguration
    PromptGenAiResource.add_member(:agent, Types::PromptGenAiResource::Agent, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptAgentResource, location_name: 'agent', traits: {"smithy.api#documentation" => "<p>Specifies an Amazon Bedrock agent with which to use the prompt.</p>"}))
    PromptGenAiResource.add_member(:unknown, Types::PromptGenAiResource::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PromptGenAiResource.type = Types::PromptGenAiResource
    PromptInferenceConfiguration.add_member(:text, Types::PromptInferenceConfiguration::Text, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptModelInferenceConfiguration, location_name: 'text', traits: {"smithy.api#documentation" => "<p>Contains inference configurations for a text prompt.</p>"}))
    PromptInferenceConfiguration.add_member(:unknown, Types::PromptInferenceConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PromptInferenceConfiguration.type = Types::PromptInferenceConfiguration
    PromptInputVariable.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptInputVariableName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the variable.</p>"}))
    PromptInputVariable.type = Types::PromptInputVariable
    PromptInputVariablesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PromptInputVariable)
    PromptMetadataEntry.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptMetadataKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of a metadata tag for a prompt variant.</p>", "smithy.api#required" => {}}))
    PromptMetadataEntry.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptMetadataValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of a metadata tag for a prompt variant.</p>", "smithy.api#required" => {}}))
    PromptMetadataEntry.type = Types::PromptMetadataEntry
    PromptMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PromptMetadataEntry)
    PromptModelInferenceConfiguration.add_member(:temperature, Smithy::Schema::Shapes::ShapeRef.new(shape: Temperature, location_name: 'temperature', traits: {"smithy.api#documentation" => "<p>Controls the randomness of the response. Choose a lower value for more predictable outputs and a higher value for more surprising outputs.</p>"}))
    PromptModelInferenceConfiguration.add_member(:top_p, Smithy::Schema::Shapes::ShapeRef.new(shape: TopP, location_name: 'topP', traits: {"smithy.api#documentation" => "<p>The percentage of most-likely candidates that the model considers for the next token.</p>"}))
    PromptModelInferenceConfiguration.add_member(:max_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumLength, location_name: 'maxTokens', traits: {"smithy.api#documentation" => "<p>The maximum number of tokens to return in the response.</p>"}))
    PromptModelInferenceConfiguration.add_member(:stop_sequences, Smithy::Schema::Shapes::ShapeRef.new(shape: StopSequences, location_name: 'stopSequences', traits: {"smithy.api#documentation" => "<p>A list of strings that define sequences after which the model will stop generating.</p>"}))
    PromptModelInferenceConfiguration.type = Types::PromptModelInferenceConfiguration
    PromptOverrideConfiguration.add_member(:prompt_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptConfigurations, location_name: 'promptConfigurations', traits: {"smithy.api#documentation" => "<p>Contains configurations to override a prompt template in one part of an agent sequence. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html\">Advanced prompts</a>.</p>", "smithy.api#required" => {}}))
    PromptOverrideConfiguration.add_member(:override_lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: 'overrideLambda', traits: {"smithy.api#documentation" => "<p>The ARN of the Lambda function to use when parsing the raw foundation model output in parts of the agent sequence. If you specify this field, at least one of the <code>promptConfigurations</code> must contain a <code>parserMode</code> value that is set to <code>OVERRIDDEN</code>. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/lambda-parser.html\">Parser Lambda function in Amazon Bedrock Agents</a>.</p>"}))
    PromptOverrideConfiguration.type = Types::PromptOverrideConfiguration
    PromptState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PromptState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    PromptSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PromptSummary)
    PromptSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the prompt.</p>", "smithy.api#required" => {}}))
    PromptSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the prompt.</p>"}))
    PromptSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the prompt.</p>", "smithy.api#required" => {}}))
    PromptSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the prompt or the prompt version (if you specified a version in the request).</p>", "smithy.api#required" => {}}))
    PromptSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the prompt that this summary applies to.</p>", "smithy.api#required" => {}}))
    PromptSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the prompt was created.</p>", "smithy.api#required" => {}}))
    PromptSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the prompt was last updated.</p>", "smithy.api#required" => {}}))
    PromptSummary.type = Types::PromptSummary
    PromptTemplateConfiguration.add_member(:text, Types::PromptTemplateConfiguration::Text, Smithy::Schema::Shapes::ShapeRef.new(shape: TextPromptTemplateConfiguration, location_name: 'text', traits: {"smithy.api#documentation" => "<p>Contains configurations for the text in a message for a prompt.</p>"}))
    PromptTemplateConfiguration.add_member(:chat, Types::PromptTemplateConfiguration::Chat, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatPromptTemplateConfiguration, location_name: 'chat', traits: {"smithy.api#documentation" => "<p>Contains configurations to use the prompt in a conversational format.</p>"}))
    PromptTemplateConfiguration.add_member(:unknown, Types::PromptTemplateConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PromptTemplateConfiguration.type = Types::PromptTemplateConfiguration
    PromptTemplateType.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXT', traits: {"smithy.api#enumValue" => "TEXT"}))
    PromptTemplateType.add_member(:chat, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHAT', traits: {"smithy.api#enumValue" => "CHAT"}))
    PromptType.add_member(:pre_processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRE_PROCESSING', traits: {"smithy.api#enumValue" => "PRE_PROCESSING"}))
    PromptType.add_member(:orchestration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORCHESTRATION', traits: {"smithy.api#enumValue" => "ORCHESTRATION"}))
    PromptType.add_member(:post_processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POST_PROCESSING', traits: {"smithy.api#enumValue" => "POST_PROCESSING"}))
    PromptType.add_member(:knowledge_base_response_generation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KNOWLEDGE_BASE_RESPONSE_GENERATION', traits: {"smithy.api#enumValue" => "KNOWLEDGE_BASE_RESPONSE_GENERATION"}))
    PromptType.add_member(:memory_summarization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMORY_SUMMARIZATION', traits: {"smithy.api#enumValue" => "MEMORY_SUMMARIZATION"}))
    PromptVariant.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the prompt variant.</p>", "smithy.api#required" => {}}))
    PromptVariant.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptTemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The type of prompt template to use.</p>", "smithy.api#required" => {}}))
    PromptVariant.add_member(:template_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptTemplateConfiguration, location_name: 'templateConfiguration', traits: {"smithy.api#documentation" => "<p>Contains configurations for the prompt template.</p>", "smithy.api#required" => {}}))
    PromptVariant.add_member(:model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptModelIdentifier, location_name: 'modelId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the model or <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html\">inference profile</a> with which to run inference on the prompt.</p>"}))
    PromptVariant.add_member(:inference_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptInferenceConfiguration, location_name: 'inferenceConfiguration', traits: {"smithy.api#documentation" => "<p>Contains inference configurations for the prompt variant.</p>"}))
    PromptVariant.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptMetadataList, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>An array of objects, each containing a key-value pair that defines a metadata tag and value to attach to a prompt variant.</p>"}))
    PromptVariant.add_member(:additional_model_request_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Document, location_name: 'additionalModelRequestFields', traits: {"smithy.api#documentation" => "<p>Contains model-specific inference configurations that aren't in the <code>inferenceConfiguration</code> field. To see model-specific inference parameters, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html\">Inference request parameters and response fields for foundation models</a>.</p>"}))
    PromptVariant.add_member(:gen_ai_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptGenAiResource, location_name: 'genAiResource', traits: {"smithy.api#documentation" => "<p>Specifies a generative AI resource with which to use the prompt.</p>"}))
    PromptVariant.type = Types::PromptVariant
    PromptVariantList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariant)
    QueryEngineType.add_member(:redshift, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDSHIFT', traits: {"smithy.api#enumValue" => "REDSHIFT"}))
    QueryGenerationColumn.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryGenerationColumnName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the column for which the other fields in this object apply.</p>"}))
    QueryGenerationColumn.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the column that helps the query engine understand the contents of the column.</p>"}))
    QueryGenerationColumn.add_member(:inclusion, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeExclude, location_name: 'inclusion', traits: {"smithy.api#documentation" => "<p>Specifies whether to include or exclude the column during query generation. If you specify <code>EXCLUDE</code>, the column will be ignored. If you specify <code>INCLUDE</code>, all other columns in the table will be ignored.</p>"}))
    QueryGenerationColumn.type = Types::QueryGenerationColumn
    QueryGenerationColumns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryGenerationColumn)
    QueryGenerationConfiguration.add_member(:execution_timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionTimeoutSeconds, location_name: 'executionTimeoutSeconds', traits: {"smithy.api#documentation" => "<p>The time after which query generation will time out.</p>"}))
    QueryGenerationConfiguration.add_member(:generation_context, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryGenerationContext, location_name: 'generationContext', traits: {"smithy.api#documentation" => "<p>Specifies configurations for context to use during query generation.</p>"}))
    QueryGenerationConfiguration.type = Types::QueryGenerationConfiguration
    QueryGenerationContext.add_member(:tables, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryGenerationTables, location_name: 'tables', traits: {"smithy.api#documentation" => "<p>An array of objects, each of which defines information about a table in the database.</p>"}))
    QueryGenerationContext.add_member(:curated_queries, Smithy::Schema::Shapes::ShapeRef.new(shape: CuratedQueries, location_name: 'curatedQueries', traits: {"smithy.api#documentation" => "<p>An array of objects, each of which defines information about example queries to help the query engine generate appropriate SQL queries.</p>"}))
    QueryGenerationContext.type = Types::QueryGenerationContext
    QueryGenerationTable.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryGenerationTableName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the table for which the other fields in this object apply.</p>", "smithy.api#required" => {}}))
    QueryGenerationTable.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the table that helps the query engine understand the contents of the table.</p>"}))
    QueryGenerationTable.add_member(:inclusion, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeExclude, location_name: 'inclusion', traits: {"smithy.api#documentation" => "<p>Specifies whether to include or exclude the table during query generation. If you specify <code>EXCLUDE</code>, the table will be ignored. If you specify <code>INCLUDE</code>, all other tables will be ignored.</p>"}))
    QueryGenerationTable.add_member(:columns, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryGenerationColumns, location_name: 'columns', traits: {"smithy.api#documentation" => "<p>An array of objects, each of which defines information about a column in the table.</p>"}))
    QueryGenerationTable.type = Types::QueryGenerationTable
    QueryGenerationTables.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryGenerationTable)
    RdsConfiguration.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vector store.</p>", "smithy.api#required" => {}}))
    RdsConfiguration.add_member(:credentials_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'credentialsSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the secret that you created in Secrets Manager that is linked to your Amazon RDS database.</p>", "smithy.api#required" => {}}))
    RdsConfiguration.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDatabaseName, location_name: 'databaseName', traits: {"smithy.api#documentation" => "<p>The name of your Amazon RDS database.</p>", "smithy.api#required" => {}}))
    RdsConfiguration.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsTableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the table in the database.</p>", "smithy.api#required" => {}}))
    RdsConfiguration.add_member(:field_mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsFieldMapping, location_name: 'fieldMapping', traits: {"smithy.api#documentation" => "<p>Contains the names of the fields to which to map information about the vector store.</p>", "smithy.api#required" => {}}))
    RdsConfiguration.type = Types::RdsConfiguration
    RdsFieldMapping.add_member(:primary_key_field, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'primaryKeyField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the ID for each entry.</p>", "smithy.api#required" => {}}))
    RdsFieldMapping.add_member(:vector_field, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'vectorField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.</p>", "smithy.api#required" => {}}))
    RdsFieldMapping.add_member(:text_field, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'textField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>", "smithy.api#required" => {}}))
    RdsFieldMapping.add_member(:metadata_field, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'metadataField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>", "smithy.api#required" => {}}))
    RdsFieldMapping.add_member(:custom_metadata_field, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'customMetadataField', traits: {"smithy.api#documentation" => "<p>Provide a name for the universal metadata field where Amazon Bedrock will store any custom metadata from your data source.</p>"}))
    RdsFieldMapping.type = Types::RdsFieldMapping
    RecommendedActions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedAction)
    RedisEnterpriseCloudConfiguration.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: RedisEnterpriseCloudEndpoint, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the Redis Enterprise Cloud database.</p>", "smithy.api#required" => {}}))
    RedisEnterpriseCloudConfiguration.add_member(:vector_index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RedisEnterpriseCloudIndexName, location_name: 'vectorIndexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index.</p>", "smithy.api#required" => {}}))
    RedisEnterpriseCloudConfiguration.add_member(:credentials_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'credentialsSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the secret that you created in Secrets Manager that is linked to your Redis Enterprise Cloud database.</p>", "smithy.api#required" => {}}))
    RedisEnterpriseCloudConfiguration.add_member(:field_mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: RedisEnterpriseCloudFieldMapping, location_name: 'fieldMapping', traits: {"smithy.api#documentation" => "<p>Contains the names of the fields to which to map information about the vector store.</p>", "smithy.api#required" => {}}))
    RedisEnterpriseCloudConfiguration.type = Types::RedisEnterpriseCloudConfiguration
    RedisEnterpriseCloudFieldMapping.add_member(:vector_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'vectorField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.</p>", "smithy.api#required" => {}}))
    RedisEnterpriseCloudFieldMapping.add_member(:text_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'textField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>", "smithy.api#required" => {}}))
    RedisEnterpriseCloudFieldMapping.add_member(:metadata_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'metadataField', traits: {"smithy.api#documentation" => "<p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>", "smithy.api#required" => {}}))
    RedisEnterpriseCloudFieldMapping.type = Types::RedisEnterpriseCloudFieldMapping
    RedshiftConfiguration.add_member(:storage_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftQueryEngineStorageConfigurations, location_name: 'storageConfigurations', traits: {"smithy.api#documentation" => "<p>Specifies configurations for Amazon Redshift database storage.</p>", "smithy.api#required" => {}}))
    RedshiftConfiguration.add_member(:query_engine_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftQueryEngineConfiguration, location_name: 'queryEngineConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configurations for an Amazon Redshift query engine.</p>", "smithy.api#required" => {}}))
    RedshiftConfiguration.add_member(:query_generation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryGenerationConfiguration, location_name: 'queryGenerationConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configurations for generating queries.</p>"}))
    RedshiftConfiguration.type = Types::RedshiftConfiguration
    RedshiftProvisionedAuthConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftProvisionedAuthType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of authentication to use.</p>", "smithy.api#required" => {}}))
    RedshiftProvisionedAuthConfiguration.add_member(:database_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'databaseUser', traits: {"smithy.api#documentation" => "<p>The database username for authentication to an Amazon Redshift provisioned data warehouse.</p>"}))
    RedshiftProvisionedAuthConfiguration.add_member(:username_password_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'usernamePasswordSecretArn', traits: {"smithy.api#documentation" => "<p>The ARN of an Secrets Manager secret for authentication.</p>"}))
    RedshiftProvisionedAuthConfiguration.type = Types::RedshiftProvisionedAuthConfiguration
    RedshiftProvisionedAuthType.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "IAM"}))
    RedshiftProvisionedAuthType.add_member(:username_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USERNAME_PASSWORD', traits: {"smithy.api#enumValue" => "USERNAME_PASSWORD"}))
    RedshiftProvisionedAuthType.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USERNAME', traits: {"smithy.api#enumValue" => "USERNAME"}))
    RedshiftProvisionedConfiguration.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Redshift cluster.</p>", "smithy.api#required" => {}}))
    RedshiftProvisionedConfiguration.add_member(:auth_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftProvisionedAuthConfiguration, location_name: 'authConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configurations for authentication to Amazon Redshift.</p>", "smithy.api#required" => {}}))
    RedshiftProvisionedConfiguration.type = Types::RedshiftProvisionedConfiguration
    RedshiftQueryEngineAwsDataCatalogStorageConfiguration.add_member(:table_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsDataCatalogTableNames, location_name: 'tableNames', traits: {"smithy.api#documentation" => "<p>A list of names of the tables to use.</p>", "smithy.api#required" => {}}))
    RedshiftQueryEngineAwsDataCatalogStorageConfiguration.type = Types::RedshiftQueryEngineAwsDataCatalogStorageConfiguration
    RedshiftQueryEngineConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftQueryEngineType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of query engine.</p>", "smithy.api#required" => {}}))
    RedshiftQueryEngineConfiguration.add_member(:serverless_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftServerlessConfiguration, location_name: 'serverlessConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configurations for a serverless Amazon Redshift query engine.</p>"}))
    RedshiftQueryEngineConfiguration.add_member(:provisioned_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftProvisionedConfiguration, location_name: 'provisionedConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configurations for a provisioned Amazon Redshift query engine.</p>"}))
    RedshiftQueryEngineConfiguration.type = Types::RedshiftQueryEngineConfiguration
    RedshiftQueryEngineRedshiftStorageConfiguration.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDatabase, location_name: 'databaseName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Redshift database.</p>", "smithy.api#required" => {}}))
    RedshiftQueryEngineRedshiftStorageConfiguration.type = Types::RedshiftQueryEngineRedshiftStorageConfiguration
    RedshiftQueryEngineStorageConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftQueryEngineStorageType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The data storage service to use.</p>", "smithy.api#required" => {}}))
    RedshiftQueryEngineStorageConfiguration.add_member(:aws_data_catalog_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftQueryEngineAwsDataCatalogStorageConfiguration, location_name: 'awsDataCatalogConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configurations for storage in Glue Data Catalog.</p>"}))
    RedshiftQueryEngineStorageConfiguration.add_member(:redshift_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftQueryEngineRedshiftStorageConfiguration, location_name: 'redshiftConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configurations for storage in Amazon Redshift.</p>"}))
    RedshiftQueryEngineStorageConfiguration.type = Types::RedshiftQueryEngineStorageConfiguration
    RedshiftQueryEngineStorageConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftQueryEngineStorageConfiguration)
    RedshiftQueryEngineStorageType.add_member(:redshift, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDSHIFT', traits: {"smithy.api#enumValue" => "REDSHIFT"}))
    RedshiftQueryEngineStorageType.add_member(:aws_data_catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_DATA_CATALOG', traits: {"smithy.api#enumValue" => "AWS_DATA_CATALOG"}))
    RedshiftQueryEngineType.add_member(:serverless, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVERLESS', traits: {"smithy.api#enumValue" => "SERVERLESS"}))
    RedshiftQueryEngineType.add_member(:provisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONED', traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    RedshiftServerlessAuthConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftServerlessAuthType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of authentication to use.</p>", "smithy.api#required" => {}}))
    RedshiftServerlessAuthConfiguration.add_member(:username_password_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'usernamePasswordSecretArn', traits: {"smithy.api#documentation" => "<p>The ARN of an Secrets Manager secret for authentication.</p>"}))
    RedshiftServerlessAuthConfiguration.type = Types::RedshiftServerlessAuthConfiguration
    RedshiftServerlessAuthType.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "IAM"}))
    RedshiftServerlessAuthType.add_member(:username_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USERNAME_PASSWORD', traits: {"smithy.api#enumValue" => "USERNAME_PASSWORD"}))
    RedshiftServerlessConfiguration.add_member(:workgroup_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupArn, location_name: 'workgroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Redshift workgroup.</p>", "smithy.api#required" => {}}))
    RedshiftServerlessConfiguration.add_member(:auth_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftServerlessAuthConfiguration, location_name: 'authConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configurations for authentication to an Amazon Redshift provisioned data warehouse.</p>", "smithy.api#required" => {}}))
    RedshiftServerlessConfiguration.type = Types::RedshiftServerlessConfiguration
    RelayConversationHistory.add_member(:to_collaborator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TO_COLLABORATOR', traits: {"smithy.api#enumValue" => "TO_COLLABORATOR"}))
    RelayConversationHistory.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    RequireConfirmation.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    RequireConfirmation.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    RerankingMetadataSelectionMode.add_member(:selective, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELECTIVE', traits: {"smithy.api#enumValue" => "SELECTIVE"}))
    RerankingMetadataSelectionMode.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    RerankingMetadataSelectiveModeConfiguration.add_member(:fields_to_include, Types::RerankingMetadataSelectiveModeConfiguration::FieldsToInclude, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsForReranking, location_name: 'fieldsToInclude', traits: {"smithy.api#documentation" => "<p>Specifies the metadata fields to include in the reranking process.</p>"}))
    RerankingMetadataSelectiveModeConfiguration.add_member(:fields_to_exclude, Types::RerankingMetadataSelectiveModeConfiguration::FieldsToExclude, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsForReranking, location_name: 'fieldsToExclude', traits: {"smithy.api#documentation" => "<p>Specifies the metadata fields to exclude from the reranking process.</p>"}))
    RerankingMetadataSelectiveModeConfiguration.add_member(:unknown, Types::RerankingMetadataSelectiveModeConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RerankingMetadataSelectiveModeConfiguration.type = Types::RerankingMetadataSelectiveModeConfiguration
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetrievalFlowNodeConfiguration.add_member(:service_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalFlowNodeServiceConfiguration, location_name: 'serviceConfiguration', traits: {"smithy.api#documentation" => "<p>Contains configurations for the service to use for retrieving data to return as the output from the node.</p>", "smithy.api#required" => {}}))
    RetrievalFlowNodeConfiguration.type = Types::RetrievalFlowNodeConfiguration
    RetrievalFlowNodeS3Configuration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket from which to retrieve data.</p>", "smithy.api#required" => {}}))
    RetrievalFlowNodeS3Configuration.type = Types::RetrievalFlowNodeS3Configuration
    RetrievalFlowNodeServiceConfiguration.add_member(:s3, Types::RetrievalFlowNodeServiceConfiguration::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalFlowNodeS3Configuration, location_name: 's3', traits: {"smithy.api#documentation" => "<p>Contains configurations for the Amazon S3 location from which to retrieve data to return as the output from the node.</p>"}))
    RetrievalFlowNodeServiceConfiguration.add_member(:unknown, Types::RetrievalFlowNodeServiceConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RetrievalFlowNodeServiceConfiguration.type = Types::RetrievalFlowNodeServiceConfiguration
    S3Content.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>The S3 location of the file containing the content to ingest.</p>", "smithy.api#required" => {}}))
    S3Content.type = Types::S3Content
    S3DataSourceConfiguration.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArn, location_name: 'bucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket that contains your data.</p>", "smithy.api#required" => {}}))
    S3DataSourceConfiguration.add_member(:inclusion_prefixes, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefixes, location_name: 'inclusionPrefixes', traits: {"smithy.api#documentation" => "<p>A list of S3 prefixes to include certain files or content. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html\">Organizing objects using prefixes</a>.</p>"}))
    S3DataSourceConfiguration.add_member(:bucket_owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketOwnerAccountId, location_name: 'bucketOwnerAccountId', traits: {"smithy.api#documentation" => "<p>The account ID for the owner of the S3 bucket.</p>"}))
    S3DataSourceConfiguration.type = Types::S3DataSourceConfiguration
    S3Identifier.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 's3BucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket.</p>"}))
    S3Identifier.add_member(:s3_object_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 's3ObjectKey', traits: {"smithy.api#documentation" => "<p>The S3 object key for the S3 resource.</p>"}))
    S3Identifier.type = Types::S3Identifier
    S3Location.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketUri, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>The location's URI. For example, <code>s3://my-bucket/chunk-processor/</code>.</p>", "smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    S3Prefixes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix)
    S3VectorsConfiguration.add_member(:vector_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorBucketArn, location_name: 'vectorBucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket where vector embeddings are stored. This bucket contains the vector data used by the knowledge base.</p>"}))
    S3VectorsConfiguration.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vector index used for the knowledge base. This ARN identifies the specific vector index resource within Amazon Bedrock.</p>"}))
    S3VectorsConfiguration.add_member(:index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#documentation" => "<p>The name of the vector index used for the knowledge base. This name identifies the vector index within the Amazon Bedrock service.</p>"}))
    S3VectorsConfiguration.type = Types::S3VectorsConfiguration
    SalesforceAuthType.add_member(:oauth2_client_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OAUTH2_CLIENT_CREDENTIALS', traits: {"smithy.api#enumValue" => "OAUTH2_CLIENT_CREDENTIALS"}))
    SalesforceCrawlerConfiguration.add_member(:filter_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CrawlFilterConfiguration, location_name: 'filterConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of filtering the Salesforce content. For example, configuring regular expression patterns to include or exclude certain content.</p>"}))
    SalesforceCrawlerConfiguration.type = Types::SalesforceCrawlerConfiguration
    SalesforceDataSourceConfiguration.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SalesforceSourceConfiguration, location_name: 'sourceConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint information to connect to your Salesforce data source.</p>", "smithy.api#required" => {}}))
    SalesforceDataSourceConfiguration.add_member(:crawler_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SalesforceCrawlerConfiguration, location_name: 'crawlerConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the Salesforce content. For example, configuring specific types of Salesforce content.</p>"}))
    SalesforceDataSourceConfiguration.type = Types::SalesforceDataSourceConfiguration
    SalesforceSourceConfiguration.add_member(:host_url, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsUrl, location_name: 'hostUrl', traits: {"smithy.api#documentation" => "<p>The Salesforce host URL or instance URL.</p>", "smithy.api#required" => {}}))
    SalesforceSourceConfiguration.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SalesforceAuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The supported authentication type to authenticate and connect to your Salesforce instance.</p>", "smithy.api#required" => {}}))
    SalesforceSourceConfiguration.add_member(:credentials_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'credentialsSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of an Secrets Manager secret that stores your authentication credentials for your Salesforce instance URL. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/salesforce-data-source-connector.html#configuration-salesforce-connector\">Salesforce connection configuration</a>.</p>", "smithy.api#required" => {}}))
    SalesforceSourceConfiguration.type = Types::SalesforceSourceConfiguration
    SeedUrl.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>A seed or starting point URL.</p>"}))
    SeedUrl.type = Types::SeedUrl
    SeedUrls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SeedUrl)
    SemanticChunkingConfiguration.add_member(:max_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxTokens', traits: {"smithy.api#documentation" => "<p>The maximum number of tokens that a chunk can contain.</p>", "smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.add_member(:buffer_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'bufferSize', traits: {"smithy.api#documentation" => "<p>The buffer size.</p>", "smithy.api#range" => {"min" => 0, "max" => 1}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.add_member(:breakpoint_percentile_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'breakpointPercentileThreshold', traits: {"smithy.api#documentation" => "<p>The dissimilarity threshold for splitting chunks.</p>", "smithy.api#range" => {"min" => 50, "max" => 99}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.type = Types::SemanticChunkingConfiguration
    ServerSideEncryptionConfiguration.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the resource.</p>"}))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionSummaryConfiguration.add_member(:max_recent_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecentSessions, location_name: 'maxRecentSessions', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Maximum number of recent session summaries to include in the agent's prompt context.</p>"}))
    SessionSummaryConfiguration.type = Types::SessionSummaryConfiguration
    SharePointAuthType.add_member(:oauth2_client_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OAUTH2_CLIENT_CREDENTIALS', traits: {"smithy.api#enumValue" => "OAUTH2_CLIENT_CREDENTIALS"}))
    SharePointAuthType.add_member(:oauth2_sharepoint_app_only_client_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS', traits: {"smithy.api#enumValue" => "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS"}))
    SharePointCrawlerConfiguration.add_member(:filter_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CrawlFilterConfiguration, location_name: 'filterConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of filtering the SharePoint content. For example, configuring regular expression patterns to include or exclude certain content.</p>"}))
    SharePointCrawlerConfiguration.type = Types::SharePointCrawlerConfiguration
    SharePointDataSourceConfiguration.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SharePointSourceConfiguration, location_name: 'sourceConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint information to connect to your SharePoint data source.</p>", "smithy.api#required" => {}}))
    SharePointDataSourceConfiguration.add_member(:crawler_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SharePointCrawlerConfiguration, location_name: 'crawlerConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the SharePoint content. For example, configuring specific types of SharePoint content.</p>"}))
    SharePointDataSourceConfiguration.type = Types::SharePointDataSourceConfiguration
    SharePointHostType.add_member(:online, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONLINE', traits: {"smithy.api#enumValue" => "ONLINE"}))
    SharePointSiteUrls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsUrl)
    SharePointSourceConfiguration.add_member(:tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Microsoft365TenantId, location_name: 'tenantId', traits: {"smithy.api#documentation" => "<p>The identifier of your Microsoft 365 tenant.</p>"}))
    SharePointSourceConfiguration.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: SharePointDomain, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The domain of your SharePoint instance or site URL/URLs.</p>", "smithy.api#required" => {}}))
    SharePointSourceConfiguration.add_member(:site_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: SharePointSiteUrls, location_name: 'siteUrls', traits: {"smithy.api#documentation" => "<p>A list of one or more SharePoint site URLs.</p>", "smithy.api#required" => {}}))
    SharePointSourceConfiguration.add_member(:host_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SharePointHostType, location_name: 'hostType', traits: {"smithy.api#documentation" => "<p>The supported host type, whether online/cloud or server/on-premises.</p>", "smithy.api#required" => {}}))
    SharePointSourceConfiguration.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SharePointAuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The supported authentication type to authenticate and connect to your SharePoint site/sites.</p>", "smithy.api#required" => {}}))
    SharePointSourceConfiguration.add_member(:credentials_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'credentialsSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of an Secrets Manager secret that stores your authentication credentials for your SharePoint site/sites. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/sharepoint-data-source-connector.html#configuration-sharepoint-connector\">SharePoint connection configuration</a>.</p>", "smithy.api#required" => {}}))
    SharePointSourceConfiguration.type = Types::SharePointSourceConfiguration
    SortOrder.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SpecificToolChoice.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ToolName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the tool.</p>", "smithy.api#required" => {}}))
    SpecificToolChoice.type = Types::SpecificToolChoice
    SqlKnowledgeBaseConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryEngineType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of SQL database to connect to the knowledge base.</p>", "smithy.api#required" => {}}))
    SqlKnowledgeBaseConfiguration.add_member(:redshift_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftConfiguration, location_name: 'redshiftConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configurations for a knowledge base connected to an Amazon Redshift database.</p>"}))
    SqlKnowledgeBaseConfiguration.type = Types::SqlKnowledgeBaseConfiguration
    StartIngestionJobRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base for the data ingestion job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartIngestionJobRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source you want to ingest into your knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartIngestionJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    StartIngestionJobRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the data ingestion job.</p>"}))
    StartIngestionJobRequest.type = Types::StartIngestionJobRequest
    StartIngestionJobResponse.add_member(:ingestion_job, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJob, location_name: 'ingestionJob', traits: {"smithy.api#documentation" => "<p>Contains information about the data ingestion job.</p>", "smithy.api#required" => {}}))
    StartIngestionJobResponse.type = Types::StartIngestionJobResponse
    StepType.add_member(:post_chunking, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POST_CHUNKING', traits: {"smithy.api#enumValue" => "POST_CHUNKING"}))
    StopIngestionJobRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base for the data ingestion job you want to stop.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopIngestionJobRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source for the data ingestion job you want to stop.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopIngestionJobRequest.add_member(:ingestion_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ingestionJobId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data ingestion job you want to stop.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopIngestionJobRequest.type = Types::StopIngestionJobRequest
    StopIngestionJobResponse.add_member(:ingestion_job, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionJob, location_name: 'ingestionJob', traits: {"smithy.api#documentation" => "<p>Contains information about the stopped data ingestion job.</p>", "smithy.api#required" => {}}))
    StopIngestionJobResponse.type = Types::StopIngestionJobResponse
    StopSequences.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    StorageConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseStorageType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The vector store service in which the knowledge base is stored.</p>", "smithy.api#required" => {}}))
    StorageConfiguration.add_member(:opensearch_serverless_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchServerlessConfiguration, location_name: 'opensearchServerlessConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the storage configuration of the knowledge base in Amazon OpenSearch Service.</p>"}))
    StorageConfiguration.add_member(:opensearch_managed_cluster_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchManagedClusterConfiguration, location_name: 'opensearchManagedClusterConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the storage configuration of the knowledge base in OpenSearch Managed Cluster. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-osm.html\">Create a vector index in Amazon OpenSearch Service</a>.</p>"}))
    StorageConfiguration.add_member(:pinecone_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PineconeConfiguration, location_name: 'pineconeConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the storage configuration of the knowledge base in Pinecone.</p>"}))
    StorageConfiguration.add_member(:redis_enterprise_cloud_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RedisEnterpriseCloudConfiguration, location_name: 'redisEnterpriseCloudConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the storage configuration of the knowledge base in Redis Enterprise Cloud.</p>"}))
    StorageConfiguration.add_member(:rds_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsConfiguration, location_name: 'rdsConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the storage configuration of the knowledge base in Amazon RDS. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html\">Create a vector index in Amazon RDS</a>.</p>"}))
    StorageConfiguration.add_member(:mongo_db_atlas_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbAtlasConfiguration, location_name: 'mongoDbAtlasConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the storage configuration of the knowledge base in MongoDB Atlas.</p>"}))
    StorageConfiguration.add_member(:neptune_analytics_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NeptuneAnalyticsConfiguration, location_name: 'neptuneAnalyticsConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the Neptune Analytics configuration of the knowledge base in Amazon Neptune. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-neptune.html\">Create a vector index in Amazon Neptune Analytics.</a>.</p>"}))
    StorageConfiguration.add_member(:s3_vectors_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3VectorsConfiguration, location_name: 's3VectorsConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for storing knowledge base data using S3 vectors. This includes vector index information and S3 bucket details for vector storage.</p>"}))
    StorageConfiguration.type = Types::StorageConfiguration
    StorageFlowNodeConfiguration.add_member(:service_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageFlowNodeServiceConfiguration, location_name: 'serviceConfiguration', traits: {"smithy.api#documentation" => "<p>Contains configurations for the service to use for storing the input into the node.</p>", "smithy.api#required" => {}}))
    StorageFlowNodeConfiguration.type = Types::StorageFlowNodeConfiguration
    StorageFlowNodeS3Configuration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket in which to store the input into the node.</p>", "smithy.api#required" => {}}))
    StorageFlowNodeS3Configuration.type = Types::StorageFlowNodeS3Configuration
    StorageFlowNodeServiceConfiguration.add_member(:s3, Types::StorageFlowNodeServiceConfiguration::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageFlowNodeS3Configuration, location_name: 's3', traits: {"smithy.api#documentation" => "<p>Contains configurations for the Amazon S3 location in which to store the input into the node.</p>"}))
    StorageFlowNodeServiceConfiguration.add_member(:unknown, Types::StorageFlowNodeServiceConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    StorageFlowNodeServiceConfiguration.type = Types::StorageFlowNodeServiceConfiguration
    StringListValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue)
    SupplementalDataStorageConfiguration.add_member(:storage_locations, Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalDataStorageLocations, location_name: 'storageLocations', traits: {"smithy.api#documentation" => "<p>A list of objects specifying storage locations for images extracted from multimodal documents in your data source.</p>", "smithy.api#required" => {}}))
    SupplementalDataStorageConfiguration.type = Types::SupplementalDataStorageConfiguration
    SupplementalDataStorageLocation.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalDataStorageLocationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies the storage service used for this location.</p>", "smithy.api#required" => {}}))
    SupplementalDataStorageLocation.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>Contains information about the Amazon S3 location for the extracted images.</p>"}))
    SupplementalDataStorageLocation.type = Types::SupplementalDataStorageLocation
    SupplementalDataStorageLocationType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    SupplementalDataStorageLocations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalDataStorageLocation)
    SupportedLanguages.add_member(:python_3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PYTHON_3', traits: {"smithy.api#enumValue" => "Python_3"}))
    SystemContentBlock.add_member(:text, Types::SystemContentBlock::Text, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The text in the system prompt.</p>"}))
    SystemContentBlock.add_member(:cache_point, Types::SystemContentBlock::CachePoint, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePointBlock, location_name: 'cachePoint', traits: {"smithy.api#documentation" => "<p>Creates a cache checkpoint within a tool designation</p>"}))
    SystemContentBlock.add_member(:unknown, Types::SystemContentBlock::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SystemContentBlock.type = Types::SystemContentBlock
    SystemContentBlocks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SystemContentBlock)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourcesArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An object containing key-value pairs that define the tags to attach to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TextContentDoc.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: Data, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The text of the content.</p>", "smithy.api#required" => {}}))
    TextContentDoc.type = Types::TextContentDoc
    TextPromptTemplateConfiguration.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: TextPrompt, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The message for the prompt.</p>", "smithy.api#required" => {}}))
    TextPromptTemplateConfiguration.add_member(:cache_point, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePointBlock, location_name: 'cachePoint', traits: {"smithy.api#documentation" => "<p>A cache checkpoint within a template configuration.</p>"}))
    TextPromptTemplateConfiguration.add_member(:input_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptInputVariablesList, location_name: 'inputVariables', traits: {"smithy.api#documentation" => "<p>An array of the variables in the prompt template.</p>"}))
    TextPromptTemplateConfiguration.type = Types::TextPromptTemplateConfiguration
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    Tool.add_member(:tool_spec, Types::Tool::ToolSpec, Smithy::Schema::Shapes::ShapeRef.new(shape: ToolSpecification, location_name: 'toolSpec', traits: {"smithy.api#documentation" => "<p>The specification for the tool.</p>"}))
    Tool.add_member(:cache_point, Types::Tool::CachePoint, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePointBlock, location_name: 'cachePoint', traits: {"smithy.api#documentation" => "<p>Creates a cache checkpoint within a tool designation</p>"}))
    Tool.add_member(:unknown, Types::Tool::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Tool.type = Types::Tool
    ToolChoice.add_member(:auto, Types::ToolChoice::Auto, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoToolChoice, location_name: 'auto', traits: {"smithy.api#documentation" => "<p>Defines tools. The model automatically decides whether to call a tool or to generate text instead.</p>"}))
    ToolChoice.add_member(:any, Types::ToolChoice::Any, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyToolChoice, location_name: 'any', traits: {"smithy.api#documentation" => "<p>Defines tools, at least one of which must be requested by the model. No text is generated but the results of tool use are sent back to the model to help generate a response.</p>"}))
    ToolChoice.add_member(:tool, Types::ToolChoice::Tool, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecificToolChoice, location_name: 'tool', traits: {"smithy.api#documentation" => "<p>Defines a specific tool that the model must request. No text is generated but the results of tool use are sent back to the model to help generate a response.</p>"}))
    ToolChoice.add_member(:unknown, Types::ToolChoice::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ToolChoice.type = Types::ToolChoice
    ToolConfiguration.add_member(:tools, Smithy::Schema::Shapes::ShapeRef.new(shape: Tools, location_name: 'tools', traits: {"smithy.api#documentation" => "<p>An array of tools to pass to a model.</p>", "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    ToolConfiguration.add_member(:tool_choice, Smithy::Schema::Shapes::ShapeRef.new(shape: ToolChoice, location_name: 'toolChoice', traits: {"smithy.api#documentation" => "<p>Defines which tools the model should request when invoked.</p>"}))
    ToolConfiguration.type = Types::ToolConfiguration
    ToolInputSchema.add_member(:json, Types::ToolInputSchema::Json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Document, location_name: 'json', traits: {"smithy.api#documentation" => "<p>A JSON object defining the input schema for the tool.</p>"}))
    ToolInputSchema.add_member(:unknown, Types::ToolInputSchema::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ToolInputSchema.type = Types::ToolInputSchema
    ToolSpecification.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ToolName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the tool.</p>", "smithy.api#required" => {}}))
    ToolSpecification.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the tool.</p>"}))
    ToolSpecification.add_member(:input_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: ToolInputSchema, location_name: 'inputSchema', traits: {"smithy.api#documentation" => "<p>The input schema for the tool.</p>", "smithy.api#required" => {}}))
    ToolSpecification.type = Types::ToolSpecification
    Tools.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tool)
    Transformation.add_member(:transformation_function, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformationFunction, location_name: 'transformationFunction', traits: {"smithy.api#documentation" => "<p>A Lambda function that processes documents.</p>", "smithy.api#required" => {}}))
    Transformation.add_member(:step_to_apply, Smithy::Schema::Shapes::ShapeRef.new(shape: StepType, location_name: 'stepToApply', traits: {"smithy.api#documentation" => "<p>When the service applies the transformation.</p>", "smithy.api#required" => {}}))
    Transformation.type = Types::Transformation
    TransformationFunction.add_member(:transformation_lambda_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformationLambdaConfiguration, location_name: 'transformationLambdaConfiguration', traits: {"smithy.api#documentation" => "<p>The Lambda function.</p>", "smithy.api#required" => {}}))
    TransformationFunction.type = Types::TransformationFunction
    TransformationLambdaConfiguration.add_member(:lambda_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: 'lambdaArn', traits: {"smithy.api#documentation" => "<p>The function's ARN identifier.</p>", "smithy.api#required" => {}}))
    TransformationLambdaConfiguration.type = Types::TransformationLambdaConfiguration
    Transformations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Transformation)
    Type.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "string"}))
    Type.add_member(:number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER', traits: {"smithy.api#enumValue" => "number"}))
    Type.add_member(:integer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGER', traits: {"smithy.api#enumValue" => "integer"}))
    Type.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "boolean"}))
    Type.add_member(:array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARRAY', traits: {"smithy.api#enumValue" => "array"}))
    UnfulfilledNodeInputFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node containing the unfulfilled input.</p>", "smithy.api#required" => {}}))
    UnfulfilledNodeInputFlowValidationDetails.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInputName, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The name of the unfulfilled input. An input is unfulfilled if there are no data connections to it.</p>", "smithy.api#required" => {}}))
    UnfulfilledNodeInputFlowValidationDetails.type = Types::UnfulfilledNodeInputFlowValidationDetails
    UnknownConnectionConditionFlowValidationDetails.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionName, location_name: 'connection', traits: {"smithy.api#documentation" => "<p>The name of the connection with the unknown condition.</p>", "smithy.api#required" => {}}))
    UnknownConnectionConditionFlowValidationDetails.type = Types::UnknownConnectionConditionFlowValidationDetails
    UnknownConnectionSourceFlowValidationDetails.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionName, location_name: 'connection', traits: {"smithy.api#documentation" => "<p>The name of the connection with the unknown source.</p>", "smithy.api#required" => {}}))
    UnknownConnectionSourceFlowValidationDetails.type = Types::UnknownConnectionSourceFlowValidationDetails
    UnknownConnectionSourceOutputFlowValidationDetails.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionName, location_name: 'connection', traits: {"smithy.api#documentation" => "<p>The name of the connection with the unknown source output.</p>", "smithy.api#required" => {}}))
    UnknownConnectionSourceOutputFlowValidationDetails.type = Types::UnknownConnectionSourceOutputFlowValidationDetails
    UnknownConnectionTargetFlowValidationDetails.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionName, location_name: 'connection', traits: {"smithy.api#documentation" => "<p>The name of the connection with the unknown target.</p>", "smithy.api#required" => {}}))
    UnknownConnectionTargetFlowValidationDetails.type = Types::UnknownConnectionTargetFlowValidationDetails
    UnknownConnectionTargetInputFlowValidationDetails.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionName, location_name: 'connection', traits: {"smithy.api#documentation" => "<p>The name of the connection with the unknown target input.</p>", "smithy.api#required" => {}}))
    UnknownConnectionTargetInputFlowValidationDetails.type = Types::UnknownConnectionTargetInputFlowValidationDetails
    UnknownNodeInputFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the unknown input.</p>", "smithy.api#required" => {}}))
    UnknownNodeInputFlowValidationDetails.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeInputName, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The name of the node with the unknown input.</p>", "smithy.api#required" => {}}))
    UnknownNodeInputFlowValidationDetails.type = Types::UnknownNodeInputFlowValidationDetails
    UnknownNodeOutputFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the node with the unknown output.</p>", "smithy.api#required" => {}}))
    UnknownNodeOutputFlowValidationDetails.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeOutputName, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The name of the unknown output.</p>", "smithy.api#required" => {}}))
    UnknownNodeOutputFlowValidationDetails.type = Types::UnknownNodeOutputFlowValidationDetails
    UnreachableNodeFlowValidationDetails.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowNodeName, location_name: 'node', traits: {"smithy.api#documentation" => "<p>The name of the unreachable node.</p>", "smithy.api#required" => {}}))
    UnreachableNodeFlowValidationDetails.type = Types::UnreachableNodeFlowValidationDetails
    UnsatisfiedConnectionConditionsFlowValidationDetails.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowConnectionName, location_name: 'connection', traits: {"smithy.api#documentation" => "<p>The name of the connection with unsatisfied conditions.</p>", "smithy.api#required" => {}}))
    UnsatisfiedConnectionConditionsFlowValidationDetails.type = Types::UnsatisfiedConnectionConditionsFlowValidationDetails
    UnspecifiedFlowValidationDetails.type = Types::UnspecifiedFlowValidationDetails
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourcesArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of keys of the tags to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAgentActionGroupRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent for which to update the action group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentActionGroupRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent version for which to update the action group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentActionGroupRequest.add_member(:action_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'actionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the action group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentActionGroupRequest.add_member(:action_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'actionGroupName', traits: {"smithy.api#documentation" => "<p>Specifies a new name for the action group.</p>", "smithy.api#required" => {}}))
    UpdateAgentActionGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Specifies a new name for the action group.</p>"}))
    UpdateAgentActionGroupRequest.add_member(:parent_action_group_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupSignature, location_name: 'parentActionGroupSignature', traits: {"smithy.api#documentation" => "<p>Update the built-in or computer use action for this action group. If you specify a value, you must leave the <code>description</code>, <code>apiSchema</code>, and <code>actionGroupExecutor</code> fields empty for this action group. </p> <ul> <li> <p>To allow your agent to request the user for additional information when trying to complete a task, set this field to <code>AMAZON.UserInput</code>. </p> </li> <li> <p>To allow your agent to generate, run, and troubleshoot code when trying to complete a task, set this field to <code>AMAZON.CodeInterpreter</code>.</p> </li> <li> <p>To allow your agent to use an Anthropic computer use tool, specify one of the following values. </p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. When operating computer use functionality, we recommend taking additional security precautions, such as executing computer actions in virtual environments with restricted data access and limited internet connectivity. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html\">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important> <ul> <li> <p> <code>ANTHROPIC.Computer</code> - Gives the agent permission to use the mouse and keyboard and take screenshots.</p> </li> <li> <p> <code>ANTHROPIC.TextEditor</code> - Gives the agent permission to view, create and edit files.</p> </li> <li> <p> <code>ANTHROPIC.Bash</code> - Gives the agent permission to run commands in a bash shell.</p> </li> </ul> </li> </ul> <p>During orchestration, if your agent determines that it needs to invoke an API in an action group, but doesn't have enough information to complete the API request, it will invoke this action group instead and return an <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html\">Observation</a> reprompting the user for more information.</p>"}))
    UpdateAgentActionGroupRequest.add_member(:parent_action_group_signature_params, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupSignatureParams, location_name: 'parentActionGroupSignatureParams', traits: {"smithy.api#documentation" => "<p>The configuration settings for a computer use action.</p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html\">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important>"}))
    UpdateAgentActionGroupRequest.add_member(:action_group_executor, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupExecutor, location_name: 'actionGroupExecutor', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action.</p>"}))
    UpdateAgentActionGroupRequest.add_member(:action_group_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionGroupState, location_name: 'actionGroupState', traits: {"smithy.api#documentation" => "<p>Specifies whether the action group is available for the agent to invoke or not when sending an <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html\">InvokeAgent</a> request.</p>"}))
    UpdateAgentActionGroupRequest.add_member(:api_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: APISchema, location_name: 'apiSchema', traits: {"smithy.api#documentation" => "<p>Contains either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html\">Action group OpenAPI schemas</a>.</p>"}))
    UpdateAgentActionGroupRequest.add_member(:function_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSchema, location_name: 'functionSchema', traits: {"smithy.api#documentation" => "<p>Contains details about the function schema for the action group or the JSON or YAML-formatted payload defining the schema.</p>"}))
    UpdateAgentActionGroupRequest.type = Types::UpdateAgentActionGroupRequest
    UpdateAgentActionGroupResponse.add_member(:agent_action_group, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentActionGroup, location_name: 'agentActionGroup', traits: {"smithy.api#documentation" => "<p>Contains details about the action group that was updated.</p>", "smithy.api#required" => {}}))
    UpdateAgentActionGroupResponse.type = Types::UpdateAgentActionGroupResponse
    UpdateAgentAliasRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentAliasRequest.add_member(:agent_alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasId, location_name: 'agentAliasId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentAliasRequest.add_member(:agent_alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'agentAliasName', traits: {"smithy.api#documentation" => "<p>Specifies a new name for the alias.</p>", "smithy.api#required" => {}}))
    UpdateAgentAliasRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Specifies a new description for the alias.</p>"}))
    UpdateAgentAliasRequest.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAliasRoutingConfiguration, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about the routing configuration of the alias.</p>"}))
    UpdateAgentAliasRequest.add_member(:alias_invocation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasInvocationState, location_name: 'aliasInvocationState', traits: {"smithy.api#documentation" => "<p>The invocation state for the agent alias. To pause the agent alias, set the value to <code>REJECT_INVOCATIONS</code>. To start the agent alias running again, set the value to <code>ACCEPT_INVOCATIONS</code>. Use the <code>GetAgentAlias</code>, or <code>ListAgentAliases</code>, operation to get the invocation state of an agent alias.</p>"}))
    UpdateAgentAliasRequest.type = Types::UpdateAgentAliasRequest
    UpdateAgentAliasResponse.add_member(:agent_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAlias, location_name: 'agentAlias', traits: {"smithy.api#documentation" => "<p>Contains details about the alias that was updated.</p>", "smithy.api#required" => {}}))
    UpdateAgentAliasResponse.type = Types::UpdateAgentAliasResponse
    UpdateAgentCollaboratorRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The agent's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentCollaboratorRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The agent's version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentCollaboratorRequest.add_member(:collaborator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'collaboratorId', traits: {"smithy.api#documentation" => "<p>The collaborator's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentCollaboratorRequest.add_member(:agent_descriptor, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentDescriptor, location_name: 'agentDescriptor', traits: {"smithy.api#documentation" => "<p>An agent descriptor for the agent collaborator.</p>", "smithy.api#required" => {}}))
    UpdateAgentCollaboratorRequest.add_member(:collaborator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'collaboratorName', traits: {"smithy.api#documentation" => "<p>The collaborator's name.</p>", "smithy.api#required" => {}}))
    UpdateAgentCollaboratorRequest.add_member(:collaboration_instruction, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationInstruction, location_name: 'collaborationInstruction', traits: {"smithy.api#documentation" => "<p>Instruction for the collaborator.</p>", "smithy.api#required" => {}}))
    UpdateAgentCollaboratorRequest.add_member(:relay_conversation_history, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayConversationHistory, location_name: 'relayConversationHistory', traits: {"smithy.api#documentation" => "<p>A relay conversation history for the collaborator.</p>"}))
    UpdateAgentCollaboratorRequest.type = Types::UpdateAgentCollaboratorRequest
    UpdateAgentCollaboratorResponse.add_member(:agent_collaborator, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentCollaborator, location_name: 'agentCollaborator', traits: {"smithy.api#documentation" => "<p>Details about the collaborator.</p>", "smithy.api#required" => {}}))
    UpdateAgentCollaboratorResponse.type = Types::UpdateAgentCollaboratorResponse
    UpdateAgentKnowledgeBaseRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent associated with the knowledge base that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentKnowledgeBaseRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the agent associated with the knowledge base that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentKnowledgeBaseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base that has been associated with an agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentKnowledgeBaseRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Specifies a new description for the knowledge base associated with an agent.</p>"}))
    UpdateAgentKnowledgeBaseRequest.add_member(:knowledge_base_state, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseState, location_name: 'knowledgeBaseState', traits: {"smithy.api#documentation" => "<p>Specifies whether the agent uses the knowledge base or not when sending an <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html\">InvokeAgent</a> request.</p>"}))
    UpdateAgentKnowledgeBaseRequest.type = Types::UpdateAgentKnowledgeBaseRequest
    UpdateAgentKnowledgeBaseResponse.add_member(:agent_knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentKnowledgeBase, location_name: 'agentKnowledgeBase', traits: {"smithy.api#documentation" => "<p>Contains details about the knowledge base that has been associated with an agent.</p>", "smithy.api#required" => {}}))
    UpdateAgentKnowledgeBaseResponse.type = Types::UpdateAgentKnowledgeBaseResponse
    UpdateAgentRequest.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentRequest.add_member(:agent_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'agentName', traits: {"smithy.api#documentation" => "<p>Specifies a new name for the agent.</p>", "smithy.api#required" => {}}))
    UpdateAgentRequest.add_member(:instruction, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'instruction', traits: {"smithy.api#documentation" => "<p>Specifies new instructions that tell the agent what it should do and how it should interact with users.</p>"}))
    UpdateAgentRequest.add_member(:foundation_model, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: 'foundationModel', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier for the model that you want to be used for orchestration by the agent you create.</p> <p>The <code>modelId</code> to provide depends on the type of model or throughput that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns\">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html\">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html\">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, first purchase Provisioned Throughput for it. Then specify the ARN of the resulting provisioned model. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html\">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html\">imported model</a>, specify the ARN of the imported model. You can get the model ARN from a successful call to <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html\">CreateModelImportJob</a> or from the Imported models page in the Amazon Bedrock console.</p> </li> </ul>", "smithy.api#required" => {}}))
    UpdateAgentRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Specifies a new description of the agent.</p>"}))
    UpdateAgentRequest.add_member(:orchestration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OrchestrationType, location_name: 'orchestrationType', traits: {"smithy.api#documentation" => "<p> Specifies the type of orchestration strategy for the agent. This is set to <code>DEFAULT</code> orchestration type, by default. </p>"}))
    UpdateAgentRequest.add_member(:custom_orchestration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOrchestration, location_name: 'customOrchestration', traits: {"smithy.api#documentation" => "<p> Contains details of the custom orchestration configured for the agent. </p>"}))
    UpdateAgentRequest.add_member(:idle_session_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTTL, location_name: 'idleSessionTTLInSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent.</p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.</p>"}))
    UpdateAgentRequest.add_member(:agent_resource_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRoleArn, location_name: 'agentResourceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the agent.</p>", "smithy.api#required" => {}}))
    UpdateAgentRequest.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key with which to encrypt the agent.</p>"}))
    UpdateAgentRequest.add_member(:prompt_override_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: 'promptOverrideConfiguration', traits: {"smithy.api#documentation" => "<p>Contains configurations to override prompts in different parts of an agent sequence. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html\">Advanced prompts</a>.</p>"}))
    UpdateAgentRequest.add_member(:guardrail_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: 'guardrailConfiguration', traits: {"smithy.api#documentation" => "<p>The unique Guardrail configuration assigned to the agent when it is updated.</p>"}))
    UpdateAgentRequest.add_member(:memory_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryConfiguration, location_name: 'memoryConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the new memory configuration for the agent. </p>"}))
    UpdateAgentRequest.add_member(:agent_collaboration, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentCollaboration, location_name: 'agentCollaboration', traits: {"smithy.api#documentation" => "<p>The agent's collaboration role.</p>"}))
    UpdateAgentRequest.type = Types::UpdateAgentRequest
    UpdateAgentResponse.add_member(:agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Agent, location_name: 'agent', traits: {"smithy.api#documentation" => "<p>Contains details about the agent that was updated.</p>", "smithy.api#required" => {}}))
    UpdateAgentResponse.type = Types::UpdateAgentResponse
    UpdateDataSourceRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base for the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Specifies a new name for the data source.</p>", "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Specifies a new description for the data source.</p>"}))
    UpdateDataSourceRequest.add_member(:data_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: 'dataSourceConfiguration', traits: {"smithy.api#documentation" => "<p>The connection configuration for the data source that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:data_deletion_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDeletionPolicy, location_name: 'dataDeletionPolicy', traits: {"smithy.api#documentation" => "<p>The data deletion policy for the data source that you want to update.</p>"}))
    UpdateDataSourceRequest.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about server-side encryption of the data source.</p>"}))
    UpdateDataSourceRequest.add_member(:vector_ingestion_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: 'vectorIngestionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about how to ingest the documents in the data source.</p>"}))
    UpdateDataSourceRequest.type = Types::UpdateDataSourceRequest
    UpdateDataSourceResponse.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>Contains details about the data source.</p>", "smithy.api#required" => {}}))
    UpdateDataSourceResponse.type = Types::UpdateDataSourceResponse
    UpdateFlowAliasRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the alias.</p>", "smithy.api#required" => {}}))
    UpdateFlowAliasRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the alias.</p>"}))
    UpdateFlowAliasRequest.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>Contains information about the version to which to map the alias.</p>", "smithy.api#required" => {}}))
    UpdateFlowAliasRequest.add_member(:concurrency_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasConcurrencyConfiguration, location_name: 'concurrencyConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies how nodes in the flow are executed in parallel.</p>"}))
    UpdateFlowAliasRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFlowAliasRequest.add_member(:alias_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasIdentifier, location_name: 'aliasIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFlowAliasRequest.type = Types::UpdateFlowAliasRequest
    UpdateFlowAliasResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the alias.</p>", "smithy.api#required" => {}}))
    UpdateFlowAliasResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the flow.</p>"}))
    UpdateFlowAliasResponse.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasRoutingConfiguration, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>Contains information about the version that the alias is mapped to.</p>", "smithy.api#required" => {}}))
    UpdateFlowAliasResponse.add_member(:concurrency_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasConcurrencyConfiguration, location_name: 'concurrencyConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that specifies how nodes in the flow are executed in parallel.</p>"}))
    UpdateFlowAliasResponse.add_member(:flow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'flowId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    UpdateFlowAliasResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the alias.</p>", "smithy.api#required" => {}}))
    UpdateFlowAliasResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowAliasArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flow.</p>", "smithy.api#required" => {}}))
    UpdateFlowAliasResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was created.</p>", "smithy.api#required" => {}}))
    UpdateFlowAliasResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the alias was last updated.</p>", "smithy.api#required" => {}}))
    UpdateFlowAliasResponse.type = Types::UpdateFlowAliasResponse
    UpdateFlowRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the flow.</p>", "smithy.api#required" => {}}))
    UpdateFlowRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the flow.</p>"}))
    UpdateFlowRequest.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html\">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>", "smithy.api#required" => {}}))
    UpdateFlowRequest.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.</p>"}))
    UpdateFlowRequest.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>A definition of the nodes and the connections between the nodes in the flow.</p>"}))
    UpdateFlowRequest.add_member(:flow_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowIdentifier, location_name: 'flowIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFlowRequest.type = Types::UpdateFlowRequest
    UpdateFlowResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the flow.</p>", "smithy.api#required" => {}}))
    UpdateFlowResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the flow.</p>"}))
    UpdateFlowResponse.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role with permissions to create a flow. For more information, see <a href=\"https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html\">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>", "smithy.api#required" => {}}))
    UpdateFlowResponse.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key that the flow was encrypted with.</p>"}))
    UpdateFlowResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the flow.</p>", "smithy.api#required" => {}}))
    UpdateFlowResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flow.</p>", "smithy.api#required" => {}}))
    UpdateFlowResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the flow. When you submit this request, the status will be <code>NotPrepared</code>. If updating fails, the status becomes <code>Failed</code>.</p>", "smithy.api#required" => {}}))
    UpdateFlowResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was created.</p>", "smithy.api#required" => {}}))
    UpdateFlowResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the flow was last updated.</p>", "smithy.api#required" => {}}))
    UpdateFlowResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: DraftVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the flow. When you update a flow, the version updated is the <code>DRAFT</code> version.</p>", "smithy.api#required" => {}}))
    UpdateFlowResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>A definition of the nodes and the connections between nodes in the flow.</p>"}))
    UpdateFlowResponse.type = Types::UpdateFlowResponse
    UpdateKnowledgeBaseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the knowledge base to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateKnowledgeBaseRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Specifies a new name for the knowledge base.</p>", "smithy.api#required" => {}}))
    UpdateKnowledgeBaseRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Specifies a new description for the knowledge base.</p>"}))
    UpdateKnowledgeBaseRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>Specifies a different Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the knowledge base.</p>", "smithy.api#required" => {}}))
    UpdateKnowledgeBaseRequest.add_member(:knowledge_base_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseConfiguration, location_name: 'knowledgeBaseConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the configuration for the embeddings model used for the knowledge base. You must use the same configuration as when the knowledge base was created.</p>", "smithy.api#required" => {}}))
    UpdateKnowledgeBaseRequest.add_member(:storage_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfiguration, location_name: 'storageConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the configuration for the vector store used for the knowledge base. You must use the same configuration as when the knowledge base was created.</p>"}))
    UpdateKnowledgeBaseRequest.type = Types::UpdateKnowledgeBaseRequest
    UpdateKnowledgeBaseResponse.add_member(:knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBase, location_name: 'knowledgeBase', traits: {"smithy.api#documentation" => "<p>Contains details about the knowledge base.</p>", "smithy.api#required" => {}}))
    UpdateKnowledgeBaseResponse.type = Types::UpdateKnowledgeBaseResponse
    UpdatePromptRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the prompt.</p>", "smithy.api#required" => {}}))
    UpdatePromptRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the prompt.</p>"}))
    UpdatePromptRequest.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.</p>"}))
    UpdatePromptRequest.add_member(:default_variant, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantName, location_name: 'defaultVariant', traits: {"smithy.api#documentation" => "<p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html\">PromptVariant</a> object.</p>"}))
    UpdatePromptRequest.add_member(:variants, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantList, location_name: 'variants', traits: {"smithy.api#documentation" => "<p>A list of objects, each containing details about a variant of the prompt.</p>"}))
    UpdatePromptRequest.add_member(:prompt_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptIdentifier, location_name: 'promptIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the prompt.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePromptRequest.type = Types::UpdatePromptRequest
    UpdatePromptResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the prompt.</p>", "smithy.api#required" => {}}))
    UpdatePromptResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the prompt.</p>"}))
    UpdatePromptResponse.add_member(:customer_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'customerEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.</p>"}))
    UpdatePromptResponse.add_member(:default_variant, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantName, location_name: 'defaultVariant', traits: {"smithy.api#documentation" => "<p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html\">PromptVariant</a> object.</p>"}))
    UpdatePromptResponse.add_member(:variants, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptVariantList, location_name: 'variants', traits: {"smithy.api#documentation" => "<p>A list of objects, each containing details about a variant of the prompt.</p>"}))
    UpdatePromptResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the prompt.</p>", "smithy.api#required" => {}}))
    UpdatePromptResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PromptArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the prompt.</p>", "smithy.api#required" => {}}))
    UpdatePromptResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the prompt. When you update a prompt, the version updated is the <code>DRAFT</code> version.</p>", "smithy.api#required" => {}}))
    UpdatePromptResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the prompt was created.</p>", "smithy.api#required" => {}}))
    UpdatePromptResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the prompt was last updated.</p>", "smithy.api#required" => {}}))
    UpdatePromptResponse.type = Types::UpdatePromptResponse
    UrlConfiguration.add_member(:seed_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: SeedUrls, location_name: 'seedUrls', traits: {"smithy.api#documentation" => "<p>One or more seed or starting point URLs.</p>"}))
    UrlConfiguration.type = Types::UrlConfiguration
    ValidateFlowDefinitionRequest.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The definition of a flow to validate.</p>", "smithy.api#required" => {}}))
    ValidateFlowDefinitionRequest.type = Types::ValidateFlowDefinitionRequest
    ValidateFlowDefinitionResponse.add_member(:validations, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowValidations, location_name: 'validations', traits: {"smithy.api#documentation" => "<p>Contains an array of objects, each of which contains an error identified by validation.</p>", "smithy.api#required" => {}}))
    ValidateFlowDefinitionResponse.type = Types::ValidateFlowDefinitionResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>A list of objects containing fields that caused validation errors and their corresponding validation error messages.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the field.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message describing why this field failed validation.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VectorIngestionConfiguration.add_member(:chunking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChunkingConfiguration, location_name: 'chunkingConfiguration', traits: {"smithy.api#documentation" => "<p>Details about how to chunk the documents in the data source. A <i>chunk</i> refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried.</p>"}))
    VectorIngestionConfiguration.add_member(:custom_transformation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomTransformationConfiguration, location_name: 'customTransformationConfiguration', traits: {"smithy.api#documentation" => "<p>A custom document transformer for parsed data source documents.</p>"}))
    VectorIngestionConfiguration.add_member(:parsing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingConfiguration, location_name: 'parsingConfiguration', traits: {"smithy.api#documentation" => "<p>Configurations for a parser to use for parsing documents in your data source. If you exclude this field, the default parser will be used.</p>"}))
    VectorIngestionConfiguration.add_member(:context_enrichment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ContextEnrichmentConfiguration, location_name: 'contextEnrichmentConfiguration', traits: {"smithy.api#documentation" => "<p>The context enrichment configuration used for ingestion of the data into the vector store.</p>"}))
    VectorIngestionConfiguration.type = Types::VectorIngestionConfiguration
    VectorKnowledgeBaseConfiguration.add_member(:embedding_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockEmbeddingModelArn, location_name: 'embeddingModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model used to create vector embeddings for the knowledge base.</p>", "smithy.api#required" => {}}))
    VectorKnowledgeBaseConfiguration.add_member(:embedding_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EmbeddingModelConfiguration, location_name: 'embeddingModelConfiguration', traits: {"smithy.api#documentation" => "<p>The embeddings model configuration details for the vector model used in Knowledge Base.</p>"}))
    VectorKnowledgeBaseConfiguration.add_member(:supplemental_data_storage_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalDataStorageConfiguration, location_name: 'supplementalDataStorageConfiguration', traits: {"smithy.api#documentation" => "<p>If you include multimodal data from your data source, use this object to specify configurations for the storage location of the images extracted from your documents. These images can be retrieved and returned to the end user. They can also be used in generation when using <a href=\"https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html\">RetrieveAndGenerate</a>.</p>"}))
    VectorKnowledgeBaseConfiguration.type = Types::VectorKnowledgeBaseConfiguration
    VectorSearchBedrockRerankingConfiguration.add_member(:model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchBedrockRerankingModelConfiguration, location_name: 'modelConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the configuration for the Amazon Bedrock reranker model.</p>", "smithy.api#required" => {}}))
    VectorSearchBedrockRerankingConfiguration.add_member(:number_of_reranked_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'numberOfRerankedResults', traits: {"smithy.api#documentation" => "<p>Specifies the number of results to return after reranking.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    VectorSearchBedrockRerankingConfiguration.add_member(:metadata_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataConfigurationForReranking, location_name: 'metadataConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies how metadata fields should be handled during the reranking process.</p>"}))
    VectorSearchBedrockRerankingConfiguration.type = Types::VectorSearchBedrockRerankingConfiguration
    VectorSearchBedrockRerankingModelConfiguration.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockRerankingModelArn, location_name: 'modelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Bedrock reranker model.</p>", "smithy.api#required" => {}}))
    VectorSearchBedrockRerankingModelConfiguration.add_member(:additional_model_request_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: 'additionalModelRequestFields', traits: {"smithy.api#documentation" => "<p>Specifies additional model-specific request parameters as key-value pairs that are included in the request to the Amazon Bedrock reranker model.</p>"}))
    VectorSearchBedrockRerankingModelConfiguration.type = Types::VectorSearchBedrockRerankingModelConfiguration
    VectorSearchRerankingConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchRerankingConfigurationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies the type of reranking model to use. Currently, the only supported value is <code>BEDROCK_RERANKING_MODEL</code>.</p>", "smithy.api#required" => {}}))
    VectorSearchRerankingConfiguration.add_member(:bedrock_reranking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchBedrockRerankingConfiguration, location_name: 'bedrockRerankingConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the configuration for using an Amazon Bedrock reranker model to rerank retrieved results.</p>"}))
    VectorSearchRerankingConfiguration.type = Types::VectorSearchRerankingConfiguration
    VectorSearchRerankingConfigurationType.add_member(:bedrock_reranking_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEDROCK_RERANKING_MODEL', traits: {"smithy.api#enumValue" => "BEDROCK_RERANKING_MODEL"}))
    WebCrawlerConfiguration.add_member(:crawler_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: WebCrawlerLimits, location_name: 'crawlerLimits', traits: {"smithy.api#documentation" => "<p>The configuration of crawl limits for the web URLs.</p>"}))
    WebCrawlerConfiguration.add_member(:inclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'inclusionFilters', traits: {"smithy.api#documentation" => "<p>A list of one or more inclusion regular expression patterns to include certain URLs. If you specify an inclusion and exclusion filter/pattern and both match a URL, the exclusion filter takes precedence and the web content of the URL isn’t crawled.</p>"}))
    WebCrawlerConfiguration.add_member(:exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'exclusionFilters', traits: {"smithy.api#documentation" => "<p>A list of one or more exclusion regular expression patterns to exclude certain URLs. If you specify an inclusion and exclusion filter/pattern and both match a URL, the exclusion filter takes precedence and the web content of the URL isn’t crawled.</p>"}))
    WebCrawlerConfiguration.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: WebScopeType, location_name: 'scope', traits: {"smithy.api#documentation" => "<p>The scope of what is crawled for your URLs.</p> <p>You can choose to crawl only web pages that belong to the same host or primary domain. For example, only web pages that contain the seed URL \"https://docs.aws.amazon.com/bedrock/latest/userguide/\" and no other domains. You can choose to include sub domains in addition to the host or primary domain. For example, web pages that contain \"aws.amazon.com\" can also include sub domain \"docs.aws.amazon.com\".</p>"}))
    WebCrawlerConfiguration.add_member(:user_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAgent, location_name: 'userAgent', traits: {"smithy.api#documentation" => "<p>Returns the user agent suffix for your web crawler.</p>"}))
    WebCrawlerConfiguration.add_member(:user_agent_header, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAgentHeader, location_name: 'userAgentHeader', traits: {"smithy.api#documentation" => "<p>A string used for identifying the crawler or bot when it accesses a web server. The user agent header value consists of the <code>bedrockbot</code>, UUID, and a user agent suffix for your crawler (if one is provided). By default, it is set to <code>bedrockbot_UUID</code>. You can optionally append a custom suffix to <code>bedrockbot_UUID</code> to allowlist a specific user agent permitted to access your source URLs. </p>"}))
    WebCrawlerConfiguration.type = Types::WebCrawlerConfiguration
    WebCrawlerLimits.add_member(:rate_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'rateLimit', traits: {"smithy.api#documentation" => "<p>The max rate at which pages are crawled, up to 300 per minute per host.</p>", "smithy.api#range" => {"min" => 1, "max" => 300}}))
    WebCrawlerLimits.add_member(:max_pages, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxPages', traits: {"smithy.api#documentation" => "<p> The max number of web pages crawled from your source URLs, up to 25,000 pages. If the web pages exceed this limit, the data source sync will fail and no web pages will be ingested. </p>", "smithy.api#range" => {"min" => 1}}))
    WebCrawlerLimits.type = Types::WebCrawlerLimits
    WebDataSourceConfiguration.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WebSourceConfiguration, location_name: 'sourceConfiguration', traits: {"smithy.api#documentation" => "<p>The source configuration details for the web data source.</p>", "smithy.api#required" => {}}))
    WebDataSourceConfiguration.add_member(:crawler_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WebCrawlerConfiguration, location_name: 'crawlerConfiguration', traits: {"smithy.api#documentation" => "<p>The Web Crawler configuration details for the web data source.</p>"}))
    WebDataSourceConfiguration.type = Types::WebDataSourceConfiguration
    WebScopeType.add_member(:host_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOST_ONLY', traits: {"smithy.api#enumValue" => "HOST_ONLY"}))
    WebScopeType.add_member(:subdomains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBDOMAINS', traits: {"smithy.api#enumValue" => "SUBDOMAINS"}))
    WebSourceConfiguration.add_member(:url_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlConfiguration, location_name: 'urlConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the URL/URLs.</p>", "smithy.api#required" => {}}))
    WebSourceConfiguration.type = Types::WebSourceConfiguration

    AmazonBedrockAgentBuildTimeLambda = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bedrockagent#AmazonBedrockAgentBuildTimeLambda"
      service.name = "AmazonBedrockAgentBuildTimeLambda"
      service.version = "2023-06-05"
      service.traits = {"aws.api#service" => {"sdkId" => "Bedrock Agent", "arnNamespace" => "bedrock", "endpointPrefix" => "bedrock-agent", "cloudTrailEventSource" => "bedrock.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "bedrock"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "Agents for Amazon Bedrock"}
      service.add_operation(:associate_agent_collaborator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#AssociateAgentCollaborator"
        operation.name = "AssociateAgentCollaborator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAgentCollaboratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAgentCollaboratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:associate_agent_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#AssociateAgentKnowledgeBase"
        operation.name = "AssociateAgentKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAgentKnowledgeBaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAgentKnowledgeBaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:create_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#CreateAgent"
        operation.name = "CreateAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/agents/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:create_agent_action_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#CreateAgentActionGroup"
        operation.name = "CreateAgentActionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentActionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentActionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:create_agent_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#CreateAgentAlias"
        operation.name = "CreateAgentAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentAliasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/agents/{agentId}/agentaliases/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:create_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#CreateDataSource"
        operation.name = "CreateDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:create_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#CreateFlow"
        operation.name = "CreateFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/flows/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:create_flow_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#CreateFlowAlias"
        operation.name = "CreateFlowAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFlowAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFlowAliasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/flows/{flowIdentifier}/aliases"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:create_flow_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#CreateFlowVersion"
        operation.name = "CreateFlowVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFlowVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFlowVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/flows/{flowIdentifier}/versions"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:create_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#CreateKnowledgeBase"
        operation.name = "CreateKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKnowledgeBaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKnowledgeBaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/knowledgebases/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:create_prompt, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#CreatePrompt"
        operation.name = "CreatePrompt"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePromptRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePromptResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/prompts/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:create_prompt_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#CreatePromptVersion"
        operation.name = "CreatePromptVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePromptVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePromptVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/prompts/{promptIdentifier}/versions"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:delete_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DeleteAgent"
        operation.name = "DeleteAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/agents/{agentId}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:delete_agent_action_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DeleteAgentActionGroup"
        operation.name = "DeleteAgentActionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentActionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentActionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:delete_agent_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DeleteAgentAlias"
        operation.name = "DeleteAgentAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentAliasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/agents/{agentId}/agentaliases/{agentAliasId}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:delete_agent_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DeleteAgentVersion"
        operation.name = "DeleteAgentVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:delete_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DeleteDataSource"
        operation.name = "DeleteDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:delete_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DeleteFlow"
        operation.name = "DeleteFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/flows/{flowIdentifier}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:delete_flow_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DeleteFlowAlias"
        operation.name = "DeleteFlowAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlowAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlowAliasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/flows/{flowIdentifier}/aliases/{aliasIdentifier}"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:delete_flow_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DeleteFlowVersion"
        operation.name = "DeleteFlowVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlowVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlowVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/flows/{flowIdentifier}/versions/{flowVersion}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:delete_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DeleteKnowledgeBase"
        operation.name = "DeleteKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/knowledgebases/{knowledgeBaseId}"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:delete_knowledge_base_documents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DeleteKnowledgeBaseDocuments"
        operation.name = "DeleteKnowledgeBaseDocuments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseDocumentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseDocumentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents/deleteDocuments"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:delete_prompt, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DeletePrompt"
        operation.name = "DeletePrompt"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePromptRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePromptResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/prompts/{promptIdentifier}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:disassociate_agent_collaborator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DisassociateAgentCollaborator"
        operation.name = "DisassociateAgentCollaborator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAgentCollaboratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAgentCollaboratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/{collaboratorId}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:disassociate_agent_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#DisassociateAgentKnowledgeBase"
        operation.name = "DisassociateAgentKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAgentKnowledgeBaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAgentKnowledgeBaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetAgent"
        operation.name = "GetAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/agents/{agentId}/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_agent_action_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetAgentActionGroup"
        operation.name = "GetAgentActionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentActionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentActionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_agent_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetAgentAlias"
        operation.name = "GetAgentAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentAliasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/agents/{agentId}/agentaliases/{agentAliasId}/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_agent_collaborator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetAgentCollaborator"
        operation.name = "GetAgentCollaborator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentCollaboratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentCollaboratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/{collaboratorId}/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_agent_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetAgentKnowledgeBase"
        operation.name = "GetAgentKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentKnowledgeBaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentKnowledgeBaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_agent_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetAgentVersion"
        operation.name = "GetAgentVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetDataSource"
        operation.name = "GetDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetFlow"
        operation.name = "GetFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/flows/{flowIdentifier}/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_flow_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetFlowAlias"
        operation.name = "GetFlowAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFlowAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFlowAliasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/flows/{flowIdentifier}/aliases/{aliasIdentifier}"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_flow_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetFlowVersion"
        operation.name = "GetFlowVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFlowVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFlowVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/flows/{flowIdentifier}/versions/{flowVersion}/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_ingestion_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetIngestionJob"
        operation.name = "GetIngestionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIngestionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIngestionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/{ingestionJobId}"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetKnowledgeBase"
        operation.name = "GetKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKnowledgeBaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKnowledgeBaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/knowledgebases/{knowledgeBaseId}"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_knowledge_base_documents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetKnowledgeBaseDocuments"
        operation.name = "GetKnowledgeBaseDocuments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKnowledgeBaseDocumentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKnowledgeBaseDocumentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents/getDocuments"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:get_prompt, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#GetPrompt"
        operation.name = "GetPrompt"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPromptRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPromptResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/prompts/{promptIdentifier}/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:ingest_knowledge_base_documents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#IngestKnowledgeBaseDocuments"
        operation.name = "IngestKnowledgeBaseDocuments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: IngestKnowledgeBaseDocumentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: IngestKnowledgeBaseDocumentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:list_agent_action_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListAgentActionGroups"
        operation.name = "ListAgentActionGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentActionGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentActionGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListAgentActionGroups.new
      end)
      service.add_operation(:list_agent_aliases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListAgentAliases"
        operation.name = "ListAgentAliases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentAliasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentAliasesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/agents/{agentId}/agentaliases/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListAgentAliases.new
      end)
      service.add_operation(:list_agent_collaborators, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListAgentCollaborators"
        operation.name = "ListAgentCollaborators"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentCollaboratorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentCollaboratorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListAgentCollaborators.new
      end)
      service.add_operation(:list_agent_knowledge_bases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListAgentKnowledgeBases"
        operation.name = "ListAgentKnowledgeBases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentKnowledgeBasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentKnowledgeBasesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListAgentKnowledgeBases.new
      end)
      service.add_operation(:list_agent_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListAgentVersions"
        operation.name = "ListAgentVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/agents/{agentId}/agentversions/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListAgentVersions.new
      end)
      service.add_operation(:list_agents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListAgents"
        operation.name = "ListAgents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/agents/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListAgents.new
      end)
      service.add_operation(:list_data_sources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListDataSources"
        operation.name = "ListDataSources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListDataSources.new
      end)
      service.add_operation(:list_flow_aliases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListFlowAliases"
        operation.name = "ListFlowAliases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowAliasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowAliasesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/flows/{flowIdentifier}/aliases"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListFlowAliases.new
      end)
      service.add_operation(:list_flow_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListFlowVersions"
        operation.name = "ListFlowVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/flows/{flowIdentifier}/versions"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListFlowVersions.new
      end)
      service.add_operation(:list_flows, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListFlows"
        operation.name = "ListFlows"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/flows/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListFlows.new
      end)
      service.add_operation(:list_ingestion_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListIngestionJobs"
        operation.name = "ListIngestionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIngestionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIngestionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListIngestionJobs.new
      end)
      service.add_operation(:list_knowledge_base_documents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListKnowledgeBaseDocuments"
        operation.name = "ListKnowledgeBaseDocuments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKnowledgeBaseDocumentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKnowledgeBaseDocumentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListKnowledgeBaseDocuments.new
      end)
      service.add_operation(:list_knowledge_bases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListKnowledgeBases"
        operation.name = "ListKnowledgeBases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKnowledgeBasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKnowledgeBasesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/knowledgebases/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListKnowledgeBases.new
      end)
      service.add_operation(:list_prompts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListPrompts"
        operation.name = "ListPrompts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPromptsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPromptsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/prompts/"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
        operation[:paginator] = Paginators::ListPrompts.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:prepare_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#PrepareAgent"
        operation.name = "PrepareAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PrepareAgentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PrepareAgentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/agents/{agentId}/"}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:prepare_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#PrepareFlow"
        operation.name = "PrepareFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PrepareFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PrepareFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/flows/{flowIdentifier}/"}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:start_ingestion_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#StartIngestionJob"
        operation.name = "StartIngestionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartIngestionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartIngestionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:stop_ingestion_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#StopIngestionJob"
        operation.name = "StopIngestionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopIngestionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopIngestionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/{ingestionJobId}/stop"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#UpdateAgent"
        operation.name = "UpdateAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/agents/{agentId}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:update_agent_action_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#UpdateAgentActionGroup"
        operation.name = "UpdateAgentActionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentActionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentActionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:update_agent_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#UpdateAgentAlias"
        operation.name = "UpdateAgentAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentAliasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/agents/{agentId}/agentaliases/{agentAliasId}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:update_agent_collaborator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#UpdateAgentCollaborator"
        operation.name = "UpdateAgentCollaborator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentCollaboratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentCollaboratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/{collaboratorId}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:update_agent_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#UpdateAgentKnowledgeBase"
        operation.name = "UpdateAgentKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentKnowledgeBaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentKnowledgeBaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:update_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#UpdateDataSource"
        operation.name = "UpdateDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:update_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#UpdateFlow"
        operation.name = "UpdateFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/flows/{flowIdentifier}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:update_flow_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#UpdateFlowAlias"
        operation.name = "UpdateFlowAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFlowAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFlowAliasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/flows/{flowIdentifier}/aliases/{aliasIdentifier}"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:update_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#UpdateKnowledgeBase"
        operation.name = "UpdateKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/knowledgebases/{knowledgeBaseId}"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:update_prompt, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#UpdatePrompt"
        operation.name = "UpdatePrompt"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePromptRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePromptResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/prompts/{promptIdentifier}/"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["console"]}
      end)
      service.add_operation(:validate_flow_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagent#ValidateFlowDefinition"
        operation.name = "ValidateFlowDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateFlowDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateFlowDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/flows/validate-definition"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["console"]}
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
