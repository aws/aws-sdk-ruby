# frozen_string_literal: true

# This is generated code!

module Aws::Wisdom
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AppIntegrationsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#AppIntegrationsConfiguration', name: 'AppIntegrationsConfiguration')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})?$"})
    AssistantAssociationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#AssistantAssociationData', name: 'AssistantAssociationData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#AssistantAssociation"}]})
    AssistantAssociationInputData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.wisdom#AssistantAssociationInputData', name: 'AssistantAssociationInputData')
    AssistantAssociationOutputData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.wisdom#AssistantAssociationOutputData', name: 'AssistantAssociationOutputData')
    AssistantAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#AssistantAssociationSummary', name: 'AssistantAssociationSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#AssistantAssociation"}]})
    AssistantAssociationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#AssistantAssociationSummaryList', name: 'AssistantAssociationSummaryList')
    AssistantData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#AssistantData', name: 'AssistantData')
    AssistantIntegrationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#AssistantIntegrationConfiguration', name: 'AssistantIntegrationConfiguration')
    AssistantList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#AssistantList', name: 'AssistantList')
    AssistantStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#AssistantStatus', name: 'AssistantStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    AssistantSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#AssistantSummary', name: 'AssistantSummary')
    AssistantType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#AssistantType', name: 'AssistantType', traits: {"smithy.api#enum" => [{"value" => "AGENT", "name" => "AGENT"}]})
    AssociationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#AssociationType', name: 'AssociationType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_BASE", "name" => "KNOWLEDGE_BASE"}]})
    Channel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#Channel', name: 'Channel', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#sensitive" => {}})
    Channels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#Channels', name: 'Channels', traits: {"smithy.api#uniqueItems" => {}})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Configuration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.wisdom#Configuration', name: 'Configuration')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ConnectConfiguration', name: 'ConnectConfiguration')
    ContactAttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#ContactAttributeKey', name: 'ContactAttributeKey')
    ContactAttributeKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#ContactAttributeKeys', name: 'ContactAttributeKeys', traits: {"smithy.api#sensitive" => {}, "smithy.api#uniqueItems" => {}})
    ContactAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#ContactAttributeValue', name: 'ContactAttributeValue')
    ContactAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.wisdom#ContactAttributes', name: 'ContactAttributes', traits: {"smithy.api#sensitive" => {}})
    ContentData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ContentData', name: 'ContentData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#Content"}, {"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    ContentMetadata = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.wisdom#ContentMetadata', name: 'ContentMetadata', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ContentReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ContentReference', name: 'ContentReference')
    ContentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#ContentStatus', name: 'ContentStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}]})
    ContentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ContentSummary', name: 'ContentSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#Content"}, {"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    ContentSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#ContentSummaryList', name: 'ContentSummaryList')
    ContentTitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#ContentTitle', name: 'ContentTitle', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#ContentType', name: 'ContentType', traits: {"smithy.api#pattern" => "^(text/(plain|html|csv))|(application/(pdf|vnd\\.openxmlformats-officedocument\\.wordprocessingml\\.document))|(application/x\\.wisdom-json;source=(salesforce|servicenow|zendesk))$"})
    CreateAssistantAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateAssistantAssociationInput', name: 'CreateAssistantAssociationInput')
    CreateAssistantAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateAssistantAssociationOutput', name: 'CreateAssistantAssociationOutput')
    CreateAssistantInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateAssistantInput', name: 'CreateAssistantInput')
    CreateAssistantOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateAssistantOutput', name: 'CreateAssistantOutput')
    CreateContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateContentInput', name: 'CreateContentInput')
    CreateContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateContentOutput', name: 'CreateContentOutput')
    CreateKnowledgeBaseInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateKnowledgeBaseInput', name: 'CreateKnowledgeBaseInput')
    CreateKnowledgeBaseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateKnowledgeBaseOutput', name: 'CreateKnowledgeBaseOutput')
    CreateQuickResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateQuickResponseRequest', name: 'CreateQuickResponseRequest')
    CreateQuickResponseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateQuickResponseResponse', name: 'CreateQuickResponseResponse')
    CreateSessionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateSessionInput', name: 'CreateSessionInput')
    CreateSessionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#CreateSessionOutput', name: 'CreateSessionOutput')
    DeleteAssistantAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteAssistantAssociationInput', name: 'DeleteAssistantAssociationInput')
    DeleteAssistantAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteAssistantAssociationOutput', name: 'DeleteAssistantAssociationOutput')
    DeleteAssistantInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteAssistantInput', name: 'DeleteAssistantInput')
    DeleteAssistantOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteAssistantOutput', name: 'DeleteAssistantOutput')
    DeleteContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteContentInput', name: 'DeleteContentInput')
    DeleteContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteContentOutput', name: 'DeleteContentOutput')
    DeleteImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteImportJobRequest', name: 'DeleteImportJobRequest')
    DeleteImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteImportJobResponse', name: 'DeleteImportJobResponse')
    DeleteKnowledgeBaseInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteKnowledgeBaseInput', name: 'DeleteKnowledgeBaseInput')
    DeleteKnowledgeBaseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteKnowledgeBaseOutput', name: 'DeleteKnowledgeBaseOutput')
    DeleteQuickResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteQuickResponseRequest', name: 'DeleteQuickResponseRequest')
    DeleteQuickResponseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DeleteQuickResponseResponse', name: 'DeleteQuickResponseResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.,-]+"})
    Document = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#Document', name: 'Document')
    DocumentText = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#DocumentText', name: 'DocumentText')
    ExternalSource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#ExternalSource', name: 'ExternalSource', traits: {"smithy.api#enum" => [{"value" => "AMAZON_CONNECT", "name" => "AMAZON_CONNECT"}]})
    ExternalSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ExternalSourceConfiguration', name: 'ExternalSourceConfiguration')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#Filter', name: 'Filter')
    FilterField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#FilterField', name: 'FilterField', traits: {"smithy.api#enum" => [{"value" => "NAME", "name" => "NAME"}]})
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#FilterList', name: 'FilterList')
    FilterOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#FilterOperator', name: 'FilterOperator', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    GenericArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#GenericArn', name: 'GenericArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]+?:[a-z-]+?:[a-z0-9-]*?:([0-9]{12})?:[a-zA-Z0-9-:/]+$"})
    GetAssistantAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetAssistantAssociationInput', name: 'GetAssistantAssociationInput')
    GetAssistantAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetAssistantAssociationOutput', name: 'GetAssistantAssociationOutput')
    GetAssistantInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetAssistantInput', name: 'GetAssistantInput')
    GetAssistantOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetAssistantOutput', name: 'GetAssistantOutput')
    GetContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetContentInput', name: 'GetContentInput')
    GetContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetContentOutput', name: 'GetContentOutput')
    GetContentSummaryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetContentSummaryInput', name: 'GetContentSummaryInput')
    GetContentSummaryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetContentSummaryOutput', name: 'GetContentSummaryOutput')
    GetImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetImportJobRequest', name: 'GetImportJobRequest')
    GetImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetImportJobResponse', name: 'GetImportJobResponse')
    GetKnowledgeBaseInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetKnowledgeBaseInput', name: 'GetKnowledgeBaseInput')
    GetKnowledgeBaseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetKnowledgeBaseOutput', name: 'GetKnowledgeBaseOutput')
    GetQuickResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetQuickResponseRequest', name: 'GetQuickResponseRequest')
    GetQuickResponseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetQuickResponseResponse', name: 'GetQuickResponseResponse')
    GetRecommendationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetRecommendationsInput', name: 'GetRecommendationsInput')
    GetRecommendationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetRecommendationsOutput', name: 'GetRecommendationsOutput')
    GetSessionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetSessionInput', name: 'GetSessionInput')
    GetSessionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GetSessionOutput', name: 'GetSessionOutput')
    GroupingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#GroupingConfiguration', name: 'GroupingConfiguration')
    GroupingCriteria = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#GroupingCriteria', name: 'GroupingCriteria', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GroupingValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#GroupingValue', name: 'GroupingValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    GroupingValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#GroupingValues', name: 'GroupingValues', traits: {"smithy.api#uniqueItems" => {}})
    Headers = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.wisdom#Headers', name: 'Headers')
    Highlight = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#Highlight', name: 'Highlight')
    HighlightOffset = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wisdom#HighlightOffset', name: 'HighlightOffset', traits: {"smithy.api#default" => 0})
    Highlights = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#Highlights', name: 'Highlights')
    ImportJobData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ImportJobData', name: 'ImportJobData')
    ImportJobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#ImportJobList', name: 'ImportJobList')
    ImportJobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#ImportJobStatus', name: 'ImportJobStatus', traits: {"smithy.api#enum" => [{"value" => "START_IN_PROGRESS", "name" => "START_IN_PROGRESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETE", "name" => "COMPLETE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    ImportJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ImportJobSummary', name: 'ImportJobSummary')
    ImportJobType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#ImportJobType', name: 'ImportJobType', traits: {"smithy.api#enum" => [{"value" => "QUICK_RESPONSES", "name" => "QUICK_RESPONSES"}]})
    KnowledgeBaseAssociationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#KnowledgeBaseAssociationData', name: 'KnowledgeBaseAssociationData')
    KnowledgeBaseData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#KnowledgeBaseData', name: 'KnowledgeBaseData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    KnowledgeBaseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#KnowledgeBaseList', name: 'KnowledgeBaseList')
    KnowledgeBaseStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#KnowledgeBaseStatus', name: 'KnowledgeBaseStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    KnowledgeBaseSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#KnowledgeBaseSummary', name: 'KnowledgeBaseSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    KnowledgeBaseType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#KnowledgeBaseType', name: 'KnowledgeBaseType', traits: {"smithy.api#enum" => [{"value" => "EXTERNAL", "name" => "EXTERNAL"}, {"value" => "CUSTOM", "name" => "CUSTOM"}, {"value" => "QUICK_RESPONSES", "name" => "QUICK_RESPONSES"}]})
    LanguageCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#LanguageCode', name: 'LanguageCode', traits: {"smithy.api#length" => {"min" => 2, "max" => 5}})
    ListAssistantAssociationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListAssistantAssociationsInput', name: 'ListAssistantAssociationsInput')
    ListAssistantAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListAssistantAssociationsOutput', name: 'ListAssistantAssociationsOutput')
    ListAssistantsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListAssistantsInput', name: 'ListAssistantsInput')
    ListAssistantsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListAssistantsOutput', name: 'ListAssistantsOutput')
    ListContentsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListContentsInput', name: 'ListContentsInput')
    ListContentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListContentsOutput', name: 'ListContentsOutput')
    ListImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListImportJobsRequest', name: 'ListImportJobsRequest')
    ListImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListImportJobsResponse', name: 'ListImportJobsResponse')
    ListKnowledgeBasesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListKnowledgeBasesInput', name: 'ListKnowledgeBasesInput')
    ListKnowledgeBasesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListKnowledgeBasesOutput', name: 'ListKnowledgeBasesOutput')
    ListQuickResponsesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListQuickResponsesRequest', name: 'ListQuickResponsesRequest')
    ListQuickResponsesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListQuickResponsesResponse', name: 'ListQuickResponsesResponse')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wisdom#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.,-]+"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    NotifyRecommendationsReceivedError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#NotifyRecommendationsReceivedError', name: 'NotifyRecommendationsReceivedError')
    NotifyRecommendationsReceivedErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#NotifyRecommendationsReceivedErrorList', name: 'NotifyRecommendationsReceivedErrorList')
    NotifyRecommendationsReceivedErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#NotifyRecommendationsReceivedErrorMessage', name: 'NotifyRecommendationsReceivedErrorMessage')
    NotifyRecommendationsReceivedInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#NotifyRecommendationsReceivedInput', name: 'NotifyRecommendationsReceivedInput')
    NotifyRecommendationsReceivedOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#NotifyRecommendationsReceivedOutput', name: 'NotifyRecommendationsReceivedOutput')
    ObjectFieldsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#ObjectFieldsList', name: 'ObjectFieldsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Order = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#Order', name: 'Order', traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    PreconditionFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#PreconditionFailedException', name: 'PreconditionFailedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    Priority = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#Priority', name: 'Priority', traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    QueryAssistantInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#QueryAssistantInput', name: 'QueryAssistantInput')
    QueryAssistantOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#QueryAssistantOutput', name: 'QueryAssistantOutput')
    QueryRecommendationTriggerData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#QueryRecommendationTriggerData', name: 'QueryRecommendationTriggerData')
    QueryResultsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#QueryResultsList', name: 'QueryResultsList')
    QueryText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#QueryText', name: 'QueryText', traits: {"smithy.api#sensitive" => {}})
    QuickResponseContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#QuickResponseContent', name: 'QuickResponseContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    QuickResponseContentProvider = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.wisdom#QuickResponseContentProvider', name: 'QuickResponseContentProvider')
    QuickResponseContents = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#QuickResponseContents', name: 'QuickResponseContents')
    QuickResponseData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#QuickResponseData', name: 'QuickResponseData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#QuickResponse"}, {"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    QuickResponseDataProvider = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.wisdom#QuickResponseDataProvider', name: 'QuickResponseDataProvider')
    QuickResponseDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#QuickResponseDescription', name: 'QuickResponseDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    QuickResponseFilterField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#QuickResponseFilterField', name: 'QuickResponseFilterField')
    QuickResponseFilterFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#QuickResponseFilterFieldList', name: 'QuickResponseFilterFieldList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    QuickResponseFilterOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#QuickResponseFilterOperator', name: 'QuickResponseFilterOperator', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "PREFIX", "name" => "PREFIX"}]})
    QuickResponseFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#QuickResponseFilterValue', name: 'QuickResponseFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    QuickResponseFilterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#QuickResponseFilterValueList', name: 'QuickResponseFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    QuickResponseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#QuickResponseName', name: 'QuickResponseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    QuickResponseOrderField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#QuickResponseOrderField', name: 'QuickResponseOrderField')
    QuickResponseQueryField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#QuickResponseQueryField', name: 'QuickResponseQueryField')
    QuickResponseQueryFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#QuickResponseQueryFieldList', name: 'QuickResponseQueryFieldList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    QuickResponseQueryOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#QuickResponseQueryOperator', name: 'QuickResponseQueryOperator', traits: {"smithy.api#enum" => [{"value" => "CONTAINS", "name" => "CONTAINS"}, {"value" => "CONTAINS_AND_PREFIX", "name" => "CONTAINS_AND_PREFIX"}]})
    QuickResponseQueryValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#QuickResponseQueryValue', name: 'QuickResponseQueryValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    QuickResponseQueryValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#QuickResponseQueryValueList', name: 'QuickResponseQueryValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    QuickResponseSearchExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#QuickResponseSearchExpression', name: 'QuickResponseSearchExpression')
    QuickResponseSearchResultData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#QuickResponseSearchResultData', name: 'QuickResponseSearchResultData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#QuickResponse"}, {"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    QuickResponseSearchResultsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#QuickResponseSearchResultsList', name: 'QuickResponseSearchResultsList')
    QuickResponseStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#QuickResponseStatus', name: 'QuickResponseStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "CREATED", "name" => "CREATED"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "UPDATE_IN_PROGRESS", "name" => "UPDATE_IN_PROGRESS"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}]})
    QuickResponseSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#QuickResponseSummary', name: 'QuickResponseSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.wisdom#QuickResponse"}, {"resource" => "com.amazonaws.wisdom#KnowledgeBase"}]})
    QuickResponseSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#QuickResponseSummaryList', name: 'QuickResponseSummaryList')
    QuickResponseType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#QuickResponseType', name: 'QuickResponseType', traits: {"smithy.api#pattern" => "^(application/x\\.quickresponse;format=(plain|markdown))$"})
    RecommendationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#RecommendationData', name: 'RecommendationData')
    RecommendationIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#RecommendationIdList', name: 'RecommendationIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    RecommendationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#RecommendationList', name: 'RecommendationList')
    RecommendationSourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#RecommendationSourceType', name: 'RecommendationSourceType', traits: {"smithy.api#enum" => [{"value" => "ISSUE_DETECTION", "name" => "ISSUE_DETECTION"}, {"value" => "RULE_EVALUATION", "name" => "RULE_EVALUATION"}, {"value" => "OTHER", "name" => "OTHER"}]})
    RecommendationTrigger = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#RecommendationTrigger', name: 'RecommendationTrigger')
    RecommendationTriggerData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.wisdom#RecommendationTriggerData', name: 'RecommendationTriggerData')
    RecommendationTriggerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#RecommendationTriggerList', name: 'RecommendationTriggerList')
    RecommendationTriggerType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#RecommendationTriggerType', name: 'RecommendationTriggerType', traits: {"smithy.api#enum" => [{"value" => "QUERY", "name" => "QUERY"}]})
    RecommendationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#RecommendationType', name: 'RecommendationType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_CONTENT", "name" => "KNOWLEDGE_CONTENT"}]})
    RelevanceLevel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#RelevanceLevel', name: 'RelevanceLevel', traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    RelevanceScore = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.wisdom#RelevanceScore', name: 'RelevanceScore', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0}})
    RemoveKnowledgeBaseTemplateUriInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#RemoveKnowledgeBaseTemplateUriInput', name: 'RemoveKnowledgeBaseTemplateUriInput')
    RemoveKnowledgeBaseTemplateUriOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#RemoveKnowledgeBaseTemplateUriOutput', name: 'RemoveKnowledgeBaseTemplateUriOutput')
    RenderingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#RenderingConfiguration', name: 'RenderingConfiguration')
    RequestTimeoutException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#RequestTimeoutException', name: 'RequestTimeoutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408, "smithy.api#retryable" => {}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ResultData', name: 'ResultData')
    SearchContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#SearchContentInput', name: 'SearchContentInput')
    SearchContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#SearchContentOutput', name: 'SearchContentOutput')
    SearchExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#SearchExpression', name: 'SearchExpression')
    SearchQuickResponsesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#SearchQuickResponsesRequest', name: 'SearchQuickResponsesRequest')
    SearchQuickResponsesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#SearchQuickResponsesResponse', name: 'SearchQuickResponsesResponse')
    SearchSessionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#SearchSessionsInput', name: 'SearchSessionsInput')
    SearchSessionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#SearchSessionsOutput', name: 'SearchSessionsOutput')
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServerSideEncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ServerSideEncryptionConfiguration', name: 'ServerSideEncryptionConfiguration')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#SessionData', name: 'SessionData')
    SessionIntegrationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#SessionIntegrationConfiguration', name: 'SessionIntegrationConfiguration')
    SessionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#SessionSummaries', name: 'SessionSummaries')
    SessionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#SessionSummary', name: 'SessionSummary')
    ShortCutKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#ShortCutKey', name: 'ShortCutKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SourceConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.wisdom#SourceConfiguration', name: 'SourceConfiguration')
    StartContentUploadInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#StartContentUploadInput', name: 'StartContentUploadInput')
    StartContentUploadOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#StartContentUploadOutput', name: 'StartContentUploadOutput')
    StartImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#StartImportJobRequest', name: 'StartImportJobRequest')
    StartImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#StartImportJobResponse', name: 'StartImportJobResponse')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.wisdom#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.wisdom#Tags', name: 'Tags')
    TimeToLive = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wisdom#TimeToLive', name: 'TimeToLive', traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#UpdateContentInput', name: 'UpdateContentInput')
    UpdateContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#UpdateContentOutput', name: 'UpdateContentOutput')
    UpdateKnowledgeBaseTemplateUriInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#UpdateKnowledgeBaseTemplateUriInput', name: 'UpdateKnowledgeBaseTemplateUriInput')
    UpdateKnowledgeBaseTemplateUriOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#UpdateKnowledgeBaseTemplateUriOutput', name: 'UpdateKnowledgeBaseTemplateUriOutput')
    UpdateQuickResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#UpdateQuickResponseRequest', name: 'UpdateQuickResponseRequest')
    UpdateQuickResponseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#UpdateQuickResponseResponse', name: 'UpdateQuickResponseResponse')
    UploadId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#UploadId', name: 'UploadId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1200}})
    Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#Uri', name: 'Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    Uuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#Uuid', name: 'Uuid', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UuidOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.wisdom#UuidOrArn', name: 'UuidOrArn', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$|^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})?$"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.wisdom#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WaitTimeSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.wisdom#WaitTimeSeconds', name: 'WaitTimeSeconds', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AppIntegrationsConfiguration.add_member(:app_integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'appIntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AppIntegrations DataIntegration to use for ingesting content.</p>\n         <ul>\n            <li>\n               <p> For <a href=\"https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm\"> Salesforce</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if\n          objectFields is not provided, including at least <code>Id</code>,\n            <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>,\n            <code>PublishStatus</code>, and <code>IsDeleted</code> as source fields. </p>\n            </li>\n            <li>\n               <p> For <a href=\"https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api\"> ServiceNow</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if\n          objectFields is not provided, including at least <code>number</code>,\n            <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>,\n          and <code>active</code> as source fields. </p>\n            </li>\n            <li>\n               <p> For <a href=\"https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/\">\n            Zendesk</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if\n            <code>objectFields</code> is not provided, including at least <code>id</code>,\n            <code>title</code>, <code>updated_at</code>, and <code>draft</code> as source fields.\n        </p>\n            </li>\n            <li>\n               <p> For <a href=\"https://learn.microsoft.com/en-us/sharepoint/dev/sp-add-ins/sharepoint-net-server-csom-jsom-and-rest-api-index\">SharePoint</a>, your AppIntegrations DataIntegration must have a FileConfiguration,\n          including only file extensions that are among <code>docx</code>, <code>pdf</code>,\n            <code>html</code>, <code>htm</code>, and <code>txt</code>. </p>\n            </li>\n            <li>\n               <p> For <a href=\"https://aws.amazon.com/s3/\">Amazon S3</a>, the\n            ObjectConfiguration and FileConfiguration of your AppIntegrations\n          DataIntegration must be null. The <code>SourceURI</code> of your\n            DataIntegration must use the following format:\n            <code>s3://your_s3_bucket_name</code>.</p>\n               <important>\n                  <p>The bucket policy of the corresponding S3 bucket must allow the Amazon Web Services\n            principal <code>app-integrations.amazonaws.com</code> to perform\n              <code>s3:ListBucket</code>, <code>s3:GetObject</code>, and <code>s3:GetBucketLocation</code>\n            against the bucket.</p>\n               </important>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    AppIntegrationsConfiguration.add_member(:object_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectFieldsList, location_name: 'objectFields', traits: {"smithy.api#documentation" => "<p>The fields from the source that are made available to your agents in Wisdom. Optional if\n      ObjectConfiguration is included in the provided DataIntegration. </p>\n         <ul>\n            <li>\n               <p> For <a href=\"https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm\"> Salesforce</a>, you must include at least <code>Id</code>,\n            <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>,\n            <code>PublishStatus</code>, and <code>IsDeleted</code>. </p>\n            </li>\n            <li>\n               <p>For <a href=\"https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api\"> ServiceNow</a>, you must include at least <code>number</code>,\n            <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>,\n          and <code>active</code>. </p>\n            </li>\n            <li>\n               <p>For <a href=\"https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/\">\n            Zendesk</a>, you must include at least <code>id</code>, <code>title</code>,\n            <code>updated_at</code>, and <code>draft</code>. </p>\n            </li>\n         </ul>\n         <p>Make sure to include additional fields. These fields are indexed and used to source\n      recommendations. </p>"}))
    AppIntegrationsConfiguration.type = Types::AppIntegrationsConfiguration
    AssistantAssociationData.add_member(:assistant_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the assistant association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantAssociationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the assistant association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>The type of association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:association_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationOutputData, location_name: 'associationData', traits: {"smithy.api#documentation" => "<p>A union type that currently has a single argument, the knowledge base ID.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AssistantAssociationData.type = Types::AssistantAssociationData
    AssistantAssociationInputData.add_member(:knowledge_base_id, Types::AssistantAssociationInputData::KnowledgeBaseId, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>"}))
    AssistantAssociationInputData.add_member(:unknown, Types::AssistantAssociationInputData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AssistantAssociationInputData.type = Types::AssistantAssociationInputData
    AssistantAssociationOutputData.add_member(:knowledge_base_association, Types::AssistantAssociationOutputData::KnowledgeBaseAssociation, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseAssociationData, location_name: 'knowledgeBaseAssociation', traits: {"smithy.api#documentation" => "<p>The knowledge base where output data is sent.</p>"}))
    AssistantAssociationOutputData.add_member(:unknown, Types::AssistantAssociationOutputData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AssistantAssociationOutputData.type = Types::AssistantAssociationOutputData
    AssistantAssociationSummary.add_member(:assistant_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the assistant association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantAssociationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the assistant association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>The type of association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:association_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationOutputData, location_name: 'associationData', traits: {"smithy.api#documentation" => "<p>The association data.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AssistantAssociationSummary.type = Types::AssistantAssociationSummary
    AssistantAssociationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationSummary)
    AssistantData.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant.</p>", "smithy.api#required" => {}}))
    AssistantData.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>", "smithy.api#required" => {}}))
    AssistantData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name.</p>", "smithy.api#required" => {}}))
    AssistantData.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of assistant.</p>", "smithy.api#required" => {}}))
    AssistantData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the assistant.</p>", "smithy.api#required" => {}}))
    AssistantData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description.</p>"}))
    AssistantData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AssistantData.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p>\n         <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>,\n      <code>kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key\n      to invoke Wisdom. To use Wisdom with chat, the key policy must also allow\n      <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and <code>kms:DescribeKey</code> \n      permissions to the <code>connect.amazonaws.com</code> service\n      principal. </p>\n         <p>For more information about setting up a customer managed key for Wisdom, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html\">Enable Amazon Connect Wisdom\n        for your instance</a>.</p>"}))
    AssistantData.add_member(:integration_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantIntegrationConfiguration, location_name: 'integrationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the Wisdom assistant integration.</p>"}))
    AssistantData.type = Types::AssistantData
    AssistantIntegrationConfiguration.add_member(:topic_integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'topicIntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the integrated Amazon SNS topic used for streaming chat messages.</p>"}))
    AssistantIntegrationConfiguration.type = Types::AssistantIntegrationConfiguration
    AssistantList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantSummary)
    AssistantSummary.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant.</p>", "smithy.api#required" => {}}))
    AssistantSummary.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>", "smithy.api#required" => {}}))
    AssistantSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the assistant.</p>", "smithy.api#required" => {}}))
    AssistantSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the assistant.</p>", "smithy.api#required" => {}}))
    AssistantSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the assistant.</p>", "smithy.api#required" => {}}))
    AssistantSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the assistant.</p>"}))
    AssistantSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AssistantSummary.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p>\n         <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>,\n      <code>kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key\n      to invoke Wisdom. To use Wisdom with chat, the key policy must also allow\n        <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and\n        <code>kms:DescribeKey</code> permissions to the <code>connect.amazonaws.com</code> service\n      principal. </p>\n         <p>For more information about setting up a customer managed key for Wisdom, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html\">Enable Amazon Connect Wisdom\n        for your instance</a>.</p>"}))
    AssistantSummary.add_member(:integration_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantIntegrationConfiguration, location_name: 'integrationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the Wisdom assistant integration.</p>"}))
    AssistantSummary.type = Types::AssistantSummary
    Channels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Channel)
    Configuration.add_member(:connect_configuration, Types::Configuration::ConnectConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectConfiguration, location_name: 'connectConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the Amazon Connect data source.</p>"}))
    Configuration.add_member(:unknown, Types::Configuration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Configuration.type = Types::Configuration
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConnectConfiguration.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>"}))
    ConnectConfiguration.type = Types::ConnectConfiguration
    ContactAttributeKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKey)
    ContactAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKey)
    ContactAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeValue)
    ContentData.add_member(:content_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The identifier of the content revision.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>A key/value map to store attributes without affecting tagging or recommendations. \nFor example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    ContentData.add_member(:link_out_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'linkOutUri', traits: {"smithy.api#documentation" => "<p>The URI of the content.</p>"}))
    ContentData.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:url_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'urlExpiry', traits: {"smithy.api#documentation" => "<p>The expiration time of the URL as an epoch timestamp.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ContentData.type = Types::ContentData
    ContentMetadata.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ContentMetadata.value = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ContentReference.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>"}))
    ContentReference.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>"}))
    ContentReference.add_member(:content_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the content.</p>"}))
    ContentReference.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>"}))
    ContentReference.type = Types::ContentReference
    ContentSummary.add_member(:content_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The identifier of the revision of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>A key/value map to store attributes without affecting tagging or recommendations. \nFor example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    ContentSummary.type = Types::ContentSummary
    ContentSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummary)
    CreateAssistantAssociationInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>The type of association.</p>", "smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:association, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationInputData, location_name: 'association', traits: {"smithy.api#documentation" => "<p>The identifier of the associated resource.</p>", "smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAssistantAssociationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateAssistantAssociationInput.type = Types::CreateAssistantAssociationInput
    CreateAssistantAssociationOutput.add_member(:assistant_association, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationData, location_name: 'assistantAssociation', traits: {"smithy.api#documentation" => "<p>The assistant association.</p>"}))
    CreateAssistantAssociationOutput.type = Types::CreateAssistantAssociationOutput
    CreateAssistantInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAssistantInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the assistant.</p>", "smithy.api#required" => {}}))
    CreateAssistantInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of assistant.</p>", "smithy.api#required" => {}}))
    CreateAssistantInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the assistant.</p>"}))
    CreateAssistantInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateAssistantInput.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p>\n         <p>The customer managed key must have a policy that allows <code>kms:CreateGrant</code>,\n      <code> kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key\n      to invoke Wisdom. To use Wisdom with chat, the key policy must also allow\n        <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and\n        <code>kms:DescribeKey</code> permissions to the <code>connect.amazonaws.com</code> service\n      principal. </p>\n         <p>For more information about setting up a customer managed key for Wisdom, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html\">Enable Amazon Connect Wisdom\n        for your instance</a>.</p>"}))
    CreateAssistantInput.type = Types::CreateAssistantInput
    CreateAssistantOutput.add_member(:assistant, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantData, location_name: 'assistant', traits: {"smithy.api#documentation" => "<p>Information about the assistant.</p>"}))
    CreateAssistantOutput.type = Types::CreateAssistantOutput
    CreateContentInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContentInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the content. Each piece of content in a knowledge base must have a unique\n      name. You can retrieve a piece of content using only its knowledge base and its name with the\n        <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_SearchContent.html\">SearchContent</a> API.</p>", "smithy.api#required" => {}}))
    CreateContentInput.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the content. If not set, the title is equal to the name.</p>"}))
    CreateContentInput.add_member(:override_link_out_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'overrideLinkOutUri', traits: {"smithy.api#documentation" => "<p>The URI you want to use for the article. If the knowledge base has a templateUri, setting\n      this argument overrides it for this piece of content.</p>"}))
    CreateContentInput.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>A key/value map to store attributes without affecting tagging or recommendations. \nFor example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>"}))
    CreateContentInput.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>.</p>", "smithy.api#required" => {}}))
    CreateContentInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateContentInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateContentInput.type = Types::CreateContentInput
    CreateContentOutput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentData, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content.</p>"}))
    CreateContentOutput.type = Types::CreateContentOutput
    CreateKnowledgeBaseInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateKnowledgeBaseInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the knowledge base.</p>", "smithy.api#required" => {}}))
    CreateKnowledgeBaseInput.add_member(:knowledge_base_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseType, location_name: 'knowledgeBaseType', traits: {"smithy.api#documentation" => "<p>The type of knowledge base. Only CUSTOM knowledge bases allow you to upload your own content.\n      EXTERNAL knowledge bases support integrations with third-party systems whose content is\n      synchronized automatically. </p>", "smithy.api#required" => {}}))
    CreateKnowledgeBaseInput.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'sourceConfiguration', traits: {"smithy.api#documentation" => "<p>The source of the knowledge base content. Only set this argument for EXTERNAL knowledge\n      bases.</p>"}))
    CreateKnowledgeBaseInput.add_member(:rendering_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: 'renderingConfiguration', traits: {"smithy.api#documentation" => "<p>Information about how to render the content.</p>"}))
    CreateKnowledgeBaseInput.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p>\n         <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>,\n      <code>kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key\n      to invoke Wisdom.</p>\n         <p>For more information about setting up a customer managed key for Wisdom, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html\">Enable Amazon Connect Wisdom\n        for your instance</a>.</p>"}))
    CreateKnowledgeBaseInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description.</p>"}))
    CreateKnowledgeBaseInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateKnowledgeBaseInput.type = Types::CreateKnowledgeBaseInput
    CreateKnowledgeBaseOutput.add_member(:knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: 'knowledgeBase', traits: {"smithy.api#documentation" => "<p>The knowledge base.</p>"}))
    CreateKnowledgeBaseOutput.type = Types::CreateKnowledgeBaseOutput
    CreateQuickResponseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the quick response.</p>", "smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDataProvider, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the quick response.</p>", "smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the quick response content.</p>\n         <ul>\n            <li>\n               <p>Use <code>application/x.quickresponse;format=plain</code> for a quick response written in plain text.</p>\n            </li>\n            <li>\n               <p>Use <code>application/x.quickresponse;format=markdown</code> for a quick response written in richtext.</p>\n            </li>\n         </ul>"}))
    CreateQuickResponseRequest.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the user groups that the quick response is accessible to.</p>"}))
    CreateQuickResponseRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the quick response.</p>"}))
    CreateQuickResponseRequest.add_member(:shortcut_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey', traits: {"smithy.api#documentation" => "<p>The shortcut key of the quick response. The value should be unique across the\n  knowledge base.\n    </p>"}))
    CreateQuickResponseRequest.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the quick response is active.</p>"}))
    CreateQuickResponseRequest.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#documentation" => "<p>The Amazon Connect channels this quick response applies to.</p>"}))
    CreateQuickResponseRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written.  The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>,\n  <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>,\n  <code>zh_CN</code>, <code>zh_TW</code>\n         </p>"}))
    CreateQuickResponseRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateQuickResponseRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateQuickResponseRequest.type = Types::CreateQuickResponseRequest
    CreateQuickResponseResponse.add_member(:quick_response, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseData, location_name: 'quickResponse', traits: {"smithy.api#documentation" => "<p>The quick response.</p>"}))
    CreateQuickResponseResponse.type = Types::CreateQuickResponseResponse
    CreateSessionInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateSessionInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSessionInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the session.</p>", "smithy.api#required" => {}}))
    CreateSessionInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description.</p>"}))
    CreateSessionInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateSessionInput.type = Types::CreateSessionInput
    CreateSessionOutput.add_member(:session, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionData, location_name: 'session', traits: {"smithy.api#documentation" => "<p>The session.</p>"}))
    CreateSessionOutput.type = Types::CreateSessionOutput
    DeleteAssistantAssociationInput.add_member(:assistant_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantAssociationInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantAssociationInput.type = Types::DeleteAssistantAssociationInput
    DeleteAssistantAssociationOutput.type = Types::DeleteAssistantAssociationOutput
    DeleteAssistantInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantInput.type = Types::DeleteAssistantInput
    DeleteAssistantOutput.type = Types::DeleteAssistantOutput
    DeleteContentInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentInput.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentInput.type = Types::DeleteContentInput
    DeleteContentOutput.type = Types::DeleteContentOutput
    DeleteImportJobRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportJobRequest.add_member(:import_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportJobRequest.type = Types::DeleteImportJobRequest
    DeleteImportJobResponse.type = Types::DeleteImportJobResponse
    DeleteKnowledgeBaseInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The knowledge base to delete content from. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKnowledgeBaseInput.type = Types::DeleteKnowledgeBaseInput
    DeleteKnowledgeBaseOutput.type = Types::DeleteKnowledgeBaseOutput
    DeleteQuickResponseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The knowledge base from which the quick response is deleted. The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQuickResponseRequest.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQuickResponseRequest.type = Types::DeleteQuickResponseRequest
    DeleteQuickResponseResponse.type = Types::DeleteQuickResponseResponse
    Document.add_member(:content_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentReference, location_name: 'contentReference', traits: {"smithy.api#documentation" => "<p>A reference to the content resource.</p>", "smithy.api#required" => {}}))
    Document.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentText, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the document.</p>"}))
    Document.add_member(:excerpt, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentText, location_name: 'excerpt', traits: {"smithy.api#documentation" => "<p>The excerpt from the document.</p>"}))
    Document.type = Types::Document
    DocumentText.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'text', traits: {"smithy.api#documentation" => "<p>Text in the document.</p>"}))
    DocumentText.add_member(:highlights, Smithy::Schema::Shapes::ShapeRef.new(shape: Highlights, location_name: 'highlights', traits: {"smithy.api#documentation" => "<p>Highlights in the document text.</p>"}))
    DocumentText.type = Types::DocumentText
    ExternalSourceConfiguration.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The type of the external data source.</p>", "smithy.api#required" => {}}))
    ExternalSourceConfiguration.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration information of the external data source.</p>", "smithy.api#required" => {}}))
    ExternalSourceConfiguration.type = Types::ExternalSourceConfiguration
    Filter.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterField, location_name: 'field', traits: {"smithy.api#documentation" => "<p>The field on which to filter.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operator to use for comparing the field’s value with the provided value.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The desired field value on which to filter.</p>", "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GetAssistantAssociationInput.add_member(:assistant_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantAssociationInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantAssociationInput.type = Types::GetAssistantAssociationInput
    GetAssistantAssociationOutput.add_member(:assistant_association, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationData, location_name: 'assistantAssociation', traits: {"smithy.api#documentation" => "<p>The assistant association.</p>"}))
    GetAssistantAssociationOutput.type = Types::GetAssistantAssociationOutput
    GetAssistantInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantInput.type = Types::GetAssistantInput
    GetAssistantOutput.add_member(:assistant, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantData, location_name: 'assistant', traits: {"smithy.api#documentation" => "<p>Information about the assistant.</p>"}))
    GetAssistantOutput.type = Types::GetAssistantOutput
    GetContentInput.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentInput.type = Types::GetContentInput
    GetContentOutput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentData, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content.</p>"}))
    GetContentOutput.type = Types::GetContentOutput
    GetContentSummaryInput.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentSummaryInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentSummaryInput.type = Types::GetContentSummaryInput
    GetContentSummaryOutput.add_member(:content_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummary, location_name: 'contentSummary', traits: {"smithy.api#documentation" => "<p>The content summary.</p>"}))
    GetContentSummaryOutput.type = Types::GetContentSummaryOutput
    GetImportJobRequest.add_member(:import_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base that the import job belongs to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.type = Types::GetImportJobRequest
    GetImportJobResponse.add_member(:import_job, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobData, location_name: 'importJob', traits: {"smithy.api#documentation" => "<p>The import job.</p>"}))
    GetImportJobResponse.type = Types::GetImportJobResponse
    GetKnowledgeBaseInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKnowledgeBaseInput.type = Types::GetKnowledgeBaseInput
    GetKnowledgeBaseOutput.add_member(:knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: 'knowledgeBase', traits: {"smithy.api#documentation" => "<p>The knowledge base.</p>"}))
    GetKnowledgeBaseOutput.type = Types::GetKnowledgeBaseOutput
    GetQuickResponseRequest.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQuickResponseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should be a QUICK_RESPONSES type knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQuickResponseRequest.type = Types::GetQuickResponseRequest
    GetQuickResponseResponse.add_member(:quick_response, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseData, location_name: 'quickResponse', traits: {"smithy.api#documentation" => "<p>The quick response.</p>"}))
    GetQuickResponseResponse.type = Types::GetQuickResponseResponse
    GetRecommendationsInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetRecommendationsInput.add_member(:wait_time_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTimeSeconds, location_name: 'waitTimeSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The duration (in seconds) for which the call waits for a recommendation to be made\n      available before returning. If a recommendation is available, the call returns sooner than\n        <code>WaitTimeSeconds</code>. If no messages are available and the wait time expires, the\n      call returns successfully with an empty list.</p>", "smithy.api#httpQuery" => "waitTimeSeconds"}))
    GetRecommendationsInput.type = Types::GetRecommendationsInput
    GetRecommendationsOutput.add_member(:recommendations, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationList, location_name: 'recommendations', traits: {"smithy.api#documentation" => "<p>The recommendations.</p>", "smithy.api#required" => {}}))
    GetRecommendationsOutput.add_member(:triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTriggerList, location_name: 'triggers', traits: {"smithy.api#documentation" => "<p>The triggers corresponding to recommendations.</p>"}))
    GetRecommendationsOutput.type = Types::GetRecommendationsOutput
    GetSessionInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionInput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionInput.type = Types::GetSessionInput
    GetSessionOutput.add_member(:session, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionData, location_name: 'session', traits: {"smithy.api#documentation" => "<p>The session.</p>"}))
    GetSessionOutput.type = Types::GetSessionOutput
    GroupingConfiguration.add_member(:criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingCriteria, location_name: 'criteria', traits: {"smithy.api#documentation" => "<p>The criteria used for grouping Wisdom users.</p>\n         <p>The following is the list of supported criteria values.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>RoutingProfileArn</code>: Grouping the users by their <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_RoutingProfile.html\">Amazon Connect routing profile ARN</a>. User should have <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchRoutingProfiles.html\">SearchRoutingProfile</a> and\n            <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeRoutingProfile.html\">DescribeRoutingProfile</a> permissions when setting criteria to this value.</p>\n            </li>\n         </ul>"}))
    GroupingConfiguration.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The list of values that define different groups of Wisdom users.</p>\n         <ul>\n            <li>\n               <p>When setting <code>criteria</code> to <code>RoutingProfileArn</code>, you need to provide a list of\n            ARNs of <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_RoutingProfile.html\">Amazon Connect routing profiles</a> as values of this parameter.</p>\n            </li>\n         </ul>"}))
    GroupingConfiguration.type = Types::GroupingConfiguration
    GroupingValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingValue)
    Headers.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Headers.value = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Highlight.add_member(:begin_offset_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: HighlightOffset, location_name: 'beginOffsetInclusive', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The offset for the start of the highlight.</p>"}))
    Highlight.add_member(:end_offset_exclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: HighlightOffset, location_name: 'endOffsetExclusive', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The offset for the end of the highlight.</p>"}))
    Highlight.type = Types::Highlight
    Highlights.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Highlight)
    ImportJobData.add_member(:import_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:import_job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobType, location_name: 'importJobType', traits: {"smithy.api#documentation" => "<p>The type of the import job.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the import job.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The download link to the resource file that is uploaded to the import job.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:failed_record_report, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'failedRecordReport', traits: {"smithy.api#documentation" => "<p>The link to donwload the information of resource data that failed to be imported.</p>"}))
    ImportJobData.add_member(:url_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'urlExpiry', traits: {"smithy.api#documentation" => "<p>The expiration time of the URL as an epoch timestamp.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the import job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the import job data was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>The metadata fields of the imported Wisdom resources.</p>"}))
    ImportJobData.add_member(:external_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: 'externalSourceConfiguration'))
    ImportJobData.type = Types::ImportJobData
    ImportJobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobSummary)
    ImportJobSummary.add_member(:import_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:import_job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobType, location_name: 'importJobType', traits: {"smithy.api#documentation" => "<p>The type of import job.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the import job.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the import job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the import job was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobSummary.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>The metadata fields of the imported Wisdom resources.</p>"}))
    ImportJobSummary.add_member(:external_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: 'externalSourceConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the external source that the resource data are imported from.</p>"}))
    ImportJobSummary.type = Types::ImportJobSummary
    KnowledgeBaseAssociationData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>"}))
    KnowledgeBaseAssociationData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>"}))
    KnowledgeBaseAssociationData.type = Types::KnowledgeBaseAssociationData
    KnowledgeBaseData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:knowledge_base_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseType, location_name: 'knowledgeBaseType', traits: {"smithy.api#documentation" => "<p>The type of knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:last_content_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastContentModificationTime', traits: {"smithy.api#documentation" => "<p>An epoch timestamp indicating the most recent content modification inside the knowledge\n      base. If no content exists in a knowledge base, this value is unset.</p>", "smithy.api#timestampFormat" => "epoch-seconds"}))
    KnowledgeBaseData.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'sourceConfiguration', traits: {"smithy.api#documentation" => "<p>Source configuration information about the knowledge base.</p>"}))
    KnowledgeBaseData.add_member(:rendering_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: 'renderingConfiguration', traits: {"smithy.api#documentation" => "<p>Information about how to render the content.</p>"}))
    KnowledgeBaseData.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p>\n         <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, \n      <code>kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key\n      to invoke Wisdom. </p>\n         <p>For more information about setting up a customer managed key for Wisdom, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html\">Enable Amazon Connect Wisdom\n        for your instance</a>.</p>"}))
    KnowledgeBaseData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description.</p>"}))
    KnowledgeBaseData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    KnowledgeBaseData.type = Types::KnowledgeBaseData
    KnowledgeBaseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseSummary)
    KnowledgeBaseSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:knowledge_base_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseType, location_name: 'knowledgeBaseType', traits: {"smithy.api#documentation" => "<p>The type of knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the knowledge base summary.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'sourceConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information about the external data source.</p>"}))
    KnowledgeBaseSummary.add_member(:rendering_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: 'renderingConfiguration', traits: {"smithy.api#documentation" => "<p>Information about how to render the content.</p>"}))
    KnowledgeBaseSummary.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p>\n         <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, \n      <code>kms:DescribeKey</code>, <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key\n      to invoke Wisdom. </p>\n         <p>For more information about setting up a customer managed key for Wisdom, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html\">Enable Amazon Connect Wisdom\n        for your instance</a>.</p>"}))
    KnowledgeBaseSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the knowledge base.</p>"}))
    KnowledgeBaseSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    KnowledgeBaseSummary.type = Types::KnowledgeBaseSummary
    ListAssistantAssociationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssistantAssociationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssistantAssociationsInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssistantAssociationsInput.type = Types::ListAssistantAssociationsInput
    ListAssistantAssociationsOutput.add_member(:assistant_association_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationSummaryList, location_name: 'assistantAssociationSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about assistant associations.</p>", "smithy.api#required" => {}}))
    ListAssistantAssociationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListAssistantAssociationsOutput.type = Types::ListAssistantAssociationsOutput
    ListAssistantsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssistantsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssistantsInput.type = Types::ListAssistantsInput
    ListAssistantsOutput.add_member(:assistant_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantList, location_name: 'assistantSummaries', traits: {"smithy.api#documentation" => "<p>Information about the assistants.</p>", "smithy.api#required" => {}}))
    ListAssistantsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListAssistantsOutput.type = Types::ListAssistantsOutput
    ListContentsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListContentsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListContentsInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContentsInput.type = Types::ListContentsInput
    ListContentsOutput.add_member(:content_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummaryList, location_name: 'contentSummaries', traits: {"smithy.api#documentation" => "<p>Information about the content.</p>", "smithy.api#required" => {}}))
    ListContentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListContentsOutput.type = Types::ListContentsOutput
    ListImportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListImportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListImportJobsRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListImportJobsRequest.type = Types::ListImportJobsRequest
    ListImportJobsResponse.add_member(:import_job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobList, location_name: 'importJobSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the import jobs.</p>", "smithy.api#required" => {}}))
    ListImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>"}))
    ListImportJobsResponse.type = Types::ListImportJobsResponse
    ListKnowledgeBasesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListKnowledgeBasesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListKnowledgeBasesInput.type = Types::ListKnowledgeBasesInput
    ListKnowledgeBasesOutput.add_member(:knowledge_base_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseList, location_name: 'knowledgeBaseSummaries', traits: {"smithy.api#documentation" => "<p>Information about the knowledge bases.</p>", "smithy.api#required" => {}}))
    ListKnowledgeBasesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListKnowledgeBasesOutput.type = Types::ListKnowledgeBasesOutput
    ListQuickResponsesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListQuickResponsesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListQuickResponsesRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQuickResponsesRequest.type = Types::ListQuickResponsesRequest
    ListQuickResponsesResponse.add_member(:quick_response_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSummaryList, location_name: 'quickResponseSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the quick responses.</p>", "smithy.api#required" => {}}))
    ListQuickResponsesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>"}))
    ListQuickResponsesResponse.type = Types::ListQuickResponsesResponse
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    NotifyRecommendationsReceivedError.add_member(:recommendation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'recommendationId', traits: {"smithy.api#documentation" => "<p>The identifier of the recommendation that is in error.</p>"}))
    NotifyRecommendationsReceivedError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A recommendation is causing an error.</p>"}))
    NotifyRecommendationsReceivedError.type = Types::NotifyRecommendationsReceivedError
    NotifyRecommendationsReceivedErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedError)
    NotifyRecommendationsReceivedInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.add_member(:recommendation_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: 'recommendationIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the recommendations.</p>", "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.type = Types::NotifyRecommendationsReceivedInput
    NotifyRecommendationsReceivedOutput.add_member(:recommendation_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: 'recommendationIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the recommendations.</p>"}))
    NotifyRecommendationsReceivedOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>The identifiers of recommendations that are causing errors.</p>"}))
    NotifyRecommendationsReceivedOutput.type = Types::NotifyRecommendationsReceivedOutput
    ObjectFieldsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    PreconditionFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    PreconditionFailedException.type = Types::PreconditionFailedException
    QueryAssistantInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    QueryAssistantInput.add_member(:query_text, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryText, location_name: 'queryText', traits: {"smithy.api#documentation" => "<p>The text to search for.</p>", "smithy.api#required" => {}}))
    QueryAssistantInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>"}))
    QueryAssistantInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>"}))
    QueryAssistantInput.type = Types::QueryAssistantInput
    QueryAssistantOutput.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultsList, location_name: 'results', traits: {"smithy.api#documentation" => "<p>The results of the query.</p>", "smithy.api#required" => {}}))
    QueryAssistantOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    QueryAssistantOutput.type = Types::QueryAssistantOutput
    QueryRecommendationTriggerData.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryText, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The text associated with the recommendation trigger.</p>"}))
    QueryRecommendationTriggerData.type = Types::QueryRecommendationTriggerData
    QueryResultsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResultData)
    QuickResponseContentProvider.add_member(:content, Types::QuickResponseContentProvider::Content, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContent, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the quick response.</p>"}))
    QuickResponseContentProvider.add_member(:unknown, Types::QuickResponseContentProvider::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    QuickResponseContentProvider.type = Types::QuickResponseContentProvider
    QuickResponseContents.add_member(:plain_text, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContentProvider, location_name: 'plainText'))
    QuickResponseContents.add_member(:markdown, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContentProvider, location_name: 'markdown'))
    QuickResponseContents.type = Types::QuickResponseContents
    QuickResponseData.add_member(:quick_response_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'quickResponseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the quick response content.</p>\n         <ul>\n            <li>\n               <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p>\n            </li>\n            <li>\n               <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the quick response data.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseData.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response data was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseData.add_member(:contents, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContents, location_name: 'contents', traits: {"smithy.api#documentation" => "<p>The contents of the quick response.</p>"}))
    QuickResponseData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the quick response.</p>"}))
    QuickResponseData.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the user groups that the quick response is accessible to.</p>"}))
    QuickResponseData.add_member(:shortcut_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey', traits: {"smithy.api#documentation" => "<p>The shortcut key of the quick response. The value should be unique across the\n  knowledge base.</p>"}))
    QuickResponseData.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last updated the quick response data.</p>"}))
    QuickResponseData.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the quick response is active.</p>"}))
    QuickResponseData.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#documentation" => "<p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>"}))
    QuickResponseData.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written.</p>"}))
    QuickResponseData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    QuickResponseData.type = Types::QuickResponseData
    QuickResponseDataProvider.add_member(:content, Types::QuickResponseDataProvider::Content, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContent, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the quick response.</p>"}))
    QuickResponseDataProvider.add_member(:unknown, Types::QuickResponseDataProvider::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    QuickResponseDataProvider.type = Types::QuickResponseDataProvider
    QuickResponseFilterField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the attribute field to filter the quick responses by.</p>", "smithy.api#required" => {}}))
    QuickResponseFilterField.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterValueList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values of attribute field to filter the quick response by.</p>"}))
    QuickResponseFilterField.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operator to use for filtering.</p>", "smithy.api#required" => {}}))
    QuickResponseFilterField.add_member(:include_no_existence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeNoExistence', traits: {"smithy.api#documentation" => "<p>Whether to treat null value as a match for the attribute field.</p>"}))
    QuickResponseFilterField.type = Types::QuickResponseFilterField
    QuickResponseFilterFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterField)
    QuickResponseFilterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterValue)
    QuickResponseOrderField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to order the quick response query results by.</p>", "smithy.api#required" => {}}))
    QuickResponseOrderField.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: Order, location_name: 'order', traits: {"smithy.api#documentation" => "<p>The order at which the quick responses are sorted by.</p>"}))
    QuickResponseOrderField.type = Types::QuickResponseOrderField
    QuickResponseQueryField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to query the quick responses by.</p>", "smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryValueList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values of the attribute to query the quick responses by.</p>", "smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operator to use for matching attribute field values in the query.</p>", "smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:allow_fuzziness, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allowFuzziness', traits: {"smithy.api#documentation" => "<p>Whether the query expects only exact matches on the attribute field values. The results of the query will only include exact matches if this parameter is set to false.</p>"}))
    QuickResponseQueryField.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The importance of the attribute field when calculating query result relevancy scores.\n      The value set for this parameter affects the ordering of search results.</p>"}))
    QuickResponseQueryField.type = Types::QuickResponseQueryField
    QuickResponseQueryFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryField)
    QuickResponseQueryValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryValue)
    QuickResponseSearchExpression.add_member(:queries, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryFieldList, location_name: 'queries', traits: {"smithy.api#documentation" => "<p>The quick response query expressions.</p>"}))
    QuickResponseSearchExpression.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterFieldList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The configuration of filtering rules applied to quick response query results.</p>"}))
    QuickResponseSearchExpression.add_member(:order_on_field, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseOrderField, location_name: 'orderOnField', traits: {"smithy.api#documentation" => "<p>The quick response attribute fields on which the query results are ordered.</p>"}))
    QuickResponseSearchExpression.type = Types::QuickResponseSearchExpression
    QuickResponseSearchResultData.add_member(:quick_response_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'quickResponseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the quick response content.</p>\n         <ul>\n            <li>\n               <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p>\n            </li>\n            <li>\n               <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The resource status of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:contents, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContents, location_name: 'contents', traits: {"smithy.api#documentation" => "<p>The contents of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSearchResultData.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response search result data was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSearchResultData.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the quick response is active.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the quick response.</p>"}))
    QuickResponseSearchResultData.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the user groups that the quick response is accessible to.</p>"}))
    QuickResponseSearchResultData.add_member(:shortcut_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey', traits: {"smithy.api#documentation" => "<p>The shortcut key of the quick response. The value should be unique across the\n  knowledge base.</p>"}))
    QuickResponseSearchResultData.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last updated the quick response search result data.</p>"}))
    QuickResponseSearchResultData.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#documentation" => "<p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>"}))
    QuickResponseSearchResultData.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written.</p>"}))
    QuickResponseSearchResultData.add_member(:attributes_not_interpolated, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKeys, location_name: 'attributesNotInterpolated', traits: {"smithy.api#documentation" => "<p>The user defined contact attributes that are not resolved when the search result is returned.</p>"}))
    QuickResponseSearchResultData.add_member(:attributes_interpolated, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKeys, location_name: 'attributesInterpolated', traits: {"smithy.api#documentation" => "<p>The user defined contact attributes that are resolved when the search result is returned.</p>"}))
    QuickResponseSearchResultData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    QuickResponseSearchResultData.type = Types::QuickResponseSearchResultData
    QuickResponseSearchResultsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSearchResultData)
    QuickResponseSummary.add_member(:quick_response_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'quickResponseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the quick response content.</p>\n         <ul>\n            <li>\n               <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p>\n            </li>\n            <li>\n               <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The resource status of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response summary was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the quick response.</p>"}))
    QuickResponseSummary.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last updated the quick response data.</p>"}))
    QuickResponseSummary.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the quick response is active.</p>"}))
    QuickResponseSummary.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#documentation" => "<p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>"}))
    QuickResponseSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    QuickResponseSummary.type = Types::QuickResponseSummary
    QuickResponseSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSummary)
    RecommendationData.add_member(:recommendation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'recommendationId', traits: {"smithy.api#documentation" => "<p>The identifier of the recommendation.</p>", "smithy.api#required" => {}}))
    RecommendationData.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'document', traits: {"smithy.api#documentation" => "<p>The recommended document.</p>", "smithy.api#required" => {}}))
    RecommendationData.add_member(:relevance_score, Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceScore, location_name: 'relevanceScore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The relevance score of the recommendation.</p>"}))
    RecommendationData.add_member(:relevance_level, Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceLevel, location_name: 'relevanceLevel', traits: {"smithy.api#documentation" => "<p>The relevance level of the recommendation.</p>"}))
    RecommendationData.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of recommendation.</p>"}))
    RecommendationData.type = Types::RecommendationData
    RecommendationIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    RecommendationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationData)
    RecommendationTrigger.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the recommendation trigger.</p>", "smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTriggerType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of recommendation trigger.</p>", "smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationSourceType, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source of the recommendation trigger.</p>\n         <ul>\n            <li>\n               <p>ISSUE_DETECTION: The corresponding recommendations were triggered by a Contact Lens\n          issue.</p>\n            </li>\n            <li>\n               <p>RULE_EVALUATION: The corresponding recommendations were triggered by a Contact Lens\n          rule.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTriggerData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>A union type containing information related to the trigger.</p>", "smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:recommendation_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: 'recommendationIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the recommendations.</p>", "smithy.api#required" => {}}))
    RecommendationTrigger.type = Types::RecommendationTrigger
    RecommendationTriggerData.add_member(:query, Types::RecommendationTriggerData::Query, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRecommendationTriggerData, location_name: 'query', traits: {"smithy.api#documentation" => "<p>Data associated with the QUERY RecommendationTriggerType.</p>"}))
    RecommendationTriggerData.add_member(:unknown, Types::RecommendationTriggerData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RecommendationTriggerData.type = Types::RecommendationTriggerData
    RecommendationTriggerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTrigger)
    RemoveKnowledgeBaseTemplateUriInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveKnowledgeBaseTemplateUriInput.type = Types::RemoveKnowledgeBaseTemplateUriInput
    RemoveKnowledgeBaseTemplateUriOutput.type = Types::RemoveKnowledgeBaseTemplateUriOutput
    RenderingConfiguration.add_member(:template_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'templateUri', traits: {"smithy.api#documentation" => "<p>A URI template containing exactly one variable in <code>${variableName} </code>format.\n      This can only be set for <code>EXTERNAL</code> knowledge bases. For Salesforce, ServiceNow,\n      and Zendesk, the variable must be one of the following:</p>\n         <ul>\n            <li>\n               <p>Salesforce: <code>Id</code>, <code>ArticleNumber</code>, <code>VersionNumber</code>,\n            <code>Title</code>, <code>PublishStatus</code>, or <code>IsDeleted</code>\n               </p>\n            </li>\n            <li>\n               <p>ServiceNow: <code>number</code>, <code>short_description</code>,\n            <code>sys_mod_count</code>, <code>workflow_state</code>, or <code>active</code>\n               </p>\n            </li>\n            <li>\n               <p>Zendesk: <code>id</code>, <code>title</code>, <code>updated_at</code>, or\n            <code>draft</code>\n               </p>\n            </li>\n         </ul>\n         <p>The variable is replaced with the actual value for a piece of content when calling <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetContent.html\">GetContent</a>. </p>"}))
    RenderingConfiguration.type = Types::RenderingConfiguration
    RequestTimeoutException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    RequestTimeoutException.type = Types::RequestTimeoutException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>The specified resource name.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResultData.add_member(:result_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'resultId', traits: {"smithy.api#documentation" => "<p>The identifier of the result data.</p>", "smithy.api#required" => {}}))
    ResultData.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'document', traits: {"smithy.api#documentation" => "<p>The document.</p>", "smithy.api#required" => {}}))
    ResultData.add_member(:relevance_score, Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceScore, location_name: 'relevanceScore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The relevance score of the results.</p>"}))
    ResultData.type = Types::ResultData
    SearchContentInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    SearchContentInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    SearchContentInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchContentInput.add_member(:search_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchExpression, location_name: 'searchExpression', traits: {"smithy.api#documentation" => "<p>The search expression to filter results.</p>", "smithy.api#required" => {}}))
    SearchContentInput.type = Types::SearchContentInput
    SearchContentOutput.add_member(:content_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummaryList, location_name: 'contentSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the content.</p>", "smithy.api#required" => {}}))
    SearchContentOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    SearchContentOutput.type = Types::SearchContentOutput
    SearchExpression.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The search expression filters.</p>", "smithy.api#required" => {}}))
    SearchExpression.type = Types::SearchExpression
    SearchQuickResponsesRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchQuickResponsesRequest.add_member(:search_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSearchExpression, location_name: 'searchExpression', traits: {"smithy.api#documentation" => "<p>The search expression for querying the quick response.</p>", "smithy.api#required" => {}}))
    SearchQuickResponsesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    SearchQuickResponsesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    SearchQuickResponsesRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/connect-attrib-list.html#user-defined-attributes\">user-defined Amazon Connect contact attributes</a> to be resolved when search results are returned.</p>"}))
    SearchQuickResponsesRequest.type = Types::SearchQuickResponsesRequest
    SearchQuickResponsesResponse.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSearchResultsList, location_name: 'results', traits: {"smithy.api#documentation" => "<p>The results of the quick response search.</p>", "smithy.api#required" => {}}))
    SearchQuickResponsesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>"}))
    SearchQuickResponsesResponse.type = Types::SearchQuickResponsesResponse
    SearchSessionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    SearchSessionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    SearchSessionsInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchSessionsInput.add_member(:search_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchExpression, location_name: 'searchExpression', traits: {"smithy.api#documentation" => "<p>The search expression to filter results.</p>", "smithy.api#required" => {}}))
    SearchSessionsInput.type = Types::SearchSessionsInput
    SearchSessionsOutput.add_member(:session_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummaries, location_name: 'sessionSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the sessions.</p>", "smithy.api#required" => {}}))
    SearchSessionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    SearchSessionsOutput.type = Types::SearchSessionsOutput
    ServerSideEncryptionConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The customer managed key used for encryption. For more information about setting up a\n        customer managed key for Wisdom, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html\">Enable Amazon Connect Wisdom for your\n        instance</a>. For information about valid ID values, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id\">Key identifiers (KeyId)</a>.</p>"}))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionData.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sessionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the session.</p>", "smithy.api#required" => {}}))
    SessionData.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session.</p>", "smithy.api#required" => {}}))
    SessionData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the session.</p>", "smithy.api#required" => {}}))
    SessionData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the session.</p>"}))
    SessionData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    SessionData.add_member(:integration_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionIntegrationConfiguration, location_name: 'integrationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the session integration.</p>"}))
    SessionData.type = Types::SessionData
    SessionIntegrationConfiguration.add_member(:topic_integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'topicIntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the integrated Amazon SNS topic used for streaming chat messages.</p>"}))
    SessionIntegrationConfiguration.type = Types::SessionIntegrationConfiguration
    SessionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummary)
    SessionSummary.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session.</p>", "smithy.api#required" => {}}))
    SessionSummary.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sessionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the session.</p>", "smithy.api#required" => {}}))
    SessionSummary.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Wisdom assistant.</p>", "smithy.api#required" => {}}))
    SessionSummary.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>", "smithy.api#required" => {}}))
    SessionSummary.type = Types::SessionSummary
    SourceConfiguration.add_member(:app_integrations, Types::SourceConfiguration::AppIntegrations, Smithy::Schema::Shapes::ShapeRef.new(shape: AppIntegrationsConfiguration, location_name: 'appIntegrations', traits: {"smithy.api#documentation" => "<p>Configuration information for Amazon AppIntegrations to automatically ingest content.</p>"}))
    SourceConfiguration.add_member(:unknown, Types::SourceConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SourceConfiguration.type = Types::SourceConfiguration
    StartContentUploadInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartContentUploadInput.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The type of content to upload.</p>", "smithy.api#required" => {}}))
    StartContentUploadInput.add_member(:presigned_url_time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLive, location_name: 'presignedUrlTimeToLive', traits: {"smithy.api#documentation" => "<p>The expected expiration time of the generated presigned URL, specified in minutes.</p>"}))
    StartContentUploadInput.type = Types::StartContentUploadInput
    StartContentUploadOutput.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The identifier of the upload.</p>", "smithy.api#required" => {}}))
    StartContentUploadOutput.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL of the upload.</p>", "smithy.api#required" => {}}))
    StartContentUploadOutput.add_member(:url_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'urlExpiry', traits: {"smithy.api#documentation" => "<p>The expiration time of the URL as an epoch timestamp.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    StartContentUploadOutput.add_member(:headers_to_include, Smithy::Schema::Shapes::ShapeRef.new(shape: Headers, location_name: 'headersToInclude', traits: {"smithy.api#documentation" => "<p>The headers to include in the upload.</p>", "smithy.api#required" => {}}))
    StartContentUploadOutput.type = Types::StartContentUploadOutput
    StartImportJobRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>\n         <ul>\n            <li>\n               <p>For importing Wisdom quick responses, this should be a <code>QUICK_RESPONSES</code> type knowledge base.</p>\n            </li>\n         </ul>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:import_job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobType, location_name: 'importJobType', traits: {"smithy.api#documentation" => "<p>The type of the import job.</p>\n         <ul>\n            <li>\n               <p>For importing quick response resource, set the value to <code>QUICK_RESPONSES</code>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>.</p>", "smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>", "smithy.api#idempotencyToken" => {}}))
    StartImportJobRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>The metadata fields of the imported Wisdom resources.</p>"}))
    StartImportJobRequest.add_member(:external_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: 'externalSourceConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the external source that the resource data are imported from.</p>"}))
    StartImportJobRequest.type = Types::StartImportJobRequest
    StartImportJobResponse.add_member(:import_job, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobData, location_name: 'importJob', traits: {"smithy.api#documentation" => "<p>The import job.</p>"}))
    StartImportJobResponse.type = Types::StartImportJobResponse
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>The specified resource name.</p>"}))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateContentInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContentInput.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContentInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The <code>revisionId</code> of the content resource to update, taken from an earlier call\n      to <code>GetContent</code>, <code>GetContentSummary</code>, <code>SearchContent</code>, or\n        <code>ListContents</code>. If included, this argument acts as an optimistic lock to ensure\n      content was not modified since it was last read. If it has been modified, this API throws a\n        <code>PreconditionFailedException</code>.</p>"}))
    UpdateContentInput.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the content.</p>"}))
    UpdateContentInput.add_member(:override_link_out_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'overrideLinkOutUri', traits: {"smithy.api#documentation" => "<p>The URI for the article. If the knowledge base has a templateUri, setting this argument\n      overrides it for this piece of content. To remove an existing <code>overrideLinkOurUri</code>,\n      exclude this argument and set <code>removeOverrideLinkOutUri</code> to true.</p>"}))
    UpdateContentInput.add_member(:remove_override_link_out_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeOverrideLinkOutUri', traits: {"smithy.api#documentation" => "<p>Unset the existing <code>overrideLinkOutUri</code> if it exists.</p>"}))
    UpdateContentInput.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>A key/value map to store attributes without affecting tagging or recommendations. For\n      example, when synchronizing data between an external system and Wisdom, you can store an\n      external version identifier as metadata to utilize for determining drift.</p>"}))
    UpdateContentInput.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>.\n    </p>"}))
    UpdateContentInput.type = Types::UpdateContentInput
    UpdateContentOutput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentData, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content.</p>"}))
    UpdateContentOutput.type = Types::UpdateContentOutput
    UpdateKnowledgeBaseTemplateUriInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateKnowledgeBaseTemplateUriInput.add_member(:template_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'templateUri', traits: {"smithy.api#documentation" => "<p>The template URI to update.</p>", "smithy.api#required" => {}}))
    UpdateKnowledgeBaseTemplateUriInput.type = Types::UpdateKnowledgeBaseTemplateUriInput
    UpdateKnowledgeBaseTemplateUriOutput.add_member(:knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: 'knowledgeBase', traits: {"smithy.api#documentation" => "<p>The knowledge base to update.</p>"}))
    UpdateKnowledgeBaseTemplateUriOutput.type = Types::UpdateKnowledgeBaseTemplateUriOutput
    UpdateQuickResponseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge \nbase if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQuickResponseRequest.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQuickResponseRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDataProvider, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The updated content of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the quick response content.</p>\n         <ul>\n            <li>\n               <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p>\n            </li>\n            <li>\n               <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p>\n            </li>\n         </ul>"}))
    UpdateQuickResponseRequest.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration', traits: {"smithy.api#documentation" => "<p>The updated grouping configuration of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:remove_grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeGroupingConfiguration', traits: {"smithy.api#documentation" => "<p>Whether to remove the grouping configuration of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The updated description of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:remove_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeDescription', traits: {"smithy.api#documentation" => "<p>Whether to remove the description from the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:shortcut_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey', traits: {"smithy.api#documentation" => "<p>The shortcut key of the quick response. The value should be unique across the\n  knowledge base.</p>"}))
    UpdateQuickResponseRequest.add_member(:remove_shortcut_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeShortcutKey', traits: {"smithy.api#documentation" => "<p>Whether to remove the shortcut key of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the quick response is active. </p>"}))
    UpdateQuickResponseRequest.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#documentation" => "<p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>"}))
    UpdateQuickResponseRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>,\n  <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>,\n  <code>zh_CN</code>, <code>zh_TW</code>\n         </p>"}))
    UpdateQuickResponseRequest.type = Types::UpdateQuickResponseRequest
    UpdateQuickResponseResponse.add_member(:quick_response, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseData, location_name: 'quickResponse', traits: {"smithy.api#documentation" => "<p>The quick response.</p>"}))
    UpdateQuickResponseResponse.type = Types::UpdateQuickResponseResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    WisdomService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.wisdom#WisdomService"
      service.name = "WisdomService"
      service.version = "2020-10-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Wisdom", "arnNamespace" => "wisdom", "cloudFormationName" => "Wisdom"}, "aws.auth#sigv4" => {"name" => "wisdom"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon Connect Wisdom Service"}
      service.add_operation(:create_assistant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateAssistant"
        operation.name = "CreateAssistant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_assistant_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateAssistantAssociation"
        operation.name = "CreateAssistantAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateContent"
        operation.name = "CreateContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateKnowledgeBase"
        operation.name = "CreateKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKnowledgeBaseInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKnowledgeBaseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_quick_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateQuickResponse"
        operation.name = "CreateQuickResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQuickResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQuickResponseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#CreateSession"
        operation.name = "CreateSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSessionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSessionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_assistant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteAssistant"
        operation.name = "DeleteAssistant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_assistant_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteAssistantAssociation"
        operation.name = "DeleteAssistantAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations/{assistantAssociationId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteContent"
        operation.name = "DeleteContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteImportJob"
        operation.name = "DeleteImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteKnowledgeBase"
        operation.name = "DeleteKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_quick_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#DeleteQuickResponse"
        operation.name = "DeleteQuickResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQuickResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQuickResponseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_assistant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetAssistant"
        operation.name = "GetAssistant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_assistant_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetAssistantAssociation"
        operation.name = "GetAssistantAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations/{assistantAssociationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetContent"
        operation.name = "GetContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetContentSummary"
        operation.name = "GetContentSummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentSummaryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentSummaryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetImportJob"
        operation.name = "GetImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetKnowledgeBase"
        operation.name = "GetKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKnowledgeBaseInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKnowledgeBaseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_quick_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetQuickResponse"
        operation.name = "GetQuickResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQuickResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQuickResponseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommendations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetRecommendations"
        operation.name = "GetRecommendations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "GetRecommendations API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications."}, "smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/recommendations", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#GetSession"
        operation.name = "GetSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_assistant_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListAssistantAssociations"
        operation.name = "ListAssistantAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantAssociationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssistantAssociations.new
      end)
      service.add_operation(:list_assistants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListAssistants"
        operation.name = "ListAssistants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssistants.new
      end)
      service.add_operation(:list_contents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListContents"
        operation.name = "ListContents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContentsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContents.new
      end)
      service.add_operation(:list_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListImportJobs"
        operation.name = "ListImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImportJobs.new
      end)
      service.add_operation(:list_knowledge_bases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListKnowledgeBases"
        operation.name = "ListKnowledgeBases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKnowledgeBasesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKnowledgeBasesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListKnowledgeBases.new
      end)
      service.add_operation(:list_quick_responses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListQuickResponses"
        operation.name = "ListQuickResponses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQuickResponsesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQuickResponsesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQuickResponses.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:notify_recommendations_received, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#NotifyRecommendationsReceived"
        operation.name = "NotifyRecommendationsReceived"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:query_assistant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#QueryAssistant"
        operation.name = "QueryAssistant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryAssistantInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryAssistantOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "QueryAssistant API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications."}, "smithy.api#http" => {"uri" => "/assistants/{assistantId}/query", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::QueryAssistant.new
      end)
      service.add_operation(:remove_knowledge_base_template_uri, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#RemoveKnowledgeBaseTemplateUri"
        operation.name = "RemoveKnowledgeBaseTemplateUri"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveKnowledgeBaseTemplateUriInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveKnowledgeBaseTemplateUriOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/templateUri", "method" => "DELETE", "code" => 204}}
      end)
      service.add_operation(:search_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#SearchContent"
        operation.name = "SearchContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchContent.new
      end)
      service.add_operation(:search_quick_responses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#SearchQuickResponses"
        operation.name = "SearchQuickResponses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQuickResponsesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQuickResponsesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search/quickResponses", "method" => "POST"}}
        operation[:paginator] = Paginators::SearchQuickResponses.new
      end)
      service.add_operation(:search_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#SearchSessions"
        operation.name = "SearchSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSessionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSessionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/searchSessions", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchSessions.new
      end)
      service.add_operation(:start_content_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#StartContentUpload"
        operation.name = "StartContentUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartContentUploadInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartContentUploadOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/upload", "method" => "POST"}}
      end)
      service.add_operation(:start_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#StartImportJob"
        operation.name = "StartImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#UpdateContent"
        operation.name = "UpdateContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "POST"}}
      end)
      service.add_operation(:update_knowledge_base_template_uri, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#UpdateKnowledgeBaseTemplateUri"
        operation.name = "UpdateKnowledgeBaseTemplateUri"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseTemplateUriInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseTemplateUriOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/templateUri", "method" => "POST"}}
      end)
      service.add_operation(:update_quick_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wisdom#UpdateQuickResponse"
        operation.name = "UpdateQuickResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQuickResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQuickResponseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "POST"}}
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
